# 1 "./devices/vector/gdevpdfu.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./devices/vector/gdevpdfu.c" 2
# 18 "./devices/vector/gdevpdfu.c"
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
# 19 "./devices/vector/gdevpdfu.c" 2
# 1 "./obj/jpeglib_.h" 1
# 25 "./obj/jpeglib_.h"
# 1 "./obj/jconfig.h" 1
# 507 "./obj/jconfig.h"
# 1 "./obj/arch.h" 1
# 508 "./obj/jconfig.h" 2
# 26 "./obj/jpeglib_.h" 2

# 1 "./obj/jmorecfg.h" 1
# 22 "./obj/jmorecfg.h"
# 1 "./obj/jmcorig.h" 1
# 69 "./obj/jmcorig.h"
typedef unsigned char JSAMPLE;
# 151 "./obj/jmcorig.h"
typedef short JCOEF;
# 162 "./obj/jmcorig.h"
typedef unsigned char JOCTET;
# 187 "./obj/jmcorig.h"
typedef unsigned char UINT8;
# 199 "./obj/jmcorig.h"
typedef unsigned short UINT16;







typedef short INT16;
# 216 "./obj/jmcorig.h"
typedef long INT32;
# 229 "./obj/jmcorig.h"
typedef unsigned int JDIMENSION;
# 280 "./obj/jmcorig.h"
typedef void noreturn_t;
# 317 "./obj/jmcorig.h"
typedef enum { FALSE = 0, TRUE = 1 } boolean;
# 23 "./obj/jmorecfg.h" 2
# 28 "./obj/jpeglib_.h" 2
# 75 "./obj/jpeglib_.h"
typedef JSAMPLE *JSAMPROW;
typedef JSAMPROW *JSAMPARRAY;
typedef JSAMPARRAY *JSAMPIMAGE;

typedef JCOEF JBLOCK[64];
typedef JBLOCK *JBLOCKROW;
typedef JBLOCKROW *JBLOCKARRAY;
typedef JBLOCKARRAY *JBLOCKIMAGE;

typedef JCOEF *JCOEFPTR;







typedef struct {




  UINT16 quantval[64];





  boolean sent_table;
} JQUANT_TBL;




typedef struct {

  UINT8 bits[17];

  UINT8 huffval[256];





  boolean sent_table;
} JHUFF_TBL;




typedef struct {



  int component_id;
  int component_index;
  int h_samp_factor;
  int v_samp_factor;
  int quant_tbl_no;




  int dc_tbl_no;
  int ac_tbl_no;
# 148 "./obj/jpeglib_.h"
  JDIMENSION width_in_blocks;
  JDIMENSION height_in_blocks;





  int DCT_h_scaled_size;
  int DCT_v_scaled_size;







  JDIMENSION downsampled_width;
  JDIMENSION downsampled_height;
# 174 "./obj/jpeglib_.h"
  boolean component_needed;



  int MCU_width;
  int MCU_height;
  int MCU_blocks;
  int MCU_sample_width;
  int last_col_width;
  int last_row_height;





  JQUANT_TBL * quant_table;


  void * dct_table;
} jpeg_component_info;




typedef struct {
  int comps_in_scan;
  int component_index[4];
  int Ss, Se;
  int Ah, Al;
} jpeg_scan_info;



typedef struct jpeg_marker_struct * jpeg_saved_marker_ptr;

struct jpeg_marker_struct {
  jpeg_saved_marker_ptr next;
  UINT8 marker;
  unsigned int original_length;
  unsigned int data_length;
  JOCTET * data;

};



typedef enum {
 JCS_UNKNOWN,
 JCS_GRAYSCALE,
 JCS_RGB,
 JCS_YCbCr,
 JCS_CMYK,
 JCS_YCCK,
 JCS_BG_RGB,
 JCS_BG_YCC
} J_COLOR_SPACE;



typedef enum {
 JCT_NONE = 0,
 JCT_SUBTRACT_GREEN = 1
} J_COLOR_TRANSFORM;



typedef enum {
 JDCT_ISLOW,
 JDCT_IFAST,
 JDCT_FLOAT
} J_DCT_METHOD;
# 255 "./obj/jpeglib_.h"
typedef enum {
 JDITHER_NONE,
 JDITHER_ORDERED,
 JDITHER_FS
} J_DITHER_MODE;
# 276 "./obj/jpeglib_.h"
struct jpeg_common_struct {
  struct jpeg_error_mgr * err; struct jpeg_memory_mgr * mem; struct jpeg_progress_mgr * progress; void * client_data; boolean is_decompressor; int global_state;




};

typedef struct jpeg_common_struct * j_common_ptr;
typedef struct jpeg_compress_struct * j_compress_ptr;
typedef struct jpeg_decompress_struct * j_decompress_ptr;




struct jpeg_compress_struct {
  struct jpeg_error_mgr * err; struct jpeg_memory_mgr * mem; struct jpeg_progress_mgr * progress; void * client_data; boolean is_decompressor; int global_state;


  struct jpeg_destination_mgr * dest;






  JDIMENSION image_width;
  JDIMENSION image_height;
  int input_components;
  J_COLOR_SPACE in_color_space;

  double input_gamma;
# 317 "./obj/jpeglib_.h"
  unsigned int scale_num, scale_denom;

  JDIMENSION jpeg_width;
  JDIMENSION jpeg_height;







  int data_precision;

  int num_components;
  J_COLOR_SPACE jpeg_color_space;

  jpeg_component_info * comp_info;


  JQUANT_TBL * quant_tbl_ptrs[4];
  int q_scale_factor[4];




  JHUFF_TBL * dc_huff_tbl_ptrs[4];
  JHUFF_TBL * ac_huff_tbl_ptrs[4];


  UINT8 arith_dc_L[16];
  UINT8 arith_dc_U[16];
  UINT8 arith_ac_K[16];

  int num_scans;
  const jpeg_scan_info * scan_info;





  boolean raw_data_in;
  boolean arith_code;
  boolean optimize_coding;
  boolean CCIR601_sampling;
  boolean do_fancy_downsampling;
  int smoothing_factor;
  J_DCT_METHOD dct_method;






  unsigned int restart_interval;
  int restart_in_rows;



  boolean write_JFIF_header;
  UINT8 JFIF_major_version;
  UINT8 JFIF_minor_version;




  UINT8 density_unit;
  UINT16 X_density;
  UINT16 Y_density;
  boolean write_Adobe_marker;

  J_COLOR_TRANSFORM color_transform;







  JDIMENSION next_scanline;
# 404 "./obj/jpeglib_.h"
  boolean progressive_mode;
  int max_h_samp_factor;
  int max_v_samp_factor;

  int min_DCT_h_scaled_size;
  int min_DCT_v_scaled_size;

  JDIMENSION total_iMCU_rows;
# 422 "./obj/jpeglib_.h"
  int comps_in_scan;
  jpeg_component_info * cur_comp_info[4];


  JDIMENSION MCUs_per_row;
  JDIMENSION MCU_rows_in_scan;

  int blocks_in_MCU;
  int MCU_membership[10];



  int Ss, Se, Ah, Al;

  int block_size;
  const int * natural_order;
  int lim_Se;




  struct jpeg_comp_master * master;
  struct jpeg_c_main_controller * main;
  struct jpeg_c_prep_controller * prep;
  struct jpeg_c_coef_controller * coef;
  struct jpeg_marker_writer * marker;
  struct jpeg_color_converter * cconvert;
  struct jpeg_downsampler * downsample;
  struct jpeg_forward_dct * fdct;
  struct jpeg_entropy_encoder * entropy;
  jpeg_scan_info * script_space;
  int script_space_size;
};




struct jpeg_decompress_struct {
  struct jpeg_error_mgr * err; struct jpeg_memory_mgr * mem; struct jpeg_progress_mgr * progress; void * client_data; boolean is_decompressor; int global_state;


  struct jpeg_source_mgr * src;




  JDIMENSION image_width;
  JDIMENSION image_height;
  int num_components;
  J_COLOR_SPACE jpeg_color_space;






  J_COLOR_SPACE out_color_space;

  unsigned int scale_num, scale_denom;

  double output_gamma;

  boolean buffered_image;
  boolean raw_data_out;

  J_DCT_METHOD dct_method;
  boolean do_fancy_upsampling;
  boolean do_block_smoothing;

  boolean quantize_colors;

  J_DITHER_MODE dither_mode;
  boolean two_pass_quantize;
  int desired_number_of_colors;

  boolean enable_1pass_quant;
  boolean enable_external_quant;
  boolean enable_2pass_quant;







  JDIMENSION output_width;
  JDIMENSION output_height;
  int out_color_components;
  int output_components;



  int rec_outbuf_height;
# 526 "./obj/jpeglib_.h"
  int actual_number_of_colors;
  JSAMPARRAY colormap;
# 537 "./obj/jpeglib_.h"
  JDIMENSION output_scanline;




  int input_scan_number;
  JDIMENSION input_iMCU_row;





  int output_scan_number;
  JDIMENSION output_iMCU_row;
# 559 "./obj/jpeglib_.h"
  int (*coef_bits)[64];
# 570 "./obj/jpeglib_.h"
  JQUANT_TBL * quant_tbl_ptrs[4];


  JHUFF_TBL * dc_huff_tbl_ptrs[4];
  JHUFF_TBL * ac_huff_tbl_ptrs[4];






  int data_precision;

  jpeg_component_info * comp_info;


  boolean is_baseline;
  boolean progressive_mode;
  boolean arith_code;

  UINT8 arith_dc_L[16];
  UINT8 arith_dc_U[16];
  UINT8 arith_ac_K[16];

  unsigned int restart_interval;




  boolean saw_JFIF_marker;

  UINT8 JFIF_major_version;
  UINT8 JFIF_minor_version;
  UINT8 density_unit;
  UINT16 X_density;
  UINT16 Y_density;
  boolean saw_Adobe_marker;
  UINT8 Adobe_transform;

  J_COLOR_TRANSFORM color_transform;


  boolean CCIR601_sampling;





  jpeg_saved_marker_ptr marker_list;
# 627 "./obj/jpeglib_.h"
  int max_h_samp_factor;
  int max_v_samp_factor;

  int min_DCT_h_scaled_size;
  int min_DCT_v_scaled_size;

  JDIMENSION total_iMCU_rows;
# 642 "./obj/jpeglib_.h"
  JSAMPLE * sample_range_limit;






  int comps_in_scan;
  jpeg_component_info * cur_comp_info[4];


  JDIMENSION MCUs_per_row;
  JDIMENSION MCU_rows_in_scan;

  int blocks_in_MCU;
  int MCU_membership[64];



  int Ss, Se, Ah, Al;



  int block_size;
  const int * natural_order;
  int lim_Se;





  int unread_marker;




  struct jpeg_decomp_master * master;
  struct jpeg_d_main_controller * main;
  struct jpeg_d_coef_controller * coef;
  struct jpeg_d_post_controller * post;
  struct jpeg_input_controller * inputctl;
  struct jpeg_marker_reader * marker;
  struct jpeg_entropy_decoder * entropy;
  struct jpeg_inverse_dct * idct;
  struct jpeg_upsampler * upsample;
  struct jpeg_color_deconverter * cconvert;
  struct jpeg_color_quantizer * cquantize;
};
# 702 "./obj/jpeglib_.h"
struct jpeg_error_mgr {

  noreturn_t (*error_exit) (j_common_ptr cinfo);

  void (*emit_message) (j_common_ptr cinfo, int msg_level);

  void (*output_message) (j_common_ptr cinfo);

  void (*format_message) (j_common_ptr cinfo, char * buffer);


  void (*reset_error_mgr) (j_common_ptr cinfo);




  int msg_code;

  union {
    int i[8];
    char s[80];
  } msg_parm;



  int trace_level;







  long num_warnings;
# 747 "./obj/jpeglib_.h"
  const char * const * jpeg_message_table;
  int last_jpeg_message;



  const char * const * addon_message_table;
  int first_addon_message;
  int last_addon_message;
};




struct jpeg_progress_mgr {
  void (*progress_monitor) (j_common_ptr cinfo);

  long pass_counter;
  long pass_limit;
  int completed_passes;
  int total_passes;
};




struct jpeg_destination_mgr {
  JOCTET * next_output_byte;
  size_t free_in_buffer;

  void (*init_destination) (j_compress_ptr cinfo);
  boolean (*empty_output_buffer) (j_compress_ptr cinfo);
  void (*term_destination) (j_compress_ptr cinfo);
};




struct jpeg_source_mgr {
  const JOCTET * next_input_byte;
  size_t bytes_in_buffer;

  void (*init_source) (j_decompress_ptr cinfo);
  boolean (*fill_input_buffer) (j_decompress_ptr cinfo);
  void (*skip_input_data) (j_decompress_ptr cinfo, long num_bytes);
  boolean (*resync_to_restart) (j_decompress_ptr cinfo, int desired);
  void (*term_source) (j_decompress_ptr cinfo);
};
# 811 "./obj/jpeglib_.h"
typedef struct jvirt_sarray_control * jvirt_sarray_ptr;
typedef struct jvirt_barray_control * jvirt_barray_ptr;


struct jpeg_memory_mgr {

  void * (*alloc_small) (j_common_ptr cinfo, int pool_id, size_t sizeofobject);

  void * (*alloc_large) (j_common_ptr cinfo, int pool_id, size_t sizeofobject);

  JSAMPARRAY (*alloc_sarray) (j_common_ptr cinfo, int pool_id, JDIMENSION samplesperrow, JDIMENSION numrows);


  JBLOCKARRAY (*alloc_barray) (j_common_ptr cinfo, int pool_id, JDIMENSION blocksperrow, JDIMENSION numrows);


  jvirt_sarray_ptr (*request_virt_sarray) (j_common_ptr cinfo, int pool_id, boolean pre_zero, JDIMENSION samplesperrow, JDIMENSION numrows, JDIMENSION maxaccess);





  jvirt_barray_ptr (*request_virt_barray) (j_common_ptr cinfo, int pool_id, boolean pre_zero, JDIMENSION blocksperrow, JDIMENSION numrows, JDIMENSION maxaccess);





  void (*realize_virt_arrays) (j_common_ptr cinfo);
  JSAMPARRAY (*access_virt_sarray) (j_common_ptr cinfo, jvirt_sarray_ptr ptr, JDIMENSION start_row, JDIMENSION num_rows, boolean writable);




  JBLOCKARRAY (*access_virt_barray) (j_common_ptr cinfo, jvirt_barray_ptr ptr, JDIMENSION start_row, JDIMENSION num_rows, boolean writable);




  void (*free_pool) (j_common_ptr cinfo, int pool_id);
  void (*self_destruct) (j_common_ptr cinfo);






  long max_memory_to_use;


  long max_alloc_chunk;
};





typedef boolean (*jpeg_marker_parser_method) (j_decompress_ptr cinfo);
# 948 "./obj/jpeglib_.h"
extern struct jpeg_error_mgr * jpeg_std_error
 (struct jpeg_error_mgr * err);
# 964 "./obj/jpeglib_.h"
extern void jpeg_CreateCompress (j_compress_ptr cinfo, int version, size_t structsize);

extern void jpeg_CreateDecompress (j_decompress_ptr cinfo, int version, size_t structsize);


extern void jpeg_destroy_compress (j_compress_ptr cinfo);
extern void jpeg_destroy_decompress (j_decompress_ptr cinfo);



extern void jpeg_stdio_dest (j_compress_ptr cinfo, FILE * outfile);
extern void jpeg_stdio_src (j_decompress_ptr cinfo, FILE * infile);


extern void jpeg_mem_dest (j_compress_ptr cinfo, unsigned char ** outbuffer, unsigned long * outsize);


extern void jpeg_mem_src (j_decompress_ptr cinfo, const unsigned char * inbuffer, unsigned long insize);




extern void jpeg_set_defaults (j_compress_ptr cinfo);

extern void jpeg_set_colorspace (j_compress_ptr cinfo, J_COLOR_SPACE colorspace);

extern void jpeg_default_colorspace (j_compress_ptr cinfo);
extern void jpeg_set_quality (j_compress_ptr cinfo, int quality, boolean force_baseline);

extern void jpeg_set_linear_quality (j_compress_ptr cinfo, int scale_factor, boolean force_baseline);


extern void jpeg_default_qtables (j_compress_ptr cinfo, boolean force_baseline);

extern void jpeg_add_quant_table (j_compress_ptr cinfo, int which_tbl, const unsigned int *basic_table, int scale_factor, boolean force_baseline);



extern int jpeg_quality_scaling (int quality);
extern void jpeg_simple_progression (j_compress_ptr cinfo);
extern void jpeg_suppress_tables (j_compress_ptr cinfo, boolean suppress);

extern JQUANT_TBL * jpeg_alloc_quant_table (j_common_ptr cinfo);
extern JHUFF_TBL * jpeg_alloc_huff_table (j_common_ptr cinfo);


extern void jpeg_start_compress (j_compress_ptr cinfo, boolean write_all_tables);

extern JDIMENSION jpeg_write_scanlines (j_compress_ptr cinfo, JSAMPARRAY scanlines, JDIMENSION num_lines);


extern void jpeg_finish_compress (j_compress_ptr cinfo);


extern void jpeg_calc_jpeg_dimensions (j_compress_ptr cinfo);


extern JDIMENSION jpeg_write_raw_data (j_compress_ptr cinfo, JSAMPIMAGE data, JDIMENSION num_lines);




extern void jpeg_write_marker
 (j_compress_ptr cinfo, int marker, const JOCTET * dataptr, unsigned int datalen);


extern void jpeg_write_m_header
 (j_compress_ptr cinfo, int marker, unsigned int datalen);
extern void jpeg_write_m_byte
 (j_compress_ptr cinfo, int val);


extern void jpeg_write_tables (j_compress_ptr cinfo);


extern int jpeg_read_header (j_decompress_ptr cinfo, boolean require_image);
# 1052 "./obj/jpeglib_.h"
extern boolean jpeg_start_decompress (j_decompress_ptr cinfo);
extern JDIMENSION jpeg_read_scanlines (j_decompress_ptr cinfo, JSAMPARRAY scanlines, JDIMENSION max_lines);


extern boolean jpeg_finish_decompress (j_decompress_ptr cinfo);


extern JDIMENSION jpeg_read_raw_data (j_decompress_ptr cinfo, JSAMPIMAGE data, JDIMENSION max_lines);




extern boolean jpeg_has_multiple_scans (j_decompress_ptr cinfo);
extern boolean jpeg_start_output (j_decompress_ptr cinfo, int scan_number);

extern boolean jpeg_finish_output (j_decompress_ptr cinfo);
extern boolean jpeg_input_complete (j_decompress_ptr cinfo);
extern void jpeg_new_colormap (j_decompress_ptr cinfo);
extern int jpeg_consume_input (j_decompress_ptr cinfo);
# 1079 "./obj/jpeglib_.h"
extern void jpeg_core_output_dimensions (j_decompress_ptr cinfo);
extern void jpeg_calc_output_dimensions (j_decompress_ptr cinfo);


extern void jpeg_save_markers
 (j_decompress_ptr cinfo, int marker_code, unsigned int length_limit);



extern void jpeg_set_marker_processor
 (j_decompress_ptr cinfo, int marker_code, jpeg_marker_parser_method routine);



extern jvirt_barray_ptr * jpeg_read_coefficients (j_decompress_ptr cinfo);
extern void jpeg_write_coefficients (j_compress_ptr cinfo, jvirt_barray_ptr * coef_arrays);

extern void jpeg_copy_critical_parameters (j_decompress_ptr srcinfo, j_compress_ptr dstinfo);
# 1105 "./obj/jpeglib_.h"
extern void jpeg_abort_compress (j_compress_ptr cinfo);
extern void jpeg_abort_decompress (j_decompress_ptr cinfo);




extern void jpeg_abort (j_common_ptr cinfo);
extern void jpeg_destroy (j_common_ptr cinfo);


extern boolean jpeg_resync_to_restart (j_decompress_ptr cinfo, int desired);
# 20 "./devices/vector/gdevpdfu.c" 2
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
# 21 "./devices/vector/gdevpdfu.c" 2

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
# 23 "./devices/vector/gdevpdfu.c" 2
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
# 39 "./base/gsdsrc.h"
typedef struct stream_s stream;
# 53 "./base/gsdsrc.h"
typedef enum {
    data_source_type_string,
    data_source_type_bytes,
    data_source_type_floats,
    data_source_type_stream
} gs_data_source_type_t;


typedef struct gs_data_source_s gs_data_source_t;

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
# 24 "./devices/vector/gdevpdfu.c" 2
# 1 "./base/gsfunc.h" 1
# 36 "./base/gsfunc.h"
typedef int gs_function_type_t;
# 56 "./base/gsfunc.h"
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
# 25 "./devices/vector/gdevpdfu.c" 2
# 1 "./base/gsfunc3.h" 1
# 31 "./base/gsfunc3.h"
enum {
    function_type_ExponentialInterpolation = 2,
    function_type_1InputStitching = 3,

    function_type_ArrayedOutput = -1
};


typedef struct gs_function_ElIn_params_s {
    int m; const float *Domain; int n; const float *Range;
    const float *C0;
    const float *C1;
    float N;
} gs_function_ElIn_params_t;







typedef struct gs_function_1ItSg_params_s {
    int m; const float *Domain; int n; const float *Range;
    int k;
    const gs_function_t *const *Functions;
    const float *Bounds;
    const float *Encode;
} gs_function_1ItSg_params_t;
# 74 "./base/gsfunc3.h"
typedef struct gs_function_AdOt_params_s {
    int m; const float *Domain; int n; const float *Range;
    const gs_function_t *const *Functions;
} gs_function_AdOt_params_t;
# 87 "./base/gsfunc3.h"
int gs_function_ElIn_init(gs_function_t ** ppfn,
                          const gs_function_ElIn_params_t * params,
                          gs_memory_t * mem);
int gs_function_1ItSg_init(gs_function_t ** ppfn,
                           const gs_function_1ItSg_params_t * params,
                           gs_memory_t * mem);
int gs_function_AdOt_init(gs_function_t ** ppfn,
                          const gs_function_AdOt_params_t * params,
                          gs_memory_t * mem);


void gs_function_ElIn_free_params(gs_function_ElIn_params_t * params,
                                  gs_memory_t * mem);
void gs_function_1ItSg_free_params(gs_function_1ItSg_params_t * params,
                                   gs_memory_t * mem);
void gs_function_AdOt_free_params(gs_function_AdOt_params_t * params,
                                  gs_memory_t * mem);
# 26 "./devices/vector/gdevpdfu.c" 2
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
# 24 "./devices/vector/gdevpdfx.h" 2
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
# 22 "./base/gsdcolor.h"
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
# 23 "./base/gsdcolor.h" 2
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
# 26 "./base/gxdevcli.h" 2
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
# 67 "./base/gstparam.h"
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
# 22 "./base/gxline.h"
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
# 23 "./base/gxline.h" 2
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
# 24 "./base/gxline.h" 2




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
# 27 "./devices/vector/gdevpdfu.c" 2
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
# 28 "./devices/vector/gdevpdfu.c" 2
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
# 29 "./devices/vector/gdevpdfu.c" 2
# 1 "./devices/vector/gdevpdtd.h" 1
# 22 "./devices/vector/gdevpdtd.h"
# 1 "./devices/vector/gdevpdtx.h" 1
# 22 "./devices/vector/gdevpdtx.h"
# 1 "./devices/vector/gdevpdt.h" 1
# 40 "./devices/vector/gdevpdt.h"
pdf_text_state_t *pdf_text_state_alloc(gs_memory_t *mem);




pdf_text_data_t *pdf_text_data_alloc(gs_memory_t *mem);

int text_data_free(gs_memory_t *mem, pdf_text_data_t *ptd);




void pdf_reset_text_page(pdf_text_data_t *ptd);




void pdf_reset_text_state(pdf_text_data_t *ptd);




void pdf_close_text_page(gx_device_pdf *pdev);






int pdf_from_stream_to_text(gx_device_pdf *pdev);




int pdf_from_string_to_text(gx_device_pdf *pdev);




void pdf_close_text_contents(gx_device_pdf *pdev);




int pdf_char_image_y_offset(const gx_device_pdf *pdev, int x, int y, int h);


int pdf_begin_char_proc(gx_device_pdf * pdev, int w, int h, int x_width,
                        int y_offset, int x_offset, gs_id id, pdf_char_proc_t **ppcp,
                        pdf_stream_position_t * ppos);


int pdf_end_char_proc(gx_device_pdf * pdev,
                      pdf_stream_position_t * ppos);


int pdf_do_char_image(gx_device_pdf * pdev, const pdf_char_proc_t * pcp,
                      const gs_matrix * pimat);
# 23 "./devices/vector/gdevpdtx.h" 2
# 62 "./devices/vector/gdevpdtx.h"
typedef struct pdf_bitmap_fonts_s pdf_bitmap_fonts_t;



typedef struct pdf_outline_fonts_s pdf_outline_fonts_t;







struct pdf_text_data_s {
    pdf_outline_fonts_t *outline_fonts;
    pdf_bitmap_fonts_t *bitmap_fonts;
    pdf_text_state_t *text_state;
};
# 87 "./devices/vector/gdevpdtx.h"
typedef struct pdf_font_resource_s pdf_font_resource_t;




long pdf_font_id(const pdf_font_resource_t *pdfont);

int pdf_used_charproc_resources(gx_device_pdf *pdev, pdf_font_resource_t *pdfont);
# 23 "./devices/vector/gdevpdtd.h" 2
# 1 "./devices/vector/gdevpdtb.h" 1
# 75 "./devices/vector/gdevpdtb.h"
int pdf_base_font_alloc(gx_device_pdf *pdev, pdf_base_font_t **ppbfont,
                    gs_font_base *font, const gs_matrix *orig_matrix,
                    bool is_standard);






gs_string *pdf_base_font_name(pdf_base_font_t *pbfont);





gs_font_base *pdf_base_font_font(const pdf_base_font_t *pbfont, bool complete);




bool pdf_base_font_is_subset(const pdf_base_font_t *pbfont);




void pdf_base_font_drop_complete(pdf_base_font_t *pbfont);







int pdf_base_font_copy_glyph(pdf_base_font_t *pbfont, gs_glyph glyph,
                             gs_font_base *font);




bool pdf_has_subset_prefix(const byte *str, uint size);




int pdf_add_subset_prefix(const gx_device_pdf *pdev, gs_string *pstr,
                        byte *used, int count, char *md5_hash);




bool pdf_do_subset_font(gx_device_pdf *pdev, pdf_base_font_t *pbfont,
                        gs_id rid);




int pdf_write_FontFile_entry(gx_device_pdf *pdev, pdf_base_font_t *pbfont);




int pdf_write_embedded_font(gx_device_pdf *pdev, pdf_base_font_t *pbfont, font_type FontType,
                        gs_int_rect *FontBBox, gs_id rid, cos_dict_t **ppcd);




int pdf_write_CharSet(gx_device_pdf *pdev, pdf_base_font_t *pbfont);




int pdf_write_CIDSet(gx_device_pdf *pdev, pdf_base_font_t *pbfont,
                     long *pcidset_id);




bool pdf_is_standard_font(pdf_base_font_t *bfont);

void pdf_set_FontFile_object(pdf_base_font_t *bfont, cos_dict_t *pcd);
const cos_dict_t * pdf_get_FontFile_object(pdf_base_font_t *bfont);

const char *pdf_find_base14_name(const byte *str, uint size);
# 24 "./devices/vector/gdevpdtd.h" 2
# 60 "./devices/vector/gdevpdtd.h"
typedef struct pdf_font_descriptor_s pdf_font_descriptor_t;
# 69 "./devices/vector/gdevpdtd.h"
int pdf_font_descriptor_alloc(gx_device_pdf *pdev,
                              pdf_font_descriptor_t **ppfd,
                              gs_font_base *font, bool embed);

int pdf_font_descriptor_free(gx_device_pdf *pdev, pdf_resource_t *pres);




long pdf_font_descriptor_id(const pdf_font_descriptor_t *pfd);





long pdf_set_font_descriptor_usage(gx_device_pdf *pdev, int parent_id, const pdf_font_descriptor_t *pfd);




font_type pdf_font_descriptor_FontType(const pdf_font_descriptor_t *pfd);




bool pdf_font_descriptor_embedding(const pdf_font_descriptor_t *pfd);




bool pdf_font_descriptor_is_subset(const pdf_font_descriptor_t *pfd);





gs_string *pdf_font_descriptor_name(pdf_font_descriptor_t *pfd);

char *pdf_fontfile_hash(void *pfd);





gs_font_base *pdf_font_descriptor_font(const pdf_font_descriptor_t *pfd, bool complete);




void pdf_font_descriptor_drop_complete_font(const pdf_font_descriptor_t *pfd);





gs_string *pdf_font_descriptor_base_name(const pdf_font_descriptor_t *pfd);





int pdf_font_used_glyph(pdf_font_descriptor_t *pfd, gs_glyph glyph,
                        gs_font_base *font);




int pdf_compute_font_descriptor(gx_device_pdf *pdev, pdf_font_descriptor_t *pfd);





int pdf_finish_FontDescriptor(gx_device_pdf *pdev,
                              pdf_resource_t *pfd);

int pdf_finish_resources(gx_device_pdf *pdev, pdf_resource_type_t type,
                        int (*finish_proc)(gx_device_pdf *,
                                           pdf_resource_t *));



int pdf_write_FontDescriptor(gx_device_pdf *pdev,
                             pdf_resource_t *pfd);




int pdf_release_FontDescriptor_components(gx_device_pdf *pdev, pdf_resource_t *pfd);




int pdf_mark_font_descriptor_used(gx_device_pdf *pdev, pdf_font_descriptor_t *pfd);




int mark_font_descriptor_symbolic(const pdf_font_resource_t *pdfont);
# 30 "./devices/vector/gdevpdfu.c" 2



# 1 "./base/sdct.h" 1
# 23 "./base/sdct.h"
# 1 "./base/setjmp_.h" 1
# 23 "./base/setjmp_.h"
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
# 24 "./base/setjmp_.h" 2

typedef struct {
    char c;
    jmp_buf j;
} gsfix_jmp_buf_test;



typedef struct {
    unsigned char stuff[sizeof(jmp_buf) + ((size_t)&((gsfix_jmp_buf_test*)0)->j)];
} gsfix_jmp_buf;
# 24 "./base/sdct.h" 2
# 57 "./base/sdct.h"
typedef struct jpeg_stream_data_s {
    stream_template templat; struct jpeg_error_mgr err; gsfix_jmp_buf exit_jmpbuf; gs_memory_t *memory; gs_memory_t *cmem; byte *dummy; int Picky; int Relax;
} jpeg_stream_data;
# 69 "./base/sdct.h"
typedef struct jpeg_compress_data_s {
    stream_template templat; struct jpeg_error_mgr err; gsfix_jmp_buf exit_jmpbuf; gs_memory_t *memory; gs_memory_t *cmem; byte *dummy; int Picky; int Relax;

    struct jpeg_compress_struct cinfo;
    struct jpeg_destination_mgr destination;
    byte finish_compress_buf[100];
    int fcb_size, fcb_pos;
} jpeg_compress_data;

