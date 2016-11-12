# 1 "./psi/dscparse.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./psi/dscparse.c" 2
# 41 "./psi/dscparse.c"
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
# 42 "./psi/dscparse.c" 2
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
# 43 "./psi/dscparse.c" 2
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
# 1301 "/usr/include/bits/string2.h" 3 4
extern char *__strdup (const char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__));
# 1320 "/usr/include/bits/string2.h" 3 4
extern char *__strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__));
# 634 "/usr/include/string.h" 2 3 4
# 44 "./psi/dscparse.c" 2
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
# 45 "./psi/dscparse.c" 2



# 1 "./psi/dscparse.h" 1
# 23 "./psi/dscparse.h"
typedef int GSBOOL;
typedef unsigned long GSDWORD;
typedef unsigned int GSWORD;
# 76 "./psi/dscparse.h"
typedef enum CDSC_RETURN_CODE_e {
  CDSC_ERROR = -1,

  CDSC_OK = 0,
  CDSC_NOTDSC = 1,


  CDSC_UNKNOWNDSC = 100,


  CDSC_PSADOBE = 200,
  CDSC_BEGINCOMMENTS = 201,
  CDSC_ENDCOMMENTS = 202,
  CDSC_PAGES = 203,
  CDSC_CREATOR = 204,
  CDSC_CREATIONDATE = 205,
  CDSC_TITLE = 206,
  CDSC_FOR = 207,
  CDSC_LANGUAGELEVEL = 208,
  CDSC_BOUNDINGBOX = 209,
  CDSC_ORIENTATION = 210,
  CDSC_PAGEORDER = 211,
  CDSC_DOCUMENTMEDIA = 212,
  CDSC_DOCUMENTPAPERSIZES = 213,
  CDSC_DOCUMENTPAPERFORMS = 214,
  CDSC_DOCUMENTPAPERCOLORS = 215,
  CDSC_DOCUMENTPAPERWEIGHTS = 216,
  CDSC_DOCUMENTDATA = 217,
  CDSC_REQUIREMENTS = 218,
  CDSC_DOCUMENTNEEDEDFONTS = 219,
  CDSC_DOCUMENTSUPPLIEDFONTS = 220,
  CDSC_HIRESBOUNDINGBOX = 221,
  CDSC_CROPBOX = 222,
  CDSC_PLATEFILE = 223,
  CDSC_DOCUMENTPROCESSCOLORS = 224,
  CDSC_DOCUMENTCUSTOMCOLORS = 225,
  CDSC_CMYKCUSTOMCOLOR = 226,
  CDSC_RGBCUSTOMCOLOR = 227,


  CDSC_BEGINPREVIEW = 301,
  CDSC_ENDPREVIEW = 302,


  CDSC_BEGINDEFAULTS = 401,
  CDSC_ENDDEFAULTS = 402,



  CDSC_BEGINPROLOG = 501,
  CDSC_ENDPROLOG = 502,
  CDSC_BEGINFONT = 503,
  CDSC_ENDFONT = 504,
  CDSC_BEGINFEATURE = 505,
  CDSC_ENDFEATURE = 506,
  CDSC_BEGINRESOURCE = 507,
  CDSC_ENDRESOURCE = 508,
  CDSC_BEGINPROCSET = 509,
  CDSC_ENDPROCSET = 510,


  CDSC_BEGINSETUP = 601,
  CDSC_ENDSETUP = 602,
  CDSC_FEATURE = 603,
  CDSC_PAPERCOLOR = 604,
  CDSC_PAPERFORM = 605,
  CDSC_PAPERWEIGHT = 606,
  CDSC_PAPERSIZE = 607,



  CDSC_PAGE = 700,
  CDSC_PAGETRAILER = 701,
  CDSC_BEGINPAGESETUP = 702,
  CDSC_ENDPAGESETUP = 703,
  CDSC_PAGEMEDIA = 704,

  CDSC_PAGEORIENTATION = 705,
  CDSC_PAGEBOUNDINGBOX = 706,


  CDSC_INCLUDEFONT = 707,
  CDSC_VIEWINGORIENTATION = 708,
  CDSC_PAGECROPBOX = 709,


  CDSC_TRAILER = 800,





  CDSC_EOF = 900
} CDSC_RETURN_CODE;


typedef enum CDSC_PREVIEW_TYPE_e {
    CDSC_NOPREVIEW = 0,
    CDSC_EPSI = 1,
    CDSC_TIFF = 2,
    CDSC_WMF = 3,
    CDSC_PICT = 4
} CDSC_PREVIEW_TYPE;


typedef enum CDSC_PAGE_ORDER_e {
    CDSC_ORDER_UNKNOWN = 0,
    CDSC_ASCEND = 1,
    CDSC_DESCEND = 2,
    CDSC_SPECIAL = 3
} CDSC_PAGE_ORDER;


typedef enum CDSC_ORIENTATION_ENUM_e {
    CDSC_ORIENT_UNKNOWN = 0,
    CDSC_PORTRAIT = 1,
    CDSC_LANDSCAPE = 2,
    CDSC_UPSIDEDOWN = 3,
    CDSC_SEASCAPE = 4
} CDSC_ORIENTATION_ENUM;


typedef enum CDSC_DOCUMENT_DATA_e {
    CDSC_DATA_UNKNOWN = 0,
    CDSC_CLEAN7BIT = 1,
    CDSC_CLEAN8BIT = 2,
    CDSC_BINARY = 3
} CDSC_DOCUMENT_DATA ;

typedef struct CDSCBBOX_S {
    int llx;
    int lly;
    int urx;
    int ury;
} CDSCBBOX;

typedef struct CDSCFBBOX_S {
    float fllx;
    float flly;
    float furx;
    float fury;
} CDSCFBBOX;

typedef struct CDSCMEDIA_S {
    const char *name;
    float width;
    float height;
    float weight;
    const char *colour;
    const char *type;
    CDSCBBOX *mediabox;
} CDSCMEDIA;


extern const CDSCMEDIA dsc_known_media[11];

typedef struct CDSCCTM_S {
    float xx;
    float xy;
    float yx;
    float yy;


} CDSCCTM;

typedef struct CDSCPAGE_S {
    int ordinal;
    const char *label;
    unsigned long begin;
    unsigned long end;
    unsigned int orientation;
    const CDSCMEDIA *media;
    CDSCBBOX *bbox;
    CDSCCTM *viewing_orientation;

    CDSCFBBOX *crop_box;
} CDSCPAGE;


typedef struct CDSCDOSEPS_S {
    GSDWORD ps_begin;
    GSDWORD ps_length;
    GSDWORD wmf_begin;
    GSDWORD wmf_length;
    GSDWORD tiff_begin;
    GSDWORD tiff_length;
    GSWORD checksum;
} CDSCDOSEPS;


typedef struct CDSCMACBIN_S {
    GSDWORD data_begin;
    GSDWORD data_length;
    GSDWORD resource_begin;
    GSDWORD resource_length;
} CDSCMACBIN;





typedef struct CDSCSTRING_S CDSCSTRING;
struct CDSCSTRING_S {
    unsigned int index;
    unsigned int length;
    char *data;
    CDSCSTRING *next;
};


typedef struct CDCS2_S CDCS2;
struct CDCS2_S {
    char *colourname;
    char *filetype;

    char *location;
    char *filename;

    unsigned long begin;
    unsigned long end;

    CDCS2 *next;
};

typedef enum CDSC_COLOUR_TYPE_e {
    CDSC_COLOUR_UNKNOWN=0,
    CDSC_COLOUR_PROCESS=1,
    CDSC_COLOUR_CUSTOM=2
} CDSC_COLOUR_TYPE;

typedef enum CDSC_CUSTOM_COLOUR_e {
    CDSC_CUSTOM_COLOUR_UNKNOWN=0,
    CDSC_CUSTOM_COLOUR_RGB=1,
    CDSC_CUSTOM_COLOUR_CMYK=2
} CDSC_CUSTOM_COLOUR;

typedef struct CDSCCOLOUR_S CDSCCOLOUR;
struct CDSCCOLOUR_S {
    char *name;
    CDSC_COLOUR_TYPE type;
    CDSC_CUSTOM_COLOUR custom;

    float red;
    float green;
    float blue;

    float cyan;
    float magenta;
    float yellow;
    float black;

    CDSCCOLOUR *next;
};



typedef enum CDSC_MESSAGE_ERROR_e {
  CDSC_MESSAGE_BBOX = 0,
  CDSC_MESSAGE_EARLY_TRAILER = 1,
  CDSC_MESSAGE_EARLY_EOF = 2,
  CDSC_MESSAGE_PAGE_IN_TRAILER = 3,
  CDSC_MESSAGE_PAGE_ORDINAL = 4,
  CDSC_MESSAGE_PAGES_WRONG = 5,
  CDSC_MESSAGE_EPS_NO_BBOX = 6,
  CDSC_MESSAGE_EPS_PAGES = 7,
  CDSC_MESSAGE_NO_MEDIA = 8,
  CDSC_MESSAGE_ATEND = 9,
  CDSC_MESSAGE_DUP_COMMENT = 10,
  CDSC_MESSAGE_DUP_TRAILER = 11,
  CDSC_MESSAGE_BEGIN_END = 12,
  CDSC_MESSAGE_BAD_SECTION = 13,
  CDSC_MESSAGE_LONG_LINE = 14,
  CDSC_MESSAGE_INCORRECT_USAGE = 15
} CDSC_MESSAGE_ERROR;


typedef enum CDSC_MESSAGE_SEVERITY_e {
  CDSC_ERROR_INFORM = 0,
  CDSC_ERROR_WARN = 1,
  CDSC_ERROR_ERROR = 2
} CDSC_MESSAGE_SEVERITY;


typedef enum CDSC_RESPONSE_e {
  CDSC_RESPONSE_OK = 0,
  CDSC_RESPONSE_CANCEL = 1,
  CDSC_RESPONSE_IGNORE_ALL = 2
} CDSC_RESPONSE;

extern const char * const dsc_message[];



typedef struct CDSC_s CDSC;


struct CDSC_s {
char dummy[1024];

    GSBOOL dsc;
    GSBOOL ctrld;
    GSBOOL pjl;
    GSBOOL epsf;
    GSBOOL pdf;
    unsigned int preview;
    char *dsc_version;
    unsigned int language_level;
    unsigned int document_data;


    unsigned long begincomments;
    unsigned long endcomments;
    unsigned long beginpreview;
    unsigned long endpreview;
    unsigned long begindefaults;
    unsigned long enddefaults;
    unsigned long beginprolog;
    unsigned long endprolog;
    unsigned long beginsetup;
    unsigned long endsetup;
    unsigned long begintrailer;
    unsigned long endtrailer;
    CDSCPAGE *page;
    unsigned int page_count;
    unsigned int page_pages;
    unsigned int page_order;
    unsigned int page_orientation;

    CDSCCTM *viewing_orientation;
    unsigned int media_count;
    CDSCMEDIA **media;
    const CDSCMEDIA *page_media;
    CDSCBBOX *bbox;
    CDSCBBOX *page_bbox;
    CDSCDOSEPS *doseps;
    char *dsc_title;
    char *dsc_creator;
    char *dsc_date;
    char *dsc_for;

    unsigned int max_error;
    const int *severity;


    void *caller_data;

    int id;
    int scan_section;


    unsigned long doseps_end;
    unsigned int page_chunk_length;
    unsigned long file_length;




    int skip_document;
    int skip_bytes;

    int skip_lines;
    GSBOOL skip_pjl;
    int begin_font_count;
    int begin_feature_count;
    int begin_resource_count;
    int begin_procset_count;


    char data[8192];
    unsigned int data_length;
    unsigned int data_index;
    unsigned long data_offset;

    GSBOOL eof;


    char *line;

    unsigned int line_length;
    GSBOOL eol;
    GSBOOL last_cr;

    unsigned int line_count;
    GSBOOL long_line;
    char last_line[256];


    CDSCSTRING *string_head;
    CDSCSTRING *string;


    void *(*memalloc)(size_t size, void *closure_data);
    void (*memfree)(void *ptr, void *closure_data);
    void *mem_closure_data;


    void (*debug_print_fn)(void *caller_data, const char *str);


    int (*dsc_error_fn)(void *caller_data, CDSC *dsc,
        unsigned int explanation, const char *line, unsigned int line_len);



    CDSCFBBOX *hires_bbox;
    CDSCFBBOX *crop_box;
    CDCS2 *dcs2;
    CDSCCOLOUR *colours;



    int ref_count;



    CDSCMACBIN *macbin;
};




CDSC *dsc_init(void *caller_data);

CDSC *dsc_init_with_alloc(
    void *caller_data,
    void *(*memalloc)(size_t size, void *closure_data),
    void (*memfree)(void *ptr, void *closure_data),
    void *closure_data);


void dsc_free(CDSC *dsc);





CDSC *dsc_new(void *caller_data);
int dsc_ref(CDSC *dsc);
int dsc_unref(CDSC *dsc);




void dsc_set_length(CDSC *dsc, unsigned long len);


int dsc_scan_data(CDSC *dsc, const char *data, int len);


int dsc_fixup(CDSC *dsc);


void dsc_set_error_function(CDSC *dsc,
    int (*dsc_error_fn)(void *caller_data, CDSC *dsc,
        unsigned int explanation, const char *line, unsigned int line_len));


void dsc_set_debug_function(CDSC *dsc,
        void (*debug_fn)(void *caller_data, const char *str));


void dsc_debug_print(CDSC *dsc, const char *str);


const char * dsc_find_platefile(CDSC *dsc, int page);


int dsc_stricmp(const char *s, const char *t);




int dsc_add_page(CDSC *dsc, int ordinal, char *label);
int dsc_add_media(CDSC *dsc, CDSCMEDIA *media);
int dsc_set_page_bbox(CDSC *dsc, unsigned int page_number,
    int llx, int lly, int urx, int ury);


void dsc_display(CDSC *dsc, void (*dfn)(void *ptr, const char *str));
# 49 "./psi/dscparse.c" 2
# 80 "./psi/dscparse.c"
static void * dsc_memalloc(CDSC *dsc, size_t size);
static void dsc_memfree(CDSC*dsc, void *ptr);
static CDSC * dsc_init2(CDSC *dsc);
static void dsc_reset(CDSC *dsc);
static void dsc_section_join(unsigned long begin, unsigned long *pend, unsigned long **pplast);
static int dsc_read_line(CDSC *dsc);
static int dsc_read_doseps(CDSC *dsc);
static int dsc_read_macbin(CDSC *dsc);
static int dsc_read_applesingle(CDSC *dsc);
static char * dsc_alloc_string(CDSC *dsc, const char *str, int len);
static char * dsc_add_line(CDSC *dsc, const char *line, unsigned int len);
static char * dsc_copy_string(char *str, unsigned int slen,
    char *line, unsigned int len, unsigned int *offset);
static GSDWORD dsc_get_dword(const unsigned char *buf);
static GSWORD dsc_get_word(const unsigned char *buf);
static GSDWORD dsc_get_bigendian_dword(const unsigned char *buf);
static GSWORD dsc_get_bigendian_word(const unsigned char *buf);
static int dsc_get_int(const char *line, unsigned int len, unsigned int *offset);
static float dsc_get_real(const char *line, unsigned int len,
    unsigned int *offset);
static void dsc_unknown(CDSC *dsc);
static GSBOOL dsc_is_section(char *line);
static int dsc_parse_pages(CDSC *dsc);
static int dsc_parse_bounding_box(CDSC *dsc, CDSCBBOX** pbbox, int offset);
static int dsc_parse_float_bounding_box(CDSC *dsc, CDSCFBBOX** pfbbox, int offset);
static int dsc_parse_orientation(CDSC *dsc, unsigned int *porientation,
    int offset);
static int dsc_parse_order(CDSC *dsc);
static int dsc_parse_media(CDSC *dsc, const CDSCMEDIA **page_media);
static int dsc_parse_document_media(CDSC *dsc);
static int dsc_parse_viewing_orientation(CDSC *dsc, CDSCCTM **pctm);
static int dsc_parse_page(CDSC *dsc);
static void dsc_save_line(CDSC *dsc);
static int dsc_scan_type(CDSC *dsc);
static int dsc_scan_comments(CDSC *dsc);
static int dsc_scan_preview(CDSC *dsc);
static int dsc_scan_defaults(CDSC *dsc);
static int dsc_scan_prolog(CDSC *dsc);
static int dsc_scan_setup(CDSC *dsc);
static int dsc_scan_page(CDSC *dsc);
static int dsc_scan_trailer(CDSC *dsc);
static int dsc_error(CDSC *dsc, unsigned int explanation,
    char *line, unsigned int line_len);
static int dsc_dcs2_fixup(CDSC *dsc);
static int dsc_parse_platefile(CDSC *dsc);
static int dsc_parse_dcs1plate(CDSC *dsc);
static CDSCCOLOUR * dsc_find_colour(CDSC *dsc, const char *colourname);
static int dsc_parse_process_colours(CDSC *dsc);
static int dsc_parse_custom_colours(CDSC *dsc);
static int dsc_parse_cmyk_custom_colour(CDSC *dsc);
static int dsc_parse_rgb_custom_colour(CDSC *dsc);


static const int dsc_severity[] = {
    CDSC_ERROR_WARN,
    CDSC_ERROR_WARN,
    CDSC_ERROR_WARN,
    CDSC_ERROR_ERROR,
    CDSC_ERROR_ERROR,
    CDSC_ERROR_ERROR,
    CDSC_ERROR_ERROR,
    CDSC_ERROR_ERROR,
    CDSC_ERROR_WARN,
    CDSC_ERROR_WARN,
    CDSC_ERROR_INFORM,
    CDSC_ERROR_INFORM,
    CDSC_ERROR_WARN,
    CDSC_ERROR_INFORM,
    CDSC_ERROR_INFORM,
    CDSC_ERROR_WARN,
    0
};



const CDSCMEDIA dsc_known_media[11] = {

    {"11x17", 792, 1224, 0, ((void*)0), ((void*)0)},
    {"A3", 842, 1190, 0, ((void*)0), ((void*)0)},
    {"A4", 595, 842, 0, ((void*)0), ((void*)0)},
    {"A5", 421, 595, 0, ((void*)0), ((void*)0)},
    {"B4", 709, 1002, 0, ((void*)0), ((void*)0)},
    {"B5", 501, 709, 0, ((void*)0), ((void*)0)},
    {"Ledger", 1224, 792, 0, ((void*)0), ((void*)0)},
    {"Legal", 612, 1008, 0, ((void*)0), ((void*)0)},
    {"Letter", 612, 792, 0, ((void*)0), ((void*)0)},
    {"Note", 612, 792, 0, ((void*)0), ((void*)0)},
    {((void*)0), 0, 0, 0, ((void*)0), ((void*)0)}
};


enum CDSC_SCAN_SECTION {
    scan_none = 0,
    scan_comments = 1,
    scan_pre_preview = 2,
    scan_preview = 3,
    scan_pre_defaults = 4,
    scan_defaults = 5,
    scan_pre_prolog = 6,
    scan_prolog = 7,
    scan_pre_setup = 8,
    scan_setup = 9,
    scan_pre_pages = 10,
    scan_pages = 11,
    scan_pre_trailer = 12,
    scan_trailer = 13,
    scan_eof = 14
};

static const char * const dsc_scan_section_name[15] = {
 "Type", "Comments",
 "pre-Preview", "Preview",
 "pre-Defaults", "Defaults",
 "pre-Prolog", "Prolog",
 "pre-Setup", "Setup",
 "pre-Page", "Page",
 "pre-Trailer", "Trailer",
 "EOF"
};






CDSC *
dsc_init(void *caller_data)
{
    CDSC *dsc = (CDSC *)malloc(sizeof(CDSC));
    if (dsc == ((void*)0))
        return ((void*)0);
    memset(dsc, 0, sizeof(CDSC));
    dsc->caller_data = caller_data;
    dsc->ref_count = 0;
    dsc_ref(dsc);

    return dsc_init2(dsc);
}


CDSC *
dsc_init_with_alloc(
    void *caller_data,
    void *(*memalloc)(size_t size, void *closure_data),
    void (*memfree)(void *ptr, void *closure_data),
    void *closure_data)
{
    CDSC *dsc = (CDSC *)memalloc(sizeof(CDSC), closure_data);
    if (dsc == ((void*)0))
        return ((void*)0);
    memset(dsc, 0, sizeof(CDSC));
    dsc->caller_data = caller_data;

    dsc->memalloc = memalloc;
    dsc->memfree = memfree;
    dsc->mem_closure_data = closure_data;
    dsc->ref_count = 0;
    dsc_ref(dsc);

    return dsc_init2(dsc);
}


void
dsc_free(CDSC *dsc)
{
    if (dsc == ((void*)0))
        return;
    dsc_reset(dsc);
    dsc_memfree(dsc, dsc);
}

CDSC *
dsc_new(void *caller_data)
{
    return dsc_init(caller_data);
}

int
dsc_ref(CDSC *dsc)
{
    return ++(dsc->ref_count);
}

int
dsc_unref(CDSC *dsc)
{
    if (dsc->ref_count <= 0)
        return -1;
    dsc->ref_count--;
    if (dsc->ref_count == 0) {
        dsc_free(dsc);
        return 0;
    }
    return dsc->ref_count;
}




void
dsc_set_length(CDSC *dsc, unsigned long len)
{
    dsc->file_length = len;
}
# 293 "./psi/dscparse.c"
int
dsc_scan_data(CDSC *dsc, const char *data, int length)
{
    int bytes_read;
    int code = 0;

    if (dsc == ((void*)0))
        return CDSC_ERROR;

    if (dsc->id == CDSC_NOTDSC)
        return CDSC_NOTDSC;
    dsc->id = CDSC_OK;
    if (dsc->eof)
        return CDSC_OK;

    if (length == 0) {

        dsc->eof = ((GSBOOL)(!((GSBOOL)0)));
    }

    do {
        if (dsc->id == CDSC_NOTDSC)
            break;

        if (length != 0) {

            if (dsc->data_length > 8192/2) {
                memmove(dsc->data, dsc->data + dsc->data_index,
                    dsc->data_length - dsc->data_index);
                dsc->data_offset += dsc->data_index;
                dsc->data_length -= dsc->data_index;
                dsc->data_index = 0;
            }

            bytes_read = (((length) < ((int)(8192 - dsc->data_length))) ? (length) : ((int)(8192 - dsc->data_length)));
            memcpy(dsc->data + dsc->data_length, data, bytes_read);
            dsc->data_length += bytes_read;
            data += bytes_read;
            length -= bytes_read;
        }
        if (dsc->scan_section == scan_none) {
            code = dsc_scan_type(dsc);
            if (code == 11) {

                code = CDSC_OK;
                break;
            }
            dsc->id = code;
        }

        if (code == CDSC_NOTDSC) {
            dsc->id = CDSC_NOTDSC;
            break;
        }

        while ((code = dsc_read_line(dsc)) > 0) {
            if (dsc->id == CDSC_NOTDSC)
                break;
            if (dsc->file_length &&
                (dsc->data_offset + dsc->data_index > dsc->file_length)) {

                return CDSC_OK;
            }
            if (dsc->doseps_end &&
                (dsc->data_offset + dsc->data_index > dsc->doseps_end)) {



                return CDSC_OK;
            }
            if (dsc->eof)
                return CDSC_OK;
            if (dsc->skip_document)
                continue;
            if (dsc->skip_lines)
                continue;
            if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginData:"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%BeginData:"))-1))) || (__builtin_constant_p ((("%%BeginData:"))) && strlen ((("%%BeginData:"))) < ((size_t) (sizeof(("%%BeginData:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%BeginData:"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%BeginData:"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginData:"))) + 1) - (size_t)(const void *)((("%%BeginData:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%BeginData:"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginData:"))) && ((size_t)(const void *)(((("%%BeginData:"))) + 1) - (size_t)(const void *)((("%%BeginData:"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%BeginData:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginData:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginData:"))) && ((size_t)(const void *)(((("%%BeginData:"))) + 1) - (size_t)(const void *)((("%%BeginData:"))) == 1) && (__s2_len = strlen ((("%%BeginData:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%BeginData:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginData:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginData:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginData:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginData:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%BeginData:")))))); }) : strncmp ((const char *)((dsc->line)), (("%%BeginData:")), sizeof(("%%BeginData:"))-1)))==0)))
                continue;
            if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginBinary:"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%BeginBinary:"))-1))) || (__builtin_constant_p ((("%%BeginBinary:"))) && strlen ((("%%BeginBinary:"))) < ((size_t) (sizeof(("%%BeginBinary:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%BeginBinary:"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%BeginBinary:"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginBinary:"))) + 1) - (size_t)(const void *)((("%%BeginBinary:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%BeginBinary:"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginBinary:"))) && ((size_t)(const void *)(((("%%BeginBinary:"))) + 1) - (size_t)(const void *)((("%%BeginBinary:"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%BeginBinary:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginBinary:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginBinary:"))) && ((size_t)(const void *)(((("%%BeginBinary:"))) + 1) - (size_t)(const void *)((("%%BeginBinary:"))) == 1) && (__s2_len = strlen ((("%%BeginBinary:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%BeginBinary:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginBinary:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginBinary:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginBinary:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginBinary:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%BeginBinary:")))))); }) : strncmp ((const char *)((dsc->line)), (("%%BeginBinary:")), sizeof(("%%BeginBinary:"))-1)))==0)))
                continue;
            if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndDocument"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%EndDocument"))-1))) || (__builtin_constant_p ((("%%EndDocument"))) && strlen ((("%%EndDocument"))) < ((size_t) (sizeof(("%%EndDocument"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%EndDocument"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%EndDocument"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndDocument"))) + 1) - (size_t)(const void *)((("%%EndDocument"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%EndDocument"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndDocument"))) && ((size_t)(const void *)(((("%%EndDocument"))) + 1) - (size_t)(const void *)((("%%EndDocument"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%EndDocument"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndDocument"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndDocument"))) && ((size_t)(const void *)(((("%%EndDocument"))) + 1) - (size_t)(const void *)((("%%EndDocument"))) == 1) && (__s2_len = strlen ((("%%EndDocument"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%EndDocument"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndDocument"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndDocument"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndDocument"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndDocument"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%EndDocument")))))); }) : strncmp ((const char *)((dsc->line)), (("%%EndDocument")), sizeof(("%%EndDocument"))-1)))==0)))
                continue;
            if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndData"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%EndData"))-1))) || (__builtin_constant_p ((("%%EndData"))) && strlen ((("%%EndData"))) < ((size_t) (sizeof(("%%EndData"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%EndData"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%EndData"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndData"))) + 1) - (size_t)(const void *)((("%%EndData"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%EndData"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndData"))) && ((size_t)(const void *)(((("%%EndData"))) + 1) - (size_t)(const void *)((("%%EndData"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%EndData"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndData"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndData"))) && ((size_t)(const void *)(((("%%EndData"))) + 1) - (size_t)(const void *)((("%%EndData"))) == 1) && (__s2_len = strlen ((("%%EndData"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%EndData"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndData"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndData"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndData"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndData"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%EndData")))))); }) : strncmp ((const char *)((dsc->line)), (("%%EndData")), sizeof(("%%EndData"))-1)))==0)))
                continue;
            if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndBinary"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%EndBinary"))-1))) || (__builtin_constant_p ((("%%EndBinary"))) && strlen ((("%%EndBinary"))) < ((size_t) (sizeof(("%%EndBinary"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%EndBinary"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%EndBinary"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndBinary"))) + 1) - (size_t)(const void *)((("%%EndBinary"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%EndBinary"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndBinary"))) && ((size_t)(const void *)(((("%%EndBinary"))) + 1) - (size_t)(const void *)((("%%EndBinary"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%EndBinary"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndBinary"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndBinary"))) && ((size_t)(const void *)(((("%%EndBinary"))) + 1) - (size_t)(const void *)((("%%EndBinary"))) == 1) && (__s2_len = strlen ((("%%EndBinary"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%EndBinary"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndBinary"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndBinary"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndBinary"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndBinary"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%EndBinary")))))); }) : strncmp ((const char *)((dsc->line)), (("%%EndBinary")), sizeof(("%%EndBinary"))-1)))==0)))
                continue;

            do {
                switch (dsc->scan_section) {
                    case scan_comments:
                        code = dsc_scan_comments(dsc);
                        break;
                    case scan_pre_preview:
                    case scan_preview:
                        code = dsc_scan_preview(dsc);
                        break;
                    case scan_pre_defaults:
                    case scan_defaults:
                        code = dsc_scan_defaults(dsc);
                        break;
                    case scan_pre_prolog:
                    case scan_prolog:
                        code = dsc_scan_prolog(dsc);
                        break;
                    case scan_pre_setup:
                    case scan_setup:
                        code = dsc_scan_setup(dsc);
                        break;
                    case scan_pre_pages:
                    case scan_pages:
                        code = dsc_scan_page(dsc);
                        break;
                    case scan_pre_trailer:
                    case scan_trailer:
                        code = dsc_scan_trailer(dsc);
                        break;
                    case scan_eof:
                        code = CDSC_OK;
                        break;
                    default:

                        code = CDSC_ERROR;
                }

            } while (code == 10);


            if (code == 11) {
                code = CDSC_OK;
                break;
            }
            if (code == CDSC_NOTDSC) {
                dsc->id = CDSC_NOTDSC;
                break;
            }
        }
    } while (length != 0);

    return (code < 0) ? code : dsc->id;
}


int
dsc_fixup(CDSC *dsc)
{
    unsigned int i;
    char buf[32];
    unsigned long *last;

    if (dsc->id == CDSC_NOTDSC)
        return 0;


    dsc_scan_data(dsc, ((void*)0), 0);


    if (dsc->eof &&
        (dsc->skip_lines || dsc->skip_bytes || dsc->skip_document)) {
        switch (dsc->scan_section) {
            case scan_comments:
                dsc->endcomments = ((dsc)->data_offset + (dsc)->data_index);
                break;
            case scan_preview:
                dsc->endpreview = ((dsc)->data_offset + (dsc)->data_index);
                break;
            case scan_defaults:
                dsc->enddefaults = ((dsc)->data_offset + (dsc)->data_index);
                break;
            case scan_prolog:
                dsc->endprolog = ((dsc)->data_offset + (dsc)->data_index);
                break;
            case scan_setup:
                dsc->endsetup = ((dsc)->data_offset + (dsc)->data_index);
                break;
            case scan_pages:
                if (dsc->page_count)
                    dsc->page[dsc->page_count-1].end = ((dsc)->data_offset + (dsc)->data_index);
                break;
            case scan_trailer:
            case scan_eof:
                dsc->endtrailer = ((dsc)->data_offset + (dsc)->data_index);
                break;
        }
    }


    if (dsc->page_count && (dsc->page[0].begin != dsc->endsetup)
                && (dsc->endsetup != dsc->beginsetup)) {
        dsc->endsetup = dsc->page[0].begin;
        dsc_debug_print(dsc, "Warning: code included between setup and first page\n");
    }



    if (dsc->page_count && (dsc->begintrailer != 0) &&
        (dsc->page[dsc->page_count-1].end != dsc->begintrailer)) {
        dsc_debug_print(dsc, "Ignoring earlier misplaced trailer\n");
        dsc_debug_print(dsc, "and extending last page to start of trailer\n");
        dsc->page[dsc->page_count-1].end = dsc->begintrailer;
    }






    last = &dsc->endcomments;
    dsc_section_join(dsc->beginpreview, &dsc->endpreview, &last);
    dsc_section_join(dsc->begindefaults, &dsc->enddefaults, &last);
    dsc_section_join(dsc->beginprolog, &dsc->endprolog, &last);
    dsc_section_join(dsc->beginsetup, &dsc->endsetup, &last);
    for (i=0; i<dsc->page_count; i++)
        dsc_section_join(dsc->page[i].begin, &dsc->page[i].end, &last);
    if (dsc->begintrailer)
        *last = dsc->begintrailer;

    if ((dsc->page_pages == 0) && (dsc->page_count == 1)) {


        dsc->page_pages = dsc->page_count;
    }


    if ((dsc->page_count != dsc->page_pages)) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_PAGES_WRONG, ((void*)0), 0);
        switch (rc) {
            case CDSC_RESPONSE_OK:

                dsc->page_pages = dsc->page_count;
                break;
            case CDSC_RESPONSE_CANCEL:
                break;;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }

    if (dsc->epsf && (dsc->bbox == (CDSCBBOX *)((void*)0))) {

        int rc = dsc_error(dsc, CDSC_MESSAGE_EPS_NO_BBOX, ((void*)0), 0);
        switch (rc) {
            case CDSC_RESPONSE_OK:

                break;
            case CDSC_RESPONSE_CANCEL:

                dsc->epsf = ((GSBOOL)0);
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }

    if (dsc->epsf && ((dsc->page_count > 1) || (dsc->page_pages > 1))) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_EPS_PAGES, ((void*)0), 0);
        switch (rc) {
            case CDSC_RESPONSE_OK:

                break;
            case CDSC_RESPONSE_CANCEL:

                dsc->epsf = ((GSBOOL)0);
                break;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }


    dsc_dcs2_fixup(dsc);

    if ((dsc->media_count == 1) && (dsc->page_media == ((void*)0))) {


        dsc->page_media = dsc->media[0];
    }

    if ((dsc->media_count != 0) && (dsc->page_media == ((void*)0))) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_NO_MEDIA, ((void*)0), 0);
        switch (rc) {
            case CDSC_RESPONSE_OK:

                dsc->page_media = dsc->media[0];
                break;
            case CDSC_RESPONSE_CANCEL:

                break;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }


    for (i=0; i<dsc->page_count; i++) {
        if (strlen(dsc->page[i].label) == 0) {
            gs_sprintf(buf, "%d", i+1);
            if ((dsc->page[i].label = dsc_alloc_string(dsc, buf, (int)strlen(buf)))
                == (char *)((void*)0))
                return CDSC_ERROR;
        }
    }
    return CDSC_OK;
}





void
dsc_set_error_function(CDSC *dsc,
        int (*fn)(void *caller_data, CDSC *dsc,
        unsigned int explanation, const char *line, unsigned int line_len))
{
    dsc->dsc_error_fn = fn;
}



void
dsc_set_debug_function(CDSC *dsc,
        void (*debug_fn)(void *caller_data, const char *str))
{
    dsc->debug_print_fn = debug_fn;
}



int
dsc_add_page(CDSC *dsc, int ordinal, char *label)
{
    dsc->page[dsc->page_count].ordinal = ordinal;
    dsc->page[dsc->page_count].label =
        dsc_alloc_string(dsc, label, (int)strlen(label)+1);
    dsc->page[dsc->page_count].begin = 0;
    dsc->page[dsc->page_count].end = 0;
    dsc->page[dsc->page_count].orientation = CDSC_ORIENT_UNKNOWN;
    dsc->page[dsc->page_count].media = ((void*)0);
    dsc->page[dsc->page_count].bbox = ((void*)0);
    dsc->page[dsc->page_count].viewing_orientation = ((void*)0);
    dsc->page[dsc->page_count].crop_box = ((void*)0);

    dsc->page_count++;
    if (dsc->page_count >= dsc->page_chunk_length) {
        CDSCPAGE *new_page = (CDSCPAGE *)dsc_memalloc(dsc,
            (128 +dsc->page_count) * sizeof(CDSCPAGE));
        if (new_page == ((void*)0))
            return CDSC_ERROR;
        memcpy(new_page, dsc->page,
            dsc->page_count * sizeof(CDSCPAGE));
        dsc_memfree(dsc, dsc->page);
        dsc->page= new_page;
        dsc->page_chunk_length = 128 +dsc->page_count;
    }
    return CDSC_OK;
}



int
dsc_add_media(CDSC *dsc, CDSCMEDIA *media)
{
    CDSCMEDIA **newmedia_array;
    CDSCMEDIA *newmedia;


    newmedia_array = (CDSCMEDIA **)dsc_memalloc(dsc,
        (dsc->media_count + 1) * sizeof(CDSCMEDIA *));
    if (newmedia_array == ((void*)0))
        return CDSC_ERROR;
    if (dsc->media != ((void*)0)) {
        memcpy(newmedia_array, dsc->media,
            dsc->media_count * sizeof(CDSCMEDIA *));
        dsc_memfree(dsc, dsc->media);
    }
    dsc->media = newmedia_array;


    newmedia = dsc->media[dsc->media_count] =
        (CDSCMEDIA *)dsc_memalloc(dsc, sizeof(CDSCMEDIA));
    if (newmedia == ((void*)0))
        return CDSC_ERROR;
    newmedia->name = ((void*)0);
    newmedia->width = 595.0;
    newmedia->height = 842.0;
    newmedia->weight = 80.0;
    newmedia->colour = ((void*)0);
    newmedia->type = ((void*)0);
    newmedia->mediabox = ((void*)0);

    dsc->media_count++;

    if (media->name) {
        newmedia->name = dsc_alloc_string(dsc, media->name,
            (int)strlen(media->name));
        if (newmedia->name == ((void*)0))
            return CDSC_ERROR;
    }
    newmedia->width = media->width;
    newmedia->height = media->height;
    newmedia->weight = media->weight;
    if (media->colour) {
        newmedia->colour = dsc_alloc_string(dsc, media->colour,
            (int)strlen(media->colour));
        if (newmedia->colour == ((void*)0))
            return CDSC_ERROR;
    }
    if (media->type) {
        newmedia->type = dsc_alloc_string(dsc, media->type,
            (int)strlen(media->type));
        if (newmedia->type == ((void*)0))
            return CDSC_ERROR;
    }
    newmedia->mediabox = ((void*)0);

    if (media->mediabox) {
        newmedia->mediabox = (CDSCBBOX *)dsc_memalloc(dsc, sizeof(CDSCBBOX));
        if (newmedia->mediabox == ((void*)0))
            return CDSC_ERROR;
        *newmedia->mediabox = *media->mediabox;
    }
    return CDSC_OK;
}



int
dsc_set_page_bbox(CDSC *dsc, unsigned int page_number,
    int llx, int lly, int urx, int ury)
{
    CDSCBBOX *bbox;
    if (page_number >= dsc->page_count)
        return CDSC_ERROR;
    bbox = dsc->page[page_number].bbox;
    if (bbox == ((void*)0))
        dsc->page[page_number].bbox = bbox =
            (CDSCBBOX *)dsc_memalloc(dsc, sizeof(CDSCBBOX));
    if (bbox == ((void*)0))
        return CDSC_ERROR;
    bbox->llx = llx;
    bbox->lly = lly;
    bbox->urx = urx;
    bbox->ury = ury;
    return CDSC_OK;
}





static void *
dsc_memalloc(CDSC *dsc, size_t size)
{
    if (dsc->memalloc)
        return dsc->memalloc(size, dsc->mem_closure_data);
    return malloc(size);
}

static void
dsc_memfree(CDSC*dsc, void *ptr)
{
    if (dsc->memfree)
        dsc->memfree(ptr, dsc->mem_closure_data);
    else
        free(ptr);
}


