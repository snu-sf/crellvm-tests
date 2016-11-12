# 1 "./devices/gdevupd.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./devices/gdevupd.c" 2
# 87 "./devices/gdevupd.c"
# 1 "./base/stdint_.h" 1
# 25 "./base/stdint_.h"
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
# 88 "./devices/gdevupd.c" 2



# 1 "./base/gdevprn.h" 1
# 22 "./base/gdevprn.h"
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
# 23 "./base/gdevprn.h" 2
# 1 "./base/string_.h" 1
# 24 "./base/gdevprn.h" 2
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
# 25 "./base/gdevprn.h" 2
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
# 26 "./base/gdevprn.h" 2

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
# 28 "./base/gdevprn.h" 2
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
# 29 "./base/gdevprn.h" 2
# 1 "./base/gxdevice.h" 1
# 23 "./base/gxdevice.h"
# 1 "./base/gxdevcli.h" 1
# 24 "./base/gxdevcli.h"
# 1 "./base/gscompt.h" 1
# 41 "./base/gscompt.h"
typedef struct gs_composite_s gs_composite_t;






gs_id gs_composite_id(const gs_composite_t * pcte);
# 25 "./base/gxdevcli.h" 2
# 1 "./base/gsdcolor.h" 1
# 22 "./base/gsdcolor.h"
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





typedef struct gs_param_list_s gs_param_list;
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
# 26 "./base/gxdevice.h" 2




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
# 30 "./base/gdevprn.h" 2
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
# 31 "./base/gdevprn.h" 2
# 1 "./base/gxclist.h" 1
# 24 "./base/gxclist.h"
# 1 "./base/gxband.h" 1
# 22 "./base/gxband.h"
# 1 "./base/gxclio.h" 1
# 32 "./base/gxclio.h"
typedef void *clist_file_ptr;

struct clist_io_procs_s {
# 44 "./base/gxclio.h"
    int (*DO_NOT_USE_FOPEN)(char fname[4096], const char *fmode,
                    clist_file_ptr * pcf,
                    gs_memory_t * mem, gs_memory_t *data_mem,
                    bool ok_to_compress);




    int (*fclose)(clist_file_ptr cf, const char *fname, bool delete);




    int (*unlink)(const char *fname);



    int (*fwrite_chars)(const void *data, uint len, clist_file_ptr cf);



    int (*fread_chars)(void *data, uint len, clist_file_ptr cf);







    int (*set_memory_warning)(clist_file_ptr cf, int bytes_left);





    int (*ferror_code)(clist_file_ptr cf);

    int64_t (*ftell)(clist_file_ptr cf);






    void (*rewind)(clist_file_ptr cf, bool discard_data, const char *fname);

    int (*fseek)(clist_file_ptr cf, int64_t offset, int mode, const char *fname);
};

typedef struct clist_io_procs_s clist_io_procs_t;

extern const clist_io_procs_t *clist_io_procs_file_global;
extern const clist_io_procs_t *clist_io_procs_memory_global;
# 23 "./base/gxband.h" 2




typedef gx_color_index gx_color_usage_bits;




gx_color_usage_bits gx_color_index2usage(gx_device *dev, gx_color_index);




typedef struct gx_colors_usage_s {
    gx_color_usage_bits or;
    bool slow_rop;

    gs_int_rect trans_bbox;

} gx_color_usage_t;




typedef struct gx_band_page_info_s {
    char cfname[4096];
    clist_file_ptr cfile;
    char bfname[4096];
    clist_file_ptr bfile;
    const clist_io_procs_t *io_procs;
    uint tile_cache_size;
    ulong line_ptrs_offset;
    int64_t bfile_end_pos;
    gx_band_params_t band_params;

} gx_band_page_info_t;
# 25 "./base/gxclist.h" 2
# 1 "./base/gxbcache.h" 1
# 36 "./base/gxbcache.h"
typedef struct gx_cached_bits_head_s {
    uint size;
    uint depth;
} gx_cached_bits_head;
# 54 "./base/gxbcache.h"
typedef struct gx_cached_bits_s {
    gx_cached_bits_head head; ushort width, height, shift; ushort raster; gx_bitmap_id id;
} gx_cached_bits;
# 72 "./base/gxbcache.h"
typedef struct gx_bits_cache_chunk_s gx_bits_cache_chunk;
struct gx_bits_cache_chunk_s {
    gx_bits_cache_chunk *next;
    byte *data;
    uint size;
    uint allocated;
};
# 88 "./base/gxbcache.h"
typedef struct gx_bits_cache_s {
    gx_bits_cache_chunk *chunks; uint cnext; uint bsize; uint csize;
} gx_bits_cache;







void gx_bits_cache_init(gx_bits_cache *, gx_bits_cache_chunk *);




void gx_bits_cache_chunk_init(gx_bits_cache_chunk *, byte *, uint);






int gx_bits_cache_alloc(gx_bits_cache *, ulong, gx_cached_bits_head **);


void gx_bits_cache_shorten(gx_bits_cache *, gx_cached_bits_head *,
                           uint, gx_bits_cache_chunk *);



void gx_bits_cache_free(gx_bits_cache *, gx_cached_bits_head *,
                        gx_bits_cache_chunk *);
# 26 "./base/gxclist.h" 2

# 1 "./base/gxcolor2.h" 1
# 23 "./base/gxcolor2.h"
# 1 "./base/gscolor2.h" 1
# 23 "./base/gscolor2.h"
# 1 "./base/gscindex.h" 1
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
# 24 "./base/gxcolor2.h" 2





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
# 28 "./base/gxclist.h" 2
# 1 "./base/gxdevbuf.h" 1
# 40 "./base/gxdevbuf.h"
typedef struct gx_device_buf_space_s {
    ulong bits;
    ulong line_ptrs;
    uint raster;
} gx_device_buf_space_t;

typedef struct gx_device_buf_procs_s {
# 65 "./base/gxdevbuf.h"
    int (*create_buf_device)(gx_device **pbdev, gx_device *target, int y, const gx_render_plane_t *render_plane, gs_memory_t *mem, gx_color_usage_t *color_usage);
# 76 "./base/gxdevbuf.h"
    int (*size_buf_device)(gx_device_buf_space_t *space, gx_device *target, const gx_render_plane_t *render_plane, int height, bool for_band);
# 96 "./base/gxdevbuf.h"
    int (*setup_buf_device)(gx_device *bdev, byte *buffer, int bytes_per_line, byte **line_ptrs , int y, int setup_height, int full_height);
# 106 "./base/gxdevbuf.h"
    void (*destroy_buf_device)(gx_device *bdev);

} gx_device_buf_procs_t;


int gx_default_create_buf_device(gx_device **pbdev, gx_device *target, int y, const gx_render_plane_t *render_plane, gs_memory_t *mem, gx_color_usage_t *color_usage);
int gx_default_size_buf_device(gx_device_buf_space_t *space, gx_device *target, const gx_render_plane_t *render_plane, int height, bool for_band);
int gx_default_setup_buf_device(gx_device *bdev, byte *buffer, int bytes_per_line, byte **line_ptrs , int y, int setup_height, int full_height);
void gx_default_destroy_buf_device(gx_device *bdev);
# 29 "./base/gxclist.h" 2
# 1 "./base/gxistate.h" 1
# 29 "./base/gxistate.h"
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
# 30 "./base/gxistate.h" 2
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
# 30 "./base/gxclist.h" 2
# 72 "./base/gxclist.h"
typedef struct gx_saved_page_s {
    char dname[32];
    gx_device_color_info color_info;

    char cfname[4096];
    char bfname[4096];
    const clist_io_procs_t *io_procs;
    uint tile_cache_size;
    int64_t bfile_end_pos;
    gx_band_params_t band_params;

    gs_memory_t *mem;


    int paramlist_len;
    byte *paramlist;
} gx_saved_page;




typedef struct gx_placed_page_s {
    gx_saved_page *page;
    gs_int_point offset;
} gx_placed_page;
# 124 "./base/gxclist.h"
typedef struct {
    ulong offset;


} tile_hash;

typedef struct {
    gx_cached_bits_head head; ushort width, height, shift; ushort raster; gx_bitmap_id id;


    byte x_reps, y_reps;
    ushort rep_shift;
    ushort index;
    ushort num_bands;
    byte num_planes;




} tile_slot;


typedef struct cmd_prefix_s cmd_prefix;
struct cmd_prefix_s {
    cmd_prefix *next;
    uint size;
    ulong id;
};



typedef struct cmd_list_s {
    cmd_prefix *head, *tail;
} cmd_list;







extern const gs_imager_state clist_imager_state_initial;






typedef struct gx_clist_state_s gx_clist_state;
# 217 "./base/gxclist.h"
typedef struct clist_icc_serial_entry_s clist_icc_serial_entry_t;

struct clist_icc_serial_entry_s {
    int64_t hashcode;
    int64_t file_position;
    int size;
};

typedef struct clist_icctable_entry_s clist_icctable_entry_t;

struct clist_icctable_entry_s {
    clist_icc_serial_entry_t serial_data;
    clist_icctable_entry_t *next;
    cmm_profile_t *icc_profile;

    bool render_is_valid;




};






typedef struct clist_icctable_s clist_icctable_t;

struct clist_icctable_s {
    int tablesize;
    gs_memory_t *memory;
    clist_icctable_entry_t *head;
    clist_icctable_entry_t *final;
};






typedef struct gx_device_clist_common_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target; gx_device_buf_procs_t buf_procs; gs_memory_t *bandlist_memory; byte *data; uint data_size; gx_band_params_t band_params; bool do_not_open_or_close_bandfiles; int is_printer; gx_bits_cache_chunk chunk; gx_bits_cache bits; uint tile_hash_mask; uint tile_band_mask_size; tile_hash *tile_table; int ymin, ymax; gx_band_page_info_t page_info; int nbands; int64_t trans_dev_icc_hash; clist_icctable_t *icc_table; gsicc_link_cache_t *icc_cache_cl; int icc_cache_list_len; gsicc_link_cache_t **icc_cache_list;
} gx_device_clist_common;
# 274 "./base/gxclist.h"
typedef struct clist_writer_cropping_buffer_s clist_writer_cropping_buffer_t;

struct clist_writer_cropping_buffer_s {
    int cropping_min, cropping_max;
    uint mask_id, temp_mask_id;
    clist_writer_cropping_buffer_t *next;
};







typedef struct clist_icc_color_s {
    int64_t icc_hash;
    byte icc_num_components;
    bool is_lab;
    gsicc_profile_t default_match;
    gsicc_colorbuffer_t data_cs;
} clist_icc_color_t;

typedef struct clist_color_space_s {
    byte byte1;
    gs_id id;
    clist_icc_color_t icc_info;
    const gs_color_space *space;
} clist_color_space_t;

struct gx_device_clist_writer_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target; gx_device_buf_procs_t buf_procs; gs_memory_t *bandlist_memory; byte *data; uint data_size; gx_band_params_t band_params; bool do_not_open_or_close_bandfiles; int is_printer; gx_bits_cache_chunk chunk; gx_bits_cache bits; uint tile_hash_mask; uint tile_band_mask_size; tile_hash *tile_table; int ymin, ymax; gx_band_page_info_t page_info; int nbands; int64_t trans_dev_icc_hash; clist_icctable_t *icc_table; gsicc_link_cache_t *icc_cache_cl; int icc_cache_list_len; gsicc_link_cache_t **icc_cache_list;
    int error_code;
    gx_clist_state *states;
    byte *cbuf;
    byte *cnext;
    byte *cend;
    cmd_list *ccl;
    cmd_list band_range_list;
    int band_range_min, band_range_max;
    uint tile_max_size;
    uint tile_max_count;
    gx_strip_bitmap tile_params;
    int tile_depth;
    int tile_known_min, tile_known_max;







    gs_imager_state imager_state;
    bool pdf14_needed;


    int pdf14_trans_group_level;
    int pdf14_smask_level;
    bool page_pdf14_needed;

    float dash_pattern[11];
    const gx_clip_path *clip_path;

    gs_id clip_path_id;
    clist_color_space_t color_space;

    gs_id transfer_ids[4];
    gs_id black_generation_id;
    gs_id undercolor_removal_id;
    gs_id device_halftone_id;
    gs_id image_enum_id;

    int error_is_retryable;


    int permanent_error;
    int driver_call_nesting;
    int ignore_lo_mem_warnings;

    int (*free_up_bandlist_memory)(gx_device *dev, bool flush_current);
    int disable_mask;
    gs_pattern1_instance_t *pinst;
    int cropping_min, cropping_max;
    int save_cropping_min, save_cropping_max;
    bool cropping_saved;
    int cropping_level;
    clist_writer_cropping_buffer_t *cropping_stack;
    ulong ins_count;
    uint mask_id_count;
    uint mask_id;
    uint temp_mask_id;
    bool is_fillpage;
    gx_device_color_info clist_color_info;






};
# 390 "./base/gxclist.h"
typedef struct clist_render_thread_control_s clist_render_thread_control_t;




typedef struct gx_device_clist_reader_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target; gx_device_buf_procs_t buf_procs; gs_memory_t *bandlist_memory; byte *data; uint data_size; gx_band_params_t band_params; bool do_not_open_or_close_bandfiles; int is_printer; gx_bits_cache_chunk chunk; gx_bits_cache bits; uint tile_hash_mask; uint tile_band_mask_size; tile_hash *tile_table; int ymin, ymax; gx_band_page_info_t page_info; int nbands; int64_t trans_dev_icc_hash; clist_icctable_t *icc_table; gsicc_link_cache_t *icc_cache_cl; int icc_cache_list_len; gsicc_link_cache_t **icc_cache_list;
    gx_render_plane_t yplane;

    const gx_placed_page *pages;
    gx_color_usage_t *color_usage_array;
    int num_pages;
    void *offset_map;
    int num_render_threads;
    clist_render_thread_control_t *render_threads;
    byte *main_thread_data;
    int curr_render_thread;
    int thread_lookahead_direction;
    int next_band;

} gx_device_clist_reader;

union gx_device_clist_s {
    gx_device_clist_common common;
    gx_device_clist_reader reader;
    gx_device_clist_writer writer;
};



typedef union gx_device_clist_s gx_device_clist;


extern const gs_memory_struct_type_t st_device_clist;
# 454 "./base/gxclist.h"
extern const gx_device_procs gs_clist_device_procs;

void clist_init_io_procs(gx_device_clist *pclist_dev, bool in_memory);


int clist_finish_page(gx_device * dev, bool flush);


int clist_close_output_file(gx_device *dev);





int clist_close_page_info(gx_band_page_info_t *ppi);




typedef struct gx_device_printer_s gx_device_printer;



int clist_setup_params(gx_device *dev);
# 490 "./base/gxclist.h"
int clist_render_rectangle(gx_device_clist *cdev,
                           const gs_int_rect *prect, gx_device *bdev,
                           const gx_render_plane_t *render_plane,
                           bool clear);



void clist_update_trans_bbox(gx_device_clist_writer *dev, gs_int_rect *bbox);



gx_device_clist *
clist_make_accum_device(gx_device *target, const char *dname, void *base, int space,
                        gx_device_buf_procs_t *buf_procs, gx_band_params_t *band_params,
                        bool use_memory_clist, bool uses_transparency,
                        gs_pattern1_instance_t *pinst);


int clist_data_size(const gx_device_clist *cdev, int select);

int clist_get_data(const gx_device_clist *cdev, int select, int64_t offset, byte *buf, int length);

int clist_put_data(const gx_device_clist *cdev, int select, int64_t offset, const byte *buf, int length);


int clist_write_color_usage_array(gx_device_clist_writer *cldev);



int clist_writer_color_usage(gx_device_clist_writer *cldev, int y, int height,
                     gx_color_usage_t *color_usage, int *range_start);




int clist_icc_writetable(gx_device_clist_writer *cldev);


int64_t clist_icc_addprofile(gx_device_clist_writer *cdev, cmm_profile_t *iccprofile, int *iccsize);


bool clist_icc_searchtable(gx_device_clist_writer *cdev, int64_t hashcode);


int clist_icc_addentry(gx_device_clist_writer *cdev, int64_t hashcode,
                       cmm_profile_t *icc_profile);


int clist_free_icc_table(clist_icctable_t *icc_table, gs_memory_t *memory);






int clist_read_chunk(gx_device_clist_reader *crdev, int64_t position, int size, unsigned char *buf);




int clist_render_init(gx_device_clist *dev);

int
clist_close_writer_and_init_reader(gx_device_clist *cldev);

void
clist_select_render_plane(gx_device *dev, int y, int height,
                          gx_render_plane_t *render_plane, int index);

int clist_rasterize_lines(gx_device *dev, int y, int lineCount,
                                  gx_device *bdev,
                                  const gx_render_plane_t *render_plane,
                                  int *pmy);


int
clist_enable_multi_thread_render(gx_device *dev);


void
clist_teardown_render_threads(gx_device *dev);
# 32 "./base/gdevprn.h" 2
# 1 "./base/gxclthrd.h" 1
# 31 "./base/gxclthrd.h"
gx_device * setup_device_and_mem_for_thread(gs_memory_t *chunk_base_mem, gx_device *dev, bool bg_print, gsicc_link_cache_t **cachep);





void teardown_device_and_mem_for_thread(gx_device *dev, gp_thread_id thread_id, bool bg_print);


typedef enum {
    THREAD_ERROR = -1,
    THREAD_IDLE = 0,
    THREAD_DONE = 1,
    THREAD_BUSY = 2
} thread_status;






struct clist_render_thread_control_s {
    thread_status status;

    gs_memory_t *memory;
    gx_semaphore_t *sema_this;
    gx_semaphore_t *sema_group;
    gx_device *cdev;
    gx_device *bdev;
    int band;
    gp_thread_id thread;


    gx_process_page_options_t *options;
    void *buffer;



};
# 33 "./base/gdevprn.h" 2
# 1 "./base/gxclpage.h" 1
# 25 "./base/gxclpage.h"
typedef struct gx_saved_pages_list_element_s gx_saved_pages_list_element;

struct gx_saved_pages_list_element_s {
    int sequence_number;
    gx_saved_pages_list_element *prev;
    gx_saved_pages_list_element *next;
    gx_saved_page *page;
};

typedef struct gx_saved_pages_list_s {
    int PageCount;
    int count;
    int collated_copies;
    int save_banding_type;
    gx_saved_pages_list_element *head;
    gx_saved_pages_list_element *tail;
    gs_memory_t *mem;
} gx_saved_pages_list;
# 54 "./base/gxclpage.h"
int gdev_prn_save_page(gx_device_printer * pdev, gx_saved_page * page);
# 71 "./base/gxclpage.h"
int gdev_prn_render_pages(gx_device_printer * pdev,
                          const gx_placed_page * ppages, int count);




gx_saved_pages_list *gx_saved_pages_list_new(gx_device_printer *);
# 86 "./base/gxclpage.h"
int gx_saved_pages_list_add(gx_device_printer * pdev);




void gx_saved_pages_list_free(gx_saved_pages_list *list);





int gx_saved_pages_param_process(gx_device_printer *pdev, byte *param, int param_size);
# 113 "./base/gxclpage.h"
int gx_saved_pages_list_print(gx_device_printer *pdev, gx_saved_pages_list *list,
                              byte *control, int control_size, int *printed_count);
# 34 "./base/gdevprn.h" 2
# 58 "./base/gdevprn.h"
typedef struct gdev_space_params_s gdev_prn_space_params;





typedef struct gdev_banding_type gdev_prn_banding_type;



typedef struct gdev_prn_start_render_params_s gdev_prn_start_render_params;




typedef struct gx_page_queue_s gx_page_queue_t;





typedef struct gx_printer_device_procs_s {
# 89 "./base/gdevprn.h"
    int (*print_page)(gx_device_printer *, FILE *);







    int (*print_page_copies)(gx_device_printer *, FILE *, int);
# 106 "./base/gdevprn.h"
    gx_device_buf_procs_t buf_procs;
# 121 "./base/gdevprn.h"
    void (*get_space_params)(const gx_device_printer *, gdev_prn_space_params *);
# 137 "./base/gdevprn.h"
    int (*start_render_thread)(gdev_prn_start_render_params *);
# 152 "./base/gdevprn.h"
    int (*open_render_device)(gx_device_printer *);



    int (*close_render_device)(gx_device_printer *);
# 177 "./base/gdevprn.h"
    int (*buffer_page)(gx_device_printer *, FILE *, int);

} gx_printer_device_procs;
# 190 "./base/gdevprn.h"
typedef struct bg_print_s {
    gx_semaphore_t *sema;
    gx_device *device;
    gp_thread_id thread_id;
    int num_copies;
    int return_code;
} bg_print_t;
# 234 "./base/gdevprn.h"
struct gx_device_printer_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs;
    byte skip[(((sizeof(gx_device_memory)) > (sizeof(gx_device_clist))) ? (sizeof(gx_device_memory)) : (sizeof(gx_device_clist))) - sizeof(gx_device) + sizeof(double) ]; gx_printer_device_procs printer_procs; char fname[4096]; bool BLS_force_memory; bool OpenOutputFile; bool ReopenPerPage; bool Duplex; int Duplex_set; bool file_is_new; FILE *file; long buffer_space; byte *buf; gs_memory_t *buffer_memory; gs_memory_t *bandlist_memory; int (*free_up_bandlist_memory)(gx_device *dev, bool flush_current); gx_page_queue_t *page_queue; bool is_async_renderer; gx_device_printer *async_renderer; uint clist_disable_mask; bool bg_print_requested; bg_print_t bg_print; int num_render_threads_requested; gx_saved_pages_list *saved_pages_list; gx_device_procs save_procs_while_delaying_erasepage; gx_device_procs orig_procs;
};




extern const gs_memory_struct_type_t st_device_printer;






typedef int (*dev_proc_print_page_t)(gx_device_printer *, FILE *);


int gdev_prn_open(gx_device *dev);
int gdev_prn_output_page(gx_device *dev, int num_copies, int flush);
int gdev_prn_output_page_seekable(gx_device *dev, int num_copies, int flush);
int gdev_prn_bg_output_page(gx_device *dev, int num_copies, int flush);
int gdev_prn_bg_output_page_seekable(gx_device *dev, int num_copies, int flush);
int gdev_prn_close(gx_device *dev);


int gdev_prn_get_params(gx_device *dev, gs_param_list *plist);
int gdev_prn_put_params(gx_device *dev, gs_param_list *plist);
int gdev_prn_forwarding_dev_spec_op(gx_device *dev, int op, void *data, int datasize);
int gdev_prn_dev_spec_op(gx_device *dev, int op, void *data, int datasize);



void gx_default_get_space_params(const gx_device_printer *, gdev_prn_space_params *);


int gx_default_start_render_thread(gdev_prn_start_render_params *);
int gx_default_open_render_device(gx_device_printer *);
int gx_default_close_render_device(gx_device_printer *);
int gx_default_buffer_page(gx_device_printer *, FILE *, int);
# 361 "./base/gdevprn.h"
extern const gx_device_procs prn_std_procs;
extern const gx_device_procs prn_bg_procs;
# 526 "./base/gdevprn.h"
int gdev_prn_open_printer_seekable(gx_device *dev, bool binary_mode,
                                   bool seekable);



int gdev_prn_open_printer(gx_device * dev, bool binary_mode);





bool gdev_prn_file_is_new(const gx_device_printer *pdev);
# 559 "./base/gdevprn.h"
int gdev_prn_color_usage(gx_device *dev, int y, int height,
                         gx_color_usage_t *color_usage,
                         int *range_start);





int gx_page_info_color_usage(const gx_device *dev,
                             const gx_band_page_info_t *page_info,
                             int y, int height,
                             gx_color_usage_t *color_usage,
                             int *range_start);
# 595 "./base/gdevprn.h"
int gdev_prn_render_rectangle(gx_device_printer *pdev,
                              const gs_int_rect *prect,
                              gx_device *target,
                              const gx_render_plane_t *render_plane,
                              bool clear);
# 617 "./base/gdevprn.h"
int gdev_prn_get_lines(gx_device_printer *pdev, int y, int height,
                       byte *buffer, uint bytes_per_line,
                       byte **actual_buffer, uint *actual_bytes_per_line,
                       const gx_render_plane_t *render_plane);






int gdev_prn_get_bits(gx_device_printer *pdev, int y, byte *buffer,
                      byte **actual_buffer);







int gdev_prn_copy_scan_lines(gx_device_printer *, int, byte *, uint);







void gdev_prn_clear_trailing_bits(byte *data, uint raster, int height,
                                  const gx_device *dev);




int gdev_prn_close_printer(gx_device *);


int gx_print_page_single_copy(gx_device_printer *, FILE *);





int gx_default_print_page_copies(gx_device_printer *, FILE *, int);





int gdev_prn_print_scan_lines(gx_device *);


int gdev_prn_allocate_memory(gx_device *pdev,
                             gdev_prn_space_params *space,
                             int new_width, int new_height);
int gdev_prn_reallocate_memory(gx_device *pdev,
                               gdev_prn_space_params *space,
                               int new_width, int new_height);
int gdev_prn_free_memory(gx_device *pdev);







typedef int (*create_buf_device_proc_t)(gx_device **pbdev, gx_device *target, int y, const gx_render_plane_t *render_plane, gs_memory_t *mem, gx_color_usage_t *color_usage);
int gdev_create_buf_device(create_buf_device_proc_t cbd_proc,
                           gx_device **pbdev, gx_device *target, int y,
                           const gx_render_plane_t *render_plane,
                           gs_memory_t *mem, gx_color_usage_t *color_usage);
# 701 "./base/gdevprn.h"
int gdev_prn_initialize(gx_device *, const char *, int (*)(gx_device_printer *, FILE *));
void gdev_prn_init_color(gx_device *, int, gx_color_index (*)(gx_device *dev, const gx_color_value cv[]), int (*)(gx_device *dev, gx_color_index color, gx_color_value rgb[3]));
# 92 "./devices/gdevupd.c" 2


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
# 95 "./devices/gdevupd.c" 2
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
# 96 "./devices/gdevupd.c" 2
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
# 97 "./devices/gdevupd.c" 2




# 1 "/usr/include/signal.h" 1 3 4
# 32 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigset.h" 1 3 4
# 103 "/usr/include/bits/sigset.h" 3 4
extern int __sigismember (const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);
# 117 "/usr/include/bits/sigset.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int __sigismember (const __sigset_t *__set, int __sig) { unsigned long int __mask = (((unsigned long int) 1) << (((__sig) - 1) % (8 * sizeof (unsigned long int)))); unsigned long int __word = (((__sig) - 1) / (8 * sizeof (unsigned long int))); return (__set->__val[__word] & __mask) ? 1 : 0; }
extern __inline __attribute__ ((__gnu_inline__)) int __sigaddset ( __sigset_t *__set, int __sig) { unsigned long int __mask = (((unsigned long int) 1) << (((__sig) - 1) % (8 * sizeof (unsigned long int)))); unsigned long int __word = (((__sig) - 1) / (8 * sizeof (unsigned long int))); return ((__set->__val[__word] |= __mask), 0); }
extern __inline __attribute__ ((__gnu_inline__)) int __sigdelset ( __sigset_t *__set, int __sig) { unsigned long int __mask = (((unsigned long int) 1) << (((__sig) - 1) % (8 * sizeof (unsigned long int)))); unsigned long int __word = (((__sig) - 1) / (8 * sizeof (unsigned long int))); return ((__set->__val[__word] &= ~__mask), 0); }
# 33 "/usr/include/signal.h" 2 3 4







typedef __sig_atomic_t sig_atomic_t;
# 57 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/signum.h" 1 3 4
# 58 "/usr/include/signal.h" 2 3 4
# 75 "/usr/include/signal.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 76 "/usr/include/signal.h" 2 3 4




# 1 "/usr/include/bits/siginfo.h" 1 3 4
# 24 "/usr/include/bits/siginfo.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 25 "/usr/include/bits/siginfo.h" 2 3 4







typedef union sigval
  {
    int sival_int;
    void *sival_ptr;
  } sigval_t;
# 58 "/usr/include/bits/siginfo.h" 3 4
typedef __clock_t __sigchld_clock_t;



typedef struct
  {
    int si_signo;
    int si_errno;

    int si_code;

    union
      {
 int _pad[((128 / sizeof (int)) - 4)];


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;


 struct
   {
     int si_tid;
     int si_overrun;
     sigval_t si_sigval;
   } _timer;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     sigval_t si_sigval;
   } _rt;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __sigchld_clock_t si_utime;
     __sigchld_clock_t si_stime;
   } _sigchld;


 struct
   {
     void *si_addr;
   } _sigfault;


 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;


 struct
   {
     void *_call_addr;
     int _syscall;
     unsigned int _arch;
   } _sigsys;
      } _sifields;
  } siginfo_t ;
# 151 "/usr/include/bits/siginfo.h" 3 4
enum
{
  SI_ASYNCNL = -60,

  SI_TKILL = -6,

  SI_SIGIO,

  SI_ASYNCIO,

  SI_MESGQ,

  SI_TIMER,

  SI_QUEUE,

  SI_USER,

  SI_KERNEL = 0x80

};



enum
{
  ILL_ILLOPC = 1,

  ILL_ILLOPN,

  ILL_ILLADR,

  ILL_ILLTRP,

  ILL_PRVOPC,

  ILL_PRVREG,

  ILL_COPROC,

  ILL_BADSTK

};


enum
{
  FPE_INTDIV = 1,

  FPE_INTOVF,

  FPE_FLTDIV,

  FPE_FLTOVF,

  FPE_FLTUND,

  FPE_FLTRES,

  FPE_FLTINV,

  FPE_FLTSUB

};


enum
{
  SEGV_MAPERR = 1,

  SEGV_ACCERR

};


enum
{
  BUS_ADRALN = 1,

  BUS_ADRERR,

  BUS_OBJERR

};


enum
{
  TRAP_BRKPT = 1,

  TRAP_TRACE

};


enum
{
  CLD_EXITED = 1,

  CLD_KILLED,

  CLD_DUMPED,

  CLD_TRAPPED,

  CLD_STOPPED,

  CLD_CONTINUED

};


enum
{
  POLL_IN = 1,

  POLL_OUT,

  POLL_MSG,

  POLL_ERR,

  POLL_PRI,

  POLL_HUP

};
# 301 "/usr/include/bits/siginfo.h" 3 4
typedef struct sigevent
  {
    sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;

    union
      {
 int _pad[((64 / sizeof (int)) - 4)];



 __pid_t _tid;

 struct
   {
     void (*_function) (sigval_t);
     pthread_attr_t *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;






enum
{
  SIGEV_SIGNAL = 0,

  SIGEV_NONE,

  SIGEV_THREAD,


  SIGEV_THREAD_ID = 4

};
# 81 "/usr/include/signal.h" 2 3 4




typedef void (*__sighandler_t) (int);




extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
# 102 "/usr/include/signal.h" 3 4
extern __sighandler_t signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
# 127 "/usr/include/signal.h" 3 4
extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__ ));






extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__ ));




extern int raise (int __sig) __attribute__ ((__nothrow__ ));




extern __sighandler_t ssignal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
extern int gsignal (int __sig) __attribute__ ((__nothrow__ ));




extern void psignal (int __sig, const char *__s);




extern void psiginfo (const siginfo_t *__pinfo, const char *__s);
# 169 "/usr/include/signal.h" 3 4
extern int __sigpause (int __sig_or_mask, int __is_sig);
# 197 "/usr/include/signal.h" 3 4
extern int sigblock (int __mask) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));