extern const gs_memory_struct_type_t st_jpeg_compress_data;




typedef struct jpeg_decompress_data_s {
    stream_template templat; struct jpeg_error_mgr err; gsfix_jmp_buf exit_jmpbuf; gs_memory_t *memory; gs_memory_t *cmem; byte *dummy; int Picky; int Relax;


    struct jpeg_decompress_struct dinfo;
    struct jpeg_source_mgr source;
    long skip;
    bool input_eod;
    bool faked_eoi;
    byte *scanline_buffer;
    uint bytes_in_scanline;
} jpeg_decompress_data;







typedef struct stream_DCT_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];



    gs_const_string Markers;
    float QFactor;
    int ColorTransform;
    bool NoMarker;
    gs_memory_t *jpeg_memory;

    union _jd {
        jpeg_stream_data *common;
        jpeg_compress_data *compress;
        jpeg_decompress_data *decompress;
    } data;

    cmm_profile_t *icc_profile;
    byte icc_marker;
    ulong icc_position;



    uint scan_line_size;

    int phase;
} stream_DCT_state;



extern const gs_memory_struct_type_t st_DCT_state;







extern const stream_template s_DCTD_template;
extern const stream_template s_DCTE_template;



void s_DCT_set_defaults(stream_state * st);
# 34 "./devices/vector/gdevpdfu.c" 2
# 1 "./base/slzwx.h" 1
# 23 "./base/slzwx.h"
typedef struct lzw_decode_s lzw_decode;
typedef struct lzw_encode_table_s lzw_encode_table;
typedef struct stream_LZW_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];

    int InitialCodeLength;




    bool FirstBitLowOrder;
    bool BlockData;
    int EarlyChange;

    uint bits;
    int bits_left;


    int bytes_left;

    union _lzt {
        lzw_decode *decode;
        lzw_encode_table *encode;
    } table;
    uint next_code;
    int code_size;
    int prev_code;
    uint prev_len;
    int copy_code;

    uint copy_len;
    int copy_left;
    bool first;
} stream_LZW_state;

extern const gs_memory_struct_type_t st_LZW_state;
# 69 "./base/slzwx.h"
extern const stream_template s_LZWD_template;
extern const stream_template s_LZWE_template;


void s_LZW_set_defaults(stream_state *);
void s_LZW_release(stream_state *);
# 35 "./devices/vector/gdevpdfu.c" 2
# 1 "./base/spngpx.h" 1
# 33 "./base/spngpx.h"
typedef struct stream_PNGP_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];

    int Colors;
    int BitsPerComponent;
    uint Columns;
    int Predictor;

    uint row_count;
    byte end_mask;
    int bpp;
    byte *prev_row;
    int case_index;


    long row_left;
    byte prev[2 * 256];
} stream_PNGP_state;
# 61 "./base/spngpx.h"
extern const stream_template s_PNGPD_template;
extern const stream_template s_PNGPE_template;
# 36 "./devices/vector/gdevpdfu.c" 2
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
# 37 "./devices/vector/gdevpdfu.c" 2


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
# 40 "./devices/vector/gdevpdfu.c" 2
# 1 "./base/strmio.h" 1
# 39 "./base/strmio.h"
stream * sfopen(const char *path, const char *mode, gs_memory_t *mem);





int sfread(void *ptr, size_t size, size_t count, stream *s);




int sfgetc(stream *s);




int sfseek(stream *s, gs_offset_t offset, int whence);




int srewind(stream *s);




long sftell(stream *s);




int sfeof(stream *s);




int sferror(stream *s);





int sfclose(stream *s);
# 41 "./devices/vector/gdevpdfu.c" 2
# 1 "./base/szlibx.h" 1
# 23 "./base/szlibx.h"
typedef struct zlib_dynamic_state_s zlib_dynamic_state_t;


typedef struct stream_zlib_state_s {
    const stream_template *templat; gs_memory_t *memory; int (*report_error)(stream_state *, const char *); int min_left; char error_string[79 + 1];

    int windowBits;
    bool no_wrapper;

    int level;
    int method;
    int memLevel;
    int strategy;

    zlib_dynamic_state_t *dynamic;
} stream_zlib_state;





extern const gs_memory_struct_type_t st_zlib_state;




extern const stream_template s_zlibD_template;
extern const stream_template s_zlibE_template;


void s_zlib_set_defaults(stream_state *);
# 42 "./devices/vector/gdevpdfu.c" 2







