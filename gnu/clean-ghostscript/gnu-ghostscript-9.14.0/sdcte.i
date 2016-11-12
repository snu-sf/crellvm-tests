# 1 "./base/sdcte.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/sdcte.c" 2
# 18 "./base/sdcte.c"
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
# 19 "./base/sdcte.c" 2
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
# 20 "./base/sdcte.c" 2
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
# 21 "./base/sdcte.c" 2
# 1 "./base/jerror_.h" 1
# 25 "./base/jerror_.h"
# 1 "./jpeg/jerror.h" 1
# 34 "./jpeg/jerror.h"
typedef enum {





JMSG_NOMESSAGE ,


JERR_BAD_ALIGN_TYPE ,
JERR_BAD_ALLOC_CHUNK ,
JERR_BAD_BUFFER_MODE ,
JERR_BAD_COMPONENT_ID ,
JERR_BAD_CROP_SPEC ,
JERR_BAD_DCT_COEF ,
JERR_BAD_DCTSIZE ,
JERR_BAD_DROP_SAMPLING ,

JERR_BAD_HUFF_TABLE ,
JERR_BAD_IN_COLORSPACE ,
JERR_BAD_J_COLORSPACE ,
JERR_BAD_LENGTH ,
JERR_BAD_LIB_VERSION ,

JERR_BAD_MCU_SIZE ,
JERR_BAD_POOL_ID ,
JERR_BAD_PRECISION ,
JERR_BAD_PROGRESSION ,

JERR_BAD_PROG_SCRIPT ,

JERR_BAD_SAMPLING ,
JERR_BAD_SCAN_SCRIPT ,
JERR_BAD_STATE ,
JERR_BAD_STRUCT_SIZE ,

JERR_BAD_VIRTUAL_ACCESS ,
JERR_BUFFER_SIZE ,
JERR_CANT_SUSPEND ,
JERR_CCIR601_NOTIMPL ,
JERR_COMPONENT_COUNT ,
JERR_CONVERSION_NOTIMPL ,
JERR_DAC_INDEX ,
JERR_DAC_VALUE ,
JERR_DHT_INDEX ,
JERR_DQT_INDEX ,
JERR_EMPTY_IMAGE ,
JERR_EMS_READ ,
JERR_EMS_WRITE ,
JERR_EOI_EXPECTED ,
JERR_FILE_READ ,
JERR_FILE_WRITE ,
JERR_FRACT_SAMPLE_NOTIMPL ,
JERR_HUFF_CLEN_OVERFLOW ,
JERR_HUFF_MISSING_CODE ,
JERR_IMAGE_TOO_BIG ,
JERR_INPUT_EMPTY ,
JERR_INPUT_EOF ,
JERR_MISMATCHED_QUANT_TABLE ,

JERR_MISSING_DATA ,
JERR_MODE_CHANGE ,
JERR_NOTIMPL ,
JERR_NOT_COMPILED ,
JERR_NO_ARITH_TABLE ,
JERR_NO_BACKING_STORE ,
JERR_NO_HUFF_TABLE ,
JERR_NO_IMAGE ,
JERR_NO_QUANT_TABLE ,
JERR_NO_SOI ,
JERR_OUT_OF_MEMORY ,
JERR_QUANT_COMPONENTS ,

JERR_QUANT_FEW_COLORS ,
JERR_QUANT_MANY_COLORS ,
JERR_SOF_BEFORE ,
JERR_SOF_DUPLICATE ,
JERR_SOF_NO_SOS ,
JERR_SOF_UNSUPPORTED ,
JERR_SOI_DUPLICATE ,
JERR_TFILE_CREATE ,
JERR_TFILE_READ ,
JERR_TFILE_SEEK ,
JERR_TFILE_WRITE ,

JERR_TOO_LITTLE_DATA ,
JERR_UNKNOWN_MARKER ,
JERR_VIRTUAL_BUG ,
JERR_WIDTH_OVERFLOW ,
JERR_XMS_READ ,
JERR_XMS_WRITE ,
JMSG_COPYRIGHT ,
JMSG_VERSION ,
JTRC_16BIT_TABLES ,

JTRC_ADOBE ,

JTRC_APP0 ,
JTRC_APP14 ,
JTRC_DAC ,
JTRC_DHT ,
JTRC_DQT ,
JTRC_DRI ,
JTRC_EMS_CLOSE ,
JTRC_EMS_OPEN ,
JTRC_EOI ,
JTRC_HUFFBITS ,
JTRC_JFIF ,
JTRC_JFIF_BADTHUMBNAILSIZE ,

JTRC_JFIF_EXTENSION ,

JTRC_JFIF_THUMBNAIL ,
JTRC_MISC_MARKER ,
JTRC_PARMLESS_MARKER ,
JTRC_QUANTVALS ,
JTRC_QUANT_3_NCOLORS ,
JTRC_QUANT_NCOLORS ,
JTRC_QUANT_SELECTED ,
JTRC_RECOVERY_ACTION ,
JTRC_RST ,
JTRC_SMOOTH_NOTIMPL ,

JTRC_SOF ,
JTRC_SOF_COMPONENT ,
JTRC_SOI ,
JTRC_SOS ,
JTRC_SOS_COMPONENT ,
JTRC_SOS_PARAMS ,
JTRC_TFILE_CLOSE ,
JTRC_TFILE_OPEN ,
JTRC_THUMB_JPEG ,

JTRC_THUMB_PALETTE ,

JTRC_THUMB_RGB ,

JTRC_UNKNOWN_IDS ,

JTRC_XMS_CLOSE ,
JTRC_XMS_OPEN ,
JWRN_ADOBE_XFORM ,
JWRN_ARITH_BAD_CODE ,
JWRN_BOGUS_PROGRESSION ,

JWRN_EXTRANEOUS_DATA ,

JWRN_HIT_MARKER ,
JWRN_HUFF_BAD_CODE ,
JWRN_JFIF_MAJOR ,
JWRN_JPEG_EOF ,
JWRN_MUST_RESYNC ,

JWRN_NOT_SEQUENTIAL ,
JWRN_TOO_MUCH_DATA ,



  JMSG_LASTMSGCODE
} J_MESSAGE_CODE;
# 26 "./base/jerror_.h" 2
# 22 "./base/sdcte.c" 2
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
# 23 "./base/sdcte.c" 2
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
# 24 "./base/sdcte.c" 2
# 1 "./base/strimpl.h" 1
# 23 "./base/strimpl.h"
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
# 37 "./base/scommon.h"
typedef struct stream_s stream;
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
# 24 "./base/strimpl.h" 2

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
# 26 "./base/strimpl.h" 2
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
# 25 "./base/sdcte.c" 2
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
# 1 "./base/gscms.h" 1
# 24 "./base/gscms.h"
# 1 "./base/gscspace.h" 1
# 23 "./base/gscspace.h"
# 1 "./base/gsiparam.h" 1
# 22 "./base/gsiparam.h"
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
# 23 "./base/gsiparam.h" 2
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
# 138 "./base/gscspace.h"
typedef struct gs_state_s gs_state;



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
# 25 "./base/gscms.h" 2
# 1 "./base/gsdevice.h" 1
# 24 "./base/gsdevice.h"
typedef struct gx_device_s gx_device;