static CDSC *
dsc_init2(CDSC *dsc)
{
    dsc_reset(dsc);

    dsc->string_head = (CDSCSTRING *)dsc_memalloc(dsc, sizeof(CDSCSTRING));
    if (dsc->string_head == ((void*)0)) {
        dsc_free(dsc);
        return ((void*)0);
    }
    dsc->string = dsc->string_head;
    dsc->string->next = ((void*)0);
    dsc->string->data = (char *)dsc_memalloc(dsc, 4096);
    if (dsc->string->data == ((void*)0)) {
        dsc_free(dsc);
        return ((void*)0);
    }
    dsc->string->index = 0;
    dsc->string->length = 4096;

    dsc->page = (CDSCPAGE *)dsc_memalloc(dsc, 128 * sizeof(CDSCPAGE));
    if (dsc->page == ((void*)0)) {
        dsc_free(dsc);
        return ((void*)0);
    }
    dsc->page_chunk_length = 128;
    dsc->page_count = 0;

    dsc->line = ((void*)0);
    dsc->data_length = 0;
    dsc->data_index = dsc->data_length;

    return dsc;
}

static void
dsc_reset(CDSC *dsc)
{
    unsigned int i;

    dsc->dsc = ((GSBOOL)0);
    dsc->ctrld = ((GSBOOL)0);
    dsc->pjl = ((GSBOOL)0);
    dsc->epsf = ((GSBOOL)0);
    dsc->pdf = ((GSBOOL)0);
    dsc->epsf = ((GSBOOL)0);
    dsc->preview = CDSC_NOPREVIEW;
    dsc->dsc_version = ((void*)0);
    dsc->language_level = 0;
    dsc->document_data = CDSC_DATA_UNKNOWN;
    dsc->begincomments = 0;
    dsc->endcomments = 0;
    dsc->beginpreview = 0;
    dsc->endpreview = 0;
    dsc->begindefaults = 0;
    dsc->enddefaults = 0;
    dsc->beginprolog = 0;
    dsc->endprolog = 0;
    dsc->beginsetup = 0;
    dsc->endsetup = 0;
    dsc->begintrailer = 0;
    dsc->endtrailer = 0;

    for (i=0; i<dsc->page_count; i++) {



        if (dsc->page[i].bbox)
            dsc_memfree(dsc, dsc->page[i].bbox);
        if (dsc->page[i].viewing_orientation)
            dsc_memfree(dsc, dsc->page[i].viewing_orientation);
        if (dsc->page[i].crop_box)
            dsc_memfree(dsc, dsc->page[i].crop_box);
    }
    if (dsc->page)
        dsc_memfree(dsc, dsc->page);
    dsc->page = ((void*)0);

    dsc->page_count = 0;
    dsc->page_pages = 0;
    dsc->page_order = CDSC_ORDER_UNKNOWN;
    dsc->page_orientation = CDSC_ORIENT_UNKNOWN;
    if (dsc->viewing_orientation)
        dsc_memfree(dsc, dsc->viewing_orientation);
    dsc->viewing_orientation = ((void*)0);

    if (dsc->media) {
        for (i=0; i<dsc->media_count; i++) {
            if (dsc->media[i]) {
                if (dsc->media[i]->mediabox)
                    dsc_memfree(dsc, dsc->media[i]->mediabox);
                dsc_memfree(dsc, dsc->media[i]);
            }
        }
        dsc_memfree(dsc, dsc->media);
    }
    dsc->media_count = 0;
    dsc->media = ((void*)0);



    dsc->page_media = ((void*)0);

    if (dsc->bbox)
        dsc_memfree(dsc, dsc->bbox);
    dsc->bbox = ((void*)0);
    if (dsc->page_bbox)
        dsc_memfree(dsc, dsc->page_bbox);
    dsc->page_bbox = ((void*)0);
    if (dsc->doseps)
        dsc_memfree(dsc, dsc->doseps);
    dsc->doseps = ((void*)0);

    dsc->dsc_title = ((void*)0);
    dsc->dsc_creator = ((void*)0);
    dsc->dsc_date = ((void*)0);
    dsc->dsc_for = ((void*)0);

    dsc->max_error = ((sizeof(dsc_severity) / sizeof(int))-2);
    dsc->severity = dsc_severity;



    dsc->id = CDSC_OK;
    dsc->scan_section = scan_none;
    dsc->doseps_end = 0;
    dsc->page_chunk_length = 0;
    dsc->file_length = 0;
    dsc->skip_document = 0;
    dsc->skip_bytes = 0;
    dsc->skip_lines = 0;
    dsc->skip_pjl = 0;
    dsc->begin_font_count = 0;
    dsc->begin_feature_count = 0;
    dsc->begin_resource_count = 0;
    dsc->begin_procset_count = 0;

    dsc->data_length = 0;
    dsc->data_index = 0;
    dsc->data_offset = 0;

    dsc->eof = 0;

    dsc->line = 0;
    dsc->line_length = 0;
    dsc->eol = 0;
    dsc->last_cr = ((GSBOOL)0);
    dsc->line_count = 1;
    dsc->long_line = ((GSBOOL)0);
    memset(dsc->last_line, 0, sizeof(dsc->last_line));

    dsc->string = dsc->string_head;
    while (dsc->string != (CDSCSTRING *)((void*)0)) {
        if (dsc->string->data)
            dsc_memfree(dsc, dsc->string->data);
        dsc->string_head = dsc->string;
        dsc->string = dsc->string->next;
        dsc_memfree(dsc, dsc->string_head);
    }
    dsc->string_head = ((void*)0);
    dsc->string = ((void*)0);




    if (dsc->hires_bbox)
        dsc_memfree(dsc, dsc->hires_bbox);
    dsc->hires_bbox = ((void*)0);
    if (dsc->crop_box)
        dsc_memfree(dsc, dsc->crop_box);
    dsc->crop_box = ((void*)0);

    if (dsc->dcs2) {
        CDCS2 *this_dcs, *next_dcs;
        this_dcs = dsc->dcs2;
        while (this_dcs) {
            next_dcs = this_dcs->next;

            dsc_memfree(dsc, this_dcs);
            this_dcs = next_dcs;
        }
        dsc->dcs2 = ((void*)0);
    }
    if (dsc->colours) {
        CDSCCOLOUR *this_colour, *next_colour;
        this_colour = dsc->colours;
        while (this_colour) {
            next_colour = this_colour->next;

            dsc_memfree(dsc, this_colour);
            this_colour = next_colour;
        }
        dsc->colours = ((void*)0);
    }

    if (dsc->macbin)
        dsc_memfree(dsc, dsc->macbin);
    dsc->macbin = ((void*)0);
}
# 967 "./psi/dscparse.c"
static void
dsc_section_join(unsigned long begin, unsigned long *pend, unsigned long **pplast)
{
    if (begin)
        **pplast = begin;
    if (*pend > begin)
        *pplast = pend;
}


static int
dsc_read_line(CDSC *dsc)
{
    char *p, *last;
    dsc->line = ((void*)0);

    if (dsc->eof) {

        dsc->line = dsc->data + dsc->data_index;
        dsc->line_length = dsc->data_length - dsc->data_index;
        dsc->data_index = dsc->data_length;
        return dsc->line_length;
    }

    if (dsc->file_length &&
        (dsc->data_offset + dsc->data_index >= dsc->file_length)) {


        dsc->line = dsc->data + dsc->data_index;
        dsc->line_length = dsc->data_length - dsc->data_index;
        dsc->data_index = dsc->data_length;
        return dsc->line_length;

    }
    if (dsc->doseps_end &&
        (dsc->data_offset + dsc->data_index >= dsc->doseps_end)) {


        dsc->line = dsc->data + dsc->data_index;
        dsc->line_length = dsc->data_length - dsc->data_index;
        dsc->data_index = dsc->data_length;
        return dsc->line_length;
    }


    if (dsc->skip_bytes) {
        int cnt = (((dsc->skip_bytes) < ((int)(dsc->data_length - dsc->data_index))) ? (dsc->skip_bytes) : ((int)(dsc->data_length - dsc->data_index)));

        dsc->skip_bytes -= cnt;
        dsc->data_index += cnt;
        if (dsc->skip_bytes != 0)
            return 0;
    }

    do {
        dsc->line = dsc->data + dsc->data_index;
        last = dsc->data + dsc->data_length;
        if (dsc->data_index == dsc->data_length) {
            dsc->line_length = 0;
            return 0;
        }
        if (dsc->eol) {

            dsc->line_count++;
            if (dsc->skip_lines)
                dsc->skip_lines--;
        }


        if (dsc->last_cr && dsc->line[0] == '\n') {
            dsc->data_index++;
            dsc->line++;
        }
        dsc->last_cr = ((GSBOOL)0);


        dsc->eol = ((GSBOOL)0);
        for (p = dsc->line; p < last; p++) {
            if (*p == '\r') {
                p++;
                if ((p<last) && (*p == '\n'))
                    p++;
                else
                    dsc->last_cr = ((GSBOOL)(!((GSBOOL)0)));
                dsc->eol = ((GSBOOL)(!((GSBOOL)0)));
                break;
            }
            if (*p == '\n') {
                p++;
                dsc->eol = ((GSBOOL)(!((GSBOOL)0)));
                break;
            }
            if (*p == '\032') {
                dsc->eol = ((GSBOOL)(!((GSBOOL)0)));
            }
        }
        if (dsc->eol == ((GSBOOL)0)) {

            if (dsc->data_length - dsc->data_index < sizeof(dsc->data)/2) {

                dsc->line_length = 0;
                return 0;
            }
        }
        dsc->data_index += dsc->line_length = (int)(p - dsc->line);
    } while (dsc->skip_lines && dsc->line_length);

    if (dsc->line_length == 0)
        return 0;

    if ((dsc->line[0]=='%') && (dsc->line[1]=='%')) {

        if ((dsc->skip_document) && dsc->line_length &&
                ((__extension__ (__builtin_constant_p (sizeof("%%EndDocument")-1) && ((__builtin_constant_p ((const char *)(dsc->line)) && strlen ((const char *)(dsc->line)) < ((size_t) (sizeof("%%EndDocument")-1))) || (__builtin_constant_p (("%%EndDocument")) && strlen (("%%EndDocument")) < ((size_t) (sizeof("%%EndDocument")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(dsc->line)) && __builtin_constant_p (("%%EndDocument")) && (__s1_len = strlen ((const char *)(dsc->line)), __s2_len = strlen (("%%EndDocument")), (!((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("%%EndDocument")) + 1) - (size_t)(const void *)(("%%EndDocument")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(dsc->line), ("%%EndDocument")) : (__builtin_constant_p ((const char *)(dsc->line)) && ((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) && (__s1_len = strlen ((const char *)(dsc->line)), __s1_len < 4) ? (__builtin_constant_p (("%%EndDocument")) && ((size_t)(const void *)((("%%EndDocument")) + 1) - (size_t)(const void *)(("%%EndDocument")) == 1) ? __builtin_strcmp ((const char *)(dsc->line), ("%%EndDocument")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("%%EndDocument")); register int __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("%%EndDocument")) && ((size_t)(const void *)((("%%EndDocument")) + 1) - (size_t)(const void *)(("%%EndDocument")) == 1) && (__s2_len = strlen (("%%EndDocument")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(dsc->line)) && ((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) ? __builtin_strcmp ((const char *)(dsc->line), ("%%EndDocument")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(dsc->line)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("%%EndDocument")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("%%EndDocument")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("%%EndDocument")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("%%EndDocument")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(dsc->line), ("%%EndDocument"))))); }) : strncmp ((const char *)(dsc->line), ("%%EndDocument"), sizeof("%%EndDocument")-1)))==0)) {
            dsc->skip_document--;
        }


        if (((__extension__ (__builtin_constant_p (sizeof("%%BeginData:")-1) && ((__builtin_constant_p ((const char *)(dsc->line)) && strlen ((const char *)(dsc->line)) < ((size_t) (sizeof("%%BeginData:")-1))) || (__builtin_constant_p (("%%BeginData:")) && strlen (("%%BeginData:")) < ((size_t) (sizeof("%%BeginData:")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(dsc->line)) && __builtin_constant_p (("%%BeginData:")) && (__s1_len = strlen ((const char *)(dsc->line)), __s2_len = strlen (("%%BeginData:")), (!((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("%%BeginData:")) + 1) - (size_t)(const void *)(("%%BeginData:")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(dsc->line), ("%%BeginData:")) : (__builtin_constant_p ((const char *)(dsc->line)) && ((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) && (__s1_len = strlen ((const char *)(dsc->line)), __s1_len < 4) ? (__builtin_constant_p (("%%BeginData:")) && ((size_t)(const void *)((("%%BeginData:")) + 1) - (size_t)(const void *)(("%%BeginData:")) == 1) ? __builtin_strcmp ((const char *)(dsc->line), ("%%BeginData:")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("%%BeginData:")); register int __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("%%BeginData:")) && ((size_t)(const void *)((("%%BeginData:")) + 1) - (size_t)(const void *)(("%%BeginData:")) == 1) && (__s2_len = strlen (("%%BeginData:")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(dsc->line)) && ((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) ? __builtin_strcmp ((const char *)(dsc->line), ("%%BeginData:")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(dsc->line)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("%%BeginData:")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("%%BeginData:")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("%%BeginData:")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("%%BeginData:")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(dsc->line), ("%%BeginData:"))))); }) : strncmp ((const char *)(dsc->line), ("%%BeginData:"), sizeof("%%BeginData:")-1)))==0)) {





            char begindata[256 +1];
            int cnt;
            const char *numberof, *bytesorlines;
            cnt = dsc->line_length;
            if (dsc->line_length > sizeof(begindata)-1)
                cnt = sizeof(begindata)-1;
            memcpy(begindata, dsc->line, cnt);
            begindata[cnt] = '\0';
            numberof = strtok(begindata+12, " \r\n");
            strtok(((void*)0), " \r\n");
            bytesorlines = strtok(((void*)0), " \r\n");
            if (bytesorlines == ((void*)0))
                bytesorlines = "Bytes";

            if ( (numberof == ((void*)0)) || (bytesorlines == ((void*)0)) ) {


                int rc = dsc_error(dsc, CDSC_MESSAGE_INCORRECT_USAGE,
                            dsc->line, dsc->line_length);
                switch (rc) {
                    case CDSC_RESPONSE_OK:
                    case CDSC_RESPONSE_CANCEL:
                        break;
                    case CDSC_RESPONSE_IGNORE_ALL:
                        return 0;
                }
            }
            else {
                cnt = atoi(numberof);
                if (cnt) {
                    if (bytesorlines && (dsc_stricmp(bytesorlines, "Lines")==0)) {

                        if (dsc->skip_lines == 0) {

                            dsc->skip_lines = cnt+1;
                        }
                    }
                    else {



                        if (dsc->skip_bytes == 0) {

                            dsc->skip_bytes = cnt;
                        }

                    }
                }
            }
        }
        else if (((__extension__ (__builtin_constant_p (sizeof("%%BeginBinary:")-1) && ((__builtin_constant_p ((const char *)(dsc->line)) && strlen ((const char *)(dsc->line)) < ((size_t) (sizeof("%%BeginBinary:")-1))) || (__builtin_constant_p (("%%BeginBinary:")) && strlen (("%%BeginBinary:")) < ((size_t) (sizeof("%%BeginBinary:")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(dsc->line)) && __builtin_constant_p (("%%BeginBinary:")) && (__s1_len = strlen ((const char *)(dsc->line)), __s2_len = strlen (("%%BeginBinary:")), (!((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("%%BeginBinary:")) + 1) - (size_t)(const void *)(("%%BeginBinary:")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(dsc->line), ("%%BeginBinary:")) : (__builtin_constant_p ((const char *)(dsc->line)) && ((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) && (__s1_len = strlen ((const char *)(dsc->line)), __s1_len < 4) ? (__builtin_constant_p (("%%BeginBinary:")) && ((size_t)(const void *)((("%%BeginBinary:")) + 1) - (size_t)(const void *)(("%%BeginBinary:")) == 1) ? __builtin_strcmp ((const char *)(dsc->line), ("%%BeginBinary:")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("%%BeginBinary:")); register int __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("%%BeginBinary:")) && ((size_t)(const void *)((("%%BeginBinary:")) + 1) - (size_t)(const void *)(("%%BeginBinary:")) == 1) && (__s2_len = strlen (("%%BeginBinary:")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(dsc->line)) && ((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) ? __builtin_strcmp ((const char *)(dsc->line), ("%%BeginBinary:")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(dsc->line)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("%%BeginBinary:")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("%%BeginBinary:")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("%%BeginBinary:")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("%%BeginBinary:")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(dsc->line), ("%%BeginBinary:"))))); }) : strncmp ((const char *)(dsc->line), ("%%BeginBinary:"), sizeof("%%BeginBinary:")-1)))==0)) {

            int cnt = dsc_get_int(dsc->line + 14,
                dsc->line_length - 14, ((void*)0));
            if (dsc->skip_bytes == 0) {

                dsc->skip_bytes = cnt;
            }
        }
    }

    if ((dsc->line[0]=='%') && (dsc->line[1]=='%') &&
        ((__extension__ (__builtin_constant_p (sizeof("%%BeginDocument:")-1) && ((__builtin_constant_p ((const char *)(dsc->line)) && strlen ((const char *)(dsc->line)) < ((size_t) (sizeof("%%BeginDocument:")-1))) || (__builtin_constant_p (("%%BeginDocument:")) && strlen (("%%BeginDocument:")) < ((size_t) (sizeof("%%BeginDocument:")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(dsc->line)) && __builtin_constant_p (("%%BeginDocument:")) && (__s1_len = strlen ((const char *)(dsc->line)), __s2_len = strlen (("%%BeginDocument:")), (!((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("%%BeginDocument:")) + 1) - (size_t)(const void *)(("%%BeginDocument:")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(dsc->line), ("%%BeginDocument:")) : (__builtin_constant_p ((const char *)(dsc->line)) && ((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) && (__s1_len = strlen ((const char *)(dsc->line)), __s1_len < 4) ? (__builtin_constant_p (("%%BeginDocument:")) && ((size_t)(const void *)((("%%BeginDocument:")) + 1) - (size_t)(const void *)(("%%BeginDocument:")) == 1) ? __builtin_strcmp ((const char *)(dsc->line), ("%%BeginDocument:")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("%%BeginDocument:")); register int __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("%%BeginDocument:")) && ((size_t)(const void *)((("%%BeginDocument:")) + 1) - (size_t)(const void *)(("%%BeginDocument:")) == 1) && (__s2_len = strlen (("%%BeginDocument:")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(dsc->line)) && ((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) ? __builtin_strcmp ((const char *)(dsc->line), ("%%BeginDocument:")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(dsc->line)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("%%BeginDocument:")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("%%BeginDocument:")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("%%BeginDocument:")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("%%BeginDocument:")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(dsc->line), ("%%BeginDocument:"))))); }) : strncmp ((const char *)(dsc->line), ("%%BeginDocument:"), sizeof("%%BeginDocument:")-1)))==0) ) {

        dsc->skip_document++;
    }

    if (!dsc->long_line && (dsc->line_length > 255)) {
        dsc_error(dsc, CDSC_MESSAGE_LONG_LINE, dsc->line, dsc->line_length);
        dsc->long_line = ((GSBOOL)(!((GSBOOL)0)));
    }

    return dsc->line_length;
}


static void
dsc_save_line(CDSC *dsc)
{
    int len = (((sizeof(dsc->last_line)) < (dsc->line_length)) ? (sizeof(dsc->last_line)) : (dsc->line_length));
    memcpy(dsc->last_line, dsc->line, len);
}


static void
dsc_unknown(CDSC *dsc)
{
    if (dsc->debug_print_fn) {
        char line[255];
        unsigned int length = (((255 -1) < (dsc->line_length)) ? (255 -1) : (dsc->line_length));
        gs_sprintf(line, "Unknown in %s section at line %d:\n  ",
            dsc_scan_section_name[dsc->scan_section], dsc->line_count);
        dsc_debug_print(dsc, line);
        __builtin_strncpy (line, dsc->line, length);
        line[length] = '\0';
        dsc_debug_print(dsc, line);
        dsc_debug_print(dsc, "\n");
    }
}

static GSBOOL
dsc_is_section(char *line)
{
    if ( !((line[0]=='%') && (line[1]=='%')) )
        return ((GSBOOL)0);
    if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginPreview"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginPreview"))-1))) || (__builtin_constant_p ((("%%BeginPreview"))) && strlen ((("%%BeginPreview"))) < ((size_t) (sizeof(("%%BeginPreview"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginPreview"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginPreview"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginPreview"))) && ((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginPreview"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginPreview"))) && ((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) && (__s2_len = strlen ((("%%BeginPreview"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginPreview")))))); }) : strncmp ((const char *)((line)), (("%%BeginPreview")), sizeof(("%%BeginPreview"))-1)))==0)))
        return ((GSBOOL)(!((GSBOOL)0)));
    if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginDefaults"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginDefaults"))-1))) || (__builtin_constant_p ((("%%BeginDefaults"))) && strlen ((("%%BeginDefaults"))) < ((size_t) (sizeof(("%%BeginDefaults"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginDefaults"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginDefaults"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginDefaults"))) && ((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginDefaults"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginDefaults"))) && ((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) && (__s2_len = strlen ((("%%BeginDefaults"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults")))))); }) : strncmp ((const char *)((line)), (("%%BeginDefaults")), sizeof(("%%BeginDefaults"))-1)))==0)))
        return ((GSBOOL)(!((GSBOOL)0)));
    if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginProlog"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginProlog"))-1))) || (__builtin_constant_p ((("%%BeginProlog"))) && strlen ((("%%BeginProlog"))) < ((size_t) (sizeof(("%%BeginProlog"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginProlog"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginProlog"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginProlog"))) && ((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginProlog"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginProlog"))) && ((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) && (__s2_len = strlen ((("%%BeginProlog"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginProlog")))))); }) : strncmp ((const char *)((line)), (("%%BeginProlog")), sizeof(("%%BeginProlog"))-1)))==0)))
        return ((GSBOOL)(!((GSBOOL)0)));
    if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginSetup"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginSetup"))-1))) || (__builtin_constant_p ((("%%BeginSetup"))) && strlen ((("%%BeginSetup"))) < ((size_t) (sizeof(("%%BeginSetup"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginSetup"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginSetup"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginSetup"))) + 1) - (size_t)(const void *)((("%%BeginSetup"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginSetup"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginSetup"))) && ((size_t)(const void *)(((("%%BeginSetup"))) + 1) - (size_t)(const void *)((("%%BeginSetup"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginSetup"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginSetup"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginSetup"))) && ((size_t)(const void *)(((("%%BeginSetup"))) + 1) - (size_t)(const void *)((("%%BeginSetup"))) == 1) && (__s2_len = strlen ((("%%BeginSetup"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginSetup"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginSetup")))))); }) : strncmp ((const char *)((line)), (("%%BeginSetup")), sizeof(("%%BeginSetup"))-1)))==0)))
        return ((GSBOOL)(!((GSBOOL)0)));
    if ((((__extension__ (__builtin_constant_p (sizeof(("%%Page:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Page:"))-1))) || (__builtin_constant_p ((("%%Page:"))) && strlen ((("%%Page:"))) < ((size_t) (sizeof(("%%Page:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Page:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Page:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Page:"))) + 1) - (size_t)(const void *)((("%%Page:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Page:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Page:"))) && ((size_t)(const void *)(((("%%Page:"))) + 1) - (size_t)(const void *)((("%%Page:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Page:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Page:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Page:"))) && ((size_t)(const void *)(((("%%Page:"))) + 1) - (size_t)(const void *)((("%%Page:"))) == 1) && (__s2_len = strlen ((("%%Page:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Page:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Page:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Page:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Page:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Page:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Page:")))))); }) : strncmp ((const char *)((line)), (("%%Page:")), sizeof(("%%Page:"))-1)))==0)))
        return ((GSBOOL)(!((GSBOOL)0)));
    if ((((__extension__ (__builtin_constant_p (sizeof(("%%Trailer"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Trailer"))-1))) || (__builtin_constant_p ((("%%Trailer"))) && strlen ((("%%Trailer"))) < ((size_t) (sizeof(("%%Trailer"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Trailer"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Trailer"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Trailer"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Trailer"))) && ((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Trailer"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Trailer"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Trailer"))) && ((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) && (__s2_len = strlen ((("%%Trailer"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Trailer"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Trailer")))))); }) : strncmp ((const char *)((line)), (("%%Trailer")), sizeof(("%%Trailer"))-1)))==0)))
        return ((GSBOOL)(!((GSBOOL)0)));
    if ((((__extension__ (__builtin_constant_p (sizeof(("%%EOF"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EOF"))-1))) || (__builtin_constant_p ((("%%EOF"))) && strlen ((("%%EOF"))) < ((size_t) (sizeof(("%%EOF"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EOF"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EOF"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EOF"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EOF"))) && ((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EOF"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EOF"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EOF"))) && ((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) && (__s2_len = strlen ((("%%EOF"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EOF"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EOF"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EOF"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EOF"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EOF"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EOF")))))); }) : strncmp ((const char *)((line)), (("%%EOF")), sizeof(("%%EOF"))-1)))==0)))
        return ((GSBOOL)(!((GSBOOL)0)));
    return ((GSBOOL)0);
}


static GSDWORD
dsc_get_dword(const unsigned char *buf)
{
    GSDWORD dw;
    dw = (GSDWORD)buf[0];
    dw += ((GSDWORD)buf[1])<<8;
    dw += ((GSDWORD)buf[2])<<16;
    dw += ((GSDWORD)buf[3])<<24;
    return dw;
}

static GSWORD
dsc_get_word(const unsigned char *buf)
{
    GSWORD w;
    w = (GSWORD)buf[0];
    w |= (GSWORD)(buf[1]<<8);
    return w;
}


static GSDWORD
dsc_get_bigendian_dword(const unsigned char *buf)
{
    GSDWORD dw;
    dw = (GSDWORD)buf[3];
    dw += ((GSDWORD)buf[2])<<8;
    dw += ((GSDWORD)buf[1])<<16;
    dw += ((GSDWORD)buf[0])<<24;
    return dw;
}

static GSWORD
dsc_get_bigendian_word(const unsigned char *buf)
{
    GSWORD w;
    w = (GSWORD)buf[1];
    w |= (GSWORD)(buf[0]<<8);
    return w;
}

static int
dsc_read_doseps(CDSC *dsc)
{
    unsigned char *line = (unsigned char *)dsc->line;
    if ((dsc->doseps = (CDSCDOSEPS *)dsc_memalloc(dsc, sizeof(CDSCDOSEPS))) == ((void*)0))
        return CDSC_ERROR;

    dsc->doseps->ps_begin = dsc_get_dword(line+4);
    dsc->doseps->ps_length = dsc_get_dword(line+8);
    dsc->doseps->wmf_begin = dsc_get_dword(line+12);
    dsc->doseps->wmf_length = dsc_get_dword(line+16);
    dsc->doseps->tiff_begin = dsc_get_dword(line+20);
    dsc->doseps->tiff_length = dsc_get_dword(line+24);
    dsc->doseps->checksum = dsc_get_word(line+28);

    if (dsc->file_length &&
        (dsc->doseps->ps_begin + dsc->doseps->ps_length > dsc->file_length)) {





         dsc->doseps->ps_length =
            (GSDWORD)(dsc->file_length - dsc->doseps->ps_begin);
    }

    dsc->doseps_end = dsc->doseps->ps_begin + dsc->doseps->ps_length;


    dsc->data_index -= dsc->line_length - 30;

    dsc->line_count = 0;

    dsc->skip_bytes = dsc->doseps->ps_begin - 30;

    if (dsc->doseps->tiff_begin)
        dsc->preview = CDSC_TIFF;
    if (dsc->doseps->wmf_begin)
        dsc->preview = CDSC_WMF;

    return CDSC_OK;
}

static int
dsc_read_macbin(CDSC *dsc)
{
    unsigned char *line = (unsigned char *)dsc->line;
    if ((dsc->macbin =
        (CDSCMACBIN *)dsc_memalloc(dsc, sizeof(CDSCMACBIN))) == ((void*)0))
        return CDSC_ERROR;

    dsc->macbin->data_begin = 128;
    dsc->macbin->data_length = dsc_get_bigendian_dword(line+83);
    dsc->macbin->resource_begin =
        (dsc->macbin->data_begin + dsc->macbin->data_length + 127 ) & ~127;
    dsc->macbin->resource_length = dsc_get_bigendian_dword(line+87);

    if (dsc->file_length &&
        (((dsc->macbin->resource_begin + dsc->macbin->resource_length
          + 127) & ~127) > dsc->file_length)) {
        return CDSC_ERROR;
    }

    dsc->doseps_end = dsc->macbin->data_begin + dsc->macbin->data_length;


    dsc->data_index -= dsc->line_length - 128;

    dsc->line_count = 0;

    dsc->preview = CDSC_PICT;

    return CDSC_OK;
}

static int
dsc_read_applesingle(CDSC *dsc)
{
    GSDWORD EntryID;
    GSDWORD Offset;
    GSDWORD Length;
    GSWORD entries;
    int index;
    int header;
    int i;

    unsigned char *line = (unsigned char *)dsc->line;
    if ((dsc->macbin =
        (CDSCMACBIN *)dsc_memalloc(dsc, sizeof(CDSCMACBIN))) == ((void*)0))
        return CDSC_ERROR;
    entries = dsc_get_bigendian_word(line+24);
    for (i=0; i<(int)entries; i++) {
        index = 26 + i * 12;
        EntryID = dsc_get_bigendian_dword(line+index);
        Offset = dsc_get_bigendian_dword(line+index+4);
        Length = dsc_get_bigendian_dword(line+index+8);
        if (EntryID == 1) {

            dsc->macbin->data_begin = Offset;
            dsc->macbin->data_length = Length;
        }
        else if (EntryID == 2) {

            dsc->macbin->resource_begin = Offset;
            dsc->macbin->resource_length = Length;
        }
    }

    if (dsc->file_length &&
        (dsc->macbin->resource_begin + dsc->macbin->resource_length
          > dsc->file_length)) {
        return CDSC_ERROR;
    }
    if (dsc->file_length &&
        (dsc->macbin->data_begin + dsc->macbin->data_length
          > dsc->file_length)) {
        return CDSC_ERROR;
    }

    dsc->doseps_end = dsc->macbin->data_begin + dsc->macbin->data_length;

    header = 26 + entries * 12;

    dsc->data_index -= dsc->line_length - header;

    dsc->line_count = 0;

    dsc->skip_bytes = dsc->macbin->data_begin - header;

    dsc->preview = CDSC_PICT;

    return CDSC_OK;
}

static int
dsc_parse_pages(CDSC *dsc)
{
    int ip, io;
    unsigned int i;
    char *p;
    int n;
    if ((dsc->page_pages != 0) && (dsc->scan_section == scan_comments)) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_DUP_COMMENT, dsc->line,
                dsc->line_length);
        switch (rc) {
            case CDSC_RESPONSE_OK:
            case CDSC_RESPONSE_CANCEL:
                return CDSC_OK;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }
    if ((dsc->page_pages != 0) && (dsc->scan_section == scan_trailer)) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_DUP_TRAILER, dsc->line,
                dsc->line_length);
        switch (rc) {
            case CDSC_RESPONSE_OK:
            case CDSC_RESPONSE_CANCEL:
                break;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }

    n = (((__extension__ (__builtin_constant_p (sizeof(("%%+"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%+"))-1))) || (__builtin_constant_p ((("%%+"))) && strlen ((("%%+"))) < ((size_t) (sizeof(("%%+"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%+"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%+"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%+"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) && (__s2_len = strlen ((("%%+"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%+"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%+"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%+"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%+"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%+")))))); }) : strncmp ((const char *)((dsc->line)), (("%%+")), sizeof(("%%+"))-1)))==0)) ? 3 : 8;
    while ((((dsc->line[n])==' ') || ((dsc->line[n])=='\t')))
        n++;
    p = dsc->line + n;
    if (((__extension__ (__builtin_constant_p (sizeof("atend")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("atend")-1))) || (__builtin_constant_p (("atend")) && strlen (("atend")) < ((size_t) (sizeof("atend")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("atend")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("atend")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("atend")) && ((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("atend")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("atend")) && ((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) && (__s2_len = strlen (("atend")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("atend")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("atend")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("atend")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("atend")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("atend"))))); }) : strncmp ((const char *)(p), ("atend"), sizeof("atend")-1)))==0)) {
        if (dsc->scan_section != scan_comments)
            dsc_unknown(dsc);
        else {
            int rc = dsc_error(dsc, CDSC_MESSAGE_ATEND,
                dsc->line, dsc->line_length);
            switch (rc) {
                case CDSC_RESPONSE_OK:


                    break;
                case CDSC_RESPONSE_CANCEL:

                    break;
                case CDSC_RESPONSE_IGNORE_ALL:
                    return CDSC_NOTDSC;
            }
        }
    }
    else if (((__extension__ (__builtin_constant_p (sizeof("(atend)")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("(atend)")-1))) || (__builtin_constant_p (("(atend)")) && strlen (("(atend)")) < ((size_t) (sizeof("(atend)")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("(atend)")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("(atend)")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("(atend)")) && ((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("(atend)")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("(atend)")) && ((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) && (__s2_len = strlen (("(atend)")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("(atend)")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("(atend)")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("(atend)")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("(atend)")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("(atend)"))))); }) : strncmp ((const char *)(p), ("(atend)"), sizeof("(atend)")-1)))==0)) {
        if (dsc->scan_section != scan_comments)
            dsc_unknown(dsc);


    }
    else {
        ip = dsc_get_int(dsc->line+n, dsc->line_length-n, &i);
        if (i) {
            n+=i;
            dsc->page_pages = ip;
            io = dsc_get_int(dsc->line+n, dsc->line_length-n, &i);
            if (i) {


                if (dsc->page_order == CDSC_ORDER_UNKNOWN)
                    switch (io) {
                        case -1:
                            dsc->page_order = CDSC_DESCEND;
                            break;
                        case 0:
                            dsc->page_order = CDSC_SPECIAL;
                            break;
                        case 1:
                            dsc->page_order = CDSC_ASCEND;
                            break;
                    }
            }
        }
        else {
            int rc = dsc_error(dsc, CDSC_MESSAGE_INCORRECT_USAGE, dsc->line,
                dsc->line_length);
            switch (rc) {
                case CDSC_RESPONSE_OK:
                case CDSC_RESPONSE_CANCEL:

                    break;
                case CDSC_RESPONSE_IGNORE_ALL:
                    return CDSC_NOTDSC;
            }
        }
    }
    return CDSC_OK;
}

static int
dsc_parse_bounding_box(CDSC *dsc, CDSCBBOX** pbbox, int offset)
{
    unsigned int i, n;
    int llx, lly, urx, ury;
    float fllx, flly, furx, fury;
    char *p;

    if ((*pbbox != ((void*)0)) && (dsc->scan_section == scan_comments)) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_DUP_COMMENT, dsc->line,
                dsc->line_length);
        switch (rc) {
            case CDSC_RESPONSE_OK:
            case CDSC_RESPONSE_CANCEL:
                return CDSC_OK;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }
    if ((*pbbox != ((void*)0)) && (dsc->scan_section == scan_pages)) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_DUP_COMMENT, dsc->line,
                dsc->line_length);
        switch (rc) {
            case CDSC_RESPONSE_OK:
            case CDSC_RESPONSE_CANCEL:
                return CDSC_OK;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }
    if ((*pbbox != ((void*)0)) && (dsc->scan_section == scan_trailer)) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_DUP_TRAILER, dsc->line,
                dsc->line_length);
        switch (rc) {
            case CDSC_RESPONSE_OK:
            case CDSC_RESPONSE_CANCEL:
                break;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }
    if (*pbbox != ((void*)0)) {
        dsc_memfree(dsc, *pbbox);
        *pbbox = ((void*)0);
    }



    while ((((dsc->line[offset])==' ') || ((dsc->line[offset])=='\t')))
        offset++;
    p = dsc->line + offset;

    if (((__extension__ (__builtin_constant_p (sizeof("atend")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("atend")-1))) || (__builtin_constant_p (("atend")) && strlen (("atend")) < ((size_t) (sizeof("atend")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("atend")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("atend")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("atend")) && ((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("atend")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("atend")) && ((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) && (__s2_len = strlen (("atend")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("atend")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("atend")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("atend")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("atend")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("atend"))))); }) : strncmp ((const char *)(p), ("atend"), sizeof("atend")-1)))==0)) {
        if (dsc->scan_section == scan_trailer)
            dsc_unknown(dsc);
        else {
            int rc = dsc_error(dsc, CDSC_MESSAGE_ATEND, dsc->line,
                    dsc->line_length);
            switch (rc) {
                case CDSC_RESPONSE_OK:


                    break;
                case CDSC_RESPONSE_CANCEL:

                    break;
                case CDSC_RESPONSE_IGNORE_ALL:
                    return CDSC_NOTDSC;
            }
        }
    }
    else if (((__extension__ (__builtin_constant_p (sizeof("(atend)")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("(atend)")-1))) || (__builtin_constant_p (("(atend)")) && strlen (("(atend)")) < ((size_t) (sizeof("(atend)")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("(atend)")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("(atend)")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("(atend)")) && ((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("(atend)")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("(atend)")) && ((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) && (__s2_len = strlen (("(atend)")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("(atend)")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("(atend)")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("(atend)")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("(atend)")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("(atend)"))))); }) : strncmp ((const char *)(p), ("(atend)"), sizeof("(atend)")-1)))==0)) {
        if (dsc->scan_section == scan_trailer)
            dsc_unknown(dsc);


    }
    else {
                    lly = urx = ury = 0;
        n = offset;
        llx = dsc_get_int(dsc->line+n, dsc->line_length-n, &i);
        n += i;
        if (i)
            lly = dsc_get_int(dsc->line+n, dsc->line_length-n, &i);
        n += i;
        if (i)
            urx = dsc_get_int(dsc->line+n, dsc->line_length-n, &i);
        n += i;
        if (i)
            ury = dsc_get_int(dsc->line+n, dsc->line_length-n, &i);
        if (i) {
            *pbbox = (CDSCBBOX *)dsc_memalloc(dsc, sizeof(CDSCBBOX));
            if (*pbbox == ((void*)0))
                return CDSC_ERROR;
            (*pbbox)->llx = llx;
            (*pbbox)->lly = lly;
            (*pbbox)->urx = urx;
            (*pbbox)->ury = ury;
        }
        else {
            int rc = dsc_error(dsc, CDSC_MESSAGE_BBOX, dsc->line,
                dsc->line_length);
            switch (rc) {
              case CDSC_RESPONSE_OK:
                             flly = furx = fury = 0.0;
                n = offset;
                n += i;
                fllx = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
                n += i;
                if (i)
                    flly = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
                n += i;
                if (i)
                    furx = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
                n += i;
                if (i)
                    fury = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
                if (i) {
                    *pbbox = (CDSCBBOX *)dsc_memalloc(dsc, sizeof(CDSCBBOX));
                    if (*pbbox == ((void*)0))
                        return CDSC_ERROR;
                        (*pbbox)->llx = (int)fllx;
                        (*pbbox)->lly = (int)flly;
                        (*pbbox)->urx = (int)(furx+0.999);
                        (*pbbox)->ury = (int)(fury+0.999);
                }
                return CDSC_OK;
            case CDSC_RESPONSE_CANCEL:
                return CDSC_OK;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
          }
        }
    }
    return CDSC_OK;
}

