# 1 "./psi/zfcid0.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./psi/zfcid0.c" 2
# 18 "./psi/zfcid0.c"
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
# 19 "./psi/zfcid0.c" 2
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
# 20 "./psi/zfcid0.c" 2
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




typedef struct gs_ref_memory_s gs_ref_memory_t;
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
# 32 "./psi/imemory.h" 2








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
# 24 "./base/scommon.h"
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
# 25 "./base/scommon.h" 2
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
# 21 "./psi/zfcid0.c" 2
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






int sget_matrix(stream *, gs_matrix *);
int sput_matrix(stream *, const gs_matrix *);
# 22 "./psi/zfcid0.c" 2
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
# 23 "./psi/zfcid0.c" 2
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
# 24 "./psi/zfcid0.c" 2
# 1 "./base/gxfcid.h" 1
# 22 "./base/gxfcid.h"
# 1 "./base/gxcid.h" 1
# 27 "./base/gxcid.h"
typedef struct gs_cid_system_info_s gs_cid_system_info_t;

struct gs_cid_system_info_s {
    gs_const_string Registry;
    gs_const_string Ordering;
    int Supplement;
};
extern const gs_memory_struct_type_t st_cid_system_info;
extern const gs_memory_struct_type_t st_cid_system_info_element;
# 50 "./base/gxcid.h"
void cid_system_info_set_null(gs_cid_system_info_t *);
bool cid_system_info_is_null(const gs_cid_system_info_t *);
# 23 "./base/gxfcid.h" 2
# 1 "./base/gxfont.h" 1
# 24 "./base/gxfont.h"
# 1 "./base/gsfont.h" 1
# 39 "./base/gsfont.h"
typedef struct gs_font_s gs_font;




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
# 29 "./base/gxfont.h" 2

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






typedef struct gs_text_enum_s gs_text_enum_t;




typedef struct gs_show_enum_s gs_show_enum;




typedef struct gx_path_s gx_path;
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
# 24 "./base/gxfcid.h" 2
# 1 "./base/gxfont42.h" 1
# 24 "./base/gxfont42.h"
typedef struct gs_glyph_cache_s gs_glyph_cache;




typedef struct cached_fm_pair_s cached_fm_pair;





typedef struct gs_type42_data_s gs_type42_data;



typedef struct gs_font_type42_s gs_font_type42;




typedef struct gs_matrix_fixed_s gs_matrix_fixed;


typedef enum gs_type42_metrics_options_s {
    gs_type42_metrics_options_WMODE0 = 0,
    gs_type42_metrics_options_WMODE1 = 1,
    gs_type42_metrics_options_BBOX = 2,
    gs_type42_metrics_options_WMODE0_AND_BBOX = 4,
    gs_type42_metrics_options_WMODE1_AND_BBOX = 5,
} gs_type42_metrics_options_t;
# 62 "./base/gxfont42.h"
int gs_type42_default_get_metrics(gs_font_type42 *pfont, uint glyph_index,
                                  gs_type42_metrics_options_t options, float *sbw);

typedef struct gs_type42_mtx_s {
    uint numMetrics;
    ulong offset;
    uint length;
} gs_type42_mtx_t;
struct gs_type42_data_s {

    int (*string_proc) (gs_font_type42 *, ulong, uint, const byte **);
    void *proc_data;




    uint (*get_glyph_index)(gs_font_type42 *pfont, gs_glyph glyph);
    int (*get_outline)(gs_font_type42 *pfont, uint glyph_index,
                       gs_glyph_data_t *pgd);
    int (*get_metrics)(gs_font_type42 *pfont, uint glyph_index,
                        gs_type42_metrics_options_t options,
                        float *sbw_bbox );
     uint (*substitute_glyph_index_vertical)(gs_font_type42 *pfont, uint glyph_index,
                                          int WMode, gs_glyph glyph);


    ulong cmap;

    ulong glyf;
    uint unitsPerEm;
    uint indexToLocFormat;
    gs_type42_mtx_t metrics[2];
    ulong loca;
    ulong name_offset;
    ulong os2_offset;
# 109 "./base/gxfont42.h"
    uint numGlyphs;
    uint trueNumGlyphs;
    uint maxPoints;
    uint maxContours;
    uint maxCPoints;
    uint maxCContours;
    uint *len_glyphs;
    gs_glyph_cache *gdcache;
    bool warning_patented;
    bool warning_bad_instruction;
    byte *gsub;
    ulong gsub_size;
};



struct gs_font_type42_s {
    gs_font *next, *prev; gs_memory_t *memory; gs_font_dir *dir; bool is_resource; gs_notify_list_t notify_list; gs_id id; gs_font *base; void *client_data; gs_matrix FontMatrix; gs_matrix orig_FontMatrix; font_type FontType; bool BitmapWidths; fbit_type ExactSize, InBetweenSize, TransformedChar; int WMode; int PaintType; float StrokeWidth; bool is_cached; gs_font_procs procs; gs_font_name key_name, font_name; gs_rect FontBBox; gs_uid UID; gs_fapi_server *FAPI; void *FAPI_font_data; gs_encoding_index_t encoding_index; gs_encoding_index_t nearest_encoding_index; gs_type42_data data;
};

extern const gs_memory_struct_type_t st_gs_font_type42;
# 144 "./base/gxfont42.h"
int gs_type42_font_init(gs_font_type42 *pfont, int subfontid);


int gs_type42_read_data(gs_font_type42 * pfont, ulong pos, uint length, byte *buf);
# 162 "./base/gxfont42.h"
int gs_type42_append(uint glyph_index, gs_state * pgs,
                 gx_path * ppath, gs_text_enum_t *penum, gs_font *pfont,
                 bool charpath_flag);


int gs_type42_get_metrics(gs_font_type42 * pfont, uint glyph_index,
                          float psbw[4]);

int gs_type42_get_outline_from_TT_file(gs_font_type42 * pfont, stream *s, uint glyph_index,
                gs_glyph_data_t *pgd);


int gs_type42_enumerate_glyph(gs_font *font, int *pindex, gs_glyph_space_t glyph_space, gs_glyph *pglyph);
int gs_type42_glyph_info(gs_font *font, gs_glyph glyph, const gs_matrix *pmat, int members, gs_glyph_info_t *info);
int gs_type42_glyph_outline(gs_font *font, int WMode, gs_glyph glyph, const gs_matrix *pmat, gx_path *ppath, double sbw[4]);


int gs_type42_glyph_info_by_gid(gs_font *font, gs_glyph glyph, const gs_matrix *pmat,
                     int members, gs_glyph_info_t *info, uint glyph_index);