typedef struct gx_device_memory_s gx_device_memory;
# 39 "./base/gsdevice.h"
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





typedef struct gs_imager_state_s gs_imager_state;


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
# 25 "./base/sdct.h" 2
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
# 26 "./base/sdcte.c" 2
# 1 "./base/sjpeg.h" 1
# 36 "./base/sjpeg.h"
void gs_jpeg_error_setup(stream_DCT_state * st);
int gs_jpeg_log_error(stream_DCT_state * st);
JQUANT_TBL *gs_jpeg_alloc_quant_table(stream_DCT_state * st);
JHUFF_TBL *gs_jpeg_alloc_huff_table(stream_DCT_state * st);
int gs_jpeg_destroy(stream_DCT_state * st);



int gs_jpeg_create_compress(stream_DCT_state * st);
int gs_jpeg_set_defaults(stream_DCT_state * st);
int gs_jpeg_set_colorspace(stream_DCT_state * st,
                           J_COLOR_SPACE colorspace);
int gs_jpeg_set_linear_quality(stream_DCT_state * st,
                               int scale_factor, boolean force_baseline);
int gs_jpeg_set_quality(stream_DCT_state * st,
                        int quality, boolean force_baseline);
int gs_jpeg_start_compress(stream_DCT_state * st,
                           boolean write_all_tables);