extern int sigsetmask (int __mask) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));


extern int siggetmask (void) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));
# 217 "/usr/include/signal.h" 3 4
typedef __sighandler_t sig_t;





extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigismember (const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 253 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigaction.h" 1 3 4
# 24 "/usr/include/bits/sigaction.h" 3 4
struct sigaction
  {


    union
      {

 __sighandler_t sa_handler;

 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;







    __sigset_t sa_mask;


    int sa_flags;


    void (*sa_restorer) (void);
  };
# 254 "/usr/include/signal.h" 2 3 4


extern int sigprocmask (int __how, const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__ ));






extern int sigsuspend (const sigset_t *__set) __attribute__ ((__nonnull__ (1)));


extern int sigaction (int __sig, const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__ ));


extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int sigwait (const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));






extern int sigwaitinfo (const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));






extern int sigtimedwait (const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));



extern int sigqueue (__pid_t __pid, int __sig, const union sigval __val)
     __attribute__ ((__nothrow__ ));
# 311 "/usr/include/signal.h" 3 4
extern const char *const _sys_siglist[65];
extern const char *const sys_siglist[65];


struct sigvec
  {
    __sighandler_t sv_handler;
    int sv_mask;

    int sv_flags;

  };
# 335 "/usr/include/signal.h" 3 4
extern int sigvec (int __sig, const struct sigvec *__vec,
     struct sigvec *__ovec) __attribute__ ((__nothrow__ ));




# 1 "/usr/include/bits/sigcontext.h" 1 3 4
# 29 "/usr/include/bits/sigcontext.h" 3 4
struct _fpx_sw_bytes
{
  __uint32_t magic1;
  __uint32_t extended_size;
  __uint64_t xstate_bv;
  __uint32_t xstate_size;
  __uint32_t padding[7];
};

struct _fpreg
{
  unsigned short significand[4];
  unsigned short exponent;
};

struct _fpxreg
{
  unsigned short significand[4];
  unsigned short exponent;
  unsigned short padding[3];
};

struct _xmmreg
{
  __uint32_t element[4];
};
# 121 "/usr/include/bits/sigcontext.h" 3 4
struct _fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _fpxreg _st[8];
  struct _xmmreg _xmm[16];
  __uint32_t padding[24];
};

struct sigcontext
{
  __uint64_t r8;
  __uint64_t r9;
  __uint64_t r10;
  __uint64_t r11;
  __uint64_t r12;
  __uint64_t r13;
  __uint64_t r14;
  __uint64_t r15;
  __uint64_t rdi;
  __uint64_t rsi;
  __uint64_t rbp;
  __uint64_t rbx;
  __uint64_t rdx;
  __uint64_t rax;
  __uint64_t rcx;
  __uint64_t rsp;
  __uint64_t rip;
  __uint64_t eflags;
  unsigned short cs;
  unsigned short gs;
  unsigned short fs;
  unsigned short __pad0;
  __uint64_t err;
  __uint64_t trapno;
  __uint64_t oldmask;
  __uint64_t cr2;
  __extension__ union
    {
      struct _fpstate * fpstate;
      __uint64_t __fpstate_word;
    };
  __uint64_t __reserved1 [8];
};



struct _xsave_hdr
{
  __uint64_t xstate_bv;
  __uint64_t reserved1[2];
  __uint64_t reserved2[5];
};

struct _ymmh_state
{
  __uint32_t ymmh_space[64];
};

struct _xstate
{
  struct _fpstate fpstate;
  struct _xsave_hdr xstate_hdr;
  struct _ymmh_state ymmh;
};
# 341 "/usr/include/signal.h" 2 3 4


extern int sigreturn (struct sigcontext *__scp) __attribute__ ((__nothrow__ ));







# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 351 "/usr/include/signal.h" 2 3 4




extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__ ));


# 1 "/usr/include/bits/sigstack.h" 1 3 4
# 25 "/usr/include/bits/sigstack.h" 3 4
struct sigstack
  {
    void *ss_sp;
    int ss_onstack;
  };



enum
{
  SS_ONSTACK = 1,

  SS_DISABLE

};
# 49 "/usr/include/bits/sigstack.h" 3 4
typedef struct sigaltstack
  {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
  } stack_t;
# 358 "/usr/include/signal.h" 2 3 4


# 1 "/usr/include/sys/ucontext.h" 1 3 4
# 22 "/usr/include/sys/ucontext.h" 3 4
# 1 "/usr/include/signal.h" 1 3 4
# 23 "/usr/include/sys/ucontext.h" 2 3 4








__extension__ typedef long long int greg_t;





typedef greg_t gregset_t[23];
# 92 "/usr/include/sys/ucontext.h" 3 4
struct _libc_fpxreg
{
  unsigned short int significand[4];
  unsigned short int exponent;
  unsigned short int padding[3];
};

struct _libc_xmmreg
{
  __uint32_t element[4];
};

struct _libc_fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _libc_fpxreg _st[8];
  struct _libc_xmmreg _xmm[16];
  __uint32_t padding[24];
};


typedef struct _libc_fpstate *fpregset_t;


typedef struct
  {
    gregset_t gregs;

    fpregset_t fpregs;
    __extension__ unsigned long long __reserved1 [8];
} mcontext_t;


typedef struct ucontext
  {
    unsigned long int uc_flags;
    struct ucontext *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    __sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
  } ucontext_t;
# 361 "/usr/include/signal.h" 2 3 4





extern int sigstack (struct sigstack *__ss, struct sigstack *__oss)
     __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));



extern int sigaltstack (const struct sigaltstack *__restrict __ss,
   struct sigaltstack *__restrict __oss) __attribute__ ((__nothrow__ ));
# 396 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigthread.h" 1 3 4
# 30 "/usr/include/bits/sigthread.h" 3 4
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ ));


extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ ));
# 397 "/usr/include/signal.h" 2 3 4






extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ ));

extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ ));
# 102 "./devices/gdevupd.c" 2






typedef struct upd_s upd_t,*upd_p;
typedef const upd_t *upd_pc;

typedef struct upd_device_s {
   int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs;
   byte skip[(((sizeof(gx_device_memory)) > (sizeof(gx_device_clist))) ? (sizeof(gx_device_memory)) : (sizeof(gx_device_clist))) - sizeof(gx_device) + sizeof(double) ]; gx_printer_device_procs printer_procs; char fname[4096]; bool BLS_force_memory; bool OpenOutputFile; bool ReopenPerPage; bool Duplex; int Duplex_set; bool file_is_new; FILE *file; long buffer_space; byte *buf; gs_memory_t *buffer_memory; gs_memory_t *bandlist_memory; int (*free_up_bandlist_memory)(gx_device *dev, bool flush_current); gx_page_queue_t *page_queue; bool is_async_renderer; gx_device_printer *async_renderer; uint clist_disable_mask; bool bg_print_requested; bg_print_t bg_print; int num_render_threads_requested; gx_saved_pages_list *saved_pages_list; gx_device_procs save_procs_while_delaying_erasepage; gx_device_procs orig_procs;
   gs_param_string upd_version;
   upd_p upd;
} upd_device;





static int upd_print_page(gx_device_printer *, FILE *);

static int upd_open(gx_device *dev);
static int upd_close(gx_device *dev);

static int upd_get_params(gx_device *dev, gs_param_list *plist);
static int upd_put_params(gx_device *dev, gs_param_list *plist);
# 143 "./devices/gdevupd.c"
static gx_color_index (upd_rgb_1color)(gx_device * dev, const gx_color_value colors[]);
static int (upd_1color_rgb)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);

static gx_color_index (upd_rgb_3color)(gx_device * dev, const gx_color_value colors[]);
static int (upd_3color_rgb)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);







static gx_color_index (upd_rgb_4color)(gx_device * dev, const gx_color_value colors[]);
static int (upd_4color_rgb)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);
# 165 "./devices/gdevupd.c"
static gx_color_index (upd_cmyk_icolor)(gx_device * dev, const gx_color_value colors[]);
static int (upd_icolor_rgb)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);







static gx_color_index (upd_cmyk_kcolor)(gx_device * dev, const gx_color_value colors[]);
static int (upd_kcolor_rgb)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);
# 185 "./devices/gdevupd.c"
static gx_color_index (upd_rgb_ovcolor)(gx_device * dev, const gx_color_value colors[]);
# 196 "./devices/gdevupd.c"
static gx_color_index (upd_rgb_novcolor)(gx_device * dev, const gx_color_value colors[]);
# 206 "./devices/gdevupd.c"
static int upd_procs_map( upd_device *udev);
# 221 "./devices/gdevupd.c"
static gx_device_procs upd_procs = {
   upd_open,
   gx_default_get_initial_matrix,
   gx_default_sync_output,
   gdev_prn_output_page,
   upd_close,
   gx_default_w_b_map_rgb_color,
   gx_default_w_b_map_color_rgb,
   ((void*)0),
   ((void*)0),
   ((void*)0),
   ((void*)0),
   ((void*)0),
   gx_default_get_bits,
   upd_get_params,
   upd_put_params,
   gx_default_map_cmyk_color
};
# 258 "./devices/gdevupd.c"
upd_device gs_uniprint_device = {
   sizeof(upd_device), &upd_procs, "uniprint", 0 , &st_device_printer, 0 , 0 , { 0 } , 0 , 0 , 0, {1 , 1 , ( (1) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 1 , ((1) == 3 ? 0xff : (1) - 1) , 1 , 0 , 2 , 0 , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( (1) == 1 ? "DeviceGray" : ((1) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)((float)(85) * (72) / 10 + 0.5), (int)((float)(110) * (72) / 10 + 0.5), 0 , 0 , 0 , 0 , { (float)(((((int)((float)(85) * (72) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (72)) , (float)(((((int)((float)(110) * (72) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (72)) }, { 0, 0, 0, 0 } , 0 , { 72, 72 } , { 72, 72 }, {(float)(-(0.0) * (72)), (float)(-(0.0) * (72))}, {(float)((0.0) * 72.0), (float)((0.0) * 72.0), (float)((0.0) * 72.0), (float)((0.0) * 72.0)}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page }, { 0 }, { 0 }, { upd_print_page, gx_default_print_page_copies, { gx_default_create_buf_device, gx_default_size_buf_device, gx_default_setup_buf_device, gx_default_destroy_buf_device }, gx_default_get_space_params, gx_default_start_render_thread, gx_default_open_render_device, gx_default_close_render_device, gx_default_buffer_page }, { 0 }, 0 , 0 , 0 , 0 , -1, 0 , 0, 0, 0, 0, 0, 0, 0, 0 , 0, 0, 0 , { 0 , 0 , 0 , 0 , 0 }, 0, 0, { 0 }, { 0 },
# 272 "./devices/gdevupd.c"
      { ((void*)0), 0, ((bool)1) },
      ((void*)0)
};
# 311 "./devices/gdevupd.c"
static const char *const upd_version = "upVersion";
# 323 "./devices/gdevupd.c"
static const char *const upd_mapper[] = { "upColorModel",

"DeviceGray",

"DeviceRGBW",

"DeviceRGB",

"DeviceCMYK",

"DeviceCMYKgenerate",

"DeviceRGB2CMYK",

"DeviceRGB2CMY_K",
((void*)0)
};

static const char *const upd_render[] = { "upRendering",

"ErrorDiffusion",

"FSCMYK32",

"FSCMY_K",
((void*)0)
};

static const char *const upd_format[] = { "upOutputFormat",

"SunRaster",

"Epson",

"EscP2",

"EscP2XY",

"Pcl",

"Canon",

"EscNozzleMap",
((void*)0)
};

static const char *const *const upd_choice[] = {

   upd_mapper,

   upd_render,

   upd_format
};




static const char *const upd_flags[] = {

"upFSReverseDirection",

"upFSFixedDirection",

"upFSProcessWhiteSpace",

"upFSZeroInit",


"upAdjustPageWidthCommand",

"upAdjustPageLengthCommand",

"upAdjustTopMarginCommand",

"upAdjustBottomMarginCommand",

"upAdjustResolutionCommand",

"upAdjustMediaSize",


"upFormatXabsolute",

"upFormatYabsolute",


"upColorModelInitialized",

"upRasterBufferInitialized",

"upRenderingInitialized",

"upOutputFormatInitialized",

"upOutputAborted",

"upErrorDetected",


"upWroteData",


"upYFlip",


"upFSReduceK"

};
# 440 "./devices/gdevupd.c"
static const char *const upd_ints[] = {

"upOutputWidth",

"upOutputHeight",

"upOutputComponents",

"upOutputBuffers",

"upOutputXStep",

"upOutputXOffset",

"upOutputYStep",

"upOutputYOffset",

"upOutputPins",


"upWeaveXPasses",

"upWeaveYPasses",

"upWeavePasses",

"upWeaveInitialScan",

"upWeaveFinalScan",

"upWeaveYOffset",

"upNozzleMapRowsPerPass",

"upNozzleMapPatternRepeat"
};




static const char *const upd_int_a[] = {

"upColorInfo",


"upComponentBits",

"upComponentShift",

"upOutputComponentOrder",


"upWeaveYFeeds",

"upWeaveXStarts",

"upWeaveInitialYFeeds",

"upWeaveInitialXStarts",

"upWeaveInitialPins",

"upWeaveFinalYFeeds",

"upWeaveFinalXStarts",

"upWeaveFinalPins",

"upNozzleMapRowMask",

"upNozzleMapMaskScanOffset"
};




static const char *const upd_strings[] = {

"upModel",

"upBeginJobCommand",

"upEndJobCommand",

"upBeginPageCommand",

"upEndPageCommand",

"upAbortCommand",


"upXMoveCommand",

"upXStepCommand",

"upSetLineFeedCommand",

"upYMoveCommand",

"upYStepCommand"
};




static const char *const upd_string_a[] = {

"upSelectComponentCommands",

"upWriteComponentCommands"
};



static const char *const upd_float_a[] = {

"upWhiteTransfer",

"upRedTransfer",

"upGreenTransfer",

"upBlueTransfer",

"upBlackTransfer",

"upCyanTransfer",

"upMagentaTransfer",

"upYellowTransfer",

"upMargins",

"upColorMap"
};
# 609 "./devices/gdevupd.c"
typedef struct updcmap_s {
   gx_color_value *code;
   uint32_t bitmsk;
   int bitshf;
   int xfer;
   int bits;
   int comp;
   bool rise;
} updcmap_t, *updcmap_p;
typedef const updcmap_t *updcmap_pc;





typedef struct updcomp_s {
   int32_t offset;
   int32_t scale;
   int32_t threshold;
   int32_t spotsize;
   uint32_t bitmsk;
   int bitshf;
   int bits;
   int cmap;
} updcomp_t, *updcomp_p;



typedef struct updscan_s {
   byte *bytes;
   int *xbegin;
   int *xend;
} updscan_t, *updscan_p;
# 652 "./devices/gdevupd.c"
struct upd_s {

   int *choice;
   int *ints;
   gs_param_int_array *int_a;
   gs_param_string *strings;
   gs_param_string_array *string_a;
   gs_param_float_array *float_a;

   updcmap_t cmap[4];

   byte *gsbuf;
   byte *gsscan;

   byte *pxlptr;
   uint32_t (*pxlget)(upd_p upd);
   int (*render)(upd_p upd);
   int (*writer)(upd_p upd,FILE *out);

   updscan_p *scnbuf;
   int32_t *valbuf;
   void *valptr[32];

   byte *outbuf;
   int (*start_render)(upd_p upd);
   int (*start_writer)(upd_p upd,FILE *out);

   uint32_t flags;
   int pdwidth;
   int pdheight;

   uint ngsbuf;
   int gswidth;
   int gsheight;

   int rwidth;

   int pwidth;
   int pheight;

   int ncomp;
   int nmap;

   uint nvalbuf;
   int nscnbuf;

   int ocomp;
   int nbytes;
   int nlimits;
   int scnmsk;
   uint noutbuf;

   int ixpass;
   int ipass;
   int icomp;
   int lf;

   int xprinter;

   int yscan;
   int yprinter;
   int yscnbuf;
   const gs_memory_t *memory;
};
# 745 "./devices/gdevupd.c"
static int upd_open_map( upd_device *udev);
static int upd_close_map(upd_device *udev);
# 756 "./devices/gdevupd.c"
static __inline__ uint32_t upd_truncate(upd_pc,int,gx_color_value);




static __inline__ gx_color_value
upd_expand(upd_pc upd,int i,gx_color_index ci0)
{
   const updcmap_pc cmap = upd->cmap + i;
   uint32_t ci = (uint32_t)((ci0 >> cmap->bitshf) & cmap->bitmsk);

   if(!cmap->rise) ci = cmap->bitmsk - ci;

   if((sizeof(gx_color_value) * 8) > cmap->bits) return cmap->code[ci];
   else return (gx_color_value) ci;
}
# 783 "./devices/gdevupd.c"
static void upd_open_render( upd_device *udev);
static void upd_close_render( upd_device *udev);

static void upd_open_fscomp( upd_device *udev);
static int upd_fscomp( upd_p upd);
static void upd_close_fscomp( upd_device *udev);

static void upd_open_fscmyk( upd_device *udev);
static int upd_fscmyk( upd_p upd);

static void upd_open_fscmy_k( upd_device *udev);
static int upd_fscmy_k( upd_p upd);
# 803 "./devices/gdevupd.c"
static int upd_open_writer( upd_device *udev);
static void upd_close_writer( upd_device *udev);

static void upd_signal_handler(int sig);
# 817 "./devices/gdevupd.c"
static int upd_open_rascomp( upd_device *udev);
static int upd_start_rascomp( upd_p upd, FILE *out);
static int upd_rascomp( upd_p upd, FILE *out);
# 828 "./devices/gdevupd.c"
static void upd_limits( upd_p upd, bool check);
static int upd_open_wrtescp( upd_device *udev);
static int upd_wrtescp( upd_p upd, FILE *out);
# 839 "./devices/gdevupd.c"
static int upd_rle(byte *out,const byte *in,int nbytes);
static int upd_open_wrtescp2( upd_device *udev);
static int upd_wrtescp2( upd_p upd, FILE *out);
static int upd_wrtescp2x( upd_p upd, FILE *out);





static int upd_open_wrtrtl( upd_device *udev);
static int upd_wrtrtl( upd_p upd, FILE *out);





static int upd_open_wrtcanon( upd_device *udev);
static int upd_wrtcanon( upd_p upd, FILE *out);





static int upd_wrtescnm( upd_p upd, FILE *out);




static uint32_t upd_pxlfwd(upd_p upd);
static uint32_t upd_pxlrev(upd_p upd);


static void *upd_cast(const void *);
# 971 "./devices/gdevupd.c"
static const char rcsid[] = "$Revision: 5215 $";



static const float upd_data_xfer[2] = { 0.0, 1.0 };







static void *
upd_cast(const void *data)
{
  return (void *) data;
}






static upd_p sigupd = ((void*)0);
static void
upd_signal_handler(int sig)
{
  if(sigupd) sigupd->flags |= ((uint32_t) 1<<16);
}
# 1035 "./devices/gdevupd.c"
static int
upd_print_page(gx_device_printer *pdev, FILE *out)
{
   upd_device *const udev = (upd_device *) pdev;
   const upd_p upd = udev->upd;
   const int *const ints = upd ? upd->ints : ((void*)0);
   int error,need,yfill;


   void (*oldint )(int) = ((void*)0);
   void (*oldterm)(int) = ((void*)0);
   upd_p oldupd = sigupd;






   if(!upd || (((uint32_t) 1<<12) | ((uint32_t) 1<<13) | ((uint32_t) 1<<14) | ((uint32_t) 1<<15)) != (upd->flags & ((((uint32_t) 1<<12) | ((uint32_t) 1<<13) | ((uint32_t) 1<<14) | ((uint32_t) 1<<15)) | ((uint32_t) 1<<17)))) {

         errprintf(pdev->memory, "CALL-REJECTED upd_print_page(0x%05lx,0x%05lx)\n",
             (long) udev,(long) out);

      return (-21);
   }







   sigupd = upd;
   oldint = signal(2, upd_signal_handler);
   oldterm = signal(15,upd_signal_handler);





   if(!(upd->flags & ((uint32_t) 1<<18))) {

      if(0 < upd->strings[1].size)
         fwrite(upd->strings[1].data,1,upd->strings[1].size,out);
      upd->flags |= ((uint32_t) 1<<18);
   }



   if(0 < upd->strings[3].size)
      fwrite(upd->strings[3].data,1,upd->strings[3].size,out);





   upd->xprinter = 0;
   upd->yscan = 0;
   upd->yprinter = 0;
   upd->yscnbuf = 0;


   if(upd->start_render) (*upd->start_render)(upd);
   if(upd->start_writer) (*upd->start_writer)(upd,out);


   need = ints[10] * ints[8];
   if(0 >= need) need = 1;


   upd->ipass = 0;
   upd->ixpass = 0;
   upd->icomp = -1;
   upd->lf = -1;



   while(upd->pheight > upd->yscan) {





      if(ints[14] > upd->yscan) yfill = 0;
      else yfill = upd->yscan - ints[14];

      for(yfill += upd->nscnbuf; upd->yscnbuf < yfill; upd->yscnbuf++) {

         if(upd->gsheight > upd->yscnbuf) {

            if(0 > (*((udev)->procs.get_bits))((gx_device *) udev,
                                   upd->yscnbuf,upd->gsbuf,&upd->gsscan)) {




               break;
            }
         } else {

            memset(upd->gsscan = upd->gsbuf,0,upd->ngsbuf);

         }

         if(0 > (*upd->render)(upd)) {




            break;
         }

      }



      if((upd->yscnbuf ^ yfill) & upd->scnmsk) break;



      while((upd->yscan - ints[14] + need) < upd->yscnbuf) {


          (*upd->writer)(upd,out);


          if(upd->yscan >= upd->pheight) break;
          if(upd->flags & ((uint32_t) 1<<16) ) {




             break;
          }
      }



      if((upd->yscan - ints[14] + need) < upd->yscnbuf) break;
   }





   if((upd->pheight > upd->yscan) &&
      (0 < upd->strings[5].size)) {
      fwrite(upd->strings[5].data,1,upd->strings[5].size,out);

      upd->flags &= ~((uint32_t) 1<<18);





   } else if(0 < upd->strings[4].size) {
      fwrite(upd->strings[4].data,1,upd->strings[4].size,out);
   }



    {
        gs_parsed_file_name_t parsed;
        const char *fmt;

        if (((void*)0) != udev->fname &&
            0 <= gx_parse_output_file_name(&parsed, &fmt, udev->fname,
                                           strlen(udev->fname), udev->memory) &&
            fmt
            ) {
            if (0 < upd->strings[2].size)
                fwrite(upd->strings[2].data,1,upd->strings[2].size,out);
            upd->flags &= ~((uint32_t) 1<<18);
        }
    }





   fflush(out);

   if(upd->pheight > upd->yscan) error = (-6);
   else if(ferror(out)) error = (-12);
   else error = 0;







      sigupd = oldupd;
      (void) signal(2 ,oldint);
      (void) signal(15,oldterm);


   return error;
}
# 1250 "./devices/gdevupd.c"
static int
upd_open(gx_device *pdev)
{
   upd_device *const udev = (upd_device *) pdev;
   const upd_p upd = udev->upd;
   int error;







   if((((void*)0) != upd) &&
      (((void*)0) != upd->float_a[8].data) &&
      (4 == upd->float_a[8].size) ) {
      float m[4];
      m[1] = upd->float_a[8].data[1] / 72.0;
      m[3] = upd->float_a[8].data[3] / 72.0;
      if(((uint32_t) 1<<19) & upd->flags) {
         m[0] = upd->float_a[8].data[2] / 72.0;
         m[2] = upd->float_a[8].data[0] / 72.0;
      } else {
         m[0] = upd->float_a[8].data[0] / 72.0;
         m[2] = upd->float_a[8].data[2] / 72.0;
      }
      gx_device_set_margins((gx_device *) udev, m, ((bool)1));
   }


   error = gdev_prn_open(pdev);



   if(upd) {

      upd->flags &= ~(((uint32_t) 1<<12) | ((uint32_t) 1<<13) | ((uint32_t) 1<<14) | ((uint32_t) 1<<15));





      if(0 > error) upd->flags |= ((uint32_t) 1<<17);

      if((-25) == upd_open_map(udev)) error = (-25);






      upd->gswidth = udev->width -
         (int)((((udev)->HWMargins[0] / 72.0)+((udev)->HWMargins[2] / 72.0))*udev->HWResolution[0]);

      upd->gsheight = udev->height -
         (int)((((udev)->HWMargins[3] / 72.0)+((udev)->HWMargins[1] / 72.0))*udev->HWResolution[1]);

      upd->ngsbuf = 0;
      upd->gsbuf = ((void*)0);

      if(((uint32_t) 1<<12) & upd->flags) {
         uint want = gx_device_raster(pdev,((bool)1));
         upd->gsbuf = (void *)(*(pdev->memory->non_gc_memory)->procs.alloc_byte_array)(pdev->memory->non_gc_memory, want, 1, "upd/gsbuf");

         if(upd->gsbuf) {
            upd->ngsbuf = want;
            upd->flags |= ((uint32_t) 1<<13);
         } else {
            error = (-25);
            upd->flags |= ((uint32_t) 1<<17);
         }

      }

      upd_open_render(udev);

      if((-25) == upd_open_writer(udev)) error = (-25);

      udev->upd->pdwidth = udev->width;
      udev->upd->pdheight = udev->height;
# 1450 "./devices/gdevupd.c"
   }






   return error;
}





static int
upd_close(gx_device *pdev)
{
   upd_device *const udev = (upd_device *) pdev;
   const upd_p upd = udev->upd;
   int error = 0;
   int code;







   if( upd && (( ((uint32_t) 1<<18) | (((uint32_t) 1<<12) | ((uint32_t) 1<<13) | ((uint32_t) 1<<14) | ((uint32_t) 1<<15))) ==
               ((((uint32_t) 1<<18) | (((uint32_t) 1<<12) | ((uint32_t) 1<<13) | ((uint32_t) 1<<14) | ((uint32_t) 1<<15)) | ((uint32_t) 1<<17)) & upd->flags))) {

      if(udev->file && upd->strings && 0 < upd->strings[2].size)
         fwrite(upd->strings[2].data,1,
                upd->strings[2].size,udev->file);

      upd->flags &= ~((uint32_t) 1<<18);
   }


   if(upd) {

      upd_close_writer(udev);

      if(upd->gsbuf)
         ((pdev->memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory, upd->gsbuf, "uniprint/gsbuf"));
      upd->gsbuf = ((void*)0);
      upd->ngsbuf = 0;
      upd->flags &= ~((uint32_t) 1<<13);

      upd_close_render(udev);
      upd_close_map(udev);

      if(upd->choice && 0 < ((sizeof(upd_choice) / sizeof((upd_choice)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_choice) / sizeof((upd_choice)[0]))) > ii; ++ii) ; ((pdev->memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory, upd_cast(upd->choice), "uniprint/params")); } upd->choice = 0;
      if(upd->ints && 0 < ((sizeof(upd_ints) / sizeof((upd_ints)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_ints) / sizeof((upd_ints)[0]))) > ii; ++ii) ; ((pdev->memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory, upd_cast(upd->ints), "uniprint/params")); } upd->ints = 0;
      if(upd->int_a && 0 < ((sizeof(upd_int_a) / sizeof((upd_int_a)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_int_a) / sizeof((upd_int_a)[0]))) > ii; ++ii) { if(upd->int_a[ii].data && upd->int_a[ii].size) ((pdev->memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory, upd_cast(upd->int_a[ii].data), "uniprint/params")); }; ((pdev->memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory, upd_cast(upd->int_a), "uniprint/params")); } upd->int_a = 0;
      if(upd->strings && 0 < ((sizeof(upd_strings) / sizeof((upd_strings)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_strings) / sizeof((upd_strings)[0]))) > ii; ++ii) { if(upd->strings[ii].data && upd->strings[ii].size) ((pdev->memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory, upd_cast(upd->strings[ii].data), "uniprint/params")); }; ((pdev->memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory, upd_cast(upd->strings), "uniprint/params")); } upd->strings = 0;
      if(upd->string_a && 0 < ((sizeof(upd_string_a) / sizeof((upd_string_a)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_string_a) / sizeof((upd_string_a)[0]))) > ii; ++ii) { if(upd->string_a[ii].data && upd->string_a[ii].size) { uint iii; for(iii = 0; iii < upd->string_a[ii].size; ++iii) { if(upd->string_a[ii].data[iii].data && upd->string_a[ii].data[iii].size) ((pdev->memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory, upd_cast(upd->string_a[ii].data[iii].data), "uniprint/params")); }; ((pdev->memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory, upd_cast(upd->string_a[ii].data), "uniprint/params")); } }; ((pdev->memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory, upd_cast(upd->string_a), "uniprint/params")); } upd->string_a = 0;
      if(upd->float_a && 0 < ((sizeof(upd_float_a) / sizeof((upd_float_a)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_float_a) / sizeof((upd_float_a)[0]))) > ii; ++ii) { if(upd->float_a[ii].data && upd->float_a[ii].size) ((pdev->memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory, upd_cast(upd->float_a[ii].data), "uniprint/params")); }; ((pdev->memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory, upd_cast(upd->float_a), "uniprint/params")); } upd->float_a = 0;

      ((pdev->memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory, upd, "uniprint"));

      udev->upd = ((void*)0);
   }


   code = gdev_prn_close(pdev);
   error = error > code ? code : error;






   return error;
}
# 1541 "./devices/gdevupd.c"
static int
upd_get_params(gx_device *pdev, gs_param_list *plist)
{
   upd_device *const udev = (upd_device *) pdev;
   const upd_p upd = udev->upd;
   int error,i;







   error = gdev_prn_get_params((gx_device *)udev,plist);
   if(0 > error) return (error);;


   if(upd_version) {
      udev->upd_version.data = (const byte *) rcsid;
      udev->upd_version.size = strlen(rcsid);
      udev->upd_version.persistent = ((bool)1);
      error = param_write_string(plist,upd_version,&udev->upd_version);
      if(0 > error) return (error);;
   }


   for(i = 0; i < (sizeof(upd_choice) / sizeof((upd_choice)[0])); ++i) {
      if(!upd_choice[i]) continue;
      if(upd && upd->choice && upd->choice[i]) {
         gs_param_string name;
         name.data = (const byte *) upd_choice[i][upd->choice[i]];
         name.size = strlen((const char *) name.data);
         name.persistent = ((bool)1);
         error = param_write_name(plist,upd_choice[i][0],&name);
      } else {
         error = param_write_null(plist,upd_choice[i][0]);
      }
      if(0 > error) return (error);;
   }


   for(i = 0; i < (sizeof(upd_flags) / sizeof((upd_flags)[0])); ++i) {
      if(!upd_flags[i]) continue;
      if(upd) {
         bool value = upd->flags & ((uint32_t) 1 << i);
         error = param_write_bool(plist,upd_flags[i],&value);
      } else {
         error = param_write_null(plist,upd_flags[i]);
      }
      if(0 > error) return (error);;
   }


   for(i = 0; i < (sizeof(upd_ints) / sizeof((upd_ints)[0])); ++i) {
      if(!upd_ints[i]) continue;
      if(upd && upd->ints && upd->ints[i]) {
         int value = upd->ints[i];
         error = param_write_int( plist,upd_ints[i],&value);
      } else {
         error = param_write_null(plist,upd_ints[i]);
      }
      if(0 > error) return (error);;
   }


   for(i = 0; i < (sizeof(upd_int_a) / sizeof((upd_int_a)[0])); ++i) {
      if(!upd_int_a[i]) continue;
      if(upd && upd->int_a && upd->int_a[i].size) {
         error = param_write_int_array( plist,upd_int_a[i],(upd->int_a+i));
      } else {
         error = param_write_null(plist,upd_int_a[i]);
      }
      if(0 > error) return (error);;
   }


   for(i = 0; i < (sizeof(upd_strings) / sizeof((upd_strings)[0])); ++i) {
      if(!upd_strings[i]) continue;
      if(upd && upd->strings && upd->strings[i].size) {
         error = param_write_string( plist,upd_strings[i],(upd->strings+i));
      } else {
         error = param_write_null(plist,upd_strings[i]);
      }
      if(0 > error) return (error);;
   }


   for(i = 0; i < (sizeof(upd_string_a) / sizeof((upd_string_a)[0])); ++i) {
      if(!upd_string_a[i]) continue;
      if(upd && upd->string_a && upd->string_a[i].size) {
         error =
            param_write_string_array( plist,upd_string_a[i],(upd->string_a+i));
      } else {
         error = param_write_null(plist,upd_string_a[i]);
      }
      if(0 > error) return (error);;
   }


   for(i = 0; i < (sizeof(upd_float_a) / sizeof((upd_float_a)[0])); ++i) {
      if(!upd_float_a[i]) continue;
      if(upd && upd->float_a && upd->float_a[i].size) {
         error =
            param_write_float_array( plist,upd_float_a[i],(upd->float_a+i));
      } else {
         error = param_write_null(plist,upd_float_a[i]);
      }
      if(0 > error) return (error);;
   }






   return error;
}







static int
upd_put_params(gx_device *pdev, gs_param_list *plist)
{
   upd_device *const udev = (upd_device *) pdev;
   upd_p upd = udev->upd;
   int error = 0, code,i;

   float MarginsHWResolution[2],Margins[2];
   gx_device_color_info color_info;
   uint32_t flags = 0;
   int *choice = ((void*)0);
   int *ints = ((void*)0);
   gs_param_int_array *int_a = ((void*)0);
   gs_param_string *strings = ((void*)0);
   gs_param_string_array *string_a = ((void*)0);
   gs_param_float_array *float_a = ((void*)0), mfa;
# 1713 "./devices/gdevupd.c"
   if(upd && (((uint32_t) 1<<18) & udev->upd->flags) && (((void*)0) != udev->file)) {

      gs_param_string fname = { ((void*)0), 0, ((bool)0) };

      code = param_read_string(plist,"OutputFile",&fname);
      if((1 != code) && (0 != code)) {
         code = param_read_null(plist,"OutputFile");
         if(0 == code) {
            fname.data = (const byte *) "";
            fname.size = 0;
         }
      }

      if((0 == code) &&
         (__extension__ (__builtin_constant_p (fname.size) && ((__builtin_constant_p ((const char *)fname.data) && strlen ((const char *)fname.data) < ((size_t) (fname.size))) || (__builtin_constant_p (udev->fname) && strlen (udev->fname) < ((size_t) (fname.size)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)fname.data) && __builtin_constant_p (udev->fname) && (__s1_len = strlen ((const char *)fname.data), __s2_len = strlen (udev->fname), (!((size_t)(const void *)(((const char *)fname.data) + 1) - (size_t)(const void *)((const char *)fname.data) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((udev->fname) + 1) - (size_t)(const void *)(udev->fname) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)fname.data, udev->fname) : (__builtin_constant_p ((const char *)fname.data) && ((size_t)(const void *)(((const char *)fname.data) + 1) - (size_t)(const void *)((const char *)fname.data) == 1) && (__s1_len = strlen ((const char *)fname.data), __s1_len < 4) ? (__builtin_constant_p (udev->fname) && ((size_t)(const void *)((udev->fname) + 1) - (size_t)(const void *)(udev->fname) == 1) ? __builtin_strcmp ((const char *)fname.data, udev->fname) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (udev->fname); register int __result = (((const unsigned char *) (const char *) ((const char *)fname.data))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)fname.data))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)fname.data))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)fname.data))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (udev->fname) && ((size_t)(const void *)((udev->fname) + 1) - (size_t)(const void *)(udev->fname) == 1) && (__s2_len = strlen (udev->fname), __s2_len < 4) ? (__builtin_constant_p ((const char *)fname.data) && ((size_t)(const void *)(((const char *)fname.data) + 1) - (size_t)(const void *)((const char *)fname.data) == 1) ? __builtin_strcmp ((const char *)fname.data, udev->fname) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)fname.data); register int __result = __s1[0] - ((const unsigned char *) (const char *) (udev->fname))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (udev->fname))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (udev->fname))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (udev->fname))[3]); } } __result; }))) : __builtin_strcmp ((const char *)fname.data, udev->fname)))); }) : strncmp ((const char *)fname.data, udev->fname, fname.size)))) {
         if(upd->strings && 0 < udev->upd->strings[2].size)
            fwrite(upd->strings[2].data,1,
                   upd->strings[2].size,udev->file);

         upd->flags &= ~((uint32_t) 1<<18);
      }
   }