int gs_type42_font_info(gs_font *font, const gs_point *pscale, int members,
           gs_font_info_t *info);
int gs_truetype_font_info(gs_font *font, const gs_point *pscale, int members,
           gs_font_info_t *info);

uint gs_type42_substitute_glyph_index_vertical(gs_font_type42 *pfont, uint glyph_index,
                                          int WMode, gs_glyph glyph);


void gs_type42_parse_component(const byte **pdata, uint *pflags, gs_matrix_fixed *psmat,
                               int *pmp , const gs_font_type42 *pfont,
                               const gs_matrix_fixed *pmat);
# 25 "./base/gxfcid.h" 2
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
# 26 "./base/gxfcid.h" 2








typedef struct gs_font_cid_data_s {
    gs_cid_system_info_t CIDSystemInfo;
    int CIDCount;
    int MaxCID;
    int GDBytes;


} gs_font_cid_data;

extern const gs_memory_struct_type_t st_gs_font_cid_data;
# 62 "./base/gxfcid.h"
typedef struct gs_font_type1_s gs_font_type1;




typedef struct gs_font_cid0_s gs_font_cid0;



typedef struct gs_font_cid0_data_s {
    gs_font_cid_data common;
    ulong CIDMapOffset;
    gs_font_type1 **FDArray;
    uint FDArray_size;
    int FDBytes;




    int (*glyph_data)(gs_font_base *, gs_glyph, gs_glyph_data_t *, int *);
    void *proc_data;
} gs_font_cid0_data;
struct gs_font_cid0_s {
    gs_font *next, *prev; gs_memory_t *memory; gs_font_dir *dir; bool is_resource; gs_notify_list_t notify_list; gs_id id; gs_font *base; void *client_data; gs_matrix FontMatrix; gs_matrix orig_FontMatrix; font_type FontType; bool BitmapWidths; fbit_type ExactSize, InBetweenSize, TransformedChar; int WMode; int PaintType; float StrokeWidth; bool is_cached; gs_font_procs procs; gs_font_name key_name, font_name; gs_rect FontBBox; gs_uid UID; gs_fapi_server *FAPI; void *FAPI_font_data; gs_encoding_index_t encoding_index; gs_encoding_index_t nearest_encoding_index;
    gs_font_cid0_data cidata;
};

extern const gs_memory_struct_type_t st_gs_font_cid0;
# 98 "./base/gxfcid.h"
extern const gs_memory_struct_type_t st_gs_font_type1_ptr_element;



typedef struct gs_font_cid1_data_s {
    gs_cid_system_info_t CIDSystemInfo;
} gs_font_cid1_data;
typedef struct gs_font_cid1_s {
    gs_font *next, *prev; gs_memory_t *memory; gs_font_dir *dir; bool is_resource; gs_notify_list_t notify_list; gs_id id; gs_font *base; void *client_data; gs_matrix FontMatrix; gs_matrix orig_FontMatrix; font_type FontType; bool BitmapWidths; fbit_type ExactSize, InBetweenSize, TransformedChar; int WMode; int PaintType; float StrokeWidth; bool is_cached; gs_font_procs procs; gs_font_name key_name, font_name; gs_rect FontBBox; gs_uid UID; gs_fapi_server *FAPI; void *FAPI_font_data; gs_encoding_index_t encoding_index; gs_encoding_index_t nearest_encoding_index;
    gs_font_cid1_data cidata;
} gs_font_cid1;

extern const gs_memory_struct_type_t st_gs_font_cid1;
# 120 "./base/gxfcid.h"
typedef struct gs_subst_CID_on_WMode_s {
    rc_header rc;
    uint *data[2];
    uint size[2];
} gs_subst_CID_on_WMode_t;
# 135 "./base/gxfcid.h"
typedef struct gs_font_cid2_s gs_font_cid2;

typedef struct gs_font_cid2_data_s {
    gs_font_cid_data common;
    int MetricsCount;
    int (*CIDMap_proc)(gs_font_cid2 *, gs_glyph);




    struct o_ {
        int (*get_outline)(gs_font_type42 *, uint, gs_glyph_data_t *);
        int (*get_metrics)(gs_font_type42 *, uint, gs_type42_metrics_options_t,
                float * );
    } orig_procs;
} gs_font_cid2_data;
struct gs_font_cid2_s {
    gs_font *next, *prev; gs_memory_t *memory; gs_font_dir *dir; bool is_resource; gs_notify_list_t notify_list; gs_id id; gs_font *base; void *client_data; gs_matrix FontMatrix; gs_matrix orig_FontMatrix; font_type FontType; bool BitmapWidths; fbit_type ExactSize, InBetweenSize, TransformedChar; int WMode; int PaintType; float StrokeWidth; bool is_cached; gs_font_procs procs; gs_font_name key_name, font_name; gs_rect FontBBox; gs_uid UID; gs_fapi_server *FAPI; void *FAPI_font_data; gs_encoding_index_t encoding_index; gs_encoding_index_t nearest_encoding_index; gs_type42_data data;
    gs_font_cid2_data cidata;
    gs_subst_CID_on_WMode_t *subst_CID_on_WMode;
};

extern const gs_memory_struct_type_t st_gs_font_cid2;
# 172 "./base/gxfcid.h"
const gs_cid_system_info_t *gs_font_cid_system_info(const gs_font *);





int gs_font_cid0_enumerate_glyph(gs_font *font, int *pindex, gs_glyph_space_t glyph_space, gs_glyph *pglyph);




bool gs_is_CIDSystemInfo_compatible(const gs_cid_system_info_t *info0,
                                    const gs_cid_system_info_t *info1);


const gs_font *gs_cid0_indexed_font(const gs_font *, int);


bool gs_cid0_has_type2(const gs_font *font);
# 25 "./psi/zfcid0.c" 2
# 1 "./base/gxfont1.h" 1
# 22 "./base/gxfont1.h"
# 1 "./base/gstype1.h" 1
# 25 "./base/gstype1.h"
typedef struct gs_type1_state_s gs_type1_state;
# 36 "./base/gstype1.h"
struct gs_type1_data_s;

int gs_type1_interp_init(gs_type1_state * pcis, gs_imager_state * pis,
                         gx_path * ppath, const gs_log2_scale_point * pscale,
                         const gs_log2_scale_point * psubpixels, bool no_grid_fitting,
                         int paint_type, gs_font_type1 * pfont);
void gs_type1_set_callback_data(gs_type1_state *pcis, void *callback_data);
void gs_type1_set_lsb(gs_type1_state * pcis, const gs_point * psbpt);
void gs_type1_set_width(gs_type1_state * pcis, const gs_point * pwpt);
# 64 "./base/gstype1.h"
typedef int (*charstring_interpret_proc_t)(gs_type1_state *, const gs_glyph_data_t *, int *);