# 1 "./devices/vector/opdfread.h" 1
# 27 "./devices/vector/opdfread.h"
const char *opdfread_ps [] = {
"currentdict/DSC_OPDFREAD known{\n",
"currentdict/DSC_OPDFREAD get\n",
"}{\n",
"false\n",
"}ifelse\n",
"10 dict begin\n",
"/DSC_OPDFREAD exch def\n",
"/this currentdict def\n",
"/y 720 def\n",
"/ebuf 200 string def\n",
"/prnt{\n",
"36//this/y get moveto//ebuf cvs show\n",
"//this/y 2 copy get 12 sub put\n",
"}bind def\n",
"/newline{\n",
"36//this/y get moveto\n",
"//this/y 2 copy get 12 sub put\n",
"}bind def\n",
"errordict/handleerror\n",
"{systemdict begin\n",
"$error begin\n",
"newerror\n",
"{(%%[ Error handled by opdfread.ps : )print errorname//ebuf cvs print(; OffendingCommand: )\n",
"print/command load//ebuf cvs print( ]%%)= flush\n",
"/newerror false store vmstatus pop pop 0 ne\n",
"{grestoreall\n",
"}if\n",
"errorname(VMerror)ne\n",
"{showpage\n",
"}if\n",
"initgraphics\n",
"0 720 moveto\n",
"errorname(VMerror)eq\n",
"{//this/ehsave known\n",
"{clear//this/ehsave get restore 2 vmreclaim\n",
"}if\n",
"vmstatus exch pop exch pop\n",
"}\n",
"/Courier 12 selectfont\n",
"{\n",
"(ERROR: )//prnt exec errorname//prnt exec\n",
"(OFFENDING COMMAND: )//prnt exec\n",
"/command load//prnt exec\n",
"$error/ostack known{\n",
"(%%[STACK:)=\n",
"(STACK:)//prnt exec\n",
"$error/ostack get aload length{\n",
"//newline exec\n",
"dup mark eq{\n",
"(-mark-)dup = show\n",
"}{\n",
"dup type/nametype eq{\n",
"dup xcheck not{\n",
"(/)show\n",
"(/)print\n",
"}if\n",
"}if\n",
"dup =//ebuf cvs show\n",
"}ifelse\n",
"}repeat\n",
"}if\n",
"}ifelse\n",
"(%%]%)=\n",
"//systemdict/showpage get exec\n",
"quit\n",
"}if\n",
"end\n",
"end\n",
"}bind readonly put\n",
"end\n",
"50 dict begin\n",
"/DefaultSwitch\n",
"{\n",
"dup where{\n",
"pop pop\n",
"}{\n",
"false def\n",
"}ifelse\n",
"}bind def\n",
"/=string 256 string def\n",
"/=only{\n",
"//=string cvs print\n",
"}bind def\n",
"/HexDigits(0123456789ABCDEF)readonly def\n",
"/PrintHex\n",
"{8{\n",
"dup -28 bitshift//HexDigits exch 1 getinterval//=only exec\n",
"4 bitshift\n",
"}repeat\n",
"pop\n",
"}bind def\n",
"/PDFR_DEBUG DefaultSwitch\n",
"/PDFR_DUMP DefaultSwitch\n",
"/PDFR_STREAM DefaultSwitch\n",
"/TTFDEBUG DefaultSwitch\n",
"/RotatePages DefaultSwitch\n",
"/FitPages DefaultSwitch\n",
"/CenterPages DefaultSwitch\n",
"/SetPageSize DefaultSwitch\n",
"/error\n",
"{\n",
"counttomark 1 sub -1 0{\n",
"index dup type/arraytype eq{==}{=only}ifelse\n",
"}for\n",
"()=\n",
"cleartomark\n",
"....Undefined\n",
"}bind def\n",
"//SetPageSize{\n",
"//RotatePages//FitPages or//CenterPages or{\n",
"mark(/RotatePages, /FitPages and CenterPages are not allowed with /SetPageSize)//error exec\n",
"}if\n",
"}\n",
"{\n",
"//FitPages//CenterPages and{\n",
"mark(CenterPages is not allowed with /FitPages)//error exec\n",
"}if\n",
"}\n",
"ifelse\n",
"/knownget\n",
"{\n",
"2 copy known{\n",
"get true\n",
"}{\n",
"pop pop false\n",
"}ifelse\n",
"}bind def\n",
"/IsUpper\n",
"{dup(A)0 get ge exch(Z)0 get le and\n",
"}bind def\n",
"/cpa2g{\n",
"dup length array\n",
"0 1 2 index length 1 sub{\n",
"dup 3 index exch get cp2g\n",
"3 copy put pop pop\n",
"}for\n",
"exch pop\n",
"}bind def\n",
"/cpd2g{\n",
"dup length dict exch{\n",
"cp2g 2 index 3 1 roll put\n",
"}forall\n",
"}bind def\n",
"/cps2g{\n",
"dup length string copy\n",
"}bind def\n",
"/cp2gprocs\n",
"<</arraytype//cpa2g/dicttype//cpd2g/packedarraytype//cpa2g/stringtype//cps2g >>\n",
"def\n",
"/cp2g{\n",
"dup gcheck not{\n",
"dup//cp2gprocs 1 index type\n",
"2 copy known{\n",
"get currentglobal 3 1 roll true setglobal exec exch setglobal\n",
"1 index wcheck not{readonly}if\n",
"1 index xcheck{cvx}if\n",
"exch pop\n",
"}{\n",
"pop pop\n",
"}ifelse\n",
"}if\n",
"}bind def\n",
"/BlockBuffer 65535 string def\n",
"/PDFReader currentdict def\n",
"/ObjectRegistryMaxLength 50000 def\n",
"/ObjectRegistry 10 dict def\n",
"ObjectRegistry\n",
"begin 0 ObjectRegistryMaxLength dict def end\n",
"/CurrentObject null def\n",
"/DoneDocumentStructure false def\n",
"/GraphicState 20 dict begin\n",
"/InitialTextMatrix matrix def\n",
"/InitialMatrix matrix currentmatrix def\n",
"currentdict end def\n",
"/TempMatrix matrix def\n",
"/GraphicStateStack 20 array def\n",
"/GraphicStateStackPointer 0 def\n",
"/InitialTextMatrixStack 20 array def\n",
"/InitialTextMatrixStackPointer 0 def\n",
"/PDFColorSpaces 50 dict def\n",
"/InstalledFonts 50 dict def\n",
"/MacRomanEncodingInverse null def\n",
"currentglobal false setglobal\n",
"userdict/PDFR_InitialGS gstate put\n",
"userdict/PDFR_Patterns 50 dict put\n",
"userdict/FuncDataReader 10 dict put\n",
"setglobal\n",
"/InitialExtGState 20 dict begin\n",
"/BG2 currentblackgeneration cp2g def\n",
"/UCR2 currentundercolorremoval cp2g def\n",
"/TR2 currentglobal false setglobal[currentcolortransfer]exch setglobal cp2g def\n",
"/HT currenthalftone cp2g def\n",
"currentdict end readonly def\n",
"/InitialGraphicState 20 dict begin\n",
"/FontSize 0 def\n",
"/CharacterSpacing 0 def\n",
"/TextLeading 0 def\n",
"/TextRenderingMode 0 def\n",
"/WordSpacing 0 def\n",
"currentdict end readonly def\n",
"/SimpleColorSpaceNames 15 dict begin\n",
"/DeviceGray true def\n",
"/DeviceRGB true def\n",
"/DeviceCMYK true def\n",
"currentdict end readonly def\n",
"/1_24_bitshift_1_sub 1 24 bitshift 1 sub def\n",
"/ReadFontProcs 10 dict def\n",
"/GetObject{\n",
"dup ObjectRegistryMaxLength idiv\n",
"//PDFReader /ObjectRegistry get exch knownget\n",
"{exch knownget}{pop false}ifelse\n",
"}bind def\n",
"/PutObject\n",
"{1 index ObjectRegistryMaxLength idiv\n",
"//PDFReader /ObjectRegistry get 1 index knownget{\n",
"exch pop 3 1 roll put}{\n",
"//PDFReader /ObjectRegistry get dup begin\n",
"1 index ObjectRegistryMaxLength dict def\n",
"end exch get 3 1 roll put\n",
"}ifelse\n",
"}bind def\n",
"/Register\n",
"{1 index GetObject{\n",
"dup xcheck{\n",
"4 3 roll pop\n",
"//PDFR_DEBUG{\n",
"(Have a daemon for ) print 2 index ==\n",
"}if\n",
"exec\n",
"}{\n",
"dup null ne{\n",
"mark (The object ) 4 index (is already defined : ) 4 index //error exec\n",
"}{\n",
"pop\n",
"}ifelse\n",
"3 2 roll\n",
"exec\n",
"}ifelse\n",
"}{\n",
"3 2 roll\n",
"exec\n",
"}ifelse\n",
"PutObject\n",
"} bind def\n",
"/IsRegistered{\n",
"GetObject{\n",
"null ne\n",
"}{\n",
"false\n",
"}ifelse\n",
"}bind def\n",
"/GetRegistered{\n",
"dup GetObject not{\n",
"exch mark exch (Object ) exch ( isn't defined before needed (1).) //error exec\n",
"}if\n",
"dup xcheck{\n",
"exch mark exch (Object ) exch ( isn't defined before needed (2).) //error exec\n",
"}{\n",
"dup null eq{\n",
"exch mark exch (Object ) exch ( isn't defined before needed (3).) //error exec\n",
"}if\n",
"exch pop\n",
"}ifelse\n",
"}bind def\n",
"/StandardFontNames<<\n",
"/Times-Roman true\n",
"/Helvetica true\n",
"/Courier true\n",
"/Symbol true\n",
"/Times-Bold true\n",
"/Helvetica-Bold true\n",
"/Courier-Bold true\n",
"/ZapfDingbats true\n",
"/Times-Italic true\n",
"/Helvetica-Oblique true\n",
"/Courier-Oblique true\n",
"/Times-BoldItalic true\n",
"/Helvetica-BoldOblique true\n",
"/Courier-BoldOblique true\n",
">>def\n",
"/CleanAllResources\n",
"{//PDFR_DEBUG{\n",
"(CleanAllResources beg)=\n",
"}if\n",
"//PDFReader/ObjectRegistry get{\n",
"dup length 0 exch 1 exch 1 sub{\n",
"2 copy get dup xcheck{\n",
"pop pop\n",
"}{\n",
"dup null eq{\n",
"pop pop\n",
"}{\n",
"dup type/dicttype eq{/.Global known}{pop false}ifelse{\n",
"pop\n",
"}{\n",
"//PDFR_DEBUG{\n",
"(Dropping )print dup =\n",
"}if\n",
"1 index exch/DroppedObject put\n",
"}ifelse\n",
"}ifelse\n",
"}ifelse\n",
"}for\n",
"pop\n",
"}forall\n",
"FontDirectory length dict begin\n",
"FontDirectory{\n",
"pop\n",
"dup//StandardFontNames exch known not{\n",
"dup null def\n",
"}if\n",
"pop\n",
"}forall\n",
"currentdict\n",
"end{\n",
"pop\n",
"//PDFR_DEBUG{\n",
"(Undefining font )print dup =\n",
"}if\n",
"undefinefont\n",
"}forall\n",
"//PDFR_DEBUG{\n",
"(CleanAllResources end)=\n",
"}if\n",
"}bind def\n",
"/PrintReference\n",
"{\n",
"//PDFR_DEBUG{\n",
"({ )print\n",
"dup{\n",
"=only( )print\n",
"}forall\n",
"( })=\n",
"}if\n",
"}bind def\n",
"/R\n",
"{\n",
"0 ne{\n",
"exch mark exch(A referred object generation )exch( isn't 0.)//error exec\n",
"}if\n",
"[\n",
"exch//GetRegistered/exec load\n",
"]cvx\n",
"//PrintReference exec\n",
"}bind def\n",
"/IsObjRef\n",
"{\n",
"dup type/arraytype eq{\n",
"dup length 3 eq{\n",
"dup xcheck exch\n",
"dup 0 get type/integertype eq 3 2 roll and exch\n",
"dup 1 get//GetRegistered eq 3 2 roll and exch\n",
"2 get/exec load eq and\n",
"}{\n",
"pop false\n",
"}ifelse\n",
"}{\n",
"pop false\n",
"}ifelse\n",
"}bind def\n",
"/DoNothing\n",
"{\n",
"}def\n",
"/RunTypeDaemon\n",
"{\n",
"dup type/dicttype eq{\n",
"dup/Type//knownget exec{\n",
"//PDFReader/TypeDaemons get exch\n",
"//knownget exec{\n",
"exec\n",
"}if\n",
"}if\n",
"}if\n",
"}bind def\n",
"/obj\n",
"{\n",
"//PDFR_DEBUG{\n",
"(Defining )print 1 index =only( )print dup =only( obj)=\n",
"}if\n",
"0 ne{\n",
"exch mark exch(An object generation )exch( isn't 0.)//error exec\n",
"}if\n",
"}bind def\n",
"/endobj\n",
"{\n",
"//PDFR_DEBUG{\n",
"(endobj )=\n",
"}if\n",
"dup type/dicttype eq{\n",
"dup/.endobj_daemon//knownget exec{\n",
"//PDFR_DEBUG{(.endobj_daemon for )print 2 index =}if\n",
"exec\n",
"}if\n",
"}if\n",
"dup type/dicttype eq{dup/ImmediateExec known}{false}ifelse{\n",
"pop pop\n",
"}{\n",
"//PDFR_DEBUG{\n",
"(Storing )print 1 index =\n",
"}if\n",
"//RunTypeDaemon exec\n",
"//DoNothing 3 1 roll//Register exec\n",
"}ifelse\n",
"}bind def\n",
"/StoreBlock\n",
"{\n",
"//PDFR_DEBUG{\n",
"(StoreBlock )print//PDFReader/BlockCount get =only(, Length = )print dup length =\n",
"}if\n",
"dup length string copy\n",
"//PDFReader/BlockCount get exch\n",
"//PDFReader/CurrentObject get 3 1 roll\n",
"put\n",
"//PDFReader/BlockCount get 1 add\n",
"//PDFReader exch/BlockCount exch put\n",
"}bind def\n",
"/CheckLength\n",
"{dup type/integertype ne{\n",
"mark(Object length isn't an integer.)//error exec\n",
"}if\n",
"}bind def\n",
"/ResolveD\n",
"{\n",
"3 copy pop get\n",
"dup//IsObjRef exec{\n",
"//PDFR_DEBUG{\n",
"(Resolving )print//PrintReference exec\n",
"}if\n",
"exec\n",
"exch exec\n",
"}{\n",
"exch pop\n",
"}ifelse\n",
"dup 4 1 roll\n",
"put\n",
"}bind def\n",
"/ResolveA\n",
"{2 index 2 index get\n",
"dup//IsObjRef exec{\n",
"exec\n",
"exch exec\n",
"3 copy put\n",
"}{\n",
"exch pop\n",
"}ifelse\n",
"exch pop exch pop\n",
"}bind def\n",
"/StoreStream\n",
"{\n",
"dup//PDFReader exch/CurrentObject exch put\n",
"//PDFReader/BlockCount 0 put\n",
"dup/Length//CheckLength//ResolveD exec\n",
"//PDFR_DEBUG{\n",
"(StoreStream Length = )print dup =\n",
"}if\n",
"currentfile exch()/SubFileDecode filter\n",
"{dup//BlockBuffer readstring{\n",
"//StoreBlock exec\n",
"}{\n",
"//StoreBlock exec\n",
"exit\n",
"}ifelse\n",
"}loop\n",
"pop\n",
"//PDFReader/CurrentObject null put\n",
"//PDFR_DEBUG{\n",
"(StoreStream end.)=\n",
"}if\n",
"}bind def\n",
"/MakeStreamDumper\n",
"{\n",
"//PDFR_DEBUG{\n",
"(MakeStreamDumper beg.)=\n",
"}if\n",
"currentglobal exch dup gcheck setglobal\n",
"[exch\n",
"1 dict dup/c 0 put exch\n",
"1024 string\n",
"{readstring pop\n",
"(StreamDumper )print 1 index/c get =string cvs print( )print\n",
"dup length =string cvs print( <)print dup print(>\\n)print\n",
"dup length\n",
"3 2 roll\n",
"dup/c get\n",
"3 2 roll\n",
"add/c exch put\n",
"}/exec load\n",
"]\n",
"cvx 0()/SubFileDecode filter\n",
"exch setglobal\n",
"//PDFR_DEBUG{\n",
"(MakeStreamDumper end.)=\n",
"}if\n",
"}bind def\n",
"/ShortFilterNames 15 dict begin\n",
"/AHx/ASCIIHexDecode def\n",
"/A85/ASCII85Decode def\n",
"/LZW/LZWDecode def\n",
"/Fl/FlateDecode def\n",
"/RL/RunLengthDecode def\n",
"/CCF/CCITTFaxDecode def\n",
"/DCT/DCTDecode def\n",
"currentdict end readonly def\n",
"/AppendFilters\n",
"{\n",
"//PDFR_DEBUG{\n",
"(AppendFilters beg.)=\n",
"}if\n",
"dup 3 1 roll\n",
"/Filter//knownget exec{\n",
"dup type/nametype eq{\n",
"dup//ShortFilterNames exch//knownget exec{\n",
"exch pop\n",
"}if\n",
"2 index/DecodeParms//knownget exec{\n",
"exch\n",
"}if\n",
"filter\n",
"}{\n",
"dup 0 exch 1 exch length 1 sub{\n",
"2 copy get\n",
"dup//ShortFilterNames exch//knownget exec{\n",
"exch pop\n",
"}if\n",
"3 1 roll\n",
"4 index/DecodeParms//knownget exec{\n",
"exch get\n",
"}{\n",
"pop null\n",
"}ifelse\n",
"dup null eq{\n",
"pop 3 1 roll filter exch\n",
"}{\n",
"3 1 roll\n",
"4 1 roll filter exch\n",
"}ifelse\n",
"}for\n",
"pop\n",
"}ifelse\n",
"//PDFR_DEBUG//PDFR_DUMP and{\n",
"//MakeStreamDumper exec\n",
"}if\n",
"}if\n",
"exch pop\n",
"//PDFR_DEBUG{\n",
"(AppendFilters end.)=\n",
"}if\n",
"}bind def\n",
"/ExecuteStream\n",
"{\n",
"dup//PDFReader exch/CurrentObject exch put\n",
"dup/Length//CheckLength//ResolveD exec\n",
"//PDFR_DEBUG{\n",
"(ExecuteStream id = )print 2 index =only( Length = )print dup =\n",
"}if\n",
"//PDFReader/InitialGraphicState get\n",
"//PDFReader/GraphicState get copy pop\n",
"//PDFReader/Operators get begin\n",
"pop currentfile 0(endstream)/SubFileDecode filter\n",
"1 index//AppendFilters exec\n",
"cvx mark exch\n",
"exec\n",
"counttomark 0 ne{\n",
"mark(Data left on ostack after an immediate stream execution.)//error exec\n",
"}if\n",
"cleartomark\n",
"end\n",
"//PDFR_DEBUG{\n",
"(ExecuteStream end.)=\n",
"}if\n",
"//PDFReader/CurrentObject null put\n",
"dup/IsPage known{\n",
"dup/Context get/NumCopies//knownget exec{\n",
"1 sub{\n",
"copypage\n",
"}repeat\n",
"}if\n",
"EPS2Write not {showpage} if\n",
"}if\n",
"}bind def\n",
"/stream\n",
"{\n",
"//PDFR_DEBUG{\n",
"1 index =only( stream)=\n",
"}if\n",
"1 index GetObject{\n",
"dup xcheck{\n",
"exec\n",
"1 index null PutObject\n",
"}{\n",
"pop\n",
"}ifelse\n",
"}if\n",
"dup/ImmediateExec known{\n",
"dup/GlobalExec//knownget exec{\n",
"currentglobal 4 1 roll\n",
"setglobal\n",
"//ExecuteStream exec\n",
"3 2 roll setglobal\n",
"}{\n",
"//ExecuteStream exec\n",
"}ifelse\n",
"}{\n",
"//StoreStream exec\n",
"}ifelse\n",
"dup/.CleanResources//knownget exec{\n",
"/All eq{\n",
"//CleanAllResources exec\n",
"}if\n",
"}if\n",
"}bind def\n",
"/HookFont\n",
"{\n",
"//PDFR_DEBUG{\n",
"(Loaded the font )print dup/FontName get =\n",
"}if\n",
"{\n",
"dup/FontFileType get dup/Type1 eq exch/MMType1 eq or{\n",
"dup/FontName get\n",
"//PDFReader/RemoveFontNamePrefix get exec\n",
"findfont\n",
"exit\n",
"}if\n",
"dup/FontFileType get/TrueType eq{\n",
"//PDFReader/MakeType42 get exec\n",
"//PDFR_DEBUG{\n",
"(Font dict <<)=\n",
"dup{\n",
"1 index/sfnts eq{\n",
"exch pop\n",
"(/sfnts [)print\n",
"{\n",
"(-string\\()print length//=only exec(\\)- )=\n",
"}forall\n",
"(])=\n",
"}{\n",
"exch//=only exec( )print ==\n",
"}ifelse\n",
"}forall\n",
"(>>)=\n",
"}if\n",
"dup/FontName get exch definefont\n",
"exit\n",
"}if\n",
"mark(FontHook has no proc for )2 index/FontFileType get//error exec\n",
"}loop\n",
"/Font exch put\n",
"}bind def\n",
"/endstream\n",
"{\n",
"}bind def\n",
"/xref\n",
"{\n",
"//PDFR_DEBUG{\n",
"(xref)=\n",
"//PDFR_DUMP{\n",
"//PDFReader/ObjectRegistry get ==\n",
"}if\n",
"}if\n",
"end\n",
"count 0 ne{\n",
"mark(Excessive data on estack at the end of the interpretation.)//error exec\n",
"}if\n",
"currentfile 1(%%EOF)/SubFileDecode filter\n",
"flushfile\n",
"cleardictstack\n",
"}bind def\n",
"/ResolveDict\n",
"{dup{\n",
"pop 1 index exch\n",
"//DoNothing//ResolveD exec\n",
"pop\n",
"}forall\n",
"pop\n",
"}bind def\n",
"/SetupPageView\n",
"{\n",
"//PDFR_DEBUG{\n",
"(SetupPageView beg)=\n",
"}if\n",
"//DSC_OPDFREAD not{\n",
"//GraphicState/InitialMatrix get setmatrix\n",
"}if\n",
"/MediaBox get aload pop\n",
"3 index neg 3 index neg translate\n",
"3 -1 roll sub 3 1 roll exch sub exch\n",
"userdict/.HWMargins//knownget exec{\n",
"aload pop\n",
"}{\n",
"currentpagedevice/.HWMargins//knownget exec{\n",
"aload pop\n",
"}{\n",
"0 0 0 0\n",
"}ifelse\n",
"}ifelse\n",
"currentpagedevice/PageSize get aload pop\n",
"3 -1 roll sub 3 1 roll exch sub exch\n",
"exch 3 index sub exch 3 index sub\n",
"//SetPageSize{\n",
"//PDFR_DEBUG{\n",
"(Setting page size to )print 1 index//=only exec( )print dup =\n",
"}if\n",
"pop pop 3 index 3 index 2 copy\n",
"currentglobal false setglobal 3 1 roll\n",
"currentpagedevice dup /PageSize known{\n",
"/PageSize get aload pop}{\n",
"0 0}ifelse\n",
"round cvi 2 index round cvi eq\n",
"exch round cvi 3 index round cvi eq and{\n",
"//PDFR_DEBUG{(PageSize matches request) == flush}if\n",
"pop pop}{\n",
"/MediaRequested where {\n",
"//PDFR_DEBUG{(MediaRequested is true, check against new request) == flush}if\n",
"/MediaRequested get aload pop\n",
"round cvi 2 index round cvi eq\n",
"exch round cvi 3 index round cvi eq and\n",
"{//PDFR_DEBUG{(MediaRequested same as current request, ignore) == flush}if pop pop false}\n",
"{//PDFR_DEBUG{(MediaRequested different to current request) == flush}if true}ifelse\n",
"}{\n",
"//PDFR_DEBUG{(No MediaRequested yet) == flush}if\n",
"true\n",
"}ifelse\n",
"{\n",
"//PDFR_DEBUG{(Setting pagesize) == flush}if\n",
"2 array astore\n",
"dup /MediaRequested exch def\n",
"<< exch /PageSize exch >> setpagedevice\n",
"/pagesave save def\n",
"}if\n",
"}ifelse\n",
"userdict/PDFR_InitialGS gstate put\n",
"setglobal\n",
"}if\n",
"//RotatePages{\n",
"2 copy gt 6 index 6 index gt ne{\n",
"1 index 5 index le 1 index 5 index le and not\n",
"}{\n",
"false\n",
"}ifelse\n",
"}{\n",
"false\n",
"}ifelse\n",
"{//CenterPages{\n",
"//PDFR_DEBUG{\n",
"(Rotating page, and then centering it)==\n",
"}if\n",
"90 rotate\n",
"0 5 index neg translate\n",
"5 index 1 index exch sub 2 div\n",
"2 index 6 index sub 2 div neg\n",
"translate\n",
"}{\n",
"//FitPages{\n",
"1 index 5 index div 1 index 7 index div\n",
"2 copy gt{\n",
"exch\n",
"}if\n",
"pop dup scale\n",
"}if\n",
"90 rotate\n",
"0 5 index neg translate\n",
"}ifelse\n",
"}{\n",
"//CenterPages{\n",
"//PDFR_DEBUG{\n",
"(Ccentering page)==\n",
"}if\n",
"1 index 6 index sub 2 div\n",
"1 index 6 index sub 2 div\n",
"translate\n",
"}{\n",
"//FitPages{\n",
"1 index 6 index div 1 index 6 index div\n",
"2 copy gt{\n",
"exch\n",
"}if\n",
"pop dup scale\n",
"}if\n",
"}ifelse\n",
"}ifelse\n",
"pop pop\n",
"translate\n",
"pop pop\n",
"//PDFR_DEBUG{\n",
"(SetupPageView end)=\n",
"}if\n",
"}bind def\n",
"/PageContentsDaemon\n",
"{\n",
"//PDFR_DEBUG{\n",
"(Executing PageContentsDaemon for )print 2 index =\n",
"}if\n",
"1 index exch/Context exch put\n",
"dup/ImmediateExec true put\n",
"dup/IsPage true put\n",
"SetPageSize {dup/Context get//SetupPageView exec}if\n",
"}bind def\n",
"/FontFileDaemon\n",
"{\n",
"//PDFR_DEBUG{\n",
"(Executing FontFileDaemon for )print 2 index =\n",
"}if\n",
"dup/FontFileType get\n",
"2 index exch\n",
"dup//ReadFontProcs exch//knownget exec{\n",
"exch pop exec\n",
"}{\n",
"mark(FontFile reader for )2 index( isn't implemented yet.)//error exec\n",
"}ifelse\n",
"//PDFR_DEBUG{\n",
"(FontFileDaemon end)=\n",
"}if\n",
"pop\n",
"}bind def\n",
"/FontDescriptorDaemon\n",
"{\n",
"//PDFR_DEBUG{\n",
"(Executing FontDescriptorDaemon for )print 2 index =\n",
"}if\n",
"2 copy/FontResource exch put\n",
"/Subtype get 1 index exch/FontFileType exch put\n",
"}bind def\n",
"/UnPDFEscape{\n",
"dup dup length string cvs\n",
"dup(#)search{\n",
"{\n",
"pop\n",
"(16#--)2 index 0 2 getinterval\n",
"1 index 3 2 getinterval copy pop\n",
"cvi\n",
"0 exch put\n",
"0\n",
"1 index 2 1 index length 2 sub getinterval\n",
"3 copy putinterval\n",
"length\n",
"3 copy exch put\n",
"getinterval\n",
"(#)search not{\n",
"pop exit\n",
"}if\n",
"}loop\n",
"(\\0)search pop exch pop exch pop\n",
"cvn\n",
"exch pop\n",
"}{\n",
"pop pop\n",
"}ifelse\n",
"}bind def\n",
"/TypeDaemons<<\n",
"/Page\n",
"{//PDFR_DEBUG{\n",
"(Recognized a page.)=\n",
"}if\n",
"dup/Contents//knownget exec{\n",
"0 get//DoNothing exch\n",
"[\n",
"3 index//PageContentsDaemon/exec load\n",
"]cvx\n",
"//Register exec\n",
"}{\n",
"(fixme: page with no Contents won't be printed.)=\n",
"}ifelse\n",
"}bind\n",
"/FontDescriptor\n",
"{//PDFR_DEBUG{\n",
"(Recognized a font descriptor.)=\n",
"}if\n",
"dup/FontName//knownget exec{\n",
"1 index/FontName 3 -1 roll//UnPDFEscape exec put\n",
"}if\n",
"dup dup/FontFile known{/FontFile}{/FontFile2}ifelse\n",
"//knownget exec{\n",
"0 get//DoNothing exch\n",
"[\n",
"3 index//FontFileDaemon/exec load\n",
"]cvx\n",
"//Register exec\n",
"}{\n",
"(Font descriptor )print 1 index =only( has no FontFile.)=\n",
"}ifelse\n",
"}bind\n",
"/Font\n",
"{//PDFR_DEBUG{\n",
"(Recognized a font resource.)=\n",
"}if\n",
"dup/BaseFont//knownget exec{\n",
"//UnPDFEscape exec 2 copy/BaseFont exch put\n",
"//PDFReader/RemoveFontNamePrefix get exec\n",
"currentglobal exch\n",
"dup/Font resourcestatus{\n",
"pop pop\n",
"//PDFReader/GetInstalledFont get exec pop\n",
"}{\n",
"pop\n",
"}ifelse\n",
"setglobal\n",
"}if\n",
"dup/FontDescriptor//knownget exec{\n",
"0 get\n",
"dup//IsRegistered exec{\n",
"//PDFR_DEBUG{\n",
"(already registered )print dup =\n",
"}if\n",
"pop\n",
"}{\n",
"//DoNothing exch\n",
"[\n",
"3 index//FontDescriptorDaemon/exec load\n",
"]cvx\n",
"//Register exec\n",
"}ifelse\n",
"}if\n",
"}bind\n",
">>def\n",
"/MakeStreamReader\n",
"{dup\n",
"[\n",
"exch\n",
"//PDFR_DEBUG{\n",
"(Stream proc )\n",
"/print load\n",
"//PDFR_STREAM{\n",
"(<)\n",
"/print load\n",
"}if\n",
"}if\n",
"1 dict dup/i -1 put\n",
"/dup load\n",
"/i\n",
"/get load\n",
"1\n",
"/add load\n",
"/dup load\n",
"3\n",
"1\n",
"/roll load\n",
"/i\n",
"/exch load\n",
"/put load\n",
"//knownget\n",
"/exec load\n",
"/not load\n",
"{()}\n",
"/if load\n",
"//PDFR_DEBUG{\n",
"//PDFR_STREAM{\n",
"/dup load\n",
"/print load\n",
"(>)\n",
"/print load\n",
"}if\n",
"( end of stream proc.\\n)\n",
"/print load\n",
"}if\n",
"]cvx\n",
"//PDFR_DEBUG{\n",
"(Stream reader )print dup ==\n",
"}if\n",
"0()/SubFileDecode filter\n",
"exch//AppendFilters exec\n",
"}bind def\n",
"/RunDelayedStream\n",
"{\n",
"//GraphicState/InitialTextMatrix get\n",
"//InitialTextMatrixStack//PDFReader/InitialTextMatrixStackPointer get\n",
"2 copy get null eq{\n",
"2 copy currentglobal true setglobal matrix exch setglobal put\n",
"}if\n",
"get copy pop\n",
"//PDFReader/InitialTextMatrixStackPointer 2 copy get 1 add put\n",
"//MakeStreamReader exec\n",
"mark exch\n",
"cvx exec\n",
"counttomark 0 ne{\n",
"mark(Data left on ostack after a delayed stream execution.)//error exec\n",
"}if\n",
"cleartomark\n",
"//PDFReader/InitialTextMatrixStackPointer 2 copy get 1 sub put\n",
"//InitialTextMatrixStack//PDFReader/InitialTextMatrixStackPointer get get\n",
"//GraphicState/InitialTextMatrix get\n",
"copy pop\n",
"}bind def\n",
"//ReadFontProcs begin\n",
"/Type1\n",
"{//PDFR_DEBUG{\n",
"(ReadFontProcs.Type1)=\n",
"}if\n",
"dup/.endobj_daemon[4 index//HookFont/exec load]cvx put\n",
"dup/ImmediateExec true put\n",
"/GlobalExec true put\n",
"}bind def\n",
"/MMType1//Type1 def\n",
"/TrueType\n",
"{//PDFR_DEBUG{\n",
"(ReadFontProcs.TrueType)=\n",
"}if\n",
"dup/.endobj_daemon[4 index//HookFont/exec load]cvx put\n",
"pop\n",
"}bind def\n",
"end\n",
"/.opdloadttfontdict 50 dict def\n",
".opdloadttfontdict begin\n",
"/maxstring 65400 def\n",
"end\n",
"/.InsertionSort\n",
"{\n",
"/CompareProc exch def\n",
"/Array exch def\n",
"1 1 Array length 1 sub\n",
"{\n",
"/Ix exch def\n",
"/Value1 Array Ix get def\n",
"/Jx Ix 1 sub def\n",
"{\n",
"Jx 0 lt{\n",
"exit\n",
"}if\n",
"/Value2 Array Jx get def\n",
"Value1 Value2 CompareProc{\n",
"exit\n",
"}if\n",
"Array Jx 1 add Value2 put\n",
"/Jx Jx 1 sub def\n",
"}loop\n",
"Array Jx 1 add Value1 put\n",
"}for\n",
"Array\n",
"}bind def\n",
"/putu16{\n",
"3 copy -8 bitshift put\n",
"exch 1 add exch 16#ff and put\n",
"}bind def\n",
"/putu32{\n",
"3 copy -16 bitshift putu16\n",
"exch 2 add exch 16#ffff and putu16\n",
"}bind def\n",
"/.readtable{\n",
"dup dup 1 and add string\n",
"dup 0 4 -1 roll getinterval\n",
"3 -1 roll exch\n",
"dup()ne{readstring}if pop pop\n",
"}bind def\n",
"/.readbigtable{\n",
"dup maxstring lt{\n",
".readtable\n",
"}{\n",
"currentuserparams/VMReclaim get -2 vmreclaim\n",
"[4 2 roll{\n",
"dup maxstring le{exit}if\n",
"1 index maxstring string readstring pop 3 1 roll maxstring sub\n",
"}loop .readtable]\n",
"exch vmreclaim\n",
"}ifelse\n",
"}bind def\n",
"/ReadTTF\n",
"{\n",
".opdloadttfontdict begin\n",
"/TTFontFile exch def\n",
"/TableDir TTFontFile 12 string readstring pop def\n",
"/tables TTFontFile TableDir 4 getu16 16 mul string readstring pop def\n",
"/tabarray tables length 16 idiv array def\n",
"TableDir 0 4 getinterval(ttcf)eq{\n",
"QUIET not{(Can't handle TrueType font Collections.)=}if\n",
"/.loadttfonttables cvx/invalidfont signalerror\n",
"}{\n",
"0 16 tables length 1 sub{\n",
"dup\n",
"tables exch 16 getinterval\n",
"exch 16 div cvi exch\n",
"tabarray 3 1 roll put\n",
"}for\n",
"}ifelse\n",
"tabarray{exch 8 getu32 exch 8 getu32 gt}.InsertionSort pop\n",
"/Read TableDir length tables length add def\n",
"/tabs[\n",
"tabarray{\n",
"dup 8 getu32\n",
"Read sub\n",
"dup 0 gt{\n",
"dup string TTFontFile exch readstring pop pop\n",
"Read add/Read exch def\n",
"}{\n",
"pop\n",
"}ifelse\n",
"12 getu32\n",
"dup Read add\n",
"/Read exch def\n",
"TTFontFile exch .readbigtable\n",
"}forall\n",
"]def\n",
"end\n",
"}bind def\n",
"/GetLocaType\n",
"{\n",
"0 1 tabarray length 1 sub{\n",
"dup tabarray exch get\n",
"0 4 getinterval(head)eq{\n",
"tabs exch get\n",
"50 gets16\n",
"/LocaType exch def\n",
"exit\n",
"}{\n",
"pop\n",
"}ifelse\n",
"}for\n",
"}bind def\n",
"/GetNumGlyphs\n",
"{\n",
"0 1 tabarray length 1 sub{\n",
"dup tabarray exch get\n",
"0 4 getinterval(maxp)eq{\n",
"tabs exch get\n",
"4 getu16\n",
"/NumGlyphs exch def\n",
"exit\n",
"}{\n",
"pop\n",
"}ifelse\n",
"}for\n",
"}bind def\n",
"/StringToLoca\n",
"{\n",
"/LocaIndex exch def\n",
"/StringOffset 0 def\n",
"{\n",
"dup length StringOffset gt{\n",
"dup\n",
"LocaType 1 eq{\n",
"StringOffset getu32\n",
"LocaArray LocaIndex 3 -1 roll put\n",
"/LocaIndex LocaIndex 1 add def\n",
"/StringOffset StringOffset 4 add\n",
"def\n",
"}{\n",
"dup\n",
"StringOffset getu16\n",
"LocaArray LocaIndex 3 -1 roll put\n",
"/LocaIndex LocaIndex 1 add def\n",
"/StringOffset StringOffset 4 add\n",
"def\n",
"}ifelse\n",
"}{\n",
"pop\n",
"LocaIndex\n",
"exit\n",
"}ifelse\n",
"}loop\n",
"}bind def\n",
"/GetSortedLoca\n",
"{\n",
"NumGlyphs 1 add array/LocaArray exch def\n",
"0 1 tabarray length 1 sub{\n",
"dup tabarray exch get\n",
"0 4 getinterval(loca)eq{\n",
"tabs exch get\n",
"exit\n",
"}{\n",
"pop\n",
"}ifelse\n",
"}for\n",
"dup type/stringtype eq{\n",
"0 StringToLoca pop\n",
"}{\n",
"0 exch\n",
"{\n",
"exch StringToLoca\n",
"}forall\n",
"pop\n",
"}ifelse\n",
"LocaArray{gt}.InsertionSort pop\n",
"}bind def\n",
"/GetWorkingString\n",
"{\n",
"WorkString 0\n",
"GlyfArray GlyfStringIndex get\n",
"putinterval\n",
"/WorkBytes GlyfArray GlyfStringIndex get length def\n",
"/GlyfStringIndex GlyfStringIndex 1 add def\n",
"}bind def\n",
"/GetWorkingBytes\n",
"{\n",
"/BytesToRead exch def\n",
"WorkString 0 BytesToRead getinterval\n",
"dup length string copy\n",
"WorkString BytesToRead WorkBytes BytesToRead sub getinterval\n",
"dup length string copy\n",
"WorkString 0 3 -1 roll putinterval\n",
"/WorkBytes WorkBytes BytesToRead sub def\n",
"}bind def\n",
"/GetGlyfBytes\n",
"{\n",
"/ToRead exch def\n",
"WorkBytes 0 eq{\n",
"GetWorkingString\n",
"}if\n",
"WorkBytes ToRead ge{\n",
"ToRead string dup 0\n",
"ToRead GetWorkingBytes putinterval\n",
"}{\n",
"ToRead string\n",
"dup\n",
"0\n",
"WorkString 0 WorkBytes getinterval\n",
"putinterval\n",
"dup\n",
"WorkBytes\n",
"ToRead WorkBytes sub\n",
"GetWorkingString\n",
"GetWorkingBytes\n",
"putinterval\n",
"}ifelse\n",
"}bind def\n",
"/SplitGlyf\n",
"{\n",
"/GlyfArray exch def\n",
"/DestArray GlyfArray length 2 mul array def\n",
"/DestArrayIndex 0 def\n",
"/LastLoca 0 def\n",
"/NextLocaIndex 0 def\n",
"/LastLocaIndex 0 def\n",
"/GlyfStringIndex 0 def\n",
"/WorkString maxstring string def\n",
"/WorkBytes 0 def\n",
"{\n",
"LocaArray NextLocaIndex get\n",
"LastLoca sub maxstring gt\n",
"{\n",
"LocaArray LastLocaIndex get LastLoca sub\n",
"GetGlyfBytes\n",
"DestArray DestArrayIndex 3 -1 roll put\n",
"/DestArrayIndex DestArrayIndex 1 add def\n",
"LocaArray LastLocaIndex get/LastLoca exch def\n",
"}{\n",
"/LastLocaIndex NextLocaIndex def\n",
"/NextLocaIndex NextLocaIndex 1 add def\n",
"NextLocaIndex NumGlyphs gt\n",
"{\n",
"WorkBytes\n",
"GlyfStringIndex GlyfArray length lt{\n",
"GlyfArray GlyfStringIndex get length\n",
"add string dup\n",
"0\n",
"WorkString 0 WorkBytes getinterval\n",
"putinterval\n",
"dup\n",
"WorkBytes\n",
"GetWorkingString\n",
"WorkString 0 WorkBytes getinterval\n",
"putinterval\n",
"}{\n",
"pop\n",
"WorkString 0 WorkBytes getinterval\n",
"}ifelse\n",
"dup length string copy\n",
"DestArray DestArrayIndex 3 -1 roll put\n",
"exit\n",
"}if\n",
"}ifelse\n",
"}loop\n",
"DestArray\n",
"}bind def\n",
"/ProcessTTData\n",
"{\n",
".opdloadttfontdict begin\n",
"0 1 tabarray length 1 sub{\n",
"/ix exch def\n",
"tabarray ix get\n",
"12 getu32 dup maxstring le{\n",
"dup 4 mod 0 ne{\n",
"4 div cvi 1 add 4 mul string/newstring exch def\n",
"/oldstring tabs ix get def\n",
"newstring 0 oldstring putinterval\n",
"0 1 newstring length oldstring length sub 1 sub{\n",
"newstring exch oldstring length add 0 put\n",
"}for\n",
"tabs ix newstring put\n",
"}{\n",
"pop\n",
"}ifelse\n",
"}{\n",
"dup 4 mod 0 ne{\n",
"dup maxstring idiv maxstring mul sub\n",
"4 idiv 1 add 4 mul string/newstring exch def\n",
"tabs ix get\n",
"dup length 1 sub dup/iy exch def get/oldstring exch def\n",
"newstring 0 oldstring putinterval\n",
"0 1 newstring length oldstring length sub 1 sub{\n",
"newstring exch oldstring length add 0 put\n",
"}for\n",
"tabs ix get iy newstring put\n",
"}{\n",
"pop\n",
"}ifelse\n",
"}ifelse\n",
"}for\n",
"0 1 tabarray length 1 sub{\n",
"dup tabarray exch get\n",
"dup 12 getu32 maxstring gt{\n",
"0 4 getinterval dup(glyf)eq{\n",
"pop\n",
"GetLocaType\n",
"GetNumGlyphs\n",
"GetSortedLoca\n",
"dup tabs exch get\n",
"SplitGlyf\n",
"tabs 3 1 roll put\n",
"}{\n",
"(Warning, table )print print( > 64Kb\\n)print\n",
"pop\n",
"}ifelse\n",
"}{\n",
"pop\n",
"pop\n",
"}ifelse\n",
"}for\n",
"end\n",
"}bind def\n",
"/Makesfnts\n",
"{\n",
".opdloadttfontdict begin\n",
"0\n",
"tabs{\n",
"dup type/stringtype eq{\n",
"pop\n",
"1 add\n",
"}{\n",
"{\n",
"type/stringtype eq{\n",
"1 add\n",
"}if\n",
"}forall\n",
"}ifelse\n",
"}forall\n",
"1 add\n",
"/TTOffset\n",
"TableDir length\n",
"tabarray length 16 mul add\n",
"def\n",
"0\n",
"tabarray{\n",
"exch dup 1 add\n",
"3 1 roll\n",
"dup\n",
"tabs exch get\n",
"dup type/stringtype eq{\n",
"length\n",
"2 index exch\n",
"TTOffset\n",
"dup 3 1 roll add\n",
"/TTOffset exch def\n",
"8 exch putu32\n",
"exch tabarray 3 1 roll\n",
"put\n",
"}{\n",
"0 exch\n",
"{\n",
"dup type/stringtype eq{\n",
"length add\n",
"}{\n",
"pop\n",
"}ifelse\n",
"}forall\n",
"2 index exch\n",
"TTOffset\n",
"dup 3 1 roll add\n",
"/TTOffset exch def\n",
"8 exch putu32\n",
"exch tabarray 3 1 roll\n",
"put\n",
"}ifelse\n",
"}forall\n",
"pop\n",
"array\n",
"dup 0\n",
"TableDir length\n",
"tables length add\n",
"string\n",
"dup 0 TableDir putinterval\n",
"dup 12 tables putinterval\n",
"put\n",
"dup\n",
"/ix 1 def\n",
"tabs{\n",
"dup type/stringtype eq{\n",
"ix exch\n",
"put dup\n",
"/ix ix 1 add def\n",
"}{\n",
"{\n",
"dup type/stringtype eq{\n",
"ix exch put dup\n",
"/ix ix 1 add def\n",
"}{\n",
"pop\n",
"}ifelse\n",
"}forall\n",
"}ifelse\n",
"}forall\n",
"pop\n",
"end\n",
"}bind def\n",
"/MakeType42\n",
"{\n",
"//PDFR_DEBUG{\n",
"(MakeType42 beg)=\n",
"}if\n",
"10 dict begin\n",
"/FontName 1 index/FontName get def\n",
"/FontType 42 def\n",
"/FontMatrix[1 0 0 1 0 0]def\n",
"/FontBBox 1 index/FontBBox get def\n",
"dup/FontResource get\n",
"dup/Encoding known{\n",
"//PDFReader/ObtainEncoding get exec\n",
"/Encoding get\n",
"}{\n",
"pop null\n",
"}ifelse\n",
"/PDFEncoding exch def\n",
"/CharStrings 2 index//PDFReader/MakeTTCharStrings get exec def\n",
"/sfnts 2 index//MakeStreamReader exec\n",
"ReadTTF\n",
"ProcessTTData\n",
"Makesfnts\n",
"def\n",
"/Encoding StandardEncoding def\n",
"/PaintType 0 def\n",
"currentdict end\n",
"//PDFR_DEBUG{\n",
"(MakeType42 end)=\n",
"}if\n",
"}bind def\n",
"/GetInstalledFont\n",
"{\n",
"dup//InstalledFonts exch knownget{\n",
"exch pop\n",
"}{\n",
"dup findfont dup 3 1 roll\n",
"//InstalledFonts 3 1 roll put\n",
"}ifelse\n",
"}bind def\n",
"/RemoveFontNamePrefix\n",
"{//=string cvs true\n",
"0 1 5{\n",
"2 index exch get//IsUpper exec not{\n",
"pop false exit\n",
"}if\n",
"}for\n",
"{(+)search{\n",
"pop pop\n",
"}if\n",
"}if\n",
"cvn\n",
"}bind def\n",
"/CheckFont\n",
"{dup/Type get/Font ne{\n",
"mark(Resource )3 index( must have /Type/Font .)//error exec\n",
"}if\n",
"}bind def\n",
"/CheckEncoding\n",
"{dup type/nametype ne{\n",
"dup/Type get/Encoding ne{\n",
"mark(Resource )3 index( must have /Type/Encoding .)//error exec\n",
"}if\n",
"}if\n",
"}bind def\n",
"/ObtainEncoding\n",
"{dup/Encoding known{\n",
"dup dup/Encoding//CheckEncoding//ResolveD exec\n",
"dup type dup/arraytype eq exch/packedarraytype eq or{\n",
"pop pop\n",
"}{\n",
"dup type/nametype eq{\n",
"/Encoding findresource\n",
"}{\n",
"dup/BaseEncoding//knownget exec not{\n",
"/StandardEncoding\n",
"}if\n",
"/Encoding findresource\n",
"exch\n",
"/Differences//knownget exec{\n",
"exch dup length array copy exch\n",
"0 exch\n",
"{\n",
"dup type/integertype eq{\n",
"exch pop\n",
"}{\n",
"3 copy put pop\n",
"1 add\n",
"}ifelse\n",
"}forall\n",
"pop\n",
"}if\n",
"}ifelse\n",
"/Encoding exch put\n",
"}ifelse\n",
"}{\n",
"dup/Encoding/StandardEncoding/Encoding findresource put\n",
"}ifelse\n",
"}bind def\n",
"/ObtainMetrics\n",
"{dup/Widths//knownget exec{\n",
"1 index/Encoding get\n",
"256 dict\n",
"3 index/Subtype get/TrueType eq{\n",
"1000\n",
"}{\n",
"1\n",
"}ifelse\n",
"4 index/MissingWidth//knownget exec not{\n",
"0\n",
"}if\n",
"5 index/FirstChar//knownget exec not{\n",
"0\n",
"}if\n",
"6 5 roll\n",
"dup 0 exch 1 exch length 1 sub{\n",
"2 copy get\n",
"exch 3 index add\n",
"7 index exch get\n",
"dup dup null ne exch/.notdef ne and{\n",
"6 index 3 1 roll exch\n",
"6 index div\n",
"3 copy pop//knownget exec{\n",
"0 eq\n",
"}{\n",
"true\n",
"}ifelse\n",
"{put\n",
"}{\n",
"pop pop pop\n",
"}ifelse\n",
"}{\n",
"pop pop\n",
"}ifelse\n",
"}for\n",
"pop pop pop pop exch pop\n",
"1 index exch/Metrics exch put\n",
"}{\n",
"dup/MissingWidth//knownget exec{\n",
"256 dict\n",
"2 index/Encoding get{\n",
"dup null ne{\n",
"3 copy 3 2 roll put\n",
"}if\n",
"pop\n",
"}forall\n",
"exch pop\n",
"1 index exch/Metrics exch put\n",
"}if\n",
"}ifelse\n",
"}bind def\n",
"/NotDef\n",
"{\n",
"FontMatrix aload pop pop pop exch pop exch pop\n",
"1 exch div exch\n",
"1 exch div exch\n",
"1 index 0 setcharwidth\n",
"0 setlinewidth\n",
"0 0 moveto\n",
"2 copy rlineto\n",
"1 index 0 rlineto\n",
"neg exch neg exch rlineto\n",
"closepath stroke\n",
"}bind def\n",
"/SaveResourcesToStack{",
"[//PDFReader/OldResources known{",
"//PDFReader/OldResources get}{null}ifelse\n",
"//PDFReader/CurrentObject get/Context get/Resources get]",
"//PDFReader/OldResources 3 -1 roll put}bind def\n",
"/RestoreResourcesFromStack{",
"//PDFReader/OldResources get dup\n",
"0 get//PDFReader/OldResources 3 -1 roll put\n",
"1 get//PDFReader/CurrentObject get/Context get/Resources 3 -1 roll put",
"} bind def\n",
"/BuildChar\n",
"{//PDFR_DEBUG{\n",
"(BuildChar )print dup//=only exec( )print\n",
"}if\n",
"exch begin\n",
"Encoding exch get\n",
"//PDFR_DEBUG{\n",
"dup =\n",
"}if\n",
"dup null eq{\n",
"pop//NotDef exec\n",
"}{\n",
"CharProcs exch//knownget exec{",
"currentfont/Font get/Resources//knownget exec{",
"exec SaveResourcesToStack",
"//PDFReader/CurrentObject get/Context get",
"/Resources 3 -1 roll put",
"//RunDelayedStream exec RestoreResourcesFromStack",
"}{//RunDelayedStream exec}ifelse",
"}{\n",
"//NotDef exec\n",
"}ifelse\n",
"}ifelse\n",
"end\n",
"}bind def\n",
"/printdict\n",
"{(<<)=\n",
"{exch = ==}forall\n",
"(>>)=\n",
"}bind def\n",
"/printfont\n",
"{\n",
"dup{\n",
"exch dup =\n",
"dup/Encoding eq{\n",
"pop =\n",
"}{\n",
"dup/FontInfo eq exch/Private eq or{\n",
"//printdict exec\n",
"}{\n",
"==\n",
"}ifelse\n",
"}ifelse\n",
"}forall\n",
"}bind def\n",
"/ScaleMetrics\n",
"{1 index{\n",
"2 index div\n",
"3 index\n",
"3 1 roll put\n",
"}forall\n",
"pop\n",
"}bind def\n",
"/ResolveAndSetFontAux\n",
"{exch dup\n",
"//PDFReader/CurrentObject get/Context get/Resources get\n",
"/Font//DoNothing//ResolveD exec\n",
"exch//CheckFont//ResolveD exec\n",
"dup/Font//knownget exec{\n",
"exch pop exch pop\n",
"}{\n",
"{\n",
"dup/Subtype get dup dup/Type1 eq exch/TrueType eq or exch/MMType1 eq or{\n",
"exch pop\n",
"dup/BaseFont get\n",
"//RemoveFontNamePrefix exec\n",
"//PDFR_DEBUG{\n",
"(Font )print dup =\n",
"}if\n",
"1 index/FontDescriptor known{\n",
"//PDFR_DEBUG{\n",
"(Font from a font descriptor.)=\n",
"}if\n",
"1 index\n",
"/FontDescriptor//DoNothing//ResolveD exec\n",
"/Font//knownget exec{\n",
"exch pop\n",
"}{\n",
"//PDFR_DEBUG{\n",
"(Font descriptor has no Font resolved.)=\n",
"}if\n",
"//GetInstalledFont exec\n",
"}ifelse\n",
"}{\n",
"//GetInstalledFont exec\n",
"}ifelse\n",
"exch\n",
"dup/Encoding known not{\n",
"1 index/Encoding get 1 index exch/Encoding exch put\n",
"}if\n",
"//ObtainEncoding exec\n",
"//ObtainMetrics exec\n",
"exch\n",
"dup length dict copy\n",
"dup 2 index/Encoding get\n",
"/Encoding exch put\n",
"1 index/Metrics//knownget exec{\n",
"2 index/Subtype get/TrueType ne{\n",
"1 index/FontMatrix get 0 get\n",
"dup 0 eq{\n",
"pop\n",
"1 index/FontMatrix get 1 get\n",
"dup 0 eq{pop 1}if\n",
"}if\n",
"0.001 div\n",
"//ScaleMetrics exec\n",
"}{\n",
"1 index/sfnts known not{\n",
"1 index/FontMatrix get 0 get\n",
"dup 0 eq{\n",
"pop\n",
"1 index/FontMatrix get 1 get\n",
"dup 0 eq{pop 1}if\n",
"}if\n",
"//ScaleMetrics exec\n",
"}if\n",
"}ifelse\n",
"1 index exch/Metrics exch put\n",
"}if\n",
"1 index/BaseFont get\n",
"exch\n",
"dup/FID undef\n",
"dup/UniqueID undef\n",
"definefont\n",
"dup 3 1 roll\n",
"/Font exch put\n",
"exit\n",
"}if\n",
"dup/Subtype get/Type3 eq{\n",
"//ObtainEncoding exec\n",
"2 copy exch/FontName exch put\n",
"dup/CharProcs get//ResolveDict exec\n",
"dup/FontType 3 put\n",
"dup/BuildChar//BuildChar put\n",
"dup dup/Font exch put\n",
"dup 3 1 roll\n",
"definefont\n",
"2 copy ne{\n",
"2 copy/Font exch put\n",
"}if\n",
"exch pop\n",
"exit\n",
"}if\n",
"dup/Subtype get/Type0 eq{\n",
"}if\n",
"dup/Subtype get/CIDFontType0 eq{\n",
"}if\n",
"dup/Subtype get/CIDFontType2 eq{\n",
"}if\n",
"mark(Unknown font type )2 index/Subtype get//error exec\n",
"}loop\n",
"}ifelse\n",
"exch scalefont setfont\n",
"}bind def\n",
"/ResolveAndSetFont\n",
"{\n",
"//ResolveAndSetFontAux exec\n",
"}bind def\n",
"/.knownget\n",
"{2 copy known{\n",
"get true\n",
"}{\n",
"pop pop false\n",
"}ifelse\n",
"}bind def\n",
"/.min\n",
"{2 copy lt{\n",
"exch\n",
"}if\n",
"pop\n",
"}bind def\n",
"/.max\n",
"{2 copy gt{\n",
"exch\n",
"}if\n",
"pop\n",
"}bind def\n",
"/.dicttomark\n",
"{>>\n",
"}bind def\n",
"/getu16{\n",
"2 copy get 8 bitshift 3 1 roll 1 add get add\n",
"}bind def\n",
"/gets16{\n",
"getu16 16#8000 xor 16#8000 sub\n",
"}bind def\n",
"/getu32{\n",
"2 copy getu16 16 bitshift 3 1 roll 2 add getu16 add\n",
"}bind def\n",
"/gets32{\n",
"2 copy gets16 16 bitshift 3 1 roll 2 add getu16 add\n",
"}bind def\n",
"/cmapformats mark\n",
"0{\n",
"6 256 getinterval{}forall 256 packedarray\n",
"}bind\n",
"2{\n",
"/sHK_sz 2 def\n",
"/sH_sz 8 def\n",
"dup 2 getu16/cmapf2_tblen exch def\n",
"dup 4 getu16/cmapf2_lang exch def\n",
"dup 6 256 sHK_sz mul getinterval/sHKs exch def\n",
"0\n",
"0 1 255{\n",
"sHKs exch\n",
"2 mul getu16\n",
"1 index\n",
"1 index\n",
"lt{exch}if pop\n",
"}for\n",
"/sH_len exch def\n",
"dup 6 256 sHK_sz mul add\n",
"cmapf2_tblen 1 index sub getinterval\n",
"/sH_gIA exch def\n",
"/cmapf2_glyph_array 65535 array def\n",
"/.cmapf2_putGID{\n",
"/cmapf2_ch cmapf2_ch_hi 8 bitshift cmapf2_ch_lo add def\n",
"firstCode cmapf2_ch_lo le\n",
"cmapf2_ch_lo firstCode entryCount add lt\n",
"and{\n",
"sH_offset idRangeOffset add\n",
"cmapf2_ch_lo firstCode sub 2 mul\n",
"add 6 add\n",
"sH_gIA exch getu16\n",
"dup 0 gt{\n",
"idDelta add\n",
"cmapf2_glyph_array exch cmapf2_ch exch put\n",
"}{\n",
"pop\n",
"}ifelse\n",
"}{\n",
"}ifelse\n",
"}def\n",
"16#00 1 16#ff{\n",
"/cmapf2_ch_hi exch def\n",
"sHKs cmapf2_ch_hi sHK_sz mul getu16\n",
"/sH_offset exch def\n",
"sH_gIA sH_offset sH_sz getinterval\n",
"dup 0 getu16/firstCode exch def\n",
"dup 2 getu16/entryCount exch def\n",
"dup 4 gets16/idDelta exch def\n",
"dup 6 getu16/idRangeOffset exch def\n",
"pop\n",
"sH_offset 0 eq{\n",
"/cmapf2_ch_lo cmapf2_ch_hi def\n",
"/cmapf2_ch_hi 0 def\n",
".cmapf2_putGID\n",
"}{\n",
"16#00 1 16#ff{\n",
"/cmapf2_ch_lo exch def\n",
".cmapf2_putGID\n",
"}for\n",
"}ifelse\n",
"}for\n",
"pop\n",
"0 1 cmapf2_glyph_array length 1 sub{\n",
"dup cmapf2_glyph_array exch get\n",
"null eq{cmapf2_glyph_array exch 0 put}{pop}ifelse\n",
"}for\n",
"cmapf2_glyph_array\n",
"}bind\n",
"4{\n",
"/etab exch def\n",
"/nseg2 etab 6 getu16 def\n",
"14/endc etab 2 index nseg2 getinterval def\n",
"2 add\n",
"nseg2 add/startc etab 2 index nseg2 getinterval def\n",
"nseg2 add/iddelta etab 2 index nseg2 getinterval def\n",
"nseg2 add/idroff etab 2 index nseg2 getinterval def\n",
"pop\n",
"/firstcode startc 0 getu16 16#ff00 and dup 16#f000 ne{pop 0}if def\n",
"/lastcode firstcode def\n",
"/striptopbyte false def\n",
"/putglyph{\n",
"glyphs code 3 -1 roll put/code code 1 add def\n",
"}bind def\n",
"/numcodes 0 def/glyphs 0 0 2 nseg2 3 sub{\n",
"/i2 exch def\n",
"/scode startc i2 getu16 def\n",
"/ecode endc i2 getu16 def\n",
"ecode lastcode gt {\n",
"/lastcode ecode def\n",
"}if\n",
"}for pop\n",
"firstcode 16#f000 ge lastcode firstcode sub 255 le and {\n",
"lastcode 255 and\n",
"/striptopbyte true def\n",
"} {\n",
"lastcode\n",
"}ifelse\n",
"1 add\n",
"array def\n",
"glyphs length 1024 ge{\n",
".array1024z 0 1024 glyphs length 1023 sub{glyphs exch 2 index putinterval}for\n",
"glyphs dup length 1024 sub 3 -1 roll\n",
"putinterval\n",
"}{\n",
"0 1 glyphs length 1 sub{glyphs exch 0 put}for\n",
"}ifelse\n",
"/numcodes 0 def/code 0 def\n",
"0 2 nseg2 3 sub{\n",
"/i2 exch def\n",
"/scode startc i2 getu16 def\n",
"/ecode endc i2 getu16 def\n",
"numcodes scode firstcode sub\n",
"exch sub 0 .max dup/code exch code exch add def\n",
"ecode scode sub 1 add add numcodes add/numcodes exch def\n",
"/delta iddelta i2 gets16 def\n",
"TTFDEBUG{\n",
"(scode=)print scode =only\n",
"( ecode=)print ecode =only\n",
"( delta=)print delta =only\n",
"( droff=)print idroff i2 getu16 =\n",
"}if\n",
"idroff i2 getu16 dup 0 eq{\n",
"pop scode delta add 65535 and 1 ecode delta add 65535 and\n",
"striptopbyte {\n",
"/code scode 255 and def\n",
"} {\n",
"/code scode def\n",
"} ifelse\n",
"{putglyph}for\n",
"}{\n",
"/gloff exch 14 nseg2 3 mul add 2 add i2 add add def\n",
"striptopbyte {\n",
"/code scode 255 and def\n",
"} {\n",
"/code scode def\n",
"} ifelse\n",
"0 1 ecode scode sub{\n",
"2 mul gloff add etab exch getu16\n",
"dup 0 ne{delta add 65535 and}if putglyph\n",
"}for\n",
"}ifelse\n",
"}for glyphs/glyphs null def\n",
"}bind\n",
"6{\n",
"dup 6 getu16/firstcode exch def dup 8 getu16/ng exch def\n",
"firstcode ng add array\n",
"0 1 firstcode 1 sub{2 copy 0 put pop}for\n",
"dup firstcode ng getinterval\n",
"0 1 ng 1 sub{\n",
"dup 2 mul 10 add 4 index exch getu16 3 copy put pop pop\n",
"}for pop exch pop\n",
"}bind\n",
".dicttomark readonly def\n",
"/cmaparray{\n",
"dup 0 getu16 cmapformats exch .knownget{\n",
"TTFDEBUG{\n",
"(cmap: format )print 1 index 0 getu16 = flush\n",
"}if exec\n",
"}{\n",
"(Can't handle format )print 0 getu16 = flush\n",
"0 1 255{}for 256 packedarray\n",
"}ifelse\n",
"TTFDEBUG{\n",
"(cmap: length=)print dup length = dup ==\n",
"}if\n",
"}bind def\n",
"/postremap mark\n",
"/Cdot/Cdotaccent\n",
"/Edot/Edotaccent\n",
"/Eoverdot/Edotaccent\n",
"/Gdot/Gdotaccent\n",
"/Ldot/Ldotaccent\n",
"/Zdot/Zdotaccent\n",
"/cdot/cdotaccent\n",
"/edot/edotaccent\n",
"/eoverdot/edotaccent\n",
"/gdot/gdotaccent\n",
"/ldot/ldotaccent\n",
"/zdot/zdotaccent\n",
".dicttomark readonly def\n",
"/get_from_stringarray\n",
"{1 index type/stringtype eq{\n",
"get\n",
"}{\n",
"exch{\n",
"2 copy length ge{\n",
"length sub\n",
"}{\n",
"exch get exit\n",
"}ifelse\n",
"}forall\n",
"}ifelse\n",
"}bind def\n",
"/getinterval_from_stringarray\n",
"{\n",
"2 index type/stringtype eq{\n",
"getinterval\n",
"}{\n",
"string exch 0\n",
"4 3 roll{\n",
"dup length\n",
"dup 4 index lt{\n",
"3 index exch sub\n",
"exch pop 3 1 roll exch pop\n",
"}{\n",
"dup 3 1 roll\n",
"4 index sub\n",
"5 index length 4 index sub\n",
"2 copy gt{exch}if pop\n",
"dup 3 1 roll\n",
"5 index exch getinterval\n",
"5 index 4 index 3 index\n",
"getinterval\n",
"copy pop\n",
"exch pop add exch pop 0 exch\n",
"dup 3 index length ge{exit}if\n",
"}ifelse\n",
"}forall\n",
"pop pop\n",
"}ifelse\n",
"}bind def\n",
"/string_array_size\n",
"{dup type/stringtype eq{\n",
"length\n",
"}{\n",
"0 exch{length add}forall\n",
"}ifelse\n",
"}bind def\n",
"/postformats mark\n",
"16#00010000{\n",
"pop MacGlyphEncoding\n",
"}\n",
"16#00020000{\n",
"dup dup type/arraytype eq{0 get}if length 36 lt{\n",
"TTFDEBUG{(post format 2.0 invalid.)= flush}if\n",
"pop[]\n",
"}{\n",
"/postglyphs exch def\n",
"/post_first postglyphs dup type/arraytype eq{0 get}if def\n",
"post_first 32 getu16/numglyphs exch def\n",
"/glyphnames numglyphs 2 mul 34 add def\n",
"/postpos glyphnames def\n",
"/total_length postglyphs//string_array_size exec def\n",
"numglyphs array 0 1 numglyphs 1 sub{\n",
"postpos total_length ge{\n",
"1 numglyphs 1 sub{1 index exch/.notdef put}for\n",
"exit\n",
"}if\n",
"postglyphs postpos//get_from_stringarray exec\n",
"postglyphs postpos 1 add 2 index//getinterval_from_stringarray exec cvn\n",
"exch postpos add 1 add/postpos exch def\n",
"2 index 3 1 roll\n",
"put\n",
"}for\n",
"/postnames exch def\n",
"numglyphs array 0 1 numglyphs 1 sub{\n",
"dup 2 mul 34 add postglyphs exch 2//getinterval_from_stringarray exec\n",
"dup 0 get 8 bitshift exch 1 get add dup 258 lt{\n",
"MacGlyphEncoding exch get\n",
"}{\n",
"dup 32768 ge{\n",
"pop/.notdef\n",
"}{\n",
"258 sub dup postnames length ge{\n",
"TTFDEBUG{(   *** warning: glyph index past end of 'post' table)= flush}if\n",
"pop\n",
"exit\n",
"}if\n",
"postnames exch get\n",
"postremap 1 index .knownget{exch pop}if\n",
"}ifelse\n",
"}ifelse\n",
"2 index 3 1 roll put\n",
"}for\n",
"}\n",
"ifelse\n",
"}bind\n",
"16#00030000{\n",
"pop[]\n",
"}bind\n",
".dicttomark readonly def\n",
"/first_post_string\n",
"{\n",
"post dup type/arraytype eq{0 get}if\n",
"}bind def\n",
"/.getpost{\n",
"/glyphencoding post null eq{\n",
"TTFDEBUG{(post missing)= flush}if[]\n",
"}{\n",
"postformats first_post_string 0 getu32 .knownget{\n",
"TTFDEBUG{\n",
"(post: format )print\n",
"first_post_string\n",
"dup 0 getu16 =only(,)print 2 getu16 = flush\n",
"}if\n",
"post exch exec\n",
"}{\n",
"TTFDEBUG{(post: unknown format )print post 0 getu32 = flush}if[]\n",
"}ifelse\n",
"}ifelse def\n",
"}bind def\n",
"/TTParser<<\n",
"/Pos 0\n",
"/post null\n",
">>def\n",
"/readu8\n",
"{read not{\n",
"mark(Insufficient data in the stream.)//error exec\n",
"}if\n",
"}bind def\n",
"/readu16\n",
"{dup//readu8 exec 8 bitshift exch//readu8 exec or\n",
"}bind def\n",
"/reads16\n",
"{//readu16 exec 16#8000 xor 16#8000 sub\n",
"}bind def\n",
"/readu32\n",
"{dup//readu16 exec 16 bitshift exch//readu16 exec or\n",
"}bind def\n",
"/reads32\n",
"{dup//reads16 exec 16 bitshift exch//readu16 exec or\n",
"}bind def\n",
"/SkipToPosition\n",
"{dup//TTParser/Pos get\n",
"exch//TTParser exch/Pos exch put\n",
"sub\n",
"//PDFR_DEBUG{\n",
"(Skipping )print dup//=only exec( bytes.)=\n",
"}if\n",
"dup 0 eq{\n",
"pop pop\n",
"}{\n",
"dup 3 1 roll\n",
"()/SubFileDecode filter\n",
"exch\n",
"{1 index//BlockBuffer readstring pop length\n",
"dup 0 eq{pop exch pop exit}if\n",
"sub\n",
"}loop\n",
"0 ne{\n",
"mark(Insufficient data in the stream for SkipToPosition.)//error exec\n",
"}if\n",
"}ifelse\n",
"}bind def\n",
"/TagBuffer 4 string def\n",
"/ParseTTTableDirectory\n",
"{//PDFR_DEBUG{\n",
"(ParseTTTableDirectory beg)=\n",
"}if\n",
"15 dict begin\n",
"dup//readu32 exec 16#00010000 ne{\n",
"mark(Unknown True Type version.)//error exec\n",
"}if\n",
"dup//readu16 exec/NumTables exch def\n",
"dup//readu16 exec/SearchRange exch def\n",
"dup//readu16 exec/EntrySelector exch def\n",
"dup//readu16 exec/RangeShift exch def\n",
"//PDFR_DEBUG{\n",
"(NumTables = )print NumTables =\n",
"}if\n",
"NumTables{\n",
"dup//TagBuffer readstring not{\n",
"mark(Could not read TT tag.)//error exec\n",
"}if\n",
"cvn\n",
"[2 index//readu32 exec pop\n",
"2 index//readu32 exec\n",
"3 index//readu32 exec\n",
"]\n",
"//PDFR_DEBUG{\n",
"2 copy exch//=only exec( )print ==\n",
"}if\n",
"def\n",
"}repeat\n",
"pop\n",
"//TTParser/Pos 12 NumTables 16 mul add put\n",
"currentdict end\n",
"//PDFR_DEBUG{\n",
"(ParseTTTableDirectory end)=\n",
"}if\n",
"}bind def\n",
"/ParseTTcmap\n",
"{//PDFR_DEBUG{\n",
"(ParseTTcmap beg)=\n",
"}if\n",
"/cmap get aload pop\n",
"3 1 roll\n",
"7 dict begin\n",
"//PDFR_DEBUG{\n",
"(Current position = )print//TTParser/Pos get =\n",
"(cmap position = )print dup =\n",
"}if\n",
"1 index exch//SkipToPosition exec\n",
"//TTParser/Pos get/TablePos exch def\n",
"dup//readu16 exec pop\n",
"dup//readu16 exec/NumEncodings exch def\n",
"//PDFR_DEBUG{\n",
"(NumEncodings = )print NumEncodings =\n",
"}if\n",
"null\n",
"NumEncodings{\n",
"1 index//readu32 exec\n",
"2 index//readu32 exec\n",
"3 array dup 3 2 roll 0 exch put\n",
"2 index null ne{\n",
"dup 0 get 3 index 0 get sub\n",
"3 index exch 1 exch put\n",
"}if\n",
"dup 4 3 roll pop 3 1 roll\n",
"def\n",
"}repeat\n",
"dup 0 get\n",
"4 3 roll exch sub\n",
"1 exch put\n",
"//PDFR_DEBUG{\n",
"currentdict{\n",
"exch dup type/integertype eq{\n",
"//PrintHex exec( )print ==\n",
"}{\n",
"pop pop\n",
"}ifelse\n",
"}forall\n",
"}if\n",
"4 NumEncodings 8 mul add/HeaderLength exch def\n",
"//TTParser/Pos//TTParser/Pos get HeaderLength add put\n",
"0\n",
"NumEncodings{\n",
"16#7FFFFFF null\n",
"currentdict{\n",
"1 index type/integertype eq{\n",
"exch pop dup 0 get\n",
"dup 5 index gt{\n",
"dup 4 index lt{\n",
"4 1 roll\n",
"exch pop exch pop\n",
"}{\n",
"pop pop\n",
"}ifelse\n",
"}{\n",
"pop pop\n",
"}ifelse\n",
"}{\n",
"pop pop\n",
"}ifelse\n",
"}forall\n",
"//PDFR_DEBUG{\n",
"(Obtaining subtable for )print dup ==\n",
"}if\n",
"3 2 roll pop\n",
"3 copy pop\n",
"TablePos add//SkipToPosition exec\n",
"3 copy exch pop 1 get\n",
"//TTParser/Pos//TTParser/Pos get 3 index add put\n",
"string\n",
"readstring not{\n",
"mark(Can't read a cmap subtable.)//error exec\n",
"}if\n",
"2 exch put\n",
"}repeat\n",
"pop pop\n",
"currentdict end\n",
"//PDFR_DEBUG{\n",
"(ParseTTcmap end)=\n",
"}if\n",
"}bind def\n",
"/GetTTEncoding\n",
"{//PDFR_DEBUG{\n",
"(GetTTEncoding beg)=\n",
"}if\n",
"get\n",
"exch pop\n",
"2 get\n",
"10 dict begin\n",
"/TTFDEBUG//PDFR_DEBUG def\n",
"//cmaparray exec\n",
"end\n",
"//PDFR_DEBUG{\n",
"(GetTTEncoding end)=\n",
"dup ==\n",
"}if\n",
"}bind def\n",
"/InverseEncoding\n",
"{\n",
"256 dict begin\n",
"dup length 1 sub -1 0{\n",
"2 copy get\n",
"exch\n",
"1 index currentdict exch//knownget exec{\n",
"dup type/arraytype eq{\n",
"aload length 1 add array astore\n",
"}{\n",
"2 array astore\n",
"}ifelse\n",
"}if\n",
"def\n",
"}for\n",
"pop\n",
"currentdict end\n",
"}bind def\n",
"/GetMacRomanEncodingInverse\n",
"{//PDFReader/MacRomanEncodingInverse get\n",
"dup null eq{\n",
"pop\n",
"MacRomanEncoding//InverseEncoding exec\n",
"dup//PDFReader exch/MacRomanEncodingInverse exch put\n",
"}if\n",
"}bind def\n",
"/PutCharStringSingle\n",
"{\n",
"dup 3 index length lt{\n",
"2 index exch get\n",
"dup 0 ne{\n",
"def\n",
"}{\n",
"pop pop\n",
"}ifelse\n",
"}{\n",
"pop pop\n",
"}ifelse\n",
"}bind def\n",
"/PutCharString\n",
"{1 index type/nametype ne{\n",
"mark(Bad charstring name)//error exec\n",
"}if\n",
"dup type/arraytype eq{\n",
"{\n",
"3 copy//PutCharStringSingle exec\n",
"pop pop\n",
"}forall\n",
"pop\n",
"}{\n",
"//PutCharStringSingle exec\n",
"}ifelse\n",
"}bind def\n",
"/ComposeCharStrings\n",
"{\n",
"//PDFR_DEBUG{\n",
"(ComposeCharStrings beg)=\n",
"}if\n",
"1 index length 1 add dict begin\n",
"/.notdef 0 def\n",
"exch\n",
"//TTParser/post get\n",
"dup null ne{\n",
"exch\n",
"1 index length 1 sub -1 0{\n",
"dup 3 index exch get exch\n",
"dup 0 eq 2 index/.notdef eq or{\n",
"pop pop\n",
"}{\n",
"def\n",
"}ifelse\n",
"}for\n",
"}if\n",
"exch pop exch\n",
"{\n",
"//PutCharString exec\n",
"}forall\n",
"pop\n",
"currentdict end\n",
"//PDFR_DEBUG{\n",
"(ComposeCharStrings end)=\n",
"}if\n",
"}bind def\n",
"/ParseTTpost\n",
"{\n",
"//PDFR_DEBUG{\n",
"(ParseTTpost beg)=\n",
"}if\n",
"/post get aload pop\n",
"3 1 roll\n",
"//PDFR_DEBUG{\n",
"(Current position = )print//TTParser/Pos get =\n",
"(post position = )print dup =\n",
"}if\n",
"1 index exch//SkipToPosition exec\n",
"//TTParser/Pos//TTParser/Pos get 4 index add put\n",
"exch dup 65535 le{\n",
"string\n",
"readstring not{\n",
"mark(Insufficient data in the stream for ParseTTpost.)//error exec\n",
"}if\n",
"}{\n",
"[3 1 roll\n",
"dup 16384 div floor cvi\n",
"exch 1 index 16384 mul\n",
"sub exch\n",
"1 sub 0 1 3 -1 roll\n",
"{\n",
"1 add index\n",
"16384 string readstring not{\n",
"mark(Insufficient data in the stream for ParseTTpost.)//error exec\n",
"}if\n",
"}for\n",
"counttomark -2 roll\n",
"string readstring not{\n",
"mark(Insufficient data in the stream for ParseTTpost.)//error exec\n",
"}if\n",
"]\n",
"}ifelse\n",
"1 dict begin\n",
"/post exch def\n",
"//.getpost exec\n",
"//TTParser/post glyphencoding put\n",
"//PDFR_DEBUG{\n",
"(ParseTTpost end)=\n",
"glyphencoding ==\n",
"}if\n",
"end\n",
"}bind def\n",
"/MakeTTCharStrings\n",
"{//MakeStreamReader exec\n",
"dup dup//ParseTTTableDirectory exec\n",
"//TTParser/post null put\n",
"dup/post//knownget exec{\n",
"0 get\n",
"1 index/cmap get 0 get\n",
"lt{\n",
"2 copy//ParseTTpost exec\n",
"//ParseTTcmap exec\n",
"}{\n",
"2 copy//ParseTTcmap exec\n",
"3 1 roll\n",
"//ParseTTpost exec\n",
"}ifelse\n",
"}{\n",
"//ParseTTcmap exec\n",
"}ifelse\n",
"{\n",
"dup 16#00030001 known{\n",
"//PDFR_DEBUG{\n",
"(Using the TT cmap encoding for Windows Unicode.)=\n",
"}if\n",
"16#00030001//GetTTEncoding exec\n",
"AdobeGlyphList//ComposeCharStrings exec\n",
"exit\n",
"}if\n",
"dup 16#00010000 known{\n",
"//PDFR_DEBUG{\n",
"(Using the TT cmap encoding for Macintosh Roman.)=\n",
"}if\n",
"16#00010000//GetTTEncoding exec\n",
"PDFEncoding dup null eq{\n",
"pop//GetMacRomanEncodingInverse exec\n",
"}{\n",
"//InverseEncoding exec\n",
"}ifelse\n",
"//ComposeCharStrings exec\n",
"exit\n",
"}if\n",
"dup 16#00030000 known{\n",
"//PDFR_DEBUG{\n",
"(Using the TT cmap encoding 3.0 - not sure why Ghostscript writes it since old versions.)=\n",
"}if\n",
"16#00030000//GetTTEncoding exec\n",
"PDFEncoding dup null eq{\n",
"pop//GetMacRomanEncodingInverse exec\n",
"}{\n",
"//InverseEncoding exec\n",
"}ifelse\n",
"//ComposeCharStrings exec\n",
"exit\n",
"}if\n",
"mark(True Type cmap has no useful encodings.)//error exec\n",
"}loop\n",
"//PDFR_DEBUG{\n",
"(CharStrings <<)=\n",
"dup{\n",
"exch\n",
"dup type/nametype eq{\n",
"//=only exec\n",
"}{\n",
"==\n",
"}ifelse\n",
"( )print ==\n",
"}forall\n",
"(>>)=\n",
"}if\n",
"}bind def\n",
"/ScaleVal\n",
"{\n",
"aload pop\n",
"1 index sub\n",
"3 2 roll mul add\n",
"}bind def\n",
"/ScaleArg\n",
"{\n",
"aload pop\n",
"1 index sub\n",
"3 1 roll\n",
"sub exch div\n",
"}bind def\n",
"/ScaleArgN\n",
"{\n",
"dup length 2 sub -2 0{\n",
"2\n",
"2 index 3 1 roll getinterval\n",
"3 2 roll\n",
"exch//ScaleArg exec\n",
"1 index length 2 idiv 1 add 1 roll\n",
"}for\n",
"pop\n",
"}bind def\n",
"/ComputeFunction_10\n",
"{\n",
"//PDFR_DEBUG{\n",
"(ComputeFunction_10 beg )print 1 index//=only exec( stack=)print count =\n",
"}if\n",
"exch\n",
"dup 1 eq{\n",
"pop dup length 1 sub get\n",
"}{\n",
"1 index length 1 sub mul\n",
"dup dup floor sub\n",
"dup 0 eq{\n",
"pop cvi get\n",
"}{\n",
"3 1 roll floor cvi\n",
"2 getinterval\n",
"aload pop\n",
"2 index mul 3 2 roll 1 exch sub 3 2 roll mul add\n",
"}ifelse\n",
"}ifelse\n",
"//PDFR_DEBUG{\n",
"(ComputeFunction_10 end )print dup//=only exec( stack=)print count =\n",
"}if\n",
"}bind def\n",
"/ComputeFunction_n0\n",
"{\n",
"//PDFR_DEBUG{\n",
"(ComputeFunction_n0 beg N=)print dup//=only exec( stack=)print count =\n",
"}if\n",
"dup 0 eq{\n",
"pop\n",
"}{\n",
"dup 2 add -1 roll\n",
"dup 3 index length 1 sub ge{\n",
"pop 1 sub\n",
"exch dup length 1 sub get exch\n",
"//PDFReader/ComputeFunction_n0 get exec\n",
"}{\n",
"dup floor cvi dup\n",
"4 index exch get\n",
"3 index dup\n",
"5 add copy\n",
"6 2 roll\n",
"pop pop pop pop\n",
"1 sub\n",
"//PDFReader/ComputeFunction_n0 get exec\n",
"3 2 roll pop\n",
"exch\n",
"4 3 roll exch\n",
"4 add 2 roll 1 add\n",
"3 2 roll exch get\n",
"exch 1 sub\n",
"//PDFReader/ComputeFunction_n0 get exec\n",
"1 index mul\n",
"3 1 roll\n",
"1 exch sub mul add\n",
"}ifelse\n",
"}ifelse\n",
"//PDFR_DEBUG{\n",
"(ComputeFunction_n0 end )print dup//=only exec( stack=)print count =\n",
"}if\n",
"}bind def\n",
"/FunctionToProc_x01\n",
"{\n",
"dup/Domain get exch\n",
"dup/Data get 0 get exch\n",
"/Size get length\n",
"[4 1 roll\n",
"//PDFR_DEBUG{\n",
"{(function beg, stack =)print count//=only exec(\\n)print}/exec load\n",
"5 2 roll\n",
"}if\n",
"dup 1 gt{\n",
"{mark exch\n",
"3 add 2 roll\n",
"//ScaleArgN exec\n",
"counttomark dup\n",
"3 add -2 roll\n",
"pop exch\n",
"//ComputeFunction_n0 exec\n",
"}/exec load\n",
"}{\n",
"pop\n",
"3 1/roll load//ScaleArg/exec load\n",
"/exch load\n",
"//ComputeFunction_10/exec load\n",
"}ifelse\n",
"//PDFR_DEBUG{\n",
"(function end, stack =)/print load/count load//=only/exec load(\\n)/print load\n",
"}if\n",
"]cvx\n",
"//PDFR_DEBUG{\n",
"(Made a procedure for the 1-result function :)=\n",
"dup ==\n",
"}if\n",
"}bind def\n",
"/FunctionProcDebugBeg\n",
"{(FunctionProcDebugBeg )print count =\n",
"}bind def\n",
"/FunctionProcDebugEnd\n",
"{(FunctionProcDebugEnd )print count =\n",
"}bind def\n",
"/FunctionToProc_x0n\n",
"{\n",
"PDFR_DEBUG{\n",
"(FunctionToProc_x0n beg m=)print dup =\n",
"}if\n",
"1 index/Size get length exch\n",
"dup 7 mul 2 add array\n",
"PDFR_DEBUG{\n",
"dup 0//FunctionProcDebugBeg put\n",
"}{\n",
"dup 0//DoNothing put\n",
"}ifelse\n",
"dup 1/exec load put\n",
"dup 2 5 index/Domain get put\n",
"2 index 1 eq{\n",
"dup 3//ScaleArg put\n",
"}{\n",
"dup 3//ScaleArgN put\n",
"}ifelse\n",
"dup 4/exec load put\n",
"1 index 1 sub 0 exch 1 exch{\n",
"dup 7 mul 5 add\n",
"1 index 4 index 1 sub ne{\n",
"dup 3 index exch 6 index put 1 add\n",
"dup 3 index exch/copy load put 1 add\n",
"}if\n",
"[\n",
"6 index/Data get 3 index get\n",
"6 index 1 eq{\n",
"//ComputeFunction_10/exec load\n",
"}{\n",
"6 index\n",
"//ComputeFunction_n0/exec load\n",
"}ifelse\n",
"]cvx\n",
"3 index exch 2 index exch put 1 add\n",
"2 index 1 index/exec load put 1 add\n",
"1 index 4 index 1 sub ne{\n",
"2 index 1 index 6 index 1 add put 1 add\n",
"2 index 1 index 1 put 1 add\n",
"2 index 1 index/roll load put\n",
"}if\n",
"pop pop\n",
"}for\n",
"PDFR_DEBUG{\n",
"dup dup length 2 sub//FunctionProcDebugEnd put\n",
"}{\n",
"dup dup length 2 sub//DoNothing put\n",
"}ifelse\n",
"dup dup length 1 sub/exec load put\n",
"cvx exch pop exch pop exch pop\n",
"//PDFR_DEBUG{\n",
"(Made a procedure for the n-argument function :)=\n",
"dup ==\n",
"}if\n",
"PDFR_DEBUG{\n",
"(FunctionToProc_x0n end)=\n",
"}if\n",
"}bind def\n",
"/MakeTableRec\n",
"{\n",
"0\n",
"exec\n",
"}bind def\n",
"/MakeTable\n",
"{//PDFR_DEBUG{\n",
"(MakeTable beg )print count =\n",
"}if\n",
"1 index/Size get exch\n",
"1 sub dup\n",
"3 1 roll\n",
"get\n",
"array\n",
"1 index 0 eq{\n",
"exch pop exch pop\n",
"}{\n",
"dup length 1 sub -1 0{\n",
"3 index 3 index//MakeTableRec exec\n",
"2 index 3 1 roll put\n",
"}for\n",
"exch pop exch pop\n",
"}ifelse\n",
"//PDFR_DEBUG{\n",
"(MakeTable end )print count =\n",
"}if\n",
"}bind def\n",
"//MakeTableRec 0//MakeTable put\n",
"/StoreSample\n",
"{\n",
"1 sub\n",
"dup 0 eq{\n",
"pop\n",
"}{\n",
"-1 1{\n",
"I exch get get\n",
"}for\n",
"}ifelse\n",
"I 0 get 3 2 roll put\n",
"}bind def\n",
"/ReadSample32\n",
"{\n",
"4{\n",
"File read not{\n",
"mark(Insufficient data for function.)//error exec\n",
"}if\n",
"}repeat\n",
"pop\n",
"3 1 roll exch\n",
"256 mul add 256 mul add\n",
"//1_24_bitshift_1_sub div\n",
"}bind def\n",
"/ReadSample\n",
"{\n",
"Buffer BitsLeft BitsPerSample\n",
"{2 copy ge{\n",
"exit\n",
"}if\n",
"3 1 roll\n",
"8 add 3 1 roll\n",
"256 mul File read not{\n",
"mark(Insufficient data for function.)//error exec\n",
"}if\n",
"add\n",
"3 1 roll\n",
"}loop\n",
"sub dup\n",
"2 index exch\n",
"neg bitshift\n",
"2 copy exch bitshift\n",
"4 3 roll exch sub\n",
"/Buffer exch def\n",
"exch/BitsLeft exch def\n",
"Div div\n",
"}bind def\n",
"/ReadSamplesRec\n",
"{0\n",
"exec\n",
"}bind def\n",
"/ReadSamples\n",
"{\n",
"//PDFR_DEBUG{\n",
"(ReadSamples beg )print count =\n",
"}if\n",
"dup 1 eq{\n",
"pop\n",
"0 1 Size 0 get 1 sub{\n",
"I exch 0 exch put\n",
"0 1 M 1 sub{\n",
"dup Range exch 2 mul 2 getinterval\n",
"//PDFR_DEBUG{\n",
"(Will read a sample ... )print\n",
"}if\n",
"BitsPerSample 32 eq{//ReadSample32}{//ReadSample}ifelse\n",
"exec exch//ScaleVal exec\n",
"//PDFR_DEBUG{\n",
"(value=)print dup =\n",
"}if\n",
"exch Table exch get\n",
"Size length//StoreSample exec\n",
"}for\n",
"}for\n",
"}{\n",
"1 sub\n",
"dup Size exch get 0 exch 1 exch 1 sub{\n",
"I exch 2 index exch put\n",
"dup//ReadSamplesRec exec\n",
"}for\n",
"pop\n",
"}ifelse\n",
"//PDFR_DEBUG{\n",
"(ReadSamples end )print count =\n",
"}if\n",
"}bind def\n",
"//ReadSamplesRec 0//ReadSamples put\n",
"/StreamToArray\n",
"{//PDFR_DEBUG{\n",
"(StreamToArray beg )print count =\n",
"}if\n",
"userdict/FuncDataReader get begin\n",
"dup/BitsPerSample get/BitsPerSample exch def\n",
"dup/Size get length/N exch def\n",
"dup/Range get length 2 idiv/M exch def\n",
"1 BitsPerSample bitshift 1 sub/Div exch def\n",
"/BitsLeft 0 def\n",
"/Buffer 0 def\n",
"dup/Size get/Size exch def\n",
"dup/Range get/Range exch def\n",
"/File 1 index//MakeStreamReader exec def\n",
"/I[N{0}repeat]def\n",
"M array\n",
"dup length 1 sub -1 0{\n",
"2 index N//MakeTable exec\n",
"2 index 3 1 roll put\n",
"}for\n",
"/Table exch def\n",
"N//ReadSamples exec\n",
"PDFR_DEBUG{\n",
"(Table = )print Table ==\n",
"}if\n",
"/Data Table put\n",
"end\n",
"//PDFR_DEBUG{\n",
"(StreamToArray end )print count =\n",
"}if\n",
"}bind def\n",
"/FunctionToProc10\n",
"{\n",
"PDFR_DEBUG{\n",
"(FunctionToProc10 beg, Range = )print dup/Range get ==\n",
"}if\n",
"dup/Order//knownget exec{\n",
"1 ne{\n",
"(Underimplemented function Type 0 Order 3.)=\n",
"}if\n",
"}if\n",
"dup//StreamToArray exec\n",
"dup/Range get length dup 2 eq{\n",
"pop//FunctionToProc_x01 exec\n",
"}{\n",
"2 idiv//FunctionToProc_x0n exec\n",
"}ifelse\n",
"PDFR_DEBUG{\n",
"(FunctionToProc10 end)=\n",
"}if\n",
"}bind def\n",
"/FunctionToProc12\n",
"{begin\n",
"currentdict/C0//knownget exec{length 1 eq}{true}ifelse{\n",
"N\n",
"currentdict/C0//knownget exec{\n",
"0 get\n",
"}{\n",
"0\n",
"}ifelse\n",
"currentdict/C1//knownget exec{\n",
"0 get\n",
"}{\n",
"1\n",
"}ifelse\n",
"1 index sub\n",
"[4 1 roll\n",
"{\n",
"4 2 roll\n",
"exp mul add\n",
"}aload pop\n",
"]cvx\n",
"}{\n",
"[\n",
"0 1 C0 length 1 sub{\n",
"N\n",
"C0 2 index get\n",
"C1 3 index get\n",
"4 3 roll pop\n",
"1 index sub\n",
"[/dup load\n",
"5 2 roll\n",
"{\n",
"4 2 roll\n",
"exp mul add\n",
"exch\n",
"}aload pop\n",
"]cvx\n",
"/exec load\n",
"}for\n",
"/pop load\n",
"]cvx\n",
"}ifelse\n",
"end\n",
"//PDFR_DEBUG{\n",
"(FunctionType2Proc : )print dup ==\n",
"}if\n",
"}bind def\n",
"/FunctionToProc14\n",
"{//MakeStreamReader exec cvx exec\n",
"//PDFR_DEBUG{\n",
"(FunctionType4Proc : )print dup ==\n",
"}if\n",
"}bind def\n",
"/FunctionToProc1\n",
"{\n",
"dup/FunctionType get\n",
"{dup 0 eq{\n",
"pop//FunctionToProc10 exec exit\n",
"}if\n",
"dup 2 eq{\n",
"pop//FunctionToProc12 exec exit\n",
"}if\n",
"dup 4 eq{\n",
"pop//FunctionToProc14 exec exit\n",
"}if\n",
"mark exch(Function type )exch( isn't implemented yet.)//error exec\n",
"}loop\n",
"}bind def\n",
"/FunctionToProc20\n",
"{\n",
"PDFR_DEBUG{\n",
"(FunctionToProc20, Range = )print dup/Range get ==\n",
"}if\n",
"dup/Order//knownget exec{\n",
"1 ne{\n",
"(Underimplemented function Type 0 Order 3.)=\n",
"}if\n",
"}if\n",
"dup//StreamToArray exec\n",
"dup/Range get length dup 2 eq{\n",
"pop//FunctionToProc_x01 exec\n",
"}{\n",
"2 idiv//FunctionToProc_x0n exec\n",
"}ifelse\n",
"}bind def\n",
"/FunctionToProc\n",
"{//PDFR_DEBUG{\n",
"(FunctionToProc beg )print count =\n",
"}if\n",
"dup type/dicttype eq{\n",
"dup/Domain get length 2 idiv\n",
"{\n",
"dup 1 eq{\n",
"pop//FunctionToProc1 exec exit\n",
"}if\n",
"dup 2 eq{\n",
"pop//FunctionToProc20 exec exit\n",
"}if\n",
"mark(Functions with many arguments aren't implemented yet.)//error exec\n",
"}loop\n",
"}{\n",
"//PDFR_DEBUG{(Not a function dict, assume already a procedure.)print}if\n",
"}ifelse\n",
"//PDFR_DEBUG{\n",
"(FunctionToProc end )print count =\n",
"}if\n",
"}bind def\n",
"/spotfunctions mark\n",
"/Round{\n",
"abs exch abs 2 copy add 1 le{\n",
"dup mul exch dup mul add 1 exch sub\n",
"}{\n",
"1 sub dup mul exch 1 sub dup mul add 1 sub\n",
"}ifelse\n",
"}\n",
"/Diamond{\n",
"abs exch abs 2 copy add .75 le{\n",
"dup mul exch dup mul add 1 exch sub\n",
"}{\n",
"2 copy add 1.23 le{\n",
".85 mul add 1 exch sub\n",
"}{\n",
"1 sub dup mul exch 1 sub dup mul add 1 sub\n",
"}ifelse\n",
"}ifelse\n",
"}\n",
"/Ellipse{\n",
"abs exch abs 2 copy 3 mul exch 4 mul add 3 sub dup 0 lt{\n",
"pop dup mul exch .75 div dup mul add 4 div 1 exch sub\n",
"}{\n",
"dup 1 gt{\n",
"pop 1 exch sub dup mul exch 1 exch sub\n",
".75 div dup mul add 4 div 1 sub\n",
"}{\n",
".5 exch sub exch pop exch pop\n",
"}ifelse\n",
"}ifelse\n",
"}\n",
"/EllipseA{dup mul .9 mul exch dup mul add 1 exch sub}\n",
"/InvertedEllipseA{dup mul .9 mul exch dup mul add 1 sub}\n",
"/EllipseB{dup 5 mul 8 div mul exch dup mul exch add sqrt 1 exch sub}\n",
"/EllipseC{dup mul .9 mul exch dup mul add 1 exch sub}\n",
"/InvertedEllipseC{dup mul .9 mul exch dup mul add 1 sub}\n",
"/Line{exch pop abs neg}\n",
"/LineX{pop}\n",
"/LineY{exch pop}\n",
"/Square{abs exch abs 2 copy lt{exch}if pop neg}\n",
"/Cross{abs exch abs 2 copy gt{exch}if pop neg}\n",
"/Rhomboid{abs exch abs 0.9 mul add 2 div}\n",
"/DoubleDot{2{360 mul sin 2 div exch}repeat add}\n",
"/InvertedDoubleDot{2{360 mul sin 2 div exch}repeat add neg}\n",
"/SimpleDot{dup mul exch dup mul add 1 exch sub}\n",
"/InvertedSimpleDot{dup mul exch dup mul add 1 sub}\n",
"/CosineDot{180 mul cos exch 180 mul cos add 2 div}\n",
"/Double{exch 2 div exch 2{360 mul sin 2 div exch}repeat add}\n",
"/InvertedDouble{\n",
"exch 2 div exch 2{360 mul sin 2 div exch}repeat add neg\n",
"}\n",
".dicttomark readonly def\n",
"/CheckColorSpace\n",
"{\n",
"dup type/arraytype ne{\n",
"mark(Resource )3 index( must be an array.)//error exec\n",
"}if\n",
"}bind def\n",
"/SubstitutePDFColorSpaceRec\n",
"{0\n",
"exec\n",
"}bind def\n",
"/SubstitutePDFColorSpace\n",
"{\n",
"{\n",
"dup 0 get/Pattern eq{\n",
"dup length 1 gt{\n",
"dup dup 1//CheckColorSpace//ResolveA exec\n",
"dup type/nametype ne{\n",
"//SubstitutePDFColorSpaceRec exec\n",
"}if\n",
"1 exch put\n",
"}if\n",
"exit\n",
"}if\n",
"dup 0 get/Indexed eq{\n",
"exit\n",
"}if\n",
"dup 0 get/Separation eq{\n",
"dup dup 2//CheckColorSpace//ResolveA exec\n",
"dup type/nametype ne{\n",
"//SubstitutePDFColorSpaceRec exec\n",
"}if\n",
"2 exch put\n",
"exit\n",
"}if\n",
"dup 0 get/CalGray eq{\n",
"1 get\n",
"dup/Gamma//knownget exec{\n",
"[exch[exch/exp load]cvx dup dup]\n",
"1 index exch/DecodeLMN exch put\n",
"}if\n",
"[exch/CIEBasedA exch]\n",
"exit\n",
"}if\n",
"dup 0 get/CalRGB eq{\n",
"1 get\n",
"dup/Matrix//knownget exec{\n",
"1 index exch/MatrixLMN exch put\n",
"}if\n",
"dup/Gamma//knownget exec{\n",
"aload pop\n",
"[exch/exp load]cvx\n",
"3 1 roll\n",
"[exch/exp load]cvx\n",
"3 1 roll\n",
"[exch/exp load]cvx\n",
"3 1 roll\n",
"3 array astore\n",
"1 index exch/DecodeLMN exch put\n",
"}if\n",
"[exch/CIEBasedABC exch]\n",
"exit\n",
"}if\n",
"dup 0 get/Lab eq{\n",
"1 get\n",
"begin\n",
"currentdict/Range//knownget exec{aload pop}{-100 100 -100 100}ifelse\n",
"0 100 6 2 roll 6 array astore\n",
"/RangeABC exch def\n",
"/DecodeABC[{16 add 116 div}bind{500 div}bind{200 div}bind]def\n",
"/MatrixABC[1 1 1 1 0 0 0 0 -1]def\n",
"{dup 6 29 div ge{dup dup mul mul}{4 29 div sub 108 841 div mul}ifelse}\n",
"/DecodeLMN[\n",
"[3 index aload pop WhitePoint 0 get/mul load]cvx\n",
"[4 index aload pop WhitePoint 1 get/mul load]cvx\n",
"[5 index aload pop WhitePoint 2 get/mul load]cvx\n",
"]def pop\n",
"//PDFR_DEBUG{\n",
"(Constructed from Lab <<)=\n",
"currentdict{exch = ==}forall\n",
"(>>)=\n",
"}if\n",
"[/CIEBasedABC currentdict]\n",
"end\n",
"exit\n",
"pop\n",
"}if\n",
"dup 0 get/CIEBasedA eq{exit}if\n",
"dup 0 get/CIEBasedABC eq{exit}if\n",
"mark exch(Unimplemented color space )exch//error exec\n",
"}loop\n",
"}bind def\n",
"//SubstitutePDFColorSpaceRec 0//SubstitutePDFColorSpace put\n",
"/ResolveArrayElement\n",
"{2 copy get\n",
"dup type dup/arraytype eq exch\n",
"/packedarraytype eq or{\n",
"dup length 1 ge exch xcheck and{\n",
"2 copy get\n",
"dup 0 get type/integertype eq\n",
"1 index 1 get type dup/arraytype\n",
"eq exch\n",
"/packedarraytype eq or\n",
"and{\n",
"exec\n",
"2 index 4 1 roll put\n",
"}{\n",
"pop pop\n",
"}ifelse\n",
"}{\n",
"pop\n",
"}ifelse\n",
"}{\n",
"pop pop\n",
"}ifelse\n",
"}bind def\n",
"/ResolveColorSpaceArrayRec\n",
"{0\n",
"exec\n",
"}bind def\n",
"/SetColorSpaceSafe\n",
"{\n",
"PDFR_DEBUG{\n",
"(SetColorSpaceSafe beg)=\n",
"}if\n",
"currentcolorspace dup type/arraytype eq{\n",
"1 index type/arraytype eq{\n",
"dup length 2 index length eq{\n",
"false exch\n",
"dup length 0 exch 1 exch 1 sub{\n",
"dup\n",
"4 index exch get exch\n",
"2 index exch get\n",
"ne{\n",
"exch pop true exch exit\n",
"}if\n",
"}for\n",
"pop\n",
"{\n",
"setcolorspace\n",
"}{\n",
"pop\n",
"}ifelse\n",
"}{\n",
"pop setcolorspace\n",
"}ifelse\n",
"}{\n",
"pop setcolorspace\n",
"}ifelse\n",
"}{\n",
"pop setcolorspace\n",
"}ifelse\n",
"PDFR_DEBUG{\n",
"(SetColorSpaceSafe end)=\n",
"}if\n",
"}bind def\n",
"/ResolveColorSpaceArray\n",
"{\n",
"//PDFR_DEBUG{\n",
"(ResolveColorSpaceArray beg )print dup ==\n",
"}if\n",
"dup 0 get/Indexed eq{\n",
"1//ResolveArrayElement exec\n",
"dup dup 1 get\n",
"dup type/arraytype eq{\n",
"//SubstitutePDFColorSpace exec\n",
"//ResolveColorSpaceArrayRec exec\n",
"1 exch put\n",
"}{\n",
"pop pop\n",
"}ifelse\n",
"}if\n",
"dup 0 get/Separation eq{\n",
"3//ResolveArrayElement exec\n",
"dup 3 get//FunctionToProc exec\n",
"2 copy 3 exch put\n",
"pop\n",
"}if\n",
"dup 0 get/Pattern eq{\n",
"dup length 1 gt{dup\n",
"1 get dup type/arraytype eq{\n",
"ResolveColorSpaceArray\n",
"1 index 1 3 -1 roll put\n",
"}{pop}ifelse}if\n",
"}if\n",
"PDFR_DEBUG{\n",
"(Construcrted color space :)=\n",
"dup ==\n",
"}if\n",
"//PDFR_DEBUG{\n",
"(ResolveColorSpaceArray end )print dup ==\n",
"}if\n",
"}bind def\n",
"//ResolveColorSpaceArrayRec 0//ResolveColorSpaceArray put\n",
"/ResolveColorSpace\n",
"{\n",
"//PDFR_DEBUG{\n",
"(ResolveColorSpace beg )print dup =\n",
"}if\n",
"dup//SimpleColorSpaceNames exch known not{\n",
"dup//PDFColorSpaces exch//knownget exec{\n",
"exch pop\n",
"//PDFR_DEBUG{\n",
"(ResolveColorSpace known )=\n",
"}if\n",
"}{\n",
"dup\n",
"//PDFReader/CurrentObject get/Context get/Resources get\n",
"/ColorSpace//DoNothing//ResolveD exec\n",
"exch//CheckColorSpace//ResolveD exec\n",
"dup type/arraytype eq{\n",
"//SubstitutePDFColorSpace exec\n",
"//ResolveColorSpaceArray exec\n",
"dup//PDFColorSpaces 4 2 roll put\n",
"}if\n",
"}ifelse\n",
"}if\n",
"//PDFR_DEBUG{\n",
"(ResolveColorSpace end )print dup ==\n",
"}if\n",
"}bind def\n",
"/CheckPattern\n",
"{\n",
"dup/PatternType//knownget exec{\n",
"dup 1 ne{\n",
"mark(Resource )4 index( is a shading, which can't be handled at level 2. )//error exec\n",
"}if\n",
"pop\n",
"}if\n",
"dup/Type knownget{\n",
"/Pattern ne{\n",
"mark(Resource )4 index( must have /Type/Pattern .)//error exec\n",
"}if\n",
"}if\n",
"}bind def\n",
"/PaintProc\n",
"{/Context get\n",
"//RunDelayedStream exec\n",
"}bind def\n",
"/ResolvePattern\n",
"{\n",
"dup\n",
"userdict/PDFR_Patterns get\n",
"exch//knownget exec{\n",
"exch pop\n",
"}{\n",
"dup\n",
"//PDFReader/CurrentObject get/Context get/Resources get\n",
"/Pattern//DoNothing//ResolveD exec\n",
"exch//CheckPattern//ResolveD exec\n",
"dup dup/Context exch put\n",
"dup/Resources//DoNothing//ResolveD exec pop\n",
"dup/PaintProc//PaintProc put\n",
"gsave userdict/PDFR_InitialGS get setgstate\n",
"currentglobal exch false setglobal\n",
"dup/Matrix get\n",
"makepattern\n",
"exch setglobal\n",
"grestore\n",
"dup userdict/PDFR_Patterns get\n",
"4 2 roll\n",
"put\n",
"}ifelse\n",
"}bind def\n",
"/SetColor\n",
"{//PDFR_DEBUG{\n",
"(SetColor beg)=\n",
"}if\n",
"currentcolorspace dup type/nametype eq{\n",
"pop setcolor\n",
"}{\n",
"0 get/Pattern eq{\n",
"//ResolvePattern exec setpattern\n",
"}{\n",
"setcolor\n",
"}ifelse\n",
"}ifelse\n",
"//PDFR_DEBUG{\n",
"(SetColor end)=\n",
"}if\n",
"}bind def\n",
"/ImageKeys 15 dict begin\n",
"/BPC/BitsPerComponent def\n",
"/CS/ColorSpace def\n",
"/D/Decode def\n",
"/DP/DecodeParms def\n",
"/F/Filter def\n",
"/H/Height def\n",
"/IM/ImageMask def\n",
"/I/Interpolate def\n",
"/W/Width def\n",
"currentdict end readonly def\n",
"/ImageValues 15 dict begin\n",
"/G/DeviceGray def\n",
"/RGB/DeviceRGB def\n",
"/CMYK/DeviceCMYK def\n",
"/I/Indexed def\n",
"/AHx/ASCIIHexDecode def\n",
"/A85/ASCII85Decode def\n",
"/LZW/LZWDecode def\n",
"/Fl/FlateDecode def\n",
"/RL/RunLengthDecode def\n",
"/CCF/CCITTFaxDecode def\n",
"/DCT/DCTDecode def\n",
"currentdict end readonly def\n",
"/GetColorSpaceRange\n",
"{2 index/ColorSpace get\n",
"dup type/arraytype eq{\n",
"1 get\n",
"}if\n",
"exch//knownget exec{\n",
"exch pop\n",
"}if\n",
"}bind def\n",
"/DecodeArrays 15 dict begin\n",
"/DeviceGray{[0 1]}def\n",
"/DeviceRGB{[0 1 0 1 0 1]}def\n",
"/DeviceCMYK{[0 1 0 1 0 1 0 1]}def\n",
"/Indexed{\n",
"dup/BitsPerComponent get 1 exch bitshift 1 sub[exch 0 exch]\n",
"}def\n",
"/Separation{[0 1]}def\n",
"/CIEBasedA{[0 1]/RangeA//GetColorSpaceRange exec}def\n",
"/CIEBasedABC{[0 1 0 1 0 1]/RangeABC//GetColorSpaceRange exec}def\n",
"currentdict end readonly def\n",
"/Substitute\n",
"{1 index//knownget exec{\n",
"exch pop\n",
"}if\n",
"}bind def\n",
"/DebugImagePrinting\n",
"{\n",
"//PDFR_DEBUG{\n",
"(Image :)=\n",
"dup{exch//=only exec( )print ==\n",
"}forall\n",
"}if\n",
"}bind def\n",
"/CompleteImage\n",
"{\n",
"dup/ColorSpace known{\n",
"dup/ColorSpace//CheckColorSpace//ResolveD exec pop\n",
"}if\n",
"dup/Decode known not{\n",
"dup/ColorSpace//knownget exec{\n",
"dup type/arraytype eq{\n",
"0 get\n",
"}if\n",
"//DecodeArrays exch get exec\n",
"}{\n",
"[0 1]\n",
"}ifelse\n",
"1 index exch/Decode exch put\n",
"}if\n",
"dup/ImageMatrix[2 index/Width get 0 0 5 index/Height get neg\n",
"0 7 index/Height get]put\n",
"//DebugImagePrinting exec\n",
"}bind def\n",
"/CompleteInlineImage\n",
"{\n",
"//PDFR_DEBUG{\n",
"(CompleteInlineImage beg)=\n",
"}if\n",
"dup/ImageType known not{\n",
"dup/ImageType 1 put\n",
"}if\n",
"dup length dict exch{\n",
"exch//ImageKeys//Substitute exec\n",
"dup/Filter eq{\n",
"exch//ImageValues//Substitute exec exch\n",
"}if\n",
"dup/ColorSpace eq{\n",
"exch\n",
"dup//ImageValues exch//knownget exec{\n",
"exch pop\n",
"}{\n",
"//ResolveColorSpace exec\n",
"}ifelse\n",
"exch\n",
"}if\n",
"exch\n",
"2 index 3 1 roll put\n",
"}forall\n",
"//CompleteImage exec\n",
"dup/DataSource 2 copy get\n",
"2 index//AppendFilters exec put\n",
"//PDFR_DEBUG{\n",
"(CompleteInlineImage end)=\n",
"}if\n",
"}bind def\n",
"/CompleteOutlineImage\n",
"{\n",
"currentglobal exch dup gcheck setglobal\n",
"//PDFR_DEBUG{\n",
"(CompleteOutlineImage beg)=\n",
"}if\n",
"dup dup//MakeStreamReader exec/DataSource exch put\n",
"dup/ImageType known not{\n",
"//CompleteImage exec\n",
"dup/ImageType 1 put\n",
"dup/ColorSpace known{\n",
"dup/ColorSpace//CheckColorSpace//ResolveD exec\n",
"dup type/arraytype eq{\n",
"//ResolveColorSpaceArray exec\n",
"//SubstitutePDFColorSpace exec\n",
"1 index exch/ColorSpace exch put\n",
"}{\n",
"pop\n",
"}ifelse\n",
"}if\n",
"}if\n",
"//PDFR_DEBUG{\n",
"(CompleteOutlineImage end)=\n",
"}if\n",
"exch setglobal\n",
"}bind def\n",
"/DoImage\n",
"{\n",
"//PDFR_DEBUG{\n",
"(DoImage beg)=\n",
"}if\n",
"gsave\n",
"dup/ColorSpace//knownget exec{setcolorspace}if\n",
"dup/ImageMask//knownget exec not{false}if\n",
"{imagemask}{image}ifelse\n",
"grestore\n",
"//PDFR_DEBUG{\n",
"(DoImage end)=\n",
"}if\n",
"}bind def\n",
"/GSave\n",
"{\n",
"gsave\n",
"//PDFReader/GraphicStateStackPointer get\n",
"dup//GraphicStateStack exch get null eq{\n",
"dup//GraphicStateStack exch//InitialGraphicState length dict put\n",
"}if\n",
"dup//GraphicStateStack exch get\n",
"//GraphicState exch copy pop\n",
"1 add//PDFReader exch/GraphicStateStackPointer exch put\n",
"}bind def\n",
"/GRestore\n",
"{\n",
"grestore\n",
"//PDFReader/GraphicStateStackPointer get\n",
"1 sub dup\n",
"//PDFReader exch/GraphicStateStackPointer exch put\n",
"//GraphicStateStack exch get\n",
"//GraphicState copy pop\n",
"}bind def\n",
"/SetFont\n",
"{dup//GraphicState exch/FontSize exch put\n",
"//ResolveAndSetFont exec\n",
"//GraphicState/FontMatrixNonHV currentfont/FontMatrix get 1 get 0 ne put\n",
"}bind def\n",
"/ShowText\n",
"{//GraphicState/TextRenderingMode get 0 eq{\n",
"//GraphicState/WordSpacing get 0\n",
"32\n",
"//GraphicState/CharacterSpacing get 0\n",
"6 5 roll\n",
"//GraphicState/FontMatrixNonHV get{\n",
"[\n",
"7 -2 roll pop\n",
"5 -2 roll pop\n",
"5 -1 roll\n",
"{\n",
"exch\n",
"pop\n",
"3 index add\n",
"exch 2 index eq{3 index add}if\n",
"4 1 roll\n",
"}\n",
"currentfont/FontMatrix get 0 get 0 ne{\n",
"1 1 index length 1 sub getinterval cvx\n",
"}if\n",
"5 index\n",
"cshow\n",
"pop pop pop]\n",
"xshow\n",
"}{\n",
"awidthshow\n",
"}ifelse\n",
"}{\n",
"//GraphicState/CharacterSpacing get 0 eq\n",
"//GraphicState/FontMatrixNonHV get not and\n",
"//GraphicState/WordSpacing get 0 eq and{\n",
"true charpath\n",
"}{\n",
"{\n",
"exch\n",
"pop 0\n",
"currentpoint 5 4 roll\n",
"( )dup 0 3 index put true charpath\n",
"5 1 roll\n",
"moveto rmoveto\n",
"//GraphicState/CharacterSpacing get 0 rmoveto\n",
"32 eq{\n",
"//GraphicState/WordSpacing get 0 rmoveto\n",
"}if\n",
"}\n",
"//GraphicState/FontMatrixNonHV get dup not exch{\n",
"pop currentfont/FontMatrix get 0 get 0 ne\n",
"}if{\n",
"1 1 index length 1 sub getinterval cvx\n",
"}if\n",
"exch cshow\n",
"}ifelse\n",
"}ifelse\n",
"}bind def\n",
"/ShowTextBeg\n",
"{//GraphicState/TextRenderingMode get 0 ne{\n",
"currentpoint newpath moveto\n",
"}if\n",
"}bind def\n",
"/ShowTextEnd\n",
"{//GraphicState/TextRenderingMode get\n",
"{dup 1 eq{\n",
"stroke exit\n",
"}if\n",
"dup 2 eq{\n",
"gsave fill grestore stroke exit\n",
"}if\n",
"dup 3 eq{\n",
"currentpoint newpath moveto\n",
"}if\n",
"dup 4 eq{\n",
"gsave fill grestore clip exit\n",
"}if\n",
"dup 5 eq{\n",
"gsave stroke grestore clip exit\n",
"}if\n",
"dup 6 eq{\n",
"gsave fill grestore gsave stroke grestore fill exit\n",
"}if\n",
"dup 7 eq{\n",
"clip exit\n",
"}if\n",
"exit\n",
"}loop\n",
"pop\n",
"}bind def\n",
"/ShowTextWithGlyphPositioning\n",
"{//ShowTextBeg exec\n",
"{dup type/stringtype eq{\n",
"//ShowText exec\n",
"}{\n",
"neg 1000 div//GraphicState/FontSize get mul 0 rmoveto\n",
"}ifelse\n",
"}forall\n",
"//ShowTextEnd exec\n",
"}bind def\n",
"/CheckFont\n",
"{dup/Type get/ExtGState ne{\n",
"mark(Resource )3 index( must have /Type/ExtGState.)//error exec\n",
"}if\n",
"}bind def\n",
"/SetTransfer\n",
"{\n",
"//PDFR_DEBUG{(SetTransfer beg )print count =}if\n",
"dup type/arraytype eq 1 index xcheck not and{\n",
"0 4 getinterval aload pop\n",
"setcolortransfer\n",
"}{\n",
"settransfer\n",
"}ifelse\n",
"//PDFR_DEBUG{(SetTransfer end )print count =}if\n",
"}bind def\n",
"/CheckExtGState\n",
"{dup/Type get/ExtGState ne{\n",
"mark(Resource )3 index( must have /Type/ExtGState.)//error exec\n",
"}if\n",
"}bind def\n",
"/CheckHalftone\n",
"{dup/HalftoneType known not{\n",
"mark(Resource )3 index( must have /HalftoneType.)//error exec\n",
"}if\n",
"}bind def\n",
"/ResolveFunction\n",
"{\n",
"//PDFR_DEBUG{(ResolveFunction beg )print dup = count =}if\n",
"2 copy get//IsObjRef exec{\n",
"2 copy//DoNothing//ResolveD exec\n",
"3 copy put pop\n",
"}if\n",
"2 copy get dup type/arraytype eq exch xcheck and not{\n",
"2 copy get\n",
"dup type/arraytype eq 1 index xcheck not and{\n",
"dup length 1 sub -1 0{\n",
"2 copy//DoNothing ResolveA\n",
"dup/Identity eq{\n",
"pop 2 copy{}put\n",
"}{\n",
"//FunctionToProc exec\n",
"3 copy put pop\n",
"}ifelse\n",
"pop\n",
"}for\n",
"}{\n",
"dup/Default eq{\n",
"}{\n",
"dup/Identity eq{\n",
"pop{}\n",
"}{dup type/nametype eq{\n",
"//spotfunctions exch get\n",
"}{\n",
"//FunctionToProc exec\n",
"}ifelse\n",
"}ifelse\n",
"}ifelse\n",
"}ifelse\n",
"3 copy put\n",
"exch pop\n",
"}{\n",
"1 index exch get\n",
"}ifelse\n",
"//PDFR_DEBUG{(ResolveFunction end )print dup == count =}if\n",
"}bind def\n",
"/ResolveFunctionSafe\n",
"{2 copy known{\n",
"//ResolveFunction exec\n",
"}if\n",
"pop\n",
"}bind def\n",
"/CreateHalftoneThresholds\n",
"{\n",
"dup/Thresholds known not{\n",
"dup/HalftoneType get 10 eq{\n",
"dup dup//MakeStreamReader exec\n",
"/Thresholds exch put\n",
"}if\n",
"dup/HalftoneType get dup 3 eq exch 6 eq or{\n",
"dup dup//MakeStreamReader exec\n",
"//BlockBuffer readstring pop\n",
"dup length\n",
"dup 0 eq{\n",
"mark(Could not read Thresholds)//error exec\n",
"}if\n",
"string copy/Thresholds exch put\n",
"dup/HalftoneType 3 put\n",
"}if\n",
"}if\n",
"}bind def\n",
"/SetExtGState\n",
"{\n",
"//PDFReader/CurrentObject get/Context get/Resources get\n",
"/ExtGState//DoNothing//ResolveD exec\n",
"exch//CheckExtGState//ResolveD exec\n",
"dup/LW//knownget exec{\n",
"setlinewidth\n",
"}if\n",
"dup/LC//knownget exec{\n",
"setlinecap\n",
"}if\n",
"dup/LJ//knownget exec{\n",
"setlinejoin\n",
"}if\n",
"dup/ML//knownget exec{\n",
"setmeterlimit\n",
"}if\n",
"dup/D//knownget exec{\n",
"setdash\n",
"}if\n",
"dup/RI//knownget exec{\n",
"mark(Unimplemented ExtGState.RI)//error exec\n",
"}if\n",
"dup/OP//knownget exec{\n",
"setoverprint\n",
"}if\n",
"dup/op//knownget exec{\n",
"setoverprint\n",
"}if\n",
"dup/OPM//knownget exec{\n",
"mark(Unimplemented ExtGState.OPM)//error exec\n",
"}if\n",
"dup/Font//knownget exec{\n",
"mark(Unimplemented ExtGState.Font)//error exec\n",
"}if\n",
"dup/BG known{\n",
"/BG//ResolveFunction exec\n",
"setblackgeneration\n",
"}if\n",
"dup/BG2 known{\n",
"/BG2//ResolveFunction exec\n",
"dup/Default eq{\n",
"//InitialExtGState/BG2 get\n",
"}if\n",
"setblackgeneration\n",
"}if\n",
"dup/UCR known{\n",
"/UCR//ResolveFunction exec\n",
"setundercolorremoval\n",
"}if\n",
"dup/UCR2 known{\n",
"/UCR2//ResolveFunction exec\n",
"dup/Default eq{\n",
"//InitialExtGState/UCR2 get\n",
"}if\n",
"setundercolorremoval\n",
"}if\n",
"dup/TR known{\n",
"/TR//ResolveFunction exec\n",
"//SetTransfer exec\n",
"}if\n",
"dup/TR2 known{\n",
"/TR2//ResolveFunction exec\n",
"dup/Default eq{\n",
"pop//InitialExtGState/TR2 get\n",
"aload pop setcolortransfer\n",
"}{\n",
"//SetTransfer exec\n",
"}ifelse\n",
"}if\n",
"dup/HT//knownget exec{\n",
"dup/Default eq{\n",
"pop//InitialExtGState/HT get\n",
"sethalftone\n",
"}{\n",
"//PDFR_DEBUG{(Ht beg)=}if\n",
"pop dup/HT//CheckHalftone//ResolveD exec\n",
"/SpotFunction//ResolveFunctionSafe exec\n",
"/TransferFunction//ResolveFunctionSafe exec\n",
"null exch\n",
"dup/HalftoneType get dup 5 eq exch dup 4 eq exch 2 eq or or{\n",
"dup{\n",
"dup//IsObjRef exec{\n",
"pop\n",
"1 index exch//CheckHalftone ResolveD\n",
"}if\n",
"dup type/dicttype eq{\n",
"dup/SpotFunction//ResolveFunctionSafe exec\n",
"/TransferFunction//ResolveFunctionSafe exec\n",
"//CreateHalftoneThresholds exec\n",
"dup/HalftoneType get 5 gt{\n",
"4 3 roll pop\n",
"dup 4 1 roll\n",
"}if\n",
"}if\n",
"pop pop\n",
"}forall\n",
"}if\n",
"//CreateHalftoneThresholds exec\n",
"//PDFR_DEBUG{\n",
"(HT:)=\n",
"dup{\n",
"1 index/Default eq{\n",
"(Default <<)=\n",
"exch pop\n",
"{exch = ==}forall\n",
"(>>)=\n",
"}{\n",
"exch = ==\n",
"}ifelse\n",
"}forall\n",
"(HT end)= flush\n",
"}if\n",
"exch dup null ne{\n",
"(Warning: Ignoring a halftone with a Level 3 component halftone Type )print dup/HalftoneType get =\n",
"pop pop\n",
"}{\n",
"pop\n",
"dup/HalftoneType get 5 gt{\n",
"(Warning: Ignoring a Level 3 halftone Type )print dup/HalftoneType get =\n",
"pop\n",
"}{\n",
"sethalftone\n",
"}ifelse\n",
"}ifelse\n",
"//PDFR_DEBUG{(HT set)= flush}if\n",
"}ifelse\n",
"}if\n",
"dup/FL//knownget exec{\n",
"setflattness\n",
"}if\n",
"dup/SM//knownget exec{\n",
"setsmoothness\n",
"}if\n",
"dup/SA//knownget exec{\n",
"setstrokeadjust\n",
"}if\n",
"dup/BM//knownget exec{\n",
"mark(Unimplemented ExtGState.BM)//error exec\n",
"}if\n",
"dup/SMask//knownget exec{\n",
"mark(Unimplemented ExtGState.SMask)//error exec\n",
"}if\n",
"dup/CA//knownget exec{\n",
"mark(Unimplemented ExtGState.CA)//error exec\n",
"}if\n",
"dup/ca//knownget exec{\n",
"mark(Unimplemented ExtGState.ca)//error exec\n",
"}if\n",
"dup/AIS//knownget exec{\n",
"mark(Unimplemented ExtGState.AIS)//error exec\n",
"}if\n",
"dup/TK//knownget exec{\n",
"mark(Unimplemented ExtGState.TK)//error exec\n",
"}if\n",
"pop\n",
"}bind def\n",
"/CheckXObject\n",
"{dup/Subtype get dup/Image ne exch dup/Form ne exch/PS ne and and{\n",
"mark(Resource )3 index( must have /Subtype /Image or /Form or /PS.)//error exec\n",
"}if\n",
"}bind def\n",
"/DoXObject\n",
"{\n",
"//PDFReader/CurrentObject get/Context get/Resources get\n",
"/XObject//DoNothing//ResolveD exec\n",
"exch//CheckXObject//ResolveD exec\n",
"dup/Subtype get\n",
"dup/Image eq{\n",
"pop\n",
"//CompleteOutlineImage exec\n",
"//DoImage exec\n",
"}{\n",
"dup/PS eq{\n",
"PDFR_DEBUG{\n",
"(Executing a PS Xobject)=\n",
"}if\n",
"pop\n",
"//RunDelayedStream exec\n",
"}{\n",
"dup/Form eq{\n",
"pop\n",
"PDFR_DEBUG{\n",
"(Executing a Form XObject)=\n",
"}if\n",
"//PDFReader/CurrentObject get exch\n",
"dup//PDFReader exch<< exch/Context exch >>/CurrentObject exch put\n",
"dup/Matrix get concat\n",
"dup/BBox get aload pop exch 3 index sub exch 2 index sub rectclip\n",
"//RunDelayedStream exec\n",
"//PDFReader exch/CurrentObject exch put\n",
"}{\n",
"mark exch(unimplemented XObject type )exch//error exec\n",
"}ifelse\n",
"}ifelse\n",
"}ifelse\n",
"}bind def\n",
"/Operators 50 dict begin\n",
"/q{//GSave exec}bind def\n",
"/Q{//GRestore exec}bind def\n",
"/cm{//TempMatrix astore concat}bind def\n",
"/i{1 .min setflat}bind def\n",
"/J/setlinecap load def\n",
"/d/setdash load def\n",
"/j/setlinejoin load def\n",
"/w/setlinewidth load def\n",
"/M/setmiterlimit load def\n",
"/gs{SetExtGState}bind def\n",
"/g/setgray load def\n",
"/rg/setrgbcolor load def\n",
"/k/setcmykcolor load def\n",
"/cs{//ResolveColorSpace exec//SetColorSpaceSafe exec\n",
"}bind def\n",
"/sc/setcolor load def\n",
"/scn{//SetColor exec}bind def\n",
"/G/setgray load def\n",
"/RG/setrgbcolor load def\n",
"/K/setcmykcolor load def\n",
"/CS//cs def\n",
"/ri{SetColorRenderingIntent}bind def\n",
"/SC/setcolor load def\n",
"/SCN{//SetColor exec}bind def\n",
"/m/moveto load def\n",
"/l/lineto load def\n",
"/c/curveto load def\n",
"/v{currentpoint 6 2 roll curveto}bind def\n",
"/y{2 copy curveto}bind def\n",
"/re{\n",
"4 2 roll moveto exch dup 0 rlineto 0 3 -1 roll rlineto neg 0 rlineto\n",
"closepath\n",
"}def\n",
"/h/closepath load def\n",
"/n/newpath load def\n",
"/S/stroke load def\n",
"/s{closepath stroke}bind def\n",
"/f/fill load def\n",
"/f*/eofill load def\n",
"/B{gsave fill grestore stroke}bind def\n",
"/b{closepath gsave fill grestore stroke}bind def\n",
"/B*{gsave eofill grestore stroke}bind def\n",
"/b*{closepath gsave eofill grestore stroke}bind def\n",
"/W/clip load def\n",
"/W*/eoclip load def\n",
"/sh{\n",
"ResolveShading\n",
"dup/Background known{\n",
"gsave\n",
"dup/ColorSpace get setcolorspace\n",
"dup/Background get aload pop setcolor\n",
"pathbbox\n",
"2 index sub exch 3 index sub exch\n",
"rectfill\n",
"grestore\n",
"}if\n",
"shfill\n",
"}bind def\n",
"/Do{//DoXObject exec}bind def\n",
"/BI{currentglobal false setglobal<<}bind def\n",
"/ID{>>\n",
"dup/DataSource currentfile\n",
"2 index/F//knownget exec{\n",
"/A85 eq{\n",
"0(~>)/SubFileDecode filter\n",
"}if\n",
"}if\n",
"put\n",
"//CompleteInlineImage exec\n",
"exch setglobal\n",
"//DoImage exec\n",
"}bind def\n",
"/EI{}bind def\n",
"/BT{gsave//GraphicState/InitialTextMatrix get currentmatrix pop}bind def\n",
"/ET{grestore}bind def\n",
"/Tc{//GraphicState exch/CharacterSpacing exch put}bind def\n",
"/TL{//GraphicState exch/TextLeading exch put}bind def\n",
"/Tr{//GraphicState exch/TextRenderingMode exch put}bind def\n",
"/Ts{\n",
"mark(Unimplemented SetTextRise)//error exec\n",
"}bind def\n",
"/Tw{//GraphicState exch/WordSpacing exch put}bind def\n",
"/Tz{\n",
"mark(Unimplemented SetHorizontalTextScaling)//error exec\n",
"}bind def\n",
"/Td{translate 0 0 moveto}bind def\n",
"/TD{dup neg//TL exec//Td exec}bind def\n",
"/Tm{//GraphicState/InitialTextMatrix get setmatrix\n",
"//TempMatrix astore concat\n",
"0 0 moveto}bind def\n",
"/T*{0//GraphicState/TextLeading get neg//Td exec}bind def\n",
"/Tj{//ShowTextBeg exec//ShowText exec//ShowTextEnd exec}bind def\n",
"/'{//T* exec//ShowText exec//ShowTextEnd exec}bind def\n",
"/\"{3 2 roll//Tw exec exch//Tc exec//' exec}bind def\n",
"/TJ//ShowTextWithGlyphPositioning def\n",
"/Tf//SetFont def\n",
"/d0/setcharwidth load def\n",
"/d1/setcachedevice load def\n",
"/BDC{BeginMarkedContentSequenceWithPropertyList}bind def\n",
"/BMC{BeginMarkedContentSequence}bind def\n",
"/EMC{EndMarkedContentSequence}bind def\n",
"/BX{BeginCompatibilitySection}bind def\n",
"/EX{EndCompatibilitySection}bind def\n",
"/DP{DefineMarkedContentPointWithPropertyList}bind def\n",
"/MP{DefineMarkedContentPoint}bind def\n",
"/PS{cvx exec}bind def\n",
"currentdict end def\n",
"//PDFR_STREAM{\n",
"//Operators length dict begin\n",
"//Operators{\n",
"exch dup\n",
"[exch//=only/exec load\n",
"( )/print load\n",
"8 7 roll\n",
"dup type/arraytype eq{\n",
"/exec load\n",
"}if\n",
"( )/print load\n",
"]cvx\n",
"def\n",
"}forall\n",
"currentdict end/Operators exch def\n",
"}if\n",
"/.registerencoding\n",
"{pop pop\n",
"}bind def\n",
"/.defineencoding\n",
"{def\n",
"}bind def\n",
"/.findencoding\n",
"{load\n",
"}bind def\n",
0x00
};
# 50 "./devices/vector/gdevpdfu.c" 2
# 1 "./devices/vector/gdevagl.h" 1
# 19 "./devices/vector/gdevagl.h"
typedef struct single_glyph_list_s {
  const char *Glyph;
  unsigned short Unicode;
} single_glyph_list_t;