static int
dsc_parse_float_bounding_box(CDSC *dsc, CDSCFBBOX** pbbox, int offset)
{
    unsigned int i, n;
    float fllx, flly, furx, fury;
    char *p;



    if ((*pbbox != ((void*)0)) && (dsc->scan_section == scan_comments)) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_DUP_COMMENT, dsc->line,
                dsc->line_length);
        switch (rc) {
            case CDSC_RESPONSE_OK:
            case CDSC_RESPONSE_CANCEL:
                return CDSC_OK;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }
    if ((*pbbox != ((void*)0)) && (dsc->scan_section == scan_pages)) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_DUP_COMMENT, dsc->line,
                dsc->line_length);
        switch (rc) {
            case CDSC_RESPONSE_OK:
            case CDSC_RESPONSE_CANCEL:
                return CDSC_OK;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }
    if ((*pbbox != ((void*)0)) && (dsc->scan_section == scan_trailer)) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_DUP_TRAILER, dsc->line,
                dsc->line_length);
        switch (rc) {
            case CDSC_RESPONSE_OK:
            case CDSC_RESPONSE_CANCEL:
                break;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }
    if (*pbbox != ((void*)0)) {
        dsc_memfree(dsc, *pbbox);
        *pbbox = ((void*)0);
    }



    while ((((dsc->line[offset])==' ') || ((dsc->line[offset])=='\t')))
        offset++;
    p = dsc->line + offset;

    if (((__extension__ (__builtin_constant_p (sizeof("atend")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("atend")-1))) || (__builtin_constant_p (("atend")) && strlen (("atend")) < ((size_t) (sizeof("atend")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("atend")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("atend")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("atend")) && ((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("atend")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("atend")) && ((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) && (__s2_len = strlen (("atend")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("atend")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("atend")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("atend")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("atend")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("atend"))))); }) : strncmp ((const char *)(p), ("atend"), sizeof("atend")-1)))==0)) {
        if (dsc->scan_section == scan_trailer)
            dsc_unknown(dsc);
        else {
            int rc = dsc_error(dsc, CDSC_MESSAGE_ATEND, dsc->line,
                    dsc->line_length);
            switch (rc) {
                case CDSC_RESPONSE_OK:


                    break;
                case CDSC_RESPONSE_CANCEL:

                    break;
                case CDSC_RESPONSE_IGNORE_ALL:
                    return CDSC_NOTDSC;
            }
        }
    }
    else if (((__extension__ (__builtin_constant_p (sizeof("(atend)")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("(atend)")-1))) || (__builtin_constant_p (("(atend)")) && strlen (("(atend)")) < ((size_t) (sizeof("(atend)")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("(atend)")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("(atend)")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("(atend)")) && ((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("(atend)")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("(atend)")) && ((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) && (__s2_len = strlen (("(atend)")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("(atend)")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("(atend)")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("(atend)")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("(atend)")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("(atend)"))))); }) : strncmp ((const char *)(p), ("(atend)"), sizeof("(atend)")-1)))==0)) {
        if (dsc->scan_section == scan_trailer)
            dsc_unknown(dsc);


    }
    else {
                     flly = furx = fury = 0.0;
        n = offset;
        fllx = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
        n += i;
        if (i)
            flly = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
        n += i;
        if (i)
            furx = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
        n += i;
        if (i)
            fury = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
        if (i) {
            *pbbox = (CDSCFBBOX *)dsc_memalloc(dsc, sizeof(CDSCFBBOX));
            if (*pbbox == ((void*)0))
                return CDSC_ERROR;
            (*pbbox)->fllx = fllx;
            (*pbbox)->flly = flly;
            (*pbbox)->furx = furx;
            (*pbbox)->fury = fury;
        }
    }
    return CDSC_OK;
}

static int
dsc_parse_orientation(CDSC *dsc, unsigned int *porientation, int offset)
{
    char *p;
    if ((dsc->page_orientation != CDSC_ORIENT_UNKNOWN) &&
        (dsc->scan_section == scan_comments)) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_DUP_COMMENT, dsc->line,
                dsc->line_length);
        switch (rc) {
            case CDSC_RESPONSE_OK:
            case CDSC_RESPONSE_CANCEL:
                return CDSC_OK;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }
    if ((dsc->page_orientation != CDSC_ORIENT_UNKNOWN) &&
        (dsc->scan_section == scan_trailer)) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_DUP_TRAILER, dsc->line,
                dsc->line_length);
        switch (rc) {
            case CDSC_RESPONSE_OK:
            case CDSC_RESPONSE_CANCEL:
                break;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }
    p = dsc->line + offset;
    while ((((*p)==' ') || ((*p)=='\t')))
        p++;
    if (((__extension__ (__builtin_constant_p (sizeof("atend")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("atend")-1))) || (__builtin_constant_p (("atend")) && strlen (("atend")) < ((size_t) (sizeof("atend")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("atend")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("atend")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("atend")) && ((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("atend")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("atend")) && ((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) && (__s2_len = strlen (("atend")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("atend")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("atend")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("atend")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("atend")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("atend"))))); }) : strncmp ((const char *)(p), ("atend"), sizeof("atend")-1)))==0)) {
        if (dsc->scan_section == scan_trailer)
            dsc_unknown(dsc);
        else {
            int rc = dsc_error(dsc, CDSC_MESSAGE_ATEND,
                dsc->line, dsc->line_length);
            switch (rc) {
                case CDSC_RESPONSE_OK:


                    break;
                case CDSC_RESPONSE_CANCEL:

                    break;
                case CDSC_RESPONSE_IGNORE_ALL:
                    return CDSC_NOTDSC;
            }
        }
    }
    else if (((__extension__ (__builtin_constant_p (sizeof("(atend)")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("(atend)")-1))) || (__builtin_constant_p (("(atend)")) && strlen (("(atend)")) < ((size_t) (sizeof("(atend)")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("(atend)")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("(atend)")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("(atend)")) && ((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("(atend)")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("(atend)")) && ((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) && (__s2_len = strlen (("(atend)")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("(atend)")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("(atend)")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("(atend)")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("(atend)")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("(atend)"))))); }) : strncmp ((const char *)(p), ("(atend)"), sizeof("(atend)")-1)))==0)) {
        if (dsc->scan_section == scan_trailer)
            dsc_unknown(dsc);


    }
    else if (((__extension__ (__builtin_constant_p (sizeof("Portrait")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("Portrait")-1))) || (__builtin_constant_p (("Portrait")) && strlen (("Portrait")) < ((size_t) (sizeof("Portrait")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("Portrait")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("Portrait")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("Portrait")) + 1) - (size_t)(const void *)(("Portrait")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("Portrait")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("Portrait")) && ((size_t)(const void *)((("Portrait")) + 1) - (size_t)(const void *)(("Portrait")) == 1) ? __builtin_strcmp ((const char *)(p), ("Portrait")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("Portrait")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("Portrait")) && ((size_t)(const void *)((("Portrait")) + 1) - (size_t)(const void *)(("Portrait")) == 1) && (__s2_len = strlen (("Portrait")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("Portrait")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("Portrait")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("Portrait")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("Portrait")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("Portrait")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("Portrait"))))); }) : strncmp ((const char *)(p), ("Portrait"), sizeof("Portrait")-1)))==0)) {
        *porientation = CDSC_PORTRAIT;
    }
    else if (((__extension__ (__builtin_constant_p (sizeof("Landscape")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("Landscape")-1))) || (__builtin_constant_p (("Landscape")) && strlen (("Landscape")) < ((size_t) (sizeof("Landscape")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("Landscape")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("Landscape")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("Landscape")) + 1) - (size_t)(const void *)(("Landscape")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("Landscape")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("Landscape")) && ((size_t)(const void *)((("Landscape")) + 1) - (size_t)(const void *)(("Landscape")) == 1) ? __builtin_strcmp ((const char *)(p), ("Landscape")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("Landscape")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("Landscape")) && ((size_t)(const void *)((("Landscape")) + 1) - (size_t)(const void *)(("Landscape")) == 1) && (__s2_len = strlen (("Landscape")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("Landscape")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("Landscape")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("Landscape")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("Landscape")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("Landscape")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("Landscape"))))); }) : strncmp ((const char *)(p), ("Landscape"), sizeof("Landscape")-1)))==0)) {
        *porientation = CDSC_LANDSCAPE;
    }
    else {
        dsc_unknown(dsc);
    }
    return CDSC_OK;
}

static int
dsc_parse_order(CDSC *dsc)
{
    char *p;
    if ((dsc->page_order != CDSC_ORDER_UNKNOWN) &&
        (dsc->scan_section == scan_comments)) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_DUP_COMMENT, dsc->line,
                dsc->line_length);
        switch (rc) {
            case CDSC_RESPONSE_OK:
            case CDSC_RESPONSE_CANCEL:
                return CDSC_OK;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }
    if ((dsc->page_order != CDSC_ORDER_UNKNOWN) &&
        (dsc->scan_section == scan_trailer)) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_DUP_TRAILER, dsc->line,
                dsc->line_length);
        switch (rc) {
            case CDSC_RESPONSE_OK:
            case CDSC_RESPONSE_CANCEL:
                break;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }

    p = dsc->line + ((((__extension__ (__builtin_constant_p (sizeof(("%%+"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%+"))-1))) || (__builtin_constant_p ((("%%+"))) && strlen ((("%%+"))) < ((size_t) (sizeof(("%%+"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%+"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%+"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%+"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) && (__s2_len = strlen ((("%%+"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%+"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%+"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%+"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%+"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%+")))))); }) : strncmp ((const char *)((dsc->line)), (("%%+")), sizeof(("%%+"))-1)))==0)) ? 3 : 13);
    while ((((*p)==' ') || ((*p)=='\t')))
        p++;
    if (((__extension__ (__builtin_constant_p (sizeof("atend")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("atend")-1))) || (__builtin_constant_p (("atend")) && strlen (("atend")) < ((size_t) (sizeof("atend")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("atend")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("atend")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("atend")) && ((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("atend")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("atend")) && ((size_t)(const void *)((("atend")) + 1) - (size_t)(const void *)(("atend")) == 1) && (__s2_len = strlen (("atend")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("atend")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("atend")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("atend")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("atend")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("atend")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("atend"))))); }) : strncmp ((const char *)(p), ("atend"), sizeof("atend")-1)))==0)) {
        if (dsc->scan_section == scan_trailer)
            dsc_unknown(dsc);
        else {
            int rc = dsc_error(dsc, CDSC_MESSAGE_ATEND, dsc->line,
                    dsc->line_length);
            switch (rc) {
                case CDSC_RESPONSE_OK:


                    break;
                case CDSC_RESPONSE_CANCEL:

                    break;
                case CDSC_RESPONSE_IGNORE_ALL:
                    return CDSC_NOTDSC;
            }
        }
    }
    else if (((__extension__ (__builtin_constant_p (sizeof("(atend)")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("(atend)")-1))) || (__builtin_constant_p (("(atend)")) && strlen (("(atend)")) < ((size_t) (sizeof("(atend)")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("(atend)")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("(atend)")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("(atend)")) && ((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("(atend)")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("(atend)")) && ((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) && (__s2_len = strlen (("(atend)")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("(atend)")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("(atend)")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("(atend)")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("(atend)")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("(atend)")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("(atend)"))))); }) : strncmp ((const char *)(p), ("(atend)"), sizeof("(atend)")-1)))==0)) {
        if (dsc->scan_section == scan_trailer)
            dsc_unknown(dsc);


    }
    else if (((__extension__ (__builtin_constant_p (sizeof("Ascend")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("Ascend")-1))) || (__builtin_constant_p (("Ascend")) && strlen (("Ascend")) < ((size_t) (sizeof("Ascend")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("Ascend")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("Ascend")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("Ascend")) + 1) - (size_t)(const void *)(("Ascend")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("Ascend")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("Ascend")) && ((size_t)(const void *)((("Ascend")) + 1) - (size_t)(const void *)(("Ascend")) == 1) ? __builtin_strcmp ((const char *)(p), ("Ascend")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("Ascend")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("Ascend")) && ((size_t)(const void *)((("Ascend")) + 1) - (size_t)(const void *)(("Ascend")) == 1) && (__s2_len = strlen (("Ascend")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("Ascend")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("Ascend")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("Ascend")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("Ascend")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("Ascend")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("Ascend"))))); }) : strncmp ((const char *)(p), ("Ascend"), sizeof("Ascend")-1)))==0)) {
        dsc->page_order = CDSC_ASCEND;
    }
    else if (((__extension__ (__builtin_constant_p (sizeof("Descend")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("Descend")-1))) || (__builtin_constant_p (("Descend")) && strlen (("Descend")) < ((size_t) (sizeof("Descend")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("Descend")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("Descend")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("Descend")) + 1) - (size_t)(const void *)(("Descend")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("Descend")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("Descend")) && ((size_t)(const void *)((("Descend")) + 1) - (size_t)(const void *)(("Descend")) == 1) ? __builtin_strcmp ((const char *)(p), ("Descend")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("Descend")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("Descend")) && ((size_t)(const void *)((("Descend")) + 1) - (size_t)(const void *)(("Descend")) == 1) && (__s2_len = strlen (("Descend")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("Descend")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("Descend")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("Descend")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("Descend")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("Descend")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("Descend"))))); }) : strncmp ((const char *)(p), ("Descend"), sizeof("Descend")-1)))==0)) {
        dsc->page_order = CDSC_DESCEND;
    }
    else if (((__extension__ (__builtin_constant_p (sizeof("Special")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("Special")-1))) || (__builtin_constant_p (("Special")) && strlen (("Special")) < ((size_t) (sizeof("Special")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("Special")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("Special")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("Special")) + 1) - (size_t)(const void *)(("Special")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("Special")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("Special")) && ((size_t)(const void *)((("Special")) + 1) - (size_t)(const void *)(("Special")) == 1) ? __builtin_strcmp ((const char *)(p), ("Special")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("Special")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("Special")) && ((size_t)(const void *)((("Special")) + 1) - (size_t)(const void *)(("Special")) == 1) && (__s2_len = strlen (("Special")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("Special")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("Special")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("Special")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("Special")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("Special")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("Special"))))); }) : strncmp ((const char *)(p), ("Special"), sizeof("Special")-1)))==0)) {
        dsc->page_order = CDSC_SPECIAL;
    }
    else {
        dsc_unknown(dsc);
    }
    return CDSC_OK;
}

static int
dsc_parse_media(CDSC *dsc, const CDSCMEDIA **page_media)
{
    char media_name[256];
    int n = (((__extension__ (__builtin_constant_p (sizeof(("%%+"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%+"))-1))) || (__builtin_constant_p ((("%%+"))) && strlen ((("%%+"))) < ((size_t) (sizeof(("%%+"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%+"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%+"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%+"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) && (__s2_len = strlen ((("%%+"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%+"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%+"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%+"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%+"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%+")))))); }) : strncmp ((const char *)((dsc->line)), (("%%+")), sizeof(("%%+"))-1)))==0)) ? 3 : 12;
    unsigned int i;

    if (dsc_copy_string(media_name, sizeof(media_name)-1,
        dsc->line+n, dsc->line_length-n, ((void*)0))) {
        for (i=0; i<dsc->media_count; i++) {
            if (dsc->media[i]->name &&
                (dsc_stricmp(media_name, dsc->media[i]->name) == 0)) {
                *page_media = dsc->media[i];
                return CDSC_OK;
            }
        }
    }
    dsc_unknown(dsc);

    return CDSC_OK;
}

static int
dsc_parse_document_media(CDSC *dsc)
{
    unsigned int i, n;
    CDSCMEDIA lmedia;
    GSBOOL blank_line;

    if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentMedia:"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%DocumentMedia:"))-1))) || (__builtin_constant_p ((("%%DocumentMedia:"))) && strlen ((("%%DocumentMedia:"))) < ((size_t) (sizeof(("%%DocumentMedia:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%DocumentMedia:"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%DocumentMedia:"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentMedia:"))) + 1) - (size_t)(const void *)((("%%DocumentMedia:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%DocumentMedia:"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentMedia:"))) && ((size_t)(const void *)(((("%%DocumentMedia:"))) + 1) - (size_t)(const void *)((("%%DocumentMedia:"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%DocumentMedia:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentMedia:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentMedia:"))) && ((size_t)(const void *)(((("%%DocumentMedia:"))) + 1) - (size_t)(const void *)((("%%DocumentMedia:"))) == 1) && (__s2_len = strlen ((("%%DocumentMedia:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%DocumentMedia:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentMedia:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentMedia:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentMedia:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentMedia:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%DocumentMedia:")))))); }) : strncmp ((const char *)((dsc->line)), (("%%DocumentMedia:")), sizeof(("%%DocumentMedia:"))-1)))==0)))
        n = 16;
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%+"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%+"))-1))) || (__builtin_constant_p ((("%%+"))) && strlen ((("%%+"))) < ((size_t) (sizeof(("%%+"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%+"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%+"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%+"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) && (__s2_len = strlen ((("%%+"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%+"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%+"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%+"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%+"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%+")))))); }) : strncmp ((const char *)((dsc->line)), (("%%+")), sizeof(("%%+"))-1)))==0)))
        n = 3;
    else
        return CDSC_ERROR;


    blank_line = ((GSBOOL)(!((GSBOOL)0)));
    for (i=n; i<dsc->line_length; i++) {
        if (!((((dsc->line[i])==' ') || ((dsc->line[i])=='\t')) || (((dsc->line[i])=='\r') || ((dsc->line[i])=='\n')))) {
            blank_line = ((GSBOOL)0);
            break;
        }
    }

    if (!blank_line) {
        char name[256];
        char colour[256];
        char type[256];
        lmedia.name = lmedia.colour = lmedia.type = (char *)((void*)0);
        lmedia.width = lmedia.height = lmedia.weight = 0;
        lmedia.mediabox = (CDSCBBOX *)((void*)0);
        lmedia.name = dsc_copy_string(name, sizeof(name),
                dsc->line+n, dsc->line_length-n, &i);
        n+=i;
        if (i)
            lmedia.width = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
        n+=i;
        if (i)
            lmedia.height = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
        n+=i;
        if (i)
            lmedia.weight = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
        n+=i;
        if (i)
            lmedia.colour = dsc_copy_string(colour, sizeof(colour),
                dsc->line+n, dsc->line_length-n, &i);
        n+=i;
        if (i)
            lmedia.type = dsc_copy_string(type, sizeof(type),
                dsc->line+n, dsc->line_length-n, &i);

        if (i==0)
            dsc_unknown(dsc);
        else {
            if (dsc_add_media(dsc, &lmedia))
                return CDSC_ERROR;
        }
    }
    return CDSC_OK;
}




static int
dsc_parse_viewing_orientation(CDSC *dsc, CDSCCTM **pctm)
{
    CDSCCTM ctm;
    unsigned int i, n;

    if (*pctm != ((void*)0)) {
        dsc_memfree(dsc, *pctm);
        *pctm = ((void*)0);
    }

    n = (((__extension__ (__builtin_constant_p (sizeof(("%%+"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%+"))-1))) || (__builtin_constant_p ((("%%+"))) && strlen ((("%%+"))) < ((size_t) (sizeof(("%%+"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%+"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%+"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%+"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) && (__s2_len = strlen ((("%%+"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%+"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%+"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%+"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%+"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%+")))))); }) : strncmp ((const char *)((dsc->line)), (("%%+")), sizeof(("%%+"))-1)))==0)) ? 3 : 21;
    while ((((dsc->line[n])==' ') || ((dsc->line[n])=='\t')))
        n++;

                   ctm.xy = ctm.yx = ctm.yy = 0.0;
    ctm.xx = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
    n += i;
    if (i)
        ctm.xy = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
    n += i;
    if (i)
        ctm.yx = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
    n += i;
    if (i)
        ctm.yy = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
    if (i==0) {
        dsc_unknown(dsc);
    }
    else {
        *pctm = (CDSCCTM *)dsc_memalloc(dsc, sizeof(CDSCCTM));
        if (*pctm == ((void*)0))
            return CDSC_ERROR;
        **pctm = ctm;
    }
    return CDSC_OK;
}





static int
dsc_scan_type(CDSC *dsc)
{
    unsigned char *p;
    unsigned char *line = (unsigned char *)(dsc->data + dsc->data_index);
    int length = dsc->data_length - dsc->data_index;
# 2015 "./psi/dscparse.c"
    if (length == 0)
        return 11;



    if (dsc->skip_bytes) {
        int cnt = (((dsc->skip_bytes) < ((int)(dsc->data_length - dsc->data_index))) ? (dsc->skip_bytes) : ((int)(dsc->data_length - dsc->data_index)));

        dsc->skip_bytes -= cnt;
        dsc->data_index += cnt;
        length -= cnt;
        line += cnt;
        if (dsc->skip_bytes != 0)
            return 11;
    }

    if (dsc->skip_pjl) {

        while (length >= 2) {
            while (length && !(((line[0])=='\r') || ((line[0])=='\n'))) {

                line++;
                dsc->data_index++;
                length--;
            }
            while ((length >= 2) && (((line[0])=='\r') || ((line[0])=='\n')) && (((line[1])=='\r') || ((line[1])=='\n'))) {

                line++;
                dsc->data_index++;
                length--;
            }
            if (length < 2)
                return 11;

            if ((((line[0])=='\r') || ((line[0])=='\n')) && line[1]=='%') {
                line++;
                dsc->data_index++;
                length--;
                dsc->skip_pjl = ((GSBOOL)0);
                break;
            }
            else {
                line++;
                dsc->data_index++;
                length--;
            }
        }
        if (dsc->skip_pjl)
            return 11;
    }

    if (length == 0)
        return 11;

    if (line[0] == '\004') {
        line++;
        dsc->data_index++;
        length--;
        dsc->ctrld = ((GSBOOL)(!((GSBOOL)0)));
    }

    if (line[0] == '\033') {

        if (length < 9)
            return 11;
        if (((__extension__ (__builtin_constant_p (sizeof("\033%-12345X")-1) && ((__builtin_constant_p ((const char *)(line)) && strlen ((const char *)(line)) < ((size_t) (sizeof("\033%-12345X")-1))) || (__builtin_constant_p (("\033%-12345X")) && strlen (("\033%-12345X")) < ((size_t) (sizeof("\033%-12345X")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(line)) && __builtin_constant_p (("\033%-12345X")) && (__s1_len = strlen ((const char *)(line)), __s2_len = strlen (("\033%-12345X")), (!((size_t)(const void *)(((const char *)(line)) + 1) - (size_t)(const void *)((const char *)(line)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("\033%-12345X")) + 1) - (size_t)(const void *)(("\033%-12345X")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(line), ("\033%-12345X")) : (__builtin_constant_p ((const char *)(line)) && ((size_t)(const void *)(((const char *)(line)) + 1) - (size_t)(const void *)((const char *)(line)) == 1) && (__s1_len = strlen ((const char *)(line)), __s1_len < 4) ? (__builtin_constant_p (("\033%-12345X")) && ((size_t)(const void *)((("\033%-12345X")) + 1) - (size_t)(const void *)(("\033%-12345X")) == 1) ? __builtin_strcmp ((const char *)(line), ("\033%-12345X")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("\033%-12345X")); register int __result = (((const unsigned char *) (const char *) ((const char *)(line)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(line)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(line)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(line)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("\033%-12345X")) && ((size_t)(const void *)((("\033%-12345X")) + 1) - (size_t)(const void *)(("\033%-12345X")) == 1) && (__s2_len = strlen (("\033%-12345X")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(line)) && ((size_t)(const void *)(((const char *)(line)) + 1) - (size_t)(const void *)((const char *)(line)) == 1) ? __builtin_strcmp ((const char *)(line), ("\033%-12345X")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(line)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("\033%-12345X")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("\033%-12345X")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("\033%-12345X")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("\033%-12345X")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(line), ("\033%-12345X"))))); }) : strncmp ((const char *)(line), ("\033%-12345X"), sizeof("\033%-12345X")-1)))==0)) {
            dsc->skip_pjl = ((GSBOOL)(!((GSBOOL)0)));
            dsc->pjl = ((GSBOOL)(!((GSBOOL)0)));
            dsc->data_index += 9;
            return dsc_scan_type(dsc);
        }
    }

    if ((line[0]==0x0) && (length < 2))
        return 11;
    if ((line[0]==0x0) && (line[1] >= 1) && (line[1] <= 63) && (length < 128))
        return 11;
    if ((line[0]==0x0) && (line[1] == 0x5) && (length < 4))
        return 11;
    if ((line[0]==0xc5) && (length < 4))
        return 11;

    if ((line[0]==0xc5) && (line[1]==0xd0) &&
         (line[2]==0xd3) && (line[3]==0xc6) ) {


        if (length < 30)
            return 11;
        dsc->line = (char *)line;
        if (dsc_read_doseps(dsc))
            return CDSC_ERROR;
    }
    else if ((line[0]==0x0) && (line[1]==0x05) &&
         (line[2]==0x16) && ((line[3]==0x0) || (line[3] == 0x07))) {

        GSDWORD version;
        GSWORD entries;
        if (length < 26)
            return 11;
        version = dsc_get_bigendian_dword(line+4);
        entries = dsc_get_bigendian_word(line+24);
        if ((version == 0x00010000) || (version == 0x00020000)) {
            if (length < (int)(26 + entries * 12))
                return 11;
            dsc->line = (char *)line;
            if (dsc_read_applesingle(dsc))
                return CDSC_ERROR;
        }
    }
    else if ((line[0]==0x0) &&
        (line[1] >= 1) && (line[1] <= 63) &&
        (line[74]==0x0) &&
        (line[65]=='E') && (line[66]=='P') &&
        (line[67]=='S') && (line[68]=='F')) {

        dsc->line = (char *)line;
        if (dsc_read_macbin(dsc))
            return CDSC_ERROR;
    }
    else {
        if (length < 2)
            return 11;
        if ((line[0] == '%') && (line[1] == 'P')) {
            if (length < 5)
                return 11;
            if (((__extension__ (__builtin_constant_p (sizeof("%PDF-")-1) && ((__builtin_constant_p ((const char *)(line)) && strlen ((const char *)(line)) < ((size_t) (sizeof("%PDF-")-1))) || (__builtin_constant_p (("%PDF-")) && strlen (("%PDF-")) < ((size_t) (sizeof("%PDF-")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(line)) && __builtin_constant_p (("%PDF-")) && (__s1_len = strlen ((const char *)(line)), __s2_len = strlen (("%PDF-")), (!((size_t)(const void *)(((const char *)(line)) + 1) - (size_t)(const void *)((const char *)(line)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("%PDF-")) + 1) - (size_t)(const void *)(("%PDF-")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(line), ("%PDF-")) : (__builtin_constant_p ((const char *)(line)) && ((size_t)(const void *)(((const char *)(line)) + 1) - (size_t)(const void *)((const char *)(line)) == 1) && (__s1_len = strlen ((const char *)(line)), __s1_len < 4) ? (__builtin_constant_p (("%PDF-")) && ((size_t)(const void *)((("%PDF-")) + 1) - (size_t)(const void *)(("%PDF-")) == 1) ? __builtin_strcmp ((const char *)(line), ("%PDF-")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("%PDF-")); register int __result = (((const unsigned char *) (const char *) ((const char *)(line)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(line)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(line)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(line)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("%PDF-")) && ((size_t)(const void *)((("%PDF-")) + 1) - (size_t)(const void *)(("%PDF-")) == 1) && (__s2_len = strlen (("%PDF-")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(line)) && ((size_t)(const void *)(((const char *)(line)) + 1) - (size_t)(const void *)((const char *)(line)) == 1) ? __builtin_strcmp ((const char *)(line), ("%PDF-")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(line)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("%PDF-")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("%PDF-")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("%PDF-")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("%PDF-")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(line), ("%PDF-"))))); }) : strncmp ((const char *)(line), ("%PDF-"), sizeof("%PDF-")-1)))==0)) {
                dsc->pdf = ((GSBOOL)(!((GSBOOL)0)));
                dsc->scan_section = scan_comments;
                return CDSC_OK;
            }
        }
    }



    if (dsc_read_line(dsc) <= 0)
        return 11;

    dsc->dsc_version = dsc_add_line(dsc, dsc->line, dsc->line_length);
    if (((__extension__ (__builtin_constant_p (sizeof("%!PS-Adobe")-1) && ((__builtin_constant_p ((const char *)(dsc->line)) && strlen ((const char *)(dsc->line)) < ((size_t) (sizeof("%!PS-Adobe")-1))) || (__builtin_constant_p (("%!PS-Adobe")) && strlen (("%!PS-Adobe")) < ((size_t) (sizeof("%!PS-Adobe")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(dsc->line)) && __builtin_constant_p (("%!PS-Adobe")) && (__s1_len = strlen ((const char *)(dsc->line)), __s2_len = strlen (("%!PS-Adobe")), (!((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("%!PS-Adobe")) + 1) - (size_t)(const void *)(("%!PS-Adobe")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(dsc->line), ("%!PS-Adobe")) : (__builtin_constant_p ((const char *)(dsc->line)) && ((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) && (__s1_len = strlen ((const char *)(dsc->line)), __s1_len < 4) ? (__builtin_constant_p (("%!PS-Adobe")) && ((size_t)(const void *)((("%!PS-Adobe")) + 1) - (size_t)(const void *)(("%!PS-Adobe")) == 1) ? __builtin_strcmp ((const char *)(dsc->line), ("%!PS-Adobe")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("%!PS-Adobe")); register int __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("%!PS-Adobe")) && ((size_t)(const void *)((("%!PS-Adobe")) + 1) - (size_t)(const void *)(("%!PS-Adobe")) == 1) && (__s2_len = strlen (("%!PS-Adobe")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(dsc->line)) && ((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) ? __builtin_strcmp ((const char *)(dsc->line), ("%!PS-Adobe")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(dsc->line)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("%!PS-Adobe")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("%!PS-Adobe")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("%!PS-Adobe")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("%!PS-Adobe")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(dsc->line), ("%!PS-Adobe"))))); }) : strncmp ((const char *)(dsc->line), ("%!PS-Adobe"), sizeof("%!PS-Adobe")-1)))==0)) {
        dsc->dsc = ((GSBOOL)(!((GSBOOL)0)));
        dsc->begincomments = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
        if (dsc->dsc_version == ((void*)0))
            return CDSC_ERROR;
        p = (unsigned char *)dsc->line + 14;
        while ((((*p)==' ') || ((*p)=='\t')))
            p++;
        if (((__extension__ (__builtin_constant_p (sizeof("EPSF-")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("EPSF-")-1))) || (__builtin_constant_p (("EPSF-")) && strlen (("EPSF-")) < ((size_t) (sizeof("EPSF-")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("EPSF-")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("EPSF-")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("EPSF-")) + 1) - (size_t)(const void *)(("EPSF-")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("EPSF-")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("EPSF-")) && ((size_t)(const void *)((("EPSF-")) + 1) - (size_t)(const void *)(("EPSF-")) == 1) ? __builtin_strcmp ((const char *)(p), ("EPSF-")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("EPSF-")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("EPSF-")) && ((size_t)(const void *)((("EPSF-")) + 1) - (size_t)(const void *)(("EPSF-")) == 1) && (__s2_len = strlen (("EPSF-")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("EPSF-")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("EPSF-")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("EPSF-")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("EPSF-")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("EPSF-")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("EPSF-"))))); }) : strncmp ((const char *)(p), ("EPSF-"), sizeof("EPSF-")-1)))==0))
            dsc->epsf = ((GSBOOL)(!((GSBOOL)0)));
        dsc->scan_section = scan_comments;
        return CDSC_PSADOBE;
    }
    if (((__extension__ (__builtin_constant_p (sizeof("%!")-1) && ((__builtin_constant_p ((const char *)(dsc->line)) && strlen ((const char *)(dsc->line)) < ((size_t) (sizeof("%!")-1))) || (__builtin_constant_p (("%!")) && strlen (("%!")) < ((size_t) (sizeof("%!")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(dsc->line)) && __builtin_constant_p (("%!")) && (__s1_len = strlen ((const char *)(dsc->line)), __s2_len = strlen (("%!")), (!((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("%!")) + 1) - (size_t)(const void *)(("%!")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(dsc->line), ("%!")) : (__builtin_constant_p ((const char *)(dsc->line)) && ((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) && (__s1_len = strlen ((const char *)(dsc->line)), __s1_len < 4) ? (__builtin_constant_p (("%!")) && ((size_t)(const void *)((("%!")) + 1) - (size_t)(const void *)(("%!")) == 1) ? __builtin_strcmp ((const char *)(dsc->line), ("%!")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("%!")); register int __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("%!")) && ((size_t)(const void *)((("%!")) + 1) - (size_t)(const void *)(("%!")) == 1) && (__s2_len = strlen (("%!")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(dsc->line)) && ((size_t)(const void *)(((const char *)(dsc->line)) + 1) - (size_t)(const void *)((const char *)(dsc->line)) == 1) ? __builtin_strcmp ((const char *)(dsc->line), ("%!")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(dsc->line)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("%!")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("%!")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("%!")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("%!")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(dsc->line), ("%!"))))); }) : strncmp ((const char *)(dsc->line), ("%!"), sizeof("%!")-1)))==0)) {
        dsc->scan_section = scan_comments;
        return CDSC_NOTDSC;
    }

    dsc->scan_section = scan_comments;
    return CDSC_NOTDSC;
}

static int
dsc_scan_comments(CDSC *dsc)
{






    char *line = dsc->line;
    GSBOOL continued = ((GSBOOL)0);
    dsc->id = CDSC_OK;
    if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndComments"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndComments"))-1))) || (__builtin_constant_p ((("%%EndComments"))) && strlen ((("%%EndComments"))) < ((size_t) (sizeof(("%%EndComments"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndComments"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndComments"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndComments"))) + 1) - (size_t)(const void *)((("%%EndComments"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndComments"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndComments"))) && ((size_t)(const void *)(((("%%EndComments"))) + 1) - (size_t)(const void *)((("%%EndComments"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndComments"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndComments"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndComments"))) && ((size_t)(const void *)(((("%%EndComments"))) + 1) - (size_t)(const void *)((("%%EndComments"))) == 1) && (__s2_len = strlen ((("%%EndComments"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndComments"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndComments"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndComments"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndComments"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndComments"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndComments")))))); }) : strncmp ((const char *)((line)), (("%%EndComments")), sizeof(("%%EndComments"))-1)))==0))) {
        dsc->id = CDSC_ENDCOMMENTS;
        dsc->endcomments = ((dsc)->data_offset + (dsc)->data_index);
        dsc->scan_section = scan_pre_preview;
        return CDSC_OK;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginComments"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginComments"))-1))) || (__builtin_constant_p ((("%%BeginComments"))) && strlen ((("%%BeginComments"))) < ((size_t) (sizeof(("%%BeginComments"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginComments"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginComments"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginComments"))) + 1) - (size_t)(const void *)((("%%BeginComments"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginComments"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginComments"))) && ((size_t)(const void *)(((("%%BeginComments"))) + 1) - (size_t)(const void *)((("%%BeginComments"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginComments"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginComments"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginComments"))) && ((size_t)(const void *)(((("%%BeginComments"))) + 1) - (size_t)(const void *)((("%%BeginComments"))) == 1) && (__s2_len = strlen ((("%%BeginComments"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginComments"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginComments"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginComments"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginComments"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginComments"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginComments")))))); }) : strncmp ((const char *)((line)), (("%%BeginComments")), sizeof(("%%BeginComments"))-1)))==0))) {

        dsc->id = CDSC_BEGINCOMMENTS;
    }
    else if (dsc_is_section(line)) {
        dsc->endcomments = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
        dsc->scan_section = scan_pre_preview;
        return 10;
    }
    else if (line[0] == '%' && ((((line[1])==' ') || ((line[1])=='\t')) || (((line[1])=='\r') || ((line[1])=='\n')))) {
        dsc->endcomments = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
        dsc->scan_section = scan_pre_preview;
        return 10;
    }
    else if (line[0] != '%') {
        dsc->id = CDSC_OK;
        dsc->endcomments = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
        dsc->scan_section = scan_pre_preview;
        return 10;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%Begin"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Begin"))-1))) || (__builtin_constant_p ((("%%Begin"))) && strlen ((("%%Begin"))) < ((size_t) (sizeof(("%%Begin"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Begin"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Begin"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Begin"))) + 1) - (size_t)(const void *)((("%%Begin"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Begin"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Begin"))) && ((size_t)(const void *)(((("%%Begin"))) + 1) - (size_t)(const void *)((("%%Begin"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Begin"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Begin"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Begin"))) && ((size_t)(const void *)(((("%%Begin"))) + 1) - (size_t)(const void *)((("%%Begin"))) == 1) && (__s2_len = strlen ((("%%Begin"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Begin"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Begin"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Begin"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Begin"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Begin"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Begin")))))); }) : strncmp ((const char *)((line)), (("%%Begin")), sizeof(("%%Begin"))-1)))==0))) {
        dsc->endcomments = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
        dsc->scan_section = scan_pre_preview;
        return 10;
    }