int gs_type1_interpret(gs_type1_state *, const gs_glyph_data_t *, int *);

int gs_type2_interpret(gs_type1_state *, const gs_glyph_data_t *, int *);




typedef enum {


    c_num1 = 32,



    c_pos2_0 = 247,
    c_pos2_1 = 248,
    c_pos2_2 = 249,
    c_pos2_3 = 250,




    c_neg2_0 = 251,
    c_neg2_1 = 252,
    c_neg2_2 = 253,
    c_neg2_3 = 254



} char_num_command;







typedef enum {




    c_undef0 = 0,
    c_undef2 = 2,
    c_callsubr = 10,
    c_return = 11,
    c_undoc15 = 15,


    c_undef17 = 17,




    cx_hstem = 1,
    cx_vstem = 3,
    cx_vmoveto = 4,
    cx_rlineto = 5,
    cx_hlineto = 6,
    cx_vlineto = 7,
    cx_rrcurveto = 8,
    cx_escape = 12,
    cx_endchar = 14,
    cx_rmoveto = 21,
    cx_hmoveto = 22,
    cx_vhcurveto = 30,
    cx_hvcurveto = 31,

    cx_num4 = 255,



    c1_closepath = 9,
    c1_hsbw = 13,
# 151 "./base/gstype1.h"
    c2_blend = 16,
    c2_hstemhm = 18,
    c2_hintmask = 19,
    c2_cntrmask = 20,
    c2_vstemhm = 23,
    c2_rcurveline = 24,
    c2_rlinecurve = 25,
    c2_vvcurveto = 26,
    c2_hhcurveto = 27,
    c2_shortint = 28,
    c2_callgsubr = 29






} char_command;
# 190 "./base/gstype1.h"
typedef enum {
    ce1_dotsection = 0,
    ce1_vstem3 = 1,
    ce1_hstem3 = 2,
    ce1_seac = 6,
    ce1_sbw = 7,
    ce1_div = 12,
    ce1_undoc15 = 15,


    ce1_callothersubr = 16,
    ce1_pop = 17,
    ce1_setcurrentpoint = 33
} char1_extended_command;
# 218 "./base/gstype1.h"
typedef enum {
    ce2_and = 3,
    ce2_or = 4,
    ce2_not = 5,
    ce2_store = 8,
    ce2_abs = 9,
    ce2_add = 10,
    ce2_sub = 11,
    ce2_div = 12,
    ce2_load = 13,
    ce2_neg = 14,
    ce2_eq = 15,
    ce2_drop = 18,
    ce2_put = 20,
    ce2_get = 21,
    ce2_ifelse = 22,
    ce2_random = 23,
    ce2_mul = 24,
    ce2_sqrt = 26,
    ce2_dup = 27,
    ce2_exch = 28,
    ce2_index = 29,
    ce2_roll = 30,
    ce2_hflex = 34,
    ce2_flex = 35,
    ce2_hflex1 = 36,
    ce2_flex1 = 37
} char2_extended_command;
# 23 "./base/gxfont1.h" 2
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
# 24 "./base/gxfont1.h" 2
# 55 "./base/gxfont1.h"
typedef struct gs_type1_data_s gs_type1_data;


typedef struct gs_type1_data_procs_s {



    int (*glyph_data)(gs_font_type1 * pfont, gs_glyph glyph,
                      gs_glyph_data_t *pgd);



    int (*subr_data)(gs_font_type1 * pfont, int subr_num, bool global,
                     gs_glyph_data_t *pgd);
# 77 "./base/gxfont1.h"
    int (*seac_data)(gs_font_type1 * pfont, int ccode,
                     gs_glyph * pglyph, gs_const_string *gstr, gs_glyph_data_t *pgd);







    int (*push_values)(void *callback_data, const fixed *values,
                       int count);



    int (*pop_value)(void *callback_data, fixed *value);

} gs_type1_data_procs_t;







struct gs_type1_data_s {

    gs_type1_data_procs_t procs;
    int (*interpret)(gs_type1_state *, const gs_glyph_data_t *, int *);
    void *proc_data;
    gs_font_base *parent;
    int lenIV;

    uint subroutineNumberBias;


    uint gsubrNumberBias;
    long initialRandomSeed;
    fixed defaultWidthX;
    fixed nominalWidthX;



    int BlueFuzz;
    float BlueScale;
    float BlueShift;

          struct { int count; float values[(7)*2]; } BlueValues;
    float ExpansionFactor;
    bool ForceBold;

    struct { int count; float values[(7)*2]; } FamilyBlues;

    struct { int count; float values[(5)*2]; } FamilyOtherBlues;
    int LanguageGroup;

    struct { int count; float values[(5)*2]; } OtherBlues;
    bool RndStemUp;
    struct { int count; float values[1]; } StdHW;
    struct { int count; float values[1]; } StdVW;

    struct { int count; float values[12]; } StemSnapH;
    struct { int count; float values[12]; } StemSnapV;


    struct { int count; float values[16]; } WeightVector;
    byte hash_subrs[16];
    int num_subrs;
};



struct gs_font_type1_s {
    gs_font *next, *prev; gs_memory_t *memory; gs_font_dir *dir; bool is_resource; gs_notify_list_t notify_list; gs_id id; gs_font *base; void *client_data; gs_matrix FontMatrix; gs_matrix orig_FontMatrix; font_type FontType; bool BitmapWidths; fbit_type ExactSize, InBetweenSize, TransformedChar; int WMode; int PaintType; float StrokeWidth; bool is_cached; gs_font_procs procs; gs_font_name key_name, font_name; gs_rect FontBBox; gs_uid UID; gs_fapi_server *FAPI; void *FAPI_font_data; gs_encoding_index_t encoding_index; gs_encoding_index_t nearest_encoding_index;
    gs_type1_data data;
};

extern const gs_memory_struct_type_t st_gs_font_type1;






int gs_type1_glyph_info(gs_font *font, gs_glyph glyph, const gs_matrix *pmat, int members, gs_glyph_info_t *info);






int gs_type1_piece_codes( gs_font_type1 *pfont,
                         const gs_glyph_data_t *pgd, gs_char *chars);
# 26 "./psi/zfcid0.c" 2
# 1 "./base/gxalloc.h" 1
# 29 "./base/gxalloc.h"
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
# 27 "./psi/zfcid0.c" 2