# 1778 "./devices/gdevupd.c"
   code = param_read_string(plist,upd_version,&udev->upd_version); if(0 > code) { code = param_read_null(plist,upd_version); if(0 == code) memset(&udev->upd_version,0,sizeof(udev->upd_version)); } if(0 > code) { (*(plist)->procs->signal_error)(plist, upd_version, code); if(error > code) error = code; }







   MarginsHWResolution[0] = udev->MarginsHWResolution[0];
   MarginsHWResolution[1] = udev->MarginsHWResolution[1];
               Margins[0] = udev->Margins[0];
               Margins[1] = udev->Margins[1];

   color_info = udev->color_info;
   if(upd) {
     flags = upd->flags;
     choice = ((void*)0); if(0 < ((sizeof(upd_choice) / sizeof((upd_choice)[0])))) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, (sizeof(upd_choice) / sizeof((upd_choice)[0])), sizeof(choice[0]), "uniprint/params"); if(tmp) { memset(tmp,0,((sizeof(upd_choice) / sizeof((upd_choice)[0])))*sizeof(choice[0])); choice = (void *) tmp; } else { return ((-25)); } }; if(choice && upd->choice) { uint ii; for(ii = 0; ((sizeof(upd_choice) / sizeof((upd_choice)[0]))) > ii; ++ii) choice[ii] = upd->choice[ii]; };

     ints = ((void*)0); if(0 < ((sizeof(upd_ints) / sizeof((upd_ints)[0])))) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, (sizeof(upd_ints) / sizeof((upd_ints)[0])), sizeof(ints[0]), "uniprint/params"); if(tmp) { memset(tmp,0,((sizeof(upd_ints) / sizeof((upd_ints)[0])))*sizeof(ints[0])); ints = (void *) tmp; } else { return ((-25)); } }; if(ints && upd->ints) { uint ii; for(ii = 0; ((sizeof(upd_ints) / sizeof((upd_ints)[0]))) > ii; ++ii) ints[ii] = upd->ints[ii]; };

     int_a = ((void*)0); if(0 < ((sizeof(upd_int_a) / sizeof((upd_int_a)[0])))) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, (sizeof(upd_int_a) / sizeof((upd_int_a)[0])), sizeof(int_a[0]), "uniprint/params"); if(tmp) { memset(tmp,0,((sizeof(upd_int_a) / sizeof((upd_int_a)[0])))*sizeof(int_a[0])); int_a = (void *) tmp; } else { return ((-25)); } }; if(int_a && upd->int_a) { uint ii; for(ii = 0; ((sizeof(upd_int_a) / sizeof((upd_int_a)[0]))) > ii; ++ii) if(upd->int_a[ii].data && upd->int_a[ii].size) { int_a[ii].data = ((void*)0); if(0 < (upd->int_a[ii].size)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->int_a[ii].size, sizeof(int_a[ii].data[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(upd->int_a[ii].size)*sizeof(int_a[ii].data[0])); int_a[ii].data = (void *) tmp; } else { return ((-25)); } }; if(int_a[ii].data) { int_a[ii].size = upd->int_a[ii].size; memcpy(upd_cast(int_a[ii].data),upd->int_a[ii].data,int_a[ii].size*sizeof(int_a[ii].data[0])); } }; };

     strings = ((void*)0); if(0 < ((sizeof(upd_strings) / sizeof((upd_strings)[0])))) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, (sizeof(upd_strings) / sizeof((upd_strings)[0])), sizeof(strings[0]), "uniprint/params"); if(tmp) { memset(tmp,0,((sizeof(upd_strings) / sizeof((upd_strings)[0])))*sizeof(strings[0])); strings = (void *) tmp; } else { return ((-25)); } }; if(strings && upd->strings) { uint ii; for(ii = 0; ((sizeof(upd_strings) / sizeof((upd_strings)[0]))) > ii; ++ii) if(upd->strings[ii].data && upd->strings[ii].size) { strings[ii].data = ((void*)0); if(0 < (upd->strings[ii].size)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->strings[ii].size, sizeof(strings[ii].data[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(upd->strings[ii].size)*sizeof(strings[ii].data[0])); strings[ii].data = (void *) tmp; } else { return ((-25)); } }; if(strings[ii].data) { strings[ii].size = upd->strings[ii].size; memcpy(upd_cast(strings[ii].data),upd->strings[ii].data,strings[ii].size*sizeof(strings[ii].data[0])); } }; };

     string_a = ((void*)0); if(0 < ((sizeof(upd_string_a) / sizeof((upd_string_a)[0])))) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, (sizeof(upd_string_a) / sizeof((upd_string_a)[0])), sizeof(string_a[0]), "uniprint/params"); if(tmp) { memset(tmp,0,((sizeof(upd_string_a) / sizeof((upd_string_a)[0])))*sizeof(string_a[0])); string_a = (void *) tmp; } else { return ((-25)); } }; if(string_a && upd->string_a) { uint ii; for(ii = 0; ((sizeof(upd_string_a) / sizeof((upd_string_a)[0]))) > ii; ++ii) if(upd->string_a[ii].data && upd->string_a[ii].size) { string_a[ii].data = ((void*)0); if(0 < (upd->string_a[ii].size)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->string_a[ii].size, sizeof(string_a[ii].data[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(upd->string_a[ii].size)*sizeof(string_a[ii].data[0])); string_a[ii].data = (void *) tmp; } else { return ((-25)); } }; if(string_a[ii].data) { gs_param_string *tmp2 = (gs_param_string *) upd_cast(string_a[ii].data); uint iii; string_a[ii].size = upd->string_a[ii].size; for(iii = 0; string_a[ii].size > iii; ++iii) if(upd->string_a[ii].data[iii].data && upd->string_a[ii].data[iii].size) { tmp2[iii].data = ((void*)0); if(0 < (upd->string_a[ii].data[iii].size)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->string_a[ii].data[iii].size, sizeof(tmp2[iii].data[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(upd->string_a[ii].data[iii].size)*sizeof(tmp2[iii].data[0])); tmp2[iii].data = (void *) tmp; } else { return ((-25)); } }; if(tmp2[iii].data) { tmp2[iii].size = upd->string_a[ii].data[iii].size; memcpy(upd_cast(tmp2[iii].data),upd->string_a[ii].data[iii].data,tmp2[iii].size*sizeof(tmp2[iii].data[0])); } }; } }; };

     float_a = ((void*)0); if(0 < ((sizeof(upd_float_a) / sizeof((upd_float_a)[0])))) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, (sizeof(upd_float_a) / sizeof((upd_float_a)[0])), sizeof(float_a[0]), "uniprint/params"); if(tmp) { memset(tmp,0,((sizeof(upd_float_a) / sizeof((upd_float_a)[0])))*sizeof(float_a[0])); float_a = (void *) tmp; } else { return ((-25)); } }; if(float_a && upd->float_a) { uint ii; for(ii = 0; ((sizeof(upd_float_a) / sizeof((upd_float_a)[0]))) > ii; ++ii) if(upd->float_a[ii].data && upd->float_a[ii].size) { float_a[ii].data = ((void*)0); if(0 < (upd->float_a[ii].size)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->float_a[ii].size, sizeof(float_a[ii].data[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(upd->float_a[ii].size)*sizeof(float_a[ii].data[0])); float_a[ii].data = (void *) tmp; } else { return ((-25)); } }; if(float_a[ii].data) { float_a[ii].size = upd->float_a[ii].size; memcpy(upd_cast(float_a[ii].data),upd->float_a[ii].data,float_a[ii].size*sizeof(float_a[ii].data[0])); } }; };

   } else {
     flags = 0;
     choice = ((void*)0); if(0 < ((sizeof(upd_choice) / sizeof((upd_choice)[0])))) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, (sizeof(upd_choice) / sizeof((upd_choice)[0])), sizeof(choice[0]), "uniprint/params"); if(tmp) { memset(tmp,0,((sizeof(upd_choice) / sizeof((upd_choice)[0])))*sizeof(choice[0])); choice = (void *) tmp; } else { return ((-25)); } };
     ints = ((void*)0); if(0 < ((sizeof(upd_ints) / sizeof((upd_ints)[0])))) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, (sizeof(upd_ints) / sizeof((upd_ints)[0])), sizeof(ints[0]), "uniprint/params"); if(tmp) { memset(tmp,0,((sizeof(upd_ints) / sizeof((upd_ints)[0])))*sizeof(ints[0])); ints = (void *) tmp; } else { return ((-25)); } };
     int_a = ((void*)0); if(0 < ((sizeof(upd_int_a) / sizeof((upd_int_a)[0])))) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, (sizeof(upd_int_a) / sizeof((upd_int_a)[0])), sizeof(int_a[0]), "uniprint/params"); if(tmp) { memset(tmp,0,((sizeof(upd_int_a) / sizeof((upd_int_a)[0])))*sizeof(int_a[0])); int_a = (void *) tmp; } else { return ((-25)); } };
     strings = ((void*)0); if(0 < ((sizeof(upd_strings) / sizeof((upd_strings)[0])))) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, (sizeof(upd_strings) / sizeof((upd_strings)[0])), sizeof(strings[0]), "uniprint/params"); if(tmp) { memset(tmp,0,((sizeof(upd_strings) / sizeof((upd_strings)[0])))*sizeof(strings[0])); strings = (void *) tmp; } else { return ((-25)); } };
     string_a = ((void*)0); if(0 < ((sizeof(upd_string_a) / sizeof((upd_string_a)[0])))) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, (sizeof(upd_string_a) / sizeof((upd_string_a)[0])), sizeof(string_a[0]), "uniprint/params"); if(tmp) { memset(tmp,0,((sizeof(upd_string_a) / sizeof((upd_string_a)[0])))*sizeof(string_a[0])); string_a = (void *) tmp; } else { return ((-25)); } };
     float_a = ((void*)0); if(0 < ((sizeof(upd_float_a) / sizeof((upd_float_a)[0])))) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, (sizeof(upd_float_a) / sizeof((upd_float_a)[0])), sizeof(float_a[0]), "uniprint/params"); if(tmp) { memset(tmp,0,((sizeof(upd_float_a) / sizeof((upd_float_a)[0])))*sizeof(float_a[0])); float_a = (void *) tmp; } else { return ((-25)); } };
   }


   for(i = 0; (sizeof(upd_choice) / sizeof((upd_choice)[0])) > i; ++i) {
      gs_param_string value = { ((void*)0), 0, ((bool)0)};
      if(!upd_choice[i][0]) continue;
      code = param_read_name(plist,upd_choice[i][0],&value); if(0 > code) { code = param_read_null(plist,upd_choice[i][0]); if(0 == code) memset(&value,0,sizeof(value)); } if(0 > code) { (*(plist)->procs->signal_error)(plist, upd_choice[i][0], code); if(error > code) error = code; };
      if(0 == code) {
         if(0 <= error) error |= 0x0004;
         choice[i] = 0;
         if(0 < value.size) {
            int j;
            for(j = 1; upd_choice[i][j]; ++j) {
               if((strlen(upd_choice[i][j]) == value.size) &&
                  (0 == (__extension__ (__builtin_constant_p (value.size) && ((__builtin_constant_p (upd_choice[i][j]) && strlen (upd_choice[i][j]) < ((size_t) (value.size))) || (__builtin_constant_p ((const char *) value.data) && strlen ((const char *) value.data) < ((size_t) (value.size)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (upd_choice[i][j]) && __builtin_constant_p ((const char *) value.data) && (__s1_len = strlen (upd_choice[i][j]), __s2_len = strlen ((const char *) value.data), (!((size_t)(const void *)((upd_choice[i][j]) + 1) - (size_t)(const void *)(upd_choice[i][j]) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((const char *) value.data) + 1) - (size_t)(const void *)((const char *) value.data) == 1) || __s2_len >= 4)) ? __builtin_strcmp (upd_choice[i][j], (const char *) value.data) : (__builtin_constant_p (upd_choice[i][j]) && ((size_t)(const void *)((upd_choice[i][j]) + 1) - (size_t)(const void *)(upd_choice[i][j]) == 1) && (__s1_len = strlen (upd_choice[i][j]), __s1_len < 4) ? (__builtin_constant_p ((const char *) value.data) && ((size_t)(const void *)(((const char *) value.data) + 1) - (size_t)(const void *)((const char *) value.data) == 1) ? __builtin_strcmp (upd_choice[i][j], (const char *) value.data) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((const char *) value.data); register int __result = (((const unsigned char *) (const char *) (upd_choice[i][j]))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (upd_choice[i][j]))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (upd_choice[i][j]))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (upd_choice[i][j]))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((const char *) value.data) && ((size_t)(const void *)(((const char *) value.data) + 1) - (size_t)(const void *)((const char *) value.data) == 1) && (__s2_len = strlen ((const char *) value.data), __s2_len < 4) ? (__builtin_constant_p (upd_choice[i][j]) && ((size_t)(const void *)((upd_choice[i][j]) + 1) - (size_t)(const void *)(upd_choice[i][j]) == 1) ? __builtin_strcmp (upd_choice[i][j], (const char *) value.data) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (upd_choice[i][j]); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((const char *) value.data))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((const char *) value.data))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((const char *) value.data))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((const char *) value.data))[3]); } } __result; }))) : __builtin_strcmp (upd_choice[i][j], (const char *) value.data)))); }) : strncmp (upd_choice[i][j], (const char *) value.data, value.size))))) {

                  choice[i] = j;
                  break;
               }
            }
         }
      }
   }


   for(i = 0; (sizeof(upd_flags) / sizeof((upd_flags)[0])) > i; ++i) {
      uint32_t bit = (uint32_t) 1 << i;
      bool flag = flags & bit ? ((bool)1) : ((bool)0);
      if(!upd_flags[i]) continue;
      code = param_read_bool(plist,upd_flags[i],&flag); if(0 > code) { code = param_read_null(plist,upd_flags[i]); if(0 == code) memset(&flag,0,sizeof(flag)); } if(0 > code) { (*(plist)->procs->signal_error)(plist, upd_flags[i], code); if(error > code) error = code; };
      if(0 == code) {
         if(0 <= error) error |= 0x0002;
         if(flag) flags |= bit;
         else flags &= ~bit;
      }
   }


   for(i = 0; (sizeof(upd_ints) / sizeof((upd_ints)[0])) > i; ++i) {
      int value = ints[i];
      if(!upd_ints[i]) continue;
      code = param_read_int(plist,upd_ints[i],&value); if(0 > code) { code = param_read_null(plist,upd_ints[i]); if(0 == code) memset(&value,0,sizeof(value)); } if(0 > code) { (*(plist)->procs->signal_error)(plist, upd_ints[i], code); if(error > code) error = code; };
      if(0 == code) {
         if(0 <= error) error |= 0x0008;
         ints[i] = value;
      }
   }


   for(i = 0; (sizeof(upd_int_a) / sizeof((upd_int_a)[0])) > i; ++i) {
      gs_param_int_array value = int_a[i];
      if(!upd_int_a[i]) continue;
      code = param_read_int_array(plist,upd_int_a[i],&value); if(0 > code) { code = param_read_null(plist,upd_int_a[i]); if(0 == code) memset(&value,0,sizeof(value)); } if(0 > code) { (*(plist)->procs->signal_error)(plist, upd_int_a[i], code); if(error > code) error = code; };
      if(0 == code) {
         if(0 <= error) error |= 0x0010;
         { if(int_a[i].data && int_a[i].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(int_a[i].data), "uniprint/params")); };
         if(!value.size) {
            value.data = ((void*)0);
            int_a[i] = value;
         } else {
            if(value.data && value.size) { int_a[i].data = ((void*)0); if(0 < (value.size)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, value.size, sizeof(int_a[i].data[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(value.size)*sizeof(int_a[i].data[0])); int_a[i].data = (void *) tmp; } else { return ((-25)); } }; if(int_a[i].data) { int_a[i].size = value.size; memcpy(upd_cast(int_a[i].data),value.data,int_a[i].size*sizeof(int_a[i].data[0])); } };
         }
      }
   }


   for(i = 0; (sizeof(upd_strings) / sizeof((upd_strings)[0])) > i; ++i) {
      gs_param_string value = strings[i];
      if(!upd_strings[i]) continue;
      code = param_read_string(plist,upd_strings[i],&value); if(0 > code) { code = param_read_null(plist,upd_strings[i]); if(0 == code) memset(&value,0,sizeof(value)); } if(0 > code) { (*(plist)->procs->signal_error)(plist, upd_strings[i], code); if(error > code) error = code; };
      if(0 == code) {
         if(0 <= error) error |= 0x0020;
         { if(strings[i].data && strings[i].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(strings[i].data), "uniprint/params")); };
         if(!value.size) {
            value.data = ((void*)0);
            strings[i] = value;
         } else {
            if(value.data && value.size) { strings[i].data = ((void*)0); if(0 < (value.size)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, value.size, sizeof(strings[i].data[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(value.size)*sizeof(strings[i].data[0])); strings[i].data = (void *) tmp; } else { return ((-25)); } }; if(strings[i].data) { strings[i].size = value.size; memcpy(upd_cast(strings[i].data),value.data,strings[i].size*sizeof(strings[i].data[0])); } };
         }
      }
   }


   for(i = 0; (sizeof(upd_string_a) / sizeof((upd_string_a)[0])) > i; ++i) {
      gs_param_string_array value = string_a[i];
      if(!upd_string_a[i]) continue;
      code = param_read_string_array(plist,upd_string_a[i],&value); if(0 > code) { code = param_read_null(plist,upd_string_a[i]); if(0 == code) memset(&value,0,sizeof(value)); } if(0 > code) { (*(plist)->procs->signal_error)(plist, upd_string_a[i], code); if(error > code) error = code; };
      if(0 == code) {
         if(0 <= error) error |= 0x0040;
         { if(string_a[i].data && string_a[i].size) { uint iii; for(iii = 0; iii < string_a[i].size; ++iii) { if(string_a[i].data[iii].data && string_a[i].data[iii].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(string_a[i].data[iii].data), "uniprint/params")); }; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(string_a[i].data), "uniprint/params")); } };
         if(!value.size) {
            value.data = ((void*)0);
            string_a[i] = value;
         } else {
            if(value.data && value.size) { string_a[i].data = ((void*)0); if(0 < (value.size)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, value.size, sizeof(string_a[i].data[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(value.size)*sizeof(string_a[i].data[0])); string_a[i].data = (void *) tmp; } else { return ((-25)); } }; if(string_a[i].data) { gs_param_string *tmp2 = (gs_param_string *) upd_cast(string_a[i].data); uint iii; string_a[i].size = value.size; for(iii = 0; string_a[i].size > iii; ++iii) if(value.data[iii].data && value.data[iii].size) { tmp2[iii].data = ((void*)0); if(0 < (value.data[iii].size)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, value.data[iii].size, sizeof(tmp2[iii].data[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(value.data[iii].size)*sizeof(tmp2[iii].data[0])); tmp2[iii].data = (void *) tmp; } else { return ((-25)); } }; if(tmp2[iii].data) { tmp2[iii].size = value.data[iii].size; memcpy(upd_cast(tmp2[iii].data),value.data[iii].data,tmp2[iii].size*sizeof(tmp2[iii].data[0])); } }; } };
         }
      }
   }


   for(i = 0; (sizeof(upd_float_a) / sizeof((upd_float_a)[0])) > i; ++i) {
      gs_param_float_array value = float_a[i];
      if(!upd_float_a[i]) continue;
      code = param_read_float_array(plist,upd_float_a[i],&value); if(0 > code) { code = param_read_null(plist,upd_float_a[i]); if(0 == code) memset(&value,0,sizeof(value)); } if(0 > code) { (*(plist)->procs->signal_error)(plist, upd_float_a[i], code); if(error > code) error = code; };
      if(0 == code) {
         if(0 <= error) error |= 0x0080;
         { if(float_a[i].data && float_a[i].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(float_a[i].data), "uniprint/params")); };
         if(!value.size) {
            value.data = ((void*)0);
            float_a[i] = value;
         } else {
            if(value.data && value.size) { float_a[i].data = ((void*)0); if(0 < (value.size)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, value.size, sizeof(float_a[i].data[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(value.size)*sizeof(float_a[i].data[0])); float_a[i].data = (void *) tmp; } else { return ((-25)); } }; if(float_a[i].data) { float_a[i].size = value.size; memcpy(upd_cast(float_a[i].data),value.data,float_a[i].size*sizeof(float_a[i].data[0])); } };
         }
      }
   }







   if(0 < error) {

      int *ip,*ip2,ncomp,nbits;

      if(6 > int_a[0].size) {
         { if(int_a[0].data && int_a[0].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(int_a[0].data), "uniprint/params")); };
         int_a[0].data = ((void*)0); if(0 < (6)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, 6, sizeof(int_a[0].data[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(6)*sizeof(int_a[0].data[0])); int_a[0].data = (void *) tmp; } else { return ((-25)); } };
         int_a[0].size = 6;
      }
      ip = (int *) upd_cast(int_a[0].data);

      if(0 == ip[0]) {
         switch(choice[0]) {
            case 1: ip[0] = 1; break;
            case 2: ip[0] = 3; break;
            case 3: ip[0] = 3; break;
            case 4: ip[0] = 4; break;
            case 5: ip[0] = 4; break;
            case 6: ip[0] = 3; break;
            case 7: ip[0] = 3; break;
            default: ip[0] = color_info.num_components; break;
         }
      }

      switch(choice[0]) {
         case 1: ncomp = 1; break;
         case 2: ncomp = 4; break;
         case 3: ncomp = 3; break;
         case 4: ncomp = 4; break;
         case 5: ncomp = 4; break;
         case 6: ncomp = 4; break;
         case 7: ncomp = 4; break;
         default: ncomp = ip[0]; break;
      }
      if(4 < ncomp) ncomp = 4;

      if(ncomp > int_a[1].size) {
         ip2 = ((void*)0); if(0 < (ncomp)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, ncomp, sizeof(ip2[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(ncomp)*sizeof(ip2[0])); ip2 = (void *) tmp; } else { return ((-25)); } };
         nbits = 32 / ncomp;
         if(8 < nbits) nbits = 8;
         for(i = 0; i < ncomp; ++i) ip2[i] = nbits;
         { if(int_a[1].data && int_a[1].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(int_a[1].data), "uniprint/params")); };
         int_a[1].data = ip2;
         int_a[1].size = ncomp;
      }

      if(ncomp > int_a[2].size) {
         nbits = 0;
         for(i = 0; i < ncomp; ++i) nbits += int_a[1].data[i];
         ip2 = ((void*)0); if(0 < (ncomp)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, ncomp, sizeof(ip2[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(ncomp)*sizeof(ip2[0])); ip2 = (void *) tmp; } else { return ((-25)); } };
         for(i = 0; i < ncomp; ++i) {
            ip2[i] = nbits - int_a[1].data[i];
            nbits -= int_a[1].data[i];
         }
         { if(int_a[2].data && int_a[2].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(int_a[2].data), "uniprint/params")); };
         int_a[2].data = ip2;
         int_a[2].size = ncomp;
      }

      if(0 == ip[1]) {
         nbits = 0;
         for(i = 0; i < ncomp; ++i) {
            if(nbits < (int_a[1].data[i] +
                        int_a[2].data[i]))
               nbits = int_a[1].data[i] +
                        int_a[2].data[i];
         }
         if( 1 >= nbits) nbits = 1;
         else if( 2 >= nbits) nbits = 2;
         else if( 4 >= nbits) nbits = 4;
         else if( 8 >= nbits) nbits = 8;
         else if(16 >= nbits) nbits = 16;
         else if(24 >= nbits) nbits = 24;
         else nbits = 32;

         ip[1] = nbits;

      }

      if(0 == ip[2]) {
         nbits = 0;
         for(i = 0; i < ncomp; ++i) if(nbits < int_a[1].data[i])
            nbits = int_a[1].data[i];
         if(nbits > 8) nbits = 8;
         ip[2] = (1 << nbits) - 1;
      }

      if(0 == ip[3] && 1 < ip[0]) {
         nbits = 0;
         for(i = 0; i < ip[0]; ++i) nbits += int_a[1].data[i];
         if(nbits > 8) nbits = 8;
         ip[3] = (1 << nbits) - 1;
      }

      if(0 == ip[4]) {
         nbits = 0;
         for(i = 0; i < ncomp; ++i) if(nbits < int_a[1].data[i])
            nbits = int_a[1].data[i];
         if(2 < nbits) ip[4] = 256;
         else ip[4] = 2;
      }

      if(0 == ip[5] && 1 < ip[0]) {
         nbits = 0;
         for(i = 0; i < ncomp; ++i) if(nbits < int_a[1].data[i])
            nbits = int_a[1].data[i];
         if(2 < nbits) ip[5] = 256;
         else ip[5] = 2;
      }

      udev->color_info.num_components = ip[0];
      udev->color_info.depth = ip[1];
      udev->color_info.max_gray = (gx_color_value) ip[2];
      udev->color_info.max_color = (gx_color_value) ip[3];
      udev->color_info.dither_grays = (gx_color_value) ip[4];
      udev->color_info.dither_colors = (gx_color_value) ip[5];





      if((0 == param_read_float_array(plist,"HWResolution",&mfa)) &&
         (2 == mfa.size) && (0 != mfa.data)) {
         udev->MarginsHWResolution[0] = mfa.data[0];
         udev->MarginsHWResolution[1] = mfa.data[1];
      } else {
         udev->MarginsHWResolution[0] = udev->HWResolution[0];
         udev->MarginsHWResolution[1] = udev->HWResolution[1];
      }

      if((0 == param_read_float_array(plist,".HWMargins",&mfa)) &&
         (4 == mfa.size) && (0 != mfa.data)) {
         udev->Margins[0] = -mfa.data[0] * udev->MarginsHWResolution[0] / 72.0;
         udev->Margins[1] = -mfa.data[3] * udev->MarginsHWResolution[1] / 72.0;
      }
   }


   code = gdev_prn_put_params((gx_device *)udev,plist);
   if(0 > code) error = code;