# 2228 "./psi/dscparse.c"
    if ((((__extension__ (__builtin_constant_p (sizeof(("%%+"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%+"))-1))) || (__builtin_constant_p ((("%%+"))) && strlen ((("%%+"))) < ((size_t) (sizeof(("%%+"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%+"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%+"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%+"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%+"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) && (__s2_len = strlen ((("%%+"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%+"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%+"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%+"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%+"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%+")))))); }) : strncmp ((const char *)((line)), (("%%+")), sizeof(("%%+"))-1)))==0))) {
        line = dsc->last_line;
        continued = ((GSBOOL)(!((GSBOOL)0)));
    }
    else
        dsc_save_line(dsc);

    if ((((__extension__ (__builtin_constant_p (sizeof(("%%Pages:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Pages:"))-1))) || (__builtin_constant_p ((("%%Pages:"))) && strlen ((("%%Pages:"))) < ((size_t) (sizeof(("%%Pages:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Pages:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Pages:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Pages:"))) + 1) - (size_t)(const void *)((("%%Pages:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Pages:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Pages:"))) && ((size_t)(const void *)(((("%%Pages:"))) + 1) - (size_t)(const void *)((("%%Pages:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Pages:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Pages:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Pages:"))) && ((size_t)(const void *)(((("%%Pages:"))) + 1) - (size_t)(const void *)((("%%Pages:"))) == 1) && (__s2_len = strlen ((("%%Pages:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Pages:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Pages:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Pages:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Pages:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Pages:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Pages:")))))); }) : strncmp ((const char *)((line)), (("%%Pages:")), sizeof(("%%Pages:"))-1)))==0))) {
        dsc->id = CDSC_PAGES;
        if (dsc_parse_pages(dsc) != 0)
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%Creator:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Creator:"))-1))) || (__builtin_constant_p ((("%%Creator:"))) && strlen ((("%%Creator:"))) < ((size_t) (sizeof(("%%Creator:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Creator:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Creator:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Creator:"))) + 1) - (size_t)(const void *)((("%%Creator:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Creator:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Creator:"))) && ((size_t)(const void *)(((("%%Creator:"))) + 1) - (size_t)(const void *)((("%%Creator:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Creator:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Creator:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Creator:"))) && ((size_t)(const void *)(((("%%Creator:"))) + 1) - (size_t)(const void *)((("%%Creator:"))) == 1) && (__s2_len = strlen ((("%%Creator:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Creator:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Creator:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Creator:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Creator:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Creator:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Creator:")))))); }) : strncmp ((const char *)((line)), (("%%Creator:")), sizeof(("%%Creator:"))-1)))==0))) {
        unsigned int n = continued ? 3 : 10;
        dsc->id = CDSC_CREATOR;
        dsc->dsc_creator = dsc_add_line(dsc, dsc->line + n, dsc->line_length - n);
        if (dsc->dsc_creator==((void*)0))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%CreationDate:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%CreationDate:"))-1))) || (__builtin_constant_p ((("%%CreationDate:"))) && strlen ((("%%CreationDate:"))) < ((size_t) (sizeof(("%%CreationDate:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%CreationDate:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%CreationDate:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%CreationDate:"))) + 1) - (size_t)(const void *)((("%%CreationDate:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%CreationDate:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%CreationDate:"))) && ((size_t)(const void *)(((("%%CreationDate:"))) + 1) - (size_t)(const void *)((("%%CreationDate:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%CreationDate:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%CreationDate:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%CreationDate:"))) && ((size_t)(const void *)(((("%%CreationDate:"))) + 1) - (size_t)(const void *)((("%%CreationDate:"))) == 1) && (__s2_len = strlen ((("%%CreationDate:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%CreationDate:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%CreationDate:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%CreationDate:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%CreationDate:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%CreationDate:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%CreationDate:")))))); }) : strncmp ((const char *)((line)), (("%%CreationDate:")), sizeof(("%%CreationDate:"))-1)))==0))) {
        unsigned int n = continued ? 3 : 15;
        dsc->id = CDSC_CREATIONDATE;
        dsc->dsc_date = dsc_add_line(dsc, dsc->line + n, dsc->line_length - n);
        if (dsc->dsc_date==((void*)0))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%Title:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Title:"))-1))) || (__builtin_constant_p ((("%%Title:"))) && strlen ((("%%Title:"))) < ((size_t) (sizeof(("%%Title:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Title:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Title:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Title:"))) + 1) - (size_t)(const void *)((("%%Title:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Title:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Title:"))) && ((size_t)(const void *)(((("%%Title:"))) + 1) - (size_t)(const void *)((("%%Title:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Title:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Title:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Title:"))) && ((size_t)(const void *)(((("%%Title:"))) + 1) - (size_t)(const void *)((("%%Title:"))) == 1) && (__s2_len = strlen ((("%%Title:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Title:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Title:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Title:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Title:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Title:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Title:")))))); }) : strncmp ((const char *)((line)), (("%%Title:")), sizeof(("%%Title:"))-1)))==0))) {
        unsigned int n = continued ? 3 : 8;
        dsc->id = CDSC_TITLE;
        dsc->dsc_title = dsc_add_line(dsc, dsc->line + n, dsc->line_length - n);
        if (dsc->dsc_title==((void*)0))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%For:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%For:"))-1))) || (__builtin_constant_p ((("%%For:"))) && strlen ((("%%For:"))) < ((size_t) (sizeof(("%%For:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%For:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%For:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%For:"))) + 1) - (size_t)(const void *)((("%%For:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%For:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%For:"))) && ((size_t)(const void *)(((("%%For:"))) + 1) - (size_t)(const void *)((("%%For:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%For:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%For:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%For:"))) && ((size_t)(const void *)(((("%%For:"))) + 1) - (size_t)(const void *)((("%%For:"))) == 1) && (__s2_len = strlen ((("%%For:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%For:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%For:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%For:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%For:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%For:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%For:")))))); }) : strncmp ((const char *)((line)), (("%%For:")), sizeof(("%%For:"))-1)))==0))) {
        unsigned int n = continued ? 3 : 6;
        dsc->id = CDSC_FOR;
        dsc->dsc_for = dsc_add_line(dsc, dsc->line + n, dsc->line_length - n);
        if (dsc->dsc_for==((void*)0))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%LanguageLevel:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%LanguageLevel:"))-1))) || (__builtin_constant_p ((("%%LanguageLevel:"))) && strlen ((("%%LanguageLevel:"))) < ((size_t) (sizeof(("%%LanguageLevel:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%LanguageLevel:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%LanguageLevel:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%LanguageLevel:"))) + 1) - (size_t)(const void *)((("%%LanguageLevel:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%LanguageLevel:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%LanguageLevel:"))) && ((size_t)(const void *)(((("%%LanguageLevel:"))) + 1) - (size_t)(const void *)((("%%LanguageLevel:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%LanguageLevel:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%LanguageLevel:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%LanguageLevel:"))) && ((size_t)(const void *)(((("%%LanguageLevel:"))) + 1) - (size_t)(const void *)((("%%LanguageLevel:"))) == 1) && (__s2_len = strlen ((("%%LanguageLevel:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%LanguageLevel:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%LanguageLevel:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%LanguageLevel:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%LanguageLevel:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%LanguageLevel:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%LanguageLevel:")))))); }) : strncmp ((const char *)((line)), (("%%LanguageLevel:")), sizeof(("%%LanguageLevel:"))-1)))==0))) {
        unsigned int n = continued ? 3 : 16;
        unsigned int i;
        int ll;
        dsc->id = CDSC_LANGUAGELEVEL;
        ll = dsc_get_int(dsc->line+n, dsc->line_length-n, &i);
        if (i) {
            if ( (ll==1) || (ll==2) || (ll==3) )
                dsc->language_level = ll;
            else {
                dsc_unknown(dsc);
            }
        }
        else
            dsc_unknown(dsc);
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BoundingBox:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BoundingBox:"))-1))) || (__builtin_constant_p ((("%%BoundingBox:"))) && strlen ((("%%BoundingBox:"))) < ((size_t) (sizeof(("%%BoundingBox:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BoundingBox:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BoundingBox:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BoundingBox:"))) + 1) - (size_t)(const void *)((("%%BoundingBox:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BoundingBox:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BoundingBox:"))) && ((size_t)(const void *)(((("%%BoundingBox:"))) + 1) - (size_t)(const void *)((("%%BoundingBox:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BoundingBox:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BoundingBox:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BoundingBox:"))) && ((size_t)(const void *)(((("%%BoundingBox:"))) + 1) - (size_t)(const void *)((("%%BoundingBox:"))) == 1) && (__s2_len = strlen ((("%%BoundingBox:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BoundingBox:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BoundingBox:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BoundingBox:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BoundingBox:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BoundingBox:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BoundingBox:")))))); }) : strncmp ((const char *)((line)), (("%%BoundingBox:")), sizeof(("%%BoundingBox:"))-1)))==0))) {
        dsc->id = CDSC_BOUNDINGBOX;
        if (dsc_parse_bounding_box(dsc, &(dsc->bbox), continued ? 3 : 14))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%HiResBoundingBox:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%HiResBoundingBox:"))-1))) || (__builtin_constant_p ((("%%HiResBoundingBox:"))) && strlen ((("%%HiResBoundingBox:"))) < ((size_t) (sizeof(("%%HiResBoundingBox:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%HiResBoundingBox:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%HiResBoundingBox:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%HiResBoundingBox:"))) + 1) - (size_t)(const void *)((("%%HiResBoundingBox:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%HiResBoundingBox:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%HiResBoundingBox:"))) && ((size_t)(const void *)(((("%%HiResBoundingBox:"))) + 1) - (size_t)(const void *)((("%%HiResBoundingBox:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%HiResBoundingBox:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%HiResBoundingBox:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%HiResBoundingBox:"))) && ((size_t)(const void *)(((("%%HiResBoundingBox:"))) + 1) - (size_t)(const void *)((("%%HiResBoundingBox:"))) == 1) && (__s2_len = strlen ((("%%HiResBoundingBox:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%HiResBoundingBox:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%HiResBoundingBox:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%HiResBoundingBox:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%HiResBoundingBox:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%HiResBoundingBox:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%HiResBoundingBox:")))))); }) : strncmp ((const char *)((line)), (("%%HiResBoundingBox:")), sizeof(("%%HiResBoundingBox:"))-1)))==0))) {
        dsc->id = CDSC_HIRESBOUNDINGBOX;
        if (dsc_parse_float_bounding_box(dsc, &(dsc->hires_bbox),
            continued ? 3 : 19))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%CropBox:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%CropBox:"))-1))) || (__builtin_constant_p ((("%%CropBox:"))) && strlen ((("%%CropBox:"))) < ((size_t) (sizeof(("%%CropBox:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%CropBox:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%CropBox:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%CropBox:"))) + 1) - (size_t)(const void *)((("%%CropBox:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%CropBox:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%CropBox:"))) && ((size_t)(const void *)(((("%%CropBox:"))) + 1) - (size_t)(const void *)((("%%CropBox:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%CropBox:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%CropBox:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%CropBox:"))) && ((size_t)(const void *)(((("%%CropBox:"))) + 1) - (size_t)(const void *)((("%%CropBox:"))) == 1) && (__s2_len = strlen ((("%%CropBox:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%CropBox:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%CropBox:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%CropBox:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%CropBox:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%CropBox:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%CropBox:")))))); }) : strncmp ((const char *)((line)), (("%%CropBox:")), sizeof(("%%CropBox:"))-1)))==0))) {
        dsc->id = CDSC_CROPBOX;
        if (dsc_parse_float_bounding_box(dsc, &(dsc->crop_box),
            continued ? 3 : 10))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%Orientation:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Orientation:"))-1))) || (__builtin_constant_p ((("%%Orientation:"))) && strlen ((("%%Orientation:"))) < ((size_t) (sizeof(("%%Orientation:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Orientation:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Orientation:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Orientation:"))) + 1) - (size_t)(const void *)((("%%Orientation:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Orientation:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Orientation:"))) && ((size_t)(const void *)(((("%%Orientation:"))) + 1) - (size_t)(const void *)((("%%Orientation:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Orientation:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Orientation:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Orientation:"))) && ((size_t)(const void *)(((("%%Orientation:"))) + 1) - (size_t)(const void *)((("%%Orientation:"))) == 1) && (__s2_len = strlen ((("%%Orientation:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Orientation:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Orientation:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Orientation:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Orientation:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Orientation:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Orientation:")))))); }) : strncmp ((const char *)((line)), (("%%Orientation:")), sizeof(("%%Orientation:"))-1)))==0))) {
        dsc->id = CDSC_ORIENTATION;
        if (dsc_parse_orientation(dsc, &(dsc->page_orientation),
                continued ? 3 : 14))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PageOrder:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PageOrder:"))-1))) || (__builtin_constant_p ((("%%PageOrder:"))) && strlen ((("%%PageOrder:"))) < ((size_t) (sizeof(("%%PageOrder:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PageOrder:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PageOrder:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PageOrder:"))) + 1) - (size_t)(const void *)((("%%PageOrder:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PageOrder:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PageOrder:"))) && ((size_t)(const void *)(((("%%PageOrder:"))) + 1) - (size_t)(const void *)((("%%PageOrder:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageOrder:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PageOrder:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PageOrder:"))) && ((size_t)(const void *)(((("%%PageOrder:"))) + 1) - (size_t)(const void *)((("%%PageOrder:"))) == 1) && (__s2_len = strlen ((("%%PageOrder:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageOrder:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PageOrder:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PageOrder:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PageOrder:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PageOrder:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PageOrder:")))))); }) : strncmp ((const char *)((line)), (("%%PageOrder:")), sizeof(("%%PageOrder:"))-1)))==0))) {
        dsc->id = CDSC_PAGEORDER;
        if (dsc_parse_order(dsc))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentMedia:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentMedia:"))-1))) || (__builtin_constant_p ((("%%DocumentMedia:"))) && strlen ((("%%DocumentMedia:"))) < ((size_t) (sizeof(("%%DocumentMedia:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentMedia:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentMedia:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentMedia:"))) + 1) - (size_t)(const void *)((("%%DocumentMedia:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentMedia:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentMedia:"))) && ((size_t)(const void *)(((("%%DocumentMedia:"))) + 1) - (size_t)(const void *)((("%%DocumentMedia:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentMedia:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentMedia:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentMedia:"))) && ((size_t)(const void *)(((("%%DocumentMedia:"))) + 1) - (size_t)(const void *)((("%%DocumentMedia:"))) == 1) && (__s2_len = strlen ((("%%DocumentMedia:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentMedia:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentMedia:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentMedia:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentMedia:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentMedia:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentMedia:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentMedia:")), sizeof(("%%DocumentMedia:"))-1)))==0))) {
        dsc->id = CDSC_DOCUMENTMEDIA;
        if (dsc_parse_document_media(dsc))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentPaperSizes:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentPaperSizes:"))-1))) || (__builtin_constant_p ((("%%DocumentPaperSizes:"))) && strlen ((("%%DocumentPaperSizes:"))) < ((size_t) (sizeof(("%%DocumentPaperSizes:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentPaperSizes:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentPaperSizes:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentPaperSizes:"))) + 1) - (size_t)(const void *)((("%%DocumentPaperSizes:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperSizes:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentPaperSizes:"))) && ((size_t)(const void *)(((("%%DocumentPaperSizes:"))) + 1) - (size_t)(const void *)((("%%DocumentPaperSizes:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperSizes:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentPaperSizes:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentPaperSizes:"))) && ((size_t)(const void *)(((("%%DocumentPaperSizes:"))) + 1) - (size_t)(const void *)((("%%DocumentPaperSizes:"))) == 1) && (__s2_len = strlen ((("%%DocumentPaperSizes:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperSizes:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentPaperSizes:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentPaperSizes:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentPaperSizes:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentPaperSizes:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperSizes:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentPaperSizes:")), sizeof(("%%DocumentPaperSizes:"))-1)))==0))) {

        unsigned int n = continued ? 3 : 21;
        unsigned int count = 0;
        unsigned int i = 1;
        char name[256];
        char *p;
        dsc->id = CDSC_DOCUMENTPAPERSIZES;
        while (i && (dsc->line[n]!='\r') && (dsc->line[n]!='\n')) {
            p = dsc_copy_string(name, sizeof(name)-1,
                    dsc->line+n, dsc->line_length-n, &i);
            if (i && p) {
                const CDSCMEDIA *m = dsc_known_media;
                if (count >= dsc->media_count) {

                    CDSCMEDIA lmedia;
                    lmedia.name = p;
                    lmedia.width = 595.0;
                    lmedia.height = 842.0;
                    lmedia.weight = 80.0;
                    lmedia.colour = ((void*)0);
                    lmedia.type = ((void*)0);
                    lmedia.mediabox = ((void*)0);
                    if (dsc_add_media(dsc, &lmedia))
                        return CDSC_ERROR;
                }
                else
                    dsc->media[count]->name =
                        dsc_alloc_string(dsc, p, (int)strlen(p));

                while (m && m->name) {
                    if (dsc_stricmp(p, m->name)==0) {
                        dsc->media[count]->width = m->width;
                        dsc->media[count]->height = m->height;
                        break;
                    }
                    m++;
                }
            }
            n+=i;
            count++;
        }
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentPaperForms:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentPaperForms:"))-1))) || (__builtin_constant_p ((("%%DocumentPaperForms:"))) && strlen ((("%%DocumentPaperForms:"))) < ((size_t) (sizeof(("%%DocumentPaperForms:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentPaperForms:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentPaperForms:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentPaperForms:"))) + 1) - (size_t)(const void *)((("%%DocumentPaperForms:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperForms:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentPaperForms:"))) && ((size_t)(const void *)(((("%%DocumentPaperForms:"))) + 1) - (size_t)(const void *)((("%%DocumentPaperForms:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperForms:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentPaperForms:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentPaperForms:"))) && ((size_t)(const void *)(((("%%DocumentPaperForms:"))) + 1) - (size_t)(const void *)((("%%DocumentPaperForms:"))) == 1) && (__s2_len = strlen ((("%%DocumentPaperForms:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperForms:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentPaperForms:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentPaperForms:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentPaperForms:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentPaperForms:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperForms:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentPaperForms:")), sizeof(("%%DocumentPaperForms:"))-1)))==0))) {

        unsigned int n = continued ? 3 : 21;
        unsigned int count = 0;
        unsigned int i = 1;
        char type[256];
        char *p;
        dsc->id = CDSC_DOCUMENTPAPERFORMS;
        while (i && (dsc->line[n]!='\r') && (dsc->line[n]!='\n')) {
            p = dsc_copy_string(type, sizeof(type)-1,
                    dsc->line+n, dsc->line_length-n, &i);
            if (i && p) {
                if (count >= dsc->media_count) {

                    CDSCMEDIA lmedia;
                    lmedia.name = ((void*)0);
                    lmedia.width = 595.0;
                    lmedia.height = 842.0;
                    lmedia.weight = 80.0;
                    lmedia.colour = ((void*)0);
                    lmedia.type = p;
                    lmedia.mediabox = ((void*)0);
                    if (dsc_add_media(dsc, &lmedia))
                        return CDSC_ERROR;
                }
                else
                    dsc->media[count]->type =
                        dsc_alloc_string(dsc, p, (int)strlen(p));
            }
            n+=i;
            count++;
        }
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentPaperColors:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentPaperColors:"))-1))) || (__builtin_constant_p ((("%%DocumentPaperColors:"))) && strlen ((("%%DocumentPaperColors:"))) < ((size_t) (sizeof(("%%DocumentPaperColors:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentPaperColors:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentPaperColors:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentPaperColors:"))) + 1) - (size_t)(const void *)((("%%DocumentPaperColors:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperColors:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentPaperColors:"))) && ((size_t)(const void *)(((("%%DocumentPaperColors:"))) + 1) - (size_t)(const void *)((("%%DocumentPaperColors:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperColors:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentPaperColors:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentPaperColors:"))) && ((size_t)(const void *)(((("%%DocumentPaperColors:"))) + 1) - (size_t)(const void *)((("%%DocumentPaperColors:"))) == 1) && (__s2_len = strlen ((("%%DocumentPaperColors:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperColors:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentPaperColors:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentPaperColors:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentPaperColors:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentPaperColors:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperColors:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentPaperColors:")), sizeof(("%%DocumentPaperColors:"))-1)))==0))) {

        unsigned int n = continued ? 3 : 22;
        unsigned int count = 0;
        unsigned int i = 1;
        char colour[256];
        char *p;
        dsc->id = CDSC_DOCUMENTPAPERCOLORS;
        while (i && (dsc->line[n]!='\r') && (dsc->line[n]!='\n')) {
            p = dsc_copy_string(colour, sizeof(colour)-1,
                    dsc->line+n, dsc->line_length-n, &i);
            if (i && p) {
                if (count >= dsc->media_count) {

                    CDSCMEDIA lmedia;
                    lmedia.name = ((void*)0);
                    lmedia.width = 595.0;
                    lmedia.height = 842.0;
                    lmedia.weight = 80.0;
                    lmedia.colour = p;
                    lmedia.type = ((void*)0);
                    lmedia.mediabox = ((void*)0);
                    if (dsc_add_media(dsc, &lmedia))
                        return CDSC_ERROR;
                }
                else
                    dsc->media[count]->colour =
                        dsc_alloc_string(dsc, p, (int)strlen(p));
            }
            n+=i;
            count++;
        }
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentPaperWeights:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentPaperWeights:"))-1))) || (__builtin_constant_p ((("%%DocumentPaperWeights:"))) && strlen ((("%%DocumentPaperWeights:"))) < ((size_t) (sizeof(("%%DocumentPaperWeights:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentPaperWeights:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentPaperWeights:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentPaperWeights:"))) + 1) - (size_t)(const void *)((("%%DocumentPaperWeights:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperWeights:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentPaperWeights:"))) && ((size_t)(const void *)(((("%%DocumentPaperWeights:"))) + 1) - (size_t)(const void *)((("%%DocumentPaperWeights:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperWeights:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentPaperWeights:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentPaperWeights:"))) && ((size_t)(const void *)(((("%%DocumentPaperWeights:"))) + 1) - (size_t)(const void *)((("%%DocumentPaperWeights:"))) == 1) && (__s2_len = strlen ((("%%DocumentPaperWeights:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperWeights:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentPaperWeights:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentPaperWeights:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentPaperWeights:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentPaperWeights:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentPaperWeights:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentPaperWeights:")), sizeof(("%%DocumentPaperWeights:"))-1)))==0))) {

        unsigned int n = continued ? 3 : 23;
        unsigned int count = 0;
        unsigned int i = 1;
        float w;
        dsc->id = CDSC_DOCUMENTPAPERWEIGHTS;
        while (i && (dsc->line[n]!='\r') && (dsc->line[n]!='\n')) {
            w = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
            if (i) {
                if (count >= dsc->media_count) {

                    CDSCMEDIA lmedia;
                    lmedia.name = ((void*)0);
                    lmedia.width = 595.0;
                    lmedia.height = 842.0;
                    lmedia.weight = w;
                    lmedia.colour = ((void*)0);
                    lmedia.type = ((void*)0);
                    lmedia.mediabox = ((void*)0);
                    if (dsc_add_media(dsc, &lmedia))
                        return CDSC_ERROR;
                }
                else
                    dsc->media[count]->weight = w;
            }
            n+=i;
            count++;
        }
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentData:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentData:"))-1))) || (__builtin_constant_p ((("%%DocumentData:"))) && strlen ((("%%DocumentData:"))) < ((size_t) (sizeof(("%%DocumentData:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentData:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentData:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentData:"))) + 1) - (size_t)(const void *)((("%%DocumentData:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentData:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentData:"))) && ((size_t)(const void *)(((("%%DocumentData:"))) + 1) - (size_t)(const void *)((("%%DocumentData:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentData:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentData:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentData:"))) && ((size_t)(const void *)(((("%%DocumentData:"))) + 1) - (size_t)(const void *)((("%%DocumentData:"))) == 1) && (__s2_len = strlen ((("%%DocumentData:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentData:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentData:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentData:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentData:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentData:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentData:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentData:")), sizeof(("%%DocumentData:"))-1)))==0))) {
        unsigned int n = continued ? 3 : 15;
        char *p = dsc->line + n;
        while ((((*p)==' ') || ((*p)=='\t')))
            p++;
        dsc->id = CDSC_DOCUMENTDATA;
        if (((__extension__ (__builtin_constant_p (sizeof("Clean7Bit")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("Clean7Bit")-1))) || (__builtin_constant_p (("Clean7Bit")) && strlen (("Clean7Bit")) < ((size_t) (sizeof("Clean7Bit")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("Clean7Bit")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("Clean7Bit")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("Clean7Bit")) + 1) - (size_t)(const void *)(("Clean7Bit")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("Clean7Bit")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("Clean7Bit")) && ((size_t)(const void *)((("Clean7Bit")) + 1) - (size_t)(const void *)(("Clean7Bit")) == 1) ? __builtin_strcmp ((const char *)(p), ("Clean7Bit")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("Clean7Bit")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("Clean7Bit")) && ((size_t)(const void *)((("Clean7Bit")) + 1) - (size_t)(const void *)(("Clean7Bit")) == 1) && (__s2_len = strlen (("Clean7Bit")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("Clean7Bit")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("Clean7Bit")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("Clean7Bit")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("Clean7Bit")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("Clean7Bit")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("Clean7Bit"))))); }) : strncmp ((const char *)(p), ("Clean7Bit"), sizeof("Clean7Bit")-1)))==0))
            dsc->document_data = CDSC_CLEAN7BIT;
        else if (((__extension__ (__builtin_constant_p (sizeof("Clean8Bit")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("Clean8Bit")-1))) || (__builtin_constant_p (("Clean8Bit")) && strlen (("Clean8Bit")) < ((size_t) (sizeof("Clean8Bit")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("Clean8Bit")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("Clean8Bit")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("Clean8Bit")) + 1) - (size_t)(const void *)(("Clean8Bit")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("Clean8Bit")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("Clean8Bit")) && ((size_t)(const void *)((("Clean8Bit")) + 1) - (size_t)(const void *)(("Clean8Bit")) == 1) ? __builtin_strcmp ((const char *)(p), ("Clean8Bit")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("Clean8Bit")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("Clean8Bit")) && ((size_t)(const void *)((("Clean8Bit")) + 1) - (size_t)(const void *)(("Clean8Bit")) == 1) && (__s2_len = strlen (("Clean8Bit")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("Clean8Bit")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("Clean8Bit")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("Clean8Bit")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("Clean8Bit")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("Clean8Bit")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("Clean8Bit"))))); }) : strncmp ((const char *)(p), ("Clean8Bit"), sizeof("Clean8Bit")-1)))==0))
            dsc->document_data = CDSC_CLEAN8BIT;
        else if (((__extension__ (__builtin_constant_p (sizeof("Binary")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("Binary")-1))) || (__builtin_constant_p (("Binary")) && strlen (("Binary")) < ((size_t) (sizeof("Binary")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("Binary")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("Binary")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("Binary")) + 1) - (size_t)(const void *)(("Binary")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("Binary")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("Binary")) && ((size_t)(const void *)((("Binary")) + 1) - (size_t)(const void *)(("Binary")) == 1) ? __builtin_strcmp ((const char *)(p), ("Binary")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("Binary")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("Binary")) && ((size_t)(const void *)((("Binary")) + 1) - (size_t)(const void *)(("Binary")) == 1) && (__s2_len = strlen (("Binary")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("Binary")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("Binary")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("Binary")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("Binary")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("Binary")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("Binary"))))); }) : strncmp ((const char *)(p), ("Binary"), sizeof("Binary")-1)))==0))
            dsc->document_data = CDSC_BINARY;
        else
            dsc_unknown(dsc);
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%Requirements:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Requirements:"))-1))) || (__builtin_constant_p ((("%%Requirements:"))) && strlen ((("%%Requirements:"))) < ((size_t) (sizeof(("%%Requirements:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Requirements:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Requirements:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Requirements:"))) + 1) - (size_t)(const void *)((("%%Requirements:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Requirements:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Requirements:"))) && ((size_t)(const void *)(((("%%Requirements:"))) + 1) - (size_t)(const void *)((("%%Requirements:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Requirements:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Requirements:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Requirements:"))) && ((size_t)(const void *)(((("%%Requirements:"))) + 1) - (size_t)(const void *)((("%%Requirements:"))) == 1) && (__s2_len = strlen ((("%%Requirements:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Requirements:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Requirements:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Requirements:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Requirements:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Requirements:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Requirements:")))))); }) : strncmp ((const char *)((line)), (("%%Requirements:")), sizeof(("%%Requirements:"))-1)))==0))) {
        dsc->id = CDSC_REQUIREMENTS;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentNeededFonts:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentNeededFonts:"))-1))) || (__builtin_constant_p ((("%%DocumentNeededFonts:"))) && strlen ((("%%DocumentNeededFonts:"))) < ((size_t) (sizeof(("%%DocumentNeededFonts:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentNeededFonts:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentNeededFonts:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentNeededFonts:"))) + 1) - (size_t)(const void *)((("%%DocumentNeededFonts:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentNeededFonts:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentNeededFonts:"))) && ((size_t)(const void *)(((("%%DocumentNeededFonts:"))) + 1) - (size_t)(const void *)((("%%DocumentNeededFonts:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentNeededFonts:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentNeededFonts:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentNeededFonts:"))) && ((size_t)(const void *)(((("%%DocumentNeededFonts:"))) + 1) - (size_t)(const void *)((("%%DocumentNeededFonts:"))) == 1) && (__s2_len = strlen ((("%%DocumentNeededFonts:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentNeededFonts:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentNeededFonts:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentNeededFonts:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentNeededFonts:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentNeededFonts:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentNeededFonts:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentNeededFonts:")), sizeof(("%%DocumentNeededFonts:"))-1)))==0))) {
        dsc->id = CDSC_DOCUMENTNEEDEDFONTS;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentSuppliedFonts:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentSuppliedFonts:"))-1))) || (__builtin_constant_p ((("%%DocumentSuppliedFonts:"))) && strlen ((("%%DocumentSuppliedFonts:"))) < ((size_t) (sizeof(("%%DocumentSuppliedFonts:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentSuppliedFonts:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentSuppliedFonts:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentSuppliedFonts:"))) + 1) - (size_t)(const void *)((("%%DocumentSuppliedFonts:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentSuppliedFonts:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentSuppliedFonts:"))) && ((size_t)(const void *)(((("%%DocumentSuppliedFonts:"))) + 1) - (size_t)(const void *)((("%%DocumentSuppliedFonts:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentSuppliedFonts:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentSuppliedFonts:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentSuppliedFonts:"))) && ((size_t)(const void *)(((("%%DocumentSuppliedFonts:"))) + 1) - (size_t)(const void *)((("%%DocumentSuppliedFonts:"))) == 1) && (__s2_len = strlen ((("%%DocumentSuppliedFonts:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentSuppliedFonts:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentSuppliedFonts:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentSuppliedFonts:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentSuppliedFonts:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentSuppliedFonts:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentSuppliedFonts:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentSuppliedFonts:")), sizeof(("%%DocumentSuppliedFonts:"))-1)))==0))) {
        dsc->id = CDSC_DOCUMENTSUPPLIEDFONTS;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PlateFile:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PlateFile:"))-1))) || (__builtin_constant_p ((("%%PlateFile:"))) && strlen ((("%%PlateFile:"))) < ((size_t) (sizeof(("%%PlateFile:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PlateFile:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PlateFile:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PlateFile:"))) + 1) - (size_t)(const void *)((("%%PlateFile:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PlateFile:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PlateFile:"))) && ((size_t)(const void *)(((("%%PlateFile:"))) + 1) - (size_t)(const void *)((("%%PlateFile:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PlateFile:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PlateFile:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PlateFile:"))) && ((size_t)(const void *)(((("%%PlateFile:"))) + 1) - (size_t)(const void *)((("%%PlateFile:"))) == 1) && (__s2_len = strlen ((("%%PlateFile:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PlateFile:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PlateFile:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PlateFile:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PlateFile:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PlateFile:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PlateFile:")))))); }) : strncmp ((const char *)((line)), (("%%PlateFile:")), sizeof(("%%PlateFile:"))-1)))==0))) {
        dsc->id = CDSC_PLATEFILE;
        if (dsc_parse_platefile(dsc) != CDSC_OK)
            dsc->id = CDSC_UNKNOWNDSC;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%CyanPlate:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%CyanPlate:"))-1))) || (__builtin_constant_p ((("%%CyanPlate:"))) && strlen ((("%%CyanPlate:"))) < ((size_t) (sizeof(("%%CyanPlate:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%CyanPlate:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%CyanPlate:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%CyanPlate:"))) + 1) - (size_t)(const void *)((("%%CyanPlate:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%CyanPlate:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%CyanPlate:"))) && ((size_t)(const void *)(((("%%CyanPlate:"))) + 1) - (size_t)(const void *)((("%%CyanPlate:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%CyanPlate:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%CyanPlate:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%CyanPlate:"))) && ((size_t)(const void *)(((("%%CyanPlate:"))) + 1) - (size_t)(const void *)((("%%CyanPlate:"))) == 1) && (__s2_len = strlen ((("%%CyanPlate:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%CyanPlate:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%CyanPlate:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%CyanPlate:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%CyanPlate:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%CyanPlate:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%CyanPlate:")))))); }) : strncmp ((const char *)((line)), (("%%CyanPlate:")), sizeof(("%%CyanPlate:"))-1)))==0)) ||
        (((__extension__ (__builtin_constant_p (sizeof(("%%MagentaPlate:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%MagentaPlate:"))-1))) || (__builtin_constant_p ((("%%MagentaPlate:"))) && strlen ((("%%MagentaPlate:"))) < ((size_t) (sizeof(("%%MagentaPlate:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%MagentaPlate:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%MagentaPlate:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%MagentaPlate:"))) + 1) - (size_t)(const void *)((("%%MagentaPlate:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%MagentaPlate:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%MagentaPlate:"))) && ((size_t)(const void *)(((("%%MagentaPlate:"))) + 1) - (size_t)(const void *)((("%%MagentaPlate:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%MagentaPlate:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%MagentaPlate:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%MagentaPlate:"))) && ((size_t)(const void *)(((("%%MagentaPlate:"))) + 1) - (size_t)(const void *)((("%%MagentaPlate:"))) == 1) && (__s2_len = strlen ((("%%MagentaPlate:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%MagentaPlate:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%MagentaPlate:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%MagentaPlate:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%MagentaPlate:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%MagentaPlate:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%MagentaPlate:")))))); }) : strncmp ((const char *)((line)), (("%%MagentaPlate:")), sizeof(("%%MagentaPlate:"))-1)))==0)) ||
        (((__extension__ (__builtin_constant_p (sizeof(("%%YellowPlate:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%YellowPlate:"))-1))) || (__builtin_constant_p ((("%%YellowPlate:"))) && strlen ((("%%YellowPlate:"))) < ((size_t) (sizeof(("%%YellowPlate:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%YellowPlate:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%YellowPlate:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%YellowPlate:"))) + 1) - (size_t)(const void *)((("%%YellowPlate:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%YellowPlate:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%YellowPlate:"))) && ((size_t)(const void *)(((("%%YellowPlate:"))) + 1) - (size_t)(const void *)((("%%YellowPlate:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%YellowPlate:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%YellowPlate:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%YellowPlate:"))) && ((size_t)(const void *)(((("%%YellowPlate:"))) + 1) - (size_t)(const void *)((("%%YellowPlate:"))) == 1) && (__s2_len = strlen ((("%%YellowPlate:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%YellowPlate:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%YellowPlate:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%YellowPlate:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%YellowPlate:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%YellowPlate:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%YellowPlate:")))))); }) : strncmp ((const char *)((line)), (("%%YellowPlate:")), sizeof(("%%YellowPlate:"))-1)))==0)) ||
        (((__extension__ (__builtin_constant_p (sizeof(("%%BlackPlate:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BlackPlate:"))-1))) || (__builtin_constant_p ((("%%BlackPlate:"))) && strlen ((("%%BlackPlate:"))) < ((size_t) (sizeof(("%%BlackPlate:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BlackPlate:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BlackPlate:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BlackPlate:"))) + 1) - (size_t)(const void *)((("%%BlackPlate:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BlackPlate:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BlackPlate:"))) && ((size_t)(const void *)(((("%%BlackPlate:"))) + 1) - (size_t)(const void *)((("%%BlackPlate:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BlackPlate:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BlackPlate:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BlackPlate:"))) && ((size_t)(const void *)(((("%%BlackPlate:"))) + 1) - (size_t)(const void *)((("%%BlackPlate:"))) == 1) && (__s2_len = strlen ((("%%BlackPlate:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BlackPlate:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BlackPlate:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BlackPlate:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BlackPlate:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BlackPlate:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BlackPlate:")))))); }) : strncmp ((const char *)((line)), (("%%BlackPlate:")), sizeof(("%%BlackPlate:"))-1)))==0))) {
        dsc->id = CDSC_PLATEFILE;
        if (dsc_parse_dcs1plate(dsc) != CDSC_OK)
            dsc->id = CDSC_UNKNOWNDSC;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentProcessColors:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentProcessColors:"))-1))) || (__builtin_constant_p ((("%%DocumentProcessColors:"))) && strlen ((("%%DocumentProcessColors:"))) < ((size_t) (sizeof(("%%DocumentProcessColors:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentProcessColors:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentProcessColors:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentProcessColors:"))) + 1) - (size_t)(const void *)((("%%DocumentProcessColors:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentProcessColors:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentProcessColors:"))) && ((size_t)(const void *)(((("%%DocumentProcessColors:"))) + 1) - (size_t)(const void *)((("%%DocumentProcessColors:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentProcessColors:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentProcessColors:"))) && ((size_t)(const void *)(((("%%DocumentProcessColors:"))) + 1) - (size_t)(const void *)((("%%DocumentProcessColors:"))) == 1) && (__s2_len = strlen ((("%%DocumentProcessColors:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentProcessColors:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentProcessColors:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentProcessColors:")), sizeof(("%%DocumentProcessColors:"))-1)))==0))) {
        dsc->id = CDSC_DOCUMENTPROCESSCOLORS;
        if (dsc_parse_process_colours(dsc) != CDSC_OK)
            dsc->id = CDSC_UNKNOWNDSC;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentCustomColors:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentCustomColors:"))-1))) || (__builtin_constant_p ((("%%DocumentCustomColors:"))) && strlen ((("%%DocumentCustomColors:"))) < ((size_t) (sizeof(("%%DocumentCustomColors:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentCustomColors:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentCustomColors:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentCustomColors:"))) + 1) - (size_t)(const void *)((("%%DocumentCustomColors:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentCustomColors:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentCustomColors:"))) && ((size_t)(const void *)(((("%%DocumentCustomColors:"))) + 1) - (size_t)(const void *)((("%%DocumentCustomColors:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentCustomColors:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentCustomColors:"))) && ((size_t)(const void *)(((("%%DocumentCustomColors:"))) + 1) - (size_t)(const void *)((("%%DocumentCustomColors:"))) == 1) && (__s2_len = strlen ((("%%DocumentCustomColors:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentCustomColors:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentCustomColors:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentCustomColors:")), sizeof(("%%DocumentCustomColors:"))-1)))==0))) {
        dsc->id = CDSC_DOCUMENTCUSTOMCOLORS;
        if (dsc_parse_custom_colours(dsc) != CDSC_OK)
            dsc->id = CDSC_UNKNOWNDSC;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%CMYKCustomColor:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%CMYKCustomColor:"))-1))) || (__builtin_constant_p ((("%%CMYKCustomColor:"))) && strlen ((("%%CMYKCustomColor:"))) < ((size_t) (sizeof(("%%CMYKCustomColor:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%CMYKCustomColor:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%CMYKCustomColor:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%CMYKCustomColor:"))) + 1) - (size_t)(const void *)((("%%CMYKCustomColor:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%CMYKCustomColor:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%CMYKCustomColor:"))) && ((size_t)(const void *)(((("%%CMYKCustomColor:"))) + 1) - (size_t)(const void *)((("%%CMYKCustomColor:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%CMYKCustomColor:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%CMYKCustomColor:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%CMYKCustomColor:"))) && ((size_t)(const void *)(((("%%CMYKCustomColor:"))) + 1) - (size_t)(const void *)((("%%CMYKCustomColor:"))) == 1) && (__s2_len = strlen ((("%%CMYKCustomColor:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%CMYKCustomColor:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%CMYKCustomColor:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%CMYKCustomColor:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%CMYKCustomColor:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%CMYKCustomColor:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%CMYKCustomColor:")))))); }) : strncmp ((const char *)((line)), (("%%CMYKCustomColor:")), sizeof(("%%CMYKCustomColor:"))-1)))==0))) {
        dsc->id = CDSC_CMYKCUSTOMCOLOR;
        if (dsc_parse_cmyk_custom_colour(dsc) != CDSC_OK)
            dsc->id = CDSC_UNKNOWNDSC;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%RGBCustomColor:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%RGBCustomColor:"))-1))) || (__builtin_constant_p ((("%%RGBCustomColor:"))) && strlen ((("%%RGBCustomColor:"))) < ((size_t) (sizeof(("%%RGBCustomColor:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%RGBCustomColor:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%RGBCustomColor:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%RGBCustomColor:"))) + 1) - (size_t)(const void *)((("%%RGBCustomColor:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%RGBCustomColor:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%RGBCustomColor:"))) && ((size_t)(const void *)(((("%%RGBCustomColor:"))) + 1) - (size_t)(const void *)((("%%RGBCustomColor:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%RGBCustomColor:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%RGBCustomColor:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%RGBCustomColor:"))) && ((size_t)(const void *)(((("%%RGBCustomColor:"))) + 1) - (size_t)(const void *)((("%%RGBCustomColor:"))) == 1) && (__s2_len = strlen ((("%%RGBCustomColor:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%RGBCustomColor:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%RGBCustomColor:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%RGBCustomColor:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%RGBCustomColor:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%RGBCustomColor:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%RGBCustomColor:")))))); }) : strncmp ((const char *)((line)), (("%%RGBCustomColor:")), sizeof(("%%RGBCustomColor:"))-1)))==0))) {
        dsc->id = CDSC_RGBCUSTOMCOLOR;
        if (dsc_parse_rgb_custom_colour(dsc) != CDSC_OK)
            dsc->id = CDSC_UNKNOWNDSC;
    }
    else if (dsc->line[0] == '%' && ((((dsc->line[1])==' ') || ((dsc->line[1])=='\t')) || (((dsc->line[1])=='\r') || ((dsc->line[1])=='\n')))) {
        dsc->id = CDSC_OK;

    }
    else {
        dsc->id = CDSC_UNKNOWNDSC;
        dsc_unknown(dsc);
    }

    dsc->endcomments = ((dsc)->data_offset + (dsc)->data_index);
    return CDSC_OK;
}