# 1 "./psi/bfont.h" 1
# 23 "./psi/bfont.h"
# 1 "./psi/ifont.h" 1
# 35 "./psi/ifont.h"
typedef struct font_data_s {
    ref dict;
    ref BuildChar;
    ref BuildGlyph;
    ref Encoding;
    ref CharStrings;
    ref GlyphNames2Unicode;
    union _fs {
        struct _f1 {
            ref OtherSubrs;
            ref Subrs;
            ref GlobalSubrs;

        } type1;
        struct _f42 {
            ref sfnts;
            ref CIDMap;
            ref GlyphDirectory;

            uint mru_sfnts_index;
            ulong mru_sfnts_pos;
        } type42;
        struct _fc0 {
            ref GlyphDirectory;
            ref GlyphData;
            ref DataSource;
        } cid0;
    } u;
} font_data;
# 72 "./psi/ifont.h"
extern const gs_memory_struct_type_t st_font_data;
# 90 "./psi/ifont.h"
int font_bbox_param(const gs_memory_t *mem, const ref *pfdict, double bbox[4]);
# 103 "./psi/ifont.h"
int font_param(const ref * pfdict, gs_font ** ppfont);






bool zfont_mark_glyph_name(const gs_memory_t *mem, gs_glyph glyph, void *ignore_data);






int zfont_info(gs_font *font, const gs_point *pscale, int members, gs_font_info_t *info);
# 24 "./psi/bfont.h" 2


int add_FID(i_ctx_t *i_ctx_p, ref *pfdict, gs_font *pfont,
            gs_ref_memory_t *imem);

int zdefault_make_font(gs_font_dir *, const gs_font *, const gs_matrix *, gs_font **);
int zbase_make_font(gs_font_dir *, const gs_font *, const gs_matrix *, gs_font **);





typedef struct build_proc_refs_s {
    ref BuildChar;
    ref BuildGlyph;
} build_proc_refs;



typedef enum {
    bf_options_none = 0,
    bf_Encoding_optional = 1,
    bf_UniqueID_ignored = 4,
    bf_CharStrings_optional = 8,
    bf_notdef_required = 16,
    bf_has_font_file = 32
} build_font_options_t;


int build_proc_name_refs(const gs_memory_t *mem,
                         build_proc_refs * pbuild,
                         const char *bcstr, const char *bgstr);
int build_gs_font_procs(os_ptr, build_proc_refs *);




typedef int (*build_base_font_proc_t)(i_ctx_t *, os_ptr, gs_font_base **, font_type, gs_memory_type_ptr_t, const build_proc_refs *, build_font_options_t);
int build_gs_primitive_font(i_ctx_t *, os_ptr, gs_font_base **, font_type, gs_memory_type_ptr_t, const build_proc_refs *, build_font_options_t);
int build_gs_FDArray_font(i_ctx_t *, ref *, gs_font_base **,
                          font_type, gs_memory_type_ptr_t,
                          const build_proc_refs *);
int build_gs_outline_font(i_ctx_t *, os_ptr, gs_font_base **, font_type,
                          gs_memory_type_ptr_t, const build_proc_refs *,
                          build_font_options_t, build_base_font_proc_t);
int build_gs_simple_font(i_ctx_t *, os_ptr, gs_font_base **, font_type, gs_memory_type_ptr_t, const build_proc_refs *, build_font_options_t);
void init_gs_simple_font(gs_font_base *pfont, const double bbox[4],
                         const gs_uid *puid);
void lookup_gs_simple_font_encoding(gs_font_base *);
int build_gs_font(i_ctx_t *, os_ptr, gs_font **, font_type,
                  gs_memory_type_ptr_t, const build_proc_refs *,
                  build_font_options_t);
int build_gs_sub_font(i_ctx_t *, const ref *, gs_font **,
                      font_type, gs_memory_type_ptr_t,
                      const build_proc_refs *, const ref *, ref *);
int define_gs_font(i_ctx_t *, gs_font *);
void get_font_name(const gs_memory_t *mem, ref *pfname, const ref *op);
void copy_font_name(gs_font_name * pfstr, const ref * pfname);
gs_glyph zfont_encode_char(gs_font *pfont, gs_char chr, gs_glyph_space_t ignored);
gs_char gs_font_map_glyph_to_unicode(gs_font *font, gs_glyph glyph, int ch);
const ref *zfont_get_to_unicode_map(gs_font_dir *dir);
void get_GlyphNames2Unicode(i_ctx_t *i_ctx_p, gs_font *pfont, ref *pdref);
# 29 "./psi/zfcid0.c" 2
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
# 30 "./psi/zfcid0.c" 2
# 1 "./psi/ichar.h" 1
# 58 "./psi/ichar.h"
gs_text_enum_t *op_show_find(i_ctx_t *);
int op_show_setup(i_ctx_t *, os_ptr);
int op_show_enum_setup(i_ctx_t *);
int op_show_finish_setup(i_ctx_t *, gs_text_enum_t *, int, op_proc_t);
int op_show_continue(i_ctx_t *);
int op_show_continue_pop(i_ctx_t *, int);
int op_show_continue_dispatch(i_ctx_t *, int, int);
int op_show_free(i_ctx_t *, int);
void glyph_ref(const gs_memory_t *mem, gs_glyph, ref *);
int finish_stringwidth(i_ctx_t *);


bool zchar_show_width_only(const gs_text_enum_t *);
int zsetcachedevice(i_ctx_t *);
int zsetcachedevice2(i_ctx_t *);
# 31 "./psi/zfcid0.c" 2
# 1 "./psi/ichar1.h" 1
# 31 "./psi/ichar1.h"
int charstring_execchar(i_ctx_t *i_ctx_p, int font_type_mask);







int zchar1_glyph_outline(gs_font *font, int WMode, gs_glyph glyph, const gs_matrix *pmat, gx_path *ppath, double sbw[4]);





int zcharstring_outline(gs_font_type1 *pfont, int WMode, const ref *pgref,
                        const gs_glyph_data_t *pgd,
                        const gs_matrix *pmat, gx_path *ppath, double sbw[4]);

int
z1_glyph_info(gs_font *font, gs_glyph glyph, const gs_matrix *pmat,
              int members, gs_glyph_info_t *info);

int z1_glyph_info_generic(gs_font *font, gs_glyph glyph, const gs_matrix *pmat,
              int members, gs_glyph_info_t *info, int (*proc)(gs_font *font, gs_glyph glyph, const gs_matrix *pmat, int members, gs_glyph_info_t *info),
              int wmode);

int z1_set_cache(i_ctx_t *i_ctx_p, gs_font_base *pbfont, ref *cnref,
            gs_glyph glyph, op_proc_t cont, op_proc_t *exec_cont);