# 2086 "./devices/gdevupd.c"
   if( udev->upd &&
      ((udev->width != udev->upd->pdwidth) ||
      (udev->height != udev->upd->pdheight) ))
        error |= 0x0100;

   if(0 < error && udev->is_open) {
      code = gs_closedevice((gx_device *)udev);
      if(0 > code) error = code;
   }

   if(0 < error) {

      if(!(upd = udev->upd)) {
        udev->upd = ((void*)0); if(0 < (1)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, 1, sizeof(udev->upd[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(1)*sizeof(udev->upd[0])); udev->upd = (void *) tmp; } else { return ((-25)); } };
        upd = udev->upd;
      } else {
        if(upd->choice && 0 < ((sizeof(upd_choice) / sizeof((upd_choice)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_choice) / sizeof((upd_choice)[0]))) > ii; ++ii) ; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->choice), "uniprint/params")); } upd->choice = 0;
        if(upd->ints && 0 < ((sizeof(upd_ints) / sizeof((upd_ints)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_ints) / sizeof((upd_ints)[0]))) > ii; ++ii) ; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->ints), "uniprint/params")); } upd->ints = 0;
        if(upd->int_a && 0 < ((sizeof(upd_int_a) / sizeof((upd_int_a)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_int_a) / sizeof((upd_int_a)[0]))) > ii; ++ii) { if(upd->int_a[ii].data && upd->int_a[ii].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->int_a[ii].data), "uniprint/params")); }; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->int_a), "uniprint/params")); } upd->int_a = 0;
        if(upd->strings && 0 < ((sizeof(upd_strings) / sizeof((upd_strings)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_strings) / sizeof((upd_strings)[0]))) > ii; ++ii) { if(upd->strings[ii].data && upd->strings[ii].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->strings[ii].data), "uniprint/params")); }; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->strings), "uniprint/params")); } upd->strings = 0;
        if(upd->string_a && 0 < ((sizeof(upd_string_a) / sizeof((upd_string_a)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_string_a) / sizeof((upd_string_a)[0]))) > ii; ++ii) { if(upd->string_a[ii].data && upd->string_a[ii].size) { uint iii; for(iii = 0; iii < upd->string_a[ii].size; ++iii) { if(upd->string_a[ii].data[iii].data && upd->string_a[ii].data[iii].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->string_a[ii].data[iii].data), "uniprint/params")); }; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->string_a[ii].data), "uniprint/params")); } }; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->string_a), "uniprint/params")); } upd->string_a = 0;
        if(upd->float_a && 0 < ((sizeof(upd_float_a) / sizeof((upd_float_a)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_float_a) / sizeof((upd_float_a)[0]))) > ii; ++ii) { if(upd->float_a[ii].data && upd->float_a[ii].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->float_a[ii].data), "uniprint/params")); }; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->float_a), "uniprint/params")); } upd->float_a = 0;
      }

      upd->choice = choice;
      upd->flags = flags;
      upd->ints = ints;
      upd->int_a = int_a;
      upd->strings = strings;
      upd->string_a = string_a;
      upd->float_a = float_a;
      upd->memory = udev->memory;

      if(0 < error) error = 0;

   } else {

                  udev->Margins[0] = Margins[0];
                  udev->Margins[1] = Margins[1];
      udev->MarginsHWResolution[0] = MarginsHWResolution[0];
      udev->MarginsHWResolution[1] = MarginsHWResolution[1];

      udev->color_info = color_info;
      if(choice && 0 < ((sizeof(upd_choice) / sizeof((upd_choice)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_choice) / sizeof((upd_choice)[0]))) > ii; ++ii) ; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(choice), "uniprint/params")); } choice = 0;
      if(ints && 0 < ((sizeof(upd_ints) / sizeof((upd_ints)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_ints) / sizeof((upd_ints)[0]))) > ii; ++ii) ; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(ints), "uniprint/params")); } ints = 0;
      if(int_a && 0 < ((sizeof(upd_int_a) / sizeof((upd_int_a)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_int_a) / sizeof((upd_int_a)[0]))) > ii; ++ii) { if(int_a[ii].data && int_a[ii].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(int_a[ii].data), "uniprint/params")); }; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(int_a), "uniprint/params")); } int_a = 0;
      if(strings && 0 < ((sizeof(upd_strings) / sizeof((upd_strings)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_strings) / sizeof((upd_strings)[0]))) > ii; ++ii) { if(strings[ii].data && strings[ii].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(strings[ii].data), "uniprint/params")); }; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(strings), "uniprint/params")); } strings = 0;
      if(string_a && 0 < ((sizeof(upd_string_a) / sizeof((upd_string_a)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_string_a) / sizeof((upd_string_a)[0]))) > ii; ++ii) { if(string_a[ii].data && string_a[ii].size) { uint iii; for(iii = 0; iii < string_a[ii].size; ++iii) { if(string_a[ii].data[iii].data && string_a[ii].data[iii].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(string_a[ii].data[iii].data), "uniprint/params")); }; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(string_a[ii].data), "uniprint/params")); } }; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(string_a), "uniprint/params")); } string_a = 0;
      if(float_a && 0 < ((sizeof(upd_float_a) / sizeof((upd_float_a)[0])))) { uint ii; for(ii = 0; ((sizeof(upd_float_a) / sizeof((upd_float_a)[0]))) > ii; ++ii) { if(float_a[ii].data && float_a[ii].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(float_a[ii].data), "uniprint/params")); }; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(float_a), "uniprint/params")); } float_a = 0;

   }





   upd_procs_map(udev);






   return error;
}
# 2164 "./devices/gdevupd.c"
static gx_color_index
upd_cmyk_icolor(gx_device *pdev, const gx_color_value cv[])
{
   const upd_p upd = ((upd_device *)pdev)->upd;
   gx_color_index rv;
   gx_color_value c, m, y, k;
   c = cv[0]; m = cv[1]; y = cv[2]; k = cv[3];
# 2180 "./devices/gdevupd.c"
   if((c == m) && (m == y)) {

      rv = upd_truncate(upd,0,(gx_color_value)(c > k ? c : k));

   } else {

      rv = upd_truncate(upd,0,k) | upd_truncate(upd,1,c)
          | upd_truncate(upd,2,m) | upd_truncate(upd,3,y);



      if(rv == ((gx_color_index)(~0))) rv ^= 1;
   }
# 2212 "./devices/gdevupd.c"
   return rv;
}





static int
upd_icolor_rgb(gx_device *pdev, gx_color_index color, gx_color_value prgb[3])
{
   const upd_p upd = ((upd_device *)pdev)->upd;
   gx_color_value c,m,y,k;




   k = upd_expand(upd,0,color);
   c = upd_expand(upd,1,color);
   m = upd_expand(upd,2,color);
   y = upd_expand(upd,3,color);




   prgb[0] = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - c;
   if(prgb[0] > k) prgb[0] -= k;
   else prgb[0] = 0;

   prgb[1] = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - m;
   if(prgb[1] > k) prgb[1] -= k;
   else prgb[1] = 0;

   prgb[2] = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - y;
   if(prgb[2] > k) prgb[2] -= k;
   else prgb[2] = 0;
# 2269 "./devices/gdevupd.c"
   return 0;
}





static gx_color_index
upd_rgb_1color(gx_device *pdev, const gx_color_value cv[])
{
   const upd_p upd = ((upd_device *)pdev)->upd;
   gx_color_index rv;
   gx_color_value g;

   g = cv[0];
   rv = upd_truncate(upd,0,g);
# 2295 "./devices/gdevupd.c"
   return rv;
}





static int
upd_1color_rgb(gx_device *pdev, gx_color_index color, gx_color_value cv[1])
{
   const upd_p upd = ((upd_device *)pdev)->upd;



   cv[0] = upd_expand(upd,0,color);
# 2321 "./devices/gdevupd.c"
   return 0;
}





static gx_color_index
upd_rgb_3color(gx_device *pdev, const gx_color_value cv[])
{
   const upd_p upd = ((upd_device *)pdev)->upd;
   gx_color_index rv;
   gx_color_value r, g, b;
   r = cv[0]; g = cv[1]; b = cv[2];

   rv = upd_truncate(upd,0,r) | upd_truncate(upd,1,g) | upd_truncate(upd,2,b);
   if(rv == ((gx_color_index)(~0))) rv ^= 1;
# 2354 "./devices/gdevupd.c"
   return rv;
}





static int
upd_3color_rgb(gx_device *pdev, gx_color_index color, gx_color_value prgb[3])
{
   const upd_p upd = ((upd_device *)pdev)->upd;

   prgb[0] = upd_expand(upd,0,color);
   prgb[1] = upd_expand(upd,1,color);
   prgb[2] = upd_expand(upd,2,color);
# 2386 "./devices/gdevupd.c"
   return 0;
}





static gx_color_index
upd_rgb_4color(gx_device *pdev, const gx_color_value cv[])
{
   const upd_p upd = ((upd_device *)pdev)->upd;
   gx_color_index rv;
   gx_color_value r, g, b;

   r = cv[0]; g = cv[1]; b = cv[2];

   if((r == g) && (g == b)) {

      rv = upd_truncate(upd,0,r);

   } else {

      gx_color_value w = g < r ? g : r; w = w < b ? w : b;

      rv = upd_truncate(upd,0,w) | upd_truncate(upd,1,r) |
           upd_truncate(upd,2,g) | upd_truncate(upd,3,b);



      if(rv == ((gx_color_index)(~0))) rv ^= 1;
   }
# 2435 "./devices/gdevupd.c"
   return rv;
}





static int
upd_4color_rgb(gx_device *pdev, gx_color_index color, gx_color_value prgb[3])
{
   const upd_p upd = ((upd_device *)pdev)->upd;




   prgb[0] = upd_expand(upd,1,color);
   prgb[1] = upd_expand(upd,2,color);
   prgb[2] = upd_expand(upd,3,color);


   if(!(prgb[0] || prgb[1] || prgb[2]))
      prgb[0] = prgb[1] = prgb[2] = upd_expand(upd,0,color);
# 2475 "./devices/gdevupd.c"
   return 0;
}





static gx_color_index
upd_cmyk_kcolor(gx_device *pdev, const gx_color_value cv[])
{
   const upd_p upd = ((upd_device *)pdev)->upd;
   gx_color_index rv;
   gx_color_value black;

   gx_color_value c, m, y, k;
   c = cv[0]; m = cv[1]; y = cv[2]; k = cv[3];

   if((c == m) && (m == y)) {

      black = c > k ? c : k;
      rv = upd_truncate(upd,0,black);

   } else {

      if(k && !(c | m | y)) {
         black = k;
      } else {
         black = c < m ? c : m;
         black = black < y ? black : y;
      }

      rv = upd_truncate(upd,0,black) | upd_truncate(upd,1,c)
          | upd_truncate(upd,2,m) | upd_truncate(upd,3,y);



      if(rv == ((gx_color_index)(~0))) rv ^= 1;
   }
# 2532 "./devices/gdevupd.c"
   return rv;
}





static int
upd_kcolor_rgb(gx_device *pdev, gx_color_index color, gx_color_value prgb[3])
{
   const upd_p upd = ((upd_device *)pdev)->upd;
   gx_color_value c,m,y,k;




   k = upd_expand(upd,0,color);
   c = upd_expand(upd,1,color);
   m = upd_expand(upd,2,color);
   y = upd_expand(upd,3,color);




   if(!(c | m | y )) {

      prgb[2] = prgb[1] = prgb[0] = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - k;

   } else {
      prgb[0] = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - c;
      prgb[1] = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - m;
      prgb[2] = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - y;
   }
# 2587 "./devices/gdevupd.c"
   return 0;
}





static gx_color_index
upd_rgb_ovcolor(gx_device *pdev, const gx_color_value cv[])
{
   const upd_p upd = ((upd_device *)pdev)->upd;
   gx_color_index rv;
   gx_color_value c,m,y,black;
   gx_color_value r, g, b;
   r = cv[0]; g = cv[1]; b = cv[2];
   if((r == g) && (g == b)) {

      black = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - r;
      rv = upd_truncate(upd,0,black);
      c = m = y = 0;

   } else {

      c = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - r;
      m = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - g;
      y = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - b;

      black = c < m ? c : m;
      black = black < y ? black : y;

      if(black != ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1))) {
        float tmp,d;

        d = (float)(((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - black);

        tmp = (float) (c-black) / d;
        if( 0.0 > tmp) tmp = 0.0;
        else if( 1.0 < tmp) tmp = 1.0;
        c = (gx_color_value)(tmp * ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) + 0.499);

        tmp = (float) (m-black) / d;
        if( 0.0 > tmp) tmp = 0.0;
        else if( 1.0 < tmp) tmp = 1.0;
        m = (gx_color_value)(tmp * ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) + 0.499);

        tmp = (float) (y-black) / d;
        if( 0.0 > tmp) tmp = 0.0;
        else if( 1.0 < tmp) tmp = 1.0;
        y = (gx_color_value)(tmp * ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) + 0.499);

      } else {

        c = m = y = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1));

      }

      rv = upd_truncate(upd,0,black) | upd_truncate(upd,1,c) |
           upd_truncate(upd,2,m) | upd_truncate(upd,3,y);



      if(rv == ((gx_color_index)(~0))) rv ^= 1;
   }
# 2668 "./devices/gdevupd.c"
   return rv;
}





static gx_color_index
upd_rgb_novcolor(gx_device *pdev, const gx_color_value cv[])
{
   const upd_p upd = ((upd_device *)pdev)->upd;
   gx_color_index rv;
   gx_color_value c,m,y,black;
   gx_color_value r, g, b;
   r = cv[0]; g = cv[1]; b = cv[2];

   if((r == g) && (g == b)) {

      black = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - r;
      rv = upd_truncate(upd,0,black);
      c = m = y = 0;

   } else {

      c = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - r;
      m = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - g;
      y = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - b;

      black = c < m ? c : m;
      black = black < y ? black : y;
      c = c - black;
      m = m - black;
      y = y - black;

      rv = upd_truncate(upd,0,black) | upd_truncate(upd,1,c) |
           upd_truncate(upd,2,m) | upd_truncate(upd,3,y);



      if(rv == ((gx_color_index)(~0))) rv ^= 1;
   }
# 2727 "./devices/gdevupd.c"
   return rv;
}
# 2738 "./devices/gdevupd.c"
static uint32_t
upd_truncate(upd_pc upd,int i,gx_color_value v) {
   const updcmap_pc cmap = upd->cmap + i;
   int32_t s;
   gx_color_value *p;

   if(0 == cmap->bits) {

      v = 0;

   } else if((sizeof(gx_color_value) * 8) > cmap->bits) {

      p = cmap->code + ((cmap->bitmsk + 1) >> 1);
      s = ((cmap->bitmsk + 1) >> 2);



      while(s > 0) {
         if(v > *p) {
            p += s;
         } else if(v < p[-1]) {
            p -= s;
         } else {

            if((v-p[-1]) < (p[0]-v)) p -= 1;
            break;
         }
         s >>= 1;
      }
      if((v-p[-1]) < (p[0]-v)) p -= 1;
      v = p - cmap->code;
   }

   if(!cmap->rise) v = cmap->bitmsk - v;

   return ((uint32_t) v) << cmap->bitshf;
}





static int
upd_open_map(upd_device *udev)
{
   const upd_p upd = udev->upd;
   int imap;


   for(imap = 0; 4 > imap; ++imap) upd->cmap[imap].code = ((void*)0);
   upd->ncomp = 0;


   if(((uint32_t) 1<<17) & upd->flags) imap = 0;


   if(imap) {
      for(imap = 0; 4 > imap; ++imap) {
         upd->cmap[imap].xfer = -1;
         upd->cmap[imap].bits = 0;
      }
      switch(upd->choice[0]) {
         case 1:
            upd->cmap[0].xfer = 0;
         break;
         case 2:
            upd->cmap[0].xfer = 0;
            upd->cmap[1].xfer = 1;
            upd->cmap[2].xfer = 2;
            upd->cmap[3].xfer = 3;
         break;
         case 3:
            upd->cmap[0].xfer = 1;
            upd->cmap[1].xfer = 2;
            upd->cmap[2].xfer = 3;
         break;
         case 4:
            upd->cmap[0].xfer = 4;
            upd->cmap[1].xfer = 5;
            upd->cmap[2].xfer = 6;
            upd->cmap[3].xfer = 7;
         break;
         case 5:
            upd->cmap[0].xfer = 4;
            upd->cmap[1].xfer = 5;
            upd->cmap[2].xfer = 6;
            upd->cmap[3].xfer = 7;
         break;
         case 6:
            upd->cmap[0].xfer = 4;
            upd->cmap[1].xfer = 5;
            upd->cmap[2].xfer = 6;
            upd->cmap[3].xfer = 7;
         break;
         case 7:
            upd->cmap[0].xfer = 4;
            upd->cmap[1].xfer = 5;
            upd->cmap[2].xfer = 6;
            upd->cmap[3].xfer = 7;
         break;
         default:
# 2849 "./devices/gdevupd.c"
            imap = 0;
         break;
      }
   }



   if(imap) {




      bool success = ((bool)1);

      for(imap = 0; 4 > imap; ++imap) {
         if(0 > upd->cmap[imap].xfer) continue;

         if((0 > upd->int_a[1].data[imap]) ||
            ((sizeof(gx_color_value) * 8) < upd->int_a[1].data[imap]) ||
            (0 > upd->int_a[2].data[imap]) ||
            (upd->int_a[1].data[imap] >
             (udev->color_info.depth - upd->int_a[2].data[imap]))) {







            success = ((bool)0);

         } else {

            int n;
            const float *now;
            float last;

            if((((void*)0) == upd->float_a[upd->cmap[imap].xfer].data) ||
               (2 > upd->float_a[upd->cmap[imap].xfer].size) ) {
               float *fp;
               { if(upd->float_a[upd->cmap[imap].xfer].data && upd->float_a[upd->cmap[imap].xfer].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->float_a[upd->cmap[imap].xfer].data), "uniprint/params")); };
               fp = ((void*)0); if(0 < (2)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, 2, sizeof(fp[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(2)*sizeof(fp[0])); fp = (void *) tmp; } else { return ((-25)); } };
               fp[0] = 0.0;
               fp[1] = 1.0;
               upd->float_a[upd->cmap[imap].xfer].data = fp;
               upd->float_a[upd->cmap[imap].xfer].size = 2;
            }
            n = upd->float_a[upd->cmap[imap].xfer].size-1;
            now = upd->float_a[upd->cmap[imap].xfer].data;
            last = now[n];

            if( *now < last) {
               last = *now++;
               while(n--) {
                 if(last >= *now) break;
                 last = *now++;
               }
            } else if(*now > last) {
               last = *now++;
               while(n--) {
                 if(last <= *now) break;
                 last = *now++;
               }
            }

            if(0 <= n) {




               success = ((bool)0);

            } else {
# 2933 "./devices/gdevupd.c"
            }
         }
      }

      if(!success) imap = 0;

   }



   if(imap) {

      for(imap = 0; 4 > imap; ++imap) {
         if(0 > upd->cmap[imap].xfer) continue;

         upd->cmap[imap].bits = upd->int_a[1].data[imap];
         upd->cmap[imap].bitshf = upd->int_a[2].data[imap];
         upd->cmap[imap].bitmsk = 1;
         upd->cmap[imap].bitmsk <<= upd->cmap[imap].bits;
         upd->cmap[imap].bitmsk -= 1;
         upd->cmap[imap].rise =
            upd->float_a[upd->cmap[imap].xfer].data[0] <
            upd->float_a[upd->cmap[imap].xfer].data[
               upd->float_a[upd->cmap[imap].xfer].size-1] ?
            ((bool)1) : ((bool)0);
         upd->cmap[imap].code = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->cmap[imap].bitmsk+1, sizeof(upd->cmap[imap].code[0]), "upd/code");

         if(!upd->cmap[imap].code) break;
      }

      if(4 > imap) {

         imap = 0;


            errprintf(udev->memory,
                      "upd_open_map: could not allocate code-arrays\n");


      }
   }



   if(imap) {







      for(imap = 0; 4 > imap; ++imap) {

         const updcmap_p cmap = upd->cmap + imap;
         uint32_t ly,iy;
         float ystep,xstep,fx,fy;


         double offset,scale;


         if(0 > cmap->xfer) continue;

         cmap->code[cmap->bitmsk] = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1));

         if(!cmap->bits) continue;

         offset = upd->float_a[cmap->xfer].data[0];
         if( 0.0 > offset) offset = 0.0;
         else if(1.0 < offset) offset = 1.0;

         scale = upd->float_a[cmap->xfer].data[upd->float_a[cmap->xfer].size-1];
         if( 0.0 > scale ) scale = 0.0;
         else if(1.0 < scale ) scale = 1.0;

         if(scale != offset) scale = 1.0 / (scale - offset);
         else scale = 0.0;


         ystep = (float) 1.0 / (float) cmap->bitmsk;
         xstep = (float) 1.0 / (float)(upd->float_a[cmap->xfer].size - 1);

         iy = 0;
         for(ly = 0; ly <= cmap->bitmsk; ++ly) {

            fy = ystep * ly;

            while(((iy+2) < upd->float_a[cmap->xfer].size) &&
                  (fy > ((upd->float_a[cmap->xfer].data[iy+1]-offset)*scale))) ++iy;

            fx = iy + (fy - ((upd->float_a[cmap->xfer].data[iy]-offset)*scale))/(((upd->float_a[cmap->xfer].data[iy+1]-offset)*scale) - ((upd->float_a[cmap->xfer].data[iy]-offset)*scale));

            fx *= xstep * ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1));

            fx = fx < 0.0 ? 0.0 :
                 (fx > ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) ? ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) : fx);

            cmap->code[ly] = (gx_color_value)fx;
            if((fx - cmap->code[ly]) >= 0.5) cmap->code[ly] += 1;
         }



      }
   }



   if(imap) {
      switch(upd->choice[0]) {
         case 1:
           if(1 > imap) imap = 0;
           upd->ncomp = 1;
         break;
         case 2:
           if(4 > imap) imap = 0;
           upd->ncomp = 4;
         break;
         case 3:
           if(3 > imap) imap = 0;
           upd->ncomp = 3;
         break;
         case 4:
           if(4 > imap) imap = 0;
            upd->ncomp = 4;
         break;
         case 5:
           if(4 > imap) imap = 0;
           upd->ncomp = 4;
         break;
         case 6:
           if(4 > imap) imap = 0;
           upd->ncomp = 4;
         break;
         case 7:
           if(4 > imap) imap = 0;
           upd->ncomp = 4;
         break;

         default:
           imap = 0;





         break;
      }
   }



   if(!imap) {
      upd_close_map(udev);
   } else {
      upd->flags |= ((uint32_t) 1<<12);
      upd_procs_map(udev);
   }

   return imap ? 1 : -1;
}





static int
upd_procs_map(upd_device *udev)
{
   int imap;

   if( udev->upd &&
      (udev->upd->flags & ((uint32_t) 1<<12))) imap = udev->upd->choice[0];
   else imap = 0;

   switch(imap) {
     case 1:
       ((udev)->procs.encode_color = (upd_rgb_1color));
       ((udev)->procs.decode_color = (upd_1color_rgb));
       ((udev)->procs.map_rgb_color = (upd_rgb_1color));
       ((udev)->procs.map_cmyk_color = (gx_default_map_cmyk_color));
       ((udev)->procs.map_color_rgb = (upd_1color_rgb));
     break;
     case 2:
       ((udev)->procs.encode_color = (upd_rgb_4color));
       ((udev)->procs.decode_color = (upd_4color_rgb));
       ((udev)->procs.map_rgb_color = (upd_rgb_4color));
       ((udev)->procs.map_cmyk_color = (gx_default_map_cmyk_color));
       ((udev)->procs.map_color_rgb = (upd_4color_rgb));
     break;
     case 3:
       ((udev)->procs.encode_color = (upd_rgb_3color));
       ((udev)->procs.decode_color = (upd_3color_rgb));
       ((udev)->procs.map_rgb_color = (upd_rgb_3color));
       ((udev)->procs.map_cmyk_color = (gx_default_map_cmyk_color));
       ((udev)->procs.map_color_rgb = (upd_3color_rgb));
     break;
     case 4:
       ((udev)->procs.encode_color = (upd_cmyk_icolor));
       ((udev)->procs.decode_color = (upd_icolor_rgb));
       ((udev)->procs.map_rgb_color = (gx_default_w_b_map_rgb_color));
       ((udev)->procs.map_cmyk_color = (upd_cmyk_icolor));
       ((udev)->procs.map_color_rgb = (upd_icolor_rgb));
     break;
     case 5:
       ((udev)->procs.encode_color = (upd_cmyk_kcolor));
       ((udev)->procs.decode_color = (upd_kcolor_rgb));
       ((udev)->procs.map_rgb_color = (gx_default_w_b_map_rgb_color));
       ((udev)->procs.map_cmyk_color = (upd_cmyk_kcolor));
       ((udev)->procs.map_color_rgb = (upd_kcolor_rgb));
     break;
     case 6:
       ((udev)->procs.encode_color = (upd_rgb_ovcolor));
       ((udev)->procs.decode_color = (upd_icolor_rgb));
       ((udev)->procs.map_rgb_color = (upd_rgb_ovcolor));
       ((udev)->procs.map_cmyk_color = (gx_default_map_cmyk_color));
       ((udev)->procs.map_color_rgb = (upd_icolor_rgb));
     break;
     case 7:
       ((udev)->procs.encode_color = (upd_rgb_novcolor));
       ((udev)->procs.decode_color = (upd_icolor_rgb));
       ((udev)->procs.map_rgb_color = (upd_rgb_novcolor));
       ((udev)->procs.map_cmyk_color = (gx_default_map_cmyk_color));
       ((udev)->procs.map_color_rgb = (upd_icolor_rgb));
     break;

     default:
       ((udev)->procs.encode_color = (gx_default_w_b_map_rgb_color));
       ((udev)->procs.decode_color = (gx_default_w_b_map_color_rgb));
       ((udev)->procs.map_rgb_color = (gx_default_w_b_map_rgb_color));
       ((udev)->procs.map_cmyk_color = (gx_default_map_cmyk_color));
       ((udev)->procs.map_color_rgb = (gx_default_w_b_map_color_rgb));
     break;
  }
  return 0;

}





static int
upd_close_map(upd_device *udev)
{
   const upd_p upd = udev->upd;
   int imap;

   if(upd) {

      for(imap = 0; 4 > imap; ++imap) {

         if(upd->cmap[imap].code)
            ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd->cmap[imap].code, "upd/code"));

         upd->cmap[imap].code = ((void*)0);

         upd->cmap[imap].bitmsk = 0;
         upd->cmap[imap].bitshf = 0;
         upd->cmap[imap].bits = 0;
         upd->cmap[imap].rise = ((bool)0);
      }
      upd->flags &= ~((uint32_t) 1<<12);
   }

   upd_procs_map(udev);

   return 0;
}
# 3220 "./devices/gdevupd.c"
static void
upd_open_render(upd_device *udev)
{
   const upd_p upd = udev->upd;
   int icomp;


   upd->flags &= ~((uint32_t) 1<<14);
   upd->valbuf = ((void*)0);
   upd->nvalbuf = 0;
   upd->render = ((void*)0);
   upd->start_render = ((void*)0);
   for(icomp = 0; 32 > icomp; ++icomp) upd->valptr[icomp] = ((void*)0);

   if( (((uint32_t) 1<<13) | ((uint32_t) 1<<12)) ==
      ((((uint32_t) 1<<13) | ((uint32_t) 1<<12) | ((uint32_t) 1<<17)) & upd->flags)) {


      upd->rwidth = upd->gswidth;
      if((0 < upd->ints[0]) &&
         (upd->gswidth > upd->ints[0]) )
          upd->rwidth = upd->ints[0];


      switch(upd->choice[1]) {
         case 1:
            upd_open_fscomp(udev);
         break;
         case 2:
            upd_open_fscmyk(udev);
         break;
         case 3:
            upd_open_fscmy_k(udev);
         break;
         default:




         break;
      }
   }

   if(((uint32_t) 1<<14) != ((((uint32_t) 1<<17) | ((uint32_t) 1<<14)) & upd->flags))
      upd_close_render(udev);

   return;
}





static void
upd_close_render(upd_device *udev)
{
   const upd_p upd = udev->upd;

   if(upd) {
      int icomp;

      if((upd->render == upd_fscomp) ||
         (upd->render == upd_fscmyk) ) upd_close_fscomp(udev);

      if((0 < upd->nvalbuf) && upd->valbuf)
         ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd->valbuf, "upd/valbuf"));
      upd->valbuf = ((void*)0);
      upd->nvalbuf = 0;

      upd->flags &= ~((uint32_t) 1<<14);
      upd->render = ((void*)0);
      upd->start_render = ((void*)0);
      for(icomp = 0; 32 > icomp; ++icomp) upd->valptr[icomp] = ((void*)0);

   }
   return;
}







static void
upd_open_fscomp(upd_device *udev)
{
   const upd_p upd = udev->upd;
   int icomp,order[4];






   icomp = upd->ncomp;

   if((0 >= icomp) ||
      (32 < icomp) ||
      (4 < icomp) ) icomp = 0;







   if(icomp) {
      if(upd->ncomp <= upd->int_a[3].size) {
         bool success = ((bool)1);
         for(icomp = 0; upd->ncomp > icomp; ++icomp) {
            order[icomp] = upd->int_a[3].data[icomp];
            if((0 > order[icomp]) ||
               (4 <= order[icomp]) ) {
               success = ((bool)0);





            }
         }
         if(!success) icomp = 0;
      } else {
         for(icomp = 0; 4 > icomp; ++icomp) order[icomp] = icomp;
      }
   }




   if(icomp) {

      for(icomp = 0; upd->ncomp > icomp; ++icomp) {
         upd->valptr[icomp] = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, 1, sizeof(updcomp_t), "upd/fscomp");
         if(((void*)0) == upd->valptr[icomp]) {

            errprintf(udev->memory,
                      "upd_open_fscomp: could not allocate %d. updcomp\n",
                      icomp);

            icomp = 0;
            break;
         }
      }
   }

   if(icomp) {
      uint need;

      need = (2 + upd->rwidth) * upd->ncomp;
      upd->valbuf = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, need, sizeof(upd->valbuf[0]), "upd/valbuf");

      if(upd->valbuf) {
         upd->nvalbuf = need;
         memset(upd->valbuf,0,need*sizeof(upd->valbuf[0]));
      } else {

         errprintf(udev->memory,
                   "upd_open_fscomp: could not allocate %u words for valbuf\n",
                   need);

         icomp = 0;
      }
   }



   if(icomp) {
      for(icomp = 0; upd->ncomp > icomp; ++icomp) {

         const updcomp_p comp = upd->valptr[icomp];
         const int32_t nsteps = upd->cmap[order[icomp]].bitmsk;
         float ymin,ymax;
         int32_t highmod,highval;
         int i;

         comp->threshold = nsteps;
         comp->spotsize = nsteps;
         comp->offset = 0;
         comp->scale = 1;
         comp->cmap = order[icomp];
         upd->cmap[comp->cmap].comp = icomp;
         comp->bits = upd->cmap[comp->cmap].bits;
         comp->bitshf = upd->cmap[comp->cmap].bitshf;
         comp->bitmsk = upd->cmap[comp->cmap].bitmsk;

         if(!nsteps) continue;

         if(upd->cmap[comp->cmap].rise) {
            ymin = upd->float_a[upd->cmap[comp->cmap].xfer].data[0];
            ymax = upd->float_a[upd->cmap[comp->cmap].xfer].data[
                      upd->float_a[upd->cmap[comp->cmap].xfer].size-1];
         } else {
            ymax = upd->float_a[upd->cmap[comp->cmap].xfer].data[0];
            ymin = upd->float_a[upd->cmap[comp->cmap].xfer].data[
                      upd->float_a[upd->cmap[comp->cmap].xfer].size-1];
         }

         if(0.0 > ymin) {
            ymin = 0.0;
            if(0.0 > ymax) ymax = 1.0 / (float) (nsteps+1);
         }
         if(1.0 < ymax) ymax = 1.0;

         comp->spotsize = ((int32_t) 1 << 28) - 1;

         for(i = 0; i < 32; ++i) {

            highval = (int32_t)((ymax-ymin) * (double) comp->spotsize + 0.5);

            if(!(highmod = highval % nsteps)) break;

            highval += nsteps - highmod;
            comp->spotsize = (int32_t)((double) highval / (ymax-ymin) + 0.5);

            if(!(comp->spotsize % 2)) comp->spotsize++;

         }

         comp->offset = (int32_t)(ymin * (double) comp->spotsize + (double) 0.5);
         comp->scale = highval / nsteps;
         comp->threshold = comp->spotsize / 2;
# 3462 "./devices/gdevupd.c"
      }
   }



   if(icomp && !(((uint32_t) 1<<3) & upd->flags)) {
      for(icomp = 0; icomp < upd->ncomp; ++icomp) {
         const updcomp_p comp = upd->valptr[icomp];
         int i;
         int32_t lv = 2147483647, hv = (-2147483647 -1), v;
         float scale;
         for(i = icomp; i < upd->nvalbuf; i += upd->ncomp) {
            v = rand();
            if(lv > v) lv = v;
            if(hv < v) hv = v;
            upd->valbuf[i] = v;
         }
         scale = (float) comp->threshold / (float) (hv - lv);
         lv += (int32_t)(comp->threshold / (2*scale));
         for(i = icomp; i < upd->nvalbuf; i += upd->ncomp)
            upd->valbuf[i] = (int32_t)(scale * (upd->valbuf[i] - lv));
      }
   }




   upd->render = upd_fscomp;

   if(icomp) upd->flags |= ((uint32_t) 1<<14);
   else upd->flags &= ~((uint32_t) 1<<14);

   return;
}