static int
dsc_scan_preview(CDSC *dsc)
{




    char *line = dsc->line;
    dsc->id = CDSC_OK;

    if (dsc->scan_section == scan_pre_preview) {
        if (((((line[0])=='\r') || ((line[0])=='\n'))))
            return CDSC_OK;
        else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginPreview"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginPreview"))-1))) || (__builtin_constant_p ((("%%BeginPreview"))) && strlen ((("%%BeginPreview"))) < ((size_t) (sizeof(("%%BeginPreview"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginPreview"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginPreview"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginPreview"))) && ((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginPreview"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginPreview"))) && ((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) && (__s2_len = strlen ((("%%BeginPreview"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginPreview")))))); }) : strncmp ((const char *)((line)), (("%%BeginPreview")), sizeof(("%%BeginPreview"))-1)))==0))) {
            dsc->id = CDSC_BEGINPREVIEW;
            dsc->beginpreview = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
            dsc->endpreview = ((dsc)->data_offset + (dsc)->data_index);
            dsc->scan_section = scan_preview;

            if (dsc->preview == CDSC_NOPREVIEW)
                dsc->preview = CDSC_EPSI;
            return CDSC_OK;
        }
        else {
            dsc->scan_section = scan_pre_defaults;
            return 10;
        }
    }

    if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginPreview"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginPreview"))-1))) || (__builtin_constant_p ((("%%BeginPreview"))) && strlen ((("%%BeginPreview"))) < ((size_t) (sizeof(("%%BeginPreview"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginPreview"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginPreview"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginPreview"))) && ((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginPreview"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginPreview"))) && ((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) && (__s2_len = strlen ((("%%BeginPreview"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginPreview")))))); }) : strncmp ((const char *)((line)), (("%%BeginPreview")), sizeof(("%%BeginPreview"))-1)))==0))) {

    }
    else if (dsc_is_section(line)) {
        dsc->endpreview = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
        dsc->scan_section = scan_pre_defaults;
        return 10;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndPreview"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndPreview"))-1))) || (__builtin_constant_p ((("%%EndPreview"))) && strlen ((("%%EndPreview"))) < ((size_t) (sizeof(("%%EndPreview"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndPreview"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndPreview"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndPreview"))) + 1) - (size_t)(const void *)((("%%EndPreview"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndPreview"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndPreview"))) && ((size_t)(const void *)(((("%%EndPreview"))) + 1) - (size_t)(const void *)((("%%EndPreview"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndPreview"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndPreview"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndPreview"))) && ((size_t)(const void *)(((("%%EndPreview"))) + 1) - (size_t)(const void *)((("%%EndPreview"))) == 1) && (__s2_len = strlen ((("%%EndPreview"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndPreview"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndPreview"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndPreview"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndPreview"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndPreview"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndPreview")))))); }) : strncmp ((const char *)((line)), (("%%EndPreview")), sizeof(("%%EndPreview"))-1)))==0))) {
        dsc->id = CDSC_ENDPREVIEW;
        dsc->endpreview = ((dsc)->data_offset + (dsc)->data_index);
        dsc->scan_section = scan_pre_defaults;
        return CDSC_OK;
    }
    else if (line[0] == '%' && line[1] != '%') {

    }
    else {
        dsc->id = CDSC_UNKNOWNDSC;

        dsc_unknown(dsc);
    }

    dsc->endpreview = ((dsc)->data_offset + (dsc)->data_index);
    return CDSC_OK;
}

static int
dsc_scan_defaults(CDSC *dsc)
{




    char *line = dsc->line;
    dsc->id = CDSC_OK;

    if (dsc->scan_section == scan_pre_defaults) {
        if (((((line[0])=='\r') || ((line[0])=='\n'))))
            return CDSC_OK;
        else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginDefaults"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginDefaults"))-1))) || (__builtin_constant_p ((("%%BeginDefaults"))) && strlen ((("%%BeginDefaults"))) < ((size_t) (sizeof(("%%BeginDefaults"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginDefaults"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginDefaults"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginDefaults"))) && ((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginDefaults"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginDefaults"))) && ((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) && (__s2_len = strlen ((("%%BeginDefaults"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults")))))); }) : strncmp ((const char *)((line)), (("%%BeginDefaults")), sizeof(("%%BeginDefaults"))-1)))==0))) {
            dsc->id = CDSC_BEGINDEFAULTS;
            dsc->begindefaults = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
            dsc->enddefaults = ((dsc)->data_offset + (dsc)->data_index);
            dsc->scan_section = scan_defaults;
            return CDSC_OK;
        }
        else {
            dsc->scan_section = scan_pre_prolog;
            return 10;
        }
    }

    if ((((line)[0]!='%') || ((line)[1]!='%'))) {

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginPreview"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginPreview"))-1))) || (__builtin_constant_p ((("%%BeginPreview"))) && strlen ((("%%BeginPreview"))) < ((size_t) (sizeof(("%%BeginPreview"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginPreview"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginPreview"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginPreview"))) && ((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginPreview"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginPreview"))) && ((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) && (__s2_len = strlen ((("%%BeginPreview"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginPreview")))))); }) : strncmp ((const char *)((line)), (("%%BeginPreview")), sizeof(("%%BeginPreview"))-1)))==0))) {

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginDefaults"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginDefaults"))-1))) || (__builtin_constant_p ((("%%BeginDefaults"))) && strlen ((("%%BeginDefaults"))) < ((size_t) (sizeof(("%%BeginDefaults"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginDefaults"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginDefaults"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginDefaults"))) && ((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginDefaults"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginDefaults"))) && ((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) && (__s2_len = strlen ((("%%BeginDefaults"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults")))))); }) : strncmp ((const char *)((line)), (("%%BeginDefaults")), sizeof(("%%BeginDefaults"))-1)))==0))) {

    }
    else if (dsc_is_section(line)) {
        dsc->enddefaults = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
        dsc->scan_section = scan_pre_prolog;
        return 10;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndDefaults"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndDefaults"))-1))) || (__builtin_constant_p ((("%%EndDefaults"))) && strlen ((("%%EndDefaults"))) < ((size_t) (sizeof(("%%EndDefaults"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndDefaults"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndDefaults"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndDefaults"))) + 1) - (size_t)(const void *)((("%%EndDefaults"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndDefaults"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndDefaults"))) && ((size_t)(const void *)(((("%%EndDefaults"))) + 1) - (size_t)(const void *)((("%%EndDefaults"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndDefaults"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndDefaults"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndDefaults"))) && ((size_t)(const void *)(((("%%EndDefaults"))) + 1) - (size_t)(const void *)((("%%EndDefaults"))) == 1) && (__s2_len = strlen ((("%%EndDefaults"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndDefaults"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndDefaults"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndDefaults"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndDefaults"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndDefaults"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndDefaults")))))); }) : strncmp ((const char *)((line)), (("%%EndDefaults")), sizeof(("%%EndDefaults"))-1)))==0))) {
        dsc->id = CDSC_ENDDEFAULTS;
        dsc->enddefaults = ((dsc)->data_offset + (dsc)->data_index);
        dsc->scan_section = scan_pre_prolog;
        return CDSC_OK;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PageMedia:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PageMedia:"))-1))) || (__builtin_constant_p ((("%%PageMedia:"))) && strlen ((("%%PageMedia:"))) < ((size_t) (sizeof(("%%PageMedia:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PageMedia:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PageMedia:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PageMedia:"))) + 1) - (size_t)(const void *)((("%%PageMedia:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PageMedia:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PageMedia:"))) && ((size_t)(const void *)(((("%%PageMedia:"))) + 1) - (size_t)(const void *)((("%%PageMedia:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageMedia:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PageMedia:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PageMedia:"))) && ((size_t)(const void *)(((("%%PageMedia:"))) + 1) - (size_t)(const void *)((("%%PageMedia:"))) == 1) && (__s2_len = strlen ((("%%PageMedia:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageMedia:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PageMedia:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PageMedia:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PageMedia:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PageMedia:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PageMedia:")))))); }) : strncmp ((const char *)((line)), (("%%PageMedia:")), sizeof(("%%PageMedia:"))-1)))==0))) {
        dsc->id = CDSC_PAGEMEDIA;
        dsc_parse_media(dsc, &dsc->page_media);
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PageOrientation:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PageOrientation:"))-1))) || (__builtin_constant_p ((("%%PageOrientation:"))) && strlen ((("%%PageOrientation:"))) < ((size_t) (sizeof(("%%PageOrientation:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PageOrientation:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PageOrientation:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PageOrientation:"))) + 1) - (size_t)(const void *)((("%%PageOrientation:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PageOrientation:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PageOrientation:"))) && ((size_t)(const void *)(((("%%PageOrientation:"))) + 1) - (size_t)(const void *)((("%%PageOrientation:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageOrientation:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PageOrientation:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PageOrientation:"))) && ((size_t)(const void *)(((("%%PageOrientation:"))) + 1) - (size_t)(const void *)((("%%PageOrientation:"))) == 1) && (__s2_len = strlen ((("%%PageOrientation:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageOrientation:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PageOrientation:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PageOrientation:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PageOrientation:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PageOrientation:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PageOrientation:")))))); }) : strncmp ((const char *)((line)), (("%%PageOrientation:")), sizeof(("%%PageOrientation:"))-1)))==0))) {
        dsc->id = CDSC_PAGEORIENTATION;

        if (dsc_parse_orientation(dsc, &(dsc->page_orientation), 18))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PageBoundingBox:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PageBoundingBox:"))-1))) || (__builtin_constant_p ((("%%PageBoundingBox:"))) && strlen ((("%%PageBoundingBox:"))) < ((size_t) (sizeof(("%%PageBoundingBox:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PageBoundingBox:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PageBoundingBox:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PageBoundingBox:"))) + 1) - (size_t)(const void *)((("%%PageBoundingBox:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PageBoundingBox:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PageBoundingBox:"))) && ((size_t)(const void *)(((("%%PageBoundingBox:"))) + 1) - (size_t)(const void *)((("%%PageBoundingBox:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageBoundingBox:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PageBoundingBox:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PageBoundingBox:"))) && ((size_t)(const void *)(((("%%PageBoundingBox:"))) + 1) - (size_t)(const void *)((("%%PageBoundingBox:"))) == 1) && (__s2_len = strlen ((("%%PageBoundingBox:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageBoundingBox:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PageBoundingBox:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PageBoundingBox:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PageBoundingBox:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PageBoundingBox:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PageBoundingBox:")))))); }) : strncmp ((const char *)((line)), (("%%PageBoundingBox:")), sizeof(("%%PageBoundingBox:"))-1)))==0))) {
        dsc->id = CDSC_PAGEBOUNDINGBOX;
        if (dsc_parse_bounding_box(dsc, &(dsc->page_bbox), 18))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%ViewingOrientation:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%ViewingOrientation:"))-1))) || (__builtin_constant_p ((("%%ViewingOrientation:"))) && strlen ((("%%ViewingOrientation:"))) < ((size_t) (sizeof(("%%ViewingOrientation:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%ViewingOrientation:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%ViewingOrientation:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%ViewingOrientation:"))) + 1) - (size_t)(const void *)((("%%ViewingOrientation:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%ViewingOrientation:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%ViewingOrientation:"))) && ((size_t)(const void *)(((("%%ViewingOrientation:"))) + 1) - (size_t)(const void *)((("%%ViewingOrientation:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%ViewingOrientation:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%ViewingOrientation:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%ViewingOrientation:"))) && ((size_t)(const void *)(((("%%ViewingOrientation:"))) + 1) - (size_t)(const void *)((("%%ViewingOrientation:"))) == 1) && (__s2_len = strlen ((("%%ViewingOrientation:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%ViewingOrientation:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%ViewingOrientation:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%ViewingOrientation:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%ViewingOrientation:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%ViewingOrientation:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%ViewingOrientation:")))))); }) : strncmp ((const char *)((line)), (("%%ViewingOrientation:")), sizeof(("%%ViewingOrientation:"))-1)))==0))) {
        dsc->id = CDSC_VIEWINGORIENTATION;
        if (dsc_parse_viewing_orientation(dsc, &dsc->viewing_orientation))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PageCropBox:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PageCropBox:"))-1))) || (__builtin_constant_p ((("%%PageCropBox:"))) && strlen ((("%%PageCropBox:"))) < ((size_t) (sizeof(("%%PageCropBox:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PageCropBox:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PageCropBox:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PageCropBox:"))) + 1) - (size_t)(const void *)((("%%PageCropBox:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PageCropBox:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PageCropBox:"))) && ((size_t)(const void *)(((("%%PageCropBox:"))) + 1) - (size_t)(const void *)((("%%PageCropBox:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageCropBox:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PageCropBox:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PageCropBox:"))) && ((size_t)(const void *)(((("%%PageCropBox:"))) + 1) - (size_t)(const void *)((("%%PageCropBox:"))) == 1) && (__s2_len = strlen ((("%%PageCropBox:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageCropBox:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PageCropBox:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PageCropBox:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PageCropBox:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PageCropBox:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PageCropBox:")))))); }) : strncmp ((const char *)((line)), (("%%PageCropBox:")), sizeof(("%%PageCropBox:"))-1)))==0))) {
        dsc->id = CDSC_PAGECROPBOX;
        if (dsc_parse_float_bounding_box(dsc, &dsc->crop_box, 14))
            return CDSC_ERROR;
    }
    else {
        dsc->id = CDSC_UNKNOWNDSC;

        dsc_unknown(dsc);
    }
    dsc->enddefaults = ((dsc)->data_offset + (dsc)->data_index);
    return CDSC_OK;
}



static int
dsc_check_match_prompt(CDSC *dsc, const char *str, int count)
{
    if (count != 0) {
        char buf[256 +256];
        if (dsc->line_length < (unsigned int)(sizeof(buf)/2-1)) {
            __builtin_strncpy (buf, dsc->line, dsc->line_length);
            buf[dsc->line_length] = '\0';
        }
        gs_sprintf(buf+strlen(buf), "\n%%%%Begin%.40s: / %%%%End%.40s\n", str, str);
        return dsc_error(dsc, CDSC_MESSAGE_BEGIN_END, buf, (int)strlen(buf));
    }
    return CDSC_RESPONSE_CANCEL;
}

static int
dsc_check_match_type(CDSC *dsc, const char *str, int count)
{
    if (dsc_check_match_prompt(dsc, str, count) == CDSC_RESPONSE_IGNORE_ALL)
        return CDSC_NOTDSC;
    return CDSC_OK;
}



static int
dsc_check_match(CDSC *dsc)
{
    int rc = 0;
    const char *font = "Font";
    const char *feature = "Feature";
    const char *resource = "Resource";
    const char *procset = "ProcSet";

    if (!rc)
        rc = dsc_check_match_type(dsc, font, dsc->begin_font_count);
    if (!rc)
        rc = dsc_check_match_type(dsc, feature, dsc->begin_feature_count);
    if (!rc)
        rc = dsc_check_match_type(dsc, resource, dsc->begin_resource_count);
    if (!rc)
        rc = dsc_check_match_type(dsc, procset, dsc->begin_procset_count);

    dsc->begin_font_count = 0;
    dsc->begin_feature_count = 0;
    dsc->begin_resource_count = 0;
    dsc->begin_procset_count = 0;
    return rc;
}

static int
dsc_scan_prolog(CDSC *dsc)
{




    char *line = dsc->line;
    dsc->id = CDSC_OK;

    if (dsc->scan_section == scan_pre_prolog) {
        if (dsc_is_section(line) && (!(((__extension__ (__builtin_constant_p (sizeof(("%%BeginProlog"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginProlog"))-1))) || (__builtin_constant_p ((("%%BeginProlog"))) && strlen ((("%%BeginProlog"))) < ((size_t) (sizeof(("%%BeginProlog"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginProlog"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginProlog"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginProlog"))) && ((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginProlog"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginProlog"))) && ((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) && (__s2_len = strlen ((("%%BeginProlog"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginProlog")))))); }) : strncmp ((const char *)((line)), (("%%BeginProlog")), sizeof(("%%BeginProlog"))-1)))==0)))) {
            dsc->scan_section = scan_pre_setup;
            return 10;
        }
        dsc->id = CDSC_BEGINPROLOG;
        dsc->beginprolog = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
        dsc->endprolog = ((dsc)->data_offset + (dsc)->data_index);
        dsc->scan_section = scan_prolog;
        if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginProlog"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginProlog"))-1))) || (__builtin_constant_p ((("%%BeginProlog"))) && strlen ((("%%BeginProlog"))) < ((size_t) (sizeof(("%%BeginProlog"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginProlog"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginProlog"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginProlog"))) && ((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginProlog"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginProlog"))) && ((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) && (__s2_len = strlen ((("%%BeginProlog"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginProlog")))))); }) : strncmp ((const char *)((line)), (("%%BeginProlog")), sizeof(("%%BeginProlog"))-1)))==0)))
            return CDSC_OK;
    }

    if ((((line)[0]!='%') || ((line)[1]!='%'))) {

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginPreview"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginPreview"))-1))) || (__builtin_constant_p ((("%%BeginPreview"))) && strlen ((("%%BeginPreview"))) < ((size_t) (sizeof(("%%BeginPreview"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginPreview"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginPreview"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginPreview"))) && ((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginPreview"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginPreview"))) && ((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) && (__s2_len = strlen ((("%%BeginPreview"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginPreview")))))); }) : strncmp ((const char *)((line)), (("%%BeginPreview")), sizeof(("%%BeginPreview"))-1)))==0))) {

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginDefaults"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginDefaults"))-1))) || (__builtin_constant_p ((("%%BeginDefaults"))) && strlen ((("%%BeginDefaults"))) < ((size_t) (sizeof(("%%BeginDefaults"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginDefaults"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginDefaults"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginDefaults"))) && ((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginDefaults"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginDefaults"))) && ((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) && (__s2_len = strlen ((("%%BeginDefaults"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults")))))); }) : strncmp ((const char *)((line)), (("%%BeginDefaults")), sizeof(("%%BeginDefaults"))-1)))==0))) {

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginProlog"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginProlog"))-1))) || (__builtin_constant_p ((("%%BeginProlog"))) && strlen ((("%%BeginProlog"))) < ((size_t) (sizeof(("%%BeginProlog"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginProlog"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginProlog"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginProlog"))) && ((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginProlog"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginProlog"))) && ((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) && (__s2_len = strlen ((("%%BeginProlog"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginProlog")))))); }) : strncmp ((const char *)((line)), (("%%BeginProlog")), sizeof(("%%BeginProlog"))-1)))==0))) {

    }
    else if (dsc_is_section(line)) {
        dsc->endprolog = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
        dsc->scan_section = scan_pre_setup;
        if (dsc_check_match(dsc))
            return CDSC_NOTDSC;
        return 10;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndProlog"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndProlog"))-1))) || (__builtin_constant_p ((("%%EndProlog"))) && strlen ((("%%EndProlog"))) < ((size_t) (sizeof(("%%EndProlog"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndProlog"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndProlog"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndProlog"))) + 1) - (size_t)(const void *)((("%%EndProlog"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndProlog"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndProlog"))) && ((size_t)(const void *)(((("%%EndProlog"))) + 1) - (size_t)(const void *)((("%%EndProlog"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndProlog"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndProlog"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndProlog"))) && ((size_t)(const void *)(((("%%EndProlog"))) + 1) - (size_t)(const void *)((("%%EndProlog"))) == 1) && (__s2_len = strlen ((("%%EndProlog"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndProlog"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndProlog"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndProlog"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndProlog"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndProlog"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndProlog")))))); }) : strncmp ((const char *)((line)), (("%%EndProlog")), sizeof(("%%EndProlog"))-1)))==0))) {
        dsc->id = CDSC_ENDPROLOG;
        dsc->endprolog = ((dsc)->data_offset + (dsc)->data_index);
        dsc->scan_section = scan_pre_setup;
        if (dsc_check_match(dsc))
            return CDSC_NOTDSC;
        return CDSC_OK;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginFont:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginFont:"))-1))) || (__builtin_constant_p ((("%%BeginFont:"))) && strlen ((("%%BeginFont:"))) < ((size_t) (sizeof(("%%BeginFont:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginFont:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginFont:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginFont:"))) + 1) - (size_t)(const void *)((("%%BeginFont:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFont:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginFont:"))) && ((size_t)(const void *)(((("%%BeginFont:"))) + 1) - (size_t)(const void *)((("%%BeginFont:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFont:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginFont:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginFont:"))) && ((size_t)(const void *)(((("%%BeginFont:"))) + 1) - (size_t)(const void *)((("%%BeginFont:"))) == 1) && (__s2_len = strlen ((("%%BeginFont:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFont:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginFont:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginFont:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginFont:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginFont:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginFont:")))))); }) : strncmp ((const char *)((line)), (("%%BeginFont:")), sizeof(("%%BeginFont:"))-1)))==0))) {
        dsc->id = CDSC_BEGINFONT;


        dsc->begin_font_count++;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndFont"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndFont"))-1))) || (__builtin_constant_p ((("%%EndFont"))) && strlen ((("%%EndFont"))) < ((size_t) (sizeof(("%%EndFont"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndFont"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndFont"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndFont"))) + 1) - (size_t)(const void *)((("%%EndFont"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndFont"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndFont"))) && ((size_t)(const void *)(((("%%EndFont"))) + 1) - (size_t)(const void *)((("%%EndFont"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndFont"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndFont"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndFont"))) && ((size_t)(const void *)(((("%%EndFont"))) + 1) - (size_t)(const void *)((("%%EndFont"))) == 1) && (__s2_len = strlen ((("%%EndFont"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndFont"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndFont"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndFont"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndFont"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndFont"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndFont")))))); }) : strncmp ((const char *)((line)), (("%%EndFont")), sizeof(("%%EndFont"))-1)))==0))) {
        dsc->id = CDSC_ENDFONT;
        dsc->begin_font_count--;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginFeature:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginFeature:"))-1))) || (__builtin_constant_p ((("%%BeginFeature:"))) && strlen ((("%%BeginFeature:"))) < ((size_t) (sizeof(("%%BeginFeature:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginFeature:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginFeature:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginFeature:"))) + 1) - (size_t)(const void *)((("%%BeginFeature:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFeature:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginFeature:"))) && ((size_t)(const void *)(((("%%BeginFeature:"))) + 1) - (size_t)(const void *)((("%%BeginFeature:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFeature:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginFeature:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginFeature:"))) && ((size_t)(const void *)(((("%%BeginFeature:"))) + 1) - (size_t)(const void *)((("%%BeginFeature:"))) == 1) && (__s2_len = strlen ((("%%BeginFeature:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFeature:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginFeature:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginFeature:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginFeature:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginFeature:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginFeature:")))))); }) : strncmp ((const char *)((line)), (("%%BeginFeature:")), sizeof(("%%BeginFeature:"))-1)))==0))) {
        dsc->id = CDSC_BEGINFEATURE;


        dsc->begin_feature_count++;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndFeature"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndFeature"))-1))) || (__builtin_constant_p ((("%%EndFeature"))) && strlen ((("%%EndFeature"))) < ((size_t) (sizeof(("%%EndFeature"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndFeature"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndFeature"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndFeature"))) + 1) - (size_t)(const void *)((("%%EndFeature"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndFeature"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndFeature"))) && ((size_t)(const void *)(((("%%EndFeature"))) + 1) - (size_t)(const void *)((("%%EndFeature"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndFeature"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndFeature"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndFeature"))) && ((size_t)(const void *)(((("%%EndFeature"))) + 1) - (size_t)(const void *)((("%%EndFeature"))) == 1) && (__s2_len = strlen ((("%%EndFeature"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndFeature"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndFeature"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndFeature"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndFeature"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndFeature"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndFeature")))))); }) : strncmp ((const char *)((line)), (("%%EndFeature")), sizeof(("%%EndFeature"))-1)))==0))) {
        dsc->id = CDSC_ENDFEATURE;
        dsc->begin_feature_count--;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginResource:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginResource:"))-1))) || (__builtin_constant_p ((("%%BeginResource:"))) && strlen ((("%%BeginResource:"))) < ((size_t) (sizeof(("%%BeginResource:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginResource:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginResource:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginResource:"))) + 1) - (size_t)(const void *)((("%%BeginResource:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginResource:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginResource:"))) && ((size_t)(const void *)(((("%%BeginResource:"))) + 1) - (size_t)(const void *)((("%%BeginResource:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginResource:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginResource:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginResource:"))) && ((size_t)(const void *)(((("%%BeginResource:"))) + 1) - (size_t)(const void *)((("%%BeginResource:"))) == 1) && (__s2_len = strlen ((("%%BeginResource:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginResource:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginResource:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginResource:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginResource:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginResource:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginResource:")))))); }) : strncmp ((const char *)((line)), (("%%BeginResource:")), sizeof(("%%BeginResource:"))-1)))==0))) {
        dsc->id = CDSC_BEGINRESOURCE;


        dsc->begin_resource_count++;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndResource"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndResource"))-1))) || (__builtin_constant_p ((("%%EndResource"))) && strlen ((("%%EndResource"))) < ((size_t) (sizeof(("%%EndResource"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndResource"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndResource"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndResource"))) + 1) - (size_t)(const void *)((("%%EndResource"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndResource"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndResource"))) && ((size_t)(const void *)(((("%%EndResource"))) + 1) - (size_t)(const void *)((("%%EndResource"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndResource"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndResource"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndResource"))) && ((size_t)(const void *)(((("%%EndResource"))) + 1) - (size_t)(const void *)((("%%EndResource"))) == 1) && (__s2_len = strlen ((("%%EndResource"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndResource"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndResource"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndResource"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndResource"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndResource"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndResource")))))); }) : strncmp ((const char *)((line)), (("%%EndResource")), sizeof(("%%EndResource"))-1)))==0))) {
        dsc->id = CDSC_ENDRESOURCE;
        dsc->begin_resource_count--;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginProcSet:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginProcSet:"))-1))) || (__builtin_constant_p ((("%%BeginProcSet:"))) && strlen ((("%%BeginProcSet:"))) < ((size_t) (sizeof(("%%BeginProcSet:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginProcSet:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginProcSet:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginProcSet:"))) + 1) - (size_t)(const void *)((("%%BeginProcSet:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProcSet:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginProcSet:"))) && ((size_t)(const void *)(((("%%BeginProcSet:"))) + 1) - (size_t)(const void *)((("%%BeginProcSet:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProcSet:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginProcSet:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginProcSet:"))) && ((size_t)(const void *)(((("%%BeginProcSet:"))) + 1) - (size_t)(const void *)((("%%BeginProcSet:"))) == 1) && (__s2_len = strlen ((("%%BeginProcSet:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProcSet:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginProcSet:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginProcSet:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginProcSet:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginProcSet:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginProcSet:")))))); }) : strncmp ((const char *)((line)), (("%%BeginProcSet:")), sizeof(("%%BeginProcSet:"))-1)))==0))) {
        dsc->id = CDSC_BEGINPROCSET;


        dsc->begin_procset_count++;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndProcSet"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndProcSet"))-1))) || (__builtin_constant_p ((("%%EndProcSet"))) && strlen ((("%%EndProcSet"))) < ((size_t) (sizeof(("%%EndProcSet"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndProcSet"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndProcSet"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndProcSet"))) + 1) - (size_t)(const void *)((("%%EndProcSet"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndProcSet"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndProcSet"))) && ((size_t)(const void *)(((("%%EndProcSet"))) + 1) - (size_t)(const void *)((("%%EndProcSet"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndProcSet"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndProcSet"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndProcSet"))) && ((size_t)(const void *)(((("%%EndProcSet"))) + 1) - (size_t)(const void *)((("%%EndProcSet"))) == 1) && (__s2_len = strlen ((("%%EndProcSet"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndProcSet"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndProcSet"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndProcSet"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndProcSet"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndProcSet"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndProcSet")))))); }) : strncmp ((const char *)((line)), (("%%EndProcSet")), sizeof(("%%EndProcSet"))-1)))==0))) {
        dsc->id = CDSC_ENDPROCSET;
        dsc->begin_procset_count--;
    }
    else {

        dsc->id = CDSC_UNKNOWNDSC;
        dsc_unknown(dsc);
    }

    dsc->endprolog = ((dsc)->data_offset + (dsc)->data_index);
    return CDSC_OK;
}

static int
dsc_scan_setup(CDSC *dsc)
{





    char *line = dsc->line;
    dsc->id = CDSC_OK;

    if (dsc->scan_section == scan_pre_setup) {
        if (((((line[0])=='\r') || ((line[0])=='\n'))))
            return CDSC_OK;
        else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginSetup"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginSetup"))-1))) || (__builtin_constant_p ((("%%BeginSetup"))) && strlen ((("%%BeginSetup"))) < ((size_t) (sizeof(("%%BeginSetup"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginSetup"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginSetup"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginSetup"))) + 1) - (size_t)(const void *)((("%%BeginSetup"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginSetup"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginSetup"))) && ((size_t)(const void *)(((("%%BeginSetup"))) + 1) - (size_t)(const void *)((("%%BeginSetup"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginSetup"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginSetup"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginSetup"))) && ((size_t)(const void *)(((("%%BeginSetup"))) + 1) - (size_t)(const void *)((("%%BeginSetup"))) == 1) && (__s2_len = strlen ((("%%BeginSetup"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginSetup"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginSetup")))))); }) : strncmp ((const char *)((line)), (("%%BeginSetup")), sizeof(("%%BeginSetup"))-1)))==0))) {
            dsc->id = CDSC_BEGINSETUP;
            dsc->beginsetup = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
            dsc->endsetup = ((dsc)->data_offset + (dsc)->data_index);
            dsc->scan_section = scan_setup;
            return CDSC_OK;
        }
        else {
            dsc->scan_section = scan_pre_pages;
            return 10;
        }
    }

    if ((((line)[0]!='%') || ((line)[1]!='%'))) {

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginPreview"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginPreview"))-1))) || (__builtin_constant_p ((("%%BeginPreview"))) && strlen ((("%%BeginPreview"))) < ((size_t) (sizeof(("%%BeginPreview"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginPreview"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginPreview"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginPreview"))) && ((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginPreview"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginPreview"))) && ((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) && (__s2_len = strlen ((("%%BeginPreview"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginPreview")))))); }) : strncmp ((const char *)((line)), (("%%BeginPreview")), sizeof(("%%BeginPreview"))-1)))==0))) {

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginDefaults"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginDefaults"))-1))) || (__builtin_constant_p ((("%%BeginDefaults"))) && strlen ((("%%BeginDefaults"))) < ((size_t) (sizeof(("%%BeginDefaults"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginDefaults"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginDefaults"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginDefaults"))) && ((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginDefaults"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginDefaults"))) && ((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) && (__s2_len = strlen ((("%%BeginDefaults"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults")))))); }) : strncmp ((const char *)((line)), (("%%BeginDefaults")), sizeof(("%%BeginDefaults"))-1)))==0))) {

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginProlog"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginProlog"))-1))) || (__builtin_constant_p ((("%%BeginProlog"))) && strlen ((("%%BeginProlog"))) < ((size_t) (sizeof(("%%BeginProlog"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginProlog"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginProlog"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginProlog"))) && ((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginProlog"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginProlog"))) && ((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) && (__s2_len = strlen ((("%%BeginProlog"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginProlog")))))); }) : strncmp ((const char *)((line)), (("%%BeginProlog")), sizeof(("%%BeginProlog"))-1)))==0))) {

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginSetup"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginSetup"))-1))) || (__builtin_constant_p ((("%%BeginSetup"))) && strlen ((("%%BeginSetup"))) < ((size_t) (sizeof(("%%BeginSetup"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginSetup"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginSetup"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginSetup"))) + 1) - (size_t)(const void *)((("%%BeginSetup"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginSetup"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginSetup"))) && ((size_t)(const void *)(((("%%BeginSetup"))) + 1) - (size_t)(const void *)((("%%BeginSetup"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginSetup"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginSetup"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginSetup"))) && ((size_t)(const void *)(((("%%BeginSetup"))) + 1) - (size_t)(const void *)((("%%BeginSetup"))) == 1) && (__s2_len = strlen ((("%%BeginSetup"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginSetup"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginSetup")))))); }) : strncmp ((const char *)((line)), (("%%BeginSetup")), sizeof(("%%BeginSetup"))-1)))==0))) {

    }
    else if (dsc_is_section(line)) {
        dsc->endsetup = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
        dsc->scan_section = scan_pre_pages;
        if (dsc_check_match(dsc))
            return CDSC_NOTDSC;
        return 10;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndSetup"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndSetup"))-1))) || (__builtin_constant_p ((("%%EndSetup"))) && strlen ((("%%EndSetup"))) < ((size_t) (sizeof(("%%EndSetup"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndSetup"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndSetup"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndSetup"))) + 1) - (size_t)(const void *)((("%%EndSetup"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndSetup"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndSetup"))) && ((size_t)(const void *)(((("%%EndSetup"))) + 1) - (size_t)(const void *)((("%%EndSetup"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndSetup"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndSetup"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndSetup"))) && ((size_t)(const void *)(((("%%EndSetup"))) + 1) - (size_t)(const void *)((("%%EndSetup"))) == 1) && (__s2_len = strlen ((("%%EndSetup"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndSetup"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndSetup"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndSetup"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndSetup"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndSetup"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndSetup")))))); }) : strncmp ((const char *)((line)), (("%%EndSetup")), sizeof(("%%EndSetup"))-1)))==0))) {
        dsc->id = CDSC_ENDSETUP;
        dsc->endsetup = ((dsc)->data_offset + (dsc)->data_index);
        dsc->scan_section = scan_pre_pages;
        if (dsc_check_match(dsc))
            return CDSC_NOTDSC;
        return CDSC_OK;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginFeature:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginFeature:"))-1))) || (__builtin_constant_p ((("%%BeginFeature:"))) && strlen ((("%%BeginFeature:"))) < ((size_t) (sizeof(("%%BeginFeature:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginFeature:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginFeature:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginFeature:"))) + 1) - (size_t)(const void *)((("%%BeginFeature:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFeature:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginFeature:"))) && ((size_t)(const void *)(((("%%BeginFeature:"))) + 1) - (size_t)(const void *)((("%%BeginFeature:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFeature:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginFeature:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginFeature:"))) && ((size_t)(const void *)(((("%%BeginFeature:"))) + 1) - (size_t)(const void *)((("%%BeginFeature:"))) == 1) && (__s2_len = strlen ((("%%BeginFeature:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFeature:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginFeature:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginFeature:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginFeature:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginFeature:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginFeature:")))))); }) : strncmp ((const char *)((line)), (("%%BeginFeature:")), sizeof(("%%BeginFeature:"))-1)))==0))) {
        dsc->id = CDSC_BEGINFEATURE;


        dsc->begin_feature_count++;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndFeature"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndFeature"))-1))) || (__builtin_constant_p ((("%%EndFeature"))) && strlen ((("%%EndFeature"))) < ((size_t) (sizeof(("%%EndFeature"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndFeature"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndFeature"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndFeature"))) + 1) - (size_t)(const void *)((("%%EndFeature"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndFeature"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndFeature"))) && ((size_t)(const void *)(((("%%EndFeature"))) + 1) - (size_t)(const void *)((("%%EndFeature"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndFeature"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndFeature"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndFeature"))) && ((size_t)(const void *)(((("%%EndFeature"))) + 1) - (size_t)(const void *)((("%%EndFeature"))) == 1) && (__s2_len = strlen ((("%%EndFeature"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndFeature"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndFeature"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndFeature"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndFeature"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndFeature"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndFeature")))))); }) : strncmp ((const char *)((line)), (("%%EndFeature")), sizeof(("%%EndFeature"))-1)))==0))) {
        dsc->id = CDSC_ENDFEATURE;
        dsc->begin_feature_count--;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%Feature:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Feature:"))-1))) || (__builtin_constant_p ((("%%Feature:"))) && strlen ((("%%Feature:"))) < ((size_t) (sizeof(("%%Feature:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Feature:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Feature:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Feature:"))) + 1) - (size_t)(const void *)((("%%Feature:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Feature:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Feature:"))) && ((size_t)(const void *)(((("%%Feature:"))) + 1) - (size_t)(const void *)((("%%Feature:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Feature:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Feature:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Feature:"))) && ((size_t)(const void *)(((("%%Feature:"))) + 1) - (size_t)(const void *)((("%%Feature:"))) == 1) && (__s2_len = strlen ((("%%Feature:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Feature:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Feature:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Feature:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Feature:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Feature:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Feature:")))))); }) : strncmp ((const char *)((line)), (("%%Feature:")), sizeof(("%%Feature:"))-1)))==0))) {
        dsc->id = CDSC_FEATURE;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginResource:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginResource:"))-1))) || (__builtin_constant_p ((("%%BeginResource:"))) && strlen ((("%%BeginResource:"))) < ((size_t) (sizeof(("%%BeginResource:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginResource:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginResource:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginResource:"))) + 1) - (size_t)(const void *)((("%%BeginResource:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginResource:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginResource:"))) && ((size_t)(const void *)(((("%%BeginResource:"))) + 1) - (size_t)(const void *)((("%%BeginResource:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginResource:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginResource:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginResource:"))) && ((size_t)(const void *)(((("%%BeginResource:"))) + 1) - (size_t)(const void *)((("%%BeginResource:"))) == 1) && (__s2_len = strlen ((("%%BeginResource:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginResource:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginResource:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginResource:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginResource:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginResource:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginResource:")))))); }) : strncmp ((const char *)((line)), (("%%BeginResource:")), sizeof(("%%BeginResource:"))-1)))==0))) {
        dsc->id = CDSC_BEGINRESOURCE;


        dsc->begin_resource_count++;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndResource"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndResource"))-1))) || (__builtin_constant_p ((("%%EndResource"))) && strlen ((("%%EndResource"))) < ((size_t) (sizeof(("%%EndResource"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndResource"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndResource"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndResource"))) + 1) - (size_t)(const void *)((("%%EndResource"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndResource"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndResource"))) && ((size_t)(const void *)(((("%%EndResource"))) + 1) - (size_t)(const void *)((("%%EndResource"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndResource"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndResource"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndResource"))) && ((size_t)(const void *)(((("%%EndResource"))) + 1) - (size_t)(const void *)((("%%EndResource"))) == 1) && (__s2_len = strlen ((("%%EndResource"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndResource"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndResource"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndResource"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndResource"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndResource"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndResource")))))); }) : strncmp ((const char *)((line)), (("%%EndResource")), sizeof(("%%EndResource"))-1)))==0))) {
        dsc->id = CDSC_ENDRESOURCE;
        dsc->begin_resource_count--;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PaperColor:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PaperColor:"))-1))) || (__builtin_constant_p ((("%%PaperColor:"))) && strlen ((("%%PaperColor:"))) < ((size_t) (sizeof(("%%PaperColor:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PaperColor:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PaperColor:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PaperColor:"))) + 1) - (size_t)(const void *)((("%%PaperColor:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PaperColor:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PaperColor:"))) && ((size_t)(const void *)(((("%%PaperColor:"))) + 1) - (size_t)(const void *)((("%%PaperColor:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperColor:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PaperColor:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PaperColor:"))) && ((size_t)(const void *)(((("%%PaperColor:"))) + 1) - (size_t)(const void *)((("%%PaperColor:"))) == 1) && (__s2_len = strlen ((("%%PaperColor:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperColor:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PaperColor:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PaperColor:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PaperColor:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PaperColor:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PaperColor:")))))); }) : strncmp ((const char *)((line)), (("%%PaperColor:")), sizeof(("%%PaperColor:"))-1)))==0))) {
        dsc->id = CDSC_PAPERCOLOR;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PaperForm:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PaperForm:"))-1))) || (__builtin_constant_p ((("%%PaperForm:"))) && strlen ((("%%PaperForm:"))) < ((size_t) (sizeof(("%%PaperForm:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PaperForm:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PaperForm:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PaperForm:"))) + 1) - (size_t)(const void *)((("%%PaperForm:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PaperForm:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PaperForm:"))) && ((size_t)(const void *)(((("%%PaperForm:"))) + 1) - (size_t)(const void *)((("%%PaperForm:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperForm:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PaperForm:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PaperForm:"))) && ((size_t)(const void *)(((("%%PaperForm:"))) + 1) - (size_t)(const void *)((("%%PaperForm:"))) == 1) && (__s2_len = strlen ((("%%PaperForm:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperForm:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PaperForm:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PaperForm:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PaperForm:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PaperForm:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PaperForm:")))))); }) : strncmp ((const char *)((line)), (("%%PaperForm:")), sizeof(("%%PaperForm:"))-1)))==0))) {
        dsc->id = CDSC_PAPERFORM;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PaperWeight:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PaperWeight:"))-1))) || (__builtin_constant_p ((("%%PaperWeight:"))) && strlen ((("%%PaperWeight:"))) < ((size_t) (sizeof(("%%PaperWeight:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PaperWeight:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PaperWeight:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PaperWeight:"))) + 1) - (size_t)(const void *)((("%%PaperWeight:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PaperWeight:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PaperWeight:"))) && ((size_t)(const void *)(((("%%PaperWeight:"))) + 1) - (size_t)(const void *)((("%%PaperWeight:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperWeight:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PaperWeight:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PaperWeight:"))) && ((size_t)(const void *)(((("%%PaperWeight:"))) + 1) - (size_t)(const void *)((("%%PaperWeight:"))) == 1) && (__s2_len = strlen ((("%%PaperWeight:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperWeight:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PaperWeight:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PaperWeight:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PaperWeight:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PaperWeight:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PaperWeight:")))))); }) : strncmp ((const char *)((line)), (("%%PaperWeight:")), sizeof(("%%PaperWeight:"))-1)))==0))) {
        dsc->id = CDSC_PAPERWEIGHT;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PaperSize:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PaperSize:"))-1))) || (__builtin_constant_p ((("%%PaperSize:"))) && strlen ((("%%PaperSize:"))) < ((size_t) (sizeof(("%%PaperSize:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PaperSize:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PaperSize:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PaperSize:"))) + 1) - (size_t)(const void *)((("%%PaperSize:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PaperSize:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PaperSize:"))) && ((size_t)(const void *)(((("%%PaperSize:"))) + 1) - (size_t)(const void *)((("%%PaperSize:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperSize:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PaperSize:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PaperSize:"))) && ((size_t)(const void *)(((("%%PaperSize:"))) + 1) - (size_t)(const void *)((("%%PaperSize:"))) == 1) && (__s2_len = strlen ((("%%PaperSize:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperSize:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PaperSize:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PaperSize:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PaperSize:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PaperSize:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PaperSize:")))))); }) : strncmp ((const char *)((line)), (("%%PaperSize:")), sizeof(("%%PaperSize:"))-1)))==0))) {

        GSBOOL found_media = ((GSBOOL)0);
        int i;
        int n = 12;
        char buf[256];
        buf[0] = '\0';
        dsc->id = CDSC_PAPERSIZE;
        dsc_copy_string(buf, sizeof(buf)-1, dsc->line+n, dsc->line_length-n,
                ((void*)0));
        for (i=0; i<(int)dsc->media_count; i++) {
            if (dsc->media[i] && dsc->media[i]->name &&
                (dsc_stricmp(buf, dsc->media[i]->name)==0)) {
                dsc->page_media = dsc->media[i];
                found_media = ((GSBOOL)(!((GSBOOL)0)));
                break;
            }
        }
        if (!found_media) {


            const CDSCMEDIA *m = dsc_known_media;
            while (m->name) {
                if (dsc_stricmp(buf, m->name)==0) {
                    dsc->page_media = m;
                    break;
                }
                m++;
            }
            if (m->name == ((void*)0))
                dsc_unknown(dsc);
        }
    }
    else {

        dsc->id = CDSC_UNKNOWNDSC;
        dsc_unknown(dsc);
    }

    dsc->endsetup = ((dsc)->data_offset + (dsc)->data_index);
    return CDSC_OK;
}