# 32 "./psi/zfcid0.c" 2
# 1 "./psi/icid.h" 1
# 28 "./psi/icid.h"
int cid_system_info_param(gs_cid_system_info_t *, const ref *);



int cid_to_TT_charcode(const gs_memory_t *mem,
                       const ref *Decoding, const ref *TT_cmap,
                       const ref *SubstNWP,
                       uint nCID, uint *c, ref *src_type, ref *dst_type);


int cid_fill_CIDMap(const gs_memory_t *mem, const ref *Decoding, const ref *TT_cmap, const ref *SubstNWP,
                    int GDBytes, ref *CIDMap);

int cid_fill_Identity_CIDMap(const gs_memory_t *mem, ref *CIDMap);


int ztype9mapcid(i_ctx_t *i_ctx_p);
# 33 "./psi/zfcid0.c" 2
# 1 "./psi/idict.h" 1
# 22 "./psi/idict.h"
# 1 "./psi/iddstack.h" 1
# 32 "./psi/iddstack.h"
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
# 34 "./psi/zfcid0.c" 2
# 1 "./psi/idparam.h" 1
# 45 "./psi/idparam.h"
int dict_bool_param(const ref * pdict, const char *kstr,
                    bool defaultval, bool * pvalue);
int dict_int_param(const ref * pdict, const char *kstr,
                   int minval, int maxval, int defaultval, int *pvalue);
int dict_int_null_param(const ref * pdict, const char *kstr,
                        int minval, int maxval, int defaultval,
                        int *pvalue);
int dict_uint_param(const ref * pdict, const char *kstr,
                    uint minval, uint maxval, uint defaultval,
                    uint * pvalue);
int dict_float_param(const ref * pdict, const char *kstr,
                     double defaultval, float *pvalue);
# 70 "./psi/idparam.h"
int dict_int_array_check_param(const gs_memory_t *mem, const ref * pdict,
   const char *kstr, uint len, int *ivec, int under_error, int over_error);
int dict_int_array_param(const gs_memory_t *mem, const ref * pdict,
   const char *kstr, uint maxlen, int *ivec);
int dict_ints_param(const gs_memory_t *mem, const ref * pdict,
   const char *kstr, uint len, int *ivec);





int dict_float_array_check_param(const gs_memory_t *mem,
                                 const ref * pdict, const char *kstr,
                                 uint len, float *fvec,
                                 const float *defaultvec,
                                 int under_error, int over_error);
int dict_float_array_param(const gs_memory_t *mem,
                           const ref * pdict, const char *kstr,
                           uint maxlen, float *fvec,
                           const float *defaultvec);
int dict_floats_param(const gs_memory_t *mem,
                      const ref * pdict, const char *kstr,
                      uint len, float *fvec,
                      const float *defaultvec);



int
dict_floats_param_errorinfo(i_ctx_t *i_ctx_p,
                  const ref * pdict, const char *kstr,
                  uint maxlen, float *fvec, const float *defaultvec);







int dict_proc_param(const ref * pdict, const char *kstr, ref * pproc,
                    bool defaultval);
int dict_matrix_param(const gs_memory_t *mem,
                      const ref * pdict, const char *kstr,
                      gs_matrix * pmat);
int dict_uid_param(const ref * pdict, gs_uid * puid, int defaultval,
                   gs_memory_t * mem, const i_ctx_t *i_ctx_p);


bool dict_check_uid_param(const ref * pdict, const gs_uid * puid);




int
gs_errorinfo_put_pair(i_ctx_t *i_ctx_p, const char *key, int len, const ref *any);





void
gs_errorinfo_put_pair_from_dict(i_ctx_t *i_ctx_p, const ref *op, const char *key);
# 35 "./psi/zfcid0.c" 2
# 1 "./psi/ifcid.h" 1
# 23 "./psi/ifcid.h"
int cid_font_system_info_param(gs_cid_system_info_t *pcidsi,
                               const ref *prfont);


int cid_font_data_param(os_ptr op, gs_font_cid_data *pdata,
                        ref *pGlyphDirectory);
# 36 "./psi/zfcid0.c" 2
# 1 "./psi/ifont1.h" 1
# 26 "./psi/ifont1.h"
typedef struct charstring_font_refs_s {
    ref *Private;
    ref no_subrs;
    ref *OtherSubrs;
    ref *Subrs;
    ref *GlobalSubrs;
} charstring_font_refs_t;







int charstring_font_get_refs(const_os_ptr op, charstring_font_refs_t *pfr);






int charstring_font_params(const gs_memory_t *mem,
                           const_os_ptr op, charstring_font_refs_t *pfr,
                           gs_type1_data *pdata1);




int charstring_font_init(gs_font_type1 *pfont,
                         const charstring_font_refs_t *pfr,
                         const gs_type1_data *pdata1);





int build_charstring_font(i_ctx_t *i_ctx_p, os_ptr op,
                          build_proc_refs * pbuild, font_type ftype,
                          charstring_font_refs_t *pfr,
                          gs_type1_data *pdata1,
                          build_font_options_t options);
# 37 "./psi/zfcid0.c" 2
# 1 "./psi/ifont2.h" 1
# 30 "./psi/ifont2.h"
int type2_font_params(const_os_ptr op, charstring_font_refs_t *pfr,
                      gs_type1_data *pdata1);
# 38 "./psi/zfcid0.c" 2
# 1 "./psi/ifont42.h" 1
# 23 "./psi/ifont42.h"
int build_gs_TrueType_font(i_ctx_t *, os_ptr, gs_font_type42 **, font_type,
                           gs_memory_type_ptr_t, const char *, const char *,
                           build_font_options_t);





int font_string_array_param(const gs_memory_t *mem, os_ptr, const char *, ref *);





int font_GlyphDirectory_param(os_ptr, ref *);





int font_gdir_get_outline(const gs_memory_t *mem, const ref *, long, gs_glyph_data_t *);
# 53 "./psi/ifont42.h"
int string_array_access_proc(const gs_memory_t *mem, const ref *, int, ulong, uint,
                             uint *mru_index, ulong *mru_pos, const byte **);
# 39 "./psi/zfcid0.c" 2
# 1 "./psi/store.h" 1
# 22 "./psi/store.h"
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
# 23 "./psi/store.h" 2
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
# 40 "./psi/zfcid0.c" 2
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
# 41 "./psi/zfcid0.c" 2
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
# 42 "./psi/zfcid0.c" 2
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
# 43 "./psi/zfcid0.c" 2


int zcharstring_glyph_outline(gs_font *font, int WMode, gs_glyph glyph, const gs_matrix *pmat, gx_path *ppath, double sbw[4]);