typedef struct double_glyph_list_s {
  const char *Glyph;
  unsigned short Unicode[2];
} double_glyph_list_t;

typedef struct treble_glyph_list_s {
  const char *Glyph;
  unsigned short Unicode[3];
} treble_glyph_list_t;

typedef struct quad_glyph_list_s {
  const char *Glyph;
  short Unicode[4];
} quad_glyph_list_t;
# 51 "./devices/vector/gdevpdfu.c" 2
# 1 "./base/gs_mgl_e.h" 1
# 26 "./base/gs_mgl_e.h"
const char *gs_mgl_e_ps [] = {
"/currentglobal where\n",
"{pop currentglobal{setglobal}true setglobal}\n",
"{{}}\n",
"ifelse\n",
"/MacRomanEncoding .findencoding\n",
"/MacGlyphEncoding\n",
"/.notdef/.null/CR\n",
"4 index 32 95 getinterval aload pop\n",
"99 index 128 45 getinterval aload pop\n",
"/notequal/AE\n",
"/Oslash/infinity/plusminus/lessequal/greaterequal\n",
"/yen/mu1/partialdiff/summation/product\n",
"/pi/integral/ordfeminine/ordmasculine/Ohm\n",
"/ae/oslash/questiondown/exclamdown/logicalnot\n",
"/radical/florin/approxequal/increment/guillemotleft\n",
"/guillemotright/ellipsis/nbspace\n",
"174 index 203 12 getinterval aload pop\n",
"/lozenge\n",
"187 index 216 24 getinterval aload pop\n",
"/applelogo\n",
"212 index 241 7 getinterval aload pop\n",
"/overscore\n",
"220 index 249 7 getinterval aload pop\n",
"/Lslash/lslash/Scaron/scaron\n",
"/Zcaron/zcaron/brokenbar/Eth/eth\n",
"/Yacute/yacute/Thorn/thorn/minus\n",
"/multiply/onesuperior/twosuperior/threesuperior/onehalf\n",
"/onequarter/threequarters/franc/Gbreve/gbreve\n",
"/Idotaccent/Scedilla/scedilla/Cacute/cacute\n",
"/Ccaron/ccaron/dmacron\n",
"260 -1 roll pop\n",
"258 packedarray\n",
"7 1 index .registerencoding\n",
".defineencoding\n",
"exec\n",
0x00
};
# 52 "./devices/vector/gdevpdfu.c" 2
# 1 "./base/gs_mro_e.h" 1
# 26 "./base/gs_mro_e.h"
const char *gs_mro_e_ps [] = {
"/currentglobal where\n",
"{pop currentglobal{setglobal}true setglobal}\n",
"{{}}\n",
"ifelse\n",
"/MacRomanEncoding\n",
"StandardEncoding 0 39 getinterval aload pop\n",
"/quotesingle\n",
"StandardEncoding 40 56 getinterval aload pop\n",
"/grave\n",
"StandardEncoding 97 31 getinterval aload pop\n",
"/Adieresis/Aring/Ccedilla/Eacute/Ntilde/Odieresis/Udieresis/aacute\n",
"/agrave/acircumflex/adieresis/atilde/aring/ccedilla/eacute/egrave\n",
"/ecircumflex/edieresis/iacute/igrave\n",
"/icircumflex/idieresis/ntilde/oacute\n",
"/ograve/ocircumflex/odieresis/otilde\n",
"/uacute/ugrave/ucircumflex/udieresis\n",
"/dagger/degree/cent/sterling/section/bullet/paragraph/germandbls\n",
"/registered/copyright/trademark/acute/dieresis/.notdef/AE/Oslash\n",
"/.notdef/plusminus/.notdef/.notdef/yen/mu/.notdef/.notdef\n",
"/.notdef/.notdef/.notdef/ordfeminine/ordmasculine/.notdef/ae/oslash\n",
"/questiondown/exclamdown/logicalnot/.notdef\n",
"/florin/.notdef/.notdef/guillemotleft\n",
"/guillemotright/ellipsis/space/Agrave/Atilde/Otilde/OE/oe\n",
"/endash/emdash/quotedblleft/quotedblright\n",
"/quoteleft/quoteright/divide/.notdef\n",
"/ydieresis/Ydieresis/fraction/currency\n",
"/guilsinglleft/guilsinglright/fi/fl\n",
"/daggerdbl/periodcentered/quotesinglbase/quotedblbase\n",
"/perthousand/Acircumflex/Ecircumflex/Aacute\n",
"/Edieresis/Egrave/Iacute/Icircumflex\n",
"/Idieresis/Igrave/Oacute/Ocircumflex\n",
"/.notdef/Ograve/Uacute/Ucircumflex\n",
"/Ugrave/dotlessi/circumflex/tilde\n",
"/macron/breve/dotaccent/ring/cedilla/hungarumlaut/ogonek/caron\n",
"256 packedarray\n",
"5 1 index .registerencoding\n",
".defineencoding\n",
"exec\n",
0x00
};
# 53 "./devices/vector/gdevpdfu.c" 2