static void
upd_close_fscomp(upd_device *udev)
{
   const upd_p upd = udev->upd;
   int icomp;
# 3523 "./devices/gdevupd.c"
   for(icomp = 0; 32 > icomp; ++icomp) {
      if(!upd->valptr[icomp]) continue;
      ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd->valptr[icomp], "upd/fscomp"));
      upd->valptr[icomp] = ((void*)0);
   }
}
# 3577 "./devices/gdevupd.c"
static int
upd_fscomp(upd_p upd)
{
   const updscan_p scan = upd->scnbuf[upd->yscnbuf & upd->scnmsk];
   const updcomp_p *comp = (updcomp_p *) upd->valptr;
   int32_t *const pixel = upd->valbuf;
   int32_t *const colerr = pixel + upd->ncomp;
   int32_t *rowerr = colerr + upd->ncomp;
   int pwidth = upd->rwidth;
   int dir,ibyte;
   int iblack,bblack,pxlset;
   uint32_t ci;
   byte bit;
   bool first = ((bool)1);



   switch(upd->ncomp) {
     case 4: memset(scan[3].bytes,0,upd->nbytes);
     case 3: memset(scan[2].bytes,0,upd->nbytes);
              memset(scan[1].bytes,0,upd->nbytes);
     default: memset(scan[0].bytes,0,upd->nbytes);
   }



   if(upd->flags & ((uint32_t) 1<<0)) {

      if(upd->flags & ((uint32_t) 1<<19)) {
         dir = upd->ncomp;
         bit = 0x80;
         ibyte = 0;
      } else {
         dir = -upd->ncomp;
         rowerr += upd->ncomp * (pwidth-1);
         bit = 0x80 >> ((pwidth-1) & 7);
         ibyte = (pwidth-1) >> 3;
      }

      if(!(upd->flags & ((uint32_t) 1<<2))) {
         upd_pxlfwd(upd);
         while((0 < pwidth) && !(*upd->pxlget)(upd)) pwidth--;
      }

      upd_pxlrev(upd);

   } else {

      if(upd->flags & ((uint32_t) 1<<19)) {
         dir = -upd->ncomp;
         rowerr += upd->ncomp * (pwidth-1);
         bit = 0x80 >> ((pwidth-1) & 7);
         ibyte = (pwidth-1) >> 3;
      } else {
         dir = upd->ncomp;
         bit = 0x80;
         ibyte = 0;
      }

      if(!(upd->flags & ((uint32_t) 1<<2))) {
         upd_pxlrev(upd);
         while((0 < pwidth) && !(*upd->pxlget)(upd)) pwidth--;
      }

      upd_pxlfwd(upd);

   }



   if(!(upd->flags & ((uint32_t) 1<<1))) upd->flags ^= ((uint32_t) 1<<0);



   if(!(upd->flags & ((uint32_t) 1<<2))) {
      uint32_t (*fun)(upd_p upd) = upd->pxlget;
      byte *ptr = upd->pxlptr;
      while((0 < pwidth) && !(*upd->pxlget)(upd)) {
         pwidth--;
         fun = upd->pxlget;
         ptr = upd->pxlptr;
         rowerr += dir; first = ((bool)0); if(0 > dir) { if(!(bit <<= 1)) { bit = 0x01; ibyte--; } } else { if(!(bit >>= 1)) { bit = 0x80; ibyte++; } }
      }
      upd->pxlget = fun;
      upd->pxlptr = ptr;
   }



  iblack = -1;
  bblack = 0;
  if((4 == upd->ncomp) && (((uint32_t) 1<<20) & upd->flags)) {
    iblack = upd->cmap[0].comp;
    bblack = 1<<iblack;
  }



   first = ((bool)1);
   while(0 < pwidth--) {



      pxlset = 0;
      ci = (*upd->pxlget)(upd);
      switch(upd->ncomp) {
         case 4: ;
                  pixel[3] = (int32_t)(comp[3]->bitmsk & (ci >> comp[3]->bitshf)) * comp[3]->scale + comp[3]->offset + rowerr[3] + colerr[3] - ((colerr[3]+4)>>3); if( pixel[3] < 0) pixel[3] = 0; else if( pixel[3] > comp[3]->spotsize) pixel[3] = comp[3]->spotsize;
                  if(pixel[3] > comp[3]->threshold) {
                     pixel[3] -= comp[3]->spotsize;
                      scan[3].bytes[ibyte] |= bit;
                      pxlset |= 8;
                  }
                  if(!first) rowerr[3 -dir] += ((3*pixel[3]+8)>>4); rowerr[3 ] = ((5*pixel[3] )>>4) + (( colerr[3]+4)>>3); colerr[3 ] = pixel[3] - ((5*pixel[3] )>>4) - ((3*pixel[3]+8)>>4);

         case 3: ;
                  pixel[2] = (int32_t)(comp[2]->bitmsk & (ci >> comp[2]->bitshf)) * comp[2]->scale + comp[2]->offset + rowerr[2] + colerr[2] - ((colerr[2]+4)>>3); if( pixel[2] < 0) pixel[2] = 0; else if( pixel[2] > comp[2]->spotsize) pixel[2] = comp[2]->spotsize;
                  if(pixel[2] > comp[2]->threshold) {
                     pixel[2] -= comp[2]->spotsize;
                      scan[2].bytes[ibyte] |= bit;
                      pxlset |= 4;
                  }
                  if(!first) rowerr[2 -dir] += ((3*pixel[2]+8)>>4); rowerr[2 ] = ((5*pixel[2] )>>4) + (( colerr[2]+4)>>3); colerr[2 ] = pixel[2] - ((5*pixel[2] )>>4) - ((3*pixel[2]+8)>>4);

                  ;
                  pixel[1] = (int32_t)(comp[1]->bitmsk & (ci >> comp[1]->bitshf)) * comp[1]->scale + comp[1]->offset + rowerr[1] + colerr[1] - ((colerr[1]+4)>>3); if( pixel[1] < 0) pixel[1] = 0; else if( pixel[1] > comp[1]->spotsize) pixel[1] = comp[1]->spotsize;
                  if(pixel[1] > comp[1]->threshold) {
                     pixel[1] -= comp[1]->spotsize;
                      scan[1].bytes[ibyte] |= bit;
                      pxlset |= 2;
                  }
                  if(!first) rowerr[1 -dir] += ((3*pixel[1]+8)>>4); rowerr[1 ] = ((5*pixel[1] )>>4) + (( colerr[1]+4)>>3); colerr[1 ] = pixel[1] - ((5*pixel[1] )>>4) - ((3*pixel[1]+8)>>4);

         default: ;
                  pixel[0] = (int32_t)(comp[0]->bitmsk & (ci >> comp[0]->bitshf)) * comp[0]->scale + comp[0]->offset + rowerr[0] + colerr[0] - ((colerr[0]+4)>>3); if( pixel[0] < 0) pixel[0] = 0; else if( pixel[0] > comp[0]->spotsize) pixel[0] = comp[0]->spotsize;
                  if(pixel[0] > comp[0]->threshold) {
                     pixel[0] -= comp[0]->spotsize;
                      scan[0].bytes[ibyte] |= bit;
                      pxlset |= 1;
                  }
                  if(!first) rowerr[0 -dir] += ((3*pixel[0]+8)>>4); rowerr[0 ] = ((5*pixel[0] )>>4) + (( colerr[0]+4)>>3); colerr[0 ] = pixel[0] - ((5*pixel[0] )>>4) - ((3*pixel[0]+8)>>4);
      }



      if(bblack) {
        if(pxlset & bblack) pxlset |= 15;
        switch(pxlset) {
          case 0:
          case 1:
          case 2:
          case 4:
          case 8:
          case 3:
          case 5:
          case 9:
          case 6:
          case 10:
          case 12:
            break;
          default:
            scan[0].bytes[ibyte] &= ~bit;
            scan[1].bytes[ibyte] &= ~bit;
            scan[2].bytes[ibyte] &= ~bit;
            scan[3].bytes[ibyte] &= ~bit;
            scan[iblack].bytes[ibyte] |= bit;
          break;
        }
      }



      rowerr += dir; first = ((bool)0); if(0 > dir) { if(!(bit <<= 1)) { bit = 0x01; ibyte--; } } else { if(!(bit >>= 1)) { bit = 0x80; ibyte++; } }
   }



   if(0 < upd->nlimits) upd_limits(upd,((bool)1));
   return 0;
}





static void
upd_open_fscmyk(upd_device *udev)
{
   const upd_p upd = udev->upd;

   upd_open_fscomp(udev);

   if((((uint32_t) 1<<14) & upd->flags) &&
      (4 == upd->ncomp) &&
      (8 <= upd->cmap[0].bits) && (24 == upd->cmap[0].bitshf) &&
      (8 <= upd->cmap[1].bits) && (16 == upd->cmap[1].bitshf) &&
      (8 <= upd->cmap[2].bits) && ( 8 == upd->cmap[2].bitshf) &&
      (8 <= upd->cmap[3].bits) && ( 0 == upd->cmap[3].bitshf) ) {
      upd->render = upd_fscmyk;
   } else {
      upd->flags &= ~((uint32_t) 1<<14);
   }

}





static int
upd_fscmyk(upd_p upd)
{
   const updscan_p scan = upd->scnbuf[upd->yscnbuf & upd->scnmsk];
   int32_t *const pixel = upd->valbuf;
   const updcomp_p *comp = (updcomp_p *) upd->valptr;
   int32_t *const colerr = pixel + 4;
   int32_t *rowerr = colerr + 4;
   int32_t pwidth = upd->rwidth;
   int dir,ibyte;
   byte bit,*data;
   bool first = ((bool)0);



   memset(scan[0].bytes,0,upd->nbytes);
   memset(scan[1].bytes,0,upd->nbytes);
   memset(scan[2].bytes,0,upd->nbytes);
   memset(scan[3].bytes,0,upd->nbytes);




   if(upd->flags & ((uint32_t) 1<<0)) {

      if(!(upd->flags & ((uint32_t) 1<<2))) {
         data = upd->gsscan;
         while(0 < pwidth && !*(uint32_t *)data) pwidth--, data += 4;
         if(0 >= pwidth) {
            if(0 < upd->nlimits) upd_limits(upd,((bool)0));
            return 0;
         }
      }

      data = upd->gsscan + 4 * (upd->rwidth-1);

   } else {

      if(!(upd->flags & ((uint32_t) 1<<2))) {
         data = upd->gsscan + 4 * (upd->rwidth-1);
         while(0 < pwidth && !*(uint32_t *)data) pwidth--, data -= 4;
         if(0 >= pwidth) {
            if(0 < upd->nlimits) upd_limits(upd,((bool)0));
            return 0;
         }
      }

      data = upd->gsscan;

   }



   if(!(((uint32_t) 1<<0) & upd->flags) == !(((uint32_t) 1<<19) & upd->flags)) {
      dir = 4;
      bit = 0x80;
      ibyte = 0;
   } else {
      dir = -4;
      rowerr += 4 * (upd->rwidth-1);
      bit = 0x80 >> ((upd->rwidth-1) & 7);
      ibyte = (upd->rwidth-1) >> 3;
   }




   if(!(upd->flags & ((uint32_t) 1<<1))) upd->flags ^= ((uint32_t) 1<<0);



   if(!(upd->flags & ((uint32_t) 1<<2))) {
      while(0 < pwidth && !*((uint32_t *)data)) {
         pwidth--;
         if(((uint32_t) 1<<19) & upd->flags) data -= dir;
         else data += dir;
         rowerr += dir; first = ((bool)0); if(0 > dir) { if(!(bit <<= 1)) { bit = 0x01; ibyte--; } } else { if(!(bit >>= 1)) { bit = 0x80; ibyte++; } }
      }
   }



   first = ((bool)1);
   while(0 < pwidth--) {



      ; pixel[upd->cmap[0].comp] = (int32_t)(data[0]) * comp[upd->cmap[0].comp]->scale + comp[upd->cmap[0].comp]->offset + rowerr[upd->cmap[0].comp] + colerr[upd->cmap[0].comp] - ((colerr[upd->cmap[0].comp]+4)>>3); if( pixel[upd->cmap[0].comp] < 0) pixel[upd->cmap[0].comp] = 0; else if( pixel[upd->cmap[0].comp] > comp[upd->cmap[0].comp]->spotsize) pixel[upd->cmap[0].comp] = comp[upd->cmap[0].comp]->spotsize;;




      if(data[1] || data[2] || data[3]) {

         ; pixel[upd->cmap[1].comp] = (int32_t)(data[1]) * comp[upd->cmap[1].comp]->scale + comp[upd->cmap[1].comp]->offset + rowerr[upd->cmap[1].comp] + colerr[upd->cmap[1].comp] - ((colerr[upd->cmap[1].comp]+4)>>3); if( pixel[upd->cmap[1].comp] < 0) pixel[upd->cmap[1].comp] = 0; else if( pixel[upd->cmap[1].comp] > comp[upd->cmap[1].comp]->spotsize) pixel[upd->cmap[1].comp] = comp[upd->cmap[1].comp]->spotsize;
         ; pixel[upd->cmap[2].comp] = (int32_t)(data[2]) * comp[upd->cmap[2].comp]->scale + comp[upd->cmap[2].comp]->offset + rowerr[upd->cmap[2].comp] + colerr[upd->cmap[2].comp] - ((colerr[upd->cmap[2].comp]+4)>>3); if( pixel[upd->cmap[2].comp] < 0) pixel[upd->cmap[2].comp] = 0; else if( pixel[upd->cmap[2].comp] > comp[upd->cmap[2].comp]->spotsize) pixel[upd->cmap[2].comp] = comp[upd->cmap[2].comp]->spotsize;
         ; pixel[upd->cmap[3].comp] = (int32_t)(data[3]) * comp[upd->cmap[3].comp]->scale + comp[upd->cmap[3].comp]->offset + rowerr[upd->cmap[3].comp] + colerr[upd->cmap[3].comp] - ((colerr[upd->cmap[3].comp]+4)>>3); if( pixel[upd->cmap[3].comp] < 0) pixel[upd->cmap[3].comp] = 0; else if( pixel[upd->cmap[3].comp] > comp[upd->cmap[3].comp]->spotsize) pixel[upd->cmap[3].comp] = comp[upd->cmap[3].comp]->spotsize;



         if(pixel[upd->cmap[0].comp] > comp[upd->cmap[0].comp]->threshold) {

            pixel[0] -= comp[0]->spotsize;
            pixel[1] -= comp[1]->spotsize;
            pixel[2] -= comp[2]->spotsize;
            pixel[3] -= comp[3]->spotsize;
            scan[upd->cmap[0].comp].bytes[ibyte] |= bit;





         } else {

            if(( data[0] < data[1]) &&
               (pixel[upd->cmap[1].comp] >
                 comp[upd->cmap[1].comp]->threshold)) {
                pixel[upd->cmap[1].comp] -= comp[upd->cmap[1].comp]->spotsize;
                 scan[upd->cmap[1].comp].bytes[ibyte] |= bit;
            }

            if(( data[0] < data[2]) &&
               (pixel[upd->cmap[2].comp] >
                 comp[upd->cmap[2].comp]->threshold)) {
                pixel[upd->cmap[2].comp] -= comp[upd->cmap[2].comp]->spotsize;
                 scan[upd->cmap[2].comp].bytes[ibyte] |= bit;
            }

            if(( data[0] < data[3]) &&
               (pixel[upd->cmap[3].comp] >
                 comp[upd->cmap[3].comp]->threshold)) {
                pixel[upd->cmap[3].comp] -= comp[upd->cmap[3].comp]->spotsize;
                 scan[upd->cmap[3].comp].bytes[ibyte] |= bit;
            }

         }




         if(!first) rowerr[upd->cmap[3].comp-dir] += ((3*pixel[upd->cmap[3].comp]+8)>>4); rowerr[upd->cmap[3].comp ] = ((5*pixel[upd->cmap[3].comp] )>>4) + (( colerr[upd->cmap[3].comp]+4)>>3); colerr[upd->cmap[3].comp ] = pixel[upd->cmap[3].comp] - ((5*pixel[upd->cmap[3].comp] )>>4) - ((3*pixel[upd->cmap[3].comp]+8)>>4);
         if(!first) rowerr[upd->cmap[2].comp-dir] += ((3*pixel[upd->cmap[2].comp]+8)>>4); rowerr[upd->cmap[2].comp ] = ((5*pixel[upd->cmap[2].comp] )>>4) + (( colerr[upd->cmap[2].comp]+4)>>3); colerr[upd->cmap[2].comp ] = pixel[upd->cmap[2].comp] - ((5*pixel[upd->cmap[2].comp] )>>4) - ((3*pixel[upd->cmap[2].comp]+8)>>4);
         if(!first) rowerr[upd->cmap[1].comp-dir] += ((3*pixel[upd->cmap[1].comp]+8)>>4); rowerr[upd->cmap[1].comp ] = ((5*pixel[upd->cmap[1].comp] )>>4) + (( colerr[upd->cmap[1].comp]+4)>>3); colerr[upd->cmap[1].comp ] = pixel[upd->cmap[1].comp] - ((5*pixel[upd->cmap[1].comp] )>>4) - ((3*pixel[upd->cmap[1].comp]+8)>>4);

      } else if(pixel[upd->cmap[0].comp] > comp[upd->cmap[0].comp]->threshold) {
                 scan[upd->cmap[0].comp].bytes[ibyte] |= bit;
                pixel[upd->cmap[0].comp] -= comp[upd->cmap[0].comp]->spotsize;
      }

      if(!first) rowerr[upd->cmap[0].comp-dir] += ((3*pixel[upd->cmap[0].comp]+8)>>4); rowerr[upd->cmap[0].comp ] = ((5*pixel[upd->cmap[0].comp] )>>4) + (( colerr[upd->cmap[0].comp]+4)>>3); colerr[upd->cmap[0].comp ] = pixel[upd->cmap[0].comp] - ((5*pixel[upd->cmap[0].comp] )>>4) - ((3*pixel[upd->cmap[0].comp]+8)>>4);



      rowerr += dir; first = ((bool)0); if(0 > dir) { if(!(bit <<= 1)) { bit = 0x01; ibyte--; } } else { if(!(bit >>= 1)) { bit = 0x80; ibyte++; } }
      if(upd->flags & ((uint32_t) 1<<19)) data -= dir;
      else data += dir;
   }



   if(0 < upd->nlimits) upd_limits(upd,((bool)1));
   return 0;
}





static void
upd_open_fscmy_k(upd_device *udev)
{
   const upd_p upd = udev->upd;

   upd_open_fscomp(udev);

   if((((uint32_t) 1<<14) & upd->flags) &&
      (4 == upd->ncomp)) {
      upd->render = upd_fscmy_k;
   } else {
      upd->flags &= ~((uint32_t) 1<<14);
   }

}





static int
upd_fscmy_k(upd_p upd)
{
   const updscan_p scan = upd->scnbuf[upd->yscnbuf & upd->scnmsk];
   const updcomp_p *comp = (updcomp_p *) upd->valptr;
   int32_t *const pixel = upd->valbuf;
   int32_t *const colerr = pixel + upd->ncomp;
   int32_t *rowerr = colerr + upd->ncomp;
   int pwidth = upd->rwidth;
   int dir,ibyte;
   uint32_t ci;
   byte bit;
   bool first = ((bool)1);



   memset(scan[3].bytes,0,upd->nbytes);
   memset(scan[2].bytes,0,upd->nbytes);
   memset(scan[1].bytes,0,upd->nbytes);
   memset(scan[0].bytes,0,upd->nbytes);



   if(upd->flags & ((uint32_t) 1<<0)) {

      if(upd->flags & ((uint32_t) 1<<19)) {
         dir = 4;
         bit = 0x80;
         ibyte = 0;
      } else {
         dir = -4;
         rowerr += 4 * (pwidth-1);
         bit = 0x80 >> ((pwidth-1) & 7);
         ibyte = (pwidth-1) >> 3;
      }

      if(!(upd->flags & ((uint32_t) 1<<2))) {
         upd_pxlfwd(upd);
         while((0 < pwidth) && !(*upd->pxlget)(upd)) pwidth--;
      }

      upd_pxlrev(upd);

   } else {

      if(upd->flags & ((uint32_t) 1<<19)) {
         dir = -4;
         rowerr += 4 * (pwidth-1);
         bit = 0x80 >> ((pwidth-1) & 7);
         ibyte = (pwidth-1) >> 3;
      } else {
         dir = 4;
         bit = 0x80;
         ibyte = 0;
      }

      if(!(upd->flags & ((uint32_t) 1<<2))) {
         upd_pxlrev(upd);
         while((0 < pwidth) && !(*upd->pxlget)(upd)) pwidth--;
      }

      upd_pxlfwd(upd);

   }



   if(!(upd->flags & ((uint32_t) 1<<1))) upd->flags ^= ((uint32_t) 1<<0);



   if(!(upd->flags & ((uint32_t) 1<<2))) {
      uint32_t (*fun)(upd_p upd) = upd->pxlget;
      byte *ptr = upd->pxlptr;
      while((0 < pwidth) && !(*upd->pxlget)(upd)) {
         pwidth--;
         fun = upd->pxlget;
         ptr = upd->pxlptr;
         rowerr += dir; first = ((bool)0); if(0 > dir) { if(!(bit <<= 1)) { bit = 0x01; ibyte--; } } else { if(!(bit >>= 1)) { bit = 0x80; ibyte++; } }
      }
      upd->pxlget = fun;
      upd->pxlptr = ptr;
   }



   first = ((bool)1);
   while(0 < pwidth--) {



      ci = (*upd->pxlget)(upd);



      ; pixel[0] = (int32_t)(comp[0]->bitmsk & (ci >> comp[0]->bitshf)) * comp[0]->scale + comp[0]->offset + rowerr[0] + colerr[0] - ((colerr[0]+4)>>3); if( pixel[0] < 0) pixel[0] = 0; else if( pixel[0] > comp[0]->spotsize) pixel[0] = comp[0]->spotsize;
      ; pixel[1] = (int32_t)(comp[1]->bitmsk & (ci >> comp[1]->bitshf)) * comp[1]->scale + comp[1]->offset + rowerr[1] + colerr[1] - ((colerr[1]+4)>>3); if( pixel[1] < 0) pixel[1] = 0; else if( pixel[1] > comp[1]->spotsize) pixel[1] = comp[1]->spotsize;
      ; pixel[2] = (int32_t)(comp[2]->bitmsk & (ci >> comp[2]->bitshf)) * comp[2]->scale + comp[2]->offset + rowerr[2] + colerr[2] - ((colerr[2]+4)>>3); if( pixel[2] < 0) pixel[2] = 0; else if( pixel[2] > comp[2]->spotsize) pixel[2] = comp[2]->spotsize;
      ; pixel[3] = (int32_t)(comp[3]->bitmsk & (ci >> comp[3]->bitshf)) * comp[3]->scale + comp[3]->offset + rowerr[3] + colerr[3] - ((colerr[3]+4)>>3); if( pixel[3] < 0) pixel[3] = 0; else if( pixel[3] > comp[3]->spotsize) pixel[3] = comp[3]->spotsize;

      if(pixel[0] > comp[0]->threshold) {

        pixel[0] -= comp[0]->spotsize;
        scan[0].bytes[ibyte] |= bit;

      } else {

         if((pixel[1] <= comp[1]->threshold) ||
            (pixel[2] <= comp[2]->threshold) ||
            (pixel[3] <= comp[3]->threshold) ) {

            if(pixel[1] > comp[1]->threshold) {
               pixel[1] -= comp[1]->spotsize;
                scan[1].bytes[ibyte] |= bit;
            }

            if(pixel[2] > comp[2]->threshold) {
               pixel[2] -= comp[2]->spotsize;
                scan[2].bytes[ibyte] |= bit;
            }

            if(pixel[3] > comp[3]->threshold) {
               pixel[3] -= comp[3]->spotsize;
                scan[3].bytes[ibyte] |= bit;
            }

         } else {
            pixel[1] -= comp[1]->spotsize;
            pixel[2] -= comp[2]->spotsize;
            pixel[3] -= comp[3]->spotsize;
            scan[0].bytes[ibyte] |= bit;
         }
      }

      if(!first) rowerr[0 -dir] += ((3*pixel[0]+8)>>4); rowerr[0 ] = ((5*pixel[0] )>>4) + (( colerr[0]+4)>>3); colerr[0 ] = pixel[0] - ((5*pixel[0] )>>4) - ((3*pixel[0]+8)>>4);
      if(!first) rowerr[1 -dir] += ((3*pixel[1]+8)>>4); rowerr[1 ] = ((5*pixel[1] )>>4) + (( colerr[1]+4)>>3); colerr[1 ] = pixel[1] - ((5*pixel[1] )>>4) - ((3*pixel[1]+8)>>4);
      if(!first) rowerr[2 -dir] += ((3*pixel[2]+8)>>4); rowerr[2 ] = ((5*pixel[2] )>>4) + (( colerr[2]+4)>>3); colerr[2 ] = pixel[2] - ((5*pixel[2] )>>4) - ((3*pixel[2]+8)>>4);
      if(!first) rowerr[3 -dir] += ((3*pixel[3]+8)>>4); rowerr[3 ] = ((5*pixel[3] )>>4) + (( colerr[3]+4)>>3); colerr[3 ] = pixel[3] - ((5*pixel[3] )>>4) - ((3*pixel[3]+8)>>4);




      rowerr += dir; first = ((bool)0); if(0 > dir) { if(!(bit <<= 1)) { bit = 0x01; ibyte--; } } else { if(!(bit >>= 1)) { bit = 0x80; ibyte++; } }
   }



   if(0 < upd->nlimits) upd_limits(upd,((bool)1));
   return 0;
}





static int
upd_open_writer(upd_device *udev)
{
   const upd_p upd = udev->upd;
   bool success = ((bool)1);


   upd->start_writer = ((void*)0);
   upd->writer = ((void*)0);
   upd->scnbuf = ((void*)0);
   upd->nscnbuf = 0;
   upd->nbytes = 0;
   upd->nlimits = 0;
   upd->outbuf = ((void*)0);
   upd->noutbuf = 0;


   if(((uint32_t) 1<<14) != ((((uint32_t) 1<<14) | ((uint32_t) 1<<17)) & upd->flags))
      success = ((bool)0);


   upd->ocomp = upd->ncomp;
   if(0 < upd->ints[2]) upd->ocomp = upd->ints[2];


   if(success) {


      if(1 > upd->ints[10]) upd->ints[10] = 1;
      if(1 > upd->ints[9]) upd->ints[9] = 1;
      if(1 > upd->ints[8]) upd->ints[8] = 1;

      if((upd->ints[9] * upd->ints[10]) > upd->ints[11])
         upd->ints[11] = upd->ints[9] * upd->ints[10];



      if(upd->ints[11] > upd->int_a[4].size) {
         int ix,iy,*ip;
         { if(upd->int_a[4].data && upd->int_a[4].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->int_a[4].data), "uniprint/params")); };
         ip = ((void*)0); if(0 < (upd->ints[11])) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->ints[11], sizeof(ip[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(upd->ints[11])*sizeof(ip[0])); ip = (void *) tmp; } else { return ((-25)); } };
         upd->int_a[4].data = ip;
         upd->int_a[4].size = upd->ints[11];

         for(iy = 1; iy < upd->ints[10]; ++iy) {
            for(ix = 1; ix < upd->ints[9]; ++ix) *ip++ = 0;
            *ip++ = 1;
         }
         for(ix = 1; ix < upd->ints[9]; ++ix) *ip++ = 0;
         *ip = upd->ints[10] * upd->ints[8]
             - upd->ints[10] + 1;

         upd->ints[12] = 0;
         upd->ints[13] = upd->ints[1] ?
                              upd->ints[1] : upd->gsheight;
      }


      if(0 >= upd->ints[12]) {
         if(0 < upd->int_a[6].size) {
            int i,sum = 0;
            for(i = 0; i < upd->int_a[6].size; ++i)
               sum += upd->int_a[6].data[i];
            upd->ints[12] = sum;
         } else {
            upd->ints[12] = 0;
         }
      }






      if(0 >= upd->int_a[11].size ||
         0 >= upd->int_a[9].size ) upd->ints[13] =
         upd->ints[1] ? upd->ints[1] : upd->gsheight;

      if(0 >= upd->ints[13]) upd->ints[13] = upd->ints[1] ?
        upd->ints[1] : upd->gsheight;



      if(0 >= upd->int_a[5].size) {
         int ix,i,*ip;
         { if(upd->int_a[5].data && upd->int_a[5].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->int_a[5].data), "uniprint/params")); };
         ip = ((void*)0); if(0 < (upd->int_a[4].size)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->int_a[4].size, sizeof(ip[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(upd->int_a[4].size)*sizeof(ip[0])); ip = (void *) tmp; } else { return ((-25)); } };
         upd->int_a[5].data = ip;
         upd->int_a[5].size = upd->int_a[4].size;

         for(i = 0, ix = 0; i < upd->int_a[5].size; ++i) {
            *ip++ = ix++;
            if(ix == upd->ints[9]) ix = 0;
         }
      }

      if((0 >= upd->int_a[7].size) &&
         (0 < upd->int_a[6].size) ) {
         int ix,i,*ip;
         { if(upd->int_a[7].data && upd->int_a[7].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->int_a[7].data), "uniprint/params")); };
         ip = ((void*)0); if(0 < (upd->int_a[6].size)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->int_a[6].size, sizeof(ip[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(upd->int_a[6].size)*sizeof(ip[0])); ip = (void *) tmp; } else { return ((-25)); } };
         upd->int_a[7].data = ip;
         upd->int_a[7].size = upd->int_a[6].size;

         for(i = 0, ix = 0; i < upd->int_a[7].size; ++i) {
            *ip++ = ix++;
            if(ix == upd->ints[9]) ix = 0;
         }
      }

      if((0 >= upd->int_a[10].size) &&
         (0 < upd->int_a[9].size) ) {
         int ix,i,*ip;
         { if(upd->int_a[10].data && upd->int_a[10].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->int_a[10].data), "uniprint/params")); };
         ip = ((void*)0); if(0 < (upd->int_a[9].size)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->int_a[9].size, sizeof(ip[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(upd->int_a[9].size)*sizeof(ip[0])); ip = (void *) tmp; } else { return ((-25)); } };
         upd->int_a[10].data = ip;
         upd->int_a[10].size = upd->int_a[9].size;

         for(i = 0, ix = 0; i < upd->int_a[10].size; ++i) {
            *ip++ = ix++;
            if(ix == upd->ints[9]) ix = 0;
         }
      }
   }

   if(upd->ints[11] > upd->int_a[4].size) {





      success = ((bool)0);

   } else if(upd->int_a[5].size < upd->int_a[4].size) {






      success = ((bool)0);
   }