static int
get_index(gs_glyph_data_t *pgd, int count, ulong *pval)
{
    int i;

    if (pgd->bits.size < count)
        return ((-15));
    *pval = 0;
    for (i = 0; i < count; ++i)
        *pval = (*pval << 8) + pgd->bits.data[i];
    pgd->bits.data += count;
    pgd->bits.size -= count;
    return 0;
}


static int
cid0_read_bytes(gs_font_cid0 *pfont, ulong base, uint count, byte *buf,
                gs_glyph_data_t *pgd)
{
    const font_data *pfdata = ((font_data *)((pfont)->client_data));
    byte *data = buf;
    gs_font *gdfont = 0;
    int code = 0;


    if (base != (long)base || base > base + count)
        return ((-15));
    if (((((const byte *)&((&pfdata->u.cid0.DataSource)->tas.type_attrs))[1]) == (t_null))) {

        const ref *pgdata = &pfdata->u.cid0.GlyphData;

        if (((((const byte *)&((pgdata)->tas.type_attrs))[1]) == (t_string))) {
            uint size = ((pgdata)->tas.rsize);

            if (base >= size || count > size - base)
                return ((-15));
            data = pgdata->value.bytes + base;
        } else {






            ulong skip = base;
            uint copied = 0;
            uint index = 0;
            ref rstr;
            uint size;

            for (;; skip -= size, ++index) {
                int code = array_get(pfont->memory, pgdata, index, &rstr);

                if (code < 0)
                    return code;
                if (!((((const byte *)&((&rstr)->tas.type_attrs))[1]) == (t_string)))
                    return ((-20));
                size = ((&rstr)->tas.rsize);
                if (skip < size)
                    break;
            }
            size -= skip;
            if (count <= size) {
                data = rstr.value.bytes + skip;
            } else {
                if (data == 0) {
                    data = (*(pfont->memory)->procs.alloc_string)(pfont->memory, count, "cid0_read_bytes");

                    if (data == 0)
                        return ((-25));
                    gdfont = (gs_font *)pfont;
                }
                memcpy(data, rstr.value.bytes + skip, size);
                copied = size;
                while (copied < count) {
                    int code = array_get(pfont->memory, pgdata, ++index, &rstr);

                    if (code < 0)
                        goto err;
                    if (!((((const byte *)&((&rstr)->tas.type_attrs))[1]) == (t_string))) {
                        code = ((-20));
                        goto err;
                    }
                    size = ((&rstr)->tas.rsize);
                    if (size > count - copied)
                        size = count - copied;
                    memcpy(data + copied, rstr.value.bytes, size);
                    copied += size;
                }
            }
        }
    } else {

        stream *s;
        uint nread;
        i_ctx_t *i_ctx_p = get_minst_from_memory(pfont->memory)->i_ctx_p;

        do { s = (&pfdata->u.cid0.DataSource)->value.pfile; if (s->read_id != ((&pfdata->u.cid0.DataSource)->tas.rsize)) { if (s->read_id == 0 && s->write_id == ((&pfdata->u.cid0.DataSource)->tas.rsize)) { int fcode = file_switch_to_read(&pfdata->u.cid0.DataSource); if (fcode < 0) return (fcode); } else { s = (i_ctx_p->invalid_file_stream); } } } while (0);
        if (spseek(s, (gs_offset_t)(base)) < 0)
            return ((-12));
        if (data == 0) {
            data = (*(pfont->memory)->procs.alloc_string)(pfont->memory, count, "cid0_read_bytes");
            if (data == 0)
                return ((-25));
            gdfont = (gs_font *)pfont;
        }
        if (sgets(s, data, count, &nread) < 0 || nread != count) {
            code = ((-12));
            goto err;
        }
    }
    gs_glyph_data_from_string(pgd, data, count, gdfont);
    return code;
 err:
    if (data != buf)
        (*(pfont->memory)->procs.free_string)(pfont->memory, data, count, "cid0_read_bytes");
    return code;
}




static int
z9_glyph_data(gs_font_base *pbfont, gs_glyph glyph, gs_glyph_data_t *pgd,
              int *pfidx)
{
    gs_font_cid0 *pfont = (gs_font_cid0 *)pbfont;
    const font_data *pfdata = ((font_data *)((pfont)->client_data));
    long glyph_index = (long)(glyph - ((gs_glyph)0x80000000L));
    gs_glyph_data_t gdata;
    ulong fidx;
    int code;

    gdata.memory = pfont->memory;
    if (!((((const byte *)&((&pfdata->u.cid0.GlyphDirectory)->tas.type_attrs))[1]) == (t_null))) {
        code = font_gdir_get_outline(pfont->memory,
                                     &pfdata->u.cid0.GlyphDirectory,
                                     glyph_index, &gdata);
        if (code < 0)
            return code;

        if (!gdata.bits.data)
            return ((-15));
        code = get_index(&gdata, pfont->cidata.FDBytes, &fidx);
        if (code < 0)
            return code;
        if (fidx >= pfont->cidata.FDArray_size)
            return ((-15));
        if (pgd)
            *pgd = gdata;
        *pfidx = (int)fidx;
        return code;
    }

    if (glyph_index < 0 || glyph_index >= pfont->cidata.common.CIDCount) {
        *pfidx = 0;
        if (pgd)
            gs_glyph_data_from_null(pgd);
        return ((-15));
    }
    {
        byte fd_gd[(4 + 4) * 2];
        uint num_bytes = pfont->cidata.FDBytes + pfont->cidata.common.GDBytes;
        ulong base = pfont->cidata.CIDMapOffset + glyph_index * num_bytes;
        ulong gidx, fidx_next, gidx_next;
        int rcode = cid0_read_bytes(pfont, base, (ulong)(num_bytes * 2), fd_gd,
                                    &gdata);
        gs_glyph_data_t orig_data;

        if (rcode < 0)
            return rcode;
        orig_data = gdata;
        if ((code = get_index(&gdata, pfont->cidata.FDBytes, &fidx)) < 0 ||
            (code = get_index(&gdata, pfont->cidata.common.GDBytes, &gidx)) < 0 ||
            (code = get_index(&gdata, pfont->cidata.FDBytes, &fidx_next)) < 0 ||
            (code = get_index(&gdata, pfont->cidata.common.GDBytes, &gidx_next)) < 0
            )
            do { } while (0);
        gs_glyph_data_free(&orig_data, "z9_glyph_data");
        if (code < 0)
            return code;




        if (gidx_next <= gidx) {
            *pfidx = 0;
            if (pgd)
                gs_glyph_data_from_null(pgd);
            return ((-21));
        }
        if (fidx >= pfont->cidata.FDArray_size)
            return ((-15));
        *pfidx = (int)fidx;
        if (pgd == 0)
            return 0;
        return cid0_read_bytes(pfont, gidx, gidx_next - gidx, ((void*)0), pgd);
    }
}