static int
dsc_scan_page(CDSC *dsc)
{




    char *line = dsc->line;
    dsc->id = CDSC_OK;

    if (dsc->scan_section == scan_pre_pages) {
        if ((((__extension__ (__builtin_constant_p (sizeof(("%%Page:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Page:"))-1))) || (__builtin_constant_p ((("%%Page:"))) && strlen ((("%%Page:"))) < ((size_t) (sizeof(("%%Page:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Page:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Page:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Page:"))) + 1) - (size_t)(const void *)((("%%Page:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Page:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Page:"))) && ((size_t)(const void *)(((("%%Page:"))) + 1) - (size_t)(const void *)((("%%Page:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Page:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Page:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Page:"))) && ((size_t)(const void *)(((("%%Page:"))) + 1) - (size_t)(const void *)((("%%Page:"))) == 1) && (__s2_len = strlen ((("%%Page:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Page:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Page:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Page:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Page:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Page:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Page:")))))); }) : strncmp ((const char *)((line)), (("%%Page:")), sizeof(("%%Page:"))-1)))==0))) {
            dsc->scan_section = scan_pages;

        }
        else {




            unsigned long *last;
            if (dsc->endsetup != 0)
                last = &dsc->endsetup;
            else if (dsc->endprolog != 0)
                last = &dsc->endprolog;
            else if (dsc->enddefaults != 0)
                last = &dsc->enddefaults;
            else if (dsc->endpreview != 0)
                last = &dsc->endpreview;
            else if (dsc->endcomments != 0)
                last = &dsc->endcomments;
            else
                last = &dsc->begincomments;
            *last = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
            if ((((__extension__ (__builtin_constant_p (sizeof(("%%Trailer"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Trailer"))-1))) || (__builtin_constant_p ((("%%Trailer"))) && strlen ((("%%Trailer"))) < ((size_t) (sizeof(("%%Trailer"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Trailer"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Trailer"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Trailer"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Trailer"))) && ((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Trailer"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Trailer"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Trailer"))) && ((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) && (__s2_len = strlen ((("%%Trailer"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Trailer"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Trailer")))))); }) : strncmp ((const char *)((line)), (("%%Trailer")), sizeof(("%%Trailer"))-1)))==0)) || (((__extension__ (__builtin_constant_p (sizeof(("%%EOF"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EOF"))-1))) || (__builtin_constant_p ((("%%EOF"))) && strlen ((("%%EOF"))) < ((size_t) (sizeof(("%%EOF"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EOF"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EOF"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EOF"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EOF"))) && ((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EOF"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EOF"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EOF"))) && ((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) && (__s2_len = strlen ((("%%EOF"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EOF"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EOF"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EOF"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EOF"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EOF"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EOF")))))); }) : strncmp ((const char *)((line)), (("%%EOF")), sizeof(("%%EOF"))-1)))==0))) {
                dsc->scan_section = scan_pre_trailer;
                return 10;
            }
            *last = ((dsc)->data_offset + (dsc)->data_index);
            return CDSC_OK;
        }
    }

    if ((((line)[0]!='%') || ((line)[1]!='%'))) {

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%Page:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Page:"))-1))) || (__builtin_constant_p ((("%%Page:"))) && strlen ((("%%Page:"))) < ((size_t) (sizeof(("%%Page:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Page:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Page:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Page:"))) + 1) - (size_t)(const void *)((("%%Page:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Page:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Page:"))) && ((size_t)(const void *)(((("%%Page:"))) + 1) - (size_t)(const void *)((("%%Page:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Page:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Page:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Page:"))) && ((size_t)(const void *)(((("%%Page:"))) + 1) - (size_t)(const void *)((("%%Page:"))) == 1) && (__s2_len = strlen ((("%%Page:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Page:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Page:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Page:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Page:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Page:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Page:")))))); }) : strncmp ((const char *)((line)), (("%%Page:")), sizeof(("%%Page:"))-1)))==0))) {
        int code;
        dsc->id = CDSC_PAGE;
        if (dsc->page_count) {
            dsc->page[dsc->page_count-1].end = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
            if (dsc_check_match(dsc))
                return CDSC_NOTDSC;
        }

        if ( (code = dsc_parse_page(dsc)) != CDSC_OK)
            return code;
        if (dsc->page_count == 0)
            dsc->scan_section = scan_pre_pages;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginPreview"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginPreview"))-1))) || (__builtin_constant_p ((("%%BeginPreview"))) && strlen ((("%%BeginPreview"))) < ((size_t) (sizeof(("%%BeginPreview"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginPreview"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginPreview"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginPreview"))) && ((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginPreview"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginPreview"))) && ((size_t)(const void *)(((("%%BeginPreview"))) + 1) - (size_t)(const void *)((("%%BeginPreview"))) == 1) && (__s2_len = strlen ((("%%BeginPreview"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPreview"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginPreview"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginPreview")))))); }) : strncmp ((const char *)((line)), (("%%BeginPreview")), sizeof(("%%BeginPreview"))-1)))==0))) {

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginDefaults"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginDefaults"))-1))) || (__builtin_constant_p ((("%%BeginDefaults"))) && strlen ((("%%BeginDefaults"))) < ((size_t) (sizeof(("%%BeginDefaults"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginDefaults"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginDefaults"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginDefaults"))) && ((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginDefaults"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginDefaults"))) && ((size_t)(const void *)(((("%%BeginDefaults"))) + 1) - (size_t)(const void *)((("%%BeginDefaults"))) == 1) && (__s2_len = strlen ((("%%BeginDefaults"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginDefaults"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginDefaults")))))); }) : strncmp ((const char *)((line)), (("%%BeginDefaults")), sizeof(("%%BeginDefaults"))-1)))==0))) {

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginProlog"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginProlog"))-1))) || (__builtin_constant_p ((("%%BeginProlog"))) && strlen ((("%%BeginProlog"))) < ((size_t) (sizeof(("%%BeginProlog"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginProlog"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginProlog"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginProlog"))) && ((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginProlog"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginProlog"))) && ((size_t)(const void *)(((("%%BeginProlog"))) + 1) - (size_t)(const void *)((("%%BeginProlog"))) == 1) && (__s2_len = strlen ((("%%BeginProlog"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProlog"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginProlog"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginProlog")))))); }) : strncmp ((const char *)((line)), (("%%BeginProlog")), sizeof(("%%BeginProlog"))-1)))==0))) {

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginSetup"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginSetup"))-1))) || (__builtin_constant_p ((("%%BeginSetup"))) && strlen ((("%%BeginSetup"))) < ((size_t) (sizeof(("%%BeginSetup"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginSetup"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginSetup"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginSetup"))) + 1) - (size_t)(const void *)((("%%BeginSetup"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginSetup"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginSetup"))) && ((size_t)(const void *)(((("%%BeginSetup"))) + 1) - (size_t)(const void *)((("%%BeginSetup"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginSetup"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginSetup"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginSetup"))) && ((size_t)(const void *)(((("%%BeginSetup"))) + 1) - (size_t)(const void *)((("%%BeginSetup"))) == 1) && (__s2_len = strlen ((("%%BeginSetup"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginSetup"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginSetup"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginSetup")))))); }) : strncmp ((const char *)((line)), (("%%BeginSetup")), sizeof(("%%BeginSetup"))-1)))==0))) {

    }
    else if (dsc_is_section(line)) {
        if ((((__extension__ (__builtin_constant_p (sizeof(("%%Trailer"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Trailer"))-1))) || (__builtin_constant_p ((("%%Trailer"))) && strlen ((("%%Trailer"))) < ((size_t) (sizeof(("%%Trailer"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Trailer"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Trailer"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Trailer"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Trailer"))) && ((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Trailer"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Trailer"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Trailer"))) && ((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) && (__s2_len = strlen ((("%%Trailer"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Trailer"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Trailer")))))); }) : strncmp ((const char *)((line)), (("%%Trailer")), sizeof(("%%Trailer"))-1)))==0))) {
            if (dsc->page_count)
                dsc->page[dsc->page_count-1].end = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
            if (dsc->file_length) {
                if ((!dsc->doseps_end &&
                        ((((dsc)->data_offset + (dsc)->data_index) + 32768) < dsc->file_length)) ||
                     ((dsc->doseps_end) &&
                        ((((dsc)->data_offset + (dsc)->data_index) + 32768) < dsc->doseps_end))) {
                    int rc = dsc_error(dsc, CDSC_MESSAGE_EARLY_TRAILER,
                        dsc->line, dsc->line_length);
                    switch (rc) {
                        case CDSC_RESPONSE_OK:

                            break;
                        case CDSC_RESPONSE_CANCEL:

                            dsc->scan_section = scan_pre_trailer;
                            if (dsc_check_match(dsc))
                                return CDSC_NOTDSC;
                            return 10;
                        case CDSC_RESPONSE_IGNORE_ALL:
                            return CDSC_NOTDSC;
                    }
                }
                else {
                    dsc->scan_section = scan_pre_trailer;
                    if (dsc_check_match(dsc))
                        return CDSC_NOTDSC;
                    return 10;
                }
            }
            else {
                dsc->scan_section = scan_pre_trailer;
                if (dsc_check_match(dsc))
                    return CDSC_NOTDSC;
                return 10;
            }
        }
        else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EOF"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EOF"))-1))) || (__builtin_constant_p ((("%%EOF"))) && strlen ((("%%EOF"))) < ((size_t) (sizeof(("%%EOF"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EOF"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EOF"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EOF"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EOF"))) && ((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EOF"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EOF"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EOF"))) && ((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) && (__s2_len = strlen ((("%%EOF"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EOF"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EOF"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EOF"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EOF"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EOF"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EOF")))))); }) : strncmp ((const char *)((line)), (("%%EOF")), sizeof(("%%EOF"))-1)))==0))) {
            if (dsc->page_count)
                dsc->page[dsc->page_count-1].end = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
            if (dsc->file_length) {
                if ((!dsc->doseps_end &&
                        ((((dsc)->data_offset + (dsc)->data_index) + 100) < dsc->file_length)) ||
                     ((dsc->doseps_end) &&
                        ((((dsc)->data_offset + (dsc)->data_index) + 100) < dsc->doseps_end))) {
                    int rc = dsc_error(dsc, CDSC_MESSAGE_EARLY_EOF,
                        dsc->line, dsc->line_length);
                    switch (rc) {
                        case CDSC_RESPONSE_OK:

                            break;
                        case CDSC_RESPONSE_CANCEL:

                            dsc->scan_section = scan_eof;
                            dsc->eof = ((GSBOOL)(!((GSBOOL)0)));
                            if (dsc_check_match(dsc))
                                return CDSC_NOTDSC;
                            return 10;
                        case CDSC_RESPONSE_IGNORE_ALL:
                            return CDSC_NOTDSC;
                    }
                }
            }
            else {

                if (dsc_check_match(dsc))
                    return CDSC_NOTDSC;
                return CDSC_OK;
            }
        }
        else {


            int rc = dsc_error(dsc, CDSC_MESSAGE_BAD_SECTION,
                    dsc->line, dsc->line_length);
            if (rc == CDSC_RESPONSE_IGNORE_ALL)
                return CDSC_NOTDSC;
        }
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PageTrailer"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PageTrailer"))-1))) || (__builtin_constant_p ((("%%PageTrailer"))) && strlen ((("%%PageTrailer"))) < ((size_t) (sizeof(("%%PageTrailer"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PageTrailer"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PageTrailer"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PageTrailer"))) + 1) - (size_t)(const void *)((("%%PageTrailer"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PageTrailer"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PageTrailer"))) && ((size_t)(const void *)(((("%%PageTrailer"))) + 1) - (size_t)(const void *)((("%%PageTrailer"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageTrailer"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PageTrailer"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PageTrailer"))) && ((size_t)(const void *)(((("%%PageTrailer"))) + 1) - (size_t)(const void *)((("%%PageTrailer"))) == 1) && (__s2_len = strlen ((("%%PageTrailer"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageTrailer"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PageTrailer"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PageTrailer"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PageTrailer"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PageTrailer"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PageTrailer")))))); }) : strncmp ((const char *)((line)), (("%%PageTrailer")), sizeof(("%%PageTrailer"))-1)))==0))) {
        dsc->id = CDSC_PAGETRAILER;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginPageSetup"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginPageSetup"))-1))) || (__builtin_constant_p ((("%%BeginPageSetup"))) && strlen ((("%%BeginPageSetup"))) < ((size_t) (sizeof(("%%BeginPageSetup"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginPageSetup"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginPageSetup"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginPageSetup"))) + 1) - (size_t)(const void *)((("%%BeginPageSetup"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPageSetup"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginPageSetup"))) && ((size_t)(const void *)(((("%%BeginPageSetup"))) + 1) - (size_t)(const void *)((("%%BeginPageSetup"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPageSetup"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginPageSetup"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginPageSetup"))) && ((size_t)(const void *)(((("%%BeginPageSetup"))) + 1) - (size_t)(const void *)((("%%BeginPageSetup"))) == 1) && (__s2_len = strlen ((("%%BeginPageSetup"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginPageSetup"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginPageSetup"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginPageSetup"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginPageSetup"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginPageSetup"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginPageSetup")))))); }) : strncmp ((const char *)((line)), (("%%BeginPageSetup")), sizeof(("%%BeginPageSetup"))-1)))==0))) {
        dsc->id = CDSC_BEGINPAGESETUP;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndPageSetup"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndPageSetup"))-1))) || (__builtin_constant_p ((("%%EndPageSetup"))) && strlen ((("%%EndPageSetup"))) < ((size_t) (sizeof(("%%EndPageSetup"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndPageSetup"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndPageSetup"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndPageSetup"))) + 1) - (size_t)(const void *)((("%%EndPageSetup"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndPageSetup"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndPageSetup"))) && ((size_t)(const void *)(((("%%EndPageSetup"))) + 1) - (size_t)(const void *)((("%%EndPageSetup"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndPageSetup"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndPageSetup"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndPageSetup"))) && ((size_t)(const void *)(((("%%EndPageSetup"))) + 1) - (size_t)(const void *)((("%%EndPageSetup"))) == 1) && (__s2_len = strlen ((("%%EndPageSetup"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndPageSetup"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndPageSetup"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndPageSetup"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndPageSetup"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndPageSetup"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndPageSetup")))))); }) : strncmp ((const char *)((line)), (("%%EndPageSetup")), sizeof(("%%EndPageSetup"))-1)))==0))) {
        dsc->id = CDSC_ENDPAGESETUP;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PageMedia:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PageMedia:"))-1))) || (__builtin_constant_p ((("%%PageMedia:"))) && strlen ((("%%PageMedia:"))) < ((size_t) (sizeof(("%%PageMedia:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PageMedia:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PageMedia:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PageMedia:"))) + 1) - (size_t)(const void *)((("%%PageMedia:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PageMedia:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PageMedia:"))) && ((size_t)(const void *)(((("%%PageMedia:"))) + 1) - (size_t)(const void *)((("%%PageMedia:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageMedia:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PageMedia:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PageMedia:"))) && ((size_t)(const void *)(((("%%PageMedia:"))) + 1) - (size_t)(const void *)((("%%PageMedia:"))) == 1) && (__s2_len = strlen ((("%%PageMedia:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageMedia:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PageMedia:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PageMedia:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PageMedia:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PageMedia:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PageMedia:")))))); }) : strncmp ((const char *)((line)), (("%%PageMedia:")), sizeof(("%%PageMedia:"))-1)))==0))) {
        dsc->id = CDSC_PAGEMEDIA;
        if (dsc->page_count)
            dsc_parse_media(dsc, &(dsc->page[dsc->page_count-1].media));
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PaperColor:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PaperColor:"))-1))) || (__builtin_constant_p ((("%%PaperColor:"))) && strlen ((("%%PaperColor:"))) < ((size_t) (sizeof(("%%PaperColor:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PaperColor:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PaperColor:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PaperColor:"))) + 1) - (size_t)(const void *)((("%%PaperColor:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PaperColor:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PaperColor:"))) && ((size_t)(const void *)(((("%%PaperColor:"))) + 1) - (size_t)(const void *)((("%%PaperColor:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperColor:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PaperColor:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PaperColor:"))) && ((size_t)(const void *)(((("%%PaperColor:"))) + 1) - (size_t)(const void *)((("%%PaperColor:"))) == 1) && (__s2_len = strlen ((("%%PaperColor:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperColor:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PaperColor:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PaperColor:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PaperColor:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PaperColor:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PaperColor:")))))); }) : strncmp ((const char *)((line)), (("%%PaperColor:")), sizeof(("%%PaperColor:"))-1)))==0))) {
        dsc->id = CDSC_PAPERCOLOR;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PaperForm:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PaperForm:"))-1))) || (__builtin_constant_p ((("%%PaperForm:"))) && strlen ((("%%PaperForm:"))) < ((size_t) (sizeof(("%%PaperForm:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PaperForm:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PaperForm:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PaperForm:"))) + 1) - (size_t)(const void *)((("%%PaperForm:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PaperForm:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PaperForm:"))) && ((size_t)(const void *)(((("%%PaperForm:"))) + 1) - (size_t)(const void *)((("%%PaperForm:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperForm:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PaperForm:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PaperForm:"))) && ((size_t)(const void *)(((("%%PaperForm:"))) + 1) - (size_t)(const void *)((("%%PaperForm:"))) == 1) && (__s2_len = strlen ((("%%PaperForm:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperForm:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PaperForm:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PaperForm:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PaperForm:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PaperForm:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PaperForm:")))))); }) : strncmp ((const char *)((line)), (("%%PaperForm:")), sizeof(("%%PaperForm:"))-1)))==0))) {
        dsc->id = CDSC_PAPERFORM;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PaperWeight:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PaperWeight:"))-1))) || (__builtin_constant_p ((("%%PaperWeight:"))) && strlen ((("%%PaperWeight:"))) < ((size_t) (sizeof(("%%PaperWeight:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PaperWeight:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PaperWeight:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PaperWeight:"))) + 1) - (size_t)(const void *)((("%%PaperWeight:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PaperWeight:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PaperWeight:"))) && ((size_t)(const void *)(((("%%PaperWeight:"))) + 1) - (size_t)(const void *)((("%%PaperWeight:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperWeight:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PaperWeight:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PaperWeight:"))) && ((size_t)(const void *)(((("%%PaperWeight:"))) + 1) - (size_t)(const void *)((("%%PaperWeight:"))) == 1) && (__s2_len = strlen ((("%%PaperWeight:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperWeight:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PaperWeight:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PaperWeight:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PaperWeight:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PaperWeight:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PaperWeight:")))))); }) : strncmp ((const char *)((line)), (("%%PaperWeight:")), sizeof(("%%PaperWeight:"))-1)))==0))) {
        dsc->id = CDSC_PAPERWEIGHT;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PaperSize:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PaperSize:"))-1))) || (__builtin_constant_p ((("%%PaperSize:"))) && strlen ((("%%PaperSize:"))) < ((size_t) (sizeof(("%%PaperSize:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PaperSize:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PaperSize:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PaperSize:"))) + 1) - (size_t)(const void *)((("%%PaperSize:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PaperSize:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PaperSize:"))) && ((size_t)(const void *)(((("%%PaperSize:"))) + 1) - (size_t)(const void *)((("%%PaperSize:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperSize:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PaperSize:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PaperSize:"))) && ((size_t)(const void *)(((("%%PaperSize:"))) + 1) - (size_t)(const void *)((("%%PaperSize:"))) == 1) && (__s2_len = strlen ((("%%PaperSize:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PaperSize:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PaperSize:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PaperSize:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PaperSize:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PaperSize:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PaperSize:")))))); }) : strncmp ((const char *)((line)), (("%%PaperSize:")), sizeof(("%%PaperSize:"))-1)))==0))) {

        GSBOOL found_media = ((GSBOOL)0);
        int i;
        int n = 12;
        char buf[256];
        buf[0] = '\0';
        dsc_copy_string(buf, sizeof(buf)-1, dsc->line+n,
            dsc->line_length-n, ((void*)0));
        for (i=0; i<(int)dsc->media_count; i++) {
            if (dsc->media[i] && dsc->media[i]->name &&
                (dsc_stricmp(buf, dsc->media[i]->name)==0)) {
                if (dsc->page_count)
                    dsc->page[dsc->page_count-1].media = dsc->media[i];
                found_media = ((GSBOOL)(!((GSBOOL)0)));
                break;
            }
        }
        if (!found_media) {


            const CDSCMEDIA *m = dsc_known_media;
            while (m->name) {
                if (dsc_stricmp(buf, m->name)==0) {
                    if (dsc->page_count)
                        dsc->page[dsc->page_count-1].media = m;
                    break;
                }
                m++;
            }
            if (m->name == ((void*)0))
                dsc_unknown(dsc);
        }
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PageOrientation:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PageOrientation:"))-1))) || (__builtin_constant_p ((("%%PageOrientation:"))) && strlen ((("%%PageOrientation:"))) < ((size_t) (sizeof(("%%PageOrientation:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PageOrientation:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PageOrientation:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PageOrientation:"))) + 1) - (size_t)(const void *)((("%%PageOrientation:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PageOrientation:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PageOrientation:"))) && ((size_t)(const void *)(((("%%PageOrientation:"))) + 1) - (size_t)(const void *)((("%%PageOrientation:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageOrientation:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PageOrientation:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PageOrientation:"))) && ((size_t)(const void *)(((("%%PageOrientation:"))) + 1) - (size_t)(const void *)((("%%PageOrientation:"))) == 1) && (__s2_len = strlen ((("%%PageOrientation:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageOrientation:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PageOrientation:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PageOrientation:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PageOrientation:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PageOrientation:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PageOrientation:")))))); }) : strncmp ((const char *)((line)), (("%%PageOrientation:")), sizeof(("%%PageOrientation:"))-1)))==0))) {
        if (dsc->page_count) {
            dsc->id = CDSC_PAGEORIENTATION;
            if (dsc_parse_orientation(dsc,
                &(dsc->page[dsc->page_count-1].orientation) ,18))
                return CDSC_NOTDSC;
        }
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PageBoundingBox:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PageBoundingBox:"))-1))) || (__builtin_constant_p ((("%%PageBoundingBox:"))) && strlen ((("%%PageBoundingBox:"))) < ((size_t) (sizeof(("%%PageBoundingBox:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PageBoundingBox:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PageBoundingBox:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PageBoundingBox:"))) + 1) - (size_t)(const void *)((("%%PageBoundingBox:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PageBoundingBox:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PageBoundingBox:"))) && ((size_t)(const void *)(((("%%PageBoundingBox:"))) + 1) - (size_t)(const void *)((("%%PageBoundingBox:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageBoundingBox:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PageBoundingBox:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PageBoundingBox:"))) && ((size_t)(const void *)(((("%%PageBoundingBox:"))) + 1) - (size_t)(const void *)((("%%PageBoundingBox:"))) == 1) && (__s2_len = strlen ((("%%PageBoundingBox:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageBoundingBox:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PageBoundingBox:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PageBoundingBox:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PageBoundingBox:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PageBoundingBox:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PageBoundingBox:")))))); }) : strncmp ((const char *)((line)), (("%%PageBoundingBox:")), sizeof(("%%PageBoundingBox:"))-1)))==0))) {
        if (dsc->page_count) {
            dsc->id = CDSC_PAGEBOUNDINGBOX;
            if (dsc_parse_bounding_box(dsc,
                &dsc->page[dsc->page_count-1].bbox, 18))
                return CDSC_NOTDSC;
        }
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%ViewingOrientation:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%ViewingOrientation:"))-1))) || (__builtin_constant_p ((("%%ViewingOrientation:"))) && strlen ((("%%ViewingOrientation:"))) < ((size_t) (sizeof(("%%ViewingOrientation:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%ViewingOrientation:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%ViewingOrientation:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%ViewingOrientation:"))) + 1) - (size_t)(const void *)((("%%ViewingOrientation:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%ViewingOrientation:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%ViewingOrientation:"))) && ((size_t)(const void *)(((("%%ViewingOrientation:"))) + 1) - (size_t)(const void *)((("%%ViewingOrientation:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%ViewingOrientation:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%ViewingOrientation:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%ViewingOrientation:"))) && ((size_t)(const void *)(((("%%ViewingOrientation:"))) + 1) - (size_t)(const void *)((("%%ViewingOrientation:"))) == 1) && (__s2_len = strlen ((("%%ViewingOrientation:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%ViewingOrientation:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%ViewingOrientation:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%ViewingOrientation:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%ViewingOrientation:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%ViewingOrientation:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%ViewingOrientation:")))))); }) : strncmp ((const char *)((line)), (("%%ViewingOrientation:")), sizeof(("%%ViewingOrientation:"))-1)))==0))) {
        if (dsc->page_count) {
            dsc->id = CDSC_VIEWINGORIENTATION;
            if (dsc_parse_viewing_orientation(dsc,
                &dsc->page[dsc->page_count-1].viewing_orientation))
                return CDSC_ERROR;
        }
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PageCropBox:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PageCropBox:"))-1))) || (__builtin_constant_p ((("%%PageCropBox:"))) && strlen ((("%%PageCropBox:"))) < ((size_t) (sizeof(("%%PageCropBox:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PageCropBox:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PageCropBox:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PageCropBox:"))) + 1) - (size_t)(const void *)((("%%PageCropBox:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PageCropBox:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PageCropBox:"))) && ((size_t)(const void *)(((("%%PageCropBox:"))) + 1) - (size_t)(const void *)((("%%PageCropBox:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageCropBox:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PageCropBox:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PageCropBox:"))) && ((size_t)(const void *)(((("%%PageCropBox:"))) + 1) - (size_t)(const void *)((("%%PageCropBox:"))) == 1) && (__s2_len = strlen ((("%%PageCropBox:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageCropBox:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PageCropBox:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PageCropBox:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PageCropBox:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PageCropBox:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PageCropBox:")))))); }) : strncmp ((const char *)((line)), (("%%PageCropBox:")), sizeof(("%%PageCropBox:"))-1)))==0))) {
        if (dsc->page_count) {
            dsc->id = CDSC_PAGECROPBOX;
            if (dsc_parse_float_bounding_box(dsc,
                &(dsc->page[dsc->page_count-1].crop_box), 14))
                return CDSC_ERROR;
        }
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginFont:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginFont:"))-1))) || (__builtin_constant_p ((("%%BeginFont:"))) && strlen ((("%%BeginFont:"))) < ((size_t) (sizeof(("%%BeginFont:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginFont:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginFont:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginFont:"))) + 1) - (size_t)(const void *)((("%%BeginFont:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFont:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginFont:"))) && ((size_t)(const void *)(((("%%BeginFont:"))) + 1) - (size_t)(const void *)((("%%BeginFont:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFont:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginFont:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginFont:"))) && ((size_t)(const void *)(((("%%BeginFont:"))) + 1) - (size_t)(const void *)((("%%BeginFont:"))) == 1) && (__s2_len = strlen ((("%%BeginFont:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFont:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginFont:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginFont:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginFont:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginFont:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginFont:")))))); }) : strncmp ((const char *)((line)), (("%%BeginFont:")), sizeof(("%%BeginFont:"))-1)))==0))) {
        dsc->id = CDSC_BEGINFONT;


        dsc->begin_font_count++;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndFont"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndFont"))-1))) || (__builtin_constant_p ((("%%EndFont"))) && strlen ((("%%EndFont"))) < ((size_t) (sizeof(("%%EndFont"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndFont"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndFont"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndFont"))) + 1) - (size_t)(const void *)((("%%EndFont"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndFont"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndFont"))) && ((size_t)(const void *)(((("%%EndFont"))) + 1) - (size_t)(const void *)((("%%EndFont"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndFont"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndFont"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndFont"))) && ((size_t)(const void *)(((("%%EndFont"))) + 1) - (size_t)(const void *)((("%%EndFont"))) == 1) && (__s2_len = strlen ((("%%EndFont"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndFont"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndFont"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndFont"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndFont"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndFont"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndFont")))))); }) : strncmp ((const char *)((line)), (("%%EndFont")), sizeof(("%%EndFont"))-1)))==0))) {
        dsc->id = CDSC_BEGINFONT;
        dsc->begin_font_count--;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginFeature:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginFeature:"))-1))) || (__builtin_constant_p ((("%%BeginFeature:"))) && strlen ((("%%BeginFeature:"))) < ((size_t) (sizeof(("%%BeginFeature:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginFeature:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginFeature:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginFeature:"))) + 1) - (size_t)(const void *)((("%%BeginFeature:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFeature:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginFeature:"))) && ((size_t)(const void *)(((("%%BeginFeature:"))) + 1) - (size_t)(const void *)((("%%BeginFeature:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFeature:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginFeature:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginFeature:"))) && ((size_t)(const void *)(((("%%BeginFeature:"))) + 1) - (size_t)(const void *)((("%%BeginFeature:"))) == 1) && (__s2_len = strlen ((("%%BeginFeature:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginFeature:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginFeature:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginFeature:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginFeature:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginFeature:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginFeature:")))))); }) : strncmp ((const char *)((line)), (("%%BeginFeature:")), sizeof(("%%BeginFeature:"))-1)))==0))) {
        dsc->id = CDSC_BEGINFEATURE;


        dsc->begin_feature_count++;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndFeature"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndFeature"))-1))) || (__builtin_constant_p ((("%%EndFeature"))) && strlen ((("%%EndFeature"))) < ((size_t) (sizeof(("%%EndFeature"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndFeature"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndFeature"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndFeature"))) + 1) - (size_t)(const void *)((("%%EndFeature"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndFeature"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndFeature"))) && ((size_t)(const void *)(((("%%EndFeature"))) + 1) - (size_t)(const void *)((("%%EndFeature"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndFeature"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndFeature"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndFeature"))) && ((size_t)(const void *)(((("%%EndFeature"))) + 1) - (size_t)(const void *)((("%%EndFeature"))) == 1) && (__s2_len = strlen ((("%%EndFeature"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndFeature"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndFeature"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndFeature"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndFeature"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndFeature"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndFeature")))))); }) : strncmp ((const char *)((line)), (("%%EndFeature")), sizeof(("%%EndFeature"))-1)))==0))) {
        dsc->id = CDSC_ENDFEATURE;
        dsc->begin_feature_count--;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginResource:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginResource:"))-1))) || (__builtin_constant_p ((("%%BeginResource:"))) && strlen ((("%%BeginResource:"))) < ((size_t) (sizeof(("%%BeginResource:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginResource:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginResource:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginResource:"))) + 1) - (size_t)(const void *)((("%%BeginResource:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginResource:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginResource:"))) && ((size_t)(const void *)(((("%%BeginResource:"))) + 1) - (size_t)(const void *)((("%%BeginResource:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginResource:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginResource:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginResource:"))) && ((size_t)(const void *)(((("%%BeginResource:"))) + 1) - (size_t)(const void *)((("%%BeginResource:"))) == 1) && (__s2_len = strlen ((("%%BeginResource:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginResource:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginResource:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginResource:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginResource:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginResource:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginResource:")))))); }) : strncmp ((const char *)((line)), (("%%BeginResource:")), sizeof(("%%BeginResource:"))-1)))==0))) {
        dsc->id = CDSC_BEGINRESOURCE;


        dsc->begin_resource_count++;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndResource"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndResource"))-1))) || (__builtin_constant_p ((("%%EndResource"))) && strlen ((("%%EndResource"))) < ((size_t) (sizeof(("%%EndResource"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndResource"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndResource"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndResource"))) + 1) - (size_t)(const void *)((("%%EndResource"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndResource"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndResource"))) && ((size_t)(const void *)(((("%%EndResource"))) + 1) - (size_t)(const void *)((("%%EndResource"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndResource"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndResource"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndResource"))) && ((size_t)(const void *)(((("%%EndResource"))) + 1) - (size_t)(const void *)((("%%EndResource"))) == 1) && (__s2_len = strlen ((("%%EndResource"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndResource"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndResource"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndResource"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndResource"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndResource"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndResource")))))); }) : strncmp ((const char *)((line)), (("%%EndResource")), sizeof(("%%EndResource"))-1)))==0))) {
        dsc->id = CDSC_ENDRESOURCE;
        dsc->begin_resource_count--;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BeginProcSet:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BeginProcSet:"))-1))) || (__builtin_constant_p ((("%%BeginProcSet:"))) && strlen ((("%%BeginProcSet:"))) < ((size_t) (sizeof(("%%BeginProcSet:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BeginProcSet:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BeginProcSet:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BeginProcSet:"))) + 1) - (size_t)(const void *)((("%%BeginProcSet:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProcSet:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BeginProcSet:"))) && ((size_t)(const void *)(((("%%BeginProcSet:"))) + 1) - (size_t)(const void *)((("%%BeginProcSet:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProcSet:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BeginProcSet:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BeginProcSet:"))) && ((size_t)(const void *)(((("%%BeginProcSet:"))) + 1) - (size_t)(const void *)((("%%BeginProcSet:"))) == 1) && (__s2_len = strlen ((("%%BeginProcSet:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BeginProcSet:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BeginProcSet:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BeginProcSet:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BeginProcSet:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BeginProcSet:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BeginProcSet:")))))); }) : strncmp ((const char *)((line)), (("%%BeginProcSet:")), sizeof(("%%BeginProcSet:"))-1)))==0))) {
        dsc->id = CDSC_BEGINPROCSET;


        dsc->begin_procset_count++;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EndProcSet"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EndProcSet"))-1))) || (__builtin_constant_p ((("%%EndProcSet"))) && strlen ((("%%EndProcSet"))) < ((size_t) (sizeof(("%%EndProcSet"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EndProcSet"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EndProcSet"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EndProcSet"))) + 1) - (size_t)(const void *)((("%%EndProcSet"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EndProcSet"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EndProcSet"))) && ((size_t)(const void *)(((("%%EndProcSet"))) + 1) - (size_t)(const void *)((("%%EndProcSet"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndProcSet"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EndProcSet"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EndProcSet"))) && ((size_t)(const void *)(((("%%EndProcSet"))) + 1) - (size_t)(const void *)((("%%EndProcSet"))) == 1) && (__s2_len = strlen ((("%%EndProcSet"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EndProcSet"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EndProcSet"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EndProcSet"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EndProcSet"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EndProcSet"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EndProcSet")))))); }) : strncmp ((const char *)((line)), (("%%EndProcSet")), sizeof(("%%EndProcSet"))-1)))==0))) {
        dsc->id = CDSC_ENDPROCSET;
        dsc->begin_procset_count--;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%IncludeFont:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%IncludeFont:"))-1))) || (__builtin_constant_p ((("%%IncludeFont:"))) && strlen ((("%%IncludeFont:"))) < ((size_t) (sizeof(("%%IncludeFont:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%IncludeFont:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%IncludeFont:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%IncludeFont:"))) + 1) - (size_t)(const void *)((("%%IncludeFont:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%IncludeFont:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%IncludeFont:"))) && ((size_t)(const void *)(((("%%IncludeFont:"))) + 1) - (size_t)(const void *)((("%%IncludeFont:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%IncludeFont:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%IncludeFont:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%IncludeFont:"))) && ((size_t)(const void *)(((("%%IncludeFont:"))) + 1) - (size_t)(const void *)((("%%IncludeFont:"))) == 1) && (__s2_len = strlen ((("%%IncludeFont:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%IncludeFont:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%IncludeFont:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%IncludeFont:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%IncludeFont:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%IncludeFont:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%IncludeFont:")))))); }) : strncmp ((const char *)((line)), (("%%IncludeFont:")), sizeof(("%%IncludeFont:"))-1)))==0))) {
        dsc->id = CDSC_INCLUDEFONT;

    }
    else {

        dsc->id = CDSC_UNKNOWNDSC;
        dsc_unknown(dsc);
    }

    if (dsc->page_count)
        dsc->page[dsc->page_count-1].end = ((dsc)->data_offset + (dsc)->data_index);
    return CDSC_OK;
}
# 3302 "./psi/dscparse.c"
static int
dsc_scan_trailer(CDSC *dsc)
{




    char *line = dsc->line;
    GSBOOL continued = ((GSBOOL)0);

    if (dsc->endtrailer && (((__extension__ (__builtin_constant_p (sizeof(("%!PS-Adobe"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%!PS-Adobe"))-1))) || (__builtin_constant_p ((("%!PS-Adobe"))) && strlen ((("%!PS-Adobe"))) < ((size_t) (sizeof(("%!PS-Adobe"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%!PS-Adobe"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%!PS-Adobe"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%!PS-Adobe"))) + 1) - (size_t)(const void *)((("%!PS-Adobe"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%!PS-Adobe"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%!PS-Adobe"))) && ((size_t)(const void *)(((("%!PS-Adobe"))) + 1) - (size_t)(const void *)((("%!PS-Adobe"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%!PS-Adobe"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%!PS-Adobe"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%!PS-Adobe"))) && ((size_t)(const void *)(((("%!PS-Adobe"))) + 1) - (size_t)(const void *)((("%!PS-Adobe"))) == 1) && (__s2_len = strlen ((("%!PS-Adobe"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%!PS-Adobe"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%!PS-Adobe"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%!PS-Adobe"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%!PS-Adobe"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%!PS-Adobe"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%!PS-Adobe")))))); }) : strncmp ((const char *)((line)), (("%!PS-Adobe")), sizeof(("%!PS-Adobe"))-1)))==0))) {
        unsigned char *p = (unsigned char *)dsc->line;

        dsc->endtrailer = 0;
        dsc->dsc_version = dsc_add_line(dsc, dsc->line, dsc->line_length);
        if (((__extension__ (__builtin_constant_p (sizeof("%!PS-Adobe")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("%!PS-Adobe")-1))) || (__builtin_constant_p (("%!PS-Adobe")) && strlen (("%!PS-Adobe")) < ((size_t) (sizeof("%!PS-Adobe")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("%!PS-Adobe")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("%!PS-Adobe")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("%!PS-Adobe")) + 1) - (size_t)(const void *)(("%!PS-Adobe")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("%!PS-Adobe")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("%!PS-Adobe")) && ((size_t)(const void *)((("%!PS-Adobe")) + 1) - (size_t)(const void *)(("%!PS-Adobe")) == 1) ? __builtin_strcmp ((const char *)(p), ("%!PS-Adobe")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("%!PS-Adobe")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("%!PS-Adobe")) && ((size_t)(const void *)((("%!PS-Adobe")) + 1) - (size_t)(const void *)(("%!PS-Adobe")) == 1) && (__s2_len = strlen (("%!PS-Adobe")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("%!PS-Adobe")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("%!PS-Adobe")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("%!PS-Adobe")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("%!PS-Adobe")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("%!PS-Adobe")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("%!PS-Adobe"))))); }) : strncmp ((const char *)(p), ("%!PS-Adobe"), sizeof("%!PS-Adobe")-1)))==0)) {
            dsc->dsc = ((GSBOOL)(!((GSBOOL)0)));
            dsc->begincomments = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
            if (dsc->dsc_version == ((void*)0))
                return CDSC_ERROR;
            p = (unsigned char *)dsc->line + 14;
            while ((((*p)==' ') || ((*p)=='\t')))
                p++;
            if (((__extension__ (__builtin_constant_p (sizeof("EPSF-")-1) && ((__builtin_constant_p ((const char *)(p)) && strlen ((const char *)(p)) < ((size_t) (sizeof("EPSF-")-1))) || (__builtin_constant_p (("EPSF-")) && strlen (("EPSF-")) < ((size_t) (sizeof("EPSF-")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(p)) && __builtin_constant_p (("EPSF-")) && (__s1_len = strlen ((const char *)(p)), __s2_len = strlen (("EPSF-")), (!((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("EPSF-")) + 1) - (size_t)(const void *)(("EPSF-")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(p), ("EPSF-")) : (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) && (__s1_len = strlen ((const char *)(p)), __s1_len < 4) ? (__builtin_constant_p (("EPSF-")) && ((size_t)(const void *)((("EPSF-")) + 1) - (size_t)(const void *)(("EPSF-")) == 1) ? __builtin_strcmp ((const char *)(p), ("EPSF-")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("EPSF-")); register int __result = (((const unsigned char *) (const char *) ((const char *)(p)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(p)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(p)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("EPSF-")) && ((size_t)(const void *)((("EPSF-")) + 1) - (size_t)(const void *)(("EPSF-")) == 1) && (__s2_len = strlen (("EPSF-")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(p)) && ((size_t)(const void *)(((const char *)(p)) + 1) - (size_t)(const void *)((const char *)(p)) == 1) ? __builtin_strcmp ((const char *)(p), ("EPSF-")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(p)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("EPSF-")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("EPSF-")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("EPSF-")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("EPSF-")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(p), ("EPSF-"))))); }) : strncmp ((const char *)(p), ("EPSF-"), sizeof("EPSF-")-1)))==0))
                dsc->epsf = ((GSBOOL)(!((GSBOOL)0)));
            dsc->scan_section = scan_comments;
            return CDSC_PSADOBE;
        }
    }

    dsc->id = CDSC_OK;

    if (dsc->scan_section == scan_pre_trailer) {
        if ((((__extension__ (__builtin_constant_p (sizeof(("%%Trailer"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Trailer"))-1))) || (__builtin_constant_p ((("%%Trailer"))) && strlen ((("%%Trailer"))) < ((size_t) (sizeof(("%%Trailer"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Trailer"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Trailer"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Trailer"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Trailer"))) && ((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Trailer"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Trailer"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Trailer"))) && ((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) && (__s2_len = strlen ((("%%Trailer"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Trailer"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Trailer")))))); }) : strncmp ((const char *)((line)), (("%%Trailer")), sizeof(("%%Trailer"))-1)))==0))) {
            dsc->id = CDSC_TRAILER;
            dsc->begintrailer = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
            dsc->endtrailer = ((dsc)->data_offset + (dsc)->data_index);
            dsc->scan_section = scan_trailer;
            return CDSC_OK;
        }
        else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EOF"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%EOF"))-1))) || (__builtin_constant_p ((("%%EOF"))) && strlen ((("%%EOF"))) < ((size_t) (sizeof(("%%EOF"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%EOF"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%EOF"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%EOF"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EOF"))) && ((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EOF"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EOF"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EOF"))) && ((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) && (__s2_len = strlen ((("%%EOF"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%EOF"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EOF"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EOF"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EOF"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EOF"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%EOF")))))); }) : strncmp ((const char *)((line)), (("%%EOF")), sizeof(("%%EOF"))-1)))==0))) {
            dsc->id = CDSC_EOF;
            dsc->begintrailer = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
            dsc->endtrailer = ((dsc)->data_offset + (dsc)->data_index);
            dsc->scan_section = scan_trailer;

            return CDSC_OK;
        }
        else {





            if (dsc->beginsetup)
                dsc->endsetup = ((dsc)->data_offset + (dsc)->data_index);
            else if (dsc->beginprolog)
                dsc->endprolog = ((dsc)->data_offset + (dsc)->data_index);
            else {

            }
            return CDSC_OK;
        }
    }





    if ((((__extension__ (__builtin_constant_p (sizeof(("%%+"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%+"))-1))) || (__builtin_constant_p ((("%%+"))) && strlen ((("%%+"))) < ((size_t) (sizeof(("%%+"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%+"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%+"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%+"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%+"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) && (__s2_len = strlen ((("%%+"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%+"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%+"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%+"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%+"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%+")))))); }) : strncmp ((const char *)((line)), (("%%+")), sizeof(("%%+"))-1)))==0))) {
        line = dsc->last_line;
        continued = ((GSBOOL)(!((GSBOOL)0)));
    }
    else
        dsc_save_line(dsc);

    if ((((line)[0]!='%') || ((line)[1]!='%'))) {

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%EOF"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%EOF"))-1))) || (__builtin_constant_p ((("%%EOF"))) && strlen ((("%%EOF"))) < ((size_t) (sizeof(("%%EOF"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%EOF"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%EOF"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%EOF"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%EOF"))) && ((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%EOF"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%EOF"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%EOF"))) && ((size_t)(const void *)(((("%%EOF"))) + 1) - (size_t)(const void *)((("%%EOF"))) == 1) && (__s2_len = strlen ((("%%EOF"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%EOF"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%EOF"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%EOF"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%EOF"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%EOF"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%EOF")))))); }) : strncmp ((const char *)((dsc->line)), (("%%EOF")), sizeof(("%%EOF"))-1)))==0))) {

        dsc->id = CDSC_EOF;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%Trailer"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%Trailer"))-1))) || (__builtin_constant_p ((("%%Trailer"))) && strlen ((("%%Trailer"))) < ((size_t) (sizeof(("%%Trailer"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%Trailer"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%Trailer"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%Trailer"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Trailer"))) && ((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%Trailer"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Trailer"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Trailer"))) && ((size_t)(const void *)(((("%%Trailer"))) + 1) - (size_t)(const void *)((("%%Trailer"))) == 1) && (__s2_len = strlen ((("%%Trailer"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%Trailer"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Trailer"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%Trailer")))))); }) : strncmp ((const char *)((dsc->line)), (("%%Trailer")), sizeof(("%%Trailer"))-1)))==0))) {


        dsc->id = CDSC_TRAILER;
        dsc->begintrailer = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%Pages:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Pages:"))-1))) || (__builtin_constant_p ((("%%Pages:"))) && strlen ((("%%Pages:"))) < ((size_t) (sizeof(("%%Pages:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Pages:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Pages:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Pages:"))) + 1) - (size_t)(const void *)((("%%Pages:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Pages:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Pages:"))) && ((size_t)(const void *)(((("%%Pages:"))) + 1) - (size_t)(const void *)((("%%Pages:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Pages:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Pages:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Pages:"))) && ((size_t)(const void *)(((("%%Pages:"))) + 1) - (size_t)(const void *)((("%%Pages:"))) == 1) && (__s2_len = strlen ((("%%Pages:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Pages:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Pages:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Pages:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Pages:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Pages:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Pages:")))))); }) : strncmp ((const char *)((line)), (("%%Pages:")), sizeof(("%%Pages:"))-1)))==0))) {
        dsc->id = CDSC_PAGES;
        if (dsc_parse_pages(dsc) != 0)
               return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BoundingBox:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BoundingBox:"))-1))) || (__builtin_constant_p ((("%%BoundingBox:"))) && strlen ((("%%BoundingBox:"))) < ((size_t) (sizeof(("%%BoundingBox:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BoundingBox:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BoundingBox:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BoundingBox:"))) + 1) - (size_t)(const void *)((("%%BoundingBox:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BoundingBox:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BoundingBox:"))) && ((size_t)(const void *)(((("%%BoundingBox:"))) + 1) - (size_t)(const void *)((("%%BoundingBox:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BoundingBox:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BoundingBox:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BoundingBox:"))) && ((size_t)(const void *)(((("%%BoundingBox:"))) + 1) - (size_t)(const void *)((("%%BoundingBox:"))) == 1) && (__s2_len = strlen ((("%%BoundingBox:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BoundingBox:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BoundingBox:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BoundingBox:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BoundingBox:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BoundingBox:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BoundingBox:")))))); }) : strncmp ((const char *)((line)), (("%%BoundingBox:")), sizeof(("%%BoundingBox:"))-1)))==0))) {
        dsc->id = CDSC_BOUNDINGBOX;
        if (dsc_parse_bounding_box(dsc, &(dsc->bbox), continued ? 3 : 14))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%HiResBoundingBox:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%HiResBoundingBox:"))-1))) || (__builtin_constant_p ((("%%HiResBoundingBox:"))) && strlen ((("%%HiResBoundingBox:"))) < ((size_t) (sizeof(("%%HiResBoundingBox:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%HiResBoundingBox:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%HiResBoundingBox:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%HiResBoundingBox:"))) + 1) - (size_t)(const void *)((("%%HiResBoundingBox:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%HiResBoundingBox:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%HiResBoundingBox:"))) && ((size_t)(const void *)(((("%%HiResBoundingBox:"))) + 1) - (size_t)(const void *)((("%%HiResBoundingBox:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%HiResBoundingBox:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%HiResBoundingBox:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%HiResBoundingBox:"))) && ((size_t)(const void *)(((("%%HiResBoundingBox:"))) + 1) - (size_t)(const void *)((("%%HiResBoundingBox:"))) == 1) && (__s2_len = strlen ((("%%HiResBoundingBox:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%HiResBoundingBox:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%HiResBoundingBox:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%HiResBoundingBox:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%HiResBoundingBox:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%HiResBoundingBox:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%HiResBoundingBox:")))))); }) : strncmp ((const char *)((line)), (("%%HiResBoundingBox:")), sizeof(("%%HiResBoundingBox:"))-1)))==0))) {
        dsc->id = CDSC_HIRESBOUNDINGBOX;
        if (dsc_parse_float_bounding_box(dsc, &(dsc->hires_bbox),
            continued ? 3 : 19))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%CropBox:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%CropBox:"))-1))) || (__builtin_constant_p ((("%%CropBox:"))) && strlen ((("%%CropBox:"))) < ((size_t) (sizeof(("%%CropBox:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%CropBox:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%CropBox:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%CropBox:"))) + 1) - (size_t)(const void *)((("%%CropBox:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%CropBox:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%CropBox:"))) && ((size_t)(const void *)(((("%%CropBox:"))) + 1) - (size_t)(const void *)((("%%CropBox:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%CropBox:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%CropBox:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%CropBox:"))) && ((size_t)(const void *)(((("%%CropBox:"))) + 1) - (size_t)(const void *)((("%%CropBox:"))) == 1) && (__s2_len = strlen ((("%%CropBox:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%CropBox:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%CropBox:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%CropBox:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%CropBox:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%CropBox:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%CropBox:")))))); }) : strncmp ((const char *)((line)), (("%%CropBox:")), sizeof(("%%CropBox:"))-1)))==0))) {
        dsc->id = CDSC_CROPBOX;
        if (dsc_parse_float_bounding_box(dsc, &(dsc->crop_box),
            continued ? 3 : 10))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%Orientation:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%Orientation:"))-1))) || (__builtin_constant_p ((("%%Orientation:"))) && strlen ((("%%Orientation:"))) < ((size_t) (sizeof(("%%Orientation:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%Orientation:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%Orientation:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Orientation:"))) + 1) - (size_t)(const void *)((("%%Orientation:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%Orientation:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Orientation:"))) && ((size_t)(const void *)(((("%%Orientation:"))) + 1) - (size_t)(const void *)((("%%Orientation:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Orientation:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Orientation:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Orientation:"))) && ((size_t)(const void *)(((("%%Orientation:"))) + 1) - (size_t)(const void *)((("%%Orientation:"))) == 1) && (__s2_len = strlen ((("%%Orientation:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%Orientation:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Orientation:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Orientation:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Orientation:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Orientation:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%Orientation:")))))); }) : strncmp ((const char *)((line)), (("%%Orientation:")), sizeof(("%%Orientation:"))-1)))==0))) {
        dsc->id = CDSC_ORIENTATION;
        if (dsc_parse_orientation(dsc, &(dsc->page_orientation), continued ? 3 : 14))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%PageOrder:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%PageOrder:"))-1))) || (__builtin_constant_p ((("%%PageOrder:"))) && strlen ((("%%PageOrder:"))) < ((size_t) (sizeof(("%%PageOrder:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%PageOrder:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%PageOrder:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PageOrder:"))) + 1) - (size_t)(const void *)((("%%PageOrder:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%PageOrder:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PageOrder:"))) && ((size_t)(const void *)(((("%%PageOrder:"))) + 1) - (size_t)(const void *)((("%%PageOrder:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageOrder:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PageOrder:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PageOrder:"))) && ((size_t)(const void *)(((("%%PageOrder:"))) + 1) - (size_t)(const void *)((("%%PageOrder:"))) == 1) && (__s2_len = strlen ((("%%PageOrder:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%PageOrder:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PageOrder:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PageOrder:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PageOrder:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PageOrder:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%PageOrder:")))))); }) : strncmp ((const char *)((line)), (("%%PageOrder:")), sizeof(("%%PageOrder:"))-1)))==0))) {
        dsc->id = CDSC_PAGEORDER;
        if (dsc_parse_order(dsc))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentMedia:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentMedia:"))-1))) || (__builtin_constant_p ((("%%DocumentMedia:"))) && strlen ((("%%DocumentMedia:"))) < ((size_t) (sizeof(("%%DocumentMedia:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentMedia:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentMedia:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentMedia:"))) + 1) - (size_t)(const void *)((("%%DocumentMedia:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentMedia:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentMedia:"))) && ((size_t)(const void *)(((("%%DocumentMedia:"))) + 1) - (size_t)(const void *)((("%%DocumentMedia:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentMedia:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentMedia:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentMedia:"))) && ((size_t)(const void *)(((("%%DocumentMedia:"))) + 1) - (size_t)(const void *)((("%%DocumentMedia:"))) == 1) && (__s2_len = strlen ((("%%DocumentMedia:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentMedia:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentMedia:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentMedia:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentMedia:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentMedia:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentMedia:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentMedia:")), sizeof(("%%DocumentMedia:"))-1)))==0))) {
        dsc->id = CDSC_DOCUMENTMEDIA;
        if (dsc_parse_document_media(dsc))
            return CDSC_ERROR;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%Page:"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%Page:"))-1))) || (__builtin_constant_p ((("%%Page:"))) && strlen ((("%%Page:"))) < ((size_t) (sizeof(("%%Page:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%Page:"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%Page:"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%Page:"))) + 1) - (size_t)(const void *)((("%%Page:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%Page:"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%Page:"))) && ((size_t)(const void *)(((("%%Page:"))) + 1) - (size_t)(const void *)((("%%Page:"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%Page:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%Page:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%Page:"))) && ((size_t)(const void *)(((("%%Page:"))) + 1) - (size_t)(const void *)((("%%Page:"))) == 1) && (__s2_len = strlen ((("%%Page:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%Page:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%Page:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%Page:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%Page:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%Page:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%Page:")))))); }) : strncmp ((const char *)((dsc->line)), (("%%Page:")), sizeof(("%%Page:"))-1)))==0))) {



        int rc = dsc_error(dsc, CDSC_MESSAGE_PAGE_IN_TRAILER,
                dsc->line, dsc->line_length);
        switch (rc) {
            case CDSC_RESPONSE_OK:


                dsc->scan_section = scan_pre_pages;
                if (dsc->page_count)
                    dsc->page[dsc->page_count-1].end = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
                return 10;
            case CDSC_RESPONSE_CANCEL:

                break;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentNeededFonts:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentNeededFonts:"))-1))) || (__builtin_constant_p ((("%%DocumentNeededFonts:"))) && strlen ((("%%DocumentNeededFonts:"))) < ((size_t) (sizeof(("%%DocumentNeededFonts:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentNeededFonts:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentNeededFonts:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentNeededFonts:"))) + 1) - (size_t)(const void *)((("%%DocumentNeededFonts:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentNeededFonts:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentNeededFonts:"))) && ((size_t)(const void *)(((("%%DocumentNeededFonts:"))) + 1) - (size_t)(const void *)((("%%DocumentNeededFonts:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentNeededFonts:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentNeededFonts:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentNeededFonts:"))) && ((size_t)(const void *)(((("%%DocumentNeededFonts:"))) + 1) - (size_t)(const void *)((("%%DocumentNeededFonts:"))) == 1) && (__s2_len = strlen ((("%%DocumentNeededFonts:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentNeededFonts:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentNeededFonts:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentNeededFonts:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentNeededFonts:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentNeededFonts:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentNeededFonts:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentNeededFonts:")), sizeof(("%%DocumentNeededFonts:"))-1)))==0))) {
        dsc->id = CDSC_DOCUMENTNEEDEDFONTS;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentSuppliedFonts:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentSuppliedFonts:"))-1))) || (__builtin_constant_p ((("%%DocumentSuppliedFonts:"))) && strlen ((("%%DocumentSuppliedFonts:"))) < ((size_t) (sizeof(("%%DocumentSuppliedFonts:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentSuppliedFonts:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentSuppliedFonts:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentSuppliedFonts:"))) + 1) - (size_t)(const void *)((("%%DocumentSuppliedFonts:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentSuppliedFonts:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentSuppliedFonts:"))) && ((size_t)(const void *)(((("%%DocumentSuppliedFonts:"))) + 1) - (size_t)(const void *)((("%%DocumentSuppliedFonts:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentSuppliedFonts:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentSuppliedFonts:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentSuppliedFonts:"))) && ((size_t)(const void *)(((("%%DocumentSuppliedFonts:"))) + 1) - (size_t)(const void *)((("%%DocumentSuppliedFonts:"))) == 1) && (__s2_len = strlen ((("%%DocumentSuppliedFonts:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentSuppliedFonts:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentSuppliedFonts:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentSuppliedFonts:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentSuppliedFonts:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentSuppliedFonts:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentSuppliedFonts:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentSuppliedFonts:")), sizeof(("%%DocumentSuppliedFonts:"))-1)))==0))) {
        dsc->id = CDSC_DOCUMENTSUPPLIEDFONTS;

    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentProcessColors:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentProcessColors:"))-1))) || (__builtin_constant_p ((("%%DocumentProcessColors:"))) && strlen ((("%%DocumentProcessColors:"))) < ((size_t) (sizeof(("%%DocumentProcessColors:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentProcessColors:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentProcessColors:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentProcessColors:"))) + 1) - (size_t)(const void *)((("%%DocumentProcessColors:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentProcessColors:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentProcessColors:"))) && ((size_t)(const void *)(((("%%DocumentProcessColors:"))) + 1) - (size_t)(const void *)((("%%DocumentProcessColors:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentProcessColors:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentProcessColors:"))) && ((size_t)(const void *)(((("%%DocumentProcessColors:"))) + 1) - (size_t)(const void *)((("%%DocumentProcessColors:"))) == 1) && (__s2_len = strlen ((("%%DocumentProcessColors:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentProcessColors:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentProcessColors:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentProcessColors:")), sizeof(("%%DocumentProcessColors:"))-1)))==0))) {
        dsc->id = CDSC_DOCUMENTPROCESSCOLORS;
        if (dsc_parse_process_colours(dsc) != CDSC_OK)
            dsc->id = CDSC_UNKNOWNDSC;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentCustomColors:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%DocumentCustomColors:"))-1))) || (__builtin_constant_p ((("%%DocumentCustomColors:"))) && strlen ((("%%DocumentCustomColors:"))) < ((size_t) (sizeof(("%%DocumentCustomColors:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%DocumentCustomColors:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%DocumentCustomColors:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentCustomColors:"))) + 1) - (size_t)(const void *)((("%%DocumentCustomColors:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentCustomColors:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentCustomColors:"))) && ((size_t)(const void *)(((("%%DocumentCustomColors:"))) + 1) - (size_t)(const void *)((("%%DocumentCustomColors:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentCustomColors:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentCustomColors:"))) && ((size_t)(const void *)(((("%%DocumentCustomColors:"))) + 1) - (size_t)(const void *)((("%%DocumentCustomColors:"))) == 1) && (__s2_len = strlen ((("%%DocumentCustomColors:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%DocumentCustomColors:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%DocumentCustomColors:")))))); }) : strncmp ((const char *)((line)), (("%%DocumentCustomColors:")), sizeof(("%%DocumentCustomColors:"))-1)))==0))) {
        dsc->id = CDSC_DOCUMENTCUSTOMCOLORS;
        if (dsc_parse_custom_colours(dsc) != CDSC_OK)
            dsc->id = CDSC_UNKNOWNDSC;
    }
    else {

        dsc->id = CDSC_UNKNOWNDSC;
        dsc_unknown(dsc);
    }

    dsc->endtrailer = ((dsc)->data_offset + (dsc)->data_index);
    return CDSC_OK;
}