# 4286 "./devices/gdevupd.c"
   if(upd->int_a[7].size < upd->int_a[6].size) {






      success = ((bool)0);
   }

   if(upd->int_a[8].size < upd->int_a[6].size) {






      success = ((bool)0);

   } else {

      int i;
      for(i = 0; i < upd->int_a[6].size; ++i)
         if((upd->int_a[8].data[i] > upd->ints[8]) ||
            (upd->int_a[8].data[i] < 0 ) ) break;

      if(i < upd->int_a[6].size) {





         success = ((bool)0);
      }
   }
# 4336 "./devices/gdevupd.c"
   if(upd->int_a[10].size < upd->int_a[9].size) {






      success = ((bool)0);
   }

   if(upd->int_a[11].size < upd->int_a[9].size) {






      success = ((bool)0);

   } else {

      int i;
      for(i = 0; i < upd->int_a[9].size; ++i)
         if((upd->int_a[11].data[i] > upd->ints[8]) ||
            (upd->int_a[11].data[i] < 0 ) ) break;

      if(i < upd->int_a[9].size) {





         success = ((bool)0);
      }
   }


   if((0 < upd->string_a[0].size) &&
      (upd->ocomp > upd->string_a[0].size)) {





      success = ((bool)0);
   }



   if(success) {
      int32_t want,use;

      want = upd->ints[10];
      want *= upd->ints[8];

      if(upd->ints[3] > want) want = upd->ints[3];

      if(1 > want) want = 1;

      for(use = 1; 0 < use; use <<= 1) if(use > want) break;

      if(use <= 2147483647) upd->nscnbuf = upd->ints[3] = use;
      else success = ((bool)0);

   }



   if(success) {

      if(0 < upd->ints[0]) upd->pwidth = upd->ints[0];
      else upd->pwidth = upd->gswidth;

      upd->nbytes = (upd->pwidth+8*sizeof(upd->scnbuf[0]->bytes[0]) - 1)
            / (8*sizeof(upd->scnbuf[0]->bytes[0]));

      upd->scnmsk = upd->nscnbuf - 1;

      if(0 < upd->ints[1]) upd->pheight = upd->ints[1];
      else upd->pheight = upd->gsheight;

   }



   if(success) {
      switch(upd->choice[2]) {
         case 1:
            if(0 > upd_open_rascomp(udev)) success = ((bool)0);
         break;
         case 2:
            if(0 > upd_open_wrtescp(udev)) success = ((bool)0);
         break;
         case 3:
         case 4:
         case 7:
            if(0 > upd_open_wrtescp2(udev)) success = ((bool)0);
         break;
         case 5:
            if(0 > upd_open_wrtrtl(udev)) success = ((bool)0);
         break;
         case 6:
            if(0 > upd_open_wrtcanon(udev)) success = ((bool)0);
         break;
         default:
            success = ((bool)0);




         break;
      }
   }


   if(success && (0 < upd->noutbuf)) {
      upd->outbuf = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->noutbuf, sizeof(upd->outbuf[0]), "upd/outbuf");
      if(!upd->outbuf) success = ((bool)0);
   }


   if(success) {
      upd->scnbuf = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->nscnbuf, sizeof(upd->scnbuf[0]), "upd/scnbuf");
      if(((void*)0) == upd->scnbuf) {
         success = ((bool)0);
      } else {
         int ibuf;
         for(ibuf = 0; ibuf < upd->nscnbuf; ++ibuf) {
            if(success) upd->scnbuf[ibuf] =
               (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->ocomp, sizeof(upd->scnbuf[0][0]), "upd/scnbuf[]");
            else upd->scnbuf[ibuf] = ((void*)0);

            if(!upd->scnbuf[ibuf]) {
               success = ((bool)0);
            } else {
               int icomp;
               for(icomp = 0; icomp < upd->ocomp; ++icomp) {
                  if(success) upd->scnbuf[ibuf][icomp].bytes =
                    (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->nbytes, sizeof(upd->scnbuf[0][0].bytes[0]), "upd/bytes");

                  else upd->scnbuf[ibuf][icomp].bytes = ((void*)0);
                  if(!upd->scnbuf[ibuf][icomp].bytes) success = ((bool)0);

                  if(0 < upd->nlimits) {

                     upd->scnbuf[ibuf][icomp].xbegin = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->nlimits, sizeof(upd->scnbuf[0][0].xbegin[0]), "upd/xbegin");

                     if(!upd->scnbuf[ibuf][icomp].xbegin) success = ((bool)0);

                     upd->scnbuf[ibuf][icomp].xend = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->nlimits, sizeof(upd->scnbuf[0][0].xend[0]), "upd/xend");

                     if(!upd->scnbuf[ibuf][icomp].xbegin) success = ((bool)0);

                  } else {

                     upd->scnbuf[ibuf][icomp].xbegin = ((void*)0);
                     upd->scnbuf[ibuf][icomp].xend = ((void*)0);

                  }
               }
            }
         }
      }
   }

   if(success) upd->flags |= ((uint32_t) 1<<15);
   else upd_close_writer(udev);

   return success ? 1 : -1;
}





static void
upd_close_writer(upd_device *udev)
{
   const upd_p upd = udev->upd;

   if(upd) {
      int ibuf,icomp;

      if((0 < upd->noutbuf) && upd->outbuf)
         ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd->outbuf, "upd/outbuf"));
      upd->noutbuf = 0;
      upd->outbuf = ((void*)0);

      if((0 < upd->nscnbuf) && upd->scnbuf) {
         for(ibuf = 0; upd->nscnbuf > ibuf; ++ibuf) {

            if(!upd->scnbuf[ibuf]) continue;

            for(icomp = 0; icomp < upd->ocomp; ++icomp) {

               if((0 < upd->nbytes) && upd->scnbuf[ibuf][icomp].bytes)
                  ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd->scnbuf[ibuf][icomp].bytes, "upd/bytes"));

               upd->scnbuf[ibuf][icomp].bytes = ((void*)0);

               if((0 < upd->nlimits) && upd->scnbuf[ibuf][icomp].xbegin)
                  ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd->scnbuf[ibuf][icomp].xbegin, "upd/xbegin"));

               upd->scnbuf[ibuf][icomp].xbegin = ((void*)0);

               if((0 < upd->nlimits) && upd->scnbuf[ibuf][icomp].xend)
                  ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd->scnbuf[ibuf][icomp].xend, "upd/xend"));

               upd->scnbuf[ibuf][icomp].xend = ((void*)0);
            }

            if(icomp)
               ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd->scnbuf[ibuf], "upd/scnbuf[]"));

            upd->scnbuf[ibuf] = ((void*)0);

         }
         ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd->scnbuf, "upd/scnbuf"));
      }

      upd->flags &= ~((uint32_t) 1<<15);
   }
}





static void
upd_limits(upd_p upd, bool check)
{
   updscan_p scans = upd->scnbuf[upd->yscnbuf & upd->scnmsk], scan;
   int xs,x,xe,icomp,pass;
   byte *bytes,bit;

   for(icomp = 0; icomp < upd->ocomp; ++icomp) {
      scan = scans + icomp;
      for(pass = 0; pass < upd->nlimits; ++pass) {
         scan->xbegin[pass] = upd->pwidth;
         scan->xend[ pass] = -1;
      }
   }

   if(check) {
      for(icomp = 0; icomp < upd->ocomp; ++icomp) {
         scan = scans + icomp;
         bytes = scan->bytes;

         for(xs = 0; xs < upd->nbytes && !bytes[xs]; ++xs);

         if(xs < upd->nbytes) {
            for(xe = upd->nbytes; xs < xe && !bytes[xe-1]; --xe);

            for(pass = 0; pass < upd->nlimits; ++pass) {

               x = ((xs<<3)/upd->nlimits)*upd->nlimits + pass;
               while((x >> 3) < xs) x += upd->nlimits;

               bit = 0x80 >> (x & 7);
               while(x < scan->xbegin[pass]) {
                  if(bytes[x>>3] & bit) scan->xbegin[pass] = x;
                  x += upd->nlimits;
                  bit = 0x80 >> (x & 7);
               }

               x = (((xe<<3)|7)/upd->nlimits)*upd->nlimits + pass;

               while((x >> 3) < xe) x += upd->nlimits;
               while((x >> 3) > xe) x -= upd->nlimits;

               bit = 0x80 >> (xs & 7);
               while(x > scan->xend[pass]) {
                  if(bytes[x>>3] & bit) scan->xend[pass] = x;
                  x -= upd->nlimits;
                  bit = 0x80 >> (x & 7);
               }

            }

         }

      }

   }

}





static int
upd_open_rascomp(upd_device *udev)
{
   const upd_p upd = udev->upd;
   int32_t noutbuf;
   int error = 0;

   noutbuf = upd->pwidth;

   if(1 < upd->ncomp) noutbuf *= 8;

   noutbuf = ((noutbuf+15)>>4)<<1;

   if(2147483647 >= noutbuf) {
      upd->noutbuf = noutbuf;
      upd->start_writer = upd_start_rascomp;
      upd->writer = upd_rascomp;
   } else {
      error = -1;
   }

   return error;
}
# 4665 "./devices/gdevupd.c"
static int
upd_start_rascomp(upd_p upd, FILE *out) {


   if(0 == upd->strings[3].size) {
      int32_t val;


      val = 0x59a66a95;
      _IO_putc (((val)>>24)&255, out), _IO_putc (((val)>>16)&255, out), _IO_putc (((val)>> 8)&255, out), _IO_putc ((val) &255, out);


      val = upd->pwidth;
      _IO_putc (((val)>>24)&255, out), _IO_putc (((val)>>16)&255, out), _IO_putc (((val)>> 8)&255, out), _IO_putc ((val) &255, out);


      val = upd->pheight;
      _IO_putc (((val)>>24)&255, out), _IO_putc (((val)>>16)&255, out), _IO_putc (((val)>> 8)&255, out), _IO_putc ((val) &255, out);


      if(1 < upd->ncomp) val = 8;
      else val = 1;
      _IO_putc (((val)>>24)&255, out), _IO_putc (((val)>>16)&255, out), _IO_putc (((val)>> 8)&255, out), _IO_putc ((val) &255, out);


      val *= upd->pwidth;
      val = ((val+15)>>4)<<1;
      val *= upd->pheight;
      _IO_putc (((val)>>24)&255, out), _IO_putc (((val)>>16)&255, out), _IO_putc (((val)>> 8)&255, out), _IO_putc ((val) &255, out);


      val = 1;
      _IO_putc (((val)>>24)&255, out), _IO_putc (((val)>>16)&255, out), _IO_putc (((val)>> 8)&255, out), _IO_putc ((val) &255, out);


      val = 1;
      _IO_putc (((val)>>24)&255, out), _IO_putc (((val)>>16)&255, out), _IO_putc (((val)>> 8)&255, out), _IO_putc ((val) &255, out);


      val = 3 * (1 << upd->ncomp);
      _IO_putc (((val)>>24)&255, out), _IO_putc (((val)>>16)&255, out), _IO_putc (((val)>> 8)&255, out), _IO_putc ((val) &255, out);


      if(1 == upd->ncomp) {
         const updcomp_p comp = upd->valptr[0];

         if(upd->cmap[comp->cmap].rise) {
            _IO_putc ((char) 0x00, out); _IO_putc ((char) 0xff, out);
            _IO_putc ((char) 0x00, out); _IO_putc ((char) 0xff, out);
            _IO_putc ((char) 0x00, out); _IO_putc ((char) 0xff, out);
         } else {
            _IO_putc ((char) 0xff, out); _IO_putc ((char) 0x00, out);
            _IO_putc ((char) 0xff, out); _IO_putc ((char) 0x00, out);
            _IO_putc ((char) 0xff, out); _IO_putc ((char) 0x00, out);
         }

      } else if(3 == upd->ncomp) {
         int rgb;

         for( rgb = 0; rgb < 3; ++rgb) {
            int entry;
            for(entry = 0; entry < 8; ++entry) {
               byte xval = upd->cmap[rgb].rise ? 0x00 : 0xff;
               if(entry & (1<<upd->cmap[rgb].comp)) xval ^= 0xff;
               _IO_putc (xval, out);
            }
         }
      } else {
         int rgb;

         for(rgb = 16; 0 <= rgb; rgb -= 8) {
            int entry;
            for(entry = 0; entry < 16; ++entry) {
               uint32_t rgbval = 0;

               if(entry & (1<<upd->cmap[0].comp)) {

                  rgbval = 0xffffff;

               } else {

                  if(entry & (1<<upd->cmap[1].comp)) rgbval |= 0xff0000;
                  if(entry & (1<<upd->cmap[2].comp)) rgbval |= 0x00ff00;
                  if(entry & (1<<upd->cmap[3].comp)) rgbval |= 0x0000ff;
               }

               if(!upd->cmap[1].rise) rgbval ^= 0xff0000;
               if(!upd->cmap[2].rise) rgbval ^= 0x00ff00;
               if(!upd->cmap[3].rise) rgbval ^= 0x0000ff;

               if(!(upd->choice[0] == 2)) rgbval ^= 0xffffff;

               _IO_putc ((rgbval>>rgb)&255, out);
            }
         }
      }
   }
   memset(upd->outbuf,0,upd->noutbuf);

   return 0;
}




static int
upd_rascomp(upd_p upd, FILE *out) {
   updscan_p scan = upd->scnbuf[upd->yscan & upd->scnmsk];
   uint bits = upd->pwidth;

   if(1 == upd->ncomp) {
      uint nbytes;

      nbytes = (bits+7)>>3;
      memcpy(upd->outbuf,scan->bytes,nbytes);
      if((bits &= 7)) upd->outbuf[nbytes-1] &= ((byte) 0xff) << (8-bits);

   } else {

      byte *buf = upd->outbuf, bit = 0x80;
      int ibyte = 0;

      while(0 < bits--) {
         byte val = 0;
         switch(upd->ncomp) {
            case 4: if(scan[3].bytes[ibyte] & bit) val |= 8;
            case 3: if(scan[2].bytes[ibyte] & bit) val |= 4;
                     if(scan[1].bytes[ibyte] & bit) val |= 2;
            case 1: if(scan[0].bytes[ibyte] & bit) val |= 1;
         }
         *buf++ = val;
         if(!(bit >>= 1)) {
            bit = 0x80;
            ibyte += 1;
         }
      }
   }

   fwrite(upd->outbuf,1,upd->noutbuf,out);
   upd->yscan += 1;

   return 0;
}





static int
upd_open_wrtescp(upd_device *udev)
{
   const upd_p upd = udev->upd;
   int error = 0;


   if((((uint32_t) 1<<5) & upd->flags) &&
      (0 < upd->strings[3].size)) {
     int i,state = 0,value = 0;
     byte *bp = (byte *) upd_cast(upd->strings[3].data);
     for(i = 0; i < upd->strings[3].size; ++i) {
        switch(state) {
           case 0:
              if(0x1b == bp[i]) state = 1;
           break;
           case 1:
              if('C' == bp[i]) state = 2;
              else state = 0;
           break;
           case 2:
              if(bp[i]) {
                 value = (int)(0.5 + udev->height * (float) bp[i]
                               / udev->HWResolution[1]);
                 if( 0 >= value) bp[i] = 1;
                 else if(128 > value) bp[i] = value;
                 else bp[i] = 127;
                 state = 0;
              } else {
                 state = 3;
              }
           break;
           case 3:
              value = (int)(0.5 + udev->height / udev->HWResolution[1]);
              if( 0 >= value) bp[i] = 1;
              else if( 22 > value) bp[i] = value;
              else bp[i] = 22;
              state = 0;
           break;
        }
     }
   }


   if((0 == upd->strings[8].size) &&
      (0 == upd->strings[9].size) ) {




      error = -1;
   }


   if(((1 < upd->ints[4] ) &&
       (0 == upd->strings[7].size) ) ||
      ((1 < upd->ints[9] ) &&
       (0 == upd->strings[6].size) &&
       (0 == upd->strings[7].size) ) ) {




      error = -1;
   }


   if(upd->ncomp > upd->string_a[1].size) {




      error = -1;
   }
# 4897 "./devices/gdevupd.c"
   if(0 <= error) {
      int32_t i,noutbuf,need;

      if(0 < upd->strings[9].size) {
         noutbuf = upd->strings[9].size + 2;
      } else {
         int nmax = upd->pheight;
         if( 1 < upd->ints[6]) nmax /= upd->ints[6];
         else if(-1 > upd->ints[6]) nmax *= -upd->ints[6];
         noutbuf = 2 * upd->strings[8].size + 2;
         noutbuf += nmax/255 + 1;
      }

      if(1 < upd->ints[6])
         noutbuf += (upd->ints[6]-1) * upd->strings[10].size;

      noutbuf += upd->strings[6].size + 2;

      if(1 < upd->ints[4])
         noutbuf += (upd->ints[4]-1) * upd->strings[7].size;

      if(0 < upd->string_a[0].size) {
         need = 0;
         for(i = 0; i < upd->ocomp; ++i)
            if(need < upd->string_a[0].data[i].size)
               need = upd->string_a[0].data[i].size;
         noutbuf += need;
      }

      need = 0;
      for(i = 0; i < upd->ocomp; ++i)
         if(need < upd->string_a[1].data[i].size)
            need = upd->string_a[1].data[i].size;
      noutbuf += need + 2;

      noutbuf += ((upd->ints[8] + 7) / 8)
               * ((upd->pwidth + upd->ints[9] - 1)/upd->ints[9]);

      if((0 < noutbuf) && (noutbuf <= 2147483647)) {
         upd->noutbuf = noutbuf;
         upd->writer = upd_wrtescp;
         upd->nlimits = upd->ints[9];
         error = 1;
      } else {
         error = -1;





      }
   }

   return error;
}





static int
upd_wrtescp(upd_p upd, FILE *out)
{
   int pinbot,pin,pintop,xbegin,x,xend,icomp,ybegin,yend,y,ioutbuf,n,ixpass;
   byte *obytes,bit;
   updscan_p scan;



   if(upd->yscan < upd->ints[12]) {
      ixpass = upd->int_a[7].data[upd->ipass];
      pintop = 0;
      pinbot = upd->int_a[8].data[upd->ipass];
   } else if(upd->yscan >= upd->ints[13]) {
      ixpass = upd->int_a[10].data[upd->ipass];
      pinbot = upd->ints[8];
      pintop = pinbot - upd->int_a[11].data[upd->ipass];
   } else {
      ixpass = upd->int_a[5].data[upd->ipass];
      pintop = 0;
      pinbot = upd->ints[8];
   }

   ybegin = pintop * upd->ints[10] + upd->yscan - upd->ints[14];
   yend = pinbot * upd->ints[10] + upd->yscan - upd->ints[14];



   xbegin = upd->pwidth;
   xend = -1;

   for(y = ybegin; y < yend; y += upd->ints[10]) {

      if(0 > y) continue;

      scan = upd->scnbuf[y & upd->scnmsk];

      for(icomp = 0; icomp < upd->ocomp; ++icomp) {
         if(xbegin > scan[icomp].xbegin[ixpass])
            xbegin = scan[icomp].xbegin[ixpass];
         if(xend < scan[icomp].xend[ ixpass])
            xend = scan[icomp].xend[ ixpass];
      }

   }

   if(xbegin <= xend) {

      ioutbuf = 0;

      if(0 == upd->strings[6].size) xbegin = ixpass;




      if(upd->yscan != upd->yprinter) {
         if(((uint32_t) 1<<11) & upd->flags) y = upd->yscan + upd->ints[7];
         else y = upd->yscan - upd->yprinter;

         if( 1 < upd->ints[6]) {
            n = y / upd->ints[6];
            y -= n * upd->ints[6];
         } else if(-1 > upd->ints[6]) {
            n = y * -upd->ints[6];
            y = 0;
         } else {
            n = y;
            y = 0;
         }

         if(n) {
            if(0 < upd->strings[9].size) {

               memcpy(upd->outbuf+ioutbuf,
                          upd->strings[9].data,
                          upd->strings[9].size);
               ioutbuf += upd->strings[9].size;

               upd->outbuf[ioutbuf++] = n & 0xff;
               upd->outbuf[ioutbuf++] = (n>>8) & 0xff;

            } else {

               while(n) {
                  int n2do = n > 255 ? 255 : n;
                  if(upd->lf != n2do) {
                     memcpy(upd->outbuf+ioutbuf,
                                upd->strings[8].data,
                                upd->strings[8].size);
                     ioutbuf += upd->strings[8].size;
                     upd->outbuf[ioutbuf++] = n2do;
                     upd->lf = n2do;
                  }
                  upd->outbuf[ioutbuf++] = '\n';
                  n -= n2do;
               }
            }
         }

         if(0 < upd->strings[10].size) {
            while(y--) {
               memcpy(upd->outbuf+ioutbuf,
                          upd->strings[10].data,
                          upd->strings[10].size);
               ioutbuf += upd->strings[10].size;
            }
         }

         upd->yprinter = upd->yscan;
      }




      for(icomp = 0; icomp < upd->ocomp; ++icomp) {



         for(y = ybegin; y < yend; y += upd->ints[10]) {
            if(0 > y) continue;
            scan = upd->scnbuf[y & upd->scnmsk]+icomp;
            if(0 <= scan->xend[ixpass]) break;
         }
         if(y >= yend) continue;



         if((0 < upd->string_a[0].size) &&
            (upd->icomp != icomp ) ) {
            upd->icomp = icomp;
            if(0 < upd->string_a[0].data[icomp].size) {
               memcpy(upd->outbuf+ioutbuf,
                          upd->string_a[0].data[icomp].data,
                          upd->string_a[0].data[icomp].size);
               ioutbuf += upd->string_a[0].data[icomp].size;
            }
         }



         if(xbegin != upd->xprinter) {

            if(0 == upd->strings[6].size) {

               upd->outbuf[ioutbuf++] = '\r';
               upd->xprinter = 0;
               n = 0;
               x = ixpass;

            } else {

               if(((uint32_t) 1<<10) & upd->flags) n = x = xbegin + upd->ints[5];
               else n = x = xbegin - upd->xprinter;

               if( 1 < upd->ints[4]) {
                  if(0 > n) {
                     n -= upd->ints[4];
                     x -= n;
                  }
                  if(n) n /= upd->ints[4];
                  if(x) x %= upd->ints[4];

               } else if(-1 > upd->ints[4]) {
                  n *= -upd->ints[4];
                  x = 0;
               }

               if(n) {

                 memcpy(upd->outbuf+ioutbuf,
                             upd->strings[6].data,
                             upd->strings[6].size);
                  ioutbuf += upd->strings[6].size;

                  upd->outbuf[ioutbuf++] = n & 0xff;
                  upd->outbuf[ioutbuf++] = (n>>8) & 0xff;

               }

            }

            if(x && 0 < upd->strings[7].size) {
               while(x--) {
                  memcpy(upd->outbuf+ioutbuf,
                             upd->strings[7].data,
                             upd->strings[7].size);
                  ioutbuf += upd->strings[7].size;
               }
            }
         }
         upd->xprinter = xend+1;



         if(0 < upd->string_a[1].data[icomp].size) {
            memcpy(upd->outbuf+ioutbuf,
                       upd->string_a[1].data[icomp].data,
                       upd->string_a[1].data[icomp].size);
            ioutbuf += upd->string_a[1].data[icomp].size;
         }
         n = (xend - xbegin) / upd->ints[9] + 1;;
         upd->outbuf[ioutbuf++] = n & 255;
         upd->outbuf[ioutbuf++] = (n>>8) & 255;



         obytes = upd->outbuf+ioutbuf;
         n *= (upd->ints[8]+7)>>3;
         memset(obytes,0,n);
         ioutbuf += n;



         for(x = xbegin; x <= xend; x += upd->ints[9]) {

            bit = 0x80 >> (pintop & 7);
            obytes += pintop>>3;

            for(pin = pintop, y = ybegin; pin < pinbot;
                pin++, y += upd->ints[10]) {
               if(0 <= y) {
                  scan = upd->scnbuf[y & upd->scnmsk]+icomp;
                  if(scan->bytes[x>>3] & (0x80 >> (x & 7))) *obytes |= bit;
               }
               if(!(bit >>= 1)) { obytes++; bit = 0x80; }
            }

            obytes += (upd->ints[8]-pinbot+7)>>3;
         }



         fwrite(upd->outbuf,1,ioutbuf,out);
         ioutbuf = 0;
      }
   }



   if(upd->yscan < upd->ints[12]) {
      upd->yscan += upd->int_a[6].data[upd->ipass++];
      if( upd->ints[12] <= upd->yscan) upd->ipass = 0;
      else if(upd->int_a[6].size <= upd->ipass) upd->ipass = 0;
   } else if(upd->yscan >= upd->ints[13]) {
      upd->yscan += upd->int_a[9].data[upd->ipass++];
      if(upd->int_a[9].size <= upd->ipass) upd->ipass = 0;
   } else {
      upd->yscan += upd->int_a[4].data[upd->ipass++];
      if(upd->int_a[4].size <= upd->ipass) upd->ipass = 0;
      if(upd->yscan >= upd->ints[13]) upd->ipass = 0;
   }

   return 0;
}