static int
z9_glyph_outline(gs_font *font, int WMode, gs_glyph glyph, const gs_matrix *pmat,
                 gx_path *ppath, double sbw[4])
{
    gs_font_cid0 *const pfcid = (gs_font_cid0 *)font;
    ref gref;
    gs_glyph_data_t gdata;
    int code, fidx, ocode;

    gdata.memory = font->memory;
    code = pfcid->cidata.glyph_data((gs_font_base *)pfcid, glyph, &gdata,
                                    &fidx);
    if (code < 0)
        return code;
    glyph_ref(font->memory, glyph, &gref);
    ocode = zcharstring_outline(pfcid->cidata.FDArray[fidx], WMode, &gref, &gdata,
                                pmat, ppath, sbw);
    gs_glyph_data_free(&gdata, "z9_glyph_outline");
    return ocode;
}

static int
z9_glyph_info(gs_font *font, gs_glyph glyph, const gs_matrix *pmat,
                     int members, gs_glyph_info_t *info)
{
    int wmode = (members & 1 ? 0 : 1);

    return z1_glyph_info_generic(font, glyph, pmat, members, info,
                                    &gs_default_glyph_info, wmode);
}






static int
z9_FDArray_glyph_data(gs_font_type1 * pfont, gs_glyph glyph,
                      gs_glyph_data_t *pgd)
{
    return ((-10));
}
static int
z9_FDArray_seac_data(gs_font_type1 *pfont, int ccode, gs_glyph *pglyph,
                     gs_const_string *gstr, gs_glyph_data_t *pgd)
{
    return ((-10));
}




static int
fd_array_element(i_ctx_t *i_ctx_p, gs_font_type1 **ppfont, ref *prfd)
{
    charstring_font_refs_t refs;
    gs_type1_data data1;
    build_proc_refs build;
    gs_font_base *pbfont;
    gs_font_type1 *pfont;




    int fonttype = 1;
    int code = charstring_font_get_refs(prfd, &refs);

    if (code < 0 ||
        (code = dict_int_param(prfd, "FontType", 1, 2, 1, &fonttype)) < 0
        )
        return code;





    switch (fonttype) {
    case 1:
        data1.interpret = gs_type1_interpret;
        data1.subroutineNumberBias = 0;
        data1.lenIV = 4;
        code = charstring_font_params(((gs_memory_t *)((i_ctx_p->memory).current)), prfd, &refs, &data1);
        if (code < 0)
            return code;
        code = build_proc_name_refs(((gs_memory_t *)((i_ctx_p->memory).current)), &build,
                                    "%Type1BuildChar", "%Type1BuildGlyph");
        break;
    case 2:
        code = type2_font_params(prfd, &refs, &data1);
        if (code < 0)
            return code;
        code = charstring_font_params(((gs_memory_t *)((i_ctx_p->memory).current)), prfd, &refs, &data1);
        if (code < 0)
            return code;
        code = build_proc_name_refs(((gs_memory_t *)((i_ctx_p->memory).current)), &build,
                                    "%Type2BuildChar", "%Type2BuildGlyph");
        break;
    default:
        return ((-100));
    }
    if (code < 0)
        return code;
    code = build_gs_FDArray_font(i_ctx_p, prfd, &pbfont, fonttype,
                                 &st_gs_font_type1, &build);
    if (code < 0)
        return code;
    pfont = (gs_font_type1 *)pbfont;
    pbfont->FAPI = ((void*)0);
    pbfont->FAPI_font_data = ((void*)0);
    charstring_font_init(pfont, &refs, &data1);
    pfont->data.procs.glyph_data = z9_FDArray_glyph_data;
    pfont->data.procs.seac_data = z9_FDArray_seac_data;
    *ppfont = pfont;
    return 0;
}

static int
notify_remove_font_type9(void *proc_data, void *event_data)
{



    if (event_data == ((void*)0)) {
        gs_font_cid0 *pfcid = proc_data;
        int i;

        for (i = 0; i < pfcid->cidata.FDArray_size; ++i) {
            if (pfcid->cidata.FDArray[i]->data.parent == (gs_font_base *)pfcid)
                pfcid->cidata.FDArray[i]->data.parent = ((void*)0);
        }
    }
    return 0;
}