extern single_glyph_list_t *SingleGlyphList;
# 72 "./devices/vector/gdevpdfu.c"
extern int s_DCTE_get_params(gs_param_list *plist, const stream_DCT_state *ss, bool all);
extern int s_CF_get_params(gs_param_list *plist, const stream_CF_state *ss, bool all);





extern const gs_memory_struct_type_t st_pdf_color_space;
extern const gs_memory_struct_type_t st_pdf_font_resource;
extern const gs_memory_struct_type_t st_pdf_char_proc;
extern const gs_memory_struct_type_t st_pdf_font_descriptor;
static const gc_ptr_element_t pdf_resource_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((pdf_resource_t *)0)->next - (char *)((pdf_resource_t *)0) )) }, { GC_ELT_OBJ, ((int) ( (char *)&((pdf_resource_t *)0)->prev - (char *)((pdf_resource_t *)0) )) }, { GC_ELT_OBJ, ((int) ( (char *)&((pdf_resource_t *)0)->object - (char *)((pdf_resource_t *)0) )) } }; static const gc_struct_data_t pdf_resource_reloc_ptrs = { (sizeof(pdf_resource_enum_ptrs) / sizeof((pdf_resource_enum_ptrs)[0])), 0, 0, pdf_resource_enum_ptrs }; const gs_memory_struct_type_t st_pdf_resource = { sizeof(pdf_resource_t), "pdf_resource_t", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &pdf_resource_reloc_ptrs };
static const gc_struct_data_t pdf_x_object_reloc_ptrs = { 0, 0, &st_pdf_resource, 0 }; static const gs_memory_struct_type_t st_pdf_x_object = { sizeof(pdf_x_object_t), "pdf_x_object_t", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &pdf_x_object_reloc_ptrs };
static const gc_ptr_element_t pdf_pattern_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((pdf_pattern_t *)0)->substitute - (char *)((pdf_pattern_t *)0) )) } }; static const gc_struct_data_t pdf_pattern_reloc_ptrs = { (sizeof(pdf_pattern_enum_ptrs) / sizeof((pdf_pattern_enum_ptrs)[0])), 0, &st_pdf_resource, pdf_pattern_enum_ptrs }; static const gs_memory_struct_type_t st_pdf_pattern = { sizeof(pdf_pattern_t), "pdf_pattern_t", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &pdf_pattern_reloc_ptrs };
# 316 "./devices/vector/gdevpdfu.c"
static int write_opdfread(stream *s)
{
    int index = 0;

    do {
        if (opdfread_ps[index] == 0x00)
            break;
        stream_write(s, opdfread_ps[index], strlen(opdfread_ps[index]));
        index++;
    } while (1);
    return 0;
}