static int
upd_open_wrtescp2(upd_device *udev)
{
   const upd_p upd = udev->upd;
   int error = 0;
   float pixels_per_inch = 360.0;


   if(0 < upd->strings[3].size) {
     int i,state = 0,value = 0;
     byte *bp = (byte *) upd_cast(upd->strings[3].data);
     for(i = 0; i < upd->strings[3].size; ++i) {
        switch(state) {
           case 0:
              if(0x1b == bp[i]) state = 1;
           break;
           case 1:
              if('(' == bp[i]) state = 2;
              else state = 0;
           break;
           case 2:
              switch(bp[i]) {
                 case 'U': state = 3; break;
                 case 'C': state = 6; break;
                 case 'c': state = 10; break;
                 default: state = 0; break;
              }
           break;
           case 3:
              if(1 == bp[i]) state = 4;
              else state = 0;
           break;
           case 4:
              if(0 == bp[i]) state = 5;
              else state = 0;
           break;
           case 5:
              pixels_per_inch = 3600.0 / (float) bp[i];
              state = 0;
           break;
           case 6:
              if(2 == bp[i]) state = 7;
              else state = 0;
           break;
           case 7:
              if(0 == bp[i]) state = 8;
              else state = 0;
           break;
           case 8:
              if(((uint32_t) 1<<5) & upd->flags) {
                 value = (int)(0.5 + udev->height
                               * pixels_per_inch / udev->HWResolution[1]);
                 bp[i] = value & 0xff;
              }
              state = 9;
           break;
           case 9:
              if(((uint32_t) 1<<5) & upd->flags) {
                 bp[i] = (value>>8) & 0xff;
              }
              state = 0;
           break;
           case 10:
              if(4 == bp[i]) state = 11;
              else state = 0;
           break;
           case 11:
              if(0 == bp[i]) state = 12;
              else state = 0;
           break;
           case 12:
              if(((uint32_t) 1<<6) & upd->flags) {
                 value = (int)(((udev)->HWMargins[3] / 72.0) * pixels_per_inch);
                 bp[i] = value & 0xff;
              }
              state = 13;
           break;
           case 13:
              if(((uint32_t) 1<<6) & upd->flags) {
                 bp[i] = (value>>8) & 0xff;
              }
              state = 14;
           break;
           case 14:
              if(((uint32_t) 1<<7) & upd->flags) {
                 value = (int)(0.5 + udev->height
                               * pixels_per_inch / udev->HWResolution[1]
                       - ((udev)->HWMargins[1] / 72.0) * pixels_per_inch);
                 bp[i] = value & 0xff;
              }
              state = 15;
           break;
           case 15:
              if(((uint32_t) 1<<7) & upd->flags) {
                 bp[i] = (value>>8) & 0xff;
              }
              state = 0;
           break;
        }
     }
   }


   if(0 == upd->strings[9].size) {
      byte *bp;
      { if(upd->strings[9].data && upd->strings[9].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->strings[9].data), "uniprint/params")); };
      bp = ((void*)0); if(0 < (5)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, 5, sizeof(bp[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(5)*sizeof(bp[0])); bp = (void *) tmp; } else { return ((-25)); } };
      upd->strings[9].data = bp;
      upd->strings[9].size = 5;
      *bp++ = 0x1b;
      *bp++ = '(';
      *bp++ = upd->flags & ((uint32_t) 1<<11) ? 'V' : 'v';
      *bp++ = 2;
      *bp++ = 0;
   }


   if((1 < upd->ints[4]) && (0 == upd->strings[7].size)) {






      error = -1;

   } else if((1 < upd->ints[9] ) &&
             (0 == upd->strings[6].size) &&
             (0 == upd->strings[7].size) ) {
      byte *bp;
      int ratio;

      ratio = (int)((udev->HWResolution[1] + 0.5) / udev->HWResolution[0]);

      if(0 == upd->ints[4]) {
         if(ratio > 1) upd->ints[4] = -ratio;
      } else {
         ratio = -upd->ints[4];
      }

      if(2 == upd->ints[9]) {

         { if(upd->strings[7].data && upd->strings[7].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->strings[7].data), "uniprint/params")); };
         bp = ((void*)0); if(0 < (4)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, 4, sizeof(bp[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(4)*sizeof(bp[0])); bp = (void *) tmp; } else { return ((-25)); } };
         upd->strings[7].size = 4;
         upd->strings[7].data = bp;
         *bp++ = 0x1b;
         *bp++ = '\\';
         *bp++ = ratio & 0xff;
         *bp++ = (ratio>>8) & 0xff;

      } else {

         { if(upd->strings[6].data && upd->strings[6].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->strings[6].data), "uniprint/params")); };
         bp = ((void*)0); if(0 < (2)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, 2, sizeof(bp[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(2)*sizeof(bp[0])); bp = (void *) tmp; } else { return ((-25)); } };
         upd->strings[6].size = 2;
         upd->strings[6].data = bp;
         *bp++ = 0x1b;
         *bp++ = upd->flags & ((uint32_t) 1<<10) ? '$' : '\\';

      }
   }



   switch(upd->choice[2]){
      case 7:

         if( 0 == upd->ints[15] ){
            upd->ints[15] = 1;
         }

         if( 0 == upd->ints[16] ){
            upd->ints[16] = 1;
         }

         if( upd->ints[16] != upd->int_a[12].size ) {
            int i, *bp;
            { if(upd->int_a[12].data && upd->int_a[12].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->int_a[12].data), "uniprint/params")); };
            bp = ((void*)0); if(0 < (upd->ints[16])) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->ints[16], sizeof(bp[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(upd->ints[16])*sizeof(bp[0])); bp = (void *) tmp; } else { return ((-25)); } };
            upd->int_a[12].size = upd->ints[16];
            upd->int_a[12].data = bp;
            for (i = 0 ; i < upd->ints[16] ; i++){
               *bp++ = 1;
            }
         }

         if( upd->ints[16] != upd->int_a[13].size ) {
            int i, *bp;
            { if(upd->int_a[13].data && upd->int_a[13].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->int_a[13].data), "uniprint/params")); };
            bp = ((void*)0); if(0 < (upd->ints[16])) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->ints[16], sizeof(bp[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(upd->ints[16])*sizeof(bp[0])); bp = (void *) tmp; } else { return ((-25)); } };
            upd->int_a[13].size = upd->ints[16];
            upd->int_a[13].data = bp;
            for (i = 0 ; i < upd->ints[16] ; i++){
               *bp++ = i;
            }
         }
      break;
      case 3:
      case 4:


      break;
   }


   if((0 == upd->string_a[1].size) &&
      (0 == upd->string_a[0].size ) ) {
      byte *bp;
      gs_param_string *ap;
      int i;

      if(4 == upd->ocomp) {
         { if(upd->string_a[0].data && upd->string_a[0].size) { uint iii; for(iii = 0; iii < upd->string_a[0].size; ++iii) { if(upd->string_a[0].data[iii].data && upd->string_a[0].data[iii].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->string_a[0].data[iii].data), "uniprint/params")); }; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->string_a[0].data), "uniprint/params")); } };
         ap = ((void*)0); if(0 < (4)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, 4, sizeof(ap[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(4)*sizeof(ap[0])); ap = (void *) tmp; } else { return ((-25)); } };
         upd->string_a[0].data = ap;
         upd->string_a[0].size = 4;
         for(i = 0; i < 4; ++i) {
            bp = ((void*)0); if(0 < (3)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, 3, sizeof(bp[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(3)*sizeof(bp[0])); bp = (void *) tmp; } else { return ((-25)); } };
            ap[i].size = 3;
            ap[i].data = bp;
            *bp++ = 0x1b;
            *bp++ = 'r';
            switch(((updcomp_p)upd->valptr[i])->cmap) {
               case 0: *bp++ = 0; break;
               case 1: *bp++ = 2; break;
               case 2: *bp++ = 1; break;
               case 3: *bp++ = 4; break;
            }
         }
      }

      { if(upd->string_a[1].data && upd->string_a[1].size) { uint iii; for(iii = 0; iii < upd->string_a[1].size; ++iii) { if(upd->string_a[1].data[iii].data && upd->string_a[1].data[iii].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->string_a[1].data[iii].data), "uniprint/params")); }; ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->string_a[1].data), "uniprint/params")); } };
      ap = ((void*)0); if(0 < (upd->ocomp)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, upd->ocomp, sizeof(ap[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(upd->ocomp)*sizeof(ap[0])); ap = (void *) tmp; } else { return ((-25)); } };
      upd->string_a[1].data = ap;
      upd->string_a[1].size = upd->ncomp;
      for(i = 0; i < upd->ocomp; ++i) {
         bp = ((void*)0); if(0 < (6)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, 6, sizeof(bp[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(6)*sizeof(bp[0])); bp = (void *) tmp; } else { return ((-25)); } };
         ap[i].size = 6;
         ap[i].data = bp;
         *bp++ = 0x1b;
         *bp++ = '.';
         *bp++ = 1;
         switch(upd->choice[2]){
            case 3:
            case 4:
               *bp++ = (byte)(3600.0 * upd->ints[10] /
                                 udev->HWResolution[1] + 0.5);
               *bp++ = (byte)(3600.0 * upd->ints[9] /
                                 udev->HWResolution[0] + 0.5);
               *bp++ = upd->ints[8];
            break;
            case 7:




               *bp++ = 10;
               *bp++ = 10;
               *bp++ = upd->ints[15];
            break;
         }
      }
   }


   if(upd->ocomp > upd->string_a[1].size) {




      error = -1;
   }


   switch(upd->choice[2]) {
      case 3:
         if(1 < upd->ints[9]) {




            error = -1;
         } else {
            upd->writer = upd_wrtescp2;
         }
      break;
      case 4:
         upd->writer = upd_wrtescp2x;
         upd->nlimits = upd->ints[9];





      break;
      case 7:
         if(1 < upd->ints[9]) {




            error = -1;
         } else {
            upd->writer = upd_wrtescnm;
         }
      break;
      default:





         error = - 1;
      break;
   }
# 5542 "./devices/gdevupd.c"
   if(0 <= error) {
      int32_t i,noutbuf,need;

      if(0 < upd->strings[9].size) {
         noutbuf = upd->strings[9].size + 2;
      } else {
         int nmax = upd->pheight;
         if( 1 < upd->ints[6]) nmax /= upd->ints[6];
         else if(-1 > upd->ints[6]) nmax *= -upd->ints[6];
         noutbuf = 2 * upd->strings[8].size + 2;
         noutbuf += nmax/255 + 1;
      }

      if(1 < upd->ints[6])
         noutbuf += (upd->ints[6]-1) * upd->strings[10].size;


      if(0 == upd->strings[6].size) {
         noutbuf += 1;
         noutbuf += (upd->ints[9]-1) * upd->strings[7].size;
      } else {
         noutbuf += upd->strings[6].size + 2;

         if(1 < upd->ints[4])
            noutbuf += (upd->ints[4]-1) * upd->strings[7].size;
      }


      if(0 < upd->string_a[0].size) {
          need = 0;
          for(i = 0; i < upd->ocomp; ++i)
             if(need < upd->string_a[0].data[i].size)
                need = upd->string_a[0].data[i].size;
          noutbuf += need;
      }


      need = 0;
      for(i = 0; i < upd->ocomp; ++i)
         if(need < upd->string_a[1].data[i].size)
            need = upd->string_a[1].data[i].size;
      noutbuf += need + 2;


      noutbuf += 2*upd->nbytes + (upd->nbytes + 127) / 128;

      upd->noutbuf = noutbuf;
      error = 1;
   }

   return error;
}





static int
upd_wrtescp2(upd_p upd, FILE *out)
{
   int pinbot,pin,pintop,xbegin,x,xend,icomp,ybegin,yend,y,ioutbuf,n;
   byte *obytes;
   updscan_p scan;



   if(upd->yscan < upd->ints[12]) {
      pintop = 0;
      pinbot = upd->int_a[8].data[upd->ipass];
   } else if(upd->yscan >= upd->ints[13]) {
      pinbot = upd->ints[8];
      pintop = pinbot - upd->int_a[11].data[upd->ipass];
   } else {
      pintop = 0;
      pinbot = upd->ints[8];
   }

   ybegin = pintop * upd->ints[10] + upd->yscan - upd->ints[14];
   yend = pinbot * upd->ints[10] + upd->yscan - upd->ints[14];



   xbegin = upd->nbytes;
   xend = -1;

   for(y = ybegin; y < yend; y += upd->ints[10]) {

      if(0 > y) continue;

      scan = upd->scnbuf[y & upd->scnmsk];

      for(icomp = 0; icomp < upd->ocomp; ++icomp) {
         obytes = scan[icomp].bytes;

         for(x = 0; x < xbegin && !obytes[x]; x++);
         if(x < xbegin) xbegin = x;

         if(x < upd->nbytes) {
            for(x = upd->nbytes-1; x > xend && !obytes[x]; x--);
            if(x > xend) xend = x;
         }
      }

   }

   if(xbegin <= xend) {

      ioutbuf = 0;

      if(0 == upd->strings[6].size) xbegin = 0;




      if(upd->yscan != upd->yprinter) {
         if(((uint32_t) 1<<11) & upd->flags) y = upd->yscan + upd->ints[7];
         else y = upd->yscan - upd->yprinter;

         if( 1 < upd->ints[6]) {
            n = y / upd->ints[6];
            y -= n * upd->ints[6];
         } else if(-1 > upd->ints[6]) {
            n = y * -upd->ints[6];
            y = 0;
         } else {
            n = y;
            y = 0;
         }

         if(n) {
            memcpy(upd->outbuf+ioutbuf,
                       upd->strings[9].data,upd->strings[9].size);
            ioutbuf += upd->strings[9].size;

            upd->outbuf[ioutbuf++] = n & 0xff;
            upd->outbuf[ioutbuf++] = (n>>8) & 0xff;

         }

         if(0 < upd->strings[10].size) {
            while(y--) {
               memcpy(upd->outbuf+ioutbuf,
                          upd->strings[10].data,
                          upd->strings[10].size);
               ioutbuf += upd->strings[10].size;
            }
         }

         upd->yprinter = upd->yscan;
      }



      for(icomp = 0; icomp < upd->ocomp; ++icomp) {



         for(y = ybegin; y < yend; y += upd->ints[10]) {
            if(0 > y) continue;
            obytes = upd->scnbuf[y & upd->scnmsk][icomp].bytes;
            for(x = xbegin; x <= xend && !obytes[x]; ++x);
            if( x <= xend) break;
         }
         if(y >= yend) continue;



         if((0 < upd->string_a[0].size) &&
            (upd->icomp != icomp ) ) {
            upd->icomp = icomp;
            if(0 < upd->string_a[0].data[icomp].size) {
               memcpy(upd->outbuf+ioutbuf,
                          upd->string_a[0].data[icomp].data,
                          upd->string_a[0].data[icomp].size);
               ioutbuf += upd->string_a[0].data[icomp].size;
            }
         }



         if(xbegin != upd->xprinter) {

            if(0 == upd->strings[6].size) {

               upd->outbuf[ioutbuf++] = '\r';
               upd->xprinter = 0;
               n = 0;
               x = 0;

            } else {

               if(((uint32_t) 1<<10) & upd->flags) n = x = xbegin + upd->ints[5];
               else n = x = xbegin - upd->xprinter;

               if( 1 < upd->ints[4]) {
                  if(0 > n) {
                     n -= upd->ints[4];
                     x -= n;
                  }
                  if(n) n /= upd->ints[4];
                  if(x) x %= upd->ints[4];

               } else if(-1 > upd->ints[4]) {
                  n *= -upd->ints[4];
                  x = 0;
               }

               if(n) {

                 memcpy(upd->outbuf+ioutbuf,
                             upd->strings[6].data,
                             upd->strings[6].size);
                  ioutbuf += upd->strings[6].size;

                  upd->outbuf[ioutbuf++] = n & 0xff;
                  upd->outbuf[ioutbuf++] = (n>>8) & 0xff;

               }

            }

            if(x && 0 < upd->strings[7].size) {
               while(x--) {
                  memcpy(upd->outbuf+ioutbuf,
                             upd->strings[7].data,
                             upd->strings[7].size);
                  ioutbuf += upd->strings[7].size;
               }
            }
         }
         upd->xprinter = xend+1;




         if(0 < upd->string_a[1].data[icomp].size) {
            memcpy(upd->outbuf+ioutbuf,
                       upd->string_a[1].data[icomp].data,
                       upd->string_a[1].data[icomp].size);
            ioutbuf += upd->string_a[1].data[icomp].size;
         }
         n = xend + 1 - xbegin;
         upd->outbuf[ioutbuf++] = (n<<3) & 255;
         upd->outbuf[ioutbuf++] = (n>>5) & 255;



         for(pin = 0; pin < pintop; ++pin) {
            ioutbuf += upd_rle(upd->outbuf+ioutbuf,((void*)0),n);
            fwrite(upd->outbuf,1,ioutbuf,out);
            ioutbuf = 0;
         }

         for(y = ybegin; 0 > y; y += upd->ints[10]) {
            ioutbuf += upd_rle(upd->outbuf+ioutbuf,((void*)0),n);
            fwrite(upd->outbuf,1,ioutbuf,out);
            ioutbuf = 0;
         }

         for(; y < yend; y += upd->ints[10]) {
            ioutbuf += upd_rle(upd->outbuf+ioutbuf,
               upd->scnbuf[y & upd->scnmsk][icomp].bytes+xbegin,n);
            fwrite(upd->outbuf,1,ioutbuf,out);
            ioutbuf = 0;
         }

         for(pin = pinbot; pin < upd->ints[8]; ++pin) {
            ioutbuf += upd_rle(upd->outbuf+ioutbuf,((void*)0),n);
            fwrite(upd->outbuf,1,ioutbuf,out);
            ioutbuf = 0;
         }
      }
   }


   if(upd->yscan < upd->ints[12]) {
      upd->yscan += upd->int_a[6].data[upd->ipass++];
      if( upd->ints[12] <= upd->yscan) upd->ipass = 0;
      else if(upd->int_a[6].size <= upd->ipass) upd->ipass = 0;
   } else if(upd->yscan >= upd->ints[13]) {
      upd->yscan += upd->int_a[9].data[upd->ipass++];
      if(upd->int_a[9].size <= upd->ipass) upd->ipass = 0;
   } else {
      upd->yscan += upd->int_a[4].data[upd->ipass++];
      if(upd->int_a[4].size <= upd->ipass) upd->ipass = 0;
      if(upd->yscan >= upd->ints[13]) upd->ipass = 0;
   }

   return 0;
}







static int
upd_wrtescnm(upd_p upd, FILE *out)
{
   int pinbot,pin,pintop,xbegin,x,xend,icomp,ybegin,yend,y,ioutbuf,n;
   int irow,imask,iyofs;
   byte *obytes;
   updscan_p scan;



   if(upd->yscan < upd->ints[12]) {
      pintop = 0;
      pinbot = upd->int_a[8].data[upd->ipass];
   } else if(upd->yscan >= upd->ints[13]) {
      pinbot = upd->ints[8];
      pintop = pinbot - upd->int_a[11].data[upd->ipass];
   } else {
      pintop = 0;
      pinbot = upd->ints[8];
   }

   ybegin = pintop * upd->ints[10] + upd->yscan - upd->ints[14];
   yend = pinbot * upd->ints[10] + upd->yscan - upd->ints[14];



   xbegin = upd->nbytes;
   xend = -1;

   for(y = ybegin; y < yend; y += upd->ints[10]) {

      if(0 > y) continue;

      scan = upd->scnbuf[y & upd->scnmsk];

      for(icomp = 0; icomp < upd->ocomp; ++icomp) {
         obytes = scan[icomp].bytes;

         for(x = 0; x < xbegin && !obytes[x]; x++);
         if(x < xbegin) xbegin = x;

         if(x < upd->nbytes) {
            for(x = upd->nbytes-1; x > xend && !obytes[x]; x--);
            if(x > xend) xend = x;
         }
      }
   }

   if(xbegin <= xend) {

      ioutbuf = 0;

      if(0 == upd->strings[6].size) xbegin = 0;




      if(upd->yscan != upd->yprinter) {
         if(((uint32_t) 1<<11) & upd->flags) y = upd->yscan + upd->ints[7];
         else y = upd->yscan - upd->yprinter;

         if( 1 < upd->ints[6]) {
            n = y / upd->ints[6];
            y -= n * upd->ints[6];
         } else if(-1 > upd->ints[6]) {
            n = y * -upd->ints[6];
            y = 0;
         } else {
            n = y;
            y = 0;
         }

         if(n) {
            memcpy(upd->outbuf+ioutbuf,
                       upd->strings[9].data,upd->strings[9].size);
            ioutbuf += upd->strings[9].size;

            upd->outbuf[ioutbuf++] = n & 0xff;
            upd->outbuf[ioutbuf++] = (n>>8) & 0xff;

         }

         if(0 < upd->strings[10].size) {
            while(y--) {
               memcpy(upd->outbuf+ioutbuf,
                          upd->strings[10].data,
                          upd->strings[10].size);
               ioutbuf += upd->strings[10].size;
            }
         }

         upd->yprinter = upd->yscan;
      }
# 5942 "./devices/gdevupd.c"
      icomp=0;
      if((0 < upd->string_a[0].size) ) {

         upd->icomp = icomp;
         if(0 < upd->string_a[0].data[icomp].size) {
            memcpy(upd->outbuf+ioutbuf,
                       upd->string_a[0].data[icomp].data,
                       upd->string_a[0].data[icomp].size);
            ioutbuf += upd->string_a[0].data[icomp].size;
         }
      }



      if(xbegin != upd->xprinter) {

         if(0 == upd->strings[6].size) {

            upd->outbuf[ioutbuf++] = '\r';
            upd->xprinter = 0;
            n = 0;
            x = 0;

         } else {

            if(((uint32_t) 1<<10) & upd->flags) n = x = xbegin + upd->ints[5];
            else n = x = xbegin - upd->xprinter;

            if( 1 < upd->ints[4]) {
               if(0 > n) {
                  n -= upd->ints[4];
                  x -= n;
               }
               if(n) n /= upd->ints[4];
               if(x) x %= upd->ints[4];

            } else if(-1 > upd->ints[4]) {
               n *= -upd->ints[4];
               x = 0;
            }

            if(n) {

              memcpy(upd->outbuf+ioutbuf,
                          upd->strings[6].data,
                          upd->strings[6].size);
               ioutbuf += upd->strings[6].size;

               upd->outbuf[ioutbuf++] = n & 0xff;
               upd->outbuf[ioutbuf++] = (n>>8) & 0xff;

            }

         }

         if(x && 0 < upd->strings[7].size) {
            while(x--) {
               memcpy(upd->outbuf+ioutbuf,
                          upd->strings[7].data,
                          upd->strings[7].size);
               ioutbuf += upd->strings[7].size;
            }
         }
      }
      upd->xprinter = xend+1;




      if(0 < upd->string_a[1].data[icomp].size) {
         memcpy(upd->outbuf+ioutbuf,
                    upd->string_a[1].data[icomp].data,
                    upd->string_a[1].data[icomp].size);
         ioutbuf += upd->string_a[1].data[icomp].size;
      }
      n = xend + 1 - xbegin;
      upd->outbuf[ioutbuf++] = (n<<3) & 255;
      upd->outbuf[ioutbuf++] = (n>>5) & 255;



      irow=0;


      for(pin = 0; pin < pintop; ++pin) {
         int i;
         for(i=0 ; i < upd->ints[16]; i++){
            if(irow >= upd->ints[15]) break;
            ioutbuf += upd_rle(upd->outbuf+ioutbuf,((void*)0),n);
            fwrite(upd->outbuf,1,ioutbuf,out);
            irow++;
            ioutbuf = 0;
         }
      }



      for(y = ybegin; 0 > y; y += upd->ints[10]) {

         int i;
         for(i=0 ; i < upd->ints[16]; i++){
            if(irow >= upd->ints[15]) break;
            ioutbuf += upd_rle(upd->outbuf+ioutbuf,((void*)0),n);
            fwrite(upd->outbuf,1,ioutbuf,out);
            ioutbuf = 0;
            irow++;
         }
      }

      for(; y < yend; y += upd->ints[10]) {

         int i,masklen=upd->ints[16],yinc=0;

         for(i=0 ; (i < upd->ints[16]); i++){
            if(irow >= upd->ints[15]) break;
            imask = irow%masklen;
            icomp = upd->int_a[12].data[imask];
            if(icomp == 0) {
               ioutbuf += upd_rle(upd->outbuf+ioutbuf,((void*)0),n);
            } else {
               --icomp;
               iyofs = upd->int_a[13].data[imask];
               ioutbuf += upd_rle(upd->outbuf+ioutbuf,
               upd->scnbuf[(y+iyofs) & upd->scnmsk][icomp].bytes+xbegin,n);
               yinc+=upd->ints[10];
            }
            fwrite(upd->outbuf,1,ioutbuf,out);
            ioutbuf = 0;
            irow++;
         }

         if (upd->ints[10] < upd->ints[16]) {
            y+=yinc;
            if (y > 0)
               y-=upd->ints[10];
         }
      }


      for(pin = pinbot; pin < upd->ints[8]; ++pin) {
         int i;
         for(i=0 ; i < upd->ints[16]; i++){
            if(irow >= upd->ints[15]) break;
            ioutbuf += upd_rle(upd->outbuf+ioutbuf,((void*)0),n);
            fwrite(upd->outbuf,1,ioutbuf,out);
            ioutbuf = 0;
            irow++;
         }
      }


       if (irow < upd->ints[15]) {
         for( ; irow < upd->ints[15]; irow++){
            ioutbuf += upd_rle(upd->outbuf+ioutbuf,((void*)0),n);
            fwrite(upd->outbuf,1,ioutbuf,out);
            ioutbuf = 0;
         }
      }

   }


   if(upd->yscan < upd->ints[12]) {
      upd->yscan += upd->int_a[6].data[upd->ipass++];
      if( upd->ints[12] <= upd->yscan) upd->ipass = 0;
      else if(upd->int_a[6].size <= upd->ipass) upd->ipass = 0;
   } else if(upd->yscan >= upd->ints[13]) {
      upd->yscan += upd->int_a[9].data[upd->ipass++];
      if(upd->int_a[9].size <= upd->ipass) upd->ipass = 0;
   } else {
      upd->yscan += upd->int_a[4].data[upd->ipass++];
      if(upd->int_a[4].size <= upd->ipass) upd->ipass = 0;
      if(upd->yscan >= upd->ints[13]) upd->ipass = 0;
   }

   return 0;
}





static int
upd_wrtescp2x(upd_p upd, FILE *out)
{
   int pinbot,pin,pintop,xbegin,x,xend,icomp,ybegin,yend,y,ioutbuf,n,ixpass;
   byte *obytes,bit;
   updscan_p scan;



   if(upd->yscan < upd->ints[12]) {
      ixpass = upd->int_a[7].data[upd->ipass];
      pintop = 0;
      pinbot = upd->int_a[8].data[upd->ipass];
   } else if(upd->yscan >= upd->ints[13]) {
      ixpass = upd->int_a[10].data[upd->ipass];
      pinbot = upd->ints[8];
      pintop = pinbot - upd->int_a[11].data[upd->ipass];
   } else {
      ixpass = upd->int_a[5].data[upd->ipass];
      pintop = 0;
      pinbot = upd->ints[8];
   }

   ybegin = pintop * upd->ints[10] + upd->yscan - upd->ints[14];
   yend = pinbot * upd->ints[10] + upd->yscan - upd->ints[14];



   xbegin = upd->pwidth;
   xend = -1;

   for(y = ybegin; y < yend; y += upd->ints[10]) {

      if(0 > y) continue;

      scan = upd->scnbuf[y & upd->scnmsk];

      for(icomp = 0; icomp < upd->ocomp; ++icomp) {
         if(xbegin > scan[icomp].xbegin[ixpass])
            xbegin = scan[icomp].xbegin[ixpass];
         if(xend < scan[icomp].xend[ ixpass])
            xend = scan[icomp].xend[ ixpass];
      }

   }

   if(xbegin <= xend) {

      ioutbuf = upd->nbytes;

      if(0 == upd->strings[6].size) xbegin = ixpass;




      if(upd->yscan != upd->yprinter) {
         if(((uint32_t) 1<<11) & upd->flags) y = upd->yscan + upd->ints[7];
         else y = upd->yscan - upd->yprinter;

         if( 1 < upd->ints[6]) {
            n = y / upd->ints[6];
            y -= n * upd->ints[6];
         } else if(-1 > upd->ints[6]) {
            n = y * -upd->ints[6];
            y = 0;
         } else {
            n = y;
            y = 0;
         }

         if(n) {
            memcpy(upd->outbuf+ioutbuf,
                       upd->strings[9].data,upd->strings[9].size);
            ioutbuf += upd->strings[9].size;

            upd->outbuf[ioutbuf++] = n & 0xff;
            upd->outbuf[ioutbuf++] = (n>>8) & 0xff;

         }

         if(0 < upd->strings[10].size) {
            while(y--) {
               memcpy(upd->outbuf+ioutbuf,
                          upd->strings[10].data,
                          upd->strings[10].size);
               ioutbuf += upd->strings[10].size;
            }
         }

         upd->yprinter = upd->yscan;
      }




      for(icomp = 0; icomp < upd->ocomp; ++icomp) {



         for(y = ybegin; y < yend; y += upd->ints[10]) {
            if(0 > y) continue;
            scan = upd->scnbuf[y & upd->scnmsk]+icomp;
            if(0 <= scan->xend[ixpass]) break;
         }
         if(y >= yend) continue;



         if((0 < upd->string_a[0].size) &&
            (upd->icomp != icomp ) ) {
            upd->icomp = icomp;
            if(0 < upd->string_a[0].data[icomp].size) {
               memcpy(upd->outbuf+ioutbuf,
                          upd->string_a[0].data[icomp].data,
                          upd->string_a[0].data[icomp].size);
               ioutbuf += upd->string_a[0].data[icomp].size;
            }
         }



         if(xbegin != upd->xprinter) {

            if(0 == upd->strings[6].size) {

               upd->outbuf[ioutbuf++] = '\r';
               upd->xprinter = 0;
               n = 0;
               x = ixpass;

            } else {

               if(((uint32_t) 1<<10) & upd->flags) n = x = xbegin + upd->ints[5];
               else n = x = xbegin - upd->xprinter;

               if( 1 < upd->ints[4]) {
                  if(0 > n) {
                     n -= upd->ints[4];
                     x -= n;
                  }
                  if(n) n /= upd->ints[4];
                  if(x) x %= upd->ints[4];

               } else if(-1 > upd->ints[4]) {
                  n *= -upd->ints[4];
                  x = 0;
               }

               if(n) {

                 memcpy(upd->outbuf+ioutbuf,
                             upd->strings[6].data,
                             upd->strings[6].size);
                  ioutbuf += upd->strings[6].size;

                  upd->outbuf[ioutbuf++] = n & 0xff;
                  upd->outbuf[ioutbuf++] = (n>>8) & 0xff;

               }

            }

            if(x && 0 < upd->strings[7].size) {
               while(x--) {
                  memcpy(upd->outbuf+ioutbuf,
                             upd->strings[7].data,
                             upd->strings[7].size);
                  ioutbuf += upd->strings[7].size;
               }
            }
         }
         upd->xprinter = xend+1;




         if(0 < upd->string_a[1].data[icomp].size) {
            memcpy(upd->outbuf+ioutbuf,
                       upd->string_a[1].data[icomp].data,
                       upd->string_a[1].data[icomp].size);
            ioutbuf += upd->string_a[1].data[icomp].size;
         }
         n = ((xend - xbegin) / upd->ints[9] + 8) & ~7;
         upd->outbuf[ioutbuf++] = n & 255;
         upd->outbuf[ioutbuf++] = (n>>8) & 255;
         n >>= 3;



         for(pin = 0; pin < pintop; ++pin) {
            ioutbuf += upd_rle(upd->outbuf+ioutbuf,((void*)0),n);
            fwrite(upd->outbuf+upd->nbytes,1,ioutbuf-upd->nbytes,out);
            ioutbuf = upd->nbytes;
         }

         for(y = ybegin; 0 > y; y += upd->ints[10]) {
            ioutbuf += upd_rle(upd->outbuf+ioutbuf,((void*)0),n);
            fwrite(upd->outbuf+upd->nbytes,1,ioutbuf-upd->nbytes,out);
            ioutbuf = upd->nbytes;
         }

         for(; y < yend; y += upd->ints[10]) {
            byte * ibytes = upd->scnbuf[y & upd->scnmsk][icomp].bytes;
            obytes = upd->outbuf;
            memset(obytes,0,upd->nbytes);
            bit = 0x80;
            for(x = xbegin; x <= xend; x += upd->ints[9]) {
               if(ibytes[x>>3] & (0x80 >> (x & 7))) *obytes |= bit;
               if(!(bit >>= 1)) { obytes++; bit = 0x80; }
            }
            ioutbuf += upd_rle(upd->outbuf+ioutbuf,upd->outbuf,n);
            fwrite(upd->outbuf+upd->nbytes,1,ioutbuf-upd->nbytes,out);
            ioutbuf = upd->nbytes;
         }

         for(pin = pinbot; pin < upd->ints[8]; ++pin) {
            ioutbuf += upd_rle(upd->outbuf+ioutbuf,((void*)0),n);
            fwrite(upd->outbuf+upd->nbytes,1,ioutbuf-upd->nbytes,out);
            ioutbuf = upd->nbytes;
         }
      }
   }



   if(upd->yscan < upd->ints[12]) {
      upd->yscan += upd->int_a[6].data[upd->ipass++];
      if( upd->ints[12] <= upd->yscan) upd->ipass = 0;
      else if(upd->int_a[6].size <= upd->ipass) upd->ipass = 0;
   } else if(upd->yscan >= upd->ints[13]) {
      upd->yscan += upd->int_a[9].data[upd->ipass++];
      if(upd->int_a[9].size <= upd->ipass) upd->ipass = 0;
   } else {
      upd->yscan += upd->int_a[4].data[upd->ipass++];
      if(upd->int_a[4].size <= upd->ipass) upd->ipass = 0;
      if(upd->yscan >= upd->ints[13]) upd->ipass = 0;
   }

   return 0;
}





static int
upd_rle(byte *out,const byte *in,int nbytes)
{

   int used = 0;
   int crun,cdata;
   byte run;

   if(in != ((void*)0)) {

      crun = 1;

      while(nbytes > 0) {

         run = in[0];

         while((nbytes > crun) && (run == in[crun])) if(++crun == 128) break;

         if((crun > 2) || (crun == nbytes)) {

            *out++ = (257 - crun) & 0xff; *out++ = run; used += 2;

            nbytes -= crun; in += crun;
            crun = 1;

         } else {

            for(cdata = crun; (nbytes > cdata) && (crun < 4);) {
               if(run == in[cdata]) crun += 1;
               else run = in[cdata], crun = 1;
               if(++cdata == 128) break;
            }

            if(crun < 3) crun = 0;
            else cdata -= crun;

            *out++ = cdata-1; used++;
            memcpy(out,in,cdata); used += cdata; out += cdata;

            nbytes -= cdata; in += cdata;

         }

      }

   } else {

      while(nbytes > 0) {
         crun = nbytes > 128 ? 128 : nbytes;
         nbytes -= crun;
         *out++ = (257 - crun) & 0xff;
         *out++ = 0;
         used += 2;
      }
   }
   return used;
}