static int
zbuildfont9(i_ctx_t *i_ctx_p)
{
    os_ptr op = (((i_ctx_p->op_stack).stack).p);
    build_proc_refs build;
    int code = build_proc_name_refs(((gs_memory_t *)((i_ctx_p->memory).current)), &build, ((void*)0), "%Type9BuildGlyph");
    gs_font_cid_data common;
    ref GlyphDirectory, GlyphData, DataSource;
    ref *prfda, cfnstr;
    ref *pCIDFontName, CIDFontName;
    gs_font_type1 **FDArray;
    uint FDArray_size;
    int FDBytes;
    uint CIDMapOffset;
    gs_font_base *pfont;
    gs_font_cid0 *pfcid;
    uint i;







    if (code < 0 ||
        (code = cid_font_data_param(op, &common, &GlyphDirectory)) < 0 ||
        (code = dict_find_string(op, "FDArray", &prfda)) < 0 ||
        (code = dict_find_string(op, "CIDFontName", &pCIDFontName)) <= 0 ||
        (code = dict_int_param(op, "FDBytes", 0, 4, -1, &FDBytes)) < 0
        )
        return code;




    CIDFontName = *pCIDFontName;
    if (((((const byte *)&((&GlyphDirectory)->tas.type_attrs))[1]) == (t_null))) {

        ref *pGlyphData;

        if ((code = dict_find_string(op, "GlyphData", &pGlyphData)) < 0 ||
            (code = dict_uint_param(op, "CIDMapOffset", 0, ((unsigned int)~0 + (unsigned int)0) - 1,
                                    ((unsigned int)~0 + (unsigned int)0), &CIDMapOffset)) < 0)
            return code;
        GlyphData = *pGlyphData;
        if (((((const byte *)&((&GlyphData)->tas.type_attrs))[1]) == (t_integer))) {
            ref *pds;
            stream *ignore_s;

            if ((code = dict_find_string(op, "DataSource", &pds)) < 0)
                return code;
            do { if ( !(((&*(pds))->tas.type_attrs & ((((1 << 6) - (1)) << 8) + (0x20))) == (((t_file) << 8) + (0x20))) ) return ((!((((const byte *)&((&*(pds))->tas.type_attrs))[1]) == (t_file)) ? check_type_failed(&*(pds)) : (-7))); do { ignore_s = (pds)->value.pfile; if (ignore_s->read_id != ((pds)->tas.rsize)) { if (ignore_s->read_id == 0 && ignore_s->write_id == ((pds)->tas.rsize)) { int fcode = file_switch_to_read(pds); if (fcode < 0) return(fcode); } else { ignore_s = (i_ctx_p->invalid_file_stream); } } } while (0); } while (0);
            DataSource = *pds;
        } else {
            if (!((((const byte *)&((&GlyphData)->tas.type_attrs))[1]) == (t_string)) && !(((&GlyphData)->tas.type_attrs & ((((1 << 6) - (4)) << 8) + (0))) == (((t_array) << 8) + (0))))
                return ((-20));
            (((&DataSource)->tas.type_attrs = ((t_null) << 8) + (0)) );
        }
    } else {
        (((&GlyphData)->tas.type_attrs = ((t_null) << 8) + (0)) );
        (((&DataSource)->tas.type_attrs = ((t_null) << 8) + (0)) );
        CIDMapOffset = 0;
    }
    if (!(((prfda)->tas.type_attrs & ((((1 << 6) - (4)) << 8) + (0))) == (((t_array) << 8) + (0))))
        return ((-10));
    FDArray_size = ((prfda)->tas.rsize);
    if (FDArray_size == 0)
        return ((-10));
    FDArray = (gs_font_type1 * *)(*(((gs_memory_t *)((i_ctx_p->memory).current)))->procs.alloc_struct_array)(((gs_memory_t *)((i_ctx_p->memory).current)), FDArray_size, &st_gs_font_type1_ptr_element, "buildfont9(FDarray)");


    if (FDArray == 0)
        return ((-25));
    memset(FDArray, 0, sizeof(gs_font_type1 *) * FDArray_size);
    for (i = 0; i < FDArray_size; ++i) {
        ref rfd;

        array_get(((gs_memory_t *)((i_ctx_p->memory).current)), prfda, (long)i, &rfd);
        code = fd_array_element(i_ctx_p, &FDArray[i], &rfd);
        if (code < 0)
            goto fail;
    }
    code = build_gs_outline_font(i_ctx_p, op, &pfont, ft_CID_encrypted,
                                &st_gs_font_cid0, &build,
                                bf_Encoding_optional | bf_UniqueID_ignored,
                                build_gs_simple_font);
    if (code < 0)
        goto fail;
    if (code == 1) {
# 486 "./psi/zfcid0.c"
        ((((gs_memory_t *)((i_ctx_p->memory).current)))->procs.free_object(((gs_memory_t *)((i_ctx_p->memory).current)), FDArray, "buildfont9(FDarray)"));
        return 0;
    }
    pfont->procs.enumerate_glyph = gs_font_cid0_enumerate_glyph;
    pfont->procs.glyph_outline = z9_glyph_outline;
    pfont->procs.glyph_info = z9_glyph_info;
    pfcid = (gs_font_cid0 *)pfont;
    pfcid->cidata.common = common;
    pfcid->cidata.CIDMapOffset = CIDMapOffset;
    pfcid->cidata.FDArray = FDArray;
    pfcid->cidata.FDArray_size = FDArray_size;
    pfcid->cidata.FDBytes = FDBytes;
    pfcid->cidata.glyph_data = z9_glyph_data;
    pfcid->cidata.proc_data = 0;
    if (pfcid->font_name.size == 0) {
        get_font_name(((gs_memory_t *)((i_ctx_p->memory).current)), &cfnstr, &CIDFontName);
        copy_font_name(&pfcid->font_name, &cfnstr);
    }
    (*(&((font_data *)((pfont)->client_data))->u.cid0.GlyphDirectory) = *(&GlyphDirectory));
    (*(&((font_data *)((pfont)->client_data))->u.cid0.GlyphData) = *(&GlyphData));
    (*(&((font_data *)((pfont)->client_data))->u.cid0.DataSource) = *(&DataSource));
    code = define_gs_font(i_ctx_p, (gs_font *)pfont);
    if (code >= 0)
       code = gs_notify_register(&pfont->notify_list, notify_remove_font_type9, pfont);
    if (code >= 0) {
        for (i = 0; i < FDArray_size; ++i) {
            FDArray[i]->dir = pfont->dir;
            FDArray[i]->data.parent = pfont;
        }
        return code;
    }
 fail:
    ((((gs_memory_t *)((i_ctx_p->memory).current)))->procs.free_object(((gs_memory_t *)((i_ctx_p->memory).current)), FDArray, "buildfont9(FDarray)"));
    return code;
}


int
ztype9mapcid(i_ctx_t *i_ctx_p)
{
    os_ptr op = (((i_ctx_p->op_stack).stack).p);
    gs_font *pfont;
    gs_font_cid0 *pfcid;
    int code = font_param(op - 1, &pfont);
    gs_glyph_data_t gdata;
    int fidx;

    if (code < 0)
        return code;
    if (pfont->FontType != ft_CID_encrypted)
        return ((-10));
    if ( !((((const byte *)&((&*op)->tas.type_attrs))[1]) == (t_integer)) ) return (check_type_failed(&*op));
    pfcid = (gs_font_cid0 *)pfont;
    gdata.memory = pfont->memory;
    code = pfcid->cidata.glyph_data((gs_font_base *)pfcid,
                        (gs_glyph)(((gs_glyph)0x80000000L) + op->value.intval),
                                    &gdata, &fidx);


    if (code < 0) {
       ps_int default_fallback_CID = 0 ;

       do { } while (0);

       op->value.intval = default_fallback_CID;



       code = pfcid->cidata.glyph_data((gs_font_base *)pfcid,
                    (gs_glyph)(((gs_glyph)0x80000000L) + default_fallback_CID),
                                   &gdata, &fidx);

       if (code < 0) {
           do { } while (0);
           return ((-10));
       }

    }


    ((op - 1)->value.const_bytes = (gdata.bits.data), ((op - 1)->tas.type_attrs = ((t_string) << 8) + ((0x20 + 0x40) | imemory_space((gs_ref_memory_t *)pfont->memory))), ((op - 1)->tas.rsize = (gdata.bits.size)));



    ((op)->value.intval = (fidx), ((op)->tas.type_attrs = ((t_integer) << 8) + (0)) );
    return code;
}



const op_def zfcid0_op_defs[] =
{
    {"2.buildfont9", zbuildfont9},
    {"2.type9mapcid", ztype9mapcid},
    {0, 0}
};