static int write_tt_encodings(stream *s, bool HaveTrueTypes)
{
    int index = 0;

    do {
        if (gs_mro_e_ps[index] == 0x00)
            break;
        stream_write(s, gs_mro_e_ps[index], strlen(gs_mro_e_ps[index]));
        index++;
    } while (1);

    if (HaveTrueTypes) {
        char Buffer[256];
        single_glyph_list_t *entry = (single_glyph_list_t *)&SingleGlyphList;

        gs_sprintf(Buffer, "/AdobeGlyphList mark\n");
        stream_write(s, Buffer, strlen(Buffer));
        while (entry->Glyph) {
            gs_sprintf(Buffer, "/%s 16#%04x\n", entry->Glyph, entry->Unicode);
            stream_write(s, Buffer, strlen(Buffer));
            entry++;
        };
        gs_sprintf(Buffer, ".dicttomark readonly def\n");
        stream_write(s, Buffer, strlen(Buffer));

        index = 0;
        do {
            if (gs_mgl_e_ps[index] == 0x00)
                break;
            stream_write(s, gs_mgl_e_ps[index], strlen(gs_mgl_e_ps[index]));
            index++;
        } while (1);
    }
    return 0;
}

static int
copy_procsets(stream *s, bool HaveTrueTypes, bool stripping)
{
    int code;

    code = write_opdfread(s);
    if (code < 0)
        return code;

    code = write_tt_encodings(s, HaveTrueTypes);
    return code;

}

static int
encode(stream **s, const stream_template *t, gs_memory_t *mem)
{
    stream_state *st = s_alloc_state(mem, t->stype, "pdfwrite_pdf_open_document.encode");

    if (st == 0)
        return ((-25));
    if (t->set_defaults)
        t->set_defaults(st);
    if (s_add_filter(s, t, st, mem) == 0) {
        ((mem)->procs.free_object(mem, st, "pdfwrite_pdf_open_document.encode"));
        return ((-25));
    }
    return 0;
}



int ps2write_dsc_header(gx_device_pdf * pdev, int pages)
{
    stream *s = pdev->strm;

    if (pdev->ForOPDFRead) {
        char cre_date_time[41];
        int code, status, cre_date_time_len;
        char BBox[256];

        if (pdev->Eps2Write)
            stream_write(s, (byte *)"%!PS-Adobe-3.0 EPSF-3.0\n", 24);
        else
            stream_write(s, (byte *)"%!PS-Adobe-3.0\n", 15);



        {
            int pagecount = 1, j;
            double urx=0, ury=0;

            for (j = 0; j < 16; ++j) {
                pdf_resource_t *pres = pdev->resources[resourcePage].chains[j];

                for (; pres != 0; pres = pres->next)
                    if ((!pres->named || pdev->ForOPDFRead)
                        && !pres->object->written) {
                        pdf_page_t *page = &pdev->pages[pagecount - 1];
                        if (ceil(page->MediaBox.x) > urx)
                            urx = ceil(page->MediaBox.x);
                        if (ceil(page->MediaBox.y) > ury)
                            ury = ceil(page->MediaBox.y);
                        pagecount++;
                    }
            }
            if (!pdev->Eps2Write || pdev->BBox.p.x > pdev->BBox.q.x || pdev->BBox.p.y > pdev->BBox.q.y)
                gs_sprintf(BBox, "%%%%BoundingBox: 0 0 %d %d\n", (int)urx, (int)ury);
            else
                gs_sprintf(BBox, "%%%%BoundingBox: %d %d %d %d\n", (int)floor(pdev->BBox.p.x), (int)floor(pdev->BBox.p.y), (int)ceil(pdev->BBox.q.x), (int)ceil(pdev->BBox.q.y));
            stream_write(s, (byte *)BBox, strlen(BBox));
            if (!pdev->Eps2Write || pdev->BBox.p.x > pdev->BBox.q.x || pdev->BBox.p.y > pdev->BBox.q.y)
                gs_sprintf(BBox, "%%%%HiResBoundingBox: 0 0 %.2f %.2f\n", urx, ury);
            else
                gs_sprintf(BBox, "%%%%HiResBoundingBox: %.2f %.2f %.2f %.2f\n", pdev->BBox.p.x, pdev->BBox.p.y, pdev->BBox.q.x, pdev->BBox.q.y);
            stream_write(s, (byte *)BBox, strlen(BBox));
        }
        cre_date_time_len = pdf_get_docinfo_item(pdev, "/CreationDate", cre_date_time, sizeof(cre_date_time) - 1);
        cre_date_time[cre_date_time_len] = 0;
        gs_sprintf(BBox, "%%%%Creator: %s %d (%s)\n", gs_product, (int)gs_revision,
                pdev->dname);
        stream_write(s, (byte *)BBox, strlen(BBox));
        stream_puts(s, "%%LanguageLevel: 2\n");
        gs_sprintf(BBox, "%%%%CreationDate: %s\n", cre_date_time);
        stream_write(s, (byte *)BBox, strlen(BBox));
        gs_sprintf(BBox, "%%%%Pages: %d\n", pages);
        stream_write(s, (byte *)BBox, strlen(BBox));
        gs_sprintf(BBox, "%%%%EndComments\n");
        stream_write(s, (byte *)BBox, strlen(BBox));
        gs_sprintf(BBox, "%%%%BeginProlog\n");
        stream_write(s, (byte *)BBox, strlen(BBox));
        if (pdev->params.CompressPages) {






            stream_write(s, (byte *)"currentfile /ASCII85Decode filter /LZWDecode filter cvx exec\n", 61);
            code = encode(&s, &s_A85E_template, pdev->v_memory);
            if (code < 0)
                return code;
            code = encode(&s, &s_LZWE_template, pdev->v_memory);
            if (code < 0)
                return code;
        }
        stream_puts(s, "/DSC_OPDFREAD true def\n");
        if (pdev->Eps2Write) {
            stream_puts(s, "/SetPageSize false def\n");
            stream_puts(s, "/EPS2Write true def\n");
        } else {
            if (pdev->SetPageSize)
                stream_puts(s, "/SetPageSize true def\n");
            stream_puts(s, "/EPS2Write false def\n");
        }

        code = copy_procsets(s, pdev->HaveTrueTypes, ((bool)0));
        if (code < 0)
            return code;
        status = s_close_filters(&s, pdev->strm);
        if (status < 0)
            return ((-12));
        stream_puts(s, "\n");
        pdev->OPDFRead_procset_length = (int)stell(s);
    }
    return 0;
}


int
pdfwrite_pdf_open_document(gx_device_pdf * pdev)
{
    if (!((pdev)->contents_id != 0) && pdf_stell(pdev) == 0) {
        stream *s = pdev->strm;
        int level = (int)(pdev->CompatibilityLevel * 10 + 0.5);

        pdev->binary_ok = !pdev->params.ASCII85EncodePages;
        if (pdev->ForOPDFRead) {
            int code, status;
            char BBox[256];
            int width = (int)(pdev->width * 72.0 / pdev->HWResolution[0] + 0.5);
            int height = (int)(pdev->height * 72.0 / pdev->HWResolution[1] + 0.5);

            if (pdev->ProduceDSC)
                pdev->CompressEntireFile = 0;
            else {
                stream_write(s, (byte *)"%!\r", 3);
                gs_sprintf(BBox, "%%%%BoundingBox: 0 0 %d %d\n", width, height);
                stream_write(s, (byte *)BBox, strlen(BBox));
                if (pdev->params.CompressPages || pdev->CompressEntireFile) {






                    stream_write(s, (byte *)"currentfile /ASCII85Decode filter /LZWDecode filter cvx exec\n", 61);
                    code = encode(&s, &s_A85E_template, pdev->v_memory);
                    if (code < 0)
                        return code;
                    code = encode(&s, &s_LZWE_template, pdev->v_memory);
                    if (code < 0)
                        return code;
                }
                stream_puts(s, "/DSC_OPDFREAD false def\n");
                code = copy_procsets(s, pdev->HaveTrueTypes, ((bool)1));
                if (code < 0)
                    return code;
                if (!pdev->CompressEntireFile) {
                    status = s_close_filters(&s, pdev->strm);
                    if (status < 0)
                        return ((-12));
                } else
                    pdev->strm = s;
                if(pdev->SetPageSize)
                    stream_puts(s, "/SetPageSize true def\n");
                if(pdev->RotatePages)
                    stream_puts(s, "/RotatePages true def\n");
                if(pdev->FitPages)
                    stream_puts(s, "/FitPages true def\n");
                if(pdev->CenterPages)
                    stream_puts(s, "/CenterPages true def\n");
                pdev->OPDFRead_procset_length = stell(s);
            }
        }
        if (!(pdev->ForOPDFRead)) {
            pprintd2(s, "%%PDF-%d.%d\n", level / 10, level % 10);
            if (pdev->binary_ok)
                stream_puts(s, "%\307\354\217\242\n");
        }
    }
# 565 "./devices/vector/gdevpdfu.c"
    if (!pdev->params.CompressPages)
        pdev->compression = pdf_compress_none;
    else
        pdev->compression = pdf_compress_Flate;
    return 0;
}




static long
pdf_next_id(gx_device_pdf * pdev)
{
    return (pdev->next_id)++;
}
# 588 "./devices/vector/gdevpdfu.c"
gs_offset_t
pdf_stell(gx_device_pdf * pdev)
{
    stream *s = pdev->strm;
    gs_offset_t pos = stell(s);

    if (s == pdev->asides.strm)
        pos += (-((int64_t)1) << (sizeof(int64_t) * 8 - 1));
    return pos;
}
# 613 "./devices/vector/gdevpdfu.c"
long pdf_obj_forward_ref(gx_device_pdf * pdev)
{
    long id = pdf_next_id(pdev);
    gs_offset_t pos = 0;

    fwrite(&pos, sizeof(pos), 1, pdev->xref.file);
    return id;
}