static char *
dsc_alloc_string(CDSC *dsc, const char *str, int len)
{
    char *p;
    if (dsc->string_head == ((void*)0)) {
        dsc->string_head = (CDSCSTRING *)dsc_memalloc(dsc, sizeof(CDSCSTRING));
        if (dsc->string_head == ((void*)0))
            return ((void*)0);
        dsc->string = dsc->string_head;
        dsc->string->next = ((void*)0);
        dsc->string->data = (char *)dsc_memalloc(dsc, 4096);
        if (dsc->string->data == ((void*)0)) {
            dsc_reset(dsc);
            return ((void*)0);
        }
        dsc->string->index = 0;
        dsc->string->length = 4096;
    }
    if ( dsc->string->index + len + 1 > dsc->string->length) {

        CDSCSTRING *newstring = (CDSCSTRING *)dsc_memalloc(dsc, sizeof(CDSCSTRING));
        if (newstring == ((void*)0)) {
            dsc_debug_print(dsc, "Out of memory\n");
            return ((void*)0);
        }
        newstring->next = ((void*)0);
        newstring->length = 0;
        newstring->index = 0;
        newstring->data = (char *)dsc_memalloc(dsc, 4096);
        if (newstring->data == ((void*)0)) {
            dsc_memfree(dsc, newstring);
            dsc_debug_print(dsc, "Out of memory\n");
            return ((void*)0);
        }
        newstring->length = 4096;
        dsc->string->next = newstring;
        dsc->string = newstring;
    }
    if ( dsc->string->index + len + 1 > dsc->string->length)
        return ((void*)0);
    p = dsc->string->data + dsc->string->index;
    memcpy(p, str, len);
    *(p+len) = '\0';
    dsc->string->index += len + 1;
    return p;
}


static char *
dsc_add_line(CDSC *dsc, const char *line, unsigned int len)
{
    char *newline;
    unsigned int i;
    while (len && ((((*line)==' ') || ((*line)=='\t')))) {
        len--;
        line++;
    }
    newline = dsc_alloc_string(dsc, line, len);
    if (newline == ((void*)0))
        return ((void*)0);

    for (i=0; i<len; i++) {
        if (newline[i] == '\r') {
            newline[i]='\0';
            break;
        }
        if (newline[i] == '\n') {
            newline[i]='\0';
            break;
        }
    }
    return newline;
}







static char *
dsc_copy_string(char *str, unsigned int slen, char *line,
        unsigned int len, unsigned int *offset)
{
    int quoted = ((GSBOOL)0);
    int instring=0;
    unsigned int newlength = 0;
    unsigned int i = 0;
    unsigned char ch;
    if (len > slen)
        len = slen-1;
    while ( (i<len) && (((line[i])==' ') || ((line[i])=='\t')))
        i++;
    if ((i < len) && (line[i]=='(')) {
        quoted = ((GSBOOL)(!((GSBOOL)0)));
        instring++;
        i++;
    }
    while (i < len) {
        str[newlength] = ch = line[i];
        i++;
        if (quoted) {
            if (ch == '(')
                    instring++;
            if (ch == ')')
                    instring--;
            if (instring==0)
                    break;
        }
        else if (ch == ' ')
            break;

        if (ch == '\r')
            break;
        if (ch == '\n')
            break;
        else if ( (ch == '\\') && (i+1 < len) ) {
            ch = line[i];
            if ((ch >= '0') && (ch <= '9')) {

                int j = 3;
                ch = 0;
                while (j && (i < len) && line[i]>='0' && line[i]<='7') {
                    ch = (unsigned char)((ch<<3) + (line[i]-'0'));
                    i++;
                    j--;
                }
                str[newlength] = ch;
            }
            else if (ch == '(') {
                str[newlength] = ch;
                i++;
            }
            else if (ch == ')') {
                str[newlength] = ch;
                i++;
            }
            else if (ch == 'b') {
                str[newlength] = '\b';
                i++;
            }
            else if (ch == 'f') {
                str[newlength] = '\b';
                i++;
            }
            else if (ch == 'n') {
                str[newlength] = '\n';
                i++;
            }
            else if (ch == 'r') {
                str[newlength] = '\r';
                i++;
            }
            else if (ch == 't') {
                str[newlength] = '\t';
                i++;
            }
            else if (ch == '\\') {
                str[newlength] = '\\';
                i++;
            }
        }
        newlength++;
    }
    str[newlength] = '\0';
    if (offset != (unsigned int *)((void*)0))
        *offset = i;
    return str;
}

static int
dsc_get_int(const char *line, unsigned int len, unsigned int *offset)
{
    char newline[256];
    int newlength = 0;
    unsigned int i = 0;
    unsigned char ch;

    len = (((len) < (sizeof(newline)-1)) ? (len) : (sizeof(newline)-1));
    while ((i<len) && (((line[i])==' ') || ((line[i])=='\t')))
        i++;
    while (i < len) {
        newline[newlength] = ch = line[i];
        if (!(((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISdigit) || (ch=='-') || (ch=='+')))
            break;
        i++;
        newlength++;
    }
    while ((i<len) && (((line[i])==' ') || ((line[i])=='\t')))
        i++;
    newline[newlength] = '\0';
    if (offset != (unsigned int *)((void*)0))
        *offset = i;
    return atoi(newline);
}

static float
dsc_get_real(const char *line, unsigned int len, unsigned int *offset)
{
    char newline[256];
    int newlength = 0;
    unsigned int i = 0;
    unsigned char ch;

    len = (((len) < (sizeof(newline)-1)) ? (len) : (sizeof(newline)-1));
    while ((i<len) && (((line[i])==' ') || ((line[i])=='\t')))
        i++;
    while (i < len) {
        newline[newlength] = ch = line[i];
        if (!(((*__ctype_b_loc ())[(int) ((ch))] & (unsigned short int) _ISdigit) || (ch=='.') || (ch=='-') || (ch=='+')
            || (ch=='e') || (ch=='E')))
            break;
        i++;
        newlength++;
    }
    while ((i<len) && (((line[i])==' ') || ((line[i])=='\t')))
        i++;

    newline[newlength] = '\0';

    if (offset != (unsigned int *)((void*)0))
        *offset = i;
    return (float)atof(newline);
}

int
dsc_stricmp(const char *s, const char *t)
{
    while ((__extension__ ({ int __res; if (sizeof ((unsigned char)*s) > 1) { if (__builtin_constant_p ((unsigned char)*s)) { int __c = ((unsigned char)*s); __res = __c < -128 || __c > 255 ? __c : (*__ctype_toupper_loc ())[__c]; } else __res = toupper ((unsigned char)*s); } else __res = (*__ctype_toupper_loc ())[(int) ((unsigned char)*s)]; __res; })) == (__extension__ ({ int __res; if (sizeof ((unsigned char)*t) > 1) { if (__builtin_constant_p ((unsigned char)*t)) { int __c = ((unsigned char)*t); __res = __c < -128 || __c > 255 ? __c : (*__ctype_toupper_loc ())[__c]; } else __res = toupper ((unsigned char)*t); } else __res = (*__ctype_toupper_loc ())[(int) ((unsigned char)*t)]; __res; }))) {
        if (*s == '\0')
            return 0;
        s++;
        t++;
    }
    return ((__extension__ ({ int __res; if (sizeof ((unsigned char)*s) > 1) { if (__builtin_constant_p ((unsigned char)*s)) { int __c = ((unsigned char)*s); __res = __c < -128 || __c > 255 ? __c : (*__ctype_toupper_loc ())[__c]; } else __res = toupper ((unsigned char)*s); } else __res = (*__ctype_toupper_loc ())[(int) ((unsigned char)*s)]; __res; })) - (__extension__ ({ int __res; if (sizeof ((unsigned char)*t) > 1) { if (__builtin_constant_p ((unsigned char)*t)) { int __c = ((unsigned char)*t); __res = __c < -128 || __c > 255 ? __c : (*__ctype_toupper_loc ())[__c]; } else __res = toupper ((unsigned char)*t); } else __res = (*__ctype_toupper_loc ())[(int) ((unsigned char)*t)]; __res; })));
}

static int
dsc_parse_page(CDSC *dsc)
{
    char *p;
    unsigned int i;
    char page_label[256];
    char *pl;
    int page_ordinal;
    int page_number;

    p = dsc->line + 7;
    pl = dsc_copy_string(page_label, sizeof(page_label), p, dsc->line_length-7, &i);
    if (pl == ((void*)0))
        return CDSC_ERROR;
    p += i;
    if (dsc->line_length - 7 - i == 0) {


        while (i > 0) {
            if (!((((p[-1])==' ') || ((p[-1])=='\t')) || (((p[-1])=='\r') || ((p[-1])=='\n'))))
                break;
            p--;
            i--;
        }
        while (i > 0) {
            if (!((*__ctype_b_loc ())[(int) (((int)p[-1]))] & (unsigned short int) _ISdigit))
                break;
            p--;
            i--;
        }
    }
    page_ordinal = dsc_get_int(p, dsc->line_length - 7 - i, ((void*)0));

    if ( (page_ordinal == 0) || (strlen(page_label) == 0) ||
       (dsc->page_count &&
            (page_ordinal != dsc->page[dsc->page_count-1].ordinal+1)) ) {
        int rc = dsc_error(dsc, CDSC_MESSAGE_PAGE_ORDINAL, dsc->line,
                dsc->line_length);
        switch (rc) {
            case CDSC_RESPONSE_OK:

                return CDSC_OK;
            case CDSC_RESPONSE_CANCEL:

                break;
            case CDSC_RESPONSE_IGNORE_ALL:
                return CDSC_NOTDSC;
        }
    }

    page_number = dsc->page_count;
    dsc_add_page(dsc, page_ordinal, page_label);
    dsc->page[page_number].begin = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);
    dsc->page[page_number].end = ((dsc)->data_offset + (dsc)->data_index - (dsc)->line_length);

    if (dsc->page[page_number].label == ((void*)0))
        return CDSC_ERROR;

    return CDSC_OK;
}



void
dsc_debug_print(CDSC *dsc, const char *str)
{
    if (dsc->debug_print_fn)
        dsc->debug_print_fn(dsc->caller_data, str);
}
# 3796 "./psi/dscparse.c"
static int
dsc_error(CDSC *dsc, unsigned int explanation,
        char *line, unsigned int line_len)
{

    if (dsc->dsc_error_fn)
        return dsc->dsc_error_fn(dsc->caller_data, dsc,
            explanation, line, line_len);


    return CDSC_RESPONSE_CANCEL;
}