int gs_jpeg_write_scanlines(stream_DCT_state * st,
                            JSAMPARRAY scanlines, int num_lines);
int gs_jpeg_finish_compress(stream_DCT_state * st);



int gs_jpeg_create_decompress(stream_DCT_state * st);
int gs_jpeg_read_header(stream_DCT_state * st,
                        boolean require_image);
int gs_jpeg_start_decompress(stream_DCT_state * st);
int gs_jpeg_read_scanlines(stream_DCT_state * st,
                           JSAMPARRAY scanlines, int max_lines);
int gs_jpeg_finish_decompress(stream_DCT_state * st);
# 27 "./base/sdcte.c" 2




static const gc_ptr_element_t jpeg_compress_data_enum_ptrs[] = { { GC_ELT_OBJ, ((int) ( (char *)&((jpeg_compress_data *)0)->dummy - (char *)((jpeg_compress_data *)0) )) } }; static const gc_struct_data_t jpeg_compress_data_reloc_ptrs = { (sizeof(jpeg_compress_data_enum_ptrs) / sizeof((jpeg_compress_data_enum_ptrs)[0])), 0, 0, jpeg_compress_data_enum_ptrs }; const gs_memory_struct_type_t st_jpeg_compress_data = { sizeof(jpeg_compress_data), "JPEG compress data", 0, 0, basic_enum_ptrs, basic_reloc_ptrs, 0, &jpeg_compress_data_reloc_ptrs };




static void
dcte_init_destination(j_compress_ptr cinfo)
{
}
static boolean
dcte_empty_output_buffer(j_compress_ptr cinfo)
{
    return FALSE;
}
static void
dcte_term_destination(j_compress_ptr cinfo)
{
}


static void
s_DCTE_set_defaults(stream_state * st)
{
    stream_DCT_state *const ss = (stream_DCT_state *) st;

    s_DCT_set_defaults(st);
    ss->QFactor = 1.0;
    ss->ColorTransform = -1;
    ss->Markers.data = 0;
    ss->Markers.size = 0;
    ss->NoMarker = ((bool)1);
}


static int
s_DCTE_init(stream_state * st)
{
    stream_DCT_state *const ss = (stream_DCT_state *) st;
    struct jpeg_destination_mgr *dest = &ss->data.compress->destination;

    dest->init_destination = dcte_init_destination;
    dest->empty_output_buffer = dcte_empty_output_buffer;
    dest->term_destination = dcte_term_destination;
    ss->data.common->memory = ss->jpeg_memory;
    ss->data.compress->cinfo.dest = dest;
    ss->phase = 0;
    ss->icc_marker = 0;
    ss->icc_position = -1;
    return 0;
}