long
pdf_obj_ref(gx_device_pdf * pdev)
{
    long id = pdf_next_id(pdev);
    gs_offset_t pos = pdf_stell(pdev);

    fwrite(&pos, sizeof(pos), 1, pdev->xref.file);
    return id;
}


long
pdf_open_obj(gx_device_pdf * pdev, long id, pdf_resource_type_t type)
{
    stream *s = pdev->strm;

    if (id <= 0) {
        id = pdf_obj_ref(pdev);
    } else {
        gs_offset_t pos = pdf_stell(pdev);
        FILE *tfile = pdev->xref.file;
        int64_t tpos = gp_ftell_64(tfile);

        gp_fseek_64 (tfile, ((int64_t)(id - pdev->FirstObjectNumber)) * sizeof(pos),
              0);
        fwrite(&pos, sizeof(pos), 1, tfile);
        gp_fseek_64(tfile, tpos, 0);
    }
    if (pdev->ForOPDFRead && pdev->ProduceDSC) {
        switch(type) {
            case resourceNone:



                break;
            case resourcePage:

                break;
            case resourceColorSpace:
                pprintld1(s, "%%%%BeginResource: file (PDF Color Space obj_%ld)\n", id);
                break;
            case resourceExtGState:
                pprintld1(s, "%%%%BeginResource: file (PDF Extended Graphics State obj_%ld)\n", id);
                break;
            case resourcePattern:
                pprintld1(s, "%%%%BeginResource: pattern (PDF Pattern obj_%ld)\n", id);
                break;
            case resourceShading:
                pprintld1(s, "%%%%BeginResource: file (PDF Shading obj_%ld)\n", id);
                break;
            case resourceCIDFont:
            case resourceFont:

                pprintld1(s, "%%%%BeginResource: font (PDF Font obj_%ld)\n", id);
                break;
            case resourceCharProc:
                pprintld1(s, "%%%%BeginResource: file (PDF CharProc obj_%ld)\n", id);
                break;
            case resourceCMap:
                pprintld1(s, "%%%%BeginResource: file (PDF CMap obj_%ld)\n", id);
                break;
            case resourceFontDescriptor:
                pprintld1(s, "%%%%BeginResource: file (PDF FontDescriptor obj_%ld)\n", id);
                break;
            case resourceGroup:
                pprintld1(s, "%%%%BeginResource: file (PDF Group obj_%ld)\n", id);
                break;
            case resourceFunction:
                pprintld1(s, "%%%%BeginResource: file (PDF Function obj_%ld)\n", id);
                break;
            case resourceEncoding:
                pprintld1(s, "%%%%BeginResource: encoding (PDF Encoding obj_%ld)\n", id);
                break;
            case resourceCIDSystemInfo:
                pprintld1(s, "%%%%BeginResource: file (PDF CIDSystemInfo obj_%ld)\n", id);
                break;
            case resourceHalftone:
                pprintld1(s, "%%%%BeginResource: file (PDF Halftone obj_%ld)\n", id);
                break;
            case resourceLength:
                pprintld1(s, "%%%%BeginResource: file (PDF Length obj_%ld)\n", id);
                break;
            case resourceSoftMaskDict:

                pprintld1(s, "%%%%BeginResource: file (PDF SoftMask obj_%ld)\n", id);
                break;
            case resourceXObject:

                pprintld1(s, "%%%%BeginResource: file (PDF XObject obj_%ld)\n", id);
                break;
            case resourceStream:

                pprintld1(s, "%%%%BeginResource: file (PDF stream obj_%ld)\n", id);
                break;
            case resourceOutline:

                pprintld1(s, "%%%%BeginResource: file (PDF Outline obj_%ld)\n", id);
                break;
            case resourceArticle:

                pprintld1(s, "%%%%BeginResource: file (PDF Article obj_%ld)\n", id);
                break;
            case resourceDests:

                pprintld1(s, "%%%%BeginResource: file (PDF Dests obj_%ld)\n", id);
                break;
            case resourceEmbeddedFiles:

                pprintld1(s, "%%%%BeginResource: file (PDF EmbeddedFiles obj_%ld)\n", id);
                break;
            case resourceLabels:

                pprintld1(s, "%%%%BeginResource: file (PDF Page Labels obj_%ld)\n", id);
                break;
            case resourceThread:

                pprintld1(s, "%%%%BeginResource: file (PDF Thread obj_%ld)\n", id);
                break;
            case resourceCatalog:

                pprintld1(s, "%%%%BeginResource: file (PDF Catalog obj_%ld)\n", id);
                break;
            case resourceEncrypt:

                pprintld1(s, "%%%%BeginResource: file (PDF Encryption obj_%ld)\n", id);
                break;
            case resourcePagesTree:

                pprintld1(s, "%%%%BeginResource: file (PDF Pages Tree obj_%ld)\n", id);
                break;
            case resourceMetadata:

                pprintld1(s, "%%%%BeginResource: file (PDF Metadata obj_%ld)\n", id);
                break;
            case resourceICC:

                pprintld1(s, "%%%%BeginResource: file (PDF ICC Profile obj_%ld)\n", id);
                break;
            case resourceAnnotation:

                pprintld1(s, "%%%%BeginResource: file (PDF Annotation obj_%ld)\n", id);
                break;
            case resourceFontFile:
                pprintld1(s, "%%%%BeginResource: file (PDF FontFile obj_%ld)\n", id);
                break;
            default:
                pprintld1(s, "%%%%BeginResource: file (PDF object obj_%ld)\n", id);
                break;
        }
    }
    pprintld1(s, "%ld 0 obj\n", id);
    return id;
}
long
pdf_begin_obj(gx_device_pdf * pdev, pdf_resource_type_t type)
{
    return pdf_open_obj(pdev, 0L, type);
}


int
pdf_end_obj(gx_device_pdf * pdev, pdf_resource_type_t type)
{
    stream_puts(pdev->strm, "endobj\n");
    if (pdev->ForOPDFRead && pdev->ProduceDSC) {
        switch(type) {
            case resourcePage:
                break;
            default:
            stream_puts(pdev->strm, "%%EndResource\n");
            break;
        }
    }
    return 0;
}




static int
    none_to_stream(gx_device_pdf *), stream_to_text(gx_device_pdf *),
    string_to_text(gx_device_pdf *), text_to_stream(gx_device_pdf *),
    stream_to_none(gx_device_pdf *);
typedef int (*context_proc) (gx_device_pdf *);
static const context_proc context_procs[4][4] =
{
    {0, none_to_stream, none_to_stream, none_to_stream},
    {stream_to_none, 0, stream_to_text, stream_to_text},
    {text_to_stream, text_to_stream, 0, 0},
    {string_to_text, string_to_text, string_to_text, 0}
};


static int
pdf_object_key(const gx_device_pdf * pdev, gs_id object_id, byte key[16])
{
    gs_md5_state_t md5;
    gs_md5_byte_t zero[2] = {0, 0}, t;
    int KeySize = pdev->KeyLength / 8;

    gs_md5_init(&md5);
    gs_md5_append(&md5, pdev->EncryptionKey, KeySize);
    t = (byte)(object_id >> 0); gs_md5_append(&md5, &t, 1);
    t = (byte)(object_id >> 8); gs_md5_append(&md5, &t, 1);
    t = (byte)(object_id >> 16); gs_md5_append(&md5, &t, 1);
    gs_md5_append(&md5, zero, 2);
    gs_md5_finish(&md5, key);
    return (((KeySize + 5) < (16)) ? (KeySize + 5) : (16));
}


int
pdf_encrypt_init(const gx_device_pdf * pdev, gs_id object_id, stream_arcfour_state *psarc4)
{
    byte key[16];

    return s_arcfour_set_key(psarc4, key, pdf_object_key(pdev, object_id, key));
}


int
pdf_begin_encrypt(gx_device_pdf * pdev, stream **s, gs_id object_id)
{
    gs_memory_t *mem = pdev->v_memory;
    stream_arcfour_state *ss;
    gs_md5_byte_t key[16];
    int code, keylength;

    if (!pdev->KeyLength)
        return 0;
    keylength = pdf_object_key(pdev, object_id, key);
    ss = (stream_arcfour_state *)(*(mem)->procs.alloc_struct)(mem, s_arcfour_template.stype, "psdf_encrypt");

    if (ss == ((void*)0))
        return ((-25));
    code = s_arcfour_set_key(ss, key, keylength);
    if (code < 0)
        return code;
    if (s_add_filter(s, &s_arcfour_template, (stream_state *)ss, mem) == 0)
        return ((-25));
    return 0;







}


void
pdf_end_encrypt(gx_device_pdf * pdev)
{
    if (pdev->KeyLength) {
        stream *s = pdev->strm;
        stream *fs = s->strm;

        sclose(s);
        ((pdev->v_memory)->procs.free_object(pdev->v_memory, s->cbuf, "encrypt buffer"));
        ((pdev->v_memory)->procs.free_object(pdev->v_memory, s, "encrypt stream"));
        pdev->strm = fs;
    }
}


static int
none_to_stream(gx_device_pdf * pdev)
{
    stream *s;
    int code;

    if (pdev->contents_id != 0)
        return ((-100));
    pdev->compression_at_page_start = pdev->compression;
    if (pdev->ResourcesBeforeUsage) {
        pdf_resource_t *pres;

        code = pdf_enter_substream(pdev, resourcePage, 0L, &pres,
                    ((bool)1), pdev->params.CompressPages);
        if (code < 0)
            return code;
        pdev->contents_id = pres->object->id;
        pdev->contents_length_id = 0L;
        pdev->contents_pos = -1;
        s = pdev->strm;
    } else {
        pdev->contents_id = pdf_begin_obj(pdev, resourceStream);
        pdev->contents_length_id = pdf_obj_ref(pdev);
        s = pdev->strm;
        pprintld1(s, "<</Length %ld 0 R", pdev->contents_length_id);
        if (pdev->compression == pdf_compress_Flate) {
            if (pdev->binary_ok)
                pprints1(s, "/Filter /%s", "FlateDecode");
            else
                pprints1(s, "/Filter [/ASCII85Decode /%s]", "FlateDecode");
        }
        stream_puts(s, ">>\nstream\n");
        pdev->contents_pos = pdf_stell(pdev);
        code = pdf_begin_encrypt(pdev, &s, pdev->contents_id);
        if (code < 0)
            return code;
        pdev->strm = s;
        if (pdev->compression == pdf_compress_Flate) {
            const stream_template *templat;
            stream *es;
            byte *buf;
            stream_zlib_state *st;

            if (!pdev->binary_ok) {
                const stream_template *templat2 = &s_A85E_template;
                stream *as = s_alloc(pdev->v_memory, "PDF contents stream");
                byte *buf = (*(pdev->v_memory)->procs.alloc_bytes)(pdev->v_memory, 512, "PDF contents buffer");

                stream_A85E_state *ast = (stream_A85E_state *)(*(pdev->v_memory)->procs.alloc_struct)(pdev->v_memory, templat2->stype, "PDF contents state");

                if (as == 0 || ast == 0 || buf == 0)
                    return ((-25));
                s_std_init(as, buf, 512, &s_filter_write_procs,
                           2);
                ast->memory = pdev->v_memory;
                ast->templat = templat2;
                as->state = (stream_state *) ast;
                as->procs.process = templat2->process;
                as->strm = s;
                (*templat2->init) ((stream_state *) ast);
                pdev->strm = s = as;
            }
            templat = &s_zlibE_template;
            es = s_alloc(pdev->v_memory, "PDF compression stream");
            buf = (*(pdev->v_memory)->procs.alloc_bytes)(pdev->v_memory, 512, "PDF compression buffer");

            st = (stream_zlib_state *)(*(pdev->v_memory)->procs.alloc_struct)(pdev->v_memory, templat->stype, "PDF compression state");

            if (es == 0 || st == 0 || buf == 0)
                return ((-25));
            s_std_init(es, buf, 512, &s_filter_write_procs,
                       2);
            st->memory = pdev->v_memory;
            st->templat = templat;
            es->state = (stream_state *) st;
            es->procs.process = templat->process;
            es->strm = s;
            (*templat->set_defaults) ((stream_state *) st);
            (*templat->init) ((stream_state *) st);
            pdev->strm = s = es;
        }
    }





    pprintg2(s, "q %g 0 0 %g 0 0 cm\n",
             72.0 / pdev->HWResolution[0], 72.0 / pdev->HWResolution[1]);
    if (pdev->CompatibilityLevel >= 1.3) {

        if (pdev->params.DefaultRenderingIntent != ri_Default) {
            static const char *const ri_names[] = { "Default", "Perceptual", "Saturation", "RelativeColorimetric", "AbsoluteColorimetric" };

            pprints1(s, "/%s ri\n",
                     ri_names[(int)pdev->params.DefaultRenderingIntent]);
        }
    }
    pdev->AR4_save_bug = ((bool)0);
    return PDF_IN_STREAM;
}

static int
stream_to_text(gx_device_pdf * pdev)
{
    int code;
# 1004 "./devices/vector/gdevpdfu.c"
    code = pdf_save_viewer_state(pdev, pdev->strm);
    if (code < 0)
        return 0;
    pprintg2(pdev->strm, "%g 0 0 %g 0 0 cm BT\n",
             pdev->HWResolution[0] / 72.0, pdev->HWResolution[1] / 72.0);
    pdev->procsets |= Text;
    code = pdf_from_stream_to_text(pdev);
    return (code < 0 ? code : PDF_IN_TEXT);
}

static int
string_to_text(gx_device_pdf * pdev)
{
    int code = pdf_from_string_to_text(pdev);

    return (code < 0 ? code : PDF_IN_TEXT);
}

static int
text_to_stream(gx_device_pdf * pdev)
{
    int code;

    stream_puts(pdev->strm, "ET\n");
    code = pdf_restore_viewer_state(pdev, pdev->strm);
    if (code < 0)
        return code;
    pdf_reset_text(pdev);
    return PDF_IN_STREAM;
}

static int
stream_to_none(gx_device_pdf * pdev)
{
    stream *s = pdev->strm;
    gs_offset_t length;
    int code;

    if (pdev->ResourcesBeforeUsage) {
        int code = pdf_exit_substream(pdev);

        if (code < 0)
            return code;
    } else {
        if (pdev->vgstack_depth) {
            code = pdf_restore_viewer_state(pdev, s);
            if (code < 0)
                return code;
        }
        if (pdev->compression_at_page_start == pdf_compress_Flate) {
            stream *fs = s->strm;

            if (!pdev->binary_ok) {
                sclose(s);
                ((pdev->v_memory)->procs.free_object(pdev->v_memory, s->cbuf, "A85E contents buffer"));
                ((pdev->v_memory)->procs.free_object(pdev->v_memory, s, "A85E contents stream"));
                pdev->strm = s = fs;
                fs = s->strm;
            }
            sclose(s);
            ((pdev->v_memory)->procs.free_object(pdev->v_memory, s->cbuf, "zlib buffer"));
            ((pdev->v_memory)->procs.free_object(pdev->v_memory, s, "zlib stream"));
            pdev->strm = fs;
        }
        pdf_end_encrypt(pdev);
        s = pdev->strm;
        length = pdf_stell(pdev) - pdev->contents_pos;
        if (pdev->PDFA != 0)
            stream_puts(s, "\n");
        stream_puts(s, "endstream\n");
        pdf_end_obj(pdev, resourceStream);
        pdf_open_obj(pdev, pdev->contents_length_id, resourceLength);
        pprintld1(s, "%ld\n", (long)length);
        pdf_end_obj(pdev, resourceLength);
    }
    return PDF_IN_NONE;
}


int
pdf_open_contents(gx_device_pdf * pdev, pdf_context_t context)
{
    int (*proc) (gx_device_pdf *);

    while ((proc = context_procs[pdev->context][context]) != 0) {
        int code = (*proc) (pdev);

        if (code < 0)
            return code;
        pdev->context = (pdf_context_t) code;
    }
    pdev->context = context;
    return 0;
}


int
pdf_close_contents(gx_device_pdf * pdev, bool last)
{
    if (pdev->context == PDF_IN_NONE)
        return 0;
    if (last) {
        int code = pdf_open_contents(pdev, PDF_IN_STREAM);

        if (code < 0)
            return code;
        stream_puts(pdev->strm, "Q\n");
        pdf_close_text_contents(pdev);
    }
    return pdf_open_contents(pdev, PDF_IN_NONE);
}




const char *const pdf_resource_type_names[] = {
    "/ColorSpace", "/ExtGState", "/Pattern", "/Shading", "/XObject", 0, "/Font", 0, "/Font", "/CMap", "/FontDescriptor", "/Group", "/Mask", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};
const gs_memory_struct_type_t *const pdf_resource_type_structs[] = {
    &st_pdf_color_space, &st_pdf_resource, &st_pdf_pattern, &st_pdf_resource, &st_pdf_x_object, &st_pdf_resource, &st_pdf_font_resource, &st_pdf_char_proc, &st_pdf_font_resource, &st_pdf_resource, &st_pdf_font_descriptor, &st_pdf_resource, &st_pdf_resource, &st_pdf_resource, &st_pdf_resource
};


int
pdf_cancel_resource(gx_device_pdf * pdev, pdf_resource_t *pres, pdf_resource_type_t rtype)
{

    pres->where_used = 0;
    if (pres->object) {
        pres->object->written = ((bool)1);
        if (rtype == resourceXObject || rtype == resourceCharProc || rtype == resourceOther
            || rtype > NUM_RESOURCE_TYPES) {
            int code = cos_stream_release_pieces((cos_stream_t *)pres->object);

            if (code < 0)
                return code;
        }
        cos_release(pres->object, "pdf_cancel_resource");
        ((pdev->v_memory)->procs.free_object(pdev->v_memory, pres->object, "pdf_cancel_resources"));
        pres->object = 0;
    }
    return 0;
}


void
pdf_forget_resource(gx_device_pdf * pdev, pdf_resource_t *pres1, pdf_resource_type_t rtype)
{
    pdf_resource_t **pchain = pdev->resources[rtype].chains;
    pdf_resource_t *pres;
    pdf_resource_t **pprev = &pdev->last_resource;
    int i;




    for (i = 0; i < pdev->sbstack_size; i++) {
        if (pres1 == pdev->sbstack[i].font3) {
            pdev->sbstack[i].font3 = ((void*)0);
        }
        else if (pres1 == pdev->sbstack[i].accumulating_substream_resource) {
            pdev->sbstack[i].accumulating_substream_resource = ((void*)0);
        }
        else if (pres1 == pdev->sbstack[i].pres_soft_mask_dict) {
            pdev->sbstack[i].pres_soft_mask_dict = ((void*)0);
        }
    }

    for (; (pres = *pprev) != 0; pprev = &pres->prev)
        if (pres == pres1) {
            *pprev = pres->prev;
            break;
        }
    for (i = 0; i < 16; i++) {
        pprev = pchain + i;
        for (; (pres = *pprev) != 0; pprev = &pres->next)
            if (pres == pres1) {
                *pprev = pres->next;
                if (pres->object) {
                    cos_release(((cos_object_t *)&((pres->object)->cos_procs)), "pdf_forget_resource");
                    ((pdev->v_memory)->procs.free_object(pdev->v_memory, pres->object, "pdf_forget_resource"));
                    pres->object = 0;
                }
                ((pdev->v_memory)->procs.free_object(pdev->v_memory, pres, "pdf_forget_resource"));
                break;
            }
    }
}

static int
nocheck(gx_device_pdf * pdev, pdf_resource_t *pres0, pdf_resource_t *pres1)
{
    return 1;
}
# 1206 "./devices/vector/gdevpdfu.c"
int
pdf_substitute_resource(gx_device_pdf *pdev, pdf_resource_t **ppres,
        pdf_resource_type_t rtype,
        int (*eq)(gx_device_pdf * pdev, pdf_resource_t *pres0, pdf_resource_t *pres1),
        bool write)
{
    pdf_resource_t *pres1 = *ppres;
    int code;

    code = pdf_find_same_resource(pdev, rtype, ppres, (eq ? eq : nocheck));
    if (code < 0)
        return code;
    if (code != 0) {
        code = pdf_cancel_resource(pdev, (pdf_resource_t *)pres1, rtype);
        if (code < 0)
            return code;
        pdf_forget_resource(pdev, pres1, rtype);
        return 0;
    } else {
        if (pres1->object->id < 0)
            pdf_reserve_object_id(pdev, pres1, 0L);
        if (write) {
            code = cos_write_object(pres1->object, pdev, rtype);
            if (code < 0)
                return code;
            pres1->object->written = 1;
        }
        return 1;
    }
}


pdf_resource_t *
pdf_find_resource_by_gs_id(gx_device_pdf * pdev, pdf_resource_type_t rtype,
                           gs_id rid)
{
    pdf_resource_t **pchain = (&(pdev)->resources[rtype].chains[((rid) + ((rid) / 16)) % 16]);
    pdf_resource_t **pprev = pchain;
    pdf_resource_t *pres;

    for (; (pres = *pprev) != 0; pprev = &pres->next)
        if (pres->rid == rid) {
            if (pprev != pchain) {
                *pprev = pres->next;
                pres->next = *pchain;
                *pchain = pres;
            }
            return pres;
        }
    return 0;
}


pdf_resource_t *
pdf_find_resource_by_resource_id(gx_device_pdf * pdev, pdf_resource_type_t rtype, gs_id id)
{
    pdf_resource_t **pchain = pdev->resources[rtype].chains;
    pdf_resource_t *pres;
    int i;

    for (i = 0; i < 16; i++) {
        for (pres = pchain[i]; pres != 0; pres = pres->next) {
            if (pres->object->id == id)
                return pres;
        }
    }
    return 0;
}


int
pdf_find_same_resource(gx_device_pdf * pdev, pdf_resource_type_t rtype, pdf_resource_t **ppres,
        int (*eq)(gx_device_pdf * pdev, pdf_resource_t *pres0, pdf_resource_t *pres1))
{
    pdf_resource_t **pchain = pdev->resources[rtype].chains;
    pdf_resource_t *pres;
    cos_object_t *pco0 = (*ppres)->object;
    int i;

    for (i = 0; i < 16; i++) {
        for (pres = pchain[i]; pres != 0; pres = pres->next) {
            if (*ppres != pres) {
                int code;
                cos_object_t *pco1 = pres->object;

                if (pco1 == ((void*)0) || ((pco0)->cos_procs) != ((pco1)->cos_procs))
                    continue;
                code = pco0->cos_procs->equal(pco0, pco1, pdev);
                if (code < 0)
                    return code;
                if (code > 0) {
                    code = eq(pdev, *ppres, pres);
                    if (code < 0)
                        return code;
                    if (code > 0) {
                        *ppres = pres;
                        return 1;
                    }
                }
            }
        }
    }
    return 0;
}


void
pdf_drop_resources(gx_device_pdf * pdev, pdf_resource_type_t rtype,
        int (*cond)(gx_device_pdf * pdev, pdf_resource_t *pres))
{
    pdf_resource_t **pchain = pdev->resources[rtype].chains;
    pdf_resource_t **pprev;
    pdf_resource_t *pres;
    int i;

    for (i = 0; i < 16; i++) {
        pprev = pchain + i;
        for (; (pres = *pprev) != 0; ) {
            if (cond(pdev, pres)) {
                *pprev = pres->next;
                pres->next = pres;
            } else
                pprev = &pres->next;
        }
    }
    pprev = &pdev->last_resource;
    for (; (pres = *pprev) != 0; )
        if (pres->next == pres) {
            *pprev = pres->prev;
            if (pres->object) {
                cos_release(((cos_object_t *)&((pres->object)->cos_procs)), "pdf_drop_resources");
                ((pdev->v_memory)->procs.free_object(pdev->v_memory, pres->object, "pdf_drop_resources"));
                pres->object = 0;
            }
            ((pdev->v_memory)->procs.free_object(pdev->v_memory, pres, "pdf_drop_resources"));
        } else
            pprev = &pres->prev;
}


void
pdf_print_resource_statistics(gx_device_pdf * pdev)
{

    int rtype;

    for (rtype = 0; rtype < NUM_RESOURCE_TYPES; rtype++) {
        pdf_resource_t **pchain = pdev->resources[rtype].chains;
        pdf_resource_t *pres;
        const char *name = pdf_resource_type_names[rtype];
        int i, n = 0;

        for (i = 0; i < 16; i++) {
            for (pres = pchain[i]; pres != 0; pres = pres->next, n++);
        }
        errprintf(pdev->v_memory,"Resource type %d (%s) has %d instances.\n", rtype, (name ? name : ""), n);

    }
}


long
pdf_open_separate(gx_device_pdf * pdev, long id, pdf_resource_type_t type)
{
    int code;
    code = pdfwrite_pdf_open_document(pdev);
    if (code < 0)
        return code;
    pdev->asides.save_strm = pdev->strm;
    pdev->strm = pdev->asides.strm;
    return pdf_open_obj(pdev, id, type);
}
long
pdf_begin_separate(gx_device_pdf * pdev, pdf_resource_type_t type)
{
    return pdf_open_separate(pdev, 0L, type);
}

void
pdf_reserve_object_id(gx_device_pdf * pdev, pdf_resource_t *pres, long id)
{
    pres->object->id = (id == 0 ? pdf_obj_ref(pdev) : id);
    gs_sprintf(pres->rname, "R%ld", pres->object->id);
}


int
pdf_alloc_aside(gx_device_pdf * pdev, pdf_resource_t ** plist,
                const gs_memory_struct_type_t * pst, pdf_resource_t **ppres,
                long id)
{
    pdf_resource_t *pres;
    cos_object_t *object;

    if (pst == ((void*)0))
        pst = &st_pdf_resource;
    pres = (pdf_resource_t *)(*(pdev->v_memory)->procs.alloc_struct)(pdev->v_memory, pst, "pdf_alloc_aside(resource)");

    if (pres == 0)
        return ((-25));
    object = cos_object_alloc(pdev, "pdf_alloc_aside(object)");
    if (object == 0)
        return ((-25));
    memset(pres + 1, 0, pst->ssize - sizeof(*pres));
    pres->object = object;
    if (id < 0) {
        object->id = -1L;
        pres->rname[0] = 0;
    } else
        pdf_reserve_object_id(pdev, pres, id);
    pres->next = *plist;
    pres->rid = 0;
    *plist = pres;
    pres->prev = pdev->last_resource;
    pdev->last_resource = pres;
    pres->named = ((bool)0);
    pres->global = ((bool)0);
    pres->where_used = pdev->used_mask;
    *ppres = pres;
    return 0;
}
int
pdf_begin_aside(gx_device_pdf * pdev, pdf_resource_t ** plist,
                const gs_memory_struct_type_t * pst, pdf_resource_t ** ppres,
                pdf_resource_type_t type)
{
    long id = pdf_begin_separate(pdev, type);

    if (id < 0)
        return (int)id;
    return pdf_alloc_aside(pdev, plist, pst, ppres, id);
}


int
pdf_begin_resource_body(gx_device_pdf * pdev, pdf_resource_type_t rtype,
                        gs_id rid, pdf_resource_t ** ppres)
{
    int code;

    if (rtype > NUM_RESOURCE_TYPES)
        rtype = resourceOther;

    code = pdf_begin_aside(pdev, (&(pdev)->resources[rtype].chains[((rid) + ((rid) / 16)) % 16]),
                               pdf_resource_type_structs[rtype], ppres, rtype);

    if (code >= 0)
        (*ppres)->rid = rid;
    return code;
}
int
pdf_begin_resource(gx_device_pdf * pdev, pdf_resource_type_t rtype, gs_id rid,
                   pdf_resource_t ** ppres)
{
    int code;

    if (rtype > NUM_RESOURCE_TYPES)
        rtype = resourceOther;

    code = pdf_begin_resource_body(pdev, rtype, rid, ppres);

    if (code >= 0 && pdf_resource_type_names[rtype] != 0) {
        stream *s = pdev->strm;

        pprints1(s, "<</Type%s", pdf_resource_type_names[rtype]);
        pprintld1(s, "/Name/R%ld", (*ppres)->object->id);
    }
    return code;
}
# 1488 "./devices/vector/gdevpdfu.c"
int
pdf_alloc_resource(gx_device_pdf * pdev, pdf_resource_type_t rtype, gs_id rid,
                   pdf_resource_t ** ppres, long id)
{
    int code;

    if (rtype > NUM_RESOURCE_TYPES)
        rtype = resourceOther;

    code = pdf_alloc_aside(pdev, (&(pdev)->resources[rtype].chains[((rid) + ((rid) / 16)) % 16]),
                               pdf_resource_type_structs[rtype], ppres, id);

    if (code >= 0)
        (*ppres)->rid = rid;
    return code;
}


long
pdf_resource_id(const pdf_resource_t *pres)
{
    return pres->object->id;
}


int
pdf_end_separate(gx_device_pdf * pdev, pdf_resource_type_t type)
{
    int code = pdf_end_obj(pdev, type);

    pdev->strm = pdev->asides.save_strm;
    pdev->asides.save_strm = 0;
    return code;
}
int
pdf_end_aside(gx_device_pdf * pdev, pdf_resource_type_t type)
{
    return pdf_end_separate(pdev, type);
}


int
pdf_end_resource(gx_device_pdf * pdev, pdf_resource_type_t type)
{
    return pdf_end_aside(pdev, type);
}






int
pdf_write_resource_objects(gx_device_pdf *pdev, pdf_resource_type_t rtype)
{
    int j, code = 0;

    for (j = 0; j < 16 && code >= 0; ++j) {
        pdf_resource_t *pres = pdev->resources[rtype].chains[j];

        for (; pres != 0; pres = pres->next)
            if ((!pres->named || pdev->ForOPDFRead)
                && pres->object && !pres->object->written) {
                    code = cos_write_object(pres->object, pdev, rtype);
            }
    }
    return code;
}






void
pdf_reverse_resource_chain(gx_device_pdf *pdev, pdf_resource_type_t rtype)
{
    pdf_resource_t *pres = pdev->resources[rtype].chains[0];
    pdf_resource_t *pres1, *pres0 = pres, *pres2;

    if (pres == ((void*)0))
        return;
    pres1 = pres->next;
    for (;;) {
        if (pres1 == ((void*)0))
            break;
        pres2 = pres1->next;
        pres1->next = pres;
        pres = pres1;
        pres1 = pres2;
    }
    pres0->next = ((void*)0);
    pdev->resources[rtype].chains[0] = pres;
}





int
pdf_free_resource_objects(gx_device_pdf *pdev, pdf_resource_type_t rtype)
{
    int j;

    for (j = 0; j < 16; ++j) {
        pdf_resource_t **prev = &pdev->resources[rtype].chains[j];
        pdf_resource_t *pres;

        while ((pres = *prev) != 0) {
            if (pres->named) {
                prev = &pres->next;
            } else {
                if (pres->object) {
                    cos_free(pres->object, "pdf_free_resource_objects");
                    pres->object = 0;
                }
                *prev = pres->next;
            }
        }
    }
    return 0;
}