static int
dsc_dcs2_fixup(CDSC *dsc)
{
    char composite[] = "Composite";




    if (dsc->dcs2) {
        int code = CDSC_OK;
        int page_number;
        unsigned long *pbegin;
        unsigned long *pend;
        unsigned long end;
        CDCS2 *pdcs = dsc->dcs2;



        if (dsc->page_count == 0)
            code = dsc_add_page(dsc, 1, composite);
        else if (dsc->page_count == 1)
            dsc->page[0].label =
                dsc_alloc_string(dsc, composite, (int)strlen(composite)+1);
        if (code != CDSC_OK)
            return code;
        page_number = dsc->page_count - 1;
        pbegin = &dsc->page[page_number].begin;
        pend = &dsc->page[page_number].end;
        if (*pbegin == *pend) {

            *pbegin = 999999999;
            *pend = 0;
        }

        if (dsc->begincomments != dsc->endcomments) {
            *pbegin = (((dsc->begincomments) < (*pbegin)) ? (dsc->begincomments) : (*pbegin));
            dsc->begincomments = 0;
            *pend = (((dsc->endcomments) > (*pend)) ? (dsc->endcomments) : (*pend));
            dsc->endcomments = 0;
        }

        if (dsc->beginpreview != dsc->endpreview) {
            *pbegin = (((dsc->beginpreview) < (*pbegin)) ? (dsc->beginpreview) : (*pbegin));
            dsc->beginpreview = 0;
            *pend = (((dsc->endpreview) > (*pend)) ? (dsc->endpreview) : (*pend));
            dsc->endpreview = 0;
        }

        if (dsc->begindefaults != dsc->enddefaults) {
            *pbegin = (((dsc->begindefaults) < (*pbegin)) ? (dsc->begindefaults) : (*pbegin));
            dsc->begindefaults = 0;
            *pend = (((dsc->enddefaults) > (*pend)) ? (dsc->enddefaults) : (*pend));
            dsc->enddefaults = 0;
        }

        if (dsc->beginprolog != dsc->endprolog) {
            *pbegin = (((dsc->beginprolog) < (*pbegin)) ? (dsc->beginprolog) : (*pbegin));
            dsc->beginprolog = 0;
            *pend = (((dsc->endprolog) > (*pend)) ? (dsc->endprolog) : (*pend));
            dsc->endprolog = 0;
        }

        if (dsc->beginsetup != dsc->endsetup) {
            *pbegin = (((dsc->beginsetup) < (*pbegin)) ? (dsc->beginsetup) : (*pbegin));
            dsc->beginsetup = 0;
            *pend = (((dsc->endsetup) > (*pend)) ? (dsc->endsetup) : (*pend));
            dsc->endsetup = 0;
        }

        if (dsc->begintrailer != dsc->endtrailer) {
            *pbegin = (((dsc->begintrailer) < (*pbegin)) ? (dsc->begintrailer) : (*pbegin));
            dsc->begintrailer = 0;
            *pend = (((dsc->endtrailer) > (*pend)) ? (dsc->endtrailer) : (*pend));
            dsc->endtrailer = 0;
        }

        if (*pbegin == 999999999)
            *pbegin = *pend;
        end = 0;

        while (pdcs) {
            page_number = dsc->page_count;
            if ((pdcs->begin) && (pdcs->colourname != ((void*)0))) {

                code = dsc_add_page(dsc, page_number+1, pdcs->colourname);
                if (code)
                    return code;
                dsc->page[page_number].begin = pdcs->begin;
                dsc->page[page_number].end = pdcs->end;
                if (end != 0)
                    end = (((end) < (pdcs->begin)) ? (end) : (pdcs->begin));
                else
                    end = pdcs->begin;
            }
            else {

                if ((pdcs->location != ((void*)0)) &&
                    (pdcs->filetype != ((void*)0)) &&
                    (pdcs->colourname != ((void*)0)) &&
                    (dsc_stricmp(pdcs->location, "Local") == 0) &&
                    ((dsc_stricmp(pdcs->filetype, "EPS") == 0) ||
                     (dsc_stricmp(pdcs->filetype, "EPSF") == 0))) {
                    code = dsc_add_page(dsc, page_number+1, pdcs->colourname);
                    if (code)
                        return code;
                    dsc->page[page_number].begin = 0;
                    dsc->page[page_number].end = 0;
                }
            }
            pdcs = pdcs->next;
        }

        if (end != 0)
            *pend = end;
# 3933 "./psi/dscparse.c"
        if (dsc->doseps_end && (*pend > dsc->doseps_end))
            *pend = dsc->doseps_end;
    }
    return 0;
}

static int
dsc_parse_platefile(CDSC *dsc)
{
    unsigned int i, n;
    CDCS2 dcs2;
    CDCS2 *pdcs2;
    char colourname[256];
    char filetype[256];
    char location[256];
    char *filename = ((void*)0);
    int filename_length = 0;
    GSBOOL blank_line;
    GSBOOL single = ((GSBOOL)0);
    if ((((__extension__ (__builtin_constant_p (sizeof(("%%PlateFile:"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%PlateFile:"))-1))) || (__builtin_constant_p ((("%%PlateFile:"))) && strlen ((("%%PlateFile:"))) < ((size_t) (sizeof(("%%PlateFile:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%PlateFile:"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%PlateFile:"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%PlateFile:"))) + 1) - (size_t)(const void *)((("%%PlateFile:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%PlateFile:"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%PlateFile:"))) && ((size_t)(const void *)(((("%%PlateFile:"))) + 1) - (size_t)(const void *)((("%%PlateFile:"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%PlateFile:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%PlateFile:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%PlateFile:"))) && ((size_t)(const void *)(((("%%PlateFile:"))) + 1) - (size_t)(const void *)((("%%PlateFile:"))) == 1) && (__s2_len = strlen ((("%%PlateFile:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%PlateFile:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%PlateFile:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%PlateFile:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%PlateFile:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%PlateFile:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%PlateFile:")))))); }) : strncmp ((const char *)((dsc->line)), (("%%PlateFile:")), sizeof(("%%PlateFile:"))-1)))==0)))
        n = 12;
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%+"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%+"))-1))) || (__builtin_constant_p ((("%%+"))) && strlen ((("%%+"))) < ((size_t) (sizeof(("%%+"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%+"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%+"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%+"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) && (__s2_len = strlen ((("%%+"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%+"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%+"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%+"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%+"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%+")))))); }) : strncmp ((const char *)((dsc->line)), (("%%+")), sizeof(("%%+"))-1)))==0)))
        n = 3;
    else
        return CDSC_ERROR;

    memset(&dcs2, 0, sizeof(dcs2));
    memset(&colourname, 0, sizeof(colourname));
    memset(&filetype, 0, sizeof(filetype));
    memset(&location, 0, sizeof(location));
    memset(&filename, 0, sizeof(filename));


    blank_line = ((GSBOOL)(!((GSBOOL)0)));
    for (i=n; i<dsc->line_length; i++) {
        if (!((((dsc->line[i])==' ') || ((dsc->line[i])=='\t')) || (((dsc->line[i])=='\r') || ((dsc->line[i])=='\n')))) {
            blank_line = ((GSBOOL)0);
            break;
        }
    }

    if (!blank_line) {
        dsc_copy_string(colourname, sizeof(colourname),
                dsc->line+n, dsc->line_length-n, &i);
        n+=i;
        if (i)
            dsc_copy_string(filetype, sizeof(filetype),
                dsc->line+n, dsc->line_length-n, &i);
        n+=i;
        while (((((dsc->line[n])==' ') || ((dsc->line[n])=='\t')) || (((dsc->line[n])=='\r') || ((dsc->line[n])=='\n'))))
            n++;
        if (dsc->line[n] == '#') {

            single = ((GSBOOL)(!((GSBOOL)0)));
            n++;
            if (i)
                dcs2.begin= dsc_get_int(dsc->line+n, dsc->line_length-n, &i);
            n+=i;
            if (i)
                dcs2.end= dcs2.begin +
                    dsc_get_int(dsc->line+n, dsc->line_length-n, &i);
        }
        else {

            if (i)
                dsc_copy_string(location, sizeof(location),
                    dsc->line+n, dsc->line_length-n, &i);
            n+=i;
            if (i) {
                filename = dsc->line+n;
                filename_length = dsc->line_length-n;
            }
        }
        if (i==0)
            dsc_unknown(dsc);
        else {

            if (strlen(colourname))
                dcs2.colourname = dsc_alloc_string(dsc,
                    colourname, (int)strlen(colourname));
            if (strlen(filetype))
                dcs2.filetype = dsc_alloc_string(dsc,
                    filetype, (int)strlen(filetype));
            if (strlen(location))
                dcs2.location = dsc_alloc_string(dsc,
                    location, (int)strlen(location));
            if (filename)
                dcs2.filename = dsc_add_line(dsc, filename, filename_length);


            if (single)
                dsc->file_length = (((dsc->file_length) < (dcs2.begin)) ? (dsc->file_length) : (dcs2.begin));

            pdcs2 = (CDCS2 *)dsc_memalloc(dsc, sizeof(CDCS2));
            if (pdcs2 == ((void*)0))
                return CDSC_ERROR;
            memcpy(pdcs2, &dcs2, sizeof(CDCS2));

            if (dsc->dcs2 == ((void*)0))
                dsc->dcs2 = pdcs2;
            else {
                CDCS2 *this_dcs2 = dsc->dcs2;
                while (this_dcs2->next)
                    this_dcs2 = this_dcs2->next;
                this_dcs2->next = pdcs2;
            }
        }
    }
    return CDSC_OK;
}


static int
dsc_parse_dcs1plate(CDSC *dsc)
{
    unsigned int i, n = 0;
    CDCS2 dcs2;
    CDCS2 *pdcs2;
    const char *colourname;
    char filename[256];
    GSBOOL blank_line;
    GSBOOL continued = ((GSBOOL)0);
    char *line = dsc->line;

    memset(&dcs2, 0, sizeof(dcs2));
    memset(&filename, 0, sizeof(filename));

    if ((((__extension__ (__builtin_constant_p (sizeof(("%%+"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%+"))-1))) || (__builtin_constant_p ((("%%+"))) && strlen ((("%%+"))) < ((size_t) (sizeof(("%%+"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%+"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%+"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%+"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%+"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) && (__s2_len = strlen ((("%%+"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%+"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%+"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%+"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%+"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%+")))))); }) : strncmp ((const char *)((line)), (("%%+")), sizeof(("%%+"))-1)))==0))) {
        n = 3;
        line = dsc->last_line;
        continued = ((GSBOOL)(!((GSBOOL)0)));
    }

    if ((((__extension__ (__builtin_constant_p (sizeof(("%%CyanPlate:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%CyanPlate:"))-1))) || (__builtin_constant_p ((("%%CyanPlate:"))) && strlen ((("%%CyanPlate:"))) < ((size_t) (sizeof(("%%CyanPlate:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%CyanPlate:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%CyanPlate:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%CyanPlate:"))) + 1) - (size_t)(const void *)((("%%CyanPlate:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%CyanPlate:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%CyanPlate:"))) && ((size_t)(const void *)(((("%%CyanPlate:"))) + 1) - (size_t)(const void *)((("%%CyanPlate:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%CyanPlate:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%CyanPlate:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%CyanPlate:"))) && ((size_t)(const void *)(((("%%CyanPlate:"))) + 1) - (size_t)(const void *)((("%%CyanPlate:"))) == 1) && (__s2_len = strlen ((("%%CyanPlate:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%CyanPlate:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%CyanPlate:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%CyanPlate:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%CyanPlate:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%CyanPlate:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%CyanPlate:")))))); }) : strncmp ((const char *)((line)), (("%%CyanPlate:")), sizeof(("%%CyanPlate:"))-1)))==0))) {
        colourname = "Cyan";
        if (!continued)
            n = 12;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%MagentaPlate:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%MagentaPlate:"))-1))) || (__builtin_constant_p ((("%%MagentaPlate:"))) && strlen ((("%%MagentaPlate:"))) < ((size_t) (sizeof(("%%MagentaPlate:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%MagentaPlate:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%MagentaPlate:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%MagentaPlate:"))) + 1) - (size_t)(const void *)((("%%MagentaPlate:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%MagentaPlate:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%MagentaPlate:"))) && ((size_t)(const void *)(((("%%MagentaPlate:"))) + 1) - (size_t)(const void *)((("%%MagentaPlate:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%MagentaPlate:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%MagentaPlate:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%MagentaPlate:"))) && ((size_t)(const void *)(((("%%MagentaPlate:"))) + 1) - (size_t)(const void *)((("%%MagentaPlate:"))) == 1) && (__s2_len = strlen ((("%%MagentaPlate:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%MagentaPlate:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%MagentaPlate:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%MagentaPlate:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%MagentaPlate:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%MagentaPlate:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%MagentaPlate:")))))); }) : strncmp ((const char *)((line)), (("%%MagentaPlate:")), sizeof(("%%MagentaPlate:"))-1)))==0))) {
        colourname = "Magenta";
        if (!continued)
            n = 15;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%YellowPlate:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%YellowPlate:"))-1))) || (__builtin_constant_p ((("%%YellowPlate:"))) && strlen ((("%%YellowPlate:"))) < ((size_t) (sizeof(("%%YellowPlate:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%YellowPlate:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%YellowPlate:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%YellowPlate:"))) + 1) - (size_t)(const void *)((("%%YellowPlate:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%YellowPlate:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%YellowPlate:"))) && ((size_t)(const void *)(((("%%YellowPlate:"))) + 1) - (size_t)(const void *)((("%%YellowPlate:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%YellowPlate:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%YellowPlate:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%YellowPlate:"))) && ((size_t)(const void *)(((("%%YellowPlate:"))) + 1) - (size_t)(const void *)((("%%YellowPlate:"))) == 1) && (__s2_len = strlen ((("%%YellowPlate:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%YellowPlate:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%YellowPlate:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%YellowPlate:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%YellowPlate:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%YellowPlate:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%YellowPlate:")))))); }) : strncmp ((const char *)((line)), (("%%YellowPlate:")), sizeof(("%%YellowPlate:"))-1)))==0))) {
        colourname = "Yellow";
        if (!continued)
            n = 14;
    }
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%BlackPlate:"))-1) && ((__builtin_constant_p ((const char *)((line))) && strlen ((const char *)((line))) < ((size_t) (sizeof(("%%BlackPlate:"))-1))) || (__builtin_constant_p ((("%%BlackPlate:"))) && strlen ((("%%BlackPlate:"))) < ((size_t) (sizeof(("%%BlackPlate:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((line))) && __builtin_constant_p ((("%%BlackPlate:"))) && (__s1_len = strlen ((const char *)((line))), __s2_len = strlen ((("%%BlackPlate:"))), (!((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%BlackPlate:"))) + 1) - (size_t)(const void *)((("%%BlackPlate:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((line)), (("%%BlackPlate:"))) : (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) && (__s1_len = strlen ((const char *)((line))), __s1_len < 4) ? (__builtin_constant_p ((("%%BlackPlate:"))) && ((size_t)(const void *)(((("%%BlackPlate:"))) + 1) - (size_t)(const void *)((("%%BlackPlate:"))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BlackPlate:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%BlackPlate:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%BlackPlate:"))) && ((size_t)(const void *)(((("%%BlackPlate:"))) + 1) - (size_t)(const void *)((("%%BlackPlate:"))) == 1) && (__s2_len = strlen ((("%%BlackPlate:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((line))) && ((size_t)(const void *)(((const char *)((line))) + 1) - (size_t)(const void *)((const char *)((line))) == 1) ? __builtin_strcmp ((const char *)((line)), (("%%BlackPlate:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%BlackPlate:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%BlackPlate:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%BlackPlate:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%BlackPlate:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((line)), (("%%BlackPlate:")))))); }) : strncmp ((const char *)((line)), (("%%BlackPlate:")), sizeof(("%%BlackPlate:"))-1)))==0))) {
        colourname = "Black";
        if (!continued)
            n = 13;
    }
    else
        return CDSC_ERROR;


    blank_line = ((GSBOOL)(!((GSBOOL)0)));
    for (i=n; i<dsc->line_length; i++) {
        if (!((((dsc->line[i])==' ') || ((dsc->line[i])=='\t')) || (((dsc->line[i])=='\r') || ((dsc->line[i])=='\n')))) {
            blank_line = ((GSBOOL)0);
            break;
        }
    }

    if (!blank_line) {
        dsc_copy_string(filename, sizeof(filename),
                    dsc->line+n, dsc->line_length-n, &i);
        if (i==0)
            dsc_unknown(dsc);
        else {

            dcs2.colourname = dsc_alloc_string(dsc,
                    colourname, (int)strlen(colourname));
            dcs2.filetype = dsc_alloc_string(dsc, "EPS", 3);
            dcs2.location = dsc_alloc_string(dsc, "Local", 5);
            if (strlen(filename))
                dcs2.filename = dsc_alloc_string(dsc,
                    filename, (int)strlen(filename));

            pdcs2 = (CDCS2 *)dsc_memalloc(dsc, sizeof(CDCS2));
            if (pdcs2 == ((void*)0))
                return CDSC_ERROR;
            memcpy(pdcs2, &dcs2, sizeof(CDCS2));

            if (dsc->dcs2 == ((void*)0))
                dsc->dcs2 = pdcs2;
            else {
                CDCS2 *this_dcs2 = dsc->dcs2;
                while (this_dcs2->next)
                    this_dcs2 = this_dcs2->next;
                this_dcs2->next = pdcs2;
            }
        }
    }
    return CDSC_OK;
}







const char *
dsc_find_platefile(CDSC *dsc, int page)
{
    CDCS2 *pdcs = dsc->dcs2;
    int i = 1;
    while (pdcs) {
        if (pdcs->begin != pdcs->end)
            return ((void*)0);
        if (pdcs->location && pdcs->filetype && pdcs->colourname
            && (dsc_stricmp(pdcs->location, "Local") == 0)
            && ((dsc_stricmp(pdcs->filetype, "EPS") == 0) ||
                (dsc_stricmp(pdcs->filetype, "EPSF") == 0))) {
            if (i == page)
                return pdcs->filename;
            i++;
        }
        pdcs = pdcs->next;
    }
    return ((void*)0);
}

static CDSCCOLOUR *
dsc_find_colour(CDSC *dsc, const char *colourname)
{
    CDSCCOLOUR *colour = dsc->colours;
    while (colour) {
        if (colour->name && (dsc_stricmp(colour->name, colourname)==0))
            return colour;
        colour = colour->next;
    }
    return 0;
}

static int
dsc_parse_process_colours(CDSC *dsc)
{
    unsigned int i, n;
    CDSCCOLOUR *pcolour;
    char colourname[256];
    GSBOOL blank_line;
    if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentProcessColors:"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%DocumentProcessColors:"))-1))) || (__builtin_constant_p ((("%%DocumentProcessColors:"))) && strlen ((("%%DocumentProcessColors:"))) < ((size_t) (sizeof(("%%DocumentProcessColors:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%DocumentProcessColors:"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%DocumentProcessColors:"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentProcessColors:"))) + 1) - (size_t)(const void *)((("%%DocumentProcessColors:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%DocumentProcessColors:"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentProcessColors:"))) && ((size_t)(const void *)(((("%%DocumentProcessColors:"))) + 1) - (size_t)(const void *)((("%%DocumentProcessColors:"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%DocumentProcessColors:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentProcessColors:"))) && ((size_t)(const void *)(((("%%DocumentProcessColors:"))) + 1) - (size_t)(const void *)((("%%DocumentProcessColors:"))) == 1) && (__s2_len = strlen ((("%%DocumentProcessColors:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%DocumentProcessColors:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentProcessColors:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%DocumentProcessColors:")))))); }) : strncmp ((const char *)((dsc->line)), (("%%DocumentProcessColors:")), sizeof(("%%DocumentProcessColors:"))-1)))==0)))
        n = 24;
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%+"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%+"))-1))) || (__builtin_constant_p ((("%%+"))) && strlen ((("%%+"))) < ((size_t) (sizeof(("%%+"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%+"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%+"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%+"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) && (__s2_len = strlen ((("%%+"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%+"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%+"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%+"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%+"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%+")))))); }) : strncmp ((const char *)((dsc->line)), (("%%+")), sizeof(("%%+"))-1)))==0)))
        n = 3;
    else
        return CDSC_ERROR;

    memset(&colourname, 0, sizeof(colourname));


    blank_line = ((GSBOOL)(!((GSBOOL)0)));
    for (i=n; i<dsc->line_length; i++) {
        if (!((((dsc->line[i])==' ') || ((dsc->line[i])=='\t')) || (((dsc->line[i])=='\r') || ((dsc->line[i])=='\n')))) {
            blank_line = ((GSBOOL)0);
            break;
        }
    }
    while ((((dsc->line[n])==' ') || ((dsc->line[n])=='\t')))
        n++;
    if (((__extension__ (__builtin_constant_p (sizeof("(atend)")-1) && ((__builtin_constant_p ((const char *)(dsc->line+n)) && strlen ((const char *)(dsc->line+n)) < ((size_t) (sizeof("(atend)")-1))) || (__builtin_constant_p (("(atend)")) && strlen (("(atend)")) < ((size_t) (sizeof("(atend)")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(dsc->line+n)) && __builtin_constant_p (("(atend)")) && (__s1_len = strlen ((const char *)(dsc->line+n)), __s2_len = strlen (("(atend)")), (!((size_t)(const void *)(((const char *)(dsc->line+n)) + 1) - (size_t)(const void *)((const char *)(dsc->line+n)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(dsc->line+n), ("(atend)")) : (__builtin_constant_p ((const char *)(dsc->line+n)) && ((size_t)(const void *)(((const char *)(dsc->line+n)) + 1) - (size_t)(const void *)((const char *)(dsc->line+n)) == 1) && (__s1_len = strlen ((const char *)(dsc->line+n)), __s1_len < 4) ? (__builtin_constant_p (("(atend)")) && ((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) ? __builtin_strcmp ((const char *)(dsc->line+n), ("(atend)")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("(atend)")); register int __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line+n)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line+n)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line+n)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line+n)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("(atend)")) && ((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) && (__s2_len = strlen (("(atend)")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(dsc->line+n)) && ((size_t)(const void *)(((const char *)(dsc->line+n)) + 1) - (size_t)(const void *)((const char *)(dsc->line+n)) == 1) ? __builtin_strcmp ((const char *)(dsc->line+n), ("(atend)")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(dsc->line+n)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("(atend)")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("(atend)")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("(atend)")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("(atend)")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(dsc->line+n), ("(atend)"))))); }) : strncmp ((const char *)(dsc->line+n), ("(atend)"), sizeof("(atend)")-1)))==0)) {
        if (dsc->scan_section == scan_comments)
            blank_line = ((GSBOOL)(!((GSBOOL)0)));
        else {
            dsc_unknown(dsc);
            return CDSC_NOTDSC;
        }
    }

    if (!blank_line) {
        do {
            dsc_copy_string(colourname, sizeof(colourname),
                dsc->line+n, dsc->line_length-n, &i);
            n+=i;
            if (i && strlen(colourname)) {
                if ((pcolour = dsc_find_colour(dsc, colourname)) == ((void*)0)) {
                    pcolour = (CDSCCOLOUR *)
                        dsc_memalloc(dsc, sizeof(CDSCCOLOUR));
                    if (pcolour == ((void*)0))
                        return CDSC_ERROR;
                    memset(pcolour, 0, sizeof(CDSCCOLOUR));
                    pcolour->custom = CDSC_CUSTOM_COLOUR_UNKNOWN;
                    pcolour->name = dsc_alloc_string(dsc,
                        colourname, (int)strlen(colourname));
                    if (dsc->colours == ((void*)0))
                        dsc->colours = pcolour;
                    else {
                        CDSCCOLOUR *this_colour = dsc->colours;
                        while (this_colour->next)
                            this_colour = this_colour->next;
                        this_colour->next = pcolour;
                    }
                }
                pcolour->type = CDSC_COLOUR_PROCESS;
                if (dsc_stricmp(colourname, "Cyan")==0) {
                    pcolour->custom = CDSC_CUSTOM_COLOUR_CMYK;
                    pcolour->cyan = 1.0;
                    pcolour->magenta = pcolour->yellow = pcolour->black = 0.0;
                }
                else if (dsc_stricmp(colourname, "Magenta")==0) {
                    pcolour->custom = CDSC_CUSTOM_COLOUR_CMYK;
                    pcolour->magenta = 1.0;
                    pcolour->cyan = pcolour->yellow = pcolour->black = 0.0;
                }
                else if (dsc_stricmp(colourname, "Yellow")==0) {
                    pcolour->custom = CDSC_CUSTOM_COLOUR_CMYK;
                    pcolour->yellow = 1.0;
                    pcolour->cyan = pcolour->magenta = pcolour->black = 0.0;
                }
                else if (dsc_stricmp(colourname, "Black")==0) {
                    pcolour->custom = CDSC_CUSTOM_COLOUR_CMYK;
                    pcolour->black = 1.0;
                    pcolour->cyan = pcolour->magenta = pcolour->yellow = 0.0;
                }
                else if (dsc_stricmp(colourname, "Red")==0) {
                    pcolour->custom = CDSC_CUSTOM_COLOUR_RGB;
                    pcolour->red = 1.0;
                    pcolour->green = pcolour->blue = 0.0;
                }
                else if (dsc_stricmp(colourname, "Green")==0) {
                    pcolour->custom = CDSC_CUSTOM_COLOUR_RGB;
                    pcolour->green = 1.0;
                    pcolour->red = pcolour->blue = 0.0;
                }
                else if (dsc_stricmp(colourname, "Blue")==0) {
                    pcolour->custom = CDSC_CUSTOM_COLOUR_RGB;
                    pcolour->blue = 1.0;
                    pcolour->red = pcolour->green = 0.0;
                }
            }
        } while (i != 0);
    }
    return CDSC_OK;
}

static int
dsc_parse_custom_colours(CDSC *dsc)
{
    unsigned int i, n;
    CDSCCOLOUR *pcolour;
    char colourname[256];
    GSBOOL blank_line;
    if ((((__extension__ (__builtin_constant_p (sizeof(("%%DocumentCustomColors:"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%DocumentCustomColors:"))-1))) || (__builtin_constant_p ((("%%DocumentCustomColors:"))) && strlen ((("%%DocumentCustomColors:"))) < ((size_t) (sizeof(("%%DocumentCustomColors:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%DocumentCustomColors:"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%DocumentCustomColors:"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%DocumentCustomColors:"))) + 1) - (size_t)(const void *)((("%%DocumentCustomColors:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%DocumentCustomColors:"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%DocumentCustomColors:"))) && ((size_t)(const void *)(((("%%DocumentCustomColors:"))) + 1) - (size_t)(const void *)((("%%DocumentCustomColors:"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%DocumentCustomColors:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%DocumentCustomColors:"))) && ((size_t)(const void *)(((("%%DocumentCustomColors:"))) + 1) - (size_t)(const void *)((("%%DocumentCustomColors:"))) == 1) && (__s2_len = strlen ((("%%DocumentCustomColors:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%DocumentCustomColors:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%DocumentCustomColors:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%DocumentCustomColors:")))))); }) : strncmp ((const char *)((dsc->line)), (("%%DocumentCustomColors:")), sizeof(("%%DocumentCustomColors:"))-1)))==0)))
        n = 23;
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%+"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%+"))-1))) || (__builtin_constant_p ((("%%+"))) && strlen ((("%%+"))) < ((size_t) (sizeof(("%%+"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%+"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%+"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%+"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) && (__s2_len = strlen ((("%%+"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%+"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%+"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%+"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%+"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%+")))))); }) : strncmp ((const char *)((dsc->line)), (("%%+")), sizeof(("%%+"))-1)))==0)))
        n = 3;
    else
        return CDSC_ERROR;

    memset(&colourname, 0, sizeof(colourname));


    blank_line = ((GSBOOL)(!((GSBOOL)0)));
    for (i=n; i<dsc->line_length; i++) {
        if (!((((dsc->line[i])==' ') || ((dsc->line[i])=='\t')) || (((dsc->line[i])=='\r') || ((dsc->line[i])=='\n')))) {
            blank_line = ((GSBOOL)0);
            break;
        }
    }
    while ((((dsc->line[n])==' ') || ((dsc->line[n])=='\t')))
        n++;
    if (((__extension__ (__builtin_constant_p (sizeof("(atend)")-1) && ((__builtin_constant_p ((const char *)(dsc->line+n)) && strlen ((const char *)(dsc->line+n)) < ((size_t) (sizeof("(atend)")-1))) || (__builtin_constant_p (("(atend)")) && strlen (("(atend)")) < ((size_t) (sizeof("(atend)")-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)(dsc->line+n)) && __builtin_constant_p (("(atend)")) && (__s1_len = strlen ((const char *)(dsc->line+n)), __s2_len = strlen (("(atend)")), (!((size_t)(const void *)(((const char *)(dsc->line+n)) + 1) - (size_t)(const void *)((const char *)(dsc->line+n)) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)(dsc->line+n), ("(atend)")) : (__builtin_constant_p ((const char *)(dsc->line+n)) && ((size_t)(const void *)(((const char *)(dsc->line+n)) + 1) - (size_t)(const void *)((const char *)(dsc->line+n)) == 1) && (__s1_len = strlen ((const char *)(dsc->line+n)), __s1_len < 4) ? (__builtin_constant_p (("(atend)")) && ((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) ? __builtin_strcmp ((const char *)(dsc->line+n), ("(atend)")) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (("(atend)")); register int __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line+n)))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line+n)))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line+n)))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)(dsc->line+n)))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (("(atend)")) && ((size_t)(const void *)((("(atend)")) + 1) - (size_t)(const void *)(("(atend)")) == 1) && (__s2_len = strlen (("(atend)")), __s2_len < 4) ? (__builtin_constant_p ((const char *)(dsc->line+n)) && ((size_t)(const void *)(((const char *)(dsc->line+n)) + 1) - (size_t)(const void *)((const char *)(dsc->line+n)) == 1) ? __builtin_strcmp ((const char *)(dsc->line+n), ("(atend)")) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)(dsc->line+n)); register int __result = __s1[0] - ((const unsigned char *) (const char *) (("(atend)")))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (("(atend)")))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (("(atend)")))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (("(atend)")))[3]); } } __result; }))) : __builtin_strcmp ((const char *)(dsc->line+n), ("(atend)"))))); }) : strncmp ((const char *)(dsc->line+n), ("(atend)"), sizeof("(atend)")-1)))==0)) {
        if (dsc->scan_section == scan_comments)
            blank_line = ((GSBOOL)(!((GSBOOL)0)));
        else {
            dsc_unknown(dsc);
            return CDSC_NOTDSC;
        }
    }

    if (!blank_line) {
        do {
            dsc_copy_string(colourname, sizeof(colourname),
                dsc->line+n, dsc->line_length-n, &i);
            n+=i;
            if (i && strlen(colourname)) {
                if ((pcolour = dsc_find_colour(dsc, colourname)) == ((void*)0)) {
                    pcolour = (CDSCCOLOUR *)
                        dsc_memalloc(dsc, sizeof(CDSCCOLOUR));
                    if (pcolour == ((void*)0))
                        return CDSC_ERROR;
                    memset(pcolour, 0, sizeof(CDSCCOLOUR));
                    pcolour->name = dsc_alloc_string(dsc,
                        colourname, (int)strlen(colourname));
                    pcolour->custom = CDSC_CUSTOM_COLOUR_UNKNOWN;
                    if (dsc->colours == ((void*)0))
                        dsc->colours = pcolour;
                    else {
                        CDSCCOLOUR *this_colour = dsc->colours;
                        while (this_colour->next)
                            this_colour = this_colour->next;
                        this_colour->next = pcolour;
                    }
                }
                pcolour->type = CDSC_COLOUR_CUSTOM;
            }
        } while (i != 0);
    }
    return CDSC_OK;
}

static int
dsc_parse_cmyk_custom_colour(CDSC *dsc)
{
    unsigned int i, n;
    CDSCCOLOUR *pcolour;
    char colourname[256];
    float cyan, magenta, yellow, black;
    GSBOOL blank_line;
    if ((((__extension__ (__builtin_constant_p (sizeof(("%%CMYKCustomColor:"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%CMYKCustomColor:"))-1))) || (__builtin_constant_p ((("%%CMYKCustomColor:"))) && strlen ((("%%CMYKCustomColor:"))) < ((size_t) (sizeof(("%%CMYKCustomColor:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%CMYKCustomColor:"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%CMYKCustomColor:"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%CMYKCustomColor:"))) + 1) - (size_t)(const void *)((("%%CMYKCustomColor:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%CMYKCustomColor:"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%CMYKCustomColor:"))) && ((size_t)(const void *)(((("%%CMYKCustomColor:"))) + 1) - (size_t)(const void *)((("%%CMYKCustomColor:"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%CMYKCustomColor:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%CMYKCustomColor:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%CMYKCustomColor:"))) && ((size_t)(const void *)(((("%%CMYKCustomColor:"))) + 1) - (size_t)(const void *)((("%%CMYKCustomColor:"))) == 1) && (__s2_len = strlen ((("%%CMYKCustomColor:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%CMYKCustomColor:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%CMYKCustomColor:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%CMYKCustomColor:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%CMYKCustomColor:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%CMYKCustomColor:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%CMYKCustomColor:")))))); }) : strncmp ((const char *)((dsc->line)), (("%%CMYKCustomColor:")), sizeof(("%%CMYKCustomColor:"))-1)))==0)))
        n = 18;
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%+"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%+"))-1))) || (__builtin_constant_p ((("%%+"))) && strlen ((("%%+"))) < ((size_t) (sizeof(("%%+"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%+"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%+"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%+"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) && (__s2_len = strlen ((("%%+"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%+"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%+"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%+"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%+"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%+")))))); }) : strncmp ((const char *)((dsc->line)), (("%%+")), sizeof(("%%+"))-1)))==0)))
        n = 3;
    else
        return CDSC_ERROR;

    memset(&colourname, 0, sizeof(colourname));



    do {
        blank_line = ((GSBOOL)(!((GSBOOL)0)));
        for (i=n; i<dsc->line_length; i++) {
            if (!((((dsc->line[i])==' ') || ((dsc->line[i])=='\t')) || (((dsc->line[i])=='\r') || ((dsc->line[i])=='\n')))) {
                blank_line = ((GSBOOL)0);
                break;
            }
        }
        if (blank_line)
            break;
        else {
            cyan = magenta = yellow = black = 0.0;
            cyan = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
            n += i;
            if (i)
                magenta = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
            n += i;
            if (i)
                yellow = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
            n += i;
            if (i)
                black = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
            n += i;
            if (i)
                dsc_copy_string(colourname, sizeof(colourname),
                    dsc->line+n, dsc->line_length-n, &i);
            n+=i;
            if (i && strlen(colourname)) {
                if ((pcolour = dsc_find_colour(dsc, colourname)) == ((void*)0)) {
                    pcolour = (CDSCCOLOUR *)
                        dsc_memalloc(dsc, sizeof(CDSCCOLOUR));
                    if (pcolour == ((void*)0))
                        return CDSC_ERROR;
                    memset(pcolour, 0, sizeof(CDSCCOLOUR));
                    pcolour->name = dsc_alloc_string(dsc,
                        colourname, (int)strlen(colourname));
                    pcolour->type = CDSC_COLOUR_UNKNOWN;
                    if (dsc->colours == ((void*)0))
                        dsc->colours = pcolour;
                    else {
                        CDSCCOLOUR *this_colour = dsc->colours;
                        while (this_colour->next)
                            this_colour = this_colour->next;
                        this_colour->next = pcolour;
                    }
                }
                pcolour->custom = CDSC_CUSTOM_COLOUR_CMYK;
                pcolour->cyan = cyan;
                pcolour->magenta = magenta;
                pcolour->yellow = yellow;
                pcolour->black = black;
            }
        }
    } while (i != 0);
    return CDSC_OK;
}

static int
dsc_parse_rgb_custom_colour(CDSC *dsc)
{
    unsigned int i, n;
    CDSCCOLOUR *pcolour;
    char colourname[256];
    float red, green, blue;
    GSBOOL blank_line;
    if ((((__extension__ (__builtin_constant_p (sizeof(("%%RGBCustomColor:"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%RGBCustomColor:"))-1))) || (__builtin_constant_p ((("%%RGBCustomColor:"))) && strlen ((("%%RGBCustomColor:"))) < ((size_t) (sizeof(("%%RGBCustomColor:"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%RGBCustomColor:"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%RGBCustomColor:"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%RGBCustomColor:"))) + 1) - (size_t)(const void *)((("%%RGBCustomColor:"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%RGBCustomColor:"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%RGBCustomColor:"))) && ((size_t)(const void *)(((("%%RGBCustomColor:"))) + 1) - (size_t)(const void *)((("%%RGBCustomColor:"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%RGBCustomColor:"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%RGBCustomColor:"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%RGBCustomColor:"))) && ((size_t)(const void *)(((("%%RGBCustomColor:"))) + 1) - (size_t)(const void *)((("%%RGBCustomColor:"))) == 1) && (__s2_len = strlen ((("%%RGBCustomColor:"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%RGBCustomColor:"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%RGBCustomColor:"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%RGBCustomColor:"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%RGBCustomColor:"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%RGBCustomColor:"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%RGBCustomColor:")))))); }) : strncmp ((const char *)((dsc->line)), (("%%RGBCustomColor:")), sizeof(("%%RGBCustomColor:"))-1)))==0)))
        n = 17;
    else if ((((__extension__ (__builtin_constant_p (sizeof(("%%+"))-1) && ((__builtin_constant_p ((const char *)((dsc->line))) && strlen ((const char *)((dsc->line))) < ((size_t) (sizeof(("%%+"))-1))) || (__builtin_constant_p ((("%%+"))) && strlen ((("%%+"))) < ((size_t) (sizeof(("%%+"))-1)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((const char *)((dsc->line))) && __builtin_constant_p ((("%%+"))) && (__s1_len = strlen ((const char *)((dsc->line))), __s2_len = strlen ((("%%+"))), (!((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) && (__s1_len = strlen ((const char *)((dsc->line))), __s1_len < 4) ? (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((("%%+"))); register int __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((const char *)((dsc->line))))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((("%%+"))) && ((size_t)(const void *)(((("%%+"))) + 1) - (size_t)(const void *)((("%%+"))) == 1) && (__s2_len = strlen ((("%%+"))), __s2_len < 4) ? (__builtin_constant_p ((const char *)((dsc->line))) && ((size_t)(const void *)(((const char *)((dsc->line))) + 1) - (size_t)(const void *)((const char *)((dsc->line))) == 1) ? __builtin_strcmp ((const char *)((dsc->line)), (("%%+"))) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((const char *)((dsc->line))); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((("%%+"))))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((("%%+"))))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((("%%+"))))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((("%%+"))))[3]); } } __result; }))) : __builtin_strcmp ((const char *)((dsc->line)), (("%%+")))))); }) : strncmp ((const char *)((dsc->line)), (("%%+")), sizeof(("%%+"))-1)))==0)))
        n = 3;
    else
        return CDSC_ERROR;

    memset(&colourname, 0, sizeof(colourname));



    do {
        blank_line = ((GSBOOL)(!((GSBOOL)0)));
        for (i=n; i<dsc->line_length; i++) {
            if (!((((dsc->line[i])==' ') || ((dsc->line[i])=='\t')) || (((dsc->line[i])=='\r') || ((dsc->line[i])=='\n')))) {
                blank_line = ((GSBOOL)0);
                break;
            }
        }
        if (blank_line)
            break;
        else {
            red = green = blue = 0.0;
            red = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
            n += i;
            if (i)
                green = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
            n += i;
            if (i)
                blue = dsc_get_real(dsc->line+n, dsc->line_length-n, &i);
            n += i;
            if (i)
                dsc_copy_string(colourname, sizeof(colourname),
                    dsc->line+n, dsc->line_length-n, &i);
            n+=i;
            if (i && strlen(colourname)) {
                if ((pcolour = dsc_find_colour(dsc, colourname)) == ((void*)0)) {
                    pcolour = (CDSCCOLOUR *)
                        dsc_memalloc(dsc, sizeof(CDSCCOLOUR));
                    if (pcolour == ((void*)0))
                        return CDSC_ERROR;
                    memset(pcolour, 0, sizeof(CDSCCOLOUR));
                    pcolour->name = dsc_alloc_string(dsc,
                        colourname, (int)strlen(colourname));
                    pcolour->type = CDSC_COLOUR_UNKNOWN;
                    if (dsc->colours == ((void*)0))
                        dsc->colours = pcolour;
                    else {
                        CDSCCOLOUR *this_colour = dsc->colours;
                        while (this_colour->next)
                            this_colour = this_colour->next;
                        this_colour->next = pcolour;
                    }
                }
                pcolour->custom = CDSC_CUSTOM_COLOUR_RGB;
                pcolour->red = red;
                pcolour->green = green;
                pcolour->blue = blue;
            }
        }
    } while (i != 0);
    return CDSC_OK;
}