static int
s_DCTE_process(stream_state * st, stream_cursor_read * pr,
               stream_cursor_write * pw, bool last)
{
    stream_DCT_state *const ss = (stream_DCT_state *) st;
    jpeg_compress_data *jcdp = ss->data.compress;
    struct jpeg_destination_mgr *dest = jcdp->cinfo.dest;

    do { } while (0);

    dest->next_output_byte = pw->ptr + 1;
    dest->free_in_buffer = pw->limit - pw->ptr;
    switch (ss->phase) {
        case 0:
            if (gs_jpeg_start_compress(ss, TRUE) < 0)
                return ((int)(-2));
            do { } while (0);




            pw->ptr = dest->next_output_byte - 1;
            ss->phase = 1;

        case 1:
            if (pw->limit - pw->ptr < ss->Markers.size)
                return 1;
            memcpy(pw->ptr + 1, ss->Markers.data, ss->Markers.size);
            pw->ptr += ss->Markers.size;
            ss->phase = 2;

        case 2:
            if (!ss->NoMarker) {
                static const byte Adobe[] =
                {
                    0xFF, 0xE0 + 14, 0, 14,
                    'A', 'd', 'o', 'b', 'e',
                    0, 100,
                    0, 0,
                    0, 0,
                    0
                };


                if (pw->limit - pw->ptr < sizeof(Adobe))
                    return 1;
                memcpy(pw->ptr + 1, Adobe, sizeof(Adobe));
                pw->ptr += sizeof(Adobe);
                *pw->ptr = ss->ColorTransform;

            }
            dest->next_output_byte = pw->ptr + 1;
            dest->free_in_buffer = pw->limit - pw->ptr;
            ss->phase = 3;

        case 3:



         if (ss->icc_profile != ((void*)0)) {
          static const char marker[2] = {0xFF, 0xE2};
                byte num_mark;


                num_mark = ss->icc_profile->buffer_size / (65535 - 16);
                if (num_mark * (65535 - 16) < ss->icc_profile->buffer_size) {
                    num_mark++;
                }
          while (ss->icc_marker < num_mark) {
              ulong offset = ss->icc_marker * (65535 - 16);
              ulong size;

                    size = ss->icc_profile->buffer_size - offset;
                    if (size > (65535 - 16))
                      size = (65535 - 16);



              if (ss->icc_position == -1) {
               byte length_byte[2];
               byte curr_mark = ss->icc_marker + 1;
               ulong total_length;

               if ((uint) (pw->limit - pw->ptr) < (sizeof(marker) + 16))
                      return 1;
               total_length = size + 16;
               memcpy(pw->ptr + 1, marker, sizeof(marker));
               length_byte[0] = total_length >> 8;
               length_byte[1] = total_length & 0xFF;
               memcpy(pw->ptr + 3, length_byte, sizeof(length_byte));
               memcpy(pw->ptr + 5, "ICC_PROFILE", 12);
               memcpy(pw->ptr + 17, &curr_mark, 1);
               memcpy(pw->ptr + 18, &num_mark, 1);
               pw->ptr += sizeof(marker) + 16;
               ss->icc_position = 0;
              }

              while (ss->icc_position < size) {
               ulong avail_bytes, num_bytes;

               avail_bytes = (ulong) (pw->limit - pw->ptr);
               if (avail_bytes == 0)
                   return 1;
               num_bytes = (size - ss->icc_position);
               if (num_bytes > avail_bytes)
                   num_bytes = avail_bytes;
               memcpy(pw->ptr + 1, ss->icc_profile->buffer + offset + ss->icc_position, num_bytes);
               ss->icc_position += num_bytes;
               pw->ptr += num_bytes;
              }

              ++ss->icc_marker;
              ss->icc_position = -1;
          }
             dest->next_output_byte = pw->ptr + 1;
             dest->free_in_buffer = pw->limit - pw->ptr;
         }
         ss->phase = 4;

        case 4:
            while (jcdp->cinfo.image_height > jcdp->cinfo.next_scanline) {
                int written;
# 214 "./base/sdcte.c"
                           byte *samples = (byte *) (pr->ptr + 1);

                do { } while (0);

                if ((uint) (pr->limit - pr->ptr) < ss->scan_line_size) {
                    if (last)
                        return ((int)(-2));
                    return 0;
                }
                written = gs_jpeg_write_scanlines(ss, &samples, 1);
                if (written < 0)
                    return ((int)(-2));
                do { } while (0);



                pw->ptr = dest->next_output_byte - 1;
                if (!written)
                    return 1;
                pr->ptr += ss->scan_line_size;
            }
            ss->phase = 5;

        case 5:



            dest->next_output_byte = jcdp->finish_compress_buf;
            dest->free_in_buffer = sizeof(jcdp->finish_compress_buf);
            if (gs_jpeg_finish_compress(ss) < 0)
                return ((int)(-2));
            jcdp->fcb_size =
                dest->next_output_byte - jcdp->finish_compress_buf;
            jcdp->fcb_pos = 0;
            ss->phase = 6;

        case 6:
            if (jcdp->fcb_pos < jcdp->fcb_size) {
                int count = (((jcdp->fcb_size - jcdp->fcb_pos) < (pw->limit - pw->ptr)) ? (jcdp->fcb_size - jcdp->fcb_pos) : (pw->limit - pw->ptr));


                do { } while (0);
                memcpy(pw->ptr + 1, jcdp->finish_compress_buf + jcdp->fcb_pos,
                       count);
                jcdp->fcb_pos += count;
                pw->ptr += count;
                if (jcdp->fcb_pos < jcdp->fcb_size)
                    return 1;
            }
            return ((int)(-1));
    }

    return ((int)(-2));
}


const stream_template s_DCTE_template =
{&st_DCT_state, s_DCTE_init, s_DCTE_process, 1000, 4000, ((void*)0),
 s_DCTE_set_defaults
};