int
pdf_store_page_resources(gx_device_pdf *pdev, pdf_page_t *page, bool clear_usage)
{
    int i;



    for (i = 0; i <= resourceFont; ++i) {
        stream *s = 0;
        int j;

        if (i == resourceOther || i > NUM_RESOURCE_TYPES)
            continue;
        page->resource_ids[i] = 0;
        for (j = 0; j < 16; ++j) {
            pdf_resource_t *pres = pdev->resources[i].chains[j];

            for (; pres != 0; pres = pres->next) {
                if (pres->where_used & pdev->used_mask) {
                    long id = pdf_resource_id(pres);

                    if (id == -1L)
                        continue;
                    if (s == 0) {
                        page->resource_ids[i] = pdf_begin_separate(pdev, i);
                        pdf_record_usage(pdev, page->resource_ids[i], pdev->next_page);
                        s = pdev->strm;
                        stream_puts(s, "<<");
                    }
                    pprints1(s, "/%s\n", pres->rname);
                    pprintld1(s, "%ld 0 R", id);
                    pdf_record_usage(pdev, id, pdev->next_page);
                    if (clear_usage)
                        pres->where_used -= pdev->used_mask;
                }
            }
        }
        if (s) {
            stream_puts(s, ">>\n");
            pdf_end_separate(pdev, i);
        }





        if (i != resourceFont)
            pdf_write_resource_objects(pdev, i);
    }
    page->procsets = pdev->procsets;
    return 0;
}


void
pdf_copy_data(stream *s, FILE *file, gs_offset_t count, stream_arcfour_state *ss)
{
    gs_offset_t r, left = count;
    byte buf[512];

    while (left > 0) {
        uint copy = (((left) < (512)) ? (left) : (512));

        r = fread(buf, 1, copy, file);
        if (r < 1) {
            ((-12));
            return;
        }
        if (ss)
            s_arcfour_process_buffer(ss, buf, copy);
        stream_write(s, buf, copy);
        left -= copy;
    }
}



void
pdf_copy_data_safe(stream *s, FILE *file, gs_offset_t position, long count)
{
    long r, left = count;

    while (left > 0) {
        byte buf[512];
        long copy = (((left) < ((long)512)) ? (left) : ((long)512));
        int64_t end_pos = gp_ftell_64(file);

        gp_fseek_64(file, position + count - left, 0);
        r = fread(buf, 1, copy, file);
        if (r < 1) {
            ((-12));
            return;
        }
        gp_fseek_64(file, end_pos, 0);
        stream_write(s, buf, copy);
        (*(s)->procs.flush)(s);
        left -= copy;
    }
}





long
pdf_page_id(gx_device_pdf * pdev, int page_num)
{
    cos_dict_t *Page;

    if (page_num < 1)
        return 0;
    if (page_num >= pdev->num_pages) {
        uint new_num_pages;
        pdf_page_t *new_pages;


        if (page_num > (1L << 31) - 11)
            page_num = (1L << 31) - 11;
        new_num_pages = (((page_num + 10) > (pdev->num_pages << 1)) ? (page_num + 10) : (pdev->num_pages << 1));

        new_pages = ((pdev->v_memory)->procs.resize_object(pdev->v_memory, pdev->pages, new_num_pages, "pdf_page_id(resize pages)"));


        if (new_pages == 0)
            return 0;
        memset(&new_pages[pdev->num_pages], 0,
               (new_num_pages - pdev->num_pages) * sizeof(pdf_page_t));
        pdev->pages = new_pages;
        pdev->num_pages = new_num_pages;
    }
    if ((Page = pdev->pages[page_num - 1].Page) == 0) {
        pdev->pages[page_num - 1].Page = Page =
            cos_dict_alloc(pdev, "pdf_page_id");
        Page->id = pdf_obj_forward_ref(pdev);
    }
    return Page->id;
}


pdf_page_t *
pdf_current_page(gx_device_pdf *pdev)
{
    return &pdev->pages[pdev->next_page];
}


cos_dict_t *
pdf_current_page_dict(gx_device_pdf *pdev)
{
    if (pdf_page_id(pdev, pdev->next_page + 1) <= 0)
        return 0;
    return pdev->pages[pdev->next_page].Page;
}


int
pdf_write_saved_string(gx_device_pdf * pdev, gs_string * pstr)
{
    if (pstr->data != 0) {
        stream_write(pdev->strm, pstr->data, pstr->size);
        (*(pdev->v_memory)->procs.free_string)(pdev->v_memory, pstr->data, pstr->size, "pdf_write_saved_string");

        pstr->data = 0;
    }
    return 0;
}


int
pdf_open_page(gx_device_pdf * pdev, pdf_context_t context)
{
    if (!((pdev)->contents_id != 0)) {
        int code;

        if (pdf_page_id(pdev, pdev->next_page + 1) == 0)
            return ((-25));
        code = pdfwrite_pdf_open_document(pdev);
        if (code < 0)
            return code;
    }

    return pdf_open_contents(pdev, context);
}


int
pdf_unclip(gx_device_pdf * pdev)
{
    const int bottom = (pdev->ResourcesBeforeUsage ? 1 : 0);



    if (pdev->sbstack_depth <= bottom) {
        int code = pdf_open_page(pdev, PDF_IN_STREAM);

        if (code < 0)
            return code;
    }
    if (pdev->context > PDF_IN_STREAM) {
        int code = pdf_open_contents(pdev, PDF_IN_STREAM);

        if (code < 0)
            return code;
    }
    if (pdev->vgstack_depth > pdev->vgstack_bottom) {
        int code = pdf_restore_viewer_state(pdev, pdev->strm);

        if (code < 0)
            return code;
        code = pdf_remember_clip_path(pdev, ((void*)0));
        if (code < 0)
            return code;
        pdev->clip_path_id = pdev->no_clip_path_id;
    }
    return 0;
}




void
pdf_store_default_Producer(char buf[200])
{
    if ((gs_revision % 100) == 0)
        gs_sprintf(buf, "(%s %1.1f)", gs_product, gs_revision / 100.0);
    else
        gs_sprintf(buf, "(%s %1.2f)", gs_product, gs_revision / 100.0);
}


void
pdf_put_matrix(gx_device_pdf * pdev, const char *before,
               const gs_matrix * pmat, const char *after)
{
    stream *s = pdev->strm;

    if (before)
        stream_puts(s, before);
    pprintg6(s, "%g %g %g %g %g %g ",
             pmat->xx, pmat->xy, pmat->yx, pmat->yy, pmat->tx, pmat->ty);
    if (after)
        stream_puts(s, after);
}







static int
pdf_put_name_chars_1_2(stream *s, const byte *nstr, uint size)
{
    uint i;

    for (i = 0; i < size; ++i) {
        uint c = nstr[i];
        char hex[4];

        switch (c) {
            default:
                if (c >= 0x21 && c <= 0x7e) {
                    spputc(s, (byte)c);
                    break;
                }

            case '#':
            case '%':
            case '(': case ')':
            case '<': case '>':
            case '[': case ']':
            case '{': case '}':
            case '/':
                gs_sprintf(hex, "#%02x", c);
                stream_puts(s, hex);
                break;
            case 0:
                stream_puts(s, "BnZr");
        }
    }
    return 0;
}
pdf_put_name_chars_proc_t
pdf_put_name_chars_proc(const gx_device_pdf *pdev)
{
    return &pdf_put_name_chars_1_2;
}
int
pdf_put_name_chars(const gx_device_pdf *pdev, const byte *nstr, uint size)
{
    return pdf_put_name_chars_proc(pdev)(pdev->strm, nstr, size);
}
int
pdf_put_name(const gx_device_pdf *pdev, const byte *nstr, uint size)
{
    spputc(pdev->strm, '/');
    return pdf_put_name_chars(pdev, nstr, size);
}


static int
pdf_encrypt_encoded_string(const gx_device_pdf *pdev, const byte *str, uint size, gs_id object_id)
{
    stream sinp, sstr, sout;
    stream_PSSD_state st;
    stream_state so;
    byte buf[100], bufo[100];
    stream_arcfour_state sarc4;

    if (pdf_encrypt_init(pdev, object_id, &sarc4) < 0) {

        stream_write(pdev->strm, str, size);
        return size;
    }
    s_init(&sinp, ((void*)0));
    sread_string(&sinp, str + 1, size);
    s_init(&sstr, ((void*)0));
    sstr.close_at_eod = ((bool)0);
    s_init_state((stream_state *)&st, &s_PSSD_template, ((void*)0));
    s_init_filter(&sstr, (stream_state *)&st, buf, sizeof(buf), &sinp);
    s_init(&sout, ((void*)0));
    s_init_state(&so, &s_PSSE_template, ((void*)0));
    s_init_filter(&sout, &so, bufo, sizeof(bufo), pdev->strm);
    spputc(pdev->strm, '(');
    for (;;) {
        uint n;
        int code = sgets(&sstr, buf, sizeof(buf), &n);

        if (n > 0) {
            s_arcfour_process_buffer(&sarc4, buf, n);
            stream_write(&sout, buf, n);
        }
        if (code == ((int)(-1)))
            break;
        if (code < 0 || n < sizeof(buf)) {

            break;
        }
    }
    sclose(&sout);
    return (int)stell(&sinp) + 1;
}


static int
pdf_put_encoded_string(const gx_device_pdf *pdev, const byte *str, uint size, gs_id object_id)
{
    if (!pdev->KeyLength || object_id == (gs_id)-1) {
        stream_write(pdev->strm, str, size);
        return 0;
    } else
        return pdf_encrypt_encoded_string(pdev, str, size, object_id);
}

static int
pdf_put_encoded_string_as_hex(const gx_device_pdf *pdev, const byte *str, uint size, gs_id object_id)
{
    if (!pdev->KeyLength || object_id == (gs_id)-1) {
        int i, oct, width = 0;
        char hex[16] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};

        if (pdev->ForOPDFRead && pdev->ProduceDSC)
            stream_write(pdev->strm, "\n", 1);
        stream_write(pdev->strm, "<", 1);
        width++;
        for (i = 1; i < size - 1; i++) {
            if (str[i] == '\\') {
                if (str[i + 1] >= '0' && str[i + 1] <= '9') {
                    oct = (str[i+1] - 0x30) * 64;
                    oct += (str[i+2] - 0x30) *8;
                    oct += str[i+3] - 0x30;
                    i+=3;
                } else {
                    switch (str[++i]) {
                        case 'b' :
                            oct = 8;
                            break;
                        case 't' :
                            oct = 9;
                            break;
                        case 'n' :
                            oct = 10;
                            break;
                        case 'f' :
                            oct = 12;
                            break;
                        case 'r' :
                            oct = 13;
                            break;
                        default:
                            oct = str[i];
                            break;
                    }
                }
                if (width > 252 && pdev->ForOPDFRead && pdev->ProduceDSC) {
                    stream_write(pdev->strm, "\n", 1);
                    width = 0;
                }
                stream_write(pdev->strm, &hex[(oct & 0xf0) >> 4], 1);
                stream_write(pdev->strm, &hex[oct & 0x0f], 1);
                width += 2;
            } else {
                if (width > 252 && pdev->ForOPDFRead && pdev->ProduceDSC) {
                    stream_write(pdev->strm, "\n", 1);
                    width = 0;
                }
                stream_write(pdev->strm, &hex[(str[i] & 0xf0) >> 4], 1);
                stream_write(pdev->strm, &hex[str[i] & 0x0f], 1);
                width += 2;
            }
        }
        stream_write(pdev->strm, ">", 1);
        if (pdev->ForOPDFRead && pdev->ProduceDSC)
            stream_write(pdev->strm, "\n", 1);
        return 0;
    } else
        return pdf_encrypt_encoded_string(pdev, str, size, object_id);
}


static int
pdf_put_encoded_hex_string(const gx_device_pdf *pdev, const byte *str, uint size, gs_id object_id)
{
    (emprintf_program_ident(pdev->memory, gs_program_name(), gs_revision_number()), errprintf(pdev->memory, "Unimplemented function : pdf_put_encoded_hex_string\n"));

    stream_write(pdev->strm, str, size);
    return ((-28));
}







static int
pdf_scan_item(const gx_device_pdf * pdev, const byte * p, uint l, gs_id object_id)
{
    const byte *q = p;
    int n = l;

    if (*q == ' ' || *q == 't' || *q == '\r' || *q == '\n')
        return (l > 0 ? 1 : 0);
    for (q++, n--; n; q++, n--) {
        if (*q == ' ' || *q == 't' || *q == '\r' || *q == '\n')
            return q - p;
        if (*q == '/' || *q == '[' || *q == ']' || *q == '{' || *q == '}' || *q == '(' || *q == '<')
            return q - p;

    }
    return l;
}


static int
pdf_put_composite(const gx_device_pdf * pdev, const byte * vstr, uint size, gs_id object_id)
{
    if (!pdev->KeyLength || object_id == (gs_id)-1) {
        if (pdev->ForOPDFRead && pdev->ProduceDSC) {
            spputc(pdev->strm, (byte)'\n');
            if (size > 255) {
                const byte *start, *p, *end, *save;
                int width = 0;

                end = vstr + size;
                start = p = vstr;
                while (p < end) {
                    if(*p == '\r' || *p == '\n') {
                        width = 0;
                        p++;
                        continue;
                    }
                    if (width > 254) {
                        save = p;

                        while (p > start) {
                            if (*p == '/' || *p == '[' || *p == '{' || *p == '(' || *p == ' ') {
                                stream_write(pdev->strm, start, p - start);
                                spputc(pdev->strm, (byte)'\n');
                                start = p;
                            }
                            else p--;
                        }
                        if (p == start) {
                            stream_write(pdev->strm, start, save - start);
                            spputc(pdev->strm, (byte)'\n');
                            start = save;
                        }
                    } else {
                        width++;
                        p++;
                    }
                }
            } else {
                stream_write(pdev->strm, vstr, size);
            }
        } else {
            stream_write(pdev->strm, vstr, size);
        }
    } else {
        const byte *p = vstr;
        int l = size, n;

        for (;l > 0 ;) {
            if (*p == '(')
                n = pdf_encrypt_encoded_string(pdev, p, l, object_id);
            else {
                n = pdf_scan_item(pdev, p, l, object_id);
                stream_write(pdev->strm, p, n);
            }
            l -= n;
            p += n;
        }
    }
    return 0;
}






int
pdf_put_string(const gx_device_pdf * pdev, const byte * str, uint size)
{
    s_write_ps_string(pdev->strm, str, size, (pdev->binary_ok ? 1 : 0));

    return 0;
}


int
pdf_write_value(const gx_device_pdf * pdev, const byte * vstr, uint size, gs_id object_id)
{
    if (size > 0 && vstr[0] == '/')
        return pdf_put_name(pdev, vstr + 1, size - 1);
    else if (size > 5 && vstr[0] == 0 && vstr[1] == 0 && vstr[2] == 0 && vstr[size - 1] == 0 && vstr[size - 2] == 0)
        return pdf_put_name(pdev, vstr + 4, size - 5);
    else if (size > 3 && vstr[0] == 0 && vstr[1] == 0 && vstr[size - 1] == 0)
        return pdf_put_name(pdev, vstr + 3, size - 4);
    else if (size > 1 && (vstr[0] == '[' || vstr[0] == '{'))
        return pdf_put_composite(pdev, vstr, size, object_id);
    else if (size > 2 && vstr[0] == '<' && vstr[1] == '<')
        return pdf_put_composite(pdev, vstr, size, object_id);
    else if (size > 1 && vstr[0] == '(') {
        if (pdev->ForOPDFRead)
            return pdf_put_encoded_string_as_hex(pdev, vstr, size, object_id);
        else
            return pdf_put_encoded_string(pdev, vstr, size, object_id);
    }
    else if (size > 1 && vstr[0] == '<')
        return pdf_put_encoded_hex_string(pdev, vstr, size, object_id);
    stream_write(pdev->strm, vstr, size);
    return 0;
}



int
pdf_put_filters(cos_dict_t *pcd, gx_device_pdf *pdev, stream *s,
                const pdf_filter_names_t *pfn)
{
    const char *filter_name = 0;
    bool binary_ok = ((bool)1);
    stream *fs = s;
    cos_dict_t *decode_parms = 0;
    int code;

    for (; fs != 0; fs = fs->strm) {
        const stream_state *st = fs->state;
        const stream_template *templat = st->templat;



        if ((templat->process == (s_A85E_template).process))
            binary_ok = ((bool)0);
        else if ((templat->process == (s_CFE_template).process)) {
            cos_param_list_writer_t writer;
            stream_CF_state cfs;

            decode_parms =
                cos_dict_alloc(pdev, "pdf_put_image_filters(decode_parms)");
            if (decode_parms == 0)
                return ((-25));
            do { if ((code = (cos_param_list_writer_init(&writer, decode_parms, 0))) < 0) return code; } while (0);




            cfs = *(const stream_CF_state *)st;
            if (cfs.EndOfBlock)
                cfs.Rows = 0;
            do { if ((code = (s_CF_get_params((gs_param_list *)&writer, &cfs, ((bool)0)))) < 0) return code; } while (0);
            filter_name = pfn->CCITTFaxDecode;
        } else if ((templat->process == (s_DCTE_template).process))
            filter_name = pfn->DCTDecode;
        else if ((templat->process == (s_zlibE_template).process))
            filter_name = pfn->FlateDecode;
        else if ((templat->process == (s_LZWE_template).process))
            filter_name = pfn->LZWDecode;
# 2223 "./devices/vector/gdevpdfu.c"
        else if ((templat->process == (s_PNGPE_template).process)) {

            const stream_PNGP_state *const ss =
                (const stream_PNGP_state *)st;

            decode_parms =
                cos_dict_alloc(pdev, "pdf_put_image_filters(decode_parms)");
            if (decode_parms == 0)
                return ((-25));
            do { if ((code = (cos_dict_put_c_key_int(decode_parms, "/Predictor", ss->Predictor))) < 0) return code; } while (0);

            do { if ((code = (cos_dict_put_c_key_int(decode_parms, "/Columns", ss->Columns))) < 0) return code; } while (0);

            if (ss->Colors != 1)
                do { if ((code = (cos_dict_put_c_key_int(decode_parms, "/Colors", ss->Colors))) < 0) return code; } while (0);

            if (ss->BitsPerComponent != 8)
                do { if ((code = (cos_dict_put_c_key_int(decode_parms, "/BitsPerComponent", ss->BitsPerComponent))) < 0) return code; } while (0);


        } else if ((templat->process == (s_RLE_template).process))
            filter_name = pfn->RunLengthDecode;

    }
    if (filter_name) {
        if (binary_ok) {
            do { if ((code = (cos_dict_put_c_strings(pcd, pfn->Filter, filter_name))) < 0) return code; } while (0);
            if (decode_parms)
                do { if ((code = (cos_dict_put_c_key_object(pcd, pfn->DecodeParms, ((cos_object_t *)&((decode_parms)->cos_procs))))) < 0) return code; } while (0);

        } else {
            cos_array_t *pca =
                cos_array_alloc(pdev, "pdf_put_image_filters(Filters)");

            if (pca == 0)
                return ((-25));
            do { if ((code = (cos_array_add_c_string(pca, pfn->ASCII85Decode))) < 0) return code; } while (0);
            do { if ((code = (cos_array_add_c_string(pca, filter_name))) < 0) return code; } while (0);
            do { if ((code = (cos_dict_put_c_key_object(pcd, pfn->Filter, ((cos_object_t *)&((pca)->cos_procs))))) < 0) return code; } while (0);

            if (decode_parms) {
                pca = cos_array_alloc(pdev,
                                      "pdf_put_image_filters(DecodeParms)");
                if (pca == 0)
                    return ((-25));
                do { if ((code = (cos_array_add_c_string(pca, "null"))) < 0) return code; } while (0);
                do { if ((code = (cos_array_add_object(pca, ((cos_object_t *)&((decode_parms)->cos_procs))))) < 0) return code; } while (0);
                do { if ((code = (cos_dict_put_c_key_object(pcd, pfn->DecodeParms, ((cos_object_t *)&((pca)->cos_procs))))) < 0) return code; } while (0);

            }
        }
    } else if (!binary_ok)
        do { if ((code = (cos_dict_put_c_strings(pcd, pfn->Filter, pfn->ASCII85Decode))) < 0) return code; } while (0);
    return 0;
}


static int
pdf_flate_binary(gx_device_pdf *pdev, psdf_binary_writer *pbw)
{
    const stream_template *templat = (pdev->CompatibilityLevel < 1.3 ?
                    &s_LZWE_template : &s_zlibE_template);
    stream_state *st = s_alloc_state(pdev->v_memory, templat->stype,
                                     "pdf_write_function");

    if (st == 0)
        return ((-25));
    if (templat->set_defaults)
        templat->set_defaults(st);
    return psdf_encode_binary(pbw, templat, st);
}





int
pdf_begin_data(gx_device_pdf *pdev, pdf_data_writer_t *pdw)
{
    return pdf_begin_data_stream(pdev, pdw,
                                 1 | 2, 0);
}

int
pdf_append_data_stream_filters(gx_device_pdf *pdev, pdf_data_writer_t *pdw,
                      int orig_options, gs_id object_id)
{
    stream *s = pdev->strm;
    int options = orig_options;


    static const char *const fnames[4] = {
        "", "/Filter/ASCII85Decode", "/Filter/FlateDecode",
        "/Filter[/ASCII85Decode/FlateDecode]"
    };
    static const char *const fnames1_2[4] = {
        "", "/Filter/ASCII85Decode", "/Filter/LZWDecode",
        "/Filter[/ASCII85Decode/LZWDecode]"
    };
    int filters = 0;
    int code;

    if (options & 2) {
        filters |= 2;
        options |= 1;
    }
    if ((options & 1) && !pdev->binary_ok)
        filters |= 1;
    if (!(options & 4)) {
        stream_puts(s, (pdev->CompatibilityLevel < 1.3 ?
            fnames1_2[filters] : fnames[filters]));
        if (pdev->ResourcesBeforeUsage) {
            pdw->length_pos = stell(s) + 8;
            stream_puts(s, "/Length             >>stream\n");
            pdw->length_id = -1;
        } else {
            pdw->length_pos = -1;
            pdw->length_id = pdf_obj_ref(pdev);
            pprintld1(s, "/Length %ld 0 R>>stream\n", pdw->length_id);
        }
    }
    if (options & 8) {
        code = pdf_begin_encrypt(pdev, &s, object_id);
        if (code < 0)
            return code;
        pdev->strm = s;
        pdw->encrypted = ((bool)1);
    } else
        pdw->encrypted = ((bool)0);
    if (options & 1) {
        code = psdf_begin_binary((gx_device_psdf *)pdev, &pdw->binary);
        if (code < 0)
            return code;
    } else {
        code = 0;
        pdw->binary.target = pdev->strm;
        pdw->binary.dev = (gx_device_psdf *)pdev;
        pdw->binary.strm = pdev->strm;
    }
    pdw->start = stell(s);
    if (filters & 2)
        code = pdf_flate_binary(pdev, &pdw->binary);
    return code;


}

int
pdf_begin_data_stream(gx_device_pdf *pdev, pdf_data_writer_t *pdw,
                      int options, gs_id object_id)
{ int code;



    pdw->pdev = pdev;
    pdw->binary.target = pdev->strm;
    pdw->binary.dev = (gx_device_psdf *)pdev;
    pdw->binary.strm = 0;
    code = pdf_open_aside(pdev, resourceNone, 0L, &pdw->pres, !object_id,
                options);
    if (object_id != 0)
        pdf_reserve_object_id(pdev, pdw->pres, object_id);
    pdw->binary.strm = pdev->strm;
    return code;
}


int
pdf_end_data(pdf_data_writer_t *pdw)
{ int code;

    code = pdf_close_aside(pdw->pdev);
    if (code < 0)
        return code;
    code = cos_write_object(((cos_object_t *)&((pdw->pres->object)->cos_procs)), pdw->pdev, resourceNone);
    if (code < 0)
        return code;
    return 0;
}


static int pdf_function_array(gx_device_pdf *pdev, cos_array_t *pca,
                               const gs_function_info_t *pinfo);
int
pdf_function_scaled(gx_device_pdf *pdev, const gs_function_t *pfn,
                    const gs_range_t *pranges, cos_value_t *pvalue)
{
    if (pranges == ((void*)0))
        return pdf_function(pdev, pfn, pvalue);
    {





        gs_memory_t *mem = pdev->v_memory;
        gs_function_t *psfn;
        gs_range_t *ranges = (gs_range_t *)
            (*(mem)->procs.alloc_byte_array)(mem, pfn->params.n, sizeof(gs_range_t), "pdf_function_scaled");

        int i, code;

        if (ranges == 0)
            return ((-25));
        for (i = 0; i < pfn->params.n; ++i) {
            double rbase = pranges[i].rmin;
            double rdiff = pranges[i].rmax - rbase;
            double invbase = -rbase / rdiff;

            ranges[i].rmin = invbase;
            ranges[i].rmax = invbase + 1.0 / rdiff;
        }
        code = ((pfn)->head.procs.make_scaled(pfn, &psfn, ranges, mem));
        if (code >= 0) {
            code = pdf_function(pdev, psfn, pvalue);
            ((psfn)->head.procs.free(psfn, ((bool)1), mem));
        }
        ((mem)->procs.free_object(mem, ranges, "pdf_function_scaled"));
        return code;
    }
}
static int
pdf_function_aux(gx_device_pdf *pdev, const gs_function_t *pfn,
             pdf_resource_t **ppres)
{
    gs_function_info_t info;
    cos_param_list_writer_t rlist;
    pdf_resource_t *pres;
    cos_object_t *pcfn;
    cos_dict_t *pcd;
    int code = pdf_alloc_resource(pdev, resourceFunction, 0L, &pres, -1);

    if (code < 0) {
        *ppres = 0;
        return code;
    }
    *ppres = pres;
    pcfn = pres->object;
    ((pfn)->head.procs.get_info(pfn, &info));
    if (((pfn)->head.type) == function_type_ArrayedOutput) {





        cos_array_t *pca;

        cos_become(pcfn, (&cos_array_procs));
        pca = (cos_array_t *)pcfn;
        return pdf_function_array(pdev, pca, &info);
    }
    if (info.DataSource != 0) {
        psdf_binary_writer writer;
        stream *save = pdev->strm;
        cos_stream_t *pcos;
        stream *s;

        cos_become(pcfn, (&cos_stream_procs));
        pcos = (cos_stream_t *)pcfn;
        pcd = cos_stream_dict(pcos);
        s = cos_write_stream_alloc(pcos, pdev, "pdf_function");
        if (s == 0)
            return ((-25));
        pdev->strm = s;
        code = psdf_begin_binary((gx_device_psdf *)pdev, &writer);
        if (code >= 0 && info.data_size > 30
            )
            code = pdf_flate_binary(pdev, &writer);
        if (code >= 0) {
            static const pdf_filter_names_t fnames = {
                "/ASCII85Decode", "/ASCIIHexDecode", "/CCITTFaxDecode", "/DCTDecode", "/DecodeParms", "/Filter", "/FlateDecode", "/LZWDecode", "/RunLengthDecode", "/JBIG2Decode", "/JPXDecode"
            };

            code = pdf_put_filters(pcd, pdev, writer.strm, &fnames);
        }
        if (code >= 0) {
            byte buf[100];
            ulong pos;
            uint count;
            const byte *ptr;

            for (pos = 0; pos < info.data_size; pos += count) {
                count = (((sizeof(buf)) < (info.data_size - pos)) ? (sizeof(buf)) : (info.data_size - pos));
                (*(info.DataSource)->access)(info.DataSource, (ulong)(pos), count, buf, &ptr);

                stream_write(writer.strm, ptr, count);
            }
            code = psdf_end_binary(&writer);
            sclose(s);
        }
        pdev->strm = save;
        if (code < 0)
            return code;
    } else {
        cos_become(pcfn, (&cos_dict_procs));
        pcd = (cos_dict_t *)pcfn;
    }
    if (info.Functions != 0) {
        cos_array_t *functions =
            cos_array_alloc(pdev, "pdf_function(Functions)");
        cos_value_t v;

        if (functions == 0)
            return ((-25));
        if ((code = pdf_function_array(pdev, functions, &info)) < 0 ||
            (code = cos_dict_put_c_key(pcd, "/Functions",
                                       cos_object_value(&v, ((cos_object_t *)&((functions)->cos_procs))))) < 0
            ) {
            cos_free(((cos_object_t *)&((functions)->cos_procs)), "pdf_function(Functions)");
            return code;
        }
    }
    code = cos_param_list_writer_init(&rlist, pcd, 1);
    if (code < 0)
        return code;
    return ((pfn)->head.procs.get_params(pfn, (gs_param_list *)&rlist));
}
static int
functions_equal(gx_device_pdf * pdev, pdf_resource_t *pres0, pdf_resource_t *pres1)
{
    return ((bool)1);
}
int
pdf_function(gx_device_pdf *pdev, const gs_function_t *pfn, cos_value_t *pvalue)
{
    pdf_resource_t *pres;
    int code = pdf_function_aux(pdev, pfn, &pres);

    if (code < 0)
        return code;
    code = pdf_substitute_resource(pdev, &pres, resourceFunction, functions_equal, ((bool)0));
    if (code < 0)
        return code;
    pres->where_used |= pdev->used_mask;
    cos_object_value(pvalue, ((cos_object_t *)&((pres->object)->cos_procs)));
    return 0;
}
static int pdf_function_array(gx_device_pdf *pdev, cos_array_t *pca,
                               const gs_function_info_t *pinfo)
{
    int i, code = 0;
    cos_value_t v;

    for (i = 0; i < pinfo->num_Functions; ++i) {
        if ((code = pdf_function(pdev, pinfo->Functions[i], &v)) < 0 ||
            (code = cos_array_add(pca, &v)) < 0
            ) {
            break;
        }
    }
    return code;
}


int
pdf_write_function(gx_device_pdf *pdev, const gs_function_t *pfn, long *pid)
{
    cos_value_t value;
    int code = pdf_function(pdev, pfn, &value);

    if (code < 0)
        return code;
    *pid = value.contents.object->id;
    return 0;
}


int
pdf_write_font_bbox(gx_device_pdf *pdev, const gs_int_rect *pbox)
{
    stream *s = pdev->strm;






    int x = pbox->q.x + ((pbox->p.x == pbox->q.x) ? 1000 : 0);
    int y = pbox->q.y + ((pbox->p.y == pbox->q.y) ? 1000 : 0);

    pprintd4(s, "/FontBBox[%d %d %d %d]",
             pbox->p.x, pbox->p.y, x, y);
    return 0;
}


int
pdf_write_font_bbox_float(gx_device_pdf *pdev, const gs_rect *pbox)
{
    stream *s = pdev->strm;






    float x = pbox->q.x + ((pbox->p.x == pbox->q.x) ? 1000 : 0);
    float y = pbox->q.y + ((pbox->p.y == pbox->q.y) ? 1000 : 0);

    pprintg4(s, "/FontBBox[%g %g %g %g]",
             pbox->p.x, pbox->p.y, x, y);
    return 0;
}