static int
upd_open_wrtrtl(upd_device *udev)
{
   const upd_p upd = udev->upd;
   int error = 0;



   if(0 < upd->strings[3].size) {

     int i,j,state;
     char cv[24];
     byte *bp;
     uint ncv,nbp;

     j = -1;
     state = 0;
     for(i = 0; i < upd->strings[3].size; ++i) {
       const int c = upd->strings[3].data[i];

       switch(state) {

         case 0:
           if( c == 0x1b) state = 1;
         break;


         case 1:
           if( c == 0x2a) state = 2;
           else if( c == 0x25) state = 5;
           else state = 0;
         break;


         case 2:
           j = i;
           if( c == 0x72) state = 3;
           else if( c == 0x74) state = 4;
           else state = 0;
         break;



         case 3:

           if( (((uint32_t) 1<<4) & upd->flags) &&
                     ((c == 0x73) || (c == 0x53)) ) {

             gs_sprintf(cv,"%d",upd->pwidth);
             ncv = strlen(cv);

             nbp = (j+1) + ncv + (upd->strings[3].size-i);
             bp = ((void*)0); if(0 < (nbp)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, nbp, sizeof(bp[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(nbp)*sizeof(bp[0])); bp = (void *) tmp; } else { return ((-25)); } };

             if(0 <= j) memcpy(bp,upd->strings[3].data,j+1);
             memcpy(bp+j+1, cv,ncv);
             memcpy(bp+j+1+ncv,upd->strings[3].data+i,
                               upd->strings[3].size-i);
             i = j+1+ncv;
             { if(upd->strings[3].data && upd->strings[3].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->strings[3].data), "uniprint/params")); };
             upd->strings[3].data = bp;
             upd->strings[3].size = nbp;

           } else if((((uint32_t) 1<<5) & upd->flags) &&
                     ((c == 0x74) || (c == 0x54)) ) {

             gs_sprintf(cv,"%d",upd->pheight);
             ncv = strlen(cv);

             nbp = (j+1) + ncv + (upd->strings[3].size-i);
             bp = ((void*)0); if(0 < (nbp)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, nbp, sizeof(bp[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(nbp)*sizeof(bp[0])); bp = (void *) tmp; } else { return ((-25)); } };

             if(0 <= j) memcpy(bp,upd->strings[3].data,j+1);
             memcpy(bp+j+1, cv,ncv);
             memcpy(bp+j+1+ncv,upd->strings[3].data+i,
                               upd->strings[3].size-i);
             i = j+1+ncv;
             { if(upd->strings[3].data && upd->strings[3].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->strings[3].data), "uniprint/params")); };
             upd->strings[3].data = bp;
             upd->strings[3].size = nbp;

           }

           if( (0x40 < c) && (c < 0x5b)) state = 0;
           else if(!((0x2f < c) && (c < 0x3a))) j = i;

         break;



         case 4:

           if( (((uint32_t) 1<<8) & upd->flags) &&
                     ((c == 0x72) || (c == 0x52)) ) {

             gs_sprintf(cv,"%d",(int)
               ((udev->HWResolution[1] < udev->HWResolution[0] ?
                 udev->HWResolution[0] : udev->HWResolution[1])
               +0.5));
             ncv = strlen(cv);

             nbp = (j+1) + ncv + (upd->strings[3].size-i);
             bp = ((void*)0); if(0 < (nbp)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, nbp, sizeof(bp[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(nbp)*sizeof(bp[0])); bp = (void *) tmp; } else { return ((-25)); } };

             if(0 <= j) memcpy(bp,upd->strings[3].data,j+1);
             memcpy(bp+j+1, cv,ncv);
             memcpy(bp+j+1+ncv,upd->strings[3].data+i,
                               upd->strings[3].size-i);
             i = j+1+ncv;
             { if(upd->strings[3].data && upd->strings[3].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->strings[3].data), "uniprint/params")); };
             upd->strings[3].data = bp;
             upd->strings[3].size = nbp;

           }

           if( (0x40 < c) && (c < 0x5b)) state = 0;
           else if(!((0x2f < c) && (c < 0x3a))) j = i;

         break;

         case 5:
           if( c == 0x2d) state = 6;
           else state = 0;
         break;

         case 6:
           if( c == 0x31) state = 7;
           else state = 0;
         break;

         case 7:
           if( c == 0x32) state = 8;
           else state = 0;
         break;

         case 8:
           if( c == 0x33) state = 9;
           else state = 0;
         break;

         case 9:
           if( c == 0x34) state = 10;
           else state = 0;
         break;

         case 10:
           if( c == 0x35) state = 11;
           else state = 0;
         break;

         case 11:
           if( c == 0x58) state = 12;
           else state = 0;
         break;

         case 12:
           if( c == 0x40) state = 13;
           else state = 0;
         break;

         case 13:
           if( c == 0x50) state = 14;
           else state = 0;
         break;

         case 14:
           if( c == 0x4a) state = 15;
           else state = 0;
         break;

         case 15:
           if( c == 0x4c) state = 16;
           else state = 0;
         break;

         case 16:
           if((c == 0x20) || (c == 0x09)) state = 19;
           else if( c == 0x0d ) state = 17;
           else if( c == 0x0a ) state = 12;
           else state = 0;
         break;

         case 17:
           if( c == 0x0a) state = 12;
           else state = 0;
         break;

         case 18:
           if( c == 0x0a) state = 12;
         break;

         case 19:
           if( (c == 0x53) || (c == 0x73)) state = 20;
           else if( c == 0x0a ) state = 12;
           else if( c == 0x0d ) state = 17;
         break;

         case 20:
           if( (c == 0x45) || (c == 0x65)) state = 21;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 21:
           if( (c == 0x54) || (c == 0x74)) state = 22;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 22:
           if( (c == 0x20) || (c == 0x09)) state = 23;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 23:
           if( (c == 0x50) || (c == 0x70)) state = 24;
           else if((c == 0x52) || (c == 0x72)) state = 41;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 24:
           if( (c == 0x41) || (c == 0x61)) state = 25;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 25:
           if( (c == 0x50) || (c == 0x70)) state = 26;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 26:
           if( (c == 0x45) || (c == 0x65)) state = 27;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 27:
           if( (c == 0x52) || (c == 0x72)) state = 28;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 28:
           if( (c == 0x4c) || (c == 0x6c)) state = 29;
           else if((c == 0x57) || (c == 0x77)) state = 36;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 29:
           if( (c == 0x45) || (c == 0x65)) state = 30;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 30:
           if( (c == 0x4e) || (c == 0x6e)) state = 31;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 31:
           if( (c == 0x47) || (c == 0x67)) state = 32;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 32:
           if( (c == 0x54) || (c == 0x74)) state = 33;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 33:
           if( (c == 0x48) || (c == 0x68)) state = 34;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 34:
           j = i;
           if( c == 0x3d ) state = 51;
           else if( c == 0x0a ) state = 12;
           else if((c != 0x20) && (c != 0x09)) state = 18;
         break;

         case 51:
           if( c == 0x0a) state = 12;
           else if((c == 0x20) || (c == 0x09)) j = i;
           else if(( 0x30 > c) || ( c > 0x39)) state = 18;
           else state = 35;
         break;

         case 35:
           if((0x30 > c) || (c > 0x39)) {

             if(((uint32_t) 1<<5) & upd->flags) {

               gs_sprintf(cv,"%d",(int)
                 (720.0 * udev->height / udev->HWResolution[1] + 0.5));
               ncv = strlen(cv);

               nbp = (j+1) + ncv + (upd->strings[3].size-i);
               bp = ((void*)0); if(0 < (nbp)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, nbp, sizeof(bp[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(nbp)*sizeof(bp[0])); bp = (void *) tmp; } else { return ((-25)); } };

               if(0 <= j) memcpy(bp,upd->strings[3].data,j+1);
               memcpy(bp+j+1, cv,ncv);
               memcpy(bp+j+1+ncv,upd->strings[3].data+i,
                               upd->strings[3].size-i);
               i = j+1+ncv;
               { if(upd->strings[3].data && upd->strings[3].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->strings[3].data), "uniprint/params")); };
               upd->strings[3].data = bp;
               upd->strings[3].size = nbp;
             }

             if( c == 0x0a ) state = 12;
             else state = 18;
           }
         break;

         case 36:
           if( (c == 0x49) || (c == 0x69)) state = 37;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 37:
           if( (c == 0x44) || (c == 0x64)) state = 38;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 38:
           if( (c == 0x54) || (c == 0x74)) state = 39;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 39:
           if( (c == 0x48) || (c == 0x68)) state = 52;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 52:
           j = i;
           if( c == 0x3d ) state = 53;
           else if( c == 0x0a ) state = 12;
           else if((c != 0x20) && (c != 0x09)) state = 18;
         break;

         case 53:
           if( c == 0x0a) state = 12;
           else if((c == 0x20) || (c == 0x09)) j = i;
           else if(( 0x30 > c) || ( c > 0x39)) state = 18;
           else state = 40;
         break;

         case 40:
           if((0x30 > c) || (c > 0x39)) {

             if(((uint32_t) 1<<4) & upd->flags) {

               gs_sprintf(cv,"%d",(int)
                 (720.0 * udev->width / udev->HWResolution[0] + 0.5));
               ncv = strlen(cv);

               nbp = (j+1) + ncv + (upd->strings[3].size-i);
               bp = ((void*)0); if(0 < (nbp)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, nbp, sizeof(bp[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(nbp)*sizeof(bp[0])); bp = (void *) tmp; } else { return ((-25)); } };

               if(0 <= j) memcpy(bp,upd->strings[3].data,j+1);
               memcpy(bp+j+1, cv,ncv);
               memcpy(bp+j+1+ncv,upd->strings[3].data+i,
                               upd->strings[3].size-i);
               i = j+1+ncv;
               { if(upd->strings[3].data && upd->strings[3].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->strings[3].data), "uniprint/params")); };
               upd->strings[3].data = bp;
               upd->strings[3].size = nbp;
             }

             if( c == 0x0a ) state = 12;
             else state = 18;
           }
         break;

         case 41:
           if( (c == 0x45) || (c == 0x65)) state = 42;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 42:
           if( (c == 0x53) || (c == 0x73)) state = 43;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 43:
           if( (c == 0x4f) || (c == 0x6f)) state = 44;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 44:
           if( (c == 0x4c) || (c == 0x6c)) state = 45;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 45:
           if( (c == 0x55) || (c == 0x75)) state = 46;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 46:
           if( (c == 0x54) || (c == 0x74)) state = 47;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 47:
           if( (c == 0x49) || (c == 0x69)) state = 48;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 48:
           if( (c == 0x4f) || (c == 0x6f)) state = 49;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 49:
           if( (c == 0x4e) || (c == 0x6e)) state = 54;
           else if( c == 0x0a ) state = 12;
           else state = 18;
         break;

         case 54:
           j = i;
           if( c == 0x3d ) state = 55;
           else if( c == 0x0a ) state = 12;
           else if((c != 0x20) && (c != 0x09)) state = 18;
         break;

         case 55:
           if( c == 0x0a) state = 12;
           else if((c == 0x20) || (c == 0x09)) j = i;
           else if(( 0x30 > c) || ( c > 0x39)) state = 18;
           else state = 50;
         break;

         case 50:
           if((0x30 > c) || (c > 0x39)) {

             if(((uint32_t) 1<<8) & upd->flags) {

               gs_sprintf(cv,"%d",(int)
                 ((udev->HWResolution[1] < udev->HWResolution[0] ?
                   udev->HWResolution[0] : udev->HWResolution[1])
                 +0.5));
               ncv = strlen(cv);

               nbp = (j+1) + ncv + (upd->strings[3].size-i);
               bp = ((void*)0); if(0 < (nbp)) { byte *tmp = (void *)(*(udev->memory->non_gc_memory)->procs.alloc_byte_array)(udev->memory->non_gc_memory, nbp, sizeof(bp[0]), "uniprint/params"); if(tmp) { memset(tmp,0,(nbp)*sizeof(bp[0])); bp = (void *) tmp; } else { return ((-25)); } };

               if(0 <= j) memcpy(bp,upd->strings[3].data,j+1);
               memcpy(bp+j+1, cv,ncv);
               memcpy(bp+j+1+ncv,upd->strings[3].data+i,
                               upd->strings[3].size-i);
               i = j+1+ncv;
               { if(upd->strings[3].data && upd->strings[3].size) ((udev->memory->non_gc_memory)->procs.free_object(udev->memory->non_gc_memory, upd_cast(upd->strings[3].data), "uniprint/params")); };
               upd->strings[3].data = bp;
               upd->strings[3].size = nbp;
             }

             if( c == 0x0a ) state = 12;
             else state = 18;
           }
         break;

         default:

           errprintf(udev->memory,
                     "UNIPRINT-Coding error, wrrtl, state = %d\n",state);

           state = 0;
         break;
       }
     }
   }


   if(upd->ocomp > upd->string_a[1].size) {




      error = -1;
   }







   if(0 <= error) {
      int32_t ny,noutbuf;
      char tmp[16];

      if(0 < upd->strings[9].size) {
         gs_sprintf(tmp,"%d",upd->pheight);
         ny = upd->strings[9].size + strlen(tmp);
      } else {
         ny = 1 + upd->string_a[1].data[upd->ocomp-1].size;
         ny *= upd->pheight;
      }

      noutbuf = upd->nbytes + (upd->nbytes + 127) / 128;

      if(ny > noutbuf) noutbuf = ny;
      noutbuf += 16;

      if((0 < noutbuf) && (noutbuf <= 2147483647)) {
         upd->noutbuf = noutbuf;
         upd->writer = upd_wrtrtl;
         error = 1;
      } else {
         error = -1;





      }
   }

   return error;
}





static int
upd_wrtrtl(upd_p upd, FILE *out)
{
   const updscan_p scan = upd->scnbuf[upd->yscan & upd->scnmsk];

   int x,xend,icomp,ioutbuf;
   byte *data;



   xend = -1;
   for(icomp = 0; icomp < upd->ocomp; ++icomp) {

      data = scan[icomp].bytes;

      for(x = upd->nbytes-1; 0 <= x; --x) if(data[x]) break;
      if(x > xend) xend = x;
   }

   if(0 <= xend) {

      ioutbuf = 0;
      xend += 1;



      if(upd->yscan != upd->yprinter) {
         if(1 < upd->strings[9].size) {
           gs_sprintf((char *)upd->outbuf+ioutbuf,
             (const char *) upd->strings[9].data,
             upd->yscan - upd->yprinter);
           ioutbuf += strlen((char *)upd->outbuf+ioutbuf);
         } else {
           while(upd->yscan > upd->yprinter) {
             for(icomp = 0; icomp < upd->ocomp; ++icomp) {
               gs_sprintf((char *)upd->outbuf+ioutbuf,
                 (const char *) upd->string_a[1].data[icomp].data,0);
               ioutbuf += strlen((char *)upd->outbuf+ioutbuf);
             }
             fwrite(upd->outbuf,1,ioutbuf,out);
             ioutbuf = 0;
             upd->yprinter += 1;
           }
         }
         upd->yprinter = upd->yscan;
         fwrite(upd->outbuf,1,ioutbuf,out);
         ioutbuf = 0;
      }



      for(icomp = 0; icomp < upd->ocomp; ++icomp) {
         data = scan[icomp].bytes;
         for(x = 0; x <= xend; ++x) if(data[x]) break;
         if(x <= xend) {
           ioutbuf = upd_rle(upd->outbuf,scan[icomp].bytes,xend);
           fprintf(out,
            (const char *)upd->string_a[1].data[icomp].data,ioutbuf);
            fwrite(upd->outbuf,1,ioutbuf,out);
         } else {
           fprintf(out,
             (const char *)upd->string_a[1].data[icomp].data,0);
         }
      }

      upd->yprinter += 1;

   }



   upd->yscan += 1;

   return 0;
}





static int
upd_open_wrtcanon(upd_device *udev)
{
  const upd_p upd = udev->upd;
  int error = 0;


  upd->noutbuf = upd->nbytes + (upd->nbytes + 127) / 128;
  upd->writer = upd_wrtcanon;
  error = 1;

  return error;
}
# 7084 "./devices/gdevupd.c"
static int
upd_wrtcanon(upd_p upd, FILE *out)
{
  const updscan_p scan = upd->scnbuf[upd->yscan & upd->scnmsk];

  int x, xend, icomp, ioutbuf, step, ioutbuf1;
  byte *data;


  xend = -1;
  for(icomp = 0; icomp < upd->ocomp; ++icomp) {
    data = scan[icomp].bytes;

    for(x = upd->nbytes-1; 0 <= x; --x) if(data[x]) break;

    if(x > xend) xend = x;
  }


  if(0 <= xend) {
    ioutbuf = 0;
    xend += 1;


    if(upd->yscan != upd->yprinter) {
      step = upd->yscan - upd->yprinter;

      fputc(0x1B, out);
      fputc('(', out);
      fputc('e', out);
      fputc(2, out);
      fputc(0, out);
      fputc(((step)>>8), out);
      fputc(((step)&0xFF), out);

      upd->yprinter = upd->yscan;
    }

    for(icomp = 0; icomp < upd->ocomp; ++icomp) {


      data = scan[icomp].bytes;
      for(x = 0; x <= xend; ++x) if(data[x]) break;


      if(x <= xend) {
        ioutbuf = upd_rle(upd->outbuf, scan[icomp].bytes, xend);
      } else {
        ioutbuf = 0;
      }

      ioutbuf1 = ioutbuf + 1;


      fputc(0x1B, out);
      fputc('(', out);
      fputc('A', out);
      fputc(((ioutbuf1)&0xFF), out);
      fputc(((ioutbuf1)>>8), out);
      switch(upd->ocomp) {
        case 1: fputc('K',out); break;
        case 3:
        case 4: fputc("YMCK"[icomp],out); break;






        default: fputc('K',out); break;
      }

      fwrite(upd->outbuf, 1, ioutbuf, out);

      fputc(0x0D, out);
    }


    fputc(0x1B, out);
    fputc('(', out);
    fputc('e', out);
    fputc(2, out);
    fputc(0, out);
    fputc(((1)>>8), out);
    fputc(((1)&0xFF), out);

    upd->yprinter += 1;

  }


  upd->yscan += 1;

  return 0;
}







static uint32_t upd_pxlgetnix(upd_p upd);

static uint32_t upd_pxlget1f1(upd_p upd);
static uint32_t upd_pxlget1f2(upd_p upd);
static uint32_t upd_pxlget1f3(upd_p upd);
static uint32_t upd_pxlget1f4(upd_p upd);
static uint32_t upd_pxlget1f5(upd_p upd);
static uint32_t upd_pxlget1f6(upd_p upd);
static uint32_t upd_pxlget1f7(upd_p upd);
static uint32_t upd_pxlget1f8(upd_p upd);

static uint32_t upd_pxlget1r1(upd_p upd);
static uint32_t upd_pxlget1r2(upd_p upd);
static uint32_t upd_pxlget1r3(upd_p upd);
static uint32_t upd_pxlget1r4(upd_p upd);
static uint32_t upd_pxlget1r5(upd_p upd);
static uint32_t upd_pxlget1r6(upd_p upd);
static uint32_t upd_pxlget1r7(upd_p upd);
static uint32_t upd_pxlget1r8(upd_p upd);

static uint32_t upd_pxlget2f1(upd_p upd);
static uint32_t upd_pxlget2f2(upd_p upd);
static uint32_t upd_pxlget2f3(upd_p upd);
static uint32_t upd_pxlget2f4(upd_p upd);

static uint32_t upd_pxlget2r1(upd_p upd);
static uint32_t upd_pxlget2r2(upd_p upd);
static uint32_t upd_pxlget2r3(upd_p upd);
static uint32_t upd_pxlget2r4(upd_p upd);

static uint32_t upd_pxlget4f1(upd_p upd);
static uint32_t upd_pxlget4f2(upd_p upd);

static uint32_t upd_pxlget4r1(upd_p upd);
static uint32_t upd_pxlget4r2(upd_p upd);

static uint32_t upd_pxlget8f(upd_p upd);
static uint32_t upd_pxlget8r(upd_p upd);

static uint32_t upd_pxlget16f(upd_p upd);
static uint32_t upd_pxlget16r(upd_p upd);

static uint32_t upd_pxlget24f(upd_p upd);
static uint32_t upd_pxlget24r(upd_p upd);

static uint32_t upd_pxlget32f(upd_p upd);
static uint32_t upd_pxlget32r(upd_p upd);



static uint32_t
upd_pxlfwd(upd_p upd)
{
   if(!(upd->pxlptr = upd->gsscan)) {

      upd->pxlget = upd_pxlgetnix;

   } else {
      switch(upd->int_a[0].data[1]) {
         case 1: upd->pxlget = upd_pxlget1f1; break;
         case 2: upd->pxlget = upd_pxlget2f1; break;
         case 4: upd->pxlget = upd_pxlget4f1; break;
         case 8: upd->pxlget = upd_pxlget8f; break;
         case 16: upd->pxlget = upd_pxlget16f; break;
         case 24: upd->pxlget = upd_pxlget24f; break;
         case 32: upd->pxlget = upd_pxlget32f; break;
         default:

           errprintf(upd->memory, "upd_pxlfwd: unsupported depth (%d)\n",
                     upd->int_a[0].data[1]);

           upd->pxlget = upd_pxlgetnix;
           break;
      }
   }
   return (uint32_t) 0;
}



static uint32_t
upd_pxlget1f1(upd_p upd)
{
   upd->pxlget = upd_pxlget1f2;
   return *upd->pxlptr & 0x80 ? (uint32_t) 1 : (uint32_t) 0;
}

static uint32_t
upd_pxlget1f2(upd_p upd)
{
   upd->pxlget = upd_pxlget1f3;
   return *upd->pxlptr & 0x40 ? (uint32_t) 1 : (uint32_t) 0;
}

static uint32_t
upd_pxlget1f3(upd_p upd)
{
   upd->pxlget = upd_pxlget1f4;
   return *upd->pxlptr & 0x20 ? (uint32_t) 1 : (uint32_t) 0;
}

static uint32_t
upd_pxlget1f4(upd_p upd)
{
   upd->pxlget = upd_pxlget1f5;
   return *upd->pxlptr & 0x10 ? (uint32_t) 1 : (uint32_t) 0;
}

static uint32_t
upd_pxlget1f5(upd_p upd)
{
   upd->pxlget = upd_pxlget1f6;
   return *upd->pxlptr & 0x08 ? (uint32_t) 1 : (uint32_t) 0;
}

static uint32_t
upd_pxlget1f6(upd_p upd)
{
   upd->pxlget = upd_pxlget1f7;
   return *upd->pxlptr & 0x04 ? (uint32_t) 1 : (uint32_t) 0;
}

static uint32_t
upd_pxlget1f7(upd_p upd)
{
   upd->pxlget = upd_pxlget1f8;
   return *upd->pxlptr & 0x02 ? (uint32_t) 1 : (uint32_t) 0;
}

static uint32_t
upd_pxlget1f8(upd_p upd)
{
   upd->pxlget = upd_pxlget1f1;
   return *upd->pxlptr++ & 0x01 ? (uint32_t) 1 : (uint32_t) 0;
}



static uint32_t
upd_pxlget2f1(upd_p upd)
{
   upd->pxlget = upd_pxlget2f2;
   return ((uint32_t) (*upd->pxlptr ) & (uint32_t) 0xC0) >> 6;
}

static uint32_t
upd_pxlget2f2(upd_p upd)
{
   upd->pxlget = upd_pxlget2f3;
   return ((uint32_t) (*upd->pxlptr ) & (uint32_t) 0x30) >> 4;
}

static uint32_t
upd_pxlget2f3(upd_p upd)
{
   upd->pxlget = upd_pxlget2f4;
   return ((uint32_t) (*upd->pxlptr ) & (uint32_t) 0x0C) >> 2;
}

static uint32_t
upd_pxlget2f4(upd_p upd)
{
   upd->pxlget = upd_pxlget2f1;
   return (uint32_t) (*upd->pxlptr++) & (uint32_t) 0x03;
}


static uint32_t
upd_pxlget4f1(upd_p upd)
{
   upd->pxlget = upd_pxlget4f2;
   return ((uint32_t) (*upd->pxlptr ) & (uint32_t) 0xF0) >> 4;
}

static uint32_t
upd_pxlget4f2(upd_p upd)
{
   upd->pxlget = upd_pxlget4f1;
   return (uint32_t) (*upd->pxlptr++) & (uint32_t) 0x0F;
}


static uint32_t
upd_pxlget8f(upd_p upd)
{
   return (uint32_t) (*upd->pxlptr++);
}


static uint32_t
upd_pxlget16f(upd_p upd)
{
   uint32_t ci = (uint32_t) (*upd->pxlptr++) << 8;
                  ci |= *upd->pxlptr++;
   return ci;
}


static uint32_t
upd_pxlget24f(upd_p upd)
{
   uint32_t ci = (uint32_t) (*upd->pxlptr++) << 16;
          ci |= (uint32_t) (*upd->pxlptr++) << 8;
          ci |= *upd->pxlptr++;
   return ci;
}


static uint32_t
upd_pxlget32f(upd_p upd)
{
   uint32_t ci = (uint32_t) (*upd->pxlptr++) << 24;
                  ci |= (uint32_t) (*upd->pxlptr++) << 16;
                  ci |= (uint32_t) (*upd->pxlptr++) << 8;
                  ci |= *upd->pxlptr++;
   return ci;
}



static uint32_t
upd_pxlgetnix(upd_p upd)
{
   return (uint32_t) 0;
}



static uint32_t
upd_pxlrev(upd_p upd)
{
   const uint width = upd->pwidth < upd->gswidth ? upd->pwidth : upd->gswidth;

   if(!(upd->pxlptr = upd->gsscan)) {

      upd->pxlget = upd_pxlgetnix;

   } else {
      uint32_t ofs = (uint32_t) upd->int_a[0].data[1] * (width-1);

      upd->pxlptr += ofs>>3;

      ofs &= 7;

      switch(upd->int_a[0].data[1]) {
         case 1: switch(ofs) {
               case 0: upd->pxlget = upd_pxlget1r1; break;
               case 1: upd->pxlget = upd_pxlget1r2; break;
               case 2: upd->pxlget = upd_pxlget1r3; break;
               case 3: upd->pxlget = upd_pxlget1r4; break;
               case 4: upd->pxlget = upd_pxlget1r5; break;
               case 5: upd->pxlget = upd_pxlget1r6; break;
               case 6: upd->pxlget = upd_pxlget1r7; break;
               case 7: upd->pxlget = upd_pxlget1r8; break;
            } break;
         case 2: switch(ofs) {
               case 0: upd->pxlget = upd_pxlget2r1; break;
               case 2: upd->pxlget = upd_pxlget2r2; break;
               case 4: upd->pxlget = upd_pxlget2r3; break;
               case 6: upd->pxlget = upd_pxlget2r4; break;
            } break;
         case 4: switch(ofs) {
               case 0: upd->pxlget = upd_pxlget4r1; break;
               case 4: upd->pxlget = upd_pxlget4r2; break;
            } break;
         case 8: upd->pxlget = upd_pxlget8r; break;
         case 16:
            upd->pxlget = upd_pxlget16r;
            upd->pxlptr += 1;
            break;
         case 24:
            upd->pxlget = upd_pxlget24r;
            upd->pxlptr += 2;
            break;
         case 32:
            upd->pxlget = upd_pxlget32r;
            upd->pxlptr += 3;
            break;
         default:

           errprintf(upd->memory, "upd_pxlrev: unsupported depth (%d)\n",
                     upd->int_a[0].data[1]);

           upd->pxlget = upd_pxlgetnix;
           break;
      }
   }
   return (uint32_t) 0;
}



static uint32_t
upd_pxlget1r1(upd_p upd)
{
   upd->pxlget = upd_pxlget1r8;
   return *upd->pxlptr-- & 0x80 ? (uint32_t) 1 : (uint32_t) 0;
}

static uint32_t
upd_pxlget1r2(upd_p upd)
{
   upd->pxlget = upd_pxlget1r1;
   return *upd->pxlptr & 0x40 ? (uint32_t) 1 : (uint32_t) 0;
}

static uint32_t
upd_pxlget1r3(upd_p upd)
{
   upd->pxlget = upd_pxlget1r2;
   return *upd->pxlptr & 0x20 ? (uint32_t) 1 : (uint32_t) 0;
}

static uint32_t
upd_pxlget1r4(upd_p upd)
{
   upd->pxlget = upd_pxlget1r3;
   return *upd->pxlptr & 0x10 ? (uint32_t) 1 : (uint32_t) 0;
}

static uint32_t
upd_pxlget1r5(upd_p upd)
{
   upd->pxlget = upd_pxlget1r4;
   return *upd->pxlptr & 0x08 ? (uint32_t) 1 : (uint32_t) 0;
}

static uint32_t
upd_pxlget1r6(upd_p upd)
{
   upd->pxlget = upd_pxlget1r5;
   return *upd->pxlptr & 0x04 ? (uint32_t) 1 : (uint32_t) 0;
}

static uint32_t
upd_pxlget1r7(upd_p upd)
{
   upd->pxlget = upd_pxlget1r6;
   return *upd->pxlptr & 0x02 ? (uint32_t) 1 : (uint32_t) 0;
}

static uint32_t
upd_pxlget1r8(upd_p upd)
{
   upd->pxlget = upd_pxlget1r7;
   return *upd->pxlptr & 0x01 ? (uint32_t) 1 : (uint32_t) 0;
}



static uint32_t
upd_pxlget2r1(upd_p upd)
{
   upd->pxlget = upd_pxlget2r4;
   return ((uint32_t) (*upd->pxlptr--) & (uint32_t) 0xC0) >> 6;
}

static uint32_t
upd_pxlget2r2(upd_p upd)
{
   upd->pxlget = upd_pxlget2r1;
   return ((uint32_t) (*upd->pxlptr ) & (uint32_t) 0x30) >> 4;
}

static uint32_t
upd_pxlget2r3(upd_p upd)
{
   upd->pxlget = upd_pxlget2r2;
   return ((uint32_t) (*upd->pxlptr ) & (uint32_t) 0x0C) >> 2;
}

static uint32_t
upd_pxlget2r4(upd_p upd)
{
   upd->pxlget = upd_pxlget2r3;
   return (uint32_t) (*upd->pxlptr ) & (uint32_t) 0x03;
}



static uint32_t
upd_pxlget4r1(upd_p upd)
{
   upd->pxlget = upd_pxlget4r2;
   return ((uint32_t) (*upd->pxlptr--) & (uint32_t) 0xF0) >> 4;
}

static uint32_t
upd_pxlget4r2(upd_p upd)
{
   upd->pxlget = upd_pxlget4r1;
   return (uint32_t) (*upd->pxlptr ) & (uint32_t) 0x0F;
}


static uint32_t
upd_pxlget8r(upd_p upd)
{
   return (uint32_t) (*upd->pxlptr--);
}


static uint32_t
upd_pxlget16r(upd_p upd)
{
   uint32_t ci = *upd->pxlptr--;
                  ci |= (uint32_t) (*upd->pxlptr--) << 8;
   return ci;
}


static uint32_t
upd_pxlget24r(upd_p upd)
{
   uint32_t ci = *upd->pxlptr--;
          ci |= (uint32_t) (*upd->pxlptr--) << 8;
          ci |= (uint32_t) (*upd->pxlptr--) << 16;
   return ci;
}


static uint32_t
upd_pxlget32r(upd_p upd)
{
   uint32_t ci = *upd->pxlptr--;
                  ci |= (uint32_t) (*upd->pxlptr--) << 8;
                  ci |= (uint32_t) (*upd->pxlptr--) << 16;
                  ci |= (uint32_t) (*upd->pxlptr--) << 24;
   return ci;
}
