# 1 "./contrib/japanese/gdevmjc.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./contrib/japanese/gdevmjc.c" 2
# 49 "./contrib/japanese/gdevmjc.c"
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
# 50 "./contrib/japanese/gdevmjc.c" 2
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
# 51 "./contrib/japanese/gdevmjc.c" 2
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
# 52 "./contrib/japanese/gdevmjc.c" 2
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
# 1301 "/usr/include/bits/string2.h" 3 4
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
# 46 "./base/gp.h" 2
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
# 53 "./contrib/japanese/gdevmjc.c" 2
# 1 "./devices/gdevpcl.h" 1
# 51 "./devices/gdevpcl.h"
int gdev_pcl_paper_size(gx_device *);





int gdev_pcl_page_orientation(gx_device * dev);


gx_color_index gdev_pcl_3bit_map_rgb_color(gx_device *dev, const gx_color_value cv[]);
int gdev_pcl_3bit_map_color_rgb(gx_device *dev, gx_color_index color, gx_color_value rgb[3]);


typedef ulong word;
int
    gdev_pcl_mode2compress(const word * row, const word * end_row, byte * compressed),
    gdev_pcl_mode2compress_padded(const word * row, const word * end_row, byte * compressed, bool pad),
    gdev_pcl_mode3compress(int bytecount, const byte * current, byte * previous, byte * compressed),
    gdev_pcl_mode9compress(int bytecount, const byte * current, const byte * previous, byte * compressed);
# 54 "./contrib/japanese/gdevmjc.c" 2
# 1 "./contrib/japanese/gdevmjc.h" 1
unsigned short matrix2[] = {
        0x0C3E,0x31BE,0x249A,0x0B88,0x2898,0x162F,0x2AEE,0x12D4,
        0x20F1,0x3E08,0x0E3C,0x244A,0x3C5C,0x102A,0x36AE,0x0DB5,
        0x27D2,0x3774,0x01D0,0x3A3B,0x18C7,0x356C,0x0E6C,0x2938,
        0x1AB3,0x3B3E,0x04D9,0x2BF8,0x1C80,0x087C,0x2F7E,0x043B,
        0x295E,0x097F,0x30AE,0x1722,0x38C5,0x1F2A,0x0491,0x2B7B,
        0x169B,0x2887,0x1413,0x325B,0x03CD,0x2CF4,0x119A,0x2471,
        0x19A8,0x2735,0x14AA,0x3D50,0x20F5,0x0141,0x22B3,0x2FA0,
        0x0656,0x23CF,0x1BE4,0x3010,0x0712,0x1D9F,0x375C,0x1205,
        0x3080,0x06B0,0x2922,0x0307,0x2CC4,0x0823,0x3E98,0x2587,
        0x0CA3,0x2954,0x038C,0x3073,0x2549,0x0DE1,0x3124,0x0445,
        0x2C5E,0x07B5,0x2A4E,0x0A5E,0x35B0,0x0332,0x2382,0x3192,
        0x04A9,0x2C00,0x171D,0x2F1A,0x0DDC,0x2927,0x03A5,0x261E,
        0x083F,0x3B04,0x1DFE,0x044C,0x2B6C,0x09BA,0x1735,0x3D78,
        0x1D30,0x08BD,0x37CD,0x20D0,0x0682,0x22CF,0x2FCC,0x1155,
        0x326E,0x1845,0x2364,0x2C10,0x19E2,0x088A,0x3B49,0x1873,
        0x3482,0x0FF4,0x27F5,0x0CD4,0x2E0A,0x1382,0x22D3,0x2B6E,
        0x3BFF,0x016F,0x1992,0x3F5F,0x05CB,0x38EF,0x0CFB,0x356B,
        0x275C,0x0403,0x2DAF,0x1D82,0x010F,0x2645,0x1A9D,0x2EF8,
        0x05D7,0x1C57,0x30C4,0x0BA3,0x2E75,0x0429,0x1DF0,0x3D8E,
        0x0960,0x2096,0x3321,0x0EF7,0x3AAE,0x2316,0x1939,0x37FD,
        0x1469,0x3B05,0x1034,0x2CAE,0x0842,0x2EB8,0x22EC,0x0C54,
        0x3443,0x0143,0x2F86,0x1859,0x39D5,0x15D1,0x3584,0x0019,
        0x3C08,0x09C2,0x2B6F,0x073C,0x2F02,0x1B5B,0x3A29,0x1058,
        0x1F25,0x3CEB,0x03E2,0x24FA,0x18A2,0x31A8,0x0922,0x2611,
        0x1A5B,0x3F46,0x11A2,0x3515,0x1543,0x3105,0x0F0C,0x1FAF,
        0x2D16,0x17D3,0x3D90,0x1F42,0x0699,0x3BFD,0x1355,0x37A8,
        0x10CD,0x3FA7,0x12A9,0x27DA,0x160A,0x2DBE,0x1AE2,0x10A4,
        0x3E93,0x1DD2,0x0A31,0x21BC,0x3BFB,0x155A,0x35CD,0x13C5,
        0x32B2,0x22D7,0x105B,0x33BE,0x1AA7,0x221E,0x3243,0x0377,
        0x2F55,0x1FFF,0x0EB8,0x32F2,0x1B3E,0x3A3C,0x03AB,0x28B3,
        0x0829,0x3F37,0x029E,0x154A,0x3D3D,0x2269,0x14C2,0x2EE5,
        0x0798,0x2A1B,0x02FD,0x3251,0x1B18,0x3DEC,0x0467,0x1CB9,
        0x104F,0x220F,0x2C3C,0x1118,0x2DD5,0x1ADD,0x2407,0x06E0,
        0x1928,0x37FC,0x13AB,0x34E2,0x1772,0x3ABA,0x08A2,0x22D6,
        0x3D59,0x10FF,0x25AF,0x1ED2,0x0F89,0x394D,0x23CC,0x14F4,
        0x2D0A,0x1286,0x24D3,0x1E4A,0x00A5,0x3409,0x0C91,0x208F,
        0x26C4,0x01A7,0x23A8,0x198B,0x35B5,0x0F08,0x3C7E,0x1929,
        0x21C5,0x3B6A,0x0D90,0x2594,0x07F0,0x29F6,0x0BF1,0x28A2,
        0x13FA,0x30B3,0x1890,0x389C,0x10DB,0x291C,0x0B24,0x259C,
        0x31ED,0x0EE0,0x2AC5,0x0C6C,0x3C50,0x157E,0x20B0,0x3B87,
        0x04B0,0x1FFC,0x24C1,0x09CD,0x27A8,0x18F8,0x35AD,0x015E,
        0x39AB,0x08C8,0x2300,0x1515,0x3478,0x1C1E,0x2378,0x094E,
        0x25F0,0x1D94,0x33B2,0x0590,0x3D54,0x0D15,0x3840,0x268E,
        0x0882,0x2819,0x36C8,0x1C99,0x0674,0x2E0F,0x09A0,0x2A2F,
        0x1C23,0x0126,0x37F3,0x2014,0x0640,0x3AB3,0x112E,0x2A22,
        0x14B0,0x3C39,0x2744,0x00D1,0x2BDF,0x1465,0x31C8,0x1330,
        0x2DEA,0x1AF8,0x2179,0x2E74,0x0C89,0x2ADF,0x0127,0x1D92,
        0x382E,0x162D,0x3CED,0x2143,0x08D9,0x2745,0x180B,0x3045,
        0x1F0F,0x3956,0x0857,0x369A,0x207B,0x0256,0x3C98,0x1D3B,
        0x2CC1,0x1057,0x28E2,0x0B17,0x2C13,0x155E,0x3148,0x0E65,
        0x203F,0x336D,0x0721,0x3F48,0x2A60,0x19D6,0x0853,0x35A3,
        0x0335,0x3891,0x0753,0x3F18,0x27C0,0x12E6,0x2CD6,0x06BD,
        0x32E4,0x1B13,0x3F98,0x0594,0x2569,0x1E35,0x0265,0x321C,
        0x08AF,0x1B82,0x2CAF,0x1304,0x32F8,0x1DED,0x3D27,0x0FFC,
        0x34F8,0x1D1A,0x0300,0x21D3,0x32D2,0x04F2,0x3E36,0x1A8F,
        0x023B,0x3811,0x1406,0x3350,0x1D51,0x0157,0x2EFF,0x103E,
        0x33C9,0x0E9A,0x3728,0x1B00,0x3B2E,0x0523,0x1CD1,0x2A38,
        0x11C7,0x1E8F,0x36FE,0x0D0A,0x2762,0x0105,0x2F49,0x1A9A,
        0x3244,0x01C8,0x18BA,0x2E6E,0x1DFB,0x24F9,0x0116,0x1861,
        0x3520,0x15FA,0x02D0,0x2CCE,0x178F,0x22CB,0x38C1,0x0ED0,
        0x3DC7,0x18D5,0x29E2,0x0B5E,0x2E3D,0x16A7,0x2652,0x0C06,
        0x317D,0x072F,0x1988,0x355F,0x0C2C,0x248C,0x08F1,0x3834,
        0x1FB3,0x0D5B,0x340E,0x064F,0x36BE,0x113B,0x3A1D,0x256B,
        0x0DF3,0x2C2B,0x0C0F,0x196C,0x33AB,0x11DA,0x37BC,0x066B,
        0x326C,0x0F18,0x1DBD,0x2513,0x14C6,0x3023,0x0F72,0x3425,
        0x0907,0x3FC1,0x030D,0x3670,0x2217,0x04DD,0x1CB2,0x3836,
        0x026C,0x184D,0x2DA6,0x165B,0x004B,0x2616,0x305D,0x11D1,
        0x289B,0x17E4,0x2E62,0x1685,0x0A47,0x370B,0x1855,0x3D62,
        0x10E5,0x2E22,0x0E19,0x2BD3,0x1182,0x3A07,0x28F0,0x104D,
        0x2048,0x35F4,0x04E2,0x3FC7,0x1A0A,0x0299,0x2183,0x2E4B,
        0x05D9,0x25EC,0x3F5E,0x0D2F,0x1D95,0x2A52,0x13A4,0x2DCC,
        0x217B,0x1818,0x2C96,0x05A4,0x26C5,0x392A,0x0B6F,0x2B16,
        0x1850,0x2E72,0x00A2,0x2C36,0x1320,0x230C,0x3CB8,0x0D59,
        0x340F,0x2512,0x0330,0x2D9C,0x185D,0x3B23,0x1204,0x38A8,
        0x0EA0,0x2111,0x39EB,0x14D2,0x08DB,0x3AB7,0x1C61,0x30DB,
        0x0E0B,0x2457,0x3952,0x1009,0x3E4B,0x01B0,0x1EDD,0x30A0,
        0x0562,0x2788,0x0F85,0x3CB0,0x1447,0x357D,0x019B,0x3F72,
        0x1003,0x246B,0x3931,0x1196,0x1EA8,0x3EA2,0x18CA,0x2620,
        0x018E,0x3A95,0x1703,0x269A,0x1BAF,0x31F0,0x0933,0x19AA,
        0x30CD,0x0555,0x24A5,0x39B5,0x00E3,0x29A0,0x0D84,0x247E,
        0x02E4,0x2805,0x3D48,0x047B,0x3359,0x0A70,0x2A68,0x1797,
        0x2568,0x1414,0x2E1C,0x1C39,0x0D69,0x3DE2,0x2834,0x116C,
        0x2978,0x3C1C,0x0968,0x21E9,0x3227,0x13BE,0x1FEA,0x3E14,
        0x0BEB,0x349B,0x0D6C,0x20E3,0x30FE,0x1C05,0x02D8,0x245E,
        0x1F4C,0x080E,0x386D,0x1EBA,0x313B,0x09E4,0x16F9,0x3E62,
        0x26B7,0x0B8A,0x2A64,0x0F94,0x2750,0x3717,0x0B06,0x17E7,
        0x3AA6,0x1247,0x2360,0x19CE,0x37B1,0x0C3B,0x3607,0x07B7,
        0x39F6,0x0976,0x1E03,0x3FD4,0x0DA2,0x1964,0x34FA,0x22EF,
        0x07FB,0x1D79,0x395D,0x2158,0x0954,0x3208,0x15CB,0x2EE6,
        0x06FB,0x19A7,0x3FD4,0x13A6,0x3331,0x0BAD,0x2A9B,0x0476,
        0x26D3,0x347E,0x0C34,0x2331,0x2BAE,0x0FF8,0x2D57,0x06A6,
        0x3D10,0x1E54,0x0B85,0x3219,0x1A77,0x2994,0x0C3F,0x23DD,
        0x158B,0x36F8,0x20A9,0x03FB,0x2BE2,0x0EF6,0x2893,0x17B0,
        0x2CBF,0x1DAE,0x031B,0x21E6,0x2E89,0x049B,0x324A,0x1101,
        0x3032,0x22B0,0x098B,0x3DD1,0x03EF,0x23C9,0x1E0B,0x3F5A,
        0x11D3,0x3522,0x0E61,0x1C04,0x2F7A,0x15A6,0x3EA8,0x1AB0,
        0x3A8B,0x1875,0x0C74,0x2BF0,0x130B,0x3B22,0x1C73,0x0130,
        0x38C0,0x1F32,0x0698,0x3B50,0x1903,0x239D,0x0A5F,0x34A2,
        0x2110,0x0F04,0x1DD7,0x380C,0x0C9A,0x3B76,0x052A,0x1AC4,
        0x2B8B,0x01E1,0x2442,0x3BC4,0x0545,0x268A,0x39AD,0x0DC6,
        0x362A,0x2760,0x1521,0x0042,0x1A4D,0x367C,0x2218,0x038B,
        0x1498,0x394F,0x1D77,0x31FB,0x0718,0x2348,0x1CDD,0x2AD3,
        0x0E17,0x2ED7,0x0844,0x2CD2,0x0103,0x2691,0x173E,0x2837,
        0x12CE,0x3143,0x24A6,0x11A0,0x2DAC,0x2195,0x0439,0x1468,
        0x3E12,0x29C5,0x0E00,0x1696,0x3ED9,0x1C46,0x0297,0x2200,
        0x385D,0x285D,0x09E5,0x298C,0x05E4,0x24C6,0x16E3,0x3EB8,
        0x1CA2,0x0719,0x1FFB,0x3DA7,0x03BE,0x3625,0x16D4,0x2097,
        0x28AA,0x04C2,0x2B63,0x1F84,0x0735,0x3784,0x140E,0x3C3D,
        0x1DCC,0x08E7,0x31F5,0x1885,0x21E5,0x38DE,0x0A64,0x34BF,
        0x05BA,0x3B71,0x1A7B,0x3432,0x0F4D,0x2A95,0x0B0C,0x3C62,
        0x1D48,0x0E79,0x2C8C,0x129F,0x2A7C,0x1404,0x2D42,0x0225,
        0x29CE,0x16B7,0x3C61,0x21B8,0x0A37,0x348F,0x076C,0x2B43,
        0x099B,0x2247,0x352B,0x1647,0x2669,0x0605,0x2E7C,0x225E,
        0x0E82,0x3264,0x2709,0x10EC,0x2F20,0x009D,0x2D32,0x1A21,
        0x0666,0x3638,0x26B6,0x0461,0x29DD,0x0F63,0x2766,0x360E,
        0x103F,0x3913,0x1D47,0x0F0D,0x2D70,0x1138,0x1E34,0x29C0,
        0x04A2,0x1803,0x3CD5,0x200D,0x2B19,0x0789,0x2D82,0x1CA3,
        0x3056,0x22A3,0x00BF,0x1839,0x386E,0x10EB,0x3DEA,0x019F,
        0x3540,0x1E70,0x397E,0x1695,0x3CA0,0x115A,0x3418,0x0419,
        0x3C09,0x1BFB,0x0071,0x36C9,0x078E,0x3B0B,0x1CE0,0x3252,
        0x1777,0x0355,0x27E0,0x3090,0x0636,0x2452,0x2CEF,0x0C11,
        0x1450,0x1E26,0x35CF,0x1121,0x3C3E,0x1488,0x317E,0x0F69,
        0x2C58,0x181A,0x3044,0x10A7,0x1D41,0x2770,0x0AE5,0x333F,
        0x11BE,0x3A75,0x10E2,0x2F4A,0x169C,0x224E,0x3164,0x032F,
        0x2EC7,0x2317,0x1360,0x3ED8,0x078C,0x1B19,0x2F00,0x15C5,
        0x270A,0x10F9,0x2915,0x07AC,0x3D66,0x1724,0x2767,0x2083,
        0x055E,0x385A,0x1A32,0x35EC,0x0800,0x3A88,0x0DAA,0x3741,
        0x0B75,0x27AE,0x0422,0x2D94,0x1341,0x25AE,0x1F93,0x143A,
        0x1C91,0x2FC8,0x0066,0x3EE5,0x0F4E,0x36E3,0x1511,0x3E1E,
        0x1DB3,0x0AA4,0x2101,0x35AA,0x0C70,0x3982,0x11E8,0x3F12,
        0x1D27,0x2333,0x1301,0x2F92,0x1790,0x33B0,0x20D2,0x082E,
        0x1E6A,0x25DE,0x06DB,0x3289,0x1764,0x3F6B,0x089F,0x32AA,
        0x1C6F,0x2FC9,0x0B2A,0x336F,0x1089,0x3B85,0x0CF8,0x378E,
        0x06C1,0x167F,0x3BD4,0x2555,0x0C8E,0x2C69,0x15F2,0x3154,
        0x1A80,0x053A,0x26F4,0x0A46,0x212F,0x2E16,0x0E4E,0x29B0,
        0x1039,0x2384,0x2F74,0x1502,0x28C3,0x1271,0x2AAE,0x0BF6,
        0x254E,0x3893,0x0AB6,0x1BA9,0x364B,0x0F80,0x3A79,0x1FC5,
        0x3DC6,0x0047,0x2169,0x2E4D,0x0D76,0x2B7C,0x026B,0x369C,
        0x09BF,0x3BD0,0x008F,0x2271,0x3861,0x0EE9,0x3F2E,0x0240,
        0x2596,0x19D7,0x33EA,0x0053,0x3FC0,0x0952,0x1B2A,0x2B32,
        0x0CF7,0x3A8C,0x00B2,0x1C72,0x2D75,0x2346,0x02C3,0x3DB6,
        0x0D0B,0x36BB,0x1539,0x3003,0x1C97,0x0205,0x3524,0x1085,
        0x2F3A,0x236F,0x008E,0x2017,0x30F3,0x1909,0x2429,0x1C27,
        0x3087,0x0FD8,0x332A,0x1E64,0x3B7C,0x01F5,0x3829,0x294A,
        0x342B,0x0D5C,0x2A12,0x1E98,0x3150,0x09F7,0x27B3,0x043F,
        0x2921,0x3A4A,0x0283,0x1D0B,0x2A88,0x1607,0x27A9,0x0B4D,
        0x30D6,0x0202,0x38EB,0x0A98,0x3FD4,0x0134,0x15AC,0x3AE0,
        0x2A35,0x13EB,0x3CF3,0x21BE,0x00E7,0x2847,0x1F87,0x0E5B,
        0x3B2D,0x13B1,0x2832,0x040A,0x24F1,0x18A1,0x29B6,0x123A,
        0x27B2,0x341B,0x0901,0x1BD3,0x3024,0x046B,0x2889,0x0D50,
        0x2401,0x375F,0x1294,0x32AB,0x1B75,0x0614,0x3F16,0x17BB,
        0x35AE,0x0AFD,0x19AF,0x3D9D,0x0CF9,0x3535,0x01EA,0x3D22,
        0x207E,0x10F3,0x337E,0x2387,0x136E,0x2A15,0x0450,0x16CF,
        0x25DD,0x30EA,0x1925,0x04E1,0x377D,0x1DBB,0x260F,0x1A00,
        0x2054,0x272C,0x14E9,0x3229,0x0601,0x2EE9,0x2172,0x1B68,
        0x301A,0x0805,0x2481,0x1ECC,0x0F15,0x3459,0x2687,0x1128,
        0x32D3,0x1659,0x2968,0x35EE,0x0D86,0x3986,0x13E3,0x2132,
        0x2D9A,0x0021,0x2B40,0x09F0,0x3384,0x229B,0x0BB7,0x3B25,
        0x1E72,0x14F3,0x3EF1,0x0F2C,0x26E1,0x034B,0x3CC3,0x070A,
        0x2161,0x3E76,0x15EF,0x0938,0x1AE0,0x2BE4,0x16DC,0x0592,
        0x11F3,0x39B6,0x17D8,0x080C,0x1A90,0x2C7A,0x12AE,0x33CD,
        0x0F9D,0x2381,0x1807,0x3D08,0x07A3,0x33A2,0x03BB,0x3736,
        0x16C1,0x28BB,0x193C,0x2BC9,0x1166,0x2257,0x3292,0x198C,
        0x0373,0x3033,0x0B57,0x1BC7,0x3600,0x120B,0x381D,0x23D9,
        0x01F7,0x2C73,0x0FA3,0x3EF4,0x14FB,0x34B3,0x01C0,0x3D88,
        0x1FA5,0x0F4F,0x20DC,0x3F13,0x11F6,0x363D,0x1408,0x3B44,
        0x0752,0x1D91,0x2A16,0x0250,0x3A7B,0x252F,0x13FC,0x2BC5,
        0x02F7,0x25C6,0x3275,0x04CB,0x235A,0x1C3B,0x2FCF,0x1893,
        0x072B,0x2C4C,0x1A31,0x0131,0x3BD6,0x0C64,0x3332,0x229A,
        0x0957,0x126F,0x342A,0x27D1,0x153D,0x0AAE,0x3E26,0x055A,
        0x3470,0x0B79,0x3990,0x1E32,0x2B4F,0x177B,0x0C9B,0x3BA8,
        0x1387,0x3671,0x0C29,0x3B29,0x2818,0x198F,0x0435,0x3D71,
        0x236C,0x0638,0x1FE4,0x09DA,0x2631,0x19AC,0x3100,0x084A,
        0x1E9B,0x3AC4,0x1948,0x2592,0x0F99,0x393E,0x19DE,0x27FE,
        0x06E8,0x34AA,0x09CB,0x2EF4,0x121C,0x3378,0x1520,0x2E6B,
        0x1856,0x0010,0x2A58,0x22CC,0x3552,0x0B58,0x3FD4,0x20F3,
        0x2482,0x03A4,0x2BA1,0x1FB2,0x3BBA,0x01D6,0x384F,0x1A08,
        0x3074,0x0C13,0x2D03,0x12E7,0x287E,0x19CA,0x24A4,0x1417,
        0x2C81,0x0CB0,0x3D4D,0x05C5,0x1E25,0x2E51,0x0996,0x241F,
        0x34D1,0x110C,0x2704,0x2ED3,0x0A6F,0x2BD7,0x0714,0x18FB,
        0x34FE,0x1FCC,0x3188,0x0668,0x291D,0x0C19,0x2EB0,0x1C2B,
        0x0553,0x3231,0x2622,0x02CE,0x29C9,0x0A88,0x1F6E,0x2DBB,
        0x188D,0x3EB4,0x101E,0x2F21,0x1FDF,0x08D7,0x3650,0x0C95,
        0x38E3,0x1EB3,0x0F34,0x292D,0x3A4C,0x0904,0x159C,0x2759,
        0x398A,0x0E41,0x3F6D,0x25F4,0x152A,0x2E97,0x1176,0x3809,
        0x1CC5,0x39F5,0x0811,0x1B64,0x3AAB,0x21CE,0x1742,0x2D3C,
        0x119E,0x29B9,0x1AF3,0x07A1,0x135D,0x37BD,0x2650,0x0503,
        0x298E,0x0FA4,0x2D02,0x1734,0x0688,0x3832,0x219D,0x0B9E,
        0x18C0,0x3892,0x2A9F,0x16F0,0x3C6B,0x04B7,0x22EA,0x37DA,
        0x0E18,0x243D,0x0662,0x3FB6,0x1E4E,0x0501,0x2E2D,0x0ECF,
        0x31A1,0x139B,0x25CA,0x1B8F,0x39CB,0x0880,0x2AE2,0x0A96,
        0x36F7,0x1CF5,0x3947,0x0693,0x17BD,0x28BF,0x10CA,0x3050,
        0x1B3C,0x3CEF,0x1086,0x34BE,0x0E5E,0x2613,0x2137,0x06FD,
        0x1FF1,0x390E,0x056B,0x3579,0x0EBC,0x3E61,0x0D4C,0x3A26,
        0x051D,0x335F,0x0FEC,0x251F,0x3706,0x150B,0x3C85,0x1332,
        0x1FAA,0x3E60,0x058E,0x179A,0x3BF0,0x138A,0x2649,0x3D7D,
        0x1551,0x091E,0x1B62,0x3730,0x1776,0x3A54,0x12F7,0x2423,
        0x3813,0x0D8B,0x18CD,0x33B8,0x1599,0x39C2,0x23B3,0x005B,
        0x2904,0x0B7D,0x342E,0x197A,0x0DD4,0x3093,0x227D,0x1A06,
        0x29CF,0x0816,0x3E78,0x1CC7,0x10BE,0x2104,0x3665,0x03A0,
        0x1F31,0x3220,0x05EB,0x1DCF,0x36BA,0x07C7,0x281C,0x0237,
        0x2D61,0x1609,0x2118,0x2BEA,0x0147,0x2F35,0x08E4,0x2302,
        0x381F,0x02AD,0x3F8D,0x23F8,0x3146,0x016A,0x1FAE,0x34BD,
        0x18EB,0x3DF1,0x0314,0x213D,0x2E5F,0x1084,0x2C20,0x1CA6,
        0x31A4,0x12E3,0x0269,0x3021,0x0E69,0x3421,0x0BE6,0x1D01,
        0x2C59,0x1620,0x2FB2,0x11D5,0x3242,0x21A6,0x178B,0x3DF5,
        0x0290,0x20F4,0x3BBC,0x046A,0x1FE3,0x2508,0x1A5E,0x321F,
        0x0EE3,0x28EC,0x1308,0x252B,0x3B1F,0x0318,0x366C,0x08D8,
        0x3308,0x152D,0x2F43,0x05E0,0x1D9A,0x3296,0x157A,0x3F8E,
        0x11BC,0x257D,0x1BDD,0x21CB,0x2E35,0x018C,0x2962,0x1AFC,
        0x268D,0x164E,0x2FD6,0x200E,0x07C8,0x2951,0x02CF,0x2BFD,
        0x0875,0x1A11,0x3217,0x221C,0x027B,0x314B,0x1AF7,0x0428,
        0x2F09,0x1EB7,0x2B61,0x0DA9,0x266C,0x0354,0x2CB7,0x09F9,
        0x1A4E,0x2AAA,0x3B1B,0x098D,0x2F8C,0x069A,0x1AD5,0x3CDE,
        0x1314,0x2BF5,0x03CC,0x244C,0x3D79,0x15EC,0x00CC,0x3BB9,
        0x138D,0x2167,0x2C93,0x018B,0x3786,0x2868,0x0E9E,0x30E8,
        0x1074,0x246D,0x190A,0x2DC2,0x0EED,0x2B21,0x12ED,0x3C94,
        0x2211,0x057A,0x3F08,0x0DD0,0x34E1,0x1233,0x3CDB,0x1BD9,
        0x0EA6,0x31D5,0x17EA,0x0ABB,0x1ED8,0x3AD1,0x14A5,0x2BB8,
        0x09B4,0x23DC,0x1BC9,0x39FF,0x1467,0x3510,0x0135,0x3BB5,
        0x08B7,0x2776,0x3FA6,0x21C7,0x1B98,0x290D,0x14B5,0x3E89,
        0x0341,0x3580,0x0AB1,0x2A23,0x016B,0x37BB,0x092B,0x2646,
        0x1ADC,0x2D77,0x105F,0x2A8D,0x0D55,0x311A,0x01B4,0x21C6,
        0x3E0D,0x04ED,0x34D9,0x0A5A,0x1FB8,0x2E4E,0x13B7,0x205E,
        0x00C6,0x295D,0x0BA9,0x24C9,0x3DA6,0x03E1,0x298D,0x0AC2,
        0x2F96,0x002F,0x3C8B,0x0A26,0x1926,0x37D5,0x1366,0x34F5,
        0x0BB6,0x3C27,0x00AE,0x1AAB,0x3B20,0x0E56,0x3543,0x1068,
        0x39FE,0x2528,0x0F26,0x380A,0x1E65,0x0FE1,0x3958,0x2123,
        0x0D20,0x33F1,0x0082,0x3C53,0x11D8,0x358A,0x15C7,0x3FD4,
        0x220B,0x0113,0x201A,0x1393,0x24E1,0x1DB2,0x312D,0x0F75,
        0x3549,0x16DE,0x38B3,0x1DE8,0x078F,0x331A,0x203E,0x2AFB,
        0x056C,0x34B6,0x15B4,0x2664,0x1E2B,0x0697,0x3CCC,0x1ACB,
        0x2A43,0x0A16,0x3820,0x02CA,0x3E3A,0x1D23,0x3147,0x0B59,
        0x1BE2,0x2FF4,0x13AF,0x26C7,0x1840,0x299B,0x04AB,0x2DF6,
        0x210C,0x0854,0x228F,0x2FD1,0x1072,0x27F3,0x08BE,0x1D31,
        0x38CF,0x11FB,0x32D8,0x0778,0x29AC,0x0C3A,0x26EE,0x0FBC,
        0x2F24,0x1E59,0x1529,0x0973,0x3A2F,0x00FA,0x31F1,0x1A2C,
        0x2558,0x129C,0x3CC2,0x18A4,0x277F,0x1310,0x304C,0x1584,
        0x3909,0x0B2E,0x3577,0x17CD,0x3FD4,0x1640,0x37E4,0x0C01,
        0x1E58,0x2EC1,0x1144,0x2C32,0x19C9,0x0CFA,0x3DE6,0x2667,
        0x3914,0x0EC1,0x3733,0x20D5,0x0F47,0x2EC9,0x1322,0x3538,
        0x1884,0x2B04,0x14CA,0x3235,0x2127,0x0944,0x2B54,0x0626,
        0x2D49,0x1278,0x2290,0x3240,0x13B0,0x279E,0x1707,0x2DC5,
        0x205F,0x0010,0x2B53,0x0C17,0x2F79,0x2597,0x09BD,0x288E,
        0x3EAD,0x12A3,0x245D,0x1D03,0x2DC4,0x0ABE,0x28BC,0x076B,
        0x2F05,0x1709,0x2913,0x3DC5,0x03FE,0x38FD,0x0B0A,0x27CC,
        0x053C,0x2608,0x0CEB,0x2E3A,0x1B23,0x280E,0x0A1B,0x170C,
        0x399B,0x1BCC,0x08D4,0x33A8,0x0CEA,0x2D5B,0x1F74,0x0012,
        0x3B62,0x1451,0x2794,0x16F3,0x23C1,0x063C,0x1756,0x35B1,
        0x2560,0x0A1A,0x32EF,0x032D,0x3731,0x0CA4,0x39B2,0x14C3,
        0x35CE,0x1C37,0x3C54,0x040B,0x363E,0x1660,0x3ED4,0x2547,
        0x00C5,0x28FF,0x0DB7,0x2FC7,0x1D05,0x3F35,0x1345,0x372A,
        0x228D,0x03CB,0x3475,0x2390,0x1889,0x2084,0x269D,0x07F3,
        0x3367,0x1F26,0x05ED,0x2C21,0x0CF2,0x3BDD,0x1D8D,0x05C1,
        0x2897,0x1F02,0x00E6,0x2CED,0x069E,0x2864,0x133E,0x2B76,
        0x14EC,0x2310,0x3BF9,0x0183,0x3796,0x2230,0x0715,0x1917,
        0x1239,0x2ADA,0x1D22,0x07F6,0x3A0D,0x1B90,0x23FE,0x0772,
        0x3B86,0x0BF5,0x27D4,0x0468,0x3AF5,0x1C06,0x2216,0x3ECE,
        0x0E68,0x1E97,0x3885,0x0AED,0x2B05,0x04E6,0x3EEB,0x092E,
        0x1B6F,0x3679,0x1644,0x3FB7,0x05F6,0x1981,0x31D2,0x169F,
        0x076E,0x20B4,0x38D6,0x0595,0x1825,0x328D,0x1D55,0x3888,
        0x10B4,0x369D,0x0C73,0x1B0E,0x2D36,0x1518,0x2B3E,0x194B,
        0x3293,0x1581,0x3C67,0x0206,0x3588,0x12C4,0x3F49,0x22F0,
        0x0DCD,0x3017,0x20E0,0x118C,0x3FB4,0x1367,0x356A,0x17B7,
        0x2224,0x31AC,0x0886,0x2F60,0x0D36,0x3A1E,0x28F5,0x00A7,
        0x19BE,0x3B0C,0x15C2,0x2906,0x1B0A,0x2488,0x0FA9,0x288B,
        0x0026,0x2A2B,0x0E20,0x26FA,0x0C7B,0x2DC0,0x05F8,0x1A9F,
        0x358F,0x154D,0x3C9F,0x1851,0x02B0,0x20CB,0x2867,0x0599,
        0x182A,0x39A8,0x0EE1,0x2F9E,0x06B8,0x355E,0x0CC6,0x3B8D,
        0x0EA3,0x23C3,0x3850,0x1016,0x3400,0x0400,0x2420,0x372B,
        0x0E1D,0x3CFA,0x24AF,0x127B,0x32B9,0x0CC3,0x3B4C,0x03DB,
        0x3681,0x0858,0x1B6A,0x2827,0x0FDF,0x2F5E,0x1DB4,0x2D60,
        0x3CBC,0x02D4,0x324F,0x1A10,0x26E6,0x0165,0x30DE,0x1EDF,
        0x110F,0x31BC,0x176F,0x2BB4,0x106B,0x2ED4,0x021A,0x1871,
        0x3301,0x24DD,0x0393,0x2F2F,0x1CAF,0x31C4,0x1217,0x2439,
        0x30D8,0x0CB9,0x297F,0x1445,0x23B9,0x3AC3,0x0186,0x36F2,
        0x1C9A,0x3086,0x0E90,0x26B2,0x3E19,0x1471,0x0236,0x216D,
        0x2B0E,0x04FC,0x309B,0x2434,0x0891,0x3408,0x0180,0x3FA2,
        0x0915,0x2CBC,0x1173,0x28E7,0x0EFC,0x25A9,0x045C,0x2DFD,
        0x1E09,0x0274,0x37E5,0x2716,0x03EE,0x2984,0x0A44,0x2E69,
        0x0512,0x1EAD,0x393B,0x1A5C,0x33E4,0x1F4D,0x1197,0x3FD4,
        0x20D3,0x075E,0x2CB5,0x0B8C,0x3D3B,0x05B5,0x335B,0x12EA,
        0x3E65,0x15C9,0x3511,0x1942,0x3B5F,0x1446,0x2399,0x317F,
        0x0A09,0x2B1D,0x0541,0x2374,0x37E8,0x0B05,0x35BB,0x1C32,
        0x2CE2,0x0A8D,0x2A67,0x16A0,0x3D2A,0x1319,0x2B56,0x1726,
        0x2D4C,0x01C9,0x1B15,0x3089,0x146D,0x29B1,0x0C04,0x1C4B,
        0x2F19,0x1676,0x08C2,0x3A00,0x22B7,0x1BFE,0x213E,0x2F25,
        0x0F62,0x2004,0x33A3,0x144B,0x3F85,0x0425,0x35A5,0x09FA,
        0x163B,0x25A7,0x13FD,0x3F40,0x1193,0x3655,0x149D,0x3889,
        0x21F1,0x0282,0x3F1F,0x0DAF,0x35C3,0x1536,0x395E,0x27BF,
        0x0841,0x15D7,0x3D24,0x183E,0x0DFB,0x2102,0x37C5,0x0239,
        0x18ED,0x3B5D,0x048B,0x3483,0x0ADD,0x1ED4,0x2AA4,0x0F82,
        0x2C05,0x03AD,0x364E,0x1A9E,0x08F7,0x230E,0x3AE6,0x19CF,
        0x0EC9,0x3C77,0x13CE,0x1ED1,0x3ABF,0x111B,0x2370,0x0ED6,
        0x24B3,0x1BCA,0x37A9,0x06F6,0x3B24,0x18FE,0x368D,0x11F4,
        0x3C22,0x225B,0x0B95,0x184E,0x31F6,0x1CFA,0x385C,0x103D,
        0x3D74,0x0D5E,0x24AD,0x01E4,0x2681,0x082F,0x2E01,0x0DE5,
        0x274C,0x3666,0x10E8,0x3066,0x16AE,0x2ACD,0x1968,0x264F,
        0x0BFE,0x2C9E,0x06C9,0x2F03,0x0212,0x2A87,0x0D8D,0x1EF3,
        0x3A7A,0x199B,0x325D,0x10B8,0x2A1F,0x1DC0,0x0F24,0x30A5,
        0x144E,0x3E34,0x1FCB,0x021E,0x1E15,0x28CE,0x0462,0x32A1,
        0x1136,0x3F7E,0x27DB,0x077C,0x1F7E,0x3E49,0x1843,0x350F,
        0x0333,0x20B6,0x2BF3,0x1918,0x025C,0x35B9,0x0A0E,0x1863,
        0x3D73,0x25FA,0x05B3,0x2B17,0x0C14,0x24A3,0x172D,0x28AE,
        0x32DE,0x0AFE,0x2A51,0x0559,0x2DEB,0x09DC,0x2A9A,0x0637,
        0x2D12,0x158E,0x1FD2,0x26DB,0x0738,0x2449,0x0B16,0x1D2B,
        0x3720,0x294E,0x0C51,0x2660,0x398B,0x070C,0x2738,0x1C52,
        0x2C6B,0x0FA1,0x27F4,0x12EF,0x2E84,0x1510,0x21B2,0x3D11,
        0x0BCF,0x278F,0x1177,0x2CDF,0x1DE4,0x2FC4,0x065E,0x34A3,
        0x22A7,0x092D,0x31EF,0x028B,0x283D,0x186F,0x3746,0x1C88,
        0x334E,0x0353,0x2148,0x2E91,0x145C,0x2991,0x0BFD,0x2792,
        0x07CE,0x32F1,0x1C7A,0x3A08,0x14F7,0x0779,0x2285,0x2BD5,
        0x1613,0x2A7B,0x1542,0x3BCE,0x12AA,0x3766,0x17E2,0x327B,
        0x04C7,0x1D67,0x23D3,0x01A9,0x3922,0x0A81,0x3626,0x02E7,
        0x3A72,0x1B38,0x249E,0x1236,0x37BE,0x16EE,0x3D1C,0x0387,
        0x262A,0x0C88,0x2150,0x3E92,0x066D,0x24BF,0x3C43,0x003D,
        0x2688,0x07B3,0x337A,0x1B10,0x3689,0x0FF9,0x3AF3,0x0A59,
        0x249C,0x1EB5,0x1246,0x39EE,0x238E,0x0050,0x2B4E,0x0DBF,
        0x2573,0x3EBE,0x0F7D,0x3709,0x2713,0x1187,0x2DB3,0x226A,
        0x009F,0x16AC,0x3A37,0x1AB1,0x3435,0x1297,0x3ADF,0x05F5,
        0x1D6B,0x3BCD,0x0F64,0x378A,0x194C,0x23B8,0x0FC0,0x3D32,
        0x19A5,0x393A,0x0579,0x345B,0x1AB5,0x3DB4,0x13AE,0x2CB4,
        0x04A8,0x1EE4,0x32A0,0x015F,0x1DD5,0x3336,0x0D0C,0x3DF9,
        0x08B8,0x3582,0x1D7F,0x3DA9,0x02A1,0x376F,0x07C0,0x1AEE,
        0x338C,0x1749,0x3BEE,0x012D,0x3970,0x0C93,0x2809,0x104C,
        0x2D64,0x1946,0x20BB,0x3E7E,0x0BA2,0x3016,0x05E5,0x29C3,
        0x0C1D,0x3E31,0x1819,0x099D,0x33D1,0x003C,0x3049,0x16A1,
        0x2B7A,0x13C1,0x2D25,0x013B,0x2342,0x3E02,0x192F,0x02B2,
        0x3514,0x06DE,0x30F4,0x099F,0x2C9B,0x1E4C,0x034E,0x2047,
        0x38A0,0x13F8,0x3DD4,0x1F3E,0x11E9,0x296B,0x1479,0x2DA0,
        0x21C9,0x0F7E,0x3200,0x20A8,0x092A,0x2C04,0x1056,0x2FEC,
        0x1652,0x3933,0x0194,0x1AAC,0x2DE8,0x0D21,0x204B,0x320F,
        0x1258,0x2C06,0x0F57,0x2822,0x0B7A,0x2EC0,0x2207,0x1B9D,
        0x3778,0x0534,0x2F81,0x09DB,0x19F1,0x3632,0x1402,0x3A76,
        0x1D0C,0x09A2,0x315F,0x05FA,0x1B29,0x3F26,0x0771,0x38DF,
        0x1D5C,0x30B8,0x0D64,0x27A5,0x0213,0x29AF,0x0DE7,0x2CEE,
        0x004F,0x2281,0x2FE7,0x1DEE,0x036A,0x31E6,0x1C43,0x2628,
        0x0B20,0x22A1,0x2DF7,0x0D12,0x2A21,0x0078,0x30C6,0x1BC8,
        0x3B79,0x0ED3,0x2319,0x3F58,0x12BC,0x28CD,0x1F49,0x11DE,
        0x3040,0x16FB,0x06B3,0x229E,0x2B80,0x111E,0x312C,0x2409,
        0x04CC,0x296A,0x0D54,0x2523,0x1365,0x33A9,0x14DC,0x3F75,
        0x001D,0x3805,0x0DF5,0x265B,0x1E20,0x106A,0x3A45,0x164B,
        0x2EE7,0x11BD,0x2BA2,0x2206,0x1C33,0x3D4A,0x0E0C,0x3877,
        0x04A0,0x3E9A,0x0C7E,0x1EC7,0x2F83,0x0AAB,0x3353,0x2128,
        0x0F4B,0x3EF6,0x198E,0x23DE,0x0F06,0x3D17,0x1A23,0x2A37,
        0x0A33,0x2B48,0x07B4,0x279C,0x3508,0x0641,0x3EDE,0x1CE5,
        0x0974,0x371D,0x03E3,0x3FAB,0x19D5,0x221B,0x340A,0x074D,
        0x2932,0x0E2D,0x253F,0x3612,0x13C8,0x384E,0x18A9,0x0A0B,
        0x3B30,0x1E81,0x3710,0x0588,0x3F00,0x1802,0x00A6,0x3197,
        0x0CBE,0x299A,0x15E0,0x32F3,0x2524,0x0B4A,0x2953,0x0676,
        0x2E30,0x1715,0x23DB,0x1DF2,0x2FF1,0x142F,0x2621,0x0EC4,
        0x2967,0x08EF,0x36CD,0x136A,0x3CE0,0x1826,0x3724,0x1A74,
        0x346C,0x1595,0x089A,0x2694,0x3DF7,0x0C86,0x3518,0x00F3,
        0x36F1,0x129B,0x1E28,0x3BC6,0x16F6,0x368B,0x238B,0x0909,
        0x1665,0x2F93,0x17C6,0x09E7,0x2EA4,0x0436,0x3A25,0x2472,
        0x00F1,0x2853,0x36CA,0x1923,0x0970,0x3A73,0x1F39,0x121F,
        0x3F3D,0x15E7,0x305A,0x18B4,0x2A27,0x047C,0x2C61,0x1C28,
        0x2580,0x16C8,0x2F62,0x041F,0x3492,0x27AA,0x1FD4,0x00D7,
        0x1F1B,0x3659,0x0509,0x3992,0x107A,0x24D4,0x1A57,0x23B6,
        0x1F5A,0x0FD9,0x2684,0x3B42,0x1172,0x28CC,0x1325,0x2DD4,
        0x1C34,0x25BC,0x00F5,0x36DC,0x1F91,0x05B8,0x337D,0x1507,
        0x3B6D,0x129D,0x31E7,0x0EB1,0x1DF4,0x241B,0x0E77,0x3159,
        0x1827,0x29A3,0x1E83,0x0D53,0x2E4A,0x008C,0x1B7A,0x3DD9,
        0x14E0,0x32C7,0x1BF8,0x08DE,0x2AF3,0x03BA,0x2F72,0x272D,
        0x16B4,0x0322,0x1A5D,0x2D14,0x10FA,0x20CF,0x2AC3,0x1546,
        0x3D87,0x1062,0x38F1,0x0276,0x1DC2,0x3C28,0x162A,0x347D,
        0x0FDC,0x3882,0x0123,0x3B91,0x0B11,0x2B2C,0x02F3,0x31AA,
        0x1245,0x2C97,0x1993,0x243E,0x0678,0x2DD9,0x0948,0x20BE,
        0x0B9D,0x27C6,0x3969,0x17A8,0x10AE,0x2C0E,0x1430,0x299D,
        0x0DD1,0x3046,0x0398,0x24AE,0x09A5,0x1F67,0x0FEA,0x3430,
        0x2107,0x02D5,0x389A,0x21BA,0x1A76,0x3485,0x0BB5,0x1C2E,
        0x3CB7,0x20BA,0x0F54,0x2E21,0x1CBE,0x251A,0x0070,0x2EDF,
        0x0A2D,0x34E6,0x0683,0x3819,0x0B7C,0x3C96,0x21EF,0x09A6,
        0x3166,0x06F0,0x1CDE,0x39A7,0x15DC,0x07FF,0x3DB0,0x1AEC,
        0x3128,0x0F0A,0x275F,0x0B63,0x2DAB,0x0382,0x313E,0x094D,
        0x2A0D,0x35B2,0x1ABA,0x06CF,0x3444,0x0446,0x3A7F,0x07FE,
        0x37CA,0x0C39,0x2B55,0x1134,0x308A,0x26DC,0x0CCE,0x2D2C,
        0x0067,0x2491,0x1BFC,0x3812,0x037F,0x3AE4,0x1F9C,0x00FB,
        0x3C31,0x080B,0x2504,0x3973,0x1151,0x3684,0x242D,0x0B66,
        0x2A66,0x04D4,0x3BE3,0x1FFA,0x111A,0x3FD4,0x20ED,0x0776,
        0x343B,0x1F94,0x3CB5,0x094F,0x2476,0x351C,0x0D7B,0x2E56,
        0x0448,0x265E,0x20FB,0x18CE,0x2CFC,0x080D,0x2728,0x03A7,
        0x2BBB,0x1A09,0x27D3,0x111D,0x33F3,0x1513,0x3C56,0x1EFA,
        0x35EA,0x0417,0x3E6A,0x0C99,0x3282,0x14F9,0x2559,0x3EF0,
        0x2C45,0x1BBD,0x0238,0x30F9,0x2198,0x0667,0x3A93,0x1CB8,
        0x3E8B,0x18C8,0x2085,0x3355,0x15BE,0x3FD4,0x22FC,0x067E,
        0x3CA9,0x2A6C,0x0CE4,0x3189,0x065B,0x25A5,0x1864,0x2D83,
        0x14AC,0x09FB,0x3908,0x03EC,0x3E63,0x0E75,0x3548,0x14EA,
        0x2AFC,0x1B9F,0x260B,0x1266,0x2D13,0x1AE9,0x0FC9,0x371A,
        0x1571,0x3B8C,0x22D9,0x0A72,0x21AF,0x2DA9,0x0F8C,0x2AE8,
        0x08FD,0x3CBE,0x1E91,0x34DF,0x13A8,0x3F33,0x152F,0x3725,
        0x1680,0x0244,0x30BE,0x2400,0x1291,0x2CC0,0x1B8B,0x243B,
        0x171C,0x326D,0x1A87,0x3AC0,0x0B03,0x1D83,0x3E32,0x1019,
        0x1EC8,0x343C,0x06A5,0x1872,0x2BEC,0x1418,0x3029,0x25A6,
        0x12D0,0x34A4,0x173D,0x04FB,0x2878,0x1F48,0x1225,0x37D4,
        0x180A,0x2ED5,0x1293,0x2661,0x331F,0x0BB2,0x19DB,0x3A1B,
        0x1388,0x2B28,0x11CA,0x320D,0x1CFE,0x064A,0x3B9D,0x2028,
        0x1A3B,0x33EC,0x0BA0,0x3F3B,0x0F3C,0x3592,0x12C7,0x3DC0,
        0x1DA4,0x0937,0x32C0,0x1F71,0x0517,0x29AA,0x18BE,0x0807,
        0x1C02,0x2701,0x15A2,0x2942,0x1047,0x38B6,0x0389,0x171F,
        0x06D5,0x3B6C,0x1FB9,0x0E9D,0x37A5,0x1B50,0x23C5,0x04F9,
        0x25D5,0x0A67,0x3831,0x07A0,0x29AE,0x01B2,0x309C,0x1C86,
        0x10DC,0x1E04,0x278D,0x15EB,0x3E6D,0x0DBE,0x377C,0x0311,
        0x351B,0x2637,0x15C6,0x29DC,0x1711,0x290E,0x082B,0x39DA,
        0x2196,0x031D,0x3DFE,0x1F11,0x01CA,0x32B7,0x2058,0x0394,
        0x2996,0x0D6A,0x2B96,0x19C0,0x330C,0x02E3,0x37C6,0x135A,
        0x28AD,0x1794,0x01F2,0x1B46,0x2828,0x0D57,0x2A94,0x0645,
        0x2553,0x3D05,0x1798,0x09E6,0x3950,0x2081,0x0E14,0x3C90,
        0x0366,0x27FA,0x062B,0x21B1,0x2EFD,0x0306,0x22BB,0x35AB,
        0x2811,0x0B6A,0x3F94,0x269E,0x0D38,0x33DE,0x0B35,0x1B05,
        0x2B8D,0x0F02,0x2D3F,0x1C60,0x3CC4,0x085D,0x312A,0x02EE,
        0x27FB,0x0A75,0x34EF,0x00EA,0x175C,0x2C64,0x2327,0x023C,
        0x305C,0x0ADB,0x28AC,0x0144,0x39E8,0x1912,0x255B,0x0A9D,
        0x3843,0x1199,0x2F63,0x056A,0x2802,0x1D28,0x2D91,0x0BC7,
        0x25A1,0x3AE5,0x1232,0x239F,0x3E16,0x0E0D,0x369B,0x206D,
        0x3979,0x0A74,0x3369,0x0150,0x2F57,0x225C,0x1D36,0x332F,
        0x287F,0x1302,0x356E,0x252C,0x0A8F,0x2D2E,0x1241,0x318B,
        0x16BB,0x2ACA,0x117D,0x2F46,0x1A1F,0x38F0,0x0E22,0x280B,
        0x36E8,0x07FD,0x3AE7,0x0041,0x1CE2,0x2982,0x11AE,0x2C39,
        0x1E76,0x05C6,0x2FAA,0x0C50,0x33C2,0x1066,0x31B4,0x1E3F,
        0x1399,0x2DC3,0x10F7,0x23D1,0x3A6B,0x0CE3,0x275A,0x3D86,
        0x12AD,0x3621,0x0181,0x3EC3,0x0E2A,0x24C8,0x18EE,0x3259,
        0x05FF,0x3853,0x1FC7,0x3BD7,0x0744,0x3303,0x19B3,0x39DF,
        0x1EFC,0x0F33,0x2C01,0x1CDA,0x286C,0x007E,0x3011,0x1429,
        0x33FE,0x1587,0x3F5C,0x0D9F,0x1B0D,0x39BE,0x16CD,0x054F,
        0x147E,0x2EBE,0x2094,0x1065,0x3A3A,0x048D,0x21AB,0x3D9B,
        0x02A7,0x38C8,0x09AF,0x3315,0x152B,0x2614,0x1D54,0x3F1E,
        0x0F74,0x39BA,0x229D,0x1CF7,0x3CE1,0x0817,0x3797,0x1E43,
        0x101D,0x3DE7,0x1596,0x2FBB,0x0E9C,0x2BAB,0x14DD,0x303E,
        0x01A2,0x1EA6,0x2450,0x1762,0x3962,0x00D5,0x19A6,0x3757,
        0x16AF,0x023D,0x2F8E,0x089B,0x1A6B,0x2D63,0x0036,0x28C7,
        0x0F53,0x2CB0,0x16BC,0x3A14,0x1B09,0x081E,0x3C35,0x0D3F,
        0x1010,0x2E54,0x0496,0x1967,0x3FAF,0x0174,0x39F1,0x0BBE,
        0x3609,0x024C,0x3D99,0x22E9,0x0F5B,0x215D,0x2E94,0x0455,
        0x1F19,0x3137,0x1778,0x222F,0x3570,0x08F4,0x3C24,0x2142,
        0x0EC0,0x3FCC,0x1BBA,0x3785,0x01FC,0x2026,0x2498,0x053B,
        0x3BF8,0x0BE0,0x3368,0x073E,0x19EC,0x2EB9,0x16E0,0x08BC,
        0x2404,0x1BF5,0x304B,0x1755,0x2059,0x3A80,0x0B87,0x1CCD,
        0x2BEF,0x1282,0x29C8,0x1100,0x2C79,0x1E00,0x0118,0x232C,
        0x0A7E,0x34A7,0x0405,0x3FD4,0x1552,0x3711,0x0C0A,0x2516,
        0x0931,0x2C71,0x109E,0x262F,0x3486,0x08C0,0x2B0A,0x1E1E,
        0x3C9B,0x1913,0x018A,0x30FB,0x22F7,0x19FC,0x2F0D,0x10A2,
        0x274E,0x18F3,0x204F,0x23F3,0x01B1,0x2F6F,0x0AF2,0x1686,
        0x2C49,0x1A05,0x06A0,0x2F9F,0x0F8B,0x29D6,0x14C8,0x31A7,
        0x21AE,0x04FA,0x25B5,0x1AB4,0x3613,0x03FA,0x3EC5,0x0D49,
        0x27A6,0x3C65,0x0912,0x3298,0x1478,0x22ED,0x30D2,0x0631,
        0x2239,0x2C1D,0x13F4,0x391F,0x2489,0x1147,0x328E,0x1718,
        0x3F7A,0x0475,0x24FC,0x10F8,0x2B08,0x2062,0x138B,0x3144,
        0x3E2C,0x1D7C,0x217C,0x3006,0x14A4,0x28C2,0x1A41,0x2765,
        0x15DF,0x2CA6,0x1BA8,0x058D,0x3B11,0x0921,0x189E,0x3D25,
        0x1415,0x2526,0x0EBB,0x2E47,0x12B1,0x2BCA,0x19E8,0x0702,
        0x31E5,0x2273,0x0FF0,0x256E,0x1A6D,0x3CEA,0x124C,0x3494,
        0x1821,0x2A04,0x1575,0x38F4,0x24FD,0x04C4,0x35B7,0x1D6D,
        0x33B9,0x0615,0x259E,0x0A20,0x2DE9,0x0566,0x26D2,0x3F9A,
        0x0DA5,0x35DE,0x0423,0x3407,0x0B1D,0x3AE9,0x1495,0x36A3,
        0x28B1,0x12AB,0x2D98,0x2240,0x08A8,0x270F,0x1B5F,0x3DA0,
        0x1878,0x1FF0,0x384A,0x014B,0x183A,0x30A9,0x1227,0x32AF,
        0x0C7D,0x28D2,0x3749,0x168F,0x0A27,0x357A,0x0775,0x1ED6,
        0x30D1,0x0600,0x3E53,0x0FE2,0x3837,0x178A,0x354B,0x21F8,
        0x045E,0x33A4,0x208D,0x1324,0x38BA,0x040C,0x270B,0x09D9,
        0x3AFE,0x1BDA,0x373D,0x08F3,0x23B1,0x1F64,0x12D9,0x3267,
        0x1B7E,0x1042,0x2AC0,0x1F10,0x076A,0x3D19,0x0D68,0x2027,
        0x3FC4,0x099E,0x3457,0x1F2D,0x04EB,0x3C97,0x1E93,0x07AB,
        0x1FC9,0x341E,0x0C5C,0x3D84,0x0574,0x3770,0x2410,0x00B8,
        0x17D5,0x086A,0x34C6,0x0C37,0x2A9D,0x0E01,0x32F0,0x0709,
        0x3C57,0x09EF,0x1FE9,0x3512,0x161F,0x2673,0x318E,0x0B72,
        0x2B9C,0x033A,0x33E2,0x0987,0x3A5C,0x0266,0x22F6,0x394B,
        0x179D,0x0117,0x3AB6,0x0A24,0x2EBF,0x075F,0x2A6F,0x0AE4,
        0x27B8,0x00F8,0x2F68,0x0A84,0x1DD6,0x3F10,0x1213,0x2ADE,
        0x0ECD,0x3C32,0x1347,0x38E2,0x15A8,0x3509,0x1D98,0x0081,
        0x23D0,0x1A8B,0x25D6,0x20B5,0x17D0,0x2717,0x2174,0x07E1,
        0x18AC,0x3BF1,0x0C96,0x1A22,0x3168,0x102C,0x2E88,0x0279,
        0x353F,0x06F7,0x2884,0x1C4E,0x3C60,0x0E13,0x2581,0x0253,
        0x393F,0x1F69,0x07CC,0x2606,0x3EA3,0x132C,0x2858,0x3BB0,
        0x0DE8,0x3411,0x13DC,0x2C22,0x0CBF,0x2A07,0x0724,0x3BCF,
        0x1E0E,0x0E07,0x3D81,0x25CF,0x0BD1,0x326B,0x185B,0x2CA3,
        0x1275,0x2998,0x1433,0x2D96,0x113A,0x396F,0x2856,0x06CE,
        0x237D,0x371F,0x036C,0x3A9B,0x1BB9,0x25F2,0x1822,0x331B,
        0x0F03,0x1C90,0x2671,0x0DD6,0x308D,0x1002,0x2B57,0x1AC0,
        0x2E46,0x13D3,0x2817,0x1781,0x3051,0x0CE2,0x1BCD,0x2B5A,
        0x36D7,0x2700,0x1191,0x3CFE,0x041D,0x3802,0x11E3,0x2D72,
        0x13CC,0x24E5,0x3071,0x1035,0x2BE5,0x00E5,0x1C14,0x3760,
        0x1203,0x3F41,0x1952,0x2050,0x26A1,0x1560,0x2DD0,0x0D24,
        0x273D,0x2FED,0x14C9,0x28D4,0x1335,0x32FF,0x1D3A,0x3F82,
        0x0F9A,0x382F,0x228B,0x1908,0x30D5,0x0D43,0x27E9,0x006E,
        0x2FF7,0x1B14,0x2C1C,0x0340,0x2872,0x10CF,0x309F,0x1701,
        0x3910,0x0878,0x3DE3,0x09C1,0x3565,0x0325,0x3ECC,0x1C9D,
        0x32A2,0x01C2,0x2023,0x37B2,0x0499,0x3A49,0x21A3,0x15BD,
        0x2322,0x319B,0x0D11,0x2E06,0x050E,0x1F23,0x2F2B,0x1766,
        0x23E8,0x118A,0x2FD7,0x1B21,0x035B,0x2DD8,0x1C7C,0x0091,
        0x2468,0x1BB2,0x26BB,0x03D6,0x3B2A,0x12C0,0x27B7,0x148F,
        0x3001,0x2309,0x01CF,0x1C6B,0x2E6C,0x140D,0x3E4C,0x0089,
        0x3561,0x07A6,0x3F9B,0x0241,0x32E2,0x0A12,0x16E4,0x3D63,
        0x1927,0x0C2A,0x2EE4,0x120F,0x3422,0x0B39,0x2E8D,0x03F3,
        0x281F,0x38AD,0x017F,0x2AC2,0x180C,0x3572,0x02B7,0x3B39,
        0x0B26,0x37FB,0x01B9,0x2BF6,0x0FBA,0x25C5,0x3ABB,0x0AC7,
        0x2018,0x029A,0x2ED0,0x18B5,0x24D5,0x1C66,0x235B,0x0022,
        0x38A3,0x19CD,0x03D5,0x3ECD,0x0CAF,0x3439,0x226E,0x0762,
        0x20C9,0x25D9,0x05AC,0x37E7,0x0B15,0x3E13,0x1E5B,0x3631,
        0x08CE,0x1C44,0x36A5,0x04AC,0x3B8A,0x21B4,0x02E6,0x16C3,
        0x3084,0x1AF4,0x088C,0x3B2F,0x0378,0x2BA7,0x14B3,0x3A3D,
        0x213B,0x0967,0x2263,0x36C7,0x0C4B,0x3CEE,0x079F,0x2B46,
        0x0E8A,0x2D97,0x164A,0x2F5F,0x11E4,0x2B24,0x13D6,0x2DF2,
        0x0F98,0x25B3,0x2F13,0x1379,0x2949,0x1D1D,0x07A2,0x3B92,
        0x0E4D,0x1DA9,0x3E58,0x164C,0x2238,0x3A13,0x0AD8,0x3637,
        0x05AD,0x3D6A,0x0B33,0x3448,0x219A,0x0ECE,0x3924,0x1800,
        0x2E79,0x0899,0x362C,0x195B,0x2241,0x322E,0x0010,0x2B2A,
        0x0A00,0x34B5,0x192B,0x3AB2,0x065A,0x2A96,0x0D01,0x24C0,
        0x1097,0x203A,0x2412,0x1989,0x264B,0x1D13,0x2B36,0x001F,
        0x3536,0x24FB,0x15DD,0x2A0B,0x01D4,0x28DF,0x13A5,0x3BA9,
        0x210A,0x10D3,0x1E52,0x3EAF,0x07D8,0x1C4A,0x2972,0x153F,
        0x263F,0x1226,0x3165,0x1D42,0x3526,0x03BD,0x15CE,0x30DD,
        0x1697,0x3BCC,0x22A2,0x0988,0x339F,0x0796,0x3F39,0x1ECD,
        0x0E47,0x33DF,0x20AC,0x1540,0x2976,0x1292,0x3A2B,0x19B9,
        0x3295,0x0ED8,0x2D44,0x1186,0x2934,0x1A38,0x0527,0x1442,
        0x3186,0x245A,0x1112,0x2C03,0x19C4,0x0D06,0x37DB,0x2729,
        0x05CE,0x2CC5,0x1FFD,0x1289,0x3314,0x1753,0x3534,0x07BD,
        0x189A,0x3FCF,0x105A,0x19EE,0x2D06,0x1400,0x246A,0x1984,
        0x36F6,0x1FFE,0x021B,0x1CC2,0x3984,0x0CBB,0x28FA,0x05B4,
        0x35AF,0x197D,0x0840,0x3E43,0x0D73,0x35D9,0x16D6,0x23B7,
        0x302D,0x03C2,0x277C,0x09C6,0x31EB,0x13BF,0x26E5,0x1D2D,
        0x2D71,0x14D9,0x2A55,0x127D,0x3B0F,0x1E80,0x0BA1,0x34FC,
        0x10BA,0x3FD3,0x1564,0x2FCA,0x0A50,0x1D68,0x3771,0x1059,
        0x3F60,0x157D,0x28A5,0x0F19,0x35D7,0x2184,0x1A4C,0x3373,
        0x1C0C,0x3A50,0x0C4A,0x37C1,0x0582,0x349D,0x0DAB,0x2F45,
        0x20A2,0x05E3,0x39B1,0x0D4E,0x3E88,0x1011,0x35E2,0x1B2B,
        0x0984,0x3516,0x28F1,0x0E57,0x23FC,0x3A89,0x0A8C,0x3654,
        0x05F3,0x3D2D,0x2243,0x08BF,0x19E3,0x3FD4,0x22E7,0x0748,
        0x325A,0x0D82,0x1B95,0x3997,0x1580,0x2BC1,0x135C,0x26CA,
        0x2F56,0x0846,0x279A,0x395C,0x05E2,0x2EDD,0x0A29,0x2B37,
        0x020F,0x3B9A,0x1B42,0x3586,0x00A4,0x33A6,0x1F8E,0x3C8A,
        0x18C4,0x034C,0x3EDA,0x0A62,0x2666,0x3255,0x11EC,0x20C4,
        0x35FF,0x0E52,0x3DF8,0x2544,0x0BB3,0x2941,0x0F65,0x26F2,
        0x3225,0x0440,0x23DF,0x337C,0x01D8,0x1E9F,0x3194,0x0482,
        0x2695,0x0BEF,0x3C92,0x250D,0x0681,0x3344,0x1EC6,0x3D33,
        0x0D3B,0x2109,0x31E9,0x11D7,0x2B98,0x00C8,0x2D4F,0x0991,
        0x1E5E,0x38ED,0x1207,0x36BD,0x1C10,0x0029,0x3F6F,0x091C,
        0x1A13,0x37EA,0x0119,0x275D,0x0687,0x3038,0x228A,0x0522,
        0x2AFF,0x2036,0x02BC,0x1F09,0x3DBE,0x11D6,0x2556,0x20B8,
        0x04A5,0x2DDE,0x085C,0x30B1,0x1E84,0x0334,0x3C4E,0x088D,
        0x2E50,0x044A,0x2912,0x1007,0x2C42,0x15F1,0x3B13,0x1E11,
        0x0F61,0x31AB,0x1A73,0x26EB,0x1DB5,0x310B,0x0705,0x24D0,
        0x2FF9,0x178E,0x05C9,0x36EB,0x1FA9,0x0F44,0x2D92,0x190D,
        0x27E6,0x1EE0,0x10BF,0x3943,0x2A84,0x0A54,0x2F2E,0x1D16,
        0x059A,0x217F,0x2CCF,0x01A3,0x2869,0x0B31,0x315E,0x035C,
        0x1ABF,0x3D3E,0x0F36,0x1DDD,0x244E,0x13E0,0x3D65,0x16A4,
        0x2807,0x1EBD,0x08A3,0x1FF4,0x2A54,0x1358,0x2E52,0x0808,
        0x2298,0x2AA7,0x1638,0x30CA,0x1FBF,0x0016,0x3D8D,0x09AC,
        0x1CD5,0x2B42,0x01DB,0x1BC2,0x3927,0x053F,0x3D40,0x1E27,
        0x1159,0x1F76,0x394A,0x0E5D,0x21D5,0x3E41,0x0F22,0x3A1F,
        0x124D,0x32D6,0x20EC,0x0DDA,0x2CF1,0x1AA3,0x0010,0x1737,
        0x27CD,0x3926,0x039D,0x248E,0x1B8E,0x3C89,0x190B,0x3481,
        0x0F6E,0x2270,0x2CEB,0x06A3,0x2548,0x2FBC,0x157F,0x2BCB,
        0x21F3,0x0E7A,0x3223,0x18B8,0x2B64,0x1323,0x3CDD,0x1D89,
        0x0E50,0x31D4,0x1AA9,0x29B7,0x0597,0x2C62,0x090E,0x3A53,
        0x1DD4,0x1228,0x38D9,0x2340,0x0C83,0x2CE0,0x1189,0x27AF,
        0x0E6A,0x3647,0x171E,0x3C21,0x1F1D,0x08C5,0x2353,0x0386,
        0x3FD4,0x2147,0x0945,0x36B5,0x0466,0x18C6,0x2B9B,0x1630,
        0x0083,0x3D55,0x1D21,0x255C,0x036D,0x306C,0x1CD3,0x00E2,
        0x33AD,0x09D6,0x2FEB,0x02F9,0x15FD,0x2565,0x126D,0x38B8,
        0x19A3,0x3E86,0x12F3,0x3593,0x173C,0x3AC8,0x108C,0x3777,
        0x23A9,0x147B,0x3261,0x0187,0x3718,0x1F51,0x042A,0x332C,
        0x0D74,0x365F,0x14FD,0x3E5A,0x0C8A,0x39CC,0x0F3A,0x1DFF,
        0x3B0A,0x109C,0x3759,0x064E,0x151C,0x2E8E,0x22B5,0x17C5,
        0x3A47,0x10E1,0x23BF,0x31BF,0x133A,0x2DB5,0x232B,0x013F,
        0x3780,0x29E0,0x0802,0x1D43,0x2E63,0x06DC,0x2A5F,0x1C82,
        0x2EB5,0x074F,0x1860,0x3787,0x131F,0x3B58,0x1FAB,0x2FB4,
        0x091A,0x14CB,0x1EF9,0x3085,0x0C58,0x2641,0x0569,0x20CD,
        0x3F24,0x0218,0x1CC9,0x3C06,0x181C,0x0A7D,0x35B8,0x0489,
        0x3B64,0x1ED9,0x0849,0x3EDC,0x0A8E,0x337B,0x01EE,0x265A,
        0x38BD,0x0799,0x3BEB,0x0F78,0x364C,0x170A,0x33AE,0x139E,
        0x3131,0x224C,0x0121,0x189B,0x3EA7,0x154E,0x32BA,0x17AA,
        0x2AF1,0x1493,0x2507,0x011B,0x2E76,0x1BB1,0x3140,0x175B,
        0x261C,0x131E,0x2CA9,0x14B8,0x242A,0x3C81,0x0A04,0x3801,
        0x238D,0x1122,0x3286,0x12D6,0x38C2,0x1497,0x3C1F,0x21F7,
        0x167E,0x3E09,0x1B67,0x2988,0x2078,0x3C5F,0x0057,0x27D9,
        0x31EC,0x0B92,0x267A,0x0E64,0x2E14,0x0620,0x2546,0x1F03,
        0x06E9,0x2D66,0x0C65,0x2918,0x10B3,0x2FEF,0x239B,0x1024,
        0x2A4F,0x0633,0x2DF5,0x182F,0x26D1,0x057B,0x21DA,0x34A5,
        0x0184,0x2D56,0x0C52,0x23EB,0x3C41,0x1AC3,0x07E7,0x313D,
        0x03EB,0x2D1C,0x1A37,0x06BA,0x36D1,0x09D1,0x1965,0x311E,
        0x1656,0x0BEC,0x22C3,0x3B80,0x12DA,0x3597,0x1815,0x00DF,
        0x22B2,0x3F64,0x26F8,0x035E,0x2B06,0x0B60,0x3434,0x0FEE,
        0x3FAC,0x237B,0x36E1,0x06DD,0x39B7,0x1612,0x327D,0x0B6D,
        0x2839,0x154F,0x2AC1,0x10E3,0x34BC,0x2408,0x0F40,0x28DA,
        0x10F5,0x2F82,0x24DF,0x119B,0x2877,0x1717,0x2CFB,0x1441,
        0x1F52,0x248F,0x17C0,0x2D93,0x0B51,0x279B,0x0229,0x2939,
        0x09C3,0x3C78,0x1C53,0x33FB,0x07A9,0x2566,0x01FD,0x3844,
        0x0621,0x3F15,0x0B86,0x33EF,0x11AB,0x3DB2,0x0D1D,0x38D4,
        0x07EA,0x34CD,0x012B,0x3AEA,0x0C76,0x20A7,0x2D4A,0x1C01,
        0x0B91,0x2F07,0x0722,0x29E1,0x0A3B,0x275E,0x0673,0x2C6D,
        0x0BE3,0x24BC,0x055D,0x37C2,0x0AFF,0x140B,0x3471,0x1549,
        0x1F99,0x2C66,0x03E9,0x3BEF,0x2226,0x1BF2,0x3DF4,0x115B,
        0x3608,0x18E8,0x38B9,0x1658,0x3B3A,0x0AEF,0x1AD3,0x3F90,
        0x15F8,0x3852,0x1DC4,0x028E,0x3113,0x1BBC,0x2C8A,0x0BA8,
        0x27C3,0x16E7,0x3429,0x1C75,0x0DA8,0x353D,0x29A6,0x1349,
        0x387B,0x0F1A,0x3EB9,0x25E6,0x1531,0x2AF2,0x21A8,0x0DCC,
        0x3E90,0x1BF7,0x33F6,0x02D7,0x2BC6,0x0ACD,0x2617,0x388B,
        0x15A7,0x0A02,0x1B60,0x30D4,0x165D,0x258F,0x04F8,0x2990,
        0x1B4A,0x025A,0x1805,0x2A7E,0x12E1,0x2916,0x1049,0x387A,
        0x19DF,0x33BB,0x08C4,0x3063,0x030E,0x1BE8,0x3DCC,0x15E8,
        0x38F8,0x029F,0x1B77,0x3761,0x04D5,0x3A0C,0x0DB4,0x34C7,
        0x0BD0,0x306A,0x00DD,0x1D15,0x39D1,0x117F,0x3D30,0x1B16,
        0x2EE0,0x0E1F,0x2B18,0x107C,0x1F5C,0x3B06,0x1AA8,0x21FC,
        0x2F61,0x12B9,0x2971,0x18DE,0x273B,0x059E,0x2A86,0x1B1A,
        0x2DDF,0x1107,0x27D5,0x1962,0x3232,0x1576,0x02C4,0x3F23,
        0x27A4,0x1391,0x34C8,0x1B11,0x3F9F,0x11E2,0x362E,0x1838,
        0x3A39,0x11A6,0x32FC,0x1940,0x230F,0x2DB6,0x1E37,0x07F2,
        0x3A77,0x11D0,0x33AA,0x1934,0x0982,0x30C7,0x00AA,0x29D5,
        0x0AB7,0x264E,0x02BF,0x2B59,0x0684,0x253C,0x34F9,0x0051,
        0x285A,0x0B52,0x24CA,0x3D00,0x1120,0x3715,0x12C2,0x3FD4,
        0x1457,0x2A02,0x04FE,0x3991,0x2612,0x0245,0x1F15,0x2448,
        0x0925,0x27D6,0x1E6F,0x0C5E,0x3BC2,0x031C,0x34B2,0x1ECB,
        0x05B7,0x2D46,0x1023,0x27AB,0x1601,0x3CCB,0x2092,0x0D4B,
        0x326F,0x1F12,0x3A70,0x10B2,0x3652,0x0E6E,0x3C25,0x1158,
        0x2EDA,0x1E23,0x3379,0x0DA6,0x3EB0,0x0176,0x2E67,0x22DD,
        0x04D0,0x2008,0x3960,0x0DEB,0x2144,0x2DF9,0x0655,0x2B8F,
        0x0C24,0x32E5,0x23A1,0x14C7,0x29A7,0x1A6E,0x2598,0x0401,
        0x3E85,0x1331,0x3827,0x21DF,0x0706,0x31FD,0x2001,0x05EE,
        0x233B,0x352E,0x039F,0x26BD,0x3054,0x0D7D,0x2BF9,0x0918,
        0x1E14,0x3571,0x0327,0x3A35,0x0ECC,0x3624,0x201D,0x0268,
        0x1EA9,0x3BED,0x0A87,0x3769,0x0650,0x25A0,0x30DC,0x17DA,
        0x04FD,0x3A5E,0x2037,0x01A1,0x1EAE,0x314A,0x0DEC,0x2A0F,
        0x0263,0x2D34,0x2146,0x090C,0x3EFB,0x0458,0x3747,0x1A99,
        0x020E,0x2825,0x0DB8,0x2B91,0x2073,0x12BD,0x391C,0x16C7,
        0x3469,0x1230,0x3EFC,0x1F1A,0x32BE,0x1CF6,0x0CE8,0x2F3D,
        0x1284,0x3187,0x193F,0x09E3,0x23BE,0x0750,0x25AB,0x03CA,
        0x3246,0x0E60,0x2EFC,0x0AF0,0x1955,0x3F2A,0x0FE7,0x349C,
        0x18FC,0x2F94,0x00C2,0x327A,0x1862,0x2EDC,0x0B3D,0x39FB,
        0x2362,0x1721,0x3AB9,0x09C0,0x328A,0x052C,0x1A36,0x2E18,
        0x062F,0x2A25,0x02A0,0x2823,0x07E6,0x2CA2,0x1973,0x32B3,
        0x09FE,0x3AAC,0x0824,0x2579,0x1A92,0x3502,0x1E8B,0x0ACB,
        0x3D97,0x138C,0x24C5,0x1B07,0x3C9E,0x0EB9,0x36EA,0x18F5,
        0x26AC,0x1F70,0x07F7,0x3416,0x0CC9,0x3D6E,0x1263,0x2A98,
        0x1674,0x2866,0x0F13,0x2BFC,0x1A54,0x251C,0x1459,0x3035,
        0x10A8,0x17D7,0x39A6,0x19BD,0x0548,0x36A7,0x1689,0x3D47,
        0x10EA,0x20BD,0x263A,0x165C,0x2D7F,0x0A2C,0x2C14,0x16C4,
        0x2FDA,0x12A6,0x2911,0x165F,0x2B7D,0x1C2D,0x0DEF,0x370E,
        0x245F,0x0FA8,0x2ACB,0x187E,0x2D67,0x04C1,0x25E8,0x15B5,
        0x3532,0x1BFA,0x0EE5,0x30B9,0x16B2,0x2723,0x0FDE,0x29F7,
        0x3D5D,0x1E85,0x37B4,0x052B,0x3FD4,0x2440,0x0D3A,0x2BD6,
        0x0572,0x2849,0x1B4B,0x0959,0x139C,0x3CB2,0x1879,0x2201,
        0x3C0D,0x0493,0x3955,0x1D72,0x35CB,0x1738,0x3AC9,0x2072,
        0x19FE,0x3CAF,0x1C1D,0x214C,0x31DB,0x13F2,0x2E9E,0x047F,
        0x3A9C,0x1500,0x3789,0x24D8,0x0E04,0x1C70,0x28D3,0x1420,
        0x30A7,0x0034,0x1C3F,0x2AB9,0x1361,0x249B,0x375E,0x1076,
        0x3D93,0x175F,0x34E8,0x1425,0x3E6C,0x1D75,0x0122,0x211D,
        0x277A,0x15EE,0x2065,0x2FF3,0x05BE,0x240A,0x14EE,0x2F3F,
        0x0F2A,0x318A,0x009B,0x2C0F,0x0871,0x28B5,0x1D73,0x013E,
        0x3FD4,0x0FCE,0x3859,0x135F,0x2F14,0x006A,0x3190,0x0A19,
        0x2E73,0x0580,0x336A,0x0A76,0x3F8A,0x0365,0x3688,0x0C59,
        0x3E1C,0x2157,0x08FA,0x31B1,0x22E1,0x0C0E,0x2A28,0x00C4,
        0x2DF1,0x0A93,0x3C93,0x0797,0x1DD0,0x385F,0x105C,0x3F3E,
        0x0889,0x359A,0x03BF,0x3DCF,0x0CEF,0x3461,0x21D8,0x082C,
        0x1D85,0x32DC,0x0BFC,0x3C59,0x1505,0x377E,0x0CD7,0x3E73,
        0x06F9,0x23E0,0x3B99,0x014C,0x2AEF,0x0C35,0x3364,0x13AD,
        0x1C21,0x08F9,0x1651,0x2FF8,0x1B0C,0x02DE,0x3226,0x1EAA,
        0x3BAF,0x0EC3,0x366B,0x20E1,0x2ADD,0x039A,0x2D7B,0x0870,
        0x1C3C,0x2B9A,0x0D40,0x28E3,0x0128,0x2D19,0x0AA1,0x3078,
        0x085B,0x24A1,0x0093,0x37DC,0x06D2,0x2734,0x0C32,0x2BBE,
        0x2208,0x0D48,0x1FC3,0x067B,0x2246,0x3FC2,0x03FF,0x36F4,
        0x0F59,0x228E,0x342D,0x071D,0x3F50,0x1CE9,0x01B5,0x287C,
        0x211E,0x0C4D,0x1C18,0x2D5D,0x0EF5,0x2397,0x3A40,0x13CF,
        0x355C,0x03E5,0x3CBD,0x0E1E,0x37DF,0x0C07,0x3B73,0x0356,
        0x2800,0x18D7,0x3A60,0x164D,0x363F,0x1240,0x3272,0x22EB,
        0x16FC,0x2D2A,0x045A,0x2AD5,0x1DEA,0x2444,0x1858,0x36B2,
        0x1BF0,0x3B4E,0x18D6,0x2720,0x11C4,0x2D2F,0x16A8,0x28FE,
        0x0046,0x2BB5,0x1E7E,0x0F0F,0x3FC9,0x1DB9,0x1219,0x3883,
        0x14F0,0x328F,0x2335,0x1941,0x3114,0x0060,0x1F06,0x25D8,
        0x199A,0x23BB,0x1F2C,0x100D,0x2F76,0x00A3,0x39A1,0x1A43,
        0x3E4A,0x0284,0x2E82,0x1F1E,0x086F,0x1FE7,0x2928,0x1795,
        0x2FB5,0x0B53,0x1F0D,0x34AD,0x1105,0x39C5,0x05D4,0x2FD4,
        0x2605,0x35DA,0x211C,0x0EE8,0x26F0,0x370A,0x150F,0x0832,
        0x1A66,0x298B,0x013C,0x3101,0x1583,0x39AA,0x0F84,0x3636,
        0x2561,0x14D5,0x2FD9,0x11F9,0x33EE,0x1B12,0x266F,0x1677,
        0x38BF,0x0F73,0x2CDC,0x12E9,0x2B14,0x16F4,0x3B5E,0x1D1C,
        0x084B,0x3D53,0x29FA,0x1782,0x2F2D,0x10F1,0x2C92,0x0AAC,
        0x1E06,0x3C4B,0x1117,0x2833,0x0E35,0x2DA4,0x18B1,0x3230,
        0x07A7,0x3972,0x2748,0x0472,0x3815,0x0B07,0x2AE4,0x0725,
        0x1C85,0x2A32,0x16BF,0x2C53,0x1208,0x26CB,0x1A1E,0x3262,
        0x1198,0x2AF8,0x0CA9,0x25CB,0x0421,0x2DA3,0x0B28,0x3AB0,
        0x072D,0x1D17,0x3C74,0x19BC,0x0986,0x3AA7,0x0632,0x2156,
        0x0BE8,0x23DA,0x0188,0x37C3,0x20F6,0x07BB,0x3C0F,0x0FB2,
        0x3568,0x13C3,0x3A92,0x25B1,0x02AF,0x2EEC,0x2210,0x0760,
        0x2B84,0x1C65,0x040D,0x379E,0x0F7A,0x2A30,0x3A99,0x0521,
        0x33C1,0x0B55,0x3941,0x250F,0x15E3,0x2A80,0x12E8,0x2D09,
        0x1178,0x26C2,0x1448,0x368A,0x19F2,0x3AFD,0x0011,0x3325,
        0x1352,0x2B9E,0x14B7,0x25B8,0x1B41,0x21D0,0x2CA8,0x0CFD,
        0x159B,0x008D,0x297B,0x3A03,0x0703,0x18FA,0x2D1E,0x1FC2,
        0x37FE,0x140C,0x3DB3,0x1E1B,0x08E8,0x1F9B,0x2940,0x17C7,
        0x01E7,0x380B,0x07CA,0x3EE6,0x2199,0x0DBD,0x3D4F,0x0302,
        0x1D60,0x335C,0x1841,0x3E42,0x0D91,0x33E1,0x019A,0x302B,
        0x1A1B,0x23AC,0x02B3,0x3949,0x0906,0x35A6,0x194A,0x217A,
        0x2BA0,0x05F1,0x2F78,0x1ED7,0x3682,0x0B25,0x3BA4,0x118B,
        0x1DFC,0x235D,0x11D2,0x301D,0x1D09,0x33AC,0x1705,0x21FD,
        0x3DC8,0x0AA9,0x3653,0x005A,0x1F21,0x30EF,0x0784,0x214E,
        0x3F8B,0x05F7,0x3566,0x142E,0x3E0E,0x1B88,0x2711,0x15C1,
        0x215F,0x34D7,0x0ED7,0x25C4,0x321E,0x0FB9,0x2814,0x3EF8,
        0x1593,0x2F3B,0x1E16,0x0CE5,0x30E6,0x1970,0x1FA6,0x2680,
        0x09DD,0x312F,0x06AE,0x1C35,0x36F9,0x135E,0x3B84,0x1EA1,
        0x0C9E,0x3EE1,0x13D5,0x280A,0x1F8D,0x0BB4,0x17AE,0x2935,
        0x1483,0x2E23,0x1AF9,0x05F2,0x3D06,0x0A66,0x262E,0x0691,
        0x316D,0x0AA3,0x29B8,0x057E,0x2B27,0x1103,0x2782,0x0F5E,
        0x3D77,0x03FD,0x382C,0x07FA,0x3F74,0x0369,0x1896,0x3B18,
        0x2031,0x3E22,0x173F,0x0B6E,0x2267,0x3CD7,0x0C94,0x32DD,
        0x045D,0x2618,0x0D88,0x2CA4,0x195A,0x342C,0x05A8,0x3E77,
        0x222A,0x0E83,0x273C,0x1EDB,0x0528,0x2BD4,0x1424,0x2F8D,
        0x2435,0x0972,0x29A8,0x04B6,0x255D,0x146E,0x2931,0x0F2F,
        0x35DB,0x137E,0x32DA,0x11D4,0x1F04,0x255E,0x016E,0x3DDA,
        0x0CED,0x37ED,0x1A58,0x02DF,0x1779,0x2A6E,0x04CF,0x26B1,
        0x3629,0x0076,0x3F17,0x19CC,0x08B9,0x264D,0x024B,0x2DF4,
        0x0F3E,0x289D,0x1455,0x2464,0x3E6B,0x132D,0x371E,0x1BE5,
        0x0B68,0x2DDD,0x1006,0x290A,0x1EFD,0x08E6,0x3976,0x032B,
        0x2A6A,0x0A61,0x3059,0x01FE,0x174D,0x3735,0x1D39,0x0321,
        0x330F,0x0898,0x3DAE,0x238F,0x14ED,0x398C,0x026F,0x3742,
        0x1B43,0x2417,0x174F,0x2D5A,0x0ACA,0x2830,0x04C0,0x3454,
        0x22FD,0x1816,0x3357,0x06D3,0x3D1D,0x23C0,0x352C,0x0985,
        0x3E3D,0x01C3,0x209D,0x30F6,0x170D,0x3403,0x1416,0x3BD2,
        0x1B47,0x35D3,0x0F0B,0x3CC6,0x1CB0,0x33F0,0x0940,0x2ECF,
        0x1D0F,0x2430,0x10C4,0x2F65,0x0E5F,0x32C9,0x2894,0x0847,
        0x24E3,0x0E15,0x324D,0x1D5F,0x348B,0x01D9,0x28B2,0x131A,
        0x2AFE,0x119F,0x3372,0x0326,0x3AD4,0x0CB4,0x2EA3,0x10F0,
        0x30BD,0x19CB,0x3300,0x13B9,0x3A59,0x0B30,0x3639,0x2021,
        0x126A,0x3BA7,0x1614,0x3554,0x0B37,0x397A,0x1B7C,0x3F84,
        0x062E,0x2C6F,0x0A6E,0x270D,0x3B27,0x0ED2,0x3177,0x12C1,
        0x2772,0x1428,0x3349,0x2063,0x3E29,0x0FB7,0x34B9,0x1F75,
        0x0BC2,0x2BAF,0x0EAF,0x24B5,0x3BD1,0x0FC8,0x36D2,0x1C40,
        0x38FF,0x04EA,0x330E,0x1AFF,0x0953,0x2CD5,0x0227,0x29E8,
        0x227A,0x185C,0x3C1E,0x01A6,0x2FAB,0x18DF,0x232F,0x3377,
        0x1095,0x3E39,0x1CAC,0x2214,0x2D74,0x07A8,0x2BA4,0x19FA,
        0x2763,0x2009,0x1372,0x34CE,0x05FB,0x2282,0x2E8A,0x1300,
        0x2A8A,0x03FC,0x3CD3,0x101B,0x32CA,0x16DD,0x29D4,0x0EBA,
        0x2C8F,0x01BD,0x2177,0x2E27,0x1605,0x030F,0x1B91,0x2B3F,
        0x0EAB,0x2479,0x387C,0x10DF,0x2BBD,0x0372,0x28ED,0x1FB1,
        0x016C,0x1E53,0x2DC7,0x22DC,0x033C,0x16E6,0x3918,0x196E,
        0x061D,0x31AD,0x20C8,0x191C,0x26DD,0x1ECF,0x122C,0x33FC,
        0x1A20,0x2D0B,0x053E,0x280C,0x0EA7,0x2F2C,0x1CCC,0x38D5,
        0x0A68,0x3ED5,0x2145,0x1BC1,0x26C0,0x161B,0x243C,0x1E6C,
        0x0942,0x391A,0x0359,0x2CFF,0x1001,0x28A0,0x1A7A,0x06FE,
        0x313F,0x023E,0x2835,0x10C8,0x2A8B,0x1FEF,0x038F,0x1EBC,
        0x287B,0x1566,0x3CD1,0x1B02,0x0552,0x2D33,0x1C94,0x38F3,
        0x046E,0x2A11,0x0A1F,0x2E40,0x0815,0x1D37,0x244D,0x14AB,
        0x3A65,0x168C,0x32D1,0x03F5,0x2020,0x306E,0x15D6,0x09B3,
        0x22F2,0x2F85,0x1194,0x39DE,0x21C4,0x1036,0x3AF9,0x1547,
        0x3466,0x0518,0x1CC8,0x32E1,0x12D1,0x3676,0x0C00,0x16AA,
        0x2C9A,0x1950,0x06F5,0x3627,0x1427,0x3BE7,0x11F8,0x37CF,
        0x0DC3,0x39F8,0x042C,0x1C76,0x2C3F,0x1869,0x0C8C,0x3F32,
        0x0E84,0x34C5,0x1D7D,0x26F1,0x013D,0x3E9B,0x0964,0x37EC,
        0x127C,0x3B15,0x1AF0,0x0AC6,0x370D,0x1E42,0x3BA0,0x1235,
        0x324E,0x19EF,0x083E,0x2697,0x0CD0,0x39FC,0x1026,0x3763,
        0x17C2,0x3ECF,0x07D2,0x162C,0x3070,0x2133,0x0E25,0x2A45,
        0x3AA1,0x0C0C,0x36DE,0x010D,0x3CF1,0x099A,0x38E5,0x02A2,
        0x3BEC,0x0AE7,0x3838,0x1362,0x3F83,0x1876,0x0774,0x220D,
        0x3028,0x17FD,0x06A2,0x2EF0,0x0A0D,0x35C2,0x00DE,0x3B89,
        0x2AE6,0x1690,0x2505,0x1B6C,0x3745,0x002E,0x3F68,0x223D,
        0x0EDB,0x376A,0x1CEC,0x3DC9,0x0768,0x3390,0x17EF,0x2ECC,
        0x0E02,0x324B,0x0069,0x22FB,0x374C,0x1627,0x089D,0x22AE,
        0x3068,0x15CD,0x3B1C,0x1220,0x28FC,0x397F,0x0216,0x2FC2,
        0x068A,0x28C9,0x110A,0x3881,0x1832,0x063F,0x29BB,0x3FD1,
        0x18E2,0x0BCD,0x2B72,0x0310,0x30AA,0x1E46,0x0812,0x2BC3,
        0x0D02,0x392D,0x2525,0x0DCB,0x296F,0x05B9,0x3F4F,0x20AF,
        0x0024,0x38FA,0x2564,0x1013,0x293D,0x0C1A,0x267F,0x00EE,
        0x2E13,0x17AF,0x2313,0x3291,0x0FE8,0x3ADE,0x20AA,0x0679,
        0x2CAD,0x1924,0x0833,0x38DA,0x206F,0x112C,0x301F,0x1A27,
        0x260C,0x085F,0x3138,0x2372,0x1340,0x2D1F,0x07E3,0x27DF,
        0x0464,0x36A6,0x1CD2,0x3FA5,0x1882,0x2185,0x3214,0x0B70,
        0x2C35,0x12B5,0x24FF,0x3664,0x0C33,0x3FD4,0x2554,0x0201,
        0x1EE9,0x263B,0x1691,0x2D78,0x0FBE,0x2BD0,0x1CA1,0x2294,
        0x142A,0x29E7,0x195D,0x2E49,0x0413,0x2473,0x3A56,0x15F0,
        0x0010,0x2315,0x3551,0x0F70,0x3D41,0x1A26,0x2808,0x0D5A,
        0x2051,0x06EF,0x3D9A,0x0C15,0x215A,0x3248,0x1149,0x2E9A,
        0x18CF,0x258B,0x0BDE,0x1975,0x3015,0x1317,0x3835,0x07F8,
        0x3A6C,0x218A,0x1852,0x2B67,0x0B00,0x2076,0x3EFE,0x17DF,
        0x0B76,0x351A,0x00CF,0x23E3,0x1F58,0x0E70,0x2B38,0x1306,
        0x3D4E,0x18DB,0x2E8C,0x0CA2,0x27C1,0x3533,0x2134,0x00F2,
        0x1FA0,0x3573,0x1723,0x27BE,0x13EF,0x3D76,0x25EA,0x1307,
        0x2F6C,0x20D8,0x09C4,0x3B33,0x1F8C,0x2EC8,0x111C,0x2756,
        0x323E,0x0E0A,0x2005,0x3D1E,0x0380,0x2F75,0x16C6,0x3452,
        0x21E2,0x090D,0x3CCF,0x0B5F,0x29E9,0x00AB,0x3559,0x25E3,
        0x1422,0x322A,0x24D9,0x0EF3,0x2D22,0x1BEC,0x23F9,0x035A,
        0x3519,0x1FE1,0x1573,0x3F76,0x00EB,0x219C,0x3980,0x1662,
        0x2A03,0x0FC4,0x2CBD,0x0038,0x30A6,0x0700,0x1D62,0x26F5,
        0x04F1,0x33A0,0x0DC2,0x1E0D,0x28A6,0x06CB,0x1C2C,0x3558,
        0x0D89,0x3C51,0x0757,0x1D9B,0x34DE,0x177D,0x06C3,0x3129,
        0x355B,0x00F4,0x269F,0x0CD6,0x36B0,0x1BE0,0x094B,0x341C,
        0x1D65,0x3C3B,0x12EB,0x2B6D,0x1D2A,0x0603,0x3318,0x14B2,
        0x2975,0x34F0,0x10D0,0x2F58,0x05DB,0x1DDA,0x2B58,0x093A,
        0x3442,0x0452,0x39D8,0x2B02,0x00E8,0x2462,0x0C84,0x276B,
        0x1DE7,0x0506,0x2FB6,0x1249,0x346E,0x266D,0x0242,0x2DD3,
        0x1D81,0x2503,0x199D,0x3FD0,0x0731,0x35E6,0x1AA2,0x339A,
        0x0A90,0x25B7,0x0193,0x3E40,0x1DC9,0x0910,0x1436,0x3A6D,
        0x26E7,0x066C,0x3C15,0x0AB9,0x34B4,0x048C,0x1B33,0x3863,
        0x00BE,0x193B,0x313C,0x161D,0x02B6,0x1A94,0x3506,0x0863,
        0x1A03,0x2BE1,0x054A,0x1BDB,0x32E8,0x14AD,0x3FA3,0x0D46,
        0x1AE5,0x2CC7,0x1476,0x27EA,0x1625,0x307C,0x1A67,0x0B21,
        0x3BB4,0x0211,0x1B6B,0x343E,0x0530,0x39BC,0x0C41,0x3DA2,
        0x0DD5,0x2EAF,0x0596,0x1C42,0x333C,0x183F,0x0DBC,0x346F,
        0x0BD4,0x3C8E,0x21FA,0x15E4,0x2391,0x3B70,0x0EDD,0x2FE2,
        0x19AB,0x20F7,0x3B2C,0x00B5,0x385E,0x151E,0x2E04,0x1243,
        0x2923,0x158C,0x3103,0x246F,0x049F,0x3ECA,0x20F2,0x106C,
        0x0BE9,0x3DD7,0x1610,0x2B13,0x125E,0x2F9C,0x25EB,0x1063,
        0x2D0D,0x0BEA,0x2722,0x027E,0x30FF,0x21B3,0x1844,0x3FBD,
        0x03D2,0x1E7F,0x26A8,0x1799,0x3C20,0x0D96,0x237E,0x3AF8,
        0x133D,0x2881,0x1E69,0x10A3,0x1F6D,0x3C9D,0x16AB,0x2E05,
        0x1067,0x3E91,0x0D35,0x3901,0x06F2,0x1971,0x32AE,0x0DA0,
        0x3BB2,0x0627,0x30F1,0x0CCC,0x297A,0x1E7B,0x03AF,0x1FEB,
        0x2AB8,0x11F5,0x31EA,0x2236,0x1031,0x3792,0x295B,0x1ACC,
        0x0CEC,0x2EBD,0x15CC,0x2A3C,0x10CB,0x23AE,0x3285,0x1152,
        0x24B7,0x3EBC,0x07C2,0x2B62,0x1DFA,0x3CFC,0x0F6D,0x245B,
        0x3B8B,0x1256,0x383E,0x26D9,0x09FC,0x2B29,0x069D,0x1FB4,
        0x3900,0x0259,0x366D,0x0653,0x3E9D,0x0A1C,0x1FA2,0x2BFF,
        0x1157,0x2042,0x3E2B,0x0BAF,0x2848,0x159D,0x31B3,0x1757,
        0x2A2E,0x11C6,0x3590,0x26B0,0x093B,0x2FE3,0x25C7,0x02C1,
        0x2E5A,0x1E48,0x05D2,0x381E,0x0A3F,0x1EA7,0x34F3,0x0247,
        0x3DCB,0x09BB,0x25FF,0x18B9,0x201E,0x32E7,0x0900,0x3E04,
        0x0385,0x388F,0x09F4,0x1A88,0x2AA0,0x0EB5,0x300E,0x253E,
        0x2A5E,0x112A,0x3215,0x07A5,0x3D20,0x0246,0x2002,0x3B21,
        0x048F,0x29BA,0x172C,0x35E7,0x0E6D,0x389D,0x0908,0x2330,
        0x3018,0x0B71,0x362F,0x01AF,0x2280,0x31B8,0x1667,0x02BB,
        0x20D1,0x3E15,0x06C6,0x234D,0x3127,0x0916,0x358C,0x02FA,
        0x3343,0x2227,0x1A71,0x24E8,0x1D5E,0x3D0E,0x11C5,0x29D9,
        0x148E,0x2C1A,0x10D5,0x3707,0x1371,0x39D7,0x16B3,0x3CBF,
        0x07C1,0x36AF,0x1B86,0x057D,0x3004,0x209C,0x034D,0x33DB,
        0x2487,0x1004,0x3238,0x01A8,0x3F34,0x1EFE,0x0770,0x2CB6,
        0x0D51,0x1E86,0x3587,0x0E80,0x308B,0x0695,0x2A42,0x1D66,
        0x0251,0x2E2C,0x0AEC,0x189F,0x355A,0x11CB,0x247B,0x3149,
        0x0F1B,0x2A8E,0x1B5D,0x2EB3,0x12B0,0x2698,0x3A38,0x056E,
        0x368F,0x2446,0x14F1,0x2FCB,0x1052,0x2B4C,0x0010,0x2773,
        0x077E,0x3C2D,0x20A3,0x0E7C,0x3D6C,0x1FBA,0x12B8,0x3A86,
        0x224F,0x10E6,0x2AFA,0x1758,0x2DA2,0x11C2,0x2292,0x2A93,
        0x143D,0x2CE6,0x1202,0x30C0,0x04C5,0x26BC,0x1AF1,0x22C6,
        0x2C50,0x1048,0x205B,0x36B3,0x14B4,0x3985,0x02E8,0x1AD1,
        0x0671,0x3755,0x2314,0x180E,0x21E8,0x319D,0x0D9D,0x1B63,
        0x3347,0x149F,0x3F27,0x07DD,0x2A6D,0x13F5,0x2C1F,0x1028,
        0x19D9,0x3A2E,0x1517,0x2E64,0x1B93,0x086B,0x372C,0x1C64,
        0x2F54,0x0E6B,0x1BF9,0x3649,0x0F17,0x2B82,0x189C,0x25E1,
        0x1F17,0x095B,0x30A3,0x0159,0x2C52,0x0A49,0x27C9,0x03D3,
        0x3886,0x1ADF,0x25D0,0x0271,0x2EC6,0x0956,0x313A,0x0F14,
        0x2CFD,0x13B4,0x2668,0x3C2E,0x0D34,0x160F,0x3ECB,0x17CB,
        0x0543,0x3A01,0x20D6,0x19DD,0x2862,0x123D,0x3AC1,0x1591,
        0x33E7,0x04B2,0x2675,0x1829,0x223E,0x376E,0x0BBC,0x33BC,
        0x17BE,0x22F4,0x3279,0x208E,0x0166,0x3A83,0x1C56,0x048E,
        0x3D85,0x20CA,0x0876,0x234B,0x37F8,0x0328,0x1716,0x3112,
        0x19FB,0x0804,0x2A39,0x03C7,0x3B61,0x1D97,0x3825,0x12D2,
        0x30B5,0x1A48,0x025D,0x2D5E,0x1910,0x04B8,0x328B,0x09F6,
        0x1A82,0x3E4E,0x0CD5,0x35D6,0x03A3,0x3F2B,0x0864,0x1C5A,
        0x329D,0x066E,0x3A51,0x0EBE,0x3D31,0x1333,0x3779,0x0CD2,
        0x173A,0x334C,0x2754,0x003F,0x2D37,0x0B44,0x1FD7,0x3B5B,
        0x2F4F,0x1DA3,0x03C0,0x2E77,0x0A32,0x1655,0x37D1,0x2780,
        0x0AE9,0x2E08,0x0F43,0x247A,0x1A83,0x3AE2,0x0104,0x345E,
        0x2074,0x070F,0x2AD8,0x0E11,0x3EA6,0x25CD,0x0CBD,0x2933,
        0x079C,0x334F,0x26A5,0x01DD,0x3F1A,0x1CCA,0x05E8,0x3BB8,
        0x128F,0x36D8,0x160D,0x3B07,0x16F5,0x3674,0x13D2,0x33F5,
        0x2222,0x087B,0x3D80,0x2112,0x181B,0x24CD,0x1BB4,0x2705,
        0x0028,0x3A9D,0x0935,0x1976,0x2C76,0x234F,0x096B,0x308E,
        0x1C8F,0x28F4,0x0867,0x37D8,0x0B65,0x300C,0x02C8,0x2AB6,
        0x1FE2,0x3C7B,0x0C66,0x39AF,0x013A,0x15E1,0x2D53,0x13CA,
        0x3F22,0x07E5,0x1514,0x3C70,0x25E9,0x0CAD,0x3041,0x1806,
        0x253B,0x11A1,0x3193,0x18C5,0x0DAD,0x219B,0x2B68,0x0FB4,
        0x257E,0x3AA8,0x124E,0x3312,0x1ACA,0x0A91,0x22C9,0x33D3,
        0x0CB7,0x2480,0x39D6,0x105D,0x3628,0x2973,0x151F,0x2518,
        0x33B4,0x017B,0x2F9D,0x14B6,0x1F6F,0x27AC,0x1808,0x389F,
        0x0FA2,0x2758,0x1D2E,0x2AA5,0x0A6D,0x2D24,0x0192,0x2175,
        0x3BA6,0x05DF,0x1986,0x3F57,0x1279,0x248D,0x3410,0x0FE9,
        0x20FE,0x0E48,0x3FD4,0x1EAF,0x39E0,0x235E,0x05C4,0x18B0,
        0x3BD9,0x0191,0x1F44,0x319E,0x054C,0x1D87,0x2F37,0x0C80,
        0x3CE2,0x24B0,0x11D9,0x32A4,0x0502,0x1867,0x397C,0x12BE,
        0x3C73,0x1ED5,0x1381,0x2D15,0x1524,0x2422,0x304F,0x0CE0,
        0x2A17,0x0495,0x28B7,0x0B94,0x26C3,0x0672,0x2E42,0x1D1B,
        0x0EF1,0x303D,0x1555,0x343D,0x0AF4,0x3E9C,0x052F,0x386F,
        0x20FC,0x1713,0x22AD,0x358E,0x022E,0x38C4,0x1E60,0x1161,
        0x3D2F,0x0EEE,0x3319,0x16CC,0x2567,0x1BB8,0x373F,0x1466,
        0x093E,0x19B0,0x29C6,0x124B,0x27F1,0x3DF6,0x217D,0x041C,
        0x2786,0x1CAD,0x2D0E,0x05AE,0x1E66,0x29C1,0x13E8,0x3890,
        0x0A30,0x35F2,0x0044,0x3B95,0x1CDC,0x35BA,0x0B6C,0x3FCD,
        0x011C,0x1E4D,0x2DD1,0x092C,0x26D0,0x3EEF,0x1813,0x05AF,
        0x2C34,0x1D18,0x08B2,0x271B,0x20EA,0x0C56,0x3C0E,0x072A,
        0x1D35,0x2A72,0x0F49,0x2405,0x398F,0x0B1C,0x2C9F,0x0108,
        0x2373,0x3712,0x02F4,0x182E,0x35DD,0x2358,0x1B8A,0x2EF7,
        0x0B7E,0x2AF5,0x1F96,0x0D1B,0x31B5,0x1881,0x07E2,0x27CE,
        0x0168,0x34D5,0x1A0E,0x0836,0x1396,0x304E,0x1D11,0x2CBB,
        0x1190,0x23EA,0x36D6,0x10A9,0x3D57,0x2625,0x12BB,0x29F8,
        0x17EB,0x02FF,0x38DD,0x1AB8,0x2130,0x2B3C,0x009C,0x2DAA,
        0x229C,0x0414,0x38AE,0x0D71,0x33AF,0x0AB2,0x19E5,0x35EB,
        0x144F,0x3FA8,0x10F6,0x34AE,0x1329,0x3DFA,0x22D1,0x007F,
        0x39EF,0x1FA1,0x0565,0x1E31,0x2BBF,0x1251,0x333D,0x1508,
        0x2F50,0x0C44,0x3173,0x10F2,0x2B0D,0x0DF1,0x2E57,0x21EB,
        0x0094,0x26BE,0x203C,0x0411,0x3CD6,0x0A2E,0x22FF,0x31D3,
        0x1DE2,0x2F10,0x03C5,0x3327,0x1ED0,0x0883,0x1B5A,0x3501,
        0x1045,0x38EE,0x0E54,0x360F,0x15DE,0x3ED7,0x02B9,0x1D20,
        0x2C7E,0x1327,0x293F,0x0C31,0x2891,0x05E1,0x2D9D,0x1933,
        0x3180,0x0E51,0x227E,0x3740,0x149A,0x01F0,0x2171,0x3942,
        0x13D0,0x36C0,0x17A2,0x3FD4,0x00AF,0x1DDC,0x2845,0x1958,
        0x38C6,0x1380,0x3D28,0x0649,0x19E6,0x323A,0x13A9,0x3C29,
        0x1AB2,0x0D4F,0x20A1,0x2E1D,0x14E2,0x059F,0x3F06,0x0FAD,
        0x3578,0x12FB,0x39E6,0x25B9,0x0410,0x38DC,0x1CC1,0x3C8F,
        0x2DB4,0x11DD,0x2875,0x32F4,0x20C5,0x0086,0x3E8E,0x0C6B,
        0x34AB,0x1BD7,0x0B54,0x2C55,0x1763,0x0994,0x37EB,0x066A,
        0x325C,0x1D2F,0x273F,0x09F1,0x2FDE,0x0DDF,0x3530,0x1DBE,
        0x1168,0x3139,0x17B6,0x2A91,0x04D2,0x3A98,0x27BD,0x0010,
        0x237F,0x1C22,0x2C8E,0x0298,0x2F11,0x1DDB,0x101A,0x2D2D,
        0x0B9B,0x2A44,0x1A78,0x3BDE,0x017E,0x2886,0x1FCD,0x0773,
        0x1DE9,0x3F92,0x0451,0x2737,0x1C58,0x3BC0,0x05DC,0x3696,
        0x1954,0x34A8,0x0DCE,0x2F9B,0x12D7,0x2E11,0x1784,0x0043,
        0x3FBE,0x0D70,0x383C,0x2343,0x0FA7,0x36C1,0x28C6,0x14E4,
        0x2EDE,0x0087,0x1F65,0x285F,0x0941,0x2278,0x33ED,0x2685,
        0x074E,0x3E4D,0x1FC1,0x3383,0x1071,0x3D0F,0x2305,0x118F,
        0x2024,0x38D3,0x04C6,0x16E9,0x2C87,0x1D3C,0x2EC5,0x0FD5,
        0x2874,0x0374,0x2F42,0x14FE,0x2BE9,0x37AD,0x0D9C,0x3065,
        0x0349,0x28A8,0x0B9C,0x347A,0x25E2,0x0463,0x2983,0x0A1D,
        0x3341,0x2470,0x3E46,0x092F,0x3928,0x2223,0x18D3,0x27E8,
        0x0291,0x309D,0x08AC,0x1B20,0x2A56,0x0F38,0x2C3B,0x1481,
        0x0A7F,0x3AB8,0x04C3,0x15DA,0x383F,0x2672,0x0FCD,0x29D7,
        0x0514,0x27D7,0x392E,0x0396,0x2232,0x307E,0x1C45,0x2529,
        0x0ECA,0x3EF5,0x1309,0x3716,0x15B8,0x3B48,0x2192,0x062D,
        0x29CB,0x0BB9,0x3D1F,0x10B0,0x254C,0x1E1D,0x0FDA,0x2BF7,
        0x392F,0x0861,0x1877,0x3C18,0x23F0,0x07AF,0x374E,0x18E0,
        0x3F59,0x1171,0x34E9,0x0E28,0x2EFB,0x0FCB,0x31DE,0x1A44,
        0x2C3D,0x0F4C,0x1F4A,0x37AE,0x083D,0x17B8,0x2A77,0x1472,
        0x2CD0,0x07E0,0x3AE1,0x1A85,0x2769,0x06B7,0x396C,0x20FF,
        0x11ED,0x2B3B,0x1A3F,0x0AE3,0x2FB0,0x187B,0x05D8,0x3A61,
        0x0C53,0x23ED,0x3B1A,0x1280,0x3027,0x1A1C,0x0AF8,0x1673,
        0x2F36,0x1A91,0x03AE,0x16B8,0x2AFD,0x1C5E,0x0292,0x3428,
        0x08A1,0x271F,0x1BA3,0x3CD9,0x0A2F,0x3616,0x0710,0x3E18,
        0x0D10,0x34E5,0x224D,0x0BE7,0x1FA3,0x0624,0x24A7,0x11FE,
        0x336B,0x1558,0x2DFB,0x1E22,0x0FE6,0x361C,0x1D00,0x2F52,
        0x145A,0x051B,0x1633,0x3120,0x11E0,0x29EC,0x082A,0x386A,
        0x20DA,0x16FA,0x2336,0x3DB8,0x13A0,0x366F,0x0647,0x2406,
        0x1785,0x2593,0x1D63,0x2B9D,0x08C7,0x1B03,0x35ED,0x14FF,
        0x3CA1,0x191F,0x0E38,0x1E4B,0x3E67,0x155C,0x004E,0x3A97,
        0x1FF2,0x07DF,0x2CE3,0x0243,0x2A53,0x08B6,0x1961,0x3FD4,
        0x1421,0x3467,0x0171,0x201C,0x2FF6,0x08EC,0x3DED,0x1CBC,
        0x0E27,0x210F,0x3134,0x1553,0x0C81,0x1F0A,0x282B,0x0392,
        0x2197,0x311F,0x0648,0x23AF,0x17C9,0x3816,0x0A0C,0x3CFB,
        0x0289,0x360C,0x24B4,0x1273,0x31FF,0x2539,0x0C0B,0x3E87,
        0x0FC6,0x1F3F,0x23EF,0x024A,0x3E2D,0x1E47,0x0E29,0x3473,
        0x2603,0x050C,0x3C0A,0x2040,0x0221,0x3D43,0x2519,0x12DB,
        0x2BB6,0x1B1E,0x081C,0x3304,0x0454,0x3C19,0x1F4F,0x3702,
        0x0F27,0x3A15,0x1EDA,0x3562,0x0917,0x3987,0x17C4,0x2394,
        0x3C17,0x0DC1,0x2F8B,0x1142,0x2AA2,0x18AD,0x25C1,0x1356,
        0x2D01,0x19B8,0x081F,0x3C30,0x2A08,0x187F,0x3EC8,0x2032,
        0x0920,0x3A22,0x2117,0x004A,0x3F7F,0x22FE,0x072C,0x17A0,
        0x3D01,0x1EAB,0x2B99,0x1C71,0x0084,0x349E,0x1F7B,0x1378,
        0x323C,0x0AF7,0x2E87,0x00F7,0x3123,0x0C8F,0x2006,0x3E51,
        0x2ED8,0x0D6E,0x3477,0x0F09,0x3D98,0x238A,0x0338,0x30B4,
        0x0A11,0x209B,0x3280,0x28C5,0x090B,0x34D8,0x2710,0x116A,
        0x2DE6,0x1AE8,0x222B,0x348C,0x0FF7,0x2679,0x30A2,0x0CAB,
        0x2BDE,0x22EE,0x19C2,0x3800,0x123C,0x34D0,0x2339,0x0347,
        0x29CC,0x379D,0x0533,0x22B9,0x39AE,0x2A31,0x0DE0,0x3233,
        0x0A56,0x19D2,0x29AD,0x3AD5,0x0361,0x1C95,0x27FD,0x1463,
        0x2A1E,0x192D,0x09AD,0x3DC4,0x0120,0x1B25,0x2D9F,0x034A,
        0x27BB,0x38A5,0x13D7,0x32D7,0x11A7,0x3055,0x2268,0x08CA,
        0x1920,0x2EA1,0x13F1,0x274A,0x329F,0x0E93,0x1E3B,0x35C8,
        0x035F,0x3FD4,0x2624,0x0FB5,0x2B45,0x14AF,0x2DC9,0x00D6,
        0x2A69,0x06A9,0x2E7A,0x1385,0x2820,0x0EFE,0x2FE8,0x0686,
        0x1C9C,0x2A24,0x0079,0x346B,0x220A,0x03F6,0x3B4B,0x1F40,
        0x0137,0x3846,0x1CD9,0x2385,0x0E8F,0x31A2,0x021C,0x3544,
        0x1B71,0x2530,0x1135,0x2FFC,0x18F2,0x0CF1,0x3A9A,0x27DD,
        0x0222,0x341A,0x0AC0,0x3A1A,0x22F3,0x15AE,0x3C9C,0x0459,
        0x1C1F,0x3B08,0x10A6,0x1E24,0x26AE,0x1914,0x3260,0x02D2,
        0x1C4C,0x39A3,0x01FF,0x2FBF,0x1F35,0x12D8,0x2D38,0x1727,
        0x2433,0x39C8,0x01CC,0x1370,0x2E4C,0x205C,0x0D31,0x3691,
        0x0485,0x3BE5,0x0B3E,0x18C2,0x3D5E,0x1F7A,0x033B,0x3865,
        0x1E08,0x0551,0x2E28,0x0ACE,0x2AEB,0x0663,0x175A,0x3278,
        0x1FCA,0x0F5D,0x1CCE,0x3329,0x01A5,0x176C,0x3CA3,0x1376,
        0x38B5,0x2653,0x1577,0x0C55,0x2261,0x3575,0x06EC,0x3959,
        0x0B77,0x345D,0x28C1,0x1390,0x2388,0x399F,0x0EC5,0x35F5,
        0x1DAD,0x0717,0x2A09,0x0A95,0x2B86,0x0449,0x37AB,0x1C9B,
        0x3B36,0x1078,0x371B,0x061A,0x1AD0,0x2C72,0x08FC,0x20EE,
        0x3170,0x0D2E,0x190E,0x386B,0x21E3,0x0A6B,0x1C03,0x3DEE,
        0x12BA,0x2583,0x0CD9,0x3F89,0x018F,0x364F,0x2225,0x163E,
        0x3254,0x100A,0x3F5B,0x1E36,0x0E2E,0x30D3,0x1083,0x32EA,
        0x24A8,0x0D77,0x2FEE,0x045B,0x3A6F,0x1648,0x2870,0x0F01,
        0x2D84,0x04E0,0x3C6C,0x08AE,0x1FF7,0x31B0,0x11A3,0x20C6,
        0x2E99,0x12D5,0x26FD,0x0F48,0x2D6C,0x08D1,0x2917,0x2135,
        0x2B3A,0x0741,0x2251,0x3727,0x0544,0x3C14,0x1443,0x2749,
        0x079A,0x234E,0x1AAD,0x24E0,0x0694,0x3B0D,0x0B1F,0x3732,
        0x074C,0x1589,0x25F9,0x355D,0x182D,0x05BF,0x2FF5,0x13E4,
        0x2997,0x1604,0x27A2,0x2F44,0x06BE,0x1570,0x33D8,0x239E,
        0x0E46,0x3AD0,0x1663,0x3E69,0x1BC6,0x216B,0x3B90,0x14DB,
        0x0936,0x3EC9,0x276C,0x11C8,0x2CE4,0x2136,0x0746,0x2FB8,
        0x1EC2,0x010B,0x3E47,0x1CF4,0x30C3,0x10A0,0x2D1B,0x21CC,
        0x15D3,0x1F77,0x04A4,0x2F95,0x1D12,0x08BA,0x308C,0x20AB,
        0x1114,0x338B,0x18F9,0x3A0E,0x1557,0x268C,0x132A,0x29E6,
        0x018D,0x2BF4,0x0BA6,0x21FE,0x3E9F,0x1592,0x39EC,0x11B3,
        0x248A,0x1CE6,0x2E44,0x01DA,0x1692,0x35DF,0x2357,0x08DF,
        0x210B,0x31F4,0x18DA,0x22AF,0x2D40,0x14D0,0x0B2F,0x3A8D,
        0x046C,0x2791,0x206E,0x08FB,0x39AC,0x1C0A,0x2BA5,0x09EB,
        0x1B36,0x3D7F,0x13F7,0x2957,0x0B5C,0x2F08,0x07DB,0x3DC3,
        0x132E,0x291B,0x1698,0x35AC,0x2657,0x0397,0x3824,0x097D,
        0x1A1A,0x3799,0x05AA,0x3FC5,0x1842,0x3388,0x0D67,0x14DA,
        0x3EA9,0x1788,0x2FE9,0x12A2,0x2BFE,0x21E0,0x0969,0x305B,
        0x376D,0x1237,0x3F11,0x10D8,0x32D4,0x1945,0x2B0B,0x1167,
        0x2860,0x3F88,0x1A96,0x0831,0x3C47,0x22CA,0x1B28,0x3A21,
        0x0999,0x330A,0x0111,0x2022,0x38F7,0x2328,0x0961,0x16ED,
        0x2FA1,0x21B5,0x081B,0x25A8,0x0258,0x2DE5,0x0B2D,0x263C,
        0x340D,0x20D7,0x05FD,0x3AA5,0x0AD5,0x3489,0x1A97,0x2563,
        0x0E99,0x2D7A,0x113E,0x2B22,0x047E,0x3C80,0x1B2E,0x0077,
        0x3F38,0x241A,0x3698,0x0F28,0x3B63,0x169A,0x26E4,0x04DE,
        0x3FA1,0x2460,0x00D3,0x1D56,0x2E78,0x0822,0x3EEA,0x0F2D,
        0x3392,0x14F6,0x1E9A,0x30EE,0x0CAE,0x28EE,0x00FC,0x2D39,
        0x06C7,0x3414,0x0B73,0x3DA1,0x28E9,0x0542,0x3162,0x181E,
        0x3790,0x03F9,0x3929,0x09A9,0x1D7E,0x3C8C,0x1BEB,0x2993,
        0x192E,0x350B,0x127F,0x2EC2,0x2354,0x0654,0x15B6,0x37C9,
        0x27B1,0x059D,0x3453,0x170B,0x3782,0x1264,0x241C,0x1ACD,
        0x32E3,0x0C08,0x2E55,0x0E1C,0x1A70,0x2B1F,0x14DE,0x24F6,
        0x30E2,0x0E8C,0x294C,0x1FB0,0x02C5,0x1E01,0x38BB,0x260E,
        0x01BE,0x29D3,0x0BD3,0x3A7D,0x0DEA,0x1B52,0x344A,0x15E5,
        0x0C26,0x2909,0x03B2,0x2A01,0x0C3D,0x2731,0x00CD,0x33E5,
        0x1E7C,0x0426,0x2F7B,0x1FD3,0x1069,0x3153,0x02AE,0x25C8,
        0x1E6B,0x1214,0x3E3B,0x17CA,0x0CF5,0x2CA0,0x1CB1,0x3CF8,
        0x006D,0x1ADE,0x36CE,0x0EF9,0x34F4,0x1354,0x3988,0x1B74,
        0x00B9,0x17E5,0x2E7D,0x15DB,0x2AE1,0x12CF,0x3DBA,0x0465,
        0x37AA,0x1880,0x339E,0x0B1E,0x28AF,0x0E81,0x2678,0x316A,
        0x131D,0x0895,0x1996,0x2B6A,0x01ED,0x3269,0x109D,0x2CAB,
        0x17BA,0x0D5D,0x2205,0x3C4F,0x0EA5,0x350A,0x1C20,0x2789,
        0x076F,0x3CE6,0x258D,0x0368,0x381C,0x13A2,0x361F,0x1503,
        0x3CAD,0x1783,0x26E8,0x1154,0x1D99,0x3AB4,0x1053,0x2BCE,
        0x0E1B,0x1E3A,0x27E1,0x160E,0x2AC8,0x02F8,0x3324,0x07D1,
        0x2465,0x0A7B,0x3876,0x02AB,0x177C,0x3E72,0x2245,0x020A,
        0x1846,0x2E31,0x0F6F,0x2665,0x008A,0x20B7,0x3106,0x03D0,
        0x1FC0,0x3ADA,0x01AE,0x215B,0x395A,0x07A4,0x3E84,0x1C2A,
        0x0132,0x3B7B,0x13E6,0x35E3,0x1AA4,0x3057,0x06A7,0x1F34,
        0x3651,0x1A24,0x336C,0x037C,0x211A,0x3FB1,0x002A,0x2B1A,
        0x3A23,0x1BF1,0x3513,0x1556,0x3C5D,0x1684,0x385B,0x21C1,
        0x0D37,0x2C17,0x0ED9,0x38BE,0x24EF,0x0BC0,0x3F51,0x0E74,
        0x379C,0x21EC,0x088E,0x2366,0x32B0,0x03DF,0x356F,0x0DA4,
        0x2627,0x3171,0x1449,0x2947,0x1938,0x27EF,0x06DF,0x30E5,
        0x1EBB,0x3D3A,0x09C5,0x3821,0x02CB,0x242F,0x0D23,0x2F5A,
        0x200B,0x06E2,0x235F,0x39FD,0x13D9,0x373B,0x0793,0x17FF,
        0x3539,0x1E82,0x3C13,0x0C02,0x25BA,0x1A33,0x3D18,0x0B23,
        0x36BF,0x1C6D,0x2DBF,0x05EF,0x29AB,0x1809,0x02E0,0x3157,
        0x1FBE,0x1679,0x0A5D,0x2D8F,0x18BD,0x26B4,0x07BF,0x2ADB,
        0x1C69,0x03CF,0x3699,0x206C,0x07AD,0x22D5,0x2F91,0x022F,
        0x20AD,0x3B82,0x0726,0x33FA,0x0F96,0x304D,0x1321,0x1F1C,
        0x3DE9,0x16E5,0x2642,0x1D19,0x3161,0x0FC1,0x33DA,0x1D76,
        0x3B94,0x08C3,0x1EEE,0x3FA0,0x1B26,0x39F3,0x10AC,0x36D9,
        0x14A7,0x2483,0x1BA5,0x3245,0x1410,0x2F6D,0x109B,0x33E8,
        0x2193,0x0C2D,0x2E39,0x07C3,0x2B07,0x0CB5,0x3C55,0x1146,
        0x23A0,0x0F93,0x2543,0x1C68,0x2DD7,0x11A5,0x2633,0x17E3,
        0x05CD,0x2461,0x0A42,0x2F1E,0x052D,0x2CCC,0x09D2,0x1B83,
        0x3CF9,0x128A,0x3365,0x014F,0x1CBD,0x2AF4,0x14A8,0x2C70,
        0x0457,0x3203,0x196A,0x39CF,0x0F68,0x287D,0x12A5,0x2B44,
        0x1BFD,0x0A13,0x3A32,0x04A6,0x3F4E,0x0C2E,0x365D,0x106E,
        0x2BA6,0x0E55,0x29FC,0x2173,0x18D0,0x3553,0x1B9E,0x26CC,
        0x1216,0x3F1C,0x1AD7,0x026E,0x3088,0x218E,0x1D46,0x2AAD,
        0x05A3,0x2E24,0x1533,0x20C0,0x390A,0x0729,0x1DE6,0x2A33,
        0x039B,0x312E,0x0C87,0x3791,0x1165,0x3297,0x22E5,0x0D05,
        0x39BD,0x23A4,0x354C,0x0FE4,0x3BD8,0x0DE2,0x3370,0x102D,
        0x241E,0x312B,0x0EDF,0x29BF,0x3974,0x0C1F,0x155F,0x3EE4,
        0x25F7,0x1127,0x2E12,0x1CBF,0x3E99,0x0979,0x21C2,0x359F,
        0x012F,0x2C25,0x0BA5,0x3BD3,0x07AA,0x2BE0,0x0C79,0x29DE,
        0x11FD,0x3356,0x23A7,0x0C49,0x2E98,0x0759,0x2A46,0x0A38,
        0x2C09,0x06B9,0x3F0C,0x0AD3,0x26C6,0x0320,0x28B8,0x094A,
        0x2C6A,0x164F,0x2283,0x39DD,0x1255,0x26DE,0x1740,0x32F9,
        0x049C,0x3E1A,0x0A07,0x393C,0x06B2,0x3694,0x0ADF,0x3119,
        0x3DD5,0x165A,0x37C4,0x1A63,0x255A,0x143B,0x30E1,0x22F1,
        0x05FE,0x204E,0x2793,0x15AA,0x3B51,0x0708,0x33D7,0x1760,
        0x2838,0x0FD4,0x2A13,0x0217,0x2ECE,0x1FC4,0x3F81,0x0629,
        0x375A,0x23E5,0x10D6,0x2C4B,0x125D,0x2EA0,0x158D,0x26FE,
        0x041E,0x36ED,0x1B3B,0x0727,0x301B,0x0A4D,0x3B9B,0x004D,
        0x32ED,0x0A9A,0x212E,0x2B8E,0x1767,0x0C46,0x3B17,0x11C9,
        0x384B,0x22A6,0x02FE,0x2C30,0x0DB9,0x317B,0x23E9,0x11B2,
        0x3A64,0x15FB,0x253A,0x1A4F,0x2841,0x0A9C,0x3D89,0x1D8F,
        0x137B,0x0063,0x1B27,0x289F,0x0532,0x2FF2,0x1A72,0x3AFF,
        0x0ABC,0x1F60,0x3F6A,0x0015,0x188A,0x284D,0x3397,0x19D4,
        0x0ADA,0x3589,0x17B2,0x008B,0x2496,0x1ABC,0x2A47,0x0E85,
        0x2F6E,0x1224,0x349F,0x13DA,0x2531,0x19A0,0x3AD3,0x060F,
        0x2FAE,0x19DA,0x033E,0x363A,0x1681,0x2752,0x13BB,0x3CF6,
        0x1D29,0x303C,0x117E,0x2A26,0x1733,0x3BC1,0x122E,0x3658,
        0x1E67,0x3DD8,0x03C6,0x1B89,0x2EFA,0x00DC,0x2A36,0x0EAD,
        0x2D58,0x1364,0x319C,0x15A0,0x2AE0,0x19B5,0x2846,0x1475,
        0x0CE1,0x295F,0x017A,0x2BA3,0x0B6B,0x3ED2,0x0304,0x396D,
        0x18E9,0x3583,0x091B,0x3094,0x199E,0x2659,0x0F1E,0x3D75,
        0x0AF3,0x3634,0x1E8A,0x3C03,0x16FE,0x07C4,0x1A2E,0x2D88,
        0x1675,0x02BD,0x3386,0x1D45,0x251D,0x0164,0x3C58,0x1966,
        0x2D6E,0x133F,0x24D7,0x3FCB,0x10EF,0x2813,0x144D,0x2D5C,
        0x22F9,0x1694,0x34DD,0x0F60,0x3D29,0x25EE,0x0152,0x320A,
        0x0AEB,0x1B61,0x3DAF,0x1426,0x35C4,0x1887,0x0010,0x3031,
        0x1CF2,0x096D,0x3E10,0x01D1,0x3920,0x1EDE,0x0515,0x291F,
        0x363B,0x1EFF,0x3F47,0x1268,0x2B4D,0x2025,0x01CE,0x1E74,
        0x2E1F,0x0659,0x24DA,0x1C30,0x303F,0x13C6,0x0494,0x1FAC,
        0x2C9D,0x0612,0x26FC,0x3A34,0x0D45,0x3743,0x04F0,0x3C44,
        0x1DB0,0x26CE,0x044F,0x20A5,0x307D,0x0027,0x240C,0x1F37,
        0x0EAA,0x3E3C,0x2600,0x1140,0x2CB2,0x04AA,0x3216,0x21DB,
        0x0101,0x18EF,0x3830,0x0511,0x34F6,0x0DC0,0x2D8E,0x1AFD,
        0x0616,0x134D,0x2896,0x3529,0x0FDB,0x3F69,0x0B2C,0x382D,
        0x1E19,0x276D,0x0162,0x240B,0x0BA7,0x3C9A,0x02BA,0x2D11,
        0x35BC,0x1106,0x3B98,0x1215,0x34B8,0x16D0,0x2806,0x0CB6,
        0x2B60,0x1386,0x3DDE,0x2119,0x04DC,0x374B,0x1F33,0x0017,
        0x302A,0x1B97,0x05D6,0x13D4,0x328C,0x1EF0,0x3948,0x0D56,
        0x26B3,0x3DD6,0x18AF,0x080A,0x3133,0x1F5F,0x0ED5,0x33CE,
        0x0B5A,0x3A2A,0x01E5,0x1EED,0x3433,0x050F,0x3869,0x1C8A,
        0x08BB,0x3A6A,0x04BB,0x2F9A,0x0809,0x1BE3,0x2CC3,0x15E6,
        0x2497,0x2F69,0x0A18,0x297E,0x067A,0x2629,0x3F0B,0x0E7D,
        0x2BB1,0x2256,0x16FD,0x2D4B,0x104A,0x2428,0x31F3,0x1492,
        0x0934,0x2C43,0x069B,0x3228,0x0B0F,0x3DBD,0x1833,0x36F3,
        0x11CF,0x34B1,0x0CFF,0x3868,0x08C1,0x3CC8,0x2395,0x372F,
        0x0FD6,0x3D58,0x20E7,0x143C,0x2BB0,0x15D5,0x2DE1,0x184A,
        0x085A,0x37B6,0x1A69,0x3F09,0x0DF7,0x35D1,0x1192,0x38A9,
        0x293B,0x0A4E,0x205A,0x3965,0x0D07,0x3BE2,0x1A52,0x0BCB,
        0x3685,0x2619,0x0D3D,0x2CE7,0x19BB,0x254B,0x0018,0x3CD2,
        0x239C,0x373E,0x17F1,0x0879,0x244F,0x1CEB,0x310D,0x196D,
        0x0765,0x3BDF,0x18AA,0x360A,0x1F16,0x109A,0x32B4,0x181F,
        0x0473,0x2379,0x1CB5,0x25E7,0x0651,0x2EA5,0x0FB1,0x31DC,
        0x1D8C,0x01E2,0x243A,0x0D18,0x2DB8,0x144C,0x2F0E,0x24BA,
        0x1113,0x2787,0x383B,0x2188,0x09FF,0x294B,0x00E4,0x3484,
        0x1DA1,0x0A5B,0x2265,0x3B43,0x12E4,0x37A7,0x2393,0x05B2,
        0x2AB3,0x17B3,0x306B,0x1201,0x2274,0x2E09,0x0E4A,0x2A8F,
        0x181D,0x26FF,0x1FDC,0x123E,0x226C,0x36F0,0x1064,0x3FD4,
        0x0539,0x1836,0x3333,0x1EF2,0x3873,0x0F97,0x203B,0x3476,
        0x0479,0x3622,0x0839,0x1C59,0x33CC,0x0C48,0x194D,0x3854,
        0x2190,0x17CC,0x3945,0x1BDF,0x2623,0x1501,0x2CFA,0x04DA,
        0x2892,0x16F1,0x2985,0x12FC,0x2C40,0x2105,0x157C,0x01AD,
        0x3156,0x1DCB,0x0BC8,0x344B,0x0363,0x283A,0x0B36,0x32B8,
        0x23A5,0x0F67,0x2955,0x097A,0x2C98,0x1729,0x27E5,0x0481,
        0x1828,0x31CF,0x0153,0x1B6D,0x2873,0x120D,0x2BB3,0x1DD9,
        0x2350,0x12A8,0x3D68,0x1D3D,0x08E2,0x3122,0x2129,0x150E,
        0x1F79,0x0BC5,0x31FA,0x1DC3,0x3AD6,0x058C,0x155D,0x2B74,
        0x2234,0x14BF,0x2CCB,0x05A5,0x2E8B,0x217E,0x08D6,0x26A0,
        0x1512,0x38EC,0x0825,0x3371,0x1B56,0x2191,0x3C16,0x0856,
        0x3521,0x158F,0x2FD2,0x1E0F,0x103A,0x3ACF,0x0A92,0x19F5,
        0x3C95,0x0B78,0x1621,0x2B11,0x3E64,0x112F,0x2FDF,0x141B,
        0x2A9E,0x1554,0x2E4F,0x0376,0x2A3E,0x0923,0x1AEF,0x3E0B,
        0x13FB,0x2840,0x0C2F,0x3BFC,0x07E8,0x1DCD,0x3E7B,0x0305,
        0x361B,0x0C9D,0x3DEF,0x1A39,0x323D,0x03D7,0x29D0,0x0D2D,
        0x2781,0x39A9,0x135B,0x0223,0x1BAB,0x2F23,0x07C6,0x1B22,
        0x2A63,0x12FA,0x3C1D,0x272E,0x0402,0x3FB0,0x2638,0x0169,
        0x2E33,0x0BF2,0x2437,0x029B,0x3064,0x08E5,0x22BA,0x38FE,
        0x109F,0x3E5E,0x02F0,0x3615,0x1A2F,0x057C,0x3938,0x1BD1,
        0x2784,0x06EE,0x2FB9,0x1090,0x3826,0x12A1,0x3F91,0x1C16,
        0x01AA,0x3AF6,0x151B,0x36C6,0x1C07,0x06EA,0x3D02,0x1CD8,
        0x373C,0x1000,0x226F,0x3449,0x07DE,0x37A6,0x028F,0x3F4D,
        0x0897,0x3323,0x0407,0x2812,0x3ACA,0x12F8,0x3488,0x06C2,
        0x3939,0x27A7,0x01F8,0x2BC4,0x0D1E,0x262B,0x3713,0x0260,
        0x3A6E,0x09B7,0x1D4F,0x3DA5,0x12B2,0x370C,0x1BCB,0x3F4A,
        0x315C,0x18FF,0x2E71,0x0DE9,0x3A2D,0x0061,0x1804,0x2A71,
        0x1FDA,0x3FD2,0x06D9,0x38B2,0x22C8,0x02CC,0x2154,0x3195,
        0x0490,0x33FF,0x2055,0x0285,0x1CF8,0x24DE,0x094C,0x3CC7,
        0x056F,0x383D,0x1C87,0x3346,0x0F83,0x2495,0x31E3,0x0D83,
        0x2F1B,0x03E4,0x32E0,0x1561,0x29FD,0x1394,0x21D9,0x31F9,
        0x110E,0x2C4F,0x01A4,0x28DE,0x0B4F,0x3BBE,0x1437,0x3569,
        0x1D78,0x08DC,0x2231,0x3E71,0x2844,0x1262,0x3C83,0x24F4,
        0x0A60,0x2FDC,0x2080,0x0E8D,0x2EE1,0x201F,0x11EA,0x3AD2,
        0x1579,0x34C9,0x1222,0x3C6D,0x1747,0x3431,0x0E26,0x1DEB,
        0x257B,0x0A89,0x2DC1,0x0F00,0x2644,0x31EE,0x110B,0x2B51,
        0x0E2F,0x3A81,0x231B,0x18EA,0x2194,0x2C68,0x05BD,0x2609,
        0x2FA2,0x10FD,0x2B7F,0x02E5,0x3117,0x22F8,0x10C2,0x2D45,
        0x0B62,0x1E8E,0x3C76,0x141F,0x2EF6,0x166B,0x3160,0x17DD,
        0x2B01,0x0F10,0x2F47,0x160B,0x2045,0x02C0,0x1C8B,0x2AD2,
        0x100E,0x19A1,0x3E9E,0x162B,0x3290,0x12EE,0x2060,0x2FCE,
        0x0F6C,0x331E,0x259D,0x0D4D,0x28F9,0x0095,0x2BEE,0x0A25,
        0x2501,0x024E,0x276F,0x20A6,0x161C,0x235C,0x36AB,0x12CA,
        0x0424,0x1A3A,0x28BA,0x0BD9,0x3351,0x1B4E,0x3F1B,0x11CC,
        0x2B89,0x0DE4,0x265D,0x3A5B,0x121B,0x3542,0x1F56,0x0F2B,
        0x2D21,0x21A2,0x0C47,0x16C2,0x3EFF,0x1DE0,0x003A,0x3935,
        0x20D4,0x19D8,0x2320,0x38B0,0x00F9,0x3729,0x0B34,0x1EB8,
        0x254D,0x1900,0x3814,0x0F37,0x2E92,0x1C6C,0x2454,0x0097,
        0x3098,0x197F,0x2C95,0x1578,0x096A,0x33BD,0x02C6,0x16BA,
        0x39E9,0x19C8,0x00E9,0x3557,0x1857,0x0732,0x30F2,0x0AE1,
        0x28DB,0x04A1,0x2A5D,0x1F4E,0x071A,0x2053,0x3B67,0x0112,
        0x35BD,0x195C,0x2272,0x3BAA,0x0B3A,0x1F20,0x3F21,0x0828,
        0x332E,0x1EC4,0x0264,0x3E21,0x08CD,0x1AA0,0x38D7,0x1641,
        0x0A4A,0x3387,0x1C9E,0x24D2,0x0E43,0x392C,0x1F7C,0x021D,
        0x3250,0x2582,0x051A,0x29F9,0x0A8A,0x24E7,0x0635,0x27CB,
        0x1350,0x3A7C,0x21B9,0x09BE,0x36A4,0x2485,0x3FD4,0x0993,
        0x3598,0x23CA,0x0DE6,0x294F,0x04B9,0x3D46,0x0A08,0x1A18,
        0x29DB,0x1B78,0x03D4,0x353A,0x168A,0x39D4,0x11F2,0x1EC9,
        0x0F5F,0x37E0,0x0BE5,0x3E75,0x0561,0x2C4A,0x0AE2,0x2E25,
        0x1E55,0x3136,0x116F,0x2C8D,0x13DE,0x299E,0x0658,0x2855,
        0x15C3,0x37E3,0x1A7C,0x0884,0x2E9B,0x03EA,0x27EC,0x3739,
        0x1901,0x01BF,0x3A78,0x2751,0x066F,0x2CD9,0x187A,0x267D,
        0x08AD,0x3115,0x0D2B,0x1D6E,0x2B94,0x1022,0x3019,0x0571,
        0x3C2F,0x08A6,0x2160,0x317A,0x16D2,0x0777,0x3964,0x1F5D,
        0x10C3,0x3B69,0x04D8,0x367B,0x233E,0x1A75,0x215C,0x2C63,
        0x0FCA,0x31C7,0x258A,0x113D,0x3B93,0x2262,0x1AD2,0x35D5,
        0x1D86,0x3DFB,0x0F87,0x379B,0x1B37,0x2EF2,0x149E,0x29DA,
        0x0F46,0x311C,0x0607,0x1CC4,0x3005,0x00BB,0x23F2,0x19B1,
        0x2586,0x11B0,0x2D8B,0x0EC6,0x28B9,0x33C7,0x0D1C,0x2044,
        0x3C5B,0x18AE,0x065F,0x3DD3,0x1DA2,0x0819,0x28D1,0x3FD4,
        0x18E4,0x0DED,0x339D,0x1296,0x3EAB,0x1977,0x39EA,0x0CF0,
        0x3463,0x016D,0x1C00,0x30E4,0x153E,0x0C5A,0x1719,0x2DE2,
        0x1BA2,0x0384,0x33C5,0x1384,0x2C5D,0x1143,0x2585,0x38A6,
        0x06A4,0x3EEC,0x23E7,0x10AA,0x2EFE,0x07DA,0x2275,0x3C46,
        0x2F5C,0x1E0A,0x309E,0x1038,0x32E9,0x1A9C,0x3D56,0x1530,
        0x3874,0x095E,0x3B7A,0x00E0,0x3667,0x0E45,0x3903,0x0C5B,
        0x30F8,0x0158,0x2C6C,0x2219,0x179E,0x3FD4,0x14BD,0x0788,
        0x22BC,0x3206,0x10B5,0x1BC4,0x35BE,0x1343,0x3CF2,0x1040,
        0x3610,0x163F,0x3F54,0x0751,0x2361,0x3D0A,0x1616,0x289C,
        0x150A,0x2D20,0x1AE4,0x0447,0x3EE2,0x292E,0x0E2C,0x31E4,
        0x251B,0x0B7F,0x291E,0x114B,0x305E,0x0C6D,0x3A96,0x061B,
        0x36CF,0x0929,0x1BB7,0x2B34,0x0B9F,0x2CCA,0x0288,0x24A2,
        0x098C,0x18F6,0x2DA8,0x0C7A,0x2910,0x03ED,0x3257,0x09CC,
        0x3FD4,0x20F8,0x1780,0x2AAF,0x1470,0x3468,0x0D16,0x36C2,
        0x043C,0x3B56,0x1623,0x365C,0x1BFF,0x0056,0x2F32,0x243F,
        0x0399,0x286B,0x3574,0x0F23,0x2761,0x327C,0x148A,0x0997,
        0x21BF,0x3B3B,0x15B0,0x2743,0x0068,0x2A75,0x102F,0x2E6D,
        0x1628,0x245C,0x3E57,0x0680,0x2859,0x38DB,0x22B1,0x05E6,
        0x3C6A,0x274D,0x0AF9,0x3B47,0x1D90,0x3617,0x0062,0x17A6,
        0x2DCB,0x163A,0x095D,0x3AEE,0x207C,0x19F0,0x3464,0x04BD,
        0x1ABE,0x0782,0x16F2,0x29EE,0x1F0C,0x0946,0x2334,0x0286,
        0x206B,0x2726,0x18B2,0x2467,0x1C48,0x2FFA,0x197E,0x25C2,
        0x1DAF,0x3DB7,0x10BC,0x3697,0x0BF7,0x1D4D,0x3309,0x1C13,
        0x3C4C,0x09C9,0x2522,0x30BB,0x0BB0,0x2ABF,0x04CD,0x2E6F,
        0x2000,0x028D,0x1F3A,0x2DEC,0x1774,0x03B3,0x33DC,0x0D5F,
        0x367D,0x10CE,0x3A30,0x22F5,0x119D,0x2069,0x36A8,0x0628,
        0x1C36,0x2F39,0x1650,0x3D5B,0x014E,0x1E75,0x279F,0x1631,
        0x23D5,0x1DBA,0x3D35,0x0488,0x3446,0x1646,0x3EC7,0x1405,
        0x3847,0x26BF,0x0088,0x32A7,0x15F5,0x3D37,0x12A4,0x1E13,
        0x2510,0x027A,0x386C,0x095A,0x3CAC,0x1041,0x2BDA,0x133C,
        0x2E83,0x0B9A,0x2708,0x0644,0x2170,0x3BAB,0x1748,0x1021,
        0x30C1,0x12B3,0x1FF3,0x2E9D,0x00D0,0x2103,0x374F,0x1BD2,
        0x2EC4,0x03F4,0x2B87,0x0C18,0x35F9,0x1BA1,0x380F,0x0460,
        0x2961,0x0AC9,0x185E,0x2C5F,0x1A30,0x00EC,0x3196,0x1EE5,
        0x0E7E,0x16AD,0x2F40,0x1A68,0x0767,0x2306,0x308F,0x1FF5,
        0x0E4C,0x35D2,0x1CC6,0x26B8,0x01A0,0x2CB1,0x0CDF,0x2926,
        0x3661,0x202D,0x3CB6,0x0110,0x38CA,0x13ED,0x35C0,0x2B92,
        0x0E49,0x3268,0x0756,0x3D16,0x0A57,0x2376,0x034F,0x3AE3,
        0x08D2,0x1899,0x292F,0x04F7,0x30A8,0x260D,0x0090,0x29B5,
        0x130A,0x2BFA,0x17FE,0x02FB,0x38EA,0x1A28,0x25D3,0x0E0F,
        0x3AEF,0x1AE3,0x3496,0x09E1,0x3998,0x2233,0x1BB6,0x2E2E,
        0x0020,0x2736,0x0B01,0x3417,0x1D61,0x01DC,0x2635,0x17DB,
        0x3E37,0x0358,0x3491,0x0CDE,0x2284,0x377B,0x0DF0,0x3F61,
        0x0367,0x2E02,0x0D9B,0x27D8,0x1285,0x299C,0x0DC4,0x2ED1,
        0x06D6,0x1CFF,0x3A46,0x10AB,0x25DA,0x083C,0x2213,0x39E2,
        0x118E,0x32E6,0x1373,0x2F38,0x1C7E,0x262C,0x072E,0x3DB9,
        0x2235,0x1B2F,0x316F,0x1403,0x2CA5,0x0C43,0x25B2,0x37EE,
        0x0A03,0x3EBD,0x0749,0x1A04,0x3A67,0x16BE,0x0576,0x29A2,
        0x0D65,0x38CD,0x1C5D,0x3039,0x1EF6,0x075D,0x2351,0x14E3,
        0x3CD8,0x1DA5,0x352D,0x0FED,0x3BDA,0x2159,0x0B99,0x3762,
        0x2392,0x3316,0x0199,0x283B,0x3953,0x1499,0x0C28,0x3E3E,
        0x2890,0x0357,0x2B88,0x0FF5,0x3360,0x1338,0x3FD4,0x14A3,
        0x030A,0x27AD,0x0DC8,0x2DCA,0x1847,0x287A,0x0675,0x1D84,
        0x37C7,0x163C,0x292B,0x1153,0x3179,0x1754,0x2C0C,0x149C,
        0x2413,0x3499,0x0D92,0x3BB3,0x20C2,0x1020,0x3B26,0x0CFC,
        0x3678,0x059B,0x3EB2,0x1D6F,0x23A6,0x0FAE,0x3270,0x1E3D,
        0x06E5,0x2C78,0x112D,0x28D7,0x0EAC,0x2B41,0x0850,0x2131,
        0x3F95,0x167D,0x2C08,0x0692,0x2863,0x3CC5,0x0DBB,0x2D47,
        0x100F,0x2ACC,0x2153,0x1527,0x2D95,0x07B1,0x2B12,0x1892,
        0x329A,0x14F8,0x3603,0x1768,0x3AF7,0x0634,0x373A,0x21F9,
        0x16DF,0x2C7C,0x0A97,0x1F97,0x3645,0x19F3,0x2D7E,0x0567,
        0x2A3A,0x0CBC,0x286D,0x1936,0x038A,0x39B0,0x1FBC,0x15B3,
        0x0172,0x37A4,0x08A5,0x3FB3,0x19F9,0x3258,0x0540,0x1E12,
        0x28CF,0x17AB,0x22C0,0x3487,0x0AD4,0x260A,0x3D7A,0x1200,
        0x34CA,0x229F,0x084D,0x145B,0x3E03,0x1765,0x32A5,0x1FA7,
        0x08E3,0x2D9B,0x033D,0x26EF,0x0D22,0x2E43,0x1E05,0x1485,
        0x07D3,0x1FBD,0x3F45,0x0D04,0x1810,0x3440,0x20E9,0x060A,
        0x1E49,0x37A2,0x0BB8,0x3CE5,0x18BC,0x248B,0x0862,0x2D68,
        0x3B3C,0x15F4,0x3395,0x1C51,0x0B8E,0x3F70,0x220E,0x0CB1,
        0x23AA,0x01BB,0x395F,0x1F78,0x04BC,0x3EE9,0x0BD7,0x35D4,
        0x062C,0x1B72,0x2D89,0x167A,0x0983,0x2F88,0x1865,0x247F,
        0x1DFD,0x2DF8,0x0DCA,0x29F2,0x0803,0x3B7F,0x0133,0x3754,
        0x220C,0x182B,0x3E2E,0x01BA,0x35FB,0x130F,0x3B4A,0x18BF,
        0x0C4E,0x3311,0x1267,0x38C3,0x0FC2,0x1F46,0x32D9,0x0873,
        0x3906,0x1E21,0x06C4,0x3B31,0x19E4,0x333A,0x116B,0x28A9,
        0x0B19,0x2689,0x004C,0x2D28,0x0C09,0x2533,0x1EB0,0x01C7,
        0x33FD,0x0FC5,0x3F29,0x2425,0x02C9,0x3130,0x0DFF,0x36EC,
        0x1AAF,0x3E38,0x07BC,0x37E6,0x22A4,0x0BE4,0x33DD,0x2A40,
        0x1D40,0x24E4,0x1837,0x281B,0x02B4,0x206A,0x3CC1,0x14CF,
        0x32EE,0x020C,0x2CF9,0x1353,0x2AC6,0x1126,0x1EBE,0x3069,
        0x017C,0x17E1,0x3AA2,0x26B9,0x02F6,0x2C51,0x0C7F,0x3B02,
        0x25C0,0x125F,0x3923,0x1671,0x3602,0x0508,0x3E1F,0x24B2,
        0x39C3,0x10B6,0x25AC,0x1CF0,0x2D76,0x02E2,0x2785,0x32B1,
        0x0DC9,0x21FF,0x30B7,0x1C3E,0x044B,0x3828,0x1FA8,0x10D7,
        0x0ADC,0x2946,0x0526,0x3A9E,0x20D9,0x03AA,0x3420,0x17C1,
        0x3D9E,0x1E99,0x0DB0,0x348D,0x2589,0x156B,0x2E6A,0x11CD,
        0x282D,0x3E5B,0x0226,0x2299,0x3894,0x1C50,0x03C3,0x31F7,
        0x0A52,0x174C,0x3406,0x1170,0x3022,0x14B1,0x2A48,0x12CC,
        0x2EDB,0x0BD2,0x24F0,0x2098,0x19F4,0x2FCD,0x049E,0x3132,
        0x2347,0x02F1,0x27A1,0x1CD4,0x2FBD,0x03F2,0x23E1,0x1A64,
        0x26F6,0x1244,0x3025,0x23B0,0x0278,0x20DD,0x3C26,0x0570,
        0x38B7,0x107B,0x3DCD,0x212A,0x1A0F,0x3302,0x1102,0x3CA7,
        0x1990,0x2774,0x051C,0x1820,0x3912,0x143F,0x2803,0x2007,
        0x002C,0x1EB4,0x2C24,0x0F92,0x3062,0x1E29,0x1496,0x05E7,
        0x3B28,0x0C60,0x34D2,0x1160,0x3917,0x0D85,0x2AD7,0x07FC,
        0x1F8A,0x370F,0x0CDB,0x3B75,0x036B,0x33F4,0x0913,0x2490,
        0x1CF9,0x2D1D,0x0F8A,0x2088,0x3798,0x1050,0x292A,0x01D2,
        0x1A93,0x3116,0x0813,0x2A2C,0x107F,0x2930,0x17C8,0x025F,
        0x1ABD,0x3224,0x04A3,0x37E1,0x0A85,0x3D5F,0x0F25,0x1C81,
        0x3B9C,0x1590,0x0701,0x2816,0x2E60,0x11AF,0x31FC,0x23FD,
        0x3079,0x12F2,0x2C0B,0x0FCC,0x25FE,0x2F97,0x0EB7,0x2ABB,
        0x06F1,0x26DF,0x2F22,0x16E2,0x09D8,0x2A00,0x003B,0x39C0,
        0x1F53,0x0EE6,0x1E2E,0x3423,0x075B,0x266E,0x3F2F,0x12C3,
        0x3A52,0x21DD,0x01F1,0x3DD2,0x1B94,0x2415,0x09B9,0x3C99,
        0x0412,0x350C,0x142D,0x3A58,0x0AC3,0x2604,0x2019,0x0FAB,
        0x37FA,0x1A46,0x3D94,0x0943,0x1812,0x3BC8,0x146A,0x3738,
        0x0075,0x3FA4,0x0AFB,0x17B1,0x383A,0x0EF2,0x1C0D,0x2C1E,
        0x1637,0x3178,0x1BE9,0x0881,0x3975,0x03C4,0x2FA3,0x2321,
        0x0958,0x30A1,0x1CA4,0x2D1A,0x0D3C,0x2B15,0x08A9,0x3BE8,
        0x1792,0x3391,0x13EC,0x2682,0x0208,0x3EE3,0x2368,0x310E,
        0x0FAA,0x298A,0x04BF,0x2E36,0x21F6,0x16D9,0x233D,0x3A10,
        0x0F35,0x26DA,0x1A86,0x2034,0x2F64,0x186E,0x388D,0x0DC7,
        0x3F73,0x05D3,0x337F,0x09CA,0x1B06,0x30AF,0x1348,0x34DA,
        0x23E2,0x0E72,0x3F9D,0x1CEA,0x335D,0x0947,0x3002,0x1F68,
        0x2CD1,0x0EDC,0x2974,0x114C,0x2B9F,0x22E3,0x16B0,0x2FA9,
        0x011A,0x2634,0x3971,0x1730,0x099C,0x3DF2,0x0010,0x1CF3,
        0x0720,0x3EB6,0x1EC3,0x3767,0x0892,0x1BA0,0x39CE,0x13AA,
        0x3306,0x199F,0x031F,0x3A57,0x2079,0x36E0,0x1AEB,0x238C,
        0x07D6,0x32DF,0x2747,0x1444,0x2CFE,0x108E,0x2057,0x2ABA,
        0x06B6,0x2CA1,0x19AD,0x2721,0x053D,0x31CE,0x1EF1,0x157B,
        0x2B90,0x107D,0x2944,0x0606,0x31B9,0x14F2,0x3D21,0x1DF5,
        0x07E9,0x2CF8,0x0F05,0x2577,0x3528,0x0C1B,0x2979,0x0EA4,
        0x2C12,0x13F0,0x3234,0x21A9,0x08AB,0x2307,0x307B,0x0BDF,
        0x255F,0x0441,0x2ACE,0x223F,0x0F39,0x280F,0x1DAB,0x0E78,
        0x3AA4,0x14D3,0x359B,0x077A,0x3DEB,0x1E73,0x34EE,0x0DBA,
        0x2FC1,0x06AC,0x3ACD,0x0B40,0x34BB,0x17D1,0x0924,0x1B8D,
        0x3642,0x1569,0x3E5F,0x1C3D,0x08EE,0x30F0,0x010E,0x1BCE,
        0x321D,0x04DF,0x3EFA,0x0A15,0x2514,0x068C,0x2178,0x2DD6,
        0x1565,0x27F8,0x16D8,0x3C12,0x2209,0x067D,0x3E83,0x1F2E,
        0x0537,0x2D31,0x1963,0x0030,0x20DF,0x3B78,0x13FE,0x3643,
        0x0B50,0x3BF5,0x15E9,0x35C6,0x1B81,0x06BF,0x3AC6,0x0B2B,
        0x2ABD,0x1A47,0x0D00,0x34BA,0x1DA6,0x24C7,0x193E,0x369E,
        0x2995,0x1AEA,0x0207,0x166A,0x327F,0x2380,0x0080,0x28F2,
        0x0A6C,0x3C2A,0x1D4E,0x24C4,0x1328,0x05C0,0x3212,0x0D72,
        0x3BF3,0x19E0,0x0433,0x3CF5,0x0AE6,0x3614,0x00E1,0x1AB6,
        0x36D0,0x0CC4,0x396A,0x152E,0x359C,0x0E44,0x384D,0x256F,
        0x08CF,0x3FD4,0x1E87,0x36AD,0x0DDB,0x2AD0,0x00DB,0x2E9C,
        0x2253,0x1618,0x3361,0x0163,0x20B1,0x2E58,0x0625,0x3441,
        0x1CB3,0x25D2,0x0471,0x3C71,0x1B35,0x35A4,0x0100,0x3E80,
        0x1490,0x37F0,0x124F,0x362B,0x178C,0x3FD4,0x060B,0x2C0D,
        0x20B3,0x00C9,0x1F7D,0x299F,0x167B,0x022C,0x1B7D,0x26FB,
        0x126E,0x29F3,0x2090,0x2EA8,0x1130,0x2A61,0x1F5B,0x2DAD,
        0x007B,0x2798,0x0E21,0x2477,0x3772,0x107E,0x3DDB,0x25D4,
        0x130D,0x29ED,0x1626,0x314C,0x1438,0x3D49,0x1B4F,0x026D,
        0x35A7,0x0B0D,0x2A92,0x0099,0x2F67,0x193A,0x2550,0x0B5D,
        0x3978,0x113C,0x3692,0x233F,0x156D,0x2418,0x05A7,0x1E5F,
        0x28AB,0x0716,0x2538,0x0085,0x2ED6,0x2189,0x1960,0x3198,
        0x104B,0x3F28,0x22E6,0x02A5,0x3125,0x0DF8,0x2C83,0x11FC,
        0x0A3A,0x33F2,0x1FAD,0x2CF0,0x0E16,0x18D9,0x3E94,0x15F9,
        0x2B6B,0x1055,0x30BA,0x0826,0x3F9C,0x27A3,0x1664,0x2AA1,
        0x1253,0x2466,0x304A,0x117B,0x290B,0x159E,0x24EC,0x315A,
        0x11E1,0x288F,0x1F2B,0x0851,0x2043,0x2E19,0x0055,0x1A6C,
        0x2F27,0x1787,0x027F,0x1B5C,0x281E,0x12A7,0x33B7,0x0CCF,
        0x39F9,0x0547,0x1C74,0x3F0F,0x102E,0x1AE1,0x3AC2,0x186A,
        0x0905,0x2F3E,0x1EDC,0x0F58,0x2E0E,0x12E0,0x2987,0x18D1,
        0x283C,0x0D3E,0x2DBA,0x0209,0x3097,0x0C4F,0x3382,0x114A,
        0x3734,0x1A6F,0x3CE7,0x0A79,0x32CE,0x2030,0x2EEF,0x04E8,
        0x3F97,0x1B01,0x0324,0x18F4,0x3D15,0x0478,0x38A4,0x1334,
        0x3B83,0x1706,0x2F71,0x03B9,0x1A7F,0x2C90,0x17DE,0x0AEE,
        0x3845,0x0DFE,0x3662,0x0010,0x2C2D,0x0E95,0x3201,0x267B,
        0x11A8,0x3AEC,0x13CB,0x32C5,0x0F6B,0x2C18,0x0E42,0x31A3,
        0x1D50,0x2A82,0x06ED,0x31DA,0x0A48,0x3818,0x1B9A,0x3D7E,
        0x120C,0x34A9,0x184F,0x3FC3,0x0D9E,0x38BC,0x03E7,0x202E,
        0x357C,0x0639,0x2EAA,0x1F59,0x13DD,0x391B,0x054D,0x3BE4,
        0x2843,0x1339,0x3B52,0x06B1,0x37F9,0x2783,0x0BFF,0x33B6,
        0x0513,0x3722,0x1506,0x2D23,0x1CB7,0x0AEA,0x3904,0x02C7,
        0x2EEB,0x0B93,0x1FDB,0x3752,0x06C8,0x3A0F,0x1C19,0x08F6,
        0x3D60,0x02DA,0x3493,0x1932,0x3EDB,0x0FD3,0x2259,0x3B54,
        0x0EFF,0x3497,0x1F92,0x3919,0x0763,0x3E74,0x1CEE,0x2714,
        0x1741,0x2311,0x2B5C,0x09B0,0x3047,0x2458,0x02CD,0x2768,
        0x3E25,0x0E10,0x3794,0x24AC,0x06FA,0x3A1C,0x0A7A,0x341D,
        0x0516,0x3A71,0x1B54,0x1FE5,0x242E,0x195E,0x2632,0x1E92,
        0x0834,0x2D8A,0x0F88,0x274B,0x13BC,0x39B9,0x1046,0x35EF,
        0x0AFA,0x31C2,0x1F1F,0x2CDE,0x0E59,0x2702,0x103C,0x2B65,
        0x06DA,0x3376,0x0CE9,0x3C86,0x21BB,0x0622,0x354E,0x20C7,
        0x032C,0x2DC8,0x1D80,0x23C4,0x19A4,0x399E,0x073B,0x200F,
        0x2B77,0x04CA,0x2432,0x1DB8,0x36F5,0x0443,0x3CFD,0x1831,
        0x027D,0x2187,0x3C8D,0x1752,0x2B09,0x0F81,0x2E1A,0x01FA,
        0x29BC,0x0D1F,0x2B3D,0x12F6,0x286F,0x161E,0x2C3A,0x11DB,
        0x258C,0x1D69,0x0EB4,0x3C6F,0x27E4,0x0B56,0x25BE,0x17E9,
        0x036E,0x2EEE,0x0C9F,0x2562,0x1E79,0x0418,0x300D,0x1B44,
        0x23E4,0x0D13,0x2663,0x0142,0x344C,0x13F3,0x223B,0x3345,
        0x153C,0x3E11,0x01AB,0x1B79,0x2B50,0x0EF8,0x2E37,0x21C8,
        0x182C,0x2D41,0x0D94,0x2AF9,0x0497,0x1D64,0x2C2C,0x0A0A,
        0x28D9,0x05C7,0x29FF,0x0C82,0x2D29,0x197B,0x038E,0x361D,
        0x0A58,0x3B9F,0x1456,0x36FB,0x1F00,0x11E7,0x3930,0x137D,
        0x1F8B,0x3141,0x01C1,0x1A0B,0x2BBC,0x1683,0x266B,0x1357,
        0x2C89,0x21BD,0x0865,0x3D4B,0x0A43,0x36B9,0x02FC,0x3E28,
        0x2264,0x172A,0x3839,0x037D,0x2BC7,0x0704,0x24C2,0x16EA,
        0x2A9C,0x1462,0x3A3E,0x0792,0x36B8,0x1B51,0x32A3,0x0B38,
        0x24F7,0x19B6,0x29D1,0x13B3,0x3185,0x1E07,0x0FC7,0x2945,
        0x3AAA,0x1550,0x0845,0x3CB1,0x0C6E,0x2591,0x1E2C,0x0BBB,
        0x3472,0x1A01,0x3EA4,0x079D,0x1B53,0x2A05,0x1383,0x271E,
        0x3A4F,0x14E6,0x097B,0x2F99,0x0388,0x2778,0x13B6,0x3263,
        0x1AA1,0x3A33,0x046F,0x33D2,0x084C,0x36E6,0x0A45,0x3E07,
        0x01B3,0x338F,0x2260,0x07AE,0x1C83,0x36C5,0x14C1,0x32BD,
        0x3D23,0x22BF,0x1906,0x35CA,0x1179,0x3BBD,0x2166,0x0FE5,
        0x3DCE,0x1C38,0x3879,0x172F,0x20E2,0x3CE8,0x0893,0x1D1E,
        0x28A4,0x0F91,0x31B7,0x23E6,0x1474,0x3FBA,0x0391,0x33B1,
        0x0A9B,0x1CE8,0x39D0,0x122B,0x2693,0x3AA3,0x12DE,0x3693,
        0x158A,0x3D91,0x115F,0x32C1,0x13DF,0x2486,0x314E,0x11AA,
        0x2CD8,0x1BEE,0x025E,0x25ED,0x071F,0x3277,0x0B08,0x2DB0,
        0x05BC,0x23EC,0x1CE7,0x3D8B,0x10FC,0x34FB,0x0329,0x3F25,
        0x1E63,0x11A9,0x2F0A,0x15B7,0x29C2,0x13A1,0x2E96,0x0D08,
        0x31CD,0x0589,0x1D59,0x323B,0x17F7,0x3C49,0x0C05,0x332D,
        0x00FD,0x25CC,0x0CA5,0x29A9,0x1E45,0x0190,0x1FCE,0x3F66,
        0x14D6,0x35E8,0x023F,0x39D2,0x09E8,0x2676,0x3F3F,0x0C0D,
        0x1AFE,0x2730,0x34ED,0x1044,0x2FB1,0x03F8,0x2A3B,0x380D,
        0x12F5,0x282E,0x0CEE,0x21D1,0x39C9,0x10BD,0x3419,0x0A65,
        0x1C31,0x3126,0x2478,0x1060,0x3F07,0x0C72,0x38D8,0x230D,
        0x0AE8,0x1FCF,0x26E9,0x19AE,0x23CE,0x1C08,0x2E80,0x14EF,
        0x2936,0x1377,0x3AAF,0x1617,0x300A,0x00FF,0x2B39,0x0D42,
        0x1B5E,0x089E,0x31C6,0x015A,0x2B95,0x19F8,0x0930,0x2CCD,
        0x0254,0x29E4,0x09A8,0x2FDB,0x0584,0x2A06,0x18E5,0x367E,
        0x04B1,0x3A31,0x2099,0x060E,0x34F7,0x0BE2,0x2790,0x16F7,
        0x3BB1,0x253D,0x0179,0x3110,0x1EA4,0x07C5,0x2D9E,0x0301,
        0x23C6,0x1ACF,0x26D5,0x0185,0x3C07,0x08B0,0x1EBF,0x38C7,
        0x06A1,0x218D,0x3398,0x16B6,0x3EB3,0x156A,0x28F3,0x176D,
        0x3606,0x1094,0x322C,0x0646,0x28D5,0x0C77,0x2D6A,0x22AC,
        0x0939,0x38D2,0x0156,0x354A,0x0660,0x3BE9,0x168D,0x278E,
        0x12B4,0x39FA,0x24EE,0x0EBF,0x28CA,0x1206,0x2DDB,0x1CCB,
        0x3D67,0x10D2,0x3495,0x15F3,0x3C10,0x141E,0x2C75,0x0520,
        0x290C,0x0C40,0x27F6,0x11C1,0x2E0B,0x1888,0x014A,0x2286,
        0x3075,0x058A,0x193D,0x2B1C,0x137C,0x3FD4,0x15FC,0x2296,
        0x011D,0x326A,0x186D,0x2E3C,0x0B4E,0x28C4,0x0160,0x24F2,
        0x375B,0x0578,0x1AFA,0x3541,0x1672,0x2BCF,0x1BEF,0x04E3,
        0x3E6E,0x1452,0x3683,0x0CC7,0x3D36,0x0309,0x21CD,0x39A0,
        0x0C45,0x2DFC,0x0486,0x26D8,0x1979,0x3F63,0x122A,0x28E1,
        0x3862,0x20F0,0x10C6,0x3FD4,0x0E03,0x250A,0x3A27,0x147C,
        0x35E5,0x1274,0x3B2B,0x1A6A,0x25D7,0x0E3D,0x30D0,0x1368,
        0x2BE6,0x1A9B,0x0CA0,0x2E15,0x194F,0x29F5,0x12B7,0x3091,
        0x065D,0x1528,0x3601,0x221F,0x10FE,0x3381,0x14A0,0x1F4B,
        0x341F,0x0877,0x3981,0x204D,0x17D6,0x2F1C,0x0F3B,0x2658,
        0x18FD,0x3CDF,0x0FE0,0x2A83,0x0D30,0x2ECB,0x00C1,0x3BBF,
        0x0CF6,0x2A8C,0x15CA,0x38A1,0x17F4,0x3B72,0x1B45,0x1005,
        0x31B6,0x1746,0x2854,0x1A8D,0x2537,0x0BA4,0x2BB9,0x006B,
        0x2E0C,0x1AE7,0x091D,0x3F0D,0x0196,0x353C,0x1A3D,0x05CA,
        0x22CE,0x2F29,0x0444,0x27C8,0x0A35,0x30C9,0x18C1,0x37F5,
        0x0F4A,0x3D70,0x1F89,0x34AF,0x0505,0x38B1,0x1F6B,0x3635,
        0x116E,0x3C01,0x2484,0x01C6,0x32B6,0x1CAA,0x08CB,0x3B03,
        0x2061,0x1523,0x3D38,0x0362,0x3604,0x1454,0x3F65,0x18B6,
        0x0DA7,0x2151,0x2D08,0x00CA,0x26A2,0x07F4,0x33CA,0x21F0,
        0x0E2B,0x3167,0x010C,0x2D17,0x116D,0x2A79,0x1891,0x0689,
        0x32EB,0x0FA5,0x202C,0x3556,0x09AE,0x219E,0x3465,0x04EC,
        0x0F21,0x2AAC,0x17BC,0x21F5,0x2F8A,0x0598,0x1C6E,0x30A4,
        0x073A,0x1F3C,0x237A,0x0F8E,0x3253,0x1EF7,0x00AD,0x3F42,
        0x0A23,0x265C,0x37D3,0x1316,0x3C7C,0x0010,0x3898,0x0D60,
        0x204A,0x2BD8,0x1A1D,0x0568,0x3C7A,0x0B98,0x25E5,0x3F52,
        0x0D7C,0x2BF2,0x155B,0x3205,0x0D0D,0x22C7,0x3F6E,0x0049,
        0x2C33,0x0AAA,0x284A,0x0456,0x388E,0x2341,0x19B4,0x21ED,
        0x2FE1,0x03B1,0x27E2,0x0AB0,0x259F,0x0010,0x302F,0x2035,
        0x0556,0x3C7D,0x0DD8,0x33D0,0x120A,0x3851,0x1D06,0x3ADB,
        0x0E3F,0x34CB,0x23B2,0x14C4,0x2B2B,0x0AB8,0x2643,0x391E,
        0x13E2,0x1E8C,0x3EBB,0x122F,0x3870,0x21B0,0x0764,0x234C,
        0x3042,0x1AA5,0x0801,0x1789,0x2BBA,0x2344,0x150D,0x069C,
        0x2C41,0x0AC1,0x1E94,0x3905,0x0EB2,0x26C9,0x30B2,0x0DD9,
        0x2C5B,0x06FF,0x25CE,0x1FDE,0x1A3E,0x2C85,0x0C38,0x3009,
        0x1D2C,0x3D95,0x11B1,0x3842,0x1359,0x3B4F,0x0FA6,0x2F4B,
        0x1A3C,0x2066,0x25C3,0x17CF,0x3AF0,0x09D4,0x34EC,0x1DD1,
        0x24FE,0x1A0C,0x3CB9,0x1311,0x2FA5,0x10EE,0x1E1C,0x2D79,
        0x3DA3,0x02D9,0x36FD,0x0787,0x1526,0x3897,0x2696,0x114D,
        0x2885,0x3500,0x0360,0x3E48,0x07E4,0x378F,0x240F,0x1109,
        0x2E90,0x1CE4,0x02DD,0x24E9,0x0F55,0x2D65,0x1654,0x24AB,
        0x3E7C,0x0926,0x37FF,0x270E,0x16C0,0x2F90,0x00B1,0x18B7,
        0x30BF,0x1C2F,0x03DD,0x2500,0x37D2,0x058F,0x1CA7,0x33E9,
        0x12F4,0x35A9,0x14BA,0x30ED,0x1D70,0x083B,0x31E8,0x09A3,
        0x1DC7,0x3FD4,0x1276,0x365E,0x13E9,0x2B2F,0x0EB3,0x34AC,
        0x24D1,0x1432,0x2A4D,0x03E0,0x2D2B,0x1902,0x07B2,0x20C1,
        0x2880,0x0430,0x1DBC,0x366A,0x1098,0x3B74,0x2068,0x0D81,
        0x2C48,0x0838,0x2212,0x2DA5,0x02AA,0x1BBE,0x3673,0x1634,
        0x00B6,0x2CBE,0x1E6D,0x3BB7,0x12DC,0x09AA,0x3E79,0x284C,
        0x1669,0x33E0,0x1229,0x2229,0x2E59,0x0546,0x1B76,0x3594,
        0x163D,0x3896,0x0F95,0x3342,0x0664,0x2332,0x3921,0x03C8,
        0x2992,0x0734,0x27F7,0x0AA8,0x2DED,0x1D8A,0x2A3F,0x029D,
        0x3C2C,0x0A22,0x3768,0x0742,0x1CC3,0x2FC5,0x12AC,0x3EE7,
        0x005E,0x3109,0x081D,0x2A74,0x024D,0x3A4D,0x08F0,0x22A0,
        0x0C30,0x315D,0x1ADB,0x236D,0x3247,0x186B,0x0040,0x3EC4,
        0x0A0F,0x19BF,0x2DDC,0x1666,0x2AEC,0x13D1,0x1DF6,0x3564,
        0x0766,0x3AC7,0x17D9,0x3385,0x212D,0x0A63,0x365A,0x03F7,
        0x13FF,0x2DDA,0x1E2A,0x1054,0x2A20,0x0EC7,0x38E7,0x2453,
        0x06E3,0x3ABE,0x212B,0x0B3F,0x1DC1,0x3052,0x0E98,0x2777,
        0x1FD8,0x07BE,0x3AF1,0x2113,0x10F4,0x3DA4,0x1643,0x382A,
        0x0FB3,0x227C,0x2C65,0x073D,0x30FD,0x1CA5,0x3DFD,0x0A14,
        0x1E10,0x375D,0x0B29,0x3F8F,0x0FA0,0x267E,0x363C,0x10D1,
        0x3E97,0x184B,0x2FF0,0x071B,0x28FD,0x198D,0x0319,0x3783,
        0x11AD,0x33CF,0x1956,0x0CC0,0x34EA,0x2948,0x09B8,0x207A,
        0x3A69,0x0D14,0x32CC,0x0364,0x2126,0x31C1,0x1FE0,0x0DA1,
        0x2FE0,0x037A,0x3DBF,0x0872,0x1751,0x3C52,0x2396,0x02B1,
        0x28D6,0x0AD1,0x2DEF,0x1720,0x3C45,0x1032,0x1E02,0x322F,
        0x128C,0x2F01,0x15D0,0x3490,0x2295,0x0618,0x18F1,0x34FD,
        0x15AD,0x2B0F,0x1257,0x30D9,0x249F,0x0404,0x288A,0x0D29,
        0x2C11,0x16EF,0x378D,0x2087,0x1A7E,0x2369,0x33B5,0x176A,
        0x1CBA,0x2753,0x101C,0x3ADD,0x0B47,0x215E,0x2C88,0x15E2,
        0x2447,0x3999,0x0EA2,0x2725,0x0CD3,0x3B7D,0x043E,0x2852,
        0x20DB,0x0D80,0x28F6,0x063A,0x3F02,0x19EB,0x27D0,0x1C63,
        0x343F,0x22E8,0x0252,0x3DA8,0x0781,0x34CF,0x1EB6,0x134B,
        0x2B47,0x108B,0x2861,0x3DDF,0x121A,0x225D,0x3A4B,0x032A,
        0x2E95,0x1A42,0x2506,0x01B7,0x2BA9,0x1F24,0x04CE,0x2029,
        0x2DEE,0x0230,0x1AA6,0x3A74,0x16FF,0x0480,0x2326,0x2EB2,
        0x028C,0x28B4,0x1B70,0x2186,0x30EB,0x020B,0x1BB5,0x31FE,
        0x0B0B,0x25A2,0x154C,0x3CBA,0x0E8E,0x3313,0x2338,0x1C5C,
        0x3067,0x0023,0x3B41,0x2584,0x174A,0x0EEA,0x3D2C,0x26A6,
        0x1124,0x2A1A,0x13C0,0x2610,0x3833,0x1598,0x0039,0x39E4,
        0x2100,0x19B2,0x2771,0x1D5A,0x2F80,0x0D78,0x1916,0x3701,
        0x1411,0x3E0C,0x1C7B,0x005C,0x2958,0x2089,0x08E0,0x22D0,
        0x37D0,0x0D6F,0x3BB6,0x0316,0x170E,0x3FD4,0x2656,0x0B32,
        0x28A7,0x0564,0x3DAD,0x1E61,0x0ED1,0x345F,0x1409,0x3925,
        0x1D38,0x0BC3,0x268B,0x0DC5,0x3E55,0x0609,0x14B9,0x2C82,
        0x3BFA,0x084E,0x2EBB,0x03D8,0x1DB1,0x3CAE,0x106D,0x3620,
        0x04E5,0x1C1B,0x3204,0x01E3,0x2C6E,0x1811,0x3082,0x1265,
        0x3D9C,0x1653,0x2F98,0x1FB7,0x14D7,0x2ABE,0x06FC,0x3A90,
        0x09EC,0x1870,0x316E,0x15A3,0x2C44,0x21AA,0x0350,0x3CCA,
        0x0BF0,0x3714,0x198A,0x01D3,0x2D5F,0x090F,0x1895,0x34C3,
        0x125B,0x3E5D,0x0F8D,0x2FB7,0x0DF9,0x3330,0x19E9,0x3567,
        0x0E67,0x3CA8,0x26A3,0x0966,0x2908,0x37F2,0x0D52,0x188B,
        0x3C0C,0x1088,0x357F,0x06E7,0x1668,0x3B10,0x22E4,0x05A2,
        0x1FEC,0x38F9,0x012C,0x1C78,0x2BEB,0x0577,0x3FD4,0x0963,
        0x151A,0x282C,0x1DF9,0x0617,0x3983,0x22A9,0x03B5,0x191D,
        0x35C5,0x055C,0x3FBF,0x1B1C,0x08A0,0x2DB2,0x1C9F,0x257A,
        0x078D,0x37A0,0x0BCE,0x34F2,0x00B3,0x24D6,0x3169,0x0965,
        0x2A90,0x05B0,0x2459,0x3560,0x0E3B,0x3A44,0x2B2D,0x1538,
        0x01AC,0x261F,0x1AB9,0x2149,0x3092,0x0F3D,0x200A,0x3954,
        0x1137,0x3393,0x2220,0x01DE,0x39E3,0x19D3,0x2E5C,0x0657,
        0x2474,0x3C23,0x03A9,0x2D90,0x15C8,0x2829,0x3672,0x00A9,
        0x12CB,0x3288,0x1473,0x20CE,0x30E0,0x068F,0x2919,0x0C63,
        0x2E70,0x222D,0x0B3B,0x3D0C,0x115E,0x36D4,0x0BAE,0x2535,
        0x0151,0x3320,0x098E,0x394E,0x0235,0x3283,0x1F3B,0x11EE,
        0x2EC3,0x20A0,0x0E37,0x37BA,0x0C75,0x1B0B,0x321B,0x1710,
        0x2F1F,0x054E,0x2012,0x3581,0x15BB,0x3C33,0x25F6,0x0BD5,
        0x2AC7,0x0685,0x35FA,0x1B85,0x3A5D,0x0A2A,0x288C,0x0785,
        0x24E2,0x1EA3,0x10CC,0x32F5,0x1F9D,0x1184,0x2114,0x3284,
        0x0BED,0x271D,0x1978,0x2258,0x2B20,0x0980,0x2E2F,0x17B4,
        0x2A7A,0x101F,0x3104,0x26A9,0x1129,0x2F7F,0x174B,0x2A0A,
        0x20EB,0x3DB5,0x0BF4,0x2B8A,0x1061,0x2E2A,0x1D4C,0x3135,
        0x0BC1,0x2D3D,0x0FAC,0x23D7,0x3462,0x0E87,0x3DE8,0x0FFA,
        0x3155,0x130C,0x2AC4,0x16A5,0x3EF3,0x11CE,0x1F50,0x3B45,
        0x19EA,0x320C,0x10E7,0x1EC0,0x2707,0x0487,0x1BB3,0x3EAC,
        0x1CFC,0x3413,0x0843,0x2BB2,0x09BC,0x32FA,0x001B,0x1B3F,
        0x2E9F,0x0932,0x1736,0x2C07,0x205D,0x098F,0x1F22,0x36EE,
        0x10B1,0x1B1D,0x3328,0x1017,0x38E4,0x095C,0x1F86,0x252D,
        0x1E38,0x0B8D,0x3F0A,0x26EA,0x0D87,0x37EF,0x1EB1,0x3405,
        0x11C3,0x3ABD,0x1725,0x2052,0x27B4,0x0550,0x1F95,0x38D1,
        0x1B84,0x2389,0x18C9,0x2739,0x1DE1,0x0F20,0x3D51,0x261B,
        0x0107,0x3BE6,0x2824,0x049D,0x2599,0x3EC6,0x0F5C,0x28B0,
        0x145F,0x23F7,0x311B,0x0CC5,0x290F,0x0608,0x2077,0x3294,
        0x15D2,0x289E,0x1EE1,0x037B,0x236E,0x141D,0x3F43,0x17E8,
        0x38D0,0x042B,0x3687,0x192C,0x0145,0x3ED1,0x29E3,0x04EE,
        0x1E3E,0x3957,0x00B0,0x3E52,0x0D98,0x35C9,0x141A,0x3D9F,
        0x0C1C,0x36AC,0x1F85,0x09A4,0x3A5A,0x2291,0x0D27,0x395B,
        0x0406,0x1344,0x32FD,0x1FB5,0x3619,0x096C,0x3EC2,0x1460,
        0x2727,0x1B9B,0x377F,0x020D,0x184C,0x2924,0x04D3,0x2C16,
        0x1A84,0x3B8E,0x0575,0x286E,0x0A40,0x2D3A,0x041B,0x2636,
        0x0CA6,0x20E4,0x3FAD,0x0818,0x372E,0x17B9,0x3281,0x0B18,
        0x2FA6,0x100B,0x3D5A,0x1987,0x387E,0x1687,0x22D8,0x3E17,
        0x13C4,0x254F,0x37C0,0x0E30,0x3F77,0x151D,0x2AB2,0x0139,
        0x2CF2,0x21DE,0x087E,0x2712,0x1D08,0x3207,0x0E3E,0x3963,
        0x2CD4,0x227B,0x0267,0x1930,0x2C15,0x16CA,0x0177,0x1A14,
        0x2865,0x0339,0x2D07,0x0835,0x33A1,0x197C,0x2FE4,0x0FEF,
        0x2AD6,0x0C8B,0x3C36,0x0531,0x3723,0x2237,0x07DC,0x17F9,
        0x351F,0x0B81,0x1980,0x33BA,0x1D6A,0x086E,0x2E07,0x0064,
        0x331D,0x0A10,0x1AC8,0x3FD4,0x137F,0x3848,0x1A98,0x00F0,
        0x3A02,0x0A8B,0x3380,0x169E,0x2EBC,0x20E6,0x0092,0x307A,
        0x1545,0x2D48,0x0C2B,0x278A,0x31D0,0x0AF5,0x15AB,0x3474,
        0x2469,0x130E,0x316C,0x154B,0x2F7C,0x20B9,0x02B8,0x23F4,
        0x2C94,0x0477,0x18CC,0x344E,0x1606,0x01F6,0x3199,0x1A17,
        0x2375,0x2E61,0x187C,0x0233,0x1682,0x29DF,0x1C55,0x0138,
        0x393D,0x08FE,0x24F3,0x1DF8,0x3B14,0x1250,0x36AA,0x1E39,
        0x029C,0x2202,0x3030,0x10C1,0x332B,0x1461,0x3968,0x15FF,
        0x35FD,0x0200,0x281A,0x1D96,0x0EEC,0x2D86,0x1397,0x293C,
        0x05D1,0x1F73,0x2438,0x042E,0x272A,0x0B69,0x2D51,0x0795,
        0x2A73,0x036F,0x1BC0,0x302E,0x0498,0x32BF,0x177E,0x3D09,
        0x0E5A,0x35E9,0x1823,0x3FB5,0x01EB,0x19A2,0x2977,0x04C8,
        0x0F5A,0x37A3,0x1C79,0x3550,0x0747,0x3A2C,0x1F98,0x3F80,
        0x0A80,0x3675,0x1BD6,0x3DE4,0x1548,0x25E4,0x08ED,0x3FD4,
        0x03B8,0x33CB,0x1482,0x2EF5,0x0BD8,0x31A9,0x1C98,0x2A50,
        0x1132,0x3083,0x242B,0x1027,0x398E,0x168B,0x21F2,0x37F6,
        0x1164,0x3B19,0x252A,0x0294,0x2CF6,0x0AB3,0x300F,0x24B8,
        0x1489,0x2C84,0x1029,0x3C68,0x081A,0x3700,0x1B0F,0x2557,
        0x0896,0x1C3A,0x3D82,0x2141,0x0FEB,0x201B,0x3B46,0x1A5F,
        0x07CD,0x2C37,0x0A83,0x29A5,0x061E,0x1BD4,0x396E,0x19C5,
        0x0DF6,0x3B6F,0x2363,0x075C,0x214D,0x3E3F,0x1E40,0x07C9,
        0x3737,0x09ED,0x38AC,0x1EF5,0x3BC7,0x073F,0x3273,0x21E1,
        0x17BF,0x2F48,0x0DFD,0x321A,0x06BC,0x2CB8,0x0A69,0x2655,
        0x34B7,0x17ED,0x0928,0x3858,0x1BF6,0x23F1,0x07D7,0x2C38,
        0x0FF6,0x30AC,0x1336,0x38CE,0x24AA,0x0270,0x3CAA,0x0E1A,
        0x39B3,0x2A18,0x1412,0x35A2,0x121E,0x3B81,0x1D0A,0x361E,
        0x1081,0x3C02,0x23F6,0x0CE6,0x2950,0x1FE8,0x07D4,0x1E9E,
        0x28E0,0x04FF,0x2F41,0x142C,0x22C4,0x3591,0x10DE,0x3D72,
        0x25DF,0x0810,0x2DE0,0x148D,0x29F4,0x123F,0x2E34,0x0F12,
        0x2B7E,0x21AC,0x0DA3,0x2421,0x00A0,0x3A20,0x209A,0x1A55,
        0x2CEA,0x10D4,0x2888,0x1739,0x2B73,0x132F,0x39ED,0x039C,
        0x3F93,0x1FF6,0x0611,0x2BAD,0x028A,0x303A,0x0955,0x1CC0,
        0x2952,0x0643,0x1F6A,0x29B3,0x17C3,0x3680,0x1E1A,0x0E23,
        0x3EED,0x0591,0x25AD,0x1D10,0x2AEA,0x0DB6,0x320E,0x10BB,
        0x3B32,0x2A76,0x147A,0x05DE,0x3996,0x296D,0x0331,0x25A3,
        0x378B,0x1163,0x3D12,0x16B1,0x33A5,0x2386,0x0949,0x21B6,
        0x2FD8,0x1305,0x325E,0x1B04,0x2A34,0x0FB0,0x2DB9,0x1594,
        0x2797,0x1D7B,0x0E97,0x2D27,0x136F,0x27E7,0x1014,0x3CA5,
        0x0630,0x22DE,0x3E24,0x1484,0x277E,0x1997,0x3CF7,0x1602,
        0x0D28,0x3F8C,0x1DB6,0x2542,0x015B,0x3D3F,0x1AF2,0x216C,
        0x3BC9,0x0A55,0x2A70,0x06CC,0x1F13,0x3396,0x18C3,0x23CD,
        0x1E5D,0x0102,0x2EB1,0x0CF3,0x2C74,0x188E,0x0248,0x208B,
        0x2FD5,0x08D5,0x1849,0x3841,0x1210,0x3B59,0x1B3A,0x347F,
        0x1299,0x3ACC,0x2122,0x0A1E,0x2BCC,0x06D1,0x2E7E,0x17EE,
        0x3121,0x1F41,0x0ECB,0x3E66,0x0BDB,0x261D,0x0474,0x348A,
        0x1B1F,0x067C,0x316B,0x176B,0x2FC3,0x13B2,0x3498,0x0E62,
        0x22B4,0x3878,0x0791,0x3E20,0x0054,0x2571,0x0D7E,0x2CC8,
        0x0A99,0x1B34,0x36D5,0x13A3,0x3DB1,0x231D,0x1A35,0x3C3F,
        0x14CC,0x3507,0x0FDD,0x39E1,0x07EC,0x2352,0x03B6,0x3445,
        0x2106,0x19C3,0x38AA,0x023A,0x1801,0x3DF0,0x0536,0x28DC,
        0x1DA8,0x0280,0x22C2,0x339B,0x1835,0x0CA8,0x3013,0x0EA9,
        0x1EE3,0x2F3C,0x01B8,0x276E,0x0E33,0x374A,0x149B,0x3F20,
        0x0058,0x2AB4,0x0A86,0x3CF0,0x0342,0x3823,0x0B4B,0x352F,
        0x00AC,0x3F44,0x2349,0x0484,0x3438,0x0D2A,0x2B5D,0x15A9,
        0x306D,0x1AC9,0x0375,0x2B85,0x0B96,0x2F04,0x0106,0x23C2,
        0x2E7B,0x061C,0x2B52,0x1174,0x2F2A,0x0F3F,0x33E6,0x03D9,
        0x190C,0x2F06,0x1C41,0x3D7C,0x0D47,0x2795,0x076D,0x3222,
        0x0C10,0x378C,0x1A25,0x3F56,0x06A8,0x2248,0x31BD,0x115D,
        0x268F,0x1C62,0x323F,0x00BA,0x2D4D,0x0A9F,0x27C5,0x030C,
        0x2E00,0x0B64,0x1AAA,0x374D,0x15A4,0x3B3D,0x1D5B,0x0313,
        0x1269,0x3B9E,0x23C7,0x00CB,0x31A6,0x18D4,0x3995,0x1318,
        0x2517,0x3C42,0x1145,0x37D7,0x0B74,0x29F0,0x06C0,0x2EAD,
        0x0261,0x1D88,0x2683,0x1272,0x32C4,0x1953,0x35CC,0x1535,
        0x2699,0x2FD3,0x0EA1,0x2A4B,0x1830,0x0AD6,0x31C0,0x0415,
        0x2BFB,0x0C36,0x2EAC,0x12F1,0x1EF4,0x3D8A,0x1509,0x2815,
        0x0874,0x2F4C,0x0CCA,0x33D6,0x2402,0x11BB,0x2D0C,0x0E96,
        0x3145,0x18CB,0x2DF0,0x0975,0x280D,0x37F7,0x129E,0x3FBC,
        0x06BB,0x2365,0x14E7,0x3A12,0x1FD6,0x03DE,0x285B,0x1834,
        0x31DD,0x11B9,0x2732,0x146B,0x2CB9,0x2308,0x169D,0x21AD,
        0x2C28,0x0F52,0x2F15,0x18F7,0x2164,0x39F2,0x02AC,0x35F7,
        0x0A17,0x2015,0x33F7,0x16C5,0x390D,0x13E5,0x3703,0x1C15,
        0x0E76,0x33C0,0x1791,0x3A63,0x0C57,0x29BD,0x13B8,0x27A0,
        0x3806,0x148B,0x0096,0x222E,0x350D,0x1290,0x3AF4,0x1670,
        0x28C0,0x20FA,0x104E,0x2551,0x1BE1,0x39CA,0x0A3C,0x36E2,
        0x04F3,0x3EC0,0x147F,0x2575,0x1DAC,0x3648,0x1169,0x3E8A,
        0x16B5,0x2534,0x31E1,0x002D,0x28A1,0x0C16,0x24B6,0x381A,
        0x2B78,0x05DA,0x1B49,0x36A0,0x1537,0x28A3,0x0D6D,0x2F18,
        0x0214,0x1D9D,0x2A1C,0x042F,0x26ED,0x108A,0x3BCB,0x1FED,
        0x35A8,0x0EEB,0x3B01,0x1F5E,0x09B5,0x2960,0x04D1,0x3C87,
        0x2091,0x01CB,0x3B6B,0x0783,0x2163,0x361A,0x11B4,0x23D8,
        0x1DA0,0x3E70,0x0173,0x24DB,0x317C,0x0CA1,0x2E26,0x173B,
        0x3B37,0x12D3,0x291A,0x1E2F,0x08E9,0x3630,0x1CCF,0x3A16,
        0x0A53,0x35FC,0x134E,0x3E95,0x1F80,0x0052,0x1D58,0x26C1,
        0x1897,0x3183,0x1D8B,0x0BDC,0x30E7,0x1A8A,0x2EE8,0x0890,
        0x2116,0x3A8A,0x04F6,0x35A0,0x1CFD,0x087D,0x3B8F,0x0538,
        0x1C8D,0x36D3,0x06CD,0x3C64,0x0ACC,0x1B87,0x28F7,0x125A,
        0x24C3,0x3AFB,0x0D95,0x292C,0x051E,0x257C,0x09CF,0x288D,
        0x3C1B,0x21A0,0x033F,0x22C5,0x32C3,0x0500,0x3E6F,0x1D44,
        0x0852,0x232A,0x311D,0x1814,0x0510,0x2CB3,0x1CA0,0x02ED,
        0x3E2A,0x0885,0x3366,0x03B7,0x2B31,0x12E2,0x28BD,0x16CB,
        0x2C46,0x1E2D,0x09B2,0x3A8E,0x06B5,0x195F,0x2EF1,0x0D75,
        0x2A0C,0x075A,0x1EC1,0x3D64,0x11BF,0x333B,0x196F,0x0A94,
        0x1600,0x3517,0x273E,0x09F5,0x2AF6,0x0519,0x3DD0,0x2152,
        0x17E6,0x329E,0x0C8D,0x3E8C,0x14BC,0x2DB1,0x1AE6,0x093C,
        0x179C,0x2A29,0x0586,0x2455,0x34EB,0x136D,0x2E65,0x0FD2,
        0x18E1,0x3211,0x140A,0x1E68,0x2E17,0x00C3,0x277B,0x3944,
        0x0DAC,0x176E,0x2AED,0x1C4F,0x05E9,0x37A1,0x20B2,0x001C,
        0x1BD0,0x327E,0x044D,0x3BFE,0x18E6,0x26E3,0x0136,0x1704,
        0x2B4B,0x1F01,0x045F,0x2456,0x156C,0x2345,0x352A,0x09F8,
        0x36CC,0x04C9,0x3C69,0x2242,0x0730,0x3DFF,0x102B,0x37B9,
        0x1BA4,0x0C6F,0x29B4,0x0F11,0x2EA6,0x1853,0x2419,0x3176,
        0x10B9,0x2670,0x2056,0x1714,0x2323,0x31E0,0x0814,0x3F7C,
        0x1D3F,0x005F,0x2FAF,0x1180,0x3E96,0x18AB,0x3274,0x1661,
        0x074B,0x1B2C,0x2FD0,0x0B3C,0x1E62,0x25F3,0x0E9F,0x2EA2,
        0x1728,0x345A,0x09E2,0x3F6C,0x264A,0x0FE3,0x30F7,0x21F4,
        0x1150,0x2FFE,0x17FA,0x3C48,0x0DD3,0x3527,0x015C,0x3D3C,
        0x0C61,0x23A3,0x318F,0x15D8,0x2B79,0x2266,0x0203,0x38C9,
        0x14C5,0x34C1,0x1099,0x22E2,0x2B26,0x0560,0x3EF9,0x2377,
        0x2ECD,0x0C42,0x2049,0x3B00,0x118D,0x33BF,0x1E41,0x0977,
        0x3895,0x1431,0x25AA,0x1C17,0x343A,0x0189,0x3677,0x1E90,
        0x3F53,0x1156,0x320B,0x0DFA,0x1DE5,0x3EEE,0x0894,0x232D,
        0x397B,0x0BC9,0x22DA,0x380E,0x1248,0x3F30,0x199C,0x06E4,
        0x21CF,0x36B4,0x0B14,0x3BAD,0x1937,0x271C,0x108F,0x34C2,
        0x265F,0x0EEF,0x2A19,0x1125,0x2C47,0x0E09,0x3F7D,0x24CC,
        0x074A,0x3C6E,0x1B4D,0x389E,0x0827,0x2E3E,0x0F30,0x2A14,
        0x137A,0x2882,0x0F77,0x2D35,0x1773,0x263D,0x2046,0x0257,
        0x236B,0x3305,0x13EA,0x3FA9,0x0167,0x3776,0x0D99,0x1F9A,
        0x3DE1,0x09D0,0x33D4,0x0178,0x38CB,0x1541,0x2C2E,0x10B7,
        0x2DA7,0x1943,0x2228,0x34DC,0x0B0E,0x27EE,0x01E9,0x39B4,
        0x1EF8,0x359D,0x14CD,0x3CA4,0x1313,0x388C,0x20A4,0x022B,
        0x3A94,0x1567,0x2B93,0x0E58,0x200C,0x3A17,0x0AD9,0x36E7,
        0x1AD8,0x26AA,0x0BC6,0x1CEF,0x2D50,0x15B1,0x2746,0x13C7,
        0x2E68,0x1A81,0x0346,0x3576,0x0FBD,0x3CA6,0x1BA6,0x214A,
        0x2C02,0x0420,0x39B8,0x08FF,0x1770,0x30AD,0x1C4D,0x0197,
        0x11DC,0x3D2E,0x180F,0x02DC,0x2D52,0x21FB,0x10C0,0x3026,
        0x2312,0x05CC,0x3AD7,0x08A7,0x2182,0x2BD1,0x0D1A,0x2799,
        0x0317,0x2C77,0x185F,0x38FB,0x012A,0x25FB,0x1A4A,0x30B6,
        0x02D3,0x1D49,0x2D10,0x05B6,0x2ADC,0x09A1,0x3012,0x1C8E,
        0x3236,0x0469,0x2F1D,0x13F9,0x3322,0x09FD,0x3F67,0x1DAA,
        0x0B02,0x3D2B,0x1C84,0x3803,0x06D8,0x32F6,0x207F,0x11A4,
        0x3191,0x1522,0x2F77,0x0FBB,0x32AD,0x17A3,0x3DC1,0x031A,
        0x3911,0x1F18,0x3427,0x0124,0x39C7,0x0CC2,0x3480,0x1657,
        0x3BD5,0x05CF,0x25DC,0x1AC5,0x2AC9,0x134C,0x2FDD,0x02EA,
        0x19FD,0x2980,0x1212,0x2B0C,0x0CB2,0x2775,0x03CE,0x3352,
        0x0A78,0x3A42,0x0733,0x1CE3,0x2AE9,0x127A,0x30B0,0x0F9C,
        0x2C54,0x0BFB,0x2883,0x0014,0x2A57,0x0919,0x34B0,0x1AC7,
        0x2536,0x05BB,0x1C6A,0x3644,0x01C5,0x1957,0x2AB5,0x0661,
        0x2CDB,0x0032,0x38E8,0x247D,0x052E,0x3ACE,0x0B4C,0x349A,
        0x06D7,0x391D,0x2615,0x0CD1,0x296E,0x05C3,0x3077,0x0A51,
        0x132B,0x3151,0x1CD0,0x2181,0x3C4D,0x0F1F,0x2662,0x3704,
        0x2C26,0x067F,0x256C,0x377A,0x1A29,0x088F,0x3B6E,0x0013,
        0x1BBF,0x2B2E,0x1632,0x31D6,0x1008,0x19BA,0x3CEC,0x15CF,
        0x37AF,0x1F07,0x07D9,0x2075,0x2F26,0x1494,0x3773,0x0E86,
        0x21A4,0x3E00,0x0F71,0x357B,0x17E0,0x263E,0x0EFA,0x3AD8,
        0x11EB,0x28E6,0x0E5C,0x2572,0x0272,0x2C80,0x221D,0x04D7,
        0x3099,0x2329,0x0204,0x16EC,0x2DBD,0x1A51,0x0395,0x3750,
        0x0B7B,0x2674,0x01DF,0x2965,0x1FE6,0x0585,0x1E7A,0x2BB7,
        0x162E,0x08D3,0x1BAC,0x28FB,0x1223,0x2A41,0x065C,0x2E66,
        0x0DE3,0x1E71,0x3102,0x0A77,0x21C3,0x3C40,0x0C20,0x20F9,
        0x39A4,0x0642,0x3618,0x1B2D,0x3E59,0x12EC,0x3804,0x14A2,
        0x1F72,0x269B,0x1769,0x37BF,0x0432,0x3D7B,0x1A62,0x246E,
        0x055B,0x3F5D,0x108D,0x36DA,0x19E7,0x2F51,0x113F,0x2C19,
        0x0DDD,0x3D03,0x27F9,0x1119,0x3048,0x2509,0x0F76,0x3CD0,
        0x131B,0x3404,0x2038,0x0E34,0x31E2,0x1D9E,0x2905,0x186C,
        0x23FF,0x1F8F,0x1270,0x3FD4,0x146C,0x36B1,0x17F2,0x2426,
        0x3F2D,0x18D2,0x0B90,0x2D4E,0x02A3,0x2A1D,0x084F,0x1ACE,
        0x0F6A,0x3060,0x1D93,0x0ADE,0x325F,0x293E,0x1519,0x2703,
        0x3F31,0x0BE1,0x3708,0x0343,0x22CD,0x30C8,0x04F5,0x28EB,
        0x0A28,0x32CF,0x1B7F,0x3C0B,0x10A1,0x2963,0x048A,0x1EB9,
        0x335A,0x0820,0x2902,0x1C1A,0x0370,0x3CF4,0x2359,0x01E6,
        0x2C60,0x189D,0x3E1B,0x15BA,0x38E0,0x1D0E,0x0D9A,0x39F4,
        0x1F2F,0x134F,0x3525,0x2288,0x09A7,0x397D,0x286A,0x143E,
        0x2AF0,0x12DD,0x3BA5,0x0B09,0x3668,0x1A34,0x3A28,0x0B48,
        0x3335,0x23FB,0x3F55,0x0A39,0x353E,0x1D4A,0x3D45,0x1931,
        0x223C,0x38E6,0x1015,0x36CB,0x046D,0x171A,0x32C6,0x26E0,
        0x0E3A,0x2B8C,0x1E96,0x0431,0x1FD0,0x2A10,0x07CB,0x2499,
        0x3CFF,0x0249,0x32C2,0x0DFC,0x2EA7,0x1DC8,0x08B4,0x31BB,
        0x20E8,0x17D4,0x3007,0x230A,0x05EC,0x1F81,0x3ED0,0x03A6,
        0x32F7,0x1EC5,0x08CC,0x390C,0x20DE,0x0BFA,0x3256,0x1D0D,
        0x27BA,0x0927,0x1743,0x3FAA,0x1635,0x0848,0x3744,0x0295,
        0x3DDD,0x0A9E,0x2FAC,0x0065,0x2879,0x1D1F,0x08AA,0x344D,
        0x0146,0x22B6,0x3872,0x1562,0x35C7,0x1374,0x3A87,0x23BC,
        0x3FD4,0x14FA,0x38FC,0x133B,0x209F,0x056D,0x3623,0x0A3E,
        0x18EC,0x2D6F,0x125C,0x1F0E,0x2A89,0x0B41,0x3A06,0x13BA,
        0x2EAE,0x1288,0x2AA6,0x0563,0x33C4,0x0CB8,0x3A5F,0x24EA,
        0x12A0,0x2BDD,0x1434,0x38AF,0x20EF,0x1093,0x1DC6,0x379A,
        0x0C5F,0x30DF,0x0737,0x2850,0x0B8F,0x2E3F,0x1AC6,0x25DB,
        0x07CF,0x2EE2,0x0E4B,0x3EA1,0x1DCA,0x0F42,0x210E,0x3D14,
        0x06AD,0x3436,0x1CA9,0x2D00,0x0ED4,0x27C7,0x126B,0x2989,
        0x1AFB,0x0232,0x1588,0x2DFA,0x183C,0x03A1,0x2576,0x09B1,
        0x2CE1,0x00B4,0x2B35,0x1CBB,0x233A,0x2D73,0x0713,0x1969,
        0x34D4,0x1435,0x3CBB,0x16CE,0x3266,0x1025,0x2F6B,0x1CAB,
        0x0C85,0x2CF5,0x115C,0x28EA,0x13B5,0x2521,0x3B16,0x0D62,
        0x3641,0x02D1,0x1F9E,0x0C90,0x3B68,0x0F51,0x26D6,0x18F0,
        0x240D,0x1254,0x2D43,0x19D0,0x04DB,0x3E56,0x17D2,0x0345,
        0x3A55,0x211B,0x2A4A,0x03DA,0x2ED9,0x221A,0x19ED,0x30C2,
        0x11AC,0x2C1B,0x1534,0x3348,0x0EC2,0x3B96,0x2303,0x1688,
        0x202F,0x2F17,0x05D5,0x25F8,0x0992,0x31A5,0x1F36,0x0408,
        0x0CA7,0x2AE3,0x012E,0x2796,0x3E05,0x1796,0x2445,0x1DE3,
        0x3095,0x06B4,0x24F5,0x3C88,0x0F66,0x3354,0x1C5F,0x2588,
        0x00A1,0x3E27,0x0C1E,0x2779,0x165E,0x2D85,0x1B48,0x09EA,
        0x3BCA,0x002B,0x318D,0x0B83,0x281D,0x34E4,0x0A71,0x271A,
        0x1F55,0x134A,0x365B,0x16DA,0x3437,0x03F1,0x3CB3,0x10DD,
        0x3751,0x1603,0x2AAB,0x051F,0x31F2,0x2403,0x009E,0x1C67,
        0x30CF,0x17F3,0x0437,0x22A8,0x3EC1,0x00EF,0x3555,0x0736,
        0x3C3C,0x1F6C,0x36DD,0x0D7A,0x22D2,0x3A84,0x110D,0x35E4,
        0x12CD,0x3E7A,0x17F6,0x0CF4,0x382B,0x1287,0x3EF2,0x1FF8,
        0x0025,0x28BE,0x088B,0x2DE7,0x0A4C,0x3ADC,0x010A,0x340C,
        0x1848,0x228C,0x3F14,0x0859,0x3887,0x00C7,0x1985,0x2AB1,
        0x12E5,0x283F,0x396B,0x1693,0x2355,0x3202,0x0761,0x381B,
        0x0AF6,0x3AFC,0x00D2,0x3505,0x28E8,0x1218,0x2427,0x2FBE,
        0x14D4,0x0D03,0x3793,0x1E78,0x1110,0x3B55,0x0EA8,0x24EB,
        0x1F27,0x050B,0x39DC,0x1A60,0x2AF7,0x03C9,0x3111,0x0CFE,
        0x3DAA,0x1030,0x1E30,0x3BF2,0x19C6,0x2463,0x0E8B,0x33E3,
        0x2857,0x1624,0x3310,0x1B8C,0x095F,0x3460,0x025B,0x3810,
        0x144A,0x3A41,0x1A8C,0x0129,0x2CF7,0x17FB,0x0623,0x3866,
        0x1F45,0x14DF,0x34CC,0x0FF3,0x3D6D,0x0215,0x2221,0x3523,
        0x159F,0x26AF,0x177A,0x3FCE,0x064D,0x1A15,0x2D8D,0x04F4,
        0x3CA2,0x239A,0x007A,0x2986,0x1185,0x246C,0x17F5,0x29EA,
        0x0114,0x324C,0x0C3C,0x2692,0x1139,0x3B66,0x167C,0x2BA8,
        0x097E,0x273A,0x39E5,0x11BA,0x1E51,0x315B,0x1947,0x2DA1,
        0x0E94,0x2BD9,0x05F0,0x1DEC,0x3239,0x07EB,0x3020,0x19D1,
        0x278C,0x08B5,0x2162,0x2F34,0x030B,0x29C7,0x0B27,0x251E,
        0x3A48,0x10AD,0x3764,0x190F,0x26B5,0x1BCF,0x240E,0x1574,
        0x39D3,0x055F,0x1E1F,0x31DF,0x1C0F,0x218B,0x357E,0x0670,
        0x3D44,0x1BE7,0x08F2,0x3375,0x0149,0x1B30,0x29CD,0x1392,
        0x2ECA,0x1745,0x25BD,0x1E9D,0x0AA5,0x31B2,0x07B9,0x1B4C,
        0x3611,0x26BA,0x06AB,0x3158,0x259B,0x00ED,0x3399,0x093D,
        0x3C1A,0x284E,0x1E17,0x080F,0x1F83,0x37C8,0x1221,0x2CAA,
        0x071C,0x26F3,0x322D,0x0C62,0x2B97,0x0074,0x2E93,0x1281,
        0x0610,0x3AA9,0x0AC8,0x22AB,0x2F87,0x121D,0x2C56,0x0EFB,
        0x283E,0x0C78,0x346A,0x218C,0x0A5C,0x3FBB,0x2337,0x0E73,
        0x3036,0x22DB,0x03F0,0x2F5D,0x2011,0x1874,0x2B71,0x0739,
        0x3058,0x0D8A,0x2EED,0x1133,0x1FD9,0x3A24,0x147D,0x32A9,
        0x1959,0x0F86,0x3967,0x1A59,0x3FAE,0x0690,0x35D0,0x0D2C,
        0x3A8F,0x2140,0x1919,0x3043,0x1F82,0x07B0,0x3451,0x0CDC,
        0x3FD4,0x2039,0x0E63,0x2E81,0x086C,0x2532,0x0C67,0x20C3,
        0x3849,0x166C,0x2215,0x3E2F,0x1261,0x2A78,0x1CB6,0x02A9,
        0x3961,0x1B58,0x350E,0x11B7,0x3B35,0x161A,0x358B,0x1A79,
        0x09F2,0x2CF3,0x1CFB,0x035D,0x3FD4,0x0BAA,0x35DC,0x06F8,
        0x2801,0x12B6,0x2BC0,0x15FE,0x0C27,0x303B,0x1559,0x2999,
        0x1104,0x23D4,0x2EF9,0x0FD1,0x204C,0x3DFC,0x0EB0,0x35F8,
        0x2138,0x063E,0x3FD4,0x0EE7,0x3748,0x1487,0x3C05,0x2AD9,
        0x0161,0x18A6,0x3D13,0x0FF2,0x1A2D,0x2D18,0x14F5,0x29C4,
        0x179B,0x0D19,0x33C8,0x1423,0x2F59,0x09DF,0x2590,0x1C7D,
        0x399C,0x1944,0x0383,0x37E9,0x13EE,0x3E44,0x1B3D,0x36B6,
        0x2D69,0x216E,0x1744,0x3C37,0x047D,0x2648,0x1A07,0x3EB1,
        0x03E8,0x29FB,0x1033,0x2EB7,0x1E5C,0x1111,0x3547,0x1D33,
        0x077F,0x3B0E,0x1951,0x2602,0x08C6,0x376C,0x0E12,0x3E82,
        0x1D07,0x2899,0x0529,0x367F,0x2520,0x019C,0x29D8,0x0CCB,
        0x2502,0x2FC6,0x0887,0x2B1E,0x0BF8,0x3163,0x156F,0x27CA,
        0x1BBB,0x08DA,0x3E01,0x02F5,0x390B,0x1AD6,0x224B,0x2F0C,
        0x1A12,0x0255,0x35B3,0x1702,0x37CC,0x159A,0x3D96,0x0348,
        0x2654,0x09D3,0x2ED2,0x0010,0x26F7,0x0AD0,0x3CDC,0x2318,
        0x1491,0x2E32,0x04E4,0x2626,0x0BF3,0x2821,0x05C2,0x3182,
        0x241D,0x11F0,0x30E3,0x225A,0x1363,0x2BE8,0x1116,0x2FFB,
        0x1D71,0x3788,0x02B5,0x3AB1,0x25D1,0x04AF,0x3BE0,0x0B1B,
        0x3456,0x03AC,0x1922,0x37CE,0x275B,0x09E9,0x2DCE,0x0312,
        0x1A4B,0x2B25,0x12C8,0x2E2B,0x02A8,0x284B,0x2010,0x0E71,
        0x227F,0x2D7D,0x0A21,0x23D2,0x3817,0x0C22,0x3EE0,0x0453,
        0x35E0,0x2250,0x01B6,0x3E8F,0x1817,0x20FD,0x3C66,0x0219,
        0x153A,0x2FFD,0x23AB,0x0F9B,0x2920,0x1FDD,0x07D5,0x1E77,
        0x139D,0x01F4,0x318C,0x0DB2,0x2003,0x3951,0x07F5,0x1D74,
        0x339C,0x13AC,0x3D69,0x05A9,0x36E9,0x2740,0x0296,0x2C7B,
        0x213C,0x0BDA,0x35F1,0x15B2,0x30EC,0x1234,0x2929,0x19E1,
        0x02C2,0x3880,0x2324,0x0C71,0x1B80,0x347B,0x120E,0x3EDD,
        0x0344,0x1E44,0x3389,0x1407,0x26A7,0x1037,0x2C7D,0x039E,
        0x30CB,0x231A,0x16A3,0x2BED,0x0DF2,0x2A4C,0x04B4,0x13E7,
        0x3867,0x2356,0x0C23,0x2C29,0x04D6,0x28EF,0x0DAE,0x32D0,
        0x1A89,0x3B09,0x0FD0,0x35FE,0x1866,0x2C3E,0x0F9E,0x31D1,
        0x0780,0x1D52,0x3F62,0x16EB,0x338D,0x1070,0x3DCA,0x1ECE,
        0x0220,0x3C75,0x07F1,0x366E,0x1EEA,0x04E9,0x3B5C,0x21CA,
        0x0CE7,0x18DD,0x30FA,0x2095,0x0F16,0x2CE8,0x11F1,0x27DE,
        0x1477,0x3FB9,0x2570,0x06F3,0x14E1,0x3A04,0x1CDB,0x22E0,
        0x3C72,0x0A41,0x368E,0x21A1,0x1B08,0x39DB,0x0557,0x1DBF,
        0x3F3C,0x1398,0x32D5,0x1D5D,0x05AB,0x27F2,0x1B73,0x2BDB,
        0x114E,0x2DFE,0x1B24,0x274F,0x059C,0x31C5,0x0D79,0x29FE,
        0x35E1,0x08A4,0x1BED,0x330B,0x0525,0x35B4,0x17EC,0x3CE9,
        0x27CF,0x388A,0x2325,0x1991,0x2BDC,0x1188,0x30FC,0x2416,
        0x0AD7,0x2CBA,0x1C89,0x254A,0x0D26,0x1775,0x3276,0x12F0,
        0x3EB5,0x1AF6,0x279D,0x0148,0x21D6,0x3C34,0x05B1,0x334D,
        0x2093,0x0EE4,0x16E1,0x3CDA,0x27DC,0x0989,0x2CDD,0x202B,
        0x359E,0x0E9B,0x21B7,0x3BF7,0x0228,0x36A2,0x1ECA,0x3B7E,
        0x0F90,0x37F1,0x0BDD,0x21E4,0x3695,0x1586,0x3DAB,0x25BF,
        0x07EE,0x2DE3,0x14CE,0x216A,0x3C04,0x123B,0x2B49,0x1EA5,
        0x0821,0x1FBB,0x289A,0x14BB,0x310A,0x054B,0x37DD,0x1731,
        0x21D2,0x2B5F,0x0AA6,0x297C,0x0140,0x2DAE,0x2204,0x13C9,
        0x2C5C,0x18B3,0x2925,0x0D8E,0x2640,0x32EC,0x177F,0x01BC,
        0x3D92,0x2970,0x140F,0x0978,0x3EAA,0x1CD7,0x3337,0x019D,
        0x2F84,0x1F08,0x0E4F,0x32BB,0x2AD1,0x1708,0x05A0,0x33D5,
        0x11B8,0x3014,0x188C,0x0723,0x2C9C,0x1091,0x2647,0x30F5,
        0x0903,0x2907,0x02E9,0x3A9F,0x16A6,0x3657,0x0EFD,0x214F,
        0x38F2,0x0769,0x3B1D,0x1051,0x36FC,0x1649,0x2431,0x1EE2,
        0x10C7,0x278B,0x3F79,0x0E0E,0x2DC6,0x1073,0x2A5C,0x0BF9,
        0x1F57,0x1532,0x0652,0x3F71,0x09C8,0x3669,0x00BC,0x16BD,
        0x3B60,0x1886,0x01E0,0x38A7,0x2287,0x3C11,0x09D7,0x2871,
        0x04B3,0x331C,0x11E5,0x39BF,0x1D57,0x0D09,0x2C0A,0x0B46,
        0x3B38,0x2441,0x3241,0x069F,0x15D4,0x3A85,0x1AC2,0x07F9,
        0x17AC,0x2B81,0x05F4,0x1C26,0x2EE3,0x171B,0x07B6,0x1B6E,
        0x2943,0x0554,0x2E3B,0x1C09,0x015D,0x2D7C,0x0A73,0x1E6E,
        0x3504,0x188F,0x3A68,0x0669,0x1D24,0x2FE6,0x0195,0x3503,
        0x17B5,0x36FF,0x03D1,0x3FD4,0x0C03,0x1F28,0x2515,0x01D5,
        0x3BA3,0x0EF4,0x3656,0x139A,0x39F0,0x1DD8,0x0962,0x3401,
        0x0677,0x3705,0x12FE,0x3A09,0x1A8E,0x0995,0x2F12,0x24DC,
        0x1C0E,0x0740,0x36E5,0x233C,0x2A2A,0x06AA,0x1793,0x394C,
        0x22FA,0x082D,0x3AAD,0x1D9C,0x007C,0x2254,0x2CDA,0x0E31,
        0x2956,0x01E8,0x249D,0x3DAC,0x1544,0x3363,0x0C97,0x191A,
        0x389B,0x1238,0x2F4D,0x0D61,0x2601,0x0888,0x309A,0x0231,
        0x1D6C,0x2690,0x0B61,0x209E,0x2AD4,0x0ABD,0x3D6F,0x04A7,
        0x3857,0x18A7,0x0109,0x24BE,0x1A2A,0x3AE8,0x02EB,0x3455,
        0x0950,0x3061,0x1D32,0x28E5,0x1608,0x24A9,0x1DD3,0x2E7F,
        0x0868,0x26AB,0x329B,0x15D9,0x071E,0x1B59,0x2FFF,0x1563,
        0x2A7F,0x0F0E,0x2D04,0x0837,0x31D7,0x1525,0x22BD,0x2F4E,
        0x145E,0x00BD,0x1BB0,0x2EAB,0x23BD,0x0308,0x314F,0x1EEB,
        0x3DBC,0x1260,0x3808,0x24BD,0x09AB,0x3E7F,0x1F90,0x34A0,
        0x1211,0x3F2C,0x141C,0x33F8,0x2071,0x12C9,0x3993,0x0FFF,
        0x28F8,0x0059,0x2279,0x31C3,0x0F32,0x230B,0x3E7D,0x10A5,
        0x27E3,0x0E66,0x2E10,0x12F9,0x298F,0x3902,0x0D97,0x3326,
        0x18E7,0x2FE5,0x0470,0x2041,0x24A0,0x1108,0x38A2,0x17A5,
        0x26F9,0x0CAA,0x2E5D,0x0098,0x2064,0x3ED3,0x14E8,0x0B43,
        0x33C3,0x2715,0x1AB7,0x0045,0x1629,0x37B8,0x21D7,0x0A34,
        0x1A0D,0x2DBC,0x12C6,0x29EF,0x1AAE,0x3E81,0x0951,0x37AC,
        0x13F6,0x39A5,0x1D3E,0x0B22,0x27B9,0x0031,0x3AED,0x234A,
        0x0442,0x34C0,0x21D4,0x1BC5,0x3E33,0x1854,0x231C,0x3CCD,
        0x0F7C,0x2F0B,0x19C7,0x347C,0x0010,0x282F,0x179F,0x2D81,
        0x0B67,0x2B5B,0x1DCE,0x3934,0x0998,0x2383,0x1C25,0x2541,
        0x36A9,0x0F79,0x3A0A,0x037E,0x34D6,0x0D25,0x3D34,0x1131,
        0x36BC,0x20BC,0x0FBF,0x2E38,0x1E89,0x2B23,0x0033,0x3A0B,
        0x0AA2,0x3D1B,0x1BD5,0x24CE,0x17DC,0x3F1D,0x03A8,0x1911,
        0x3415,0x1F29,0x3F87,0x0A36,0x18E3,0x37B3,0x136C,0x28C8,
        0x00D4,0x2E20,0x0AFC,0x1894,0x2D55,0x1303,0x29F1,0x0037,
        0x259A,0x0AC5,0x2831,0x0855,0x3CE3,0x264C,0x043A,0x30AB,
        0x16A9,0x3F4B,0x0E39,0x1EE7,0x3795,0x08EB,0x1C24,0x2AA9,
        0x061F,0x3B77,0x1D7A,0x2451,0x0707,0x16A2,0x2D0F,0x213A,
        0x08B1,0x2595,0x1BDC,0x3D4C,0x0790,0x2FA7,0x02E1,0x2A81,
        0x0F56,0x3E30,0x1639,0x23C8,0x34A1,0x0613,0x27B0,0x38E9,
        0x1678,0x0DB1,0x3BEA,0x1F3D,0x2D30,0x0FAF,0x314D,0x1D53,
        0x3C4A,0x041A,0x36B7,0x0BCC,0x34DB,0x10E0,0x30CC,0x19A9,
        0x2630,0x085E,0x32AC,0x1786,0x35C1,0x208A,0x1012,0x2DE4,
        0x1F14,0x15F6,0x0971,0x2E5E,0x009A,0x3424,0x1175,0x1E88,
        0x3317,0x0427,0x3FC6,0x14C0,0x1FC6,0x3A91,0x0E32,0x219F,
        0x34A6,0x13D8,0x3000,0x1115,0x34E3,0x14EB,0x3EBA,0x129A,
        0x0048,0x2E03,0x17A1,0x25FC,0x1A65,0x2D54,0x0573,0x2937,
        0x1BDE,0x032E,0x398D,0x0B97,0x3DC2,0x10D9,0x3595,0x1998,
        0x2574,0x207D,0x026A,0x37B0,0x06CA,0x26A4,0x1DC5,0x3946,
        0x087A,0x2AE5,0x11B5,0x34FF,0x25B0,0x0CAC,0x2BF1,0x0FD7,
        0x3937,0x1BF3,0x2203,0x3412,0x0381,0x39CD,0x0D4A,0x376B,
        0x1A45,0x32A8,0x1771,0x2FEA,0x0F1C,0x18D8,0x371C,0x2176,
        0x09B6,0x23AD,0x2F28,0x0409,0x272B,0x18A3,0x340B,0x13A7,
        0x329C,0x1999,0x00FE,0x30BC,0x1C29,0x3C5A,0x0336,0x1AC1,
        0x3EAE,0x1464,0x342F,0x11E6,0x28D0,0x14E5,0x3CB4,0x1B92,
        0x3174,0x04B5,0x2B75,0x0ABF,0x17F0,0x305F,0x1D25,0x031E,
        0x21E7,0x2EBA,0x0507,0x334A,0x0AC4,0x3E0F,0x02EC,0x2B33,
        0x0D6B,0x2733,0x156E,0x2C4E,0x063D,0x256A,0x203D,0x0293,
        0x3CD4,0x212C,0x1326,0x2EB6,0x0619,0x3EB7,0x1C93,0x078B,
        0x3BF4,0x2475,0x37F4,0x0FB6,0x296C,0x0B82,0x2C7F,0x068B,
        0x27FC,0x172E,0x24F8,0x0CDA,0x301C,0x064C,0x3213,0x1A95,
        0x0273,0x3B53,0x07B8,0x270C,0x0434,0x2D05,0x0728,0x2B00,
        0x3BF6,0x2125,0x08D0,0x3E23,0x0C12,0x21C0,0x3871,0x0F1D,
        0x32FE,0x168E,0x27ED,0x211F,0x044E,0x2719,0x1FB6,0x068E,
        0x3447,0x100C,0x2E86,0x1395,0x319F,0x0E7F,0x2BC2,0x1315,
        0x2764,0x0F45,0x30C5,0x0416,0x1D8E,0x3C38,0x06E1,0x330D,
        0x2139,0x058B,0x3D0B,0x1096,0x27BC,0x1AD9,0x2443,0x1458,
        0x2CC6,0x064B,0x3B34,0x02EF,0x1FD1,0x2D26,0x070B,0x1BAA,
        0x3394,0x1079,0x1A53,0x38E1,0x1298,0x3C91,0x02D6,0x2D62,
        0x0A06,0x25E0,0x3936,0x0E08,0x348E,0x1018,0x2297,0x3596,
        0x0C92,0x2810,0x007D,0x2C4D,0x0D0E,0x3209,0x216F,0x09D5,
        0x2293,0x362D,0x114F,0x3A82,0x2493,0x0E05,0x3CE4,0x19B7,
        0x351D,0x0FFB,0x29BE,0x126C,0x27FF,0x1935,0x250E,0x145D,
        0x33F9,0x18A5,0x3F04,0x0FFD,0x1E3C,0x3B97,0x0DD7,0x2E85,
        0x15BF,0x353B,0x03C1,0x1EAC,0x29CA,0x0EDE,0x26CD,0x3181,
        0x1486,0x0234,0x1ABB,0x31CA,0x13E1,0x3BA2,0x2013,0x3899,
        0x0DD2,0x3686,0x083A,0x3977,0x18DC,0x2651,0x1075,0x3F19,
        0x25A4,0x124A,0x2A3D,0x15B9,0x319A,0x11B6,0x2804,0x16D5,
        0x0EBD,0x1ADA,0x2AB7,0x12C5,0x31C9,0x019E,0x1CE1,0x2C27,
        0x079E,0x3EDF,0x0E06,0x360B,0x18BB,0x3338,0x0C6A,0x2F0F,
        0x1750,0x38F5,0x0914,0x242C,0x1AD4,0x3AA0,0x09F3,0x35B6,
        0x01F3,0x3DE0,0x222C,0x170F,0x2DFF,0x14A6,0x282A,0x1B40,
        0x0E53,0x3034,0x15BC,0x2B03,0x0BAB,0x32C8,0x050A,0x3D6B,
        0x0C7C,0x28D8,0x1572,0x2494,0x35F6,0x0CD8,0x3C3A,0x22BE,
        0x0287,0x3D42,0x2851,0x0794,0x2CC2,0x0D8F,0x24ED,0x1CD6,
        0x3F0E,0x0F8F,0x208C,0x2B70,0x0866,0x1EE6,0x2F6A,0x05D0,
        0x2AB0,0x106F,0x3A3F,0x1E8D,0x36EF,0x057F,0x194E,0x2DF3,
        0x1351,0x1EE8,0x2876,0x0281,0x1DA7,0x2CEC,0x0786,0x28DD,
        0x091F,0x3F86,0x1B32,0x39C4,0x060D,0x368C,0x0BB1,0x3B12,
        0x077B,0x2F66,0x0170,0x21EA,0x3008,0x049A,0x3458,0x1D26,
        0x08F8,0x2741,0x1AF5,0x3210,0x1439,0x2F73,0x0AAD,0x20CC,
        0x34F1,0x1E50,0x3F7B,0x05FC,0x27B6,0x1A16,0x0390,0x16B9,
        0x2DD2,0x2244,0x1B99,0x294D,0x0337,0x2E45,0x1EA2,0x08F5,
        0x1C11,0x333E,0x0CB3,0x3D0D,0x1BAD,0x39D9,0x0BBF,0x32CD,
        0x267C,0x3585,0x04AE,0x37D6,0x2398,0x1642,0x3BA1,0x1181,
        0x25B6,0x1C77,0x2D8C,0x0981,0x2B69,0x13CD,0x3F9E,0x2165,
        0x0352,0x27C4,0x1C12,0x3E45,0x00F6,0x2155,0x2DCD,0x1619,
        0x2903,0x1CF1,0x0758,0x39F7,0x0AA0,0x35F0,0x0262,0x3EFD,
        0x2289,0x0911,0x36E4,0x017D,0x3AEB,0x1699,0x2A65,0x1907,
        0x33B3,0x10C5,0x3855,0x093F,0x19DC,0x2A97,0x11C0,0x31AE,
        0x152C,0x1F38,0x0BD6,0x3599,0x1759,0x20E5,0x3142,0x0754,
        0x1824,0x354F,0x0483,0x15C4,0x3D8F,0x2742,0x1389,0x3ACB,
        0x1611,0x32FB,0x1B31,0x08DD,0x1712,0x26AD,0x3B4D,0x0155,
        0x3860,0x086D,0x3FCA,0x1585,0x3758,0x11F7,0x3307,0x14D1,
        0x2C31,0x1E7D,0x022A,0x1FD5,0x3081,0x1597,0x2C67,0x1732,
        0x2981,0x1242,0x1F54,0x3856,0x0EB6,0x2901,0x1195,0x247C,
        0x3F78,0x0F2E,0x3765,0x0BAC,0x3A05,0x0154,0x3D61,0x17AD,
        0x050D,0x293A,0x10DA,0x2CD3,0x0E92,0x35D8,0x1F63,0x3D52,
        0x12FD,0x014D,0x3299,0x1419,0x3D8C,0x0D93,0x364A,0x23D6,
        0x38AB,0x05A6,0x2BCD,0x2121,0x0198,0x2255,0x2E48,0x03A2,
        0x1F9F,0x0D41,0x2D6D,0x1E33,0x0DEE,0x300B,0x063B,0x2086,
        0x31AF,0x00D8,0x172B,0x3BE1,0x1ED3,0x01EF,0x23B5,0x15A5,
        0x3AD9,0x0E36,0x336E,0x128E,0x3053,0x1868,0x060C,0x3B88,
        0x0B8B,0x351E,0x1982,0x2511,0x1F7F,0x10ED,0x2A62,0x13C2,
        0x346D,0x1A49,0x2578,0x1EEC,0x0F29,0x2FC0,0x1295,0x2677,
        0x01D7,0x2E8F,0x1C1C,0x2120,0x3F99,0x00CE,0x2706,0x08E1,
        0x39BB,0x23EE,0x307F,0x1C92,0x00A8,0x3753,0x0C68,0x39C1,
        0x2A6B,0x117A,0x22DF,0x2EA9,0x19F6,0x0182,0x33EB,0x0A82,
        0x25BB,0x02F2,0x2EB4,0x1FEE,0x3F36,0x0EE2,0x1F43,0x3265,
        0x0FF1,0x261A,0x1A02,0x30CE,0x09C7,0x256D,0x0125,0x3989,
        0x0D58,0x3249,0x16C9,0x2B83,0x0A3D,0x26D4,0x00D9,0x32DB,
        0x0D0F,0x3D07,0x25FD,0x09DE,0x3339,0x1C7F,0x3A7E,0x00B7,
        0x183D,0x2959,0x0581,0x2BAC,0x1974,0x258E,0x0D7F,0x226D,
        0x392B,0x0C21,0x3726,0x1D02,0x3076,0x070E,0x2A5B,0x0B04,
        0x26C8,0x37D9,0x213F,0x0A6A,0x236A,0x3172,0x15C0,0x00C0,
        0x16D3,0x2F16,0x1994,0x0A7C,0x37B5,0x0E89,0x191B,0x3DDC,
        0x1568,0x399D,0x22D4,0x077D,0x3FD4,0x2276,0x1A5A,0x35F3,
        0x0B49,0x3A36,0x24BB,0x06E6,0x3107,0x1B39,0x3781,0x0860,
        0x1CED,0x2C99,0x0524,0x2AA3,0x0B13,0x3875,0x24B9,0x1504,
        0x2A49,0x1231,0x2D3B,0x0010,0x297D,0x3B1E,0x08B3,0x2F30,
        0x0492,0x2C5A,0x112B,0x3FD4,0x23B4,0x0696,0x379F,0x0AB4,
        0x3E54,0x225F,0x04BE,0x2BD2,0x1342,0x2FAD,0x16DB,0x2C86,
        0x1AED,0x0535,0x1312,0x3E4F,0x2304,0x15ED,0x26E2,0x1FA4,
        0x01FB,0x1E18,0x3374,0x0BC4,0x387D,0x2492,0x111F,0x2DCF,
        0x183B,0x3C79,0x0F41,0x2966,0x040E,0x301E,0x0BCA,0x23CB,
        0x1C0B,0x2F7D,0x03E6,0x2367,0x1C47,0x3BC3,0x187D,0x20AE,
        0x266A,0x068D,0x37DE,0x0F7F,0x3DBB,0x1375,0x3A18,0x1BC3,
        0x2414,0x0549,0x1995,0x2D59,0x1700,0x0711,0x2A7D,0x1BE6,
        0x356D,0x1123,0x3BAC,0x21DC,0x105E,0x3646,0x1B9C,0x3108,
        0x1283,0x2BC8,0x231F,0x011E,0x18A0,0x3AB5,0x139F,0x3362,
        0x1C54,0x098A,0x1636,0x3A43,0x1972,0x06D0,0x21EE,0x3BBB,
        0x1FC8,0x0EF0,0x3EA0,0x231E,0x131C,0x338E,0x2964,0x0830,
        0x2371,0x011F,0x1898,0x3218,0x16D1,0x02BE,0x2BE7,0x1077,
        0x2A85,0x202A,0x0D8C,0x369F,0x11EF,0x2ABC,0x0FC3,0x31F8,
        0x25F5,0x1141,0x3C84,0x1A50,0x26D7,0x1E95,0x0DF4,0x32CB,
        0x03BC,0x3D39,0x0F07,0x3822,0x1346,0x1DF3,0x23F5,0x1905,
        0x38F6,0x0C4C,0x30D7,0x03B0,0x1B96,0x31BA,0x0EC8,0x2C2F,
        0x1E9C,0x0FFE,0x3A19,0x0CBA,0x3563,0x06C5,0x3B5A,0x0F7B,
        0x36A1,0x1E4F,0x2B1B,0x0A2B,0x2D87,0x06AF,0x3BDC,0x0E40,
        0x2969,0x3DE5,0x0602,0x2C23,0x12FF,0x1E56,0x3FB8,0x0665,
        0x28B6,0x0B80,0x34E0,0x1C96,0x38B4,0x117C,0x2BAA,0x05F9,
        0x358D,0x0CC1,0x3C63,0x0E6F,0x3546,0x05A1,0x2EEA,0x1043,
        0x3E68,0x1A40,0x24B1,0x1F05,0x042D,0x310F,0x223A,0x08EA,
        0x3640,0x1DB7,0x3916,0x02A4,0x3E1D,0x22AA,0x0C9C,0x3184,
        0x0806,0x2CA7,0x1EFB,0x0371,0x2E1E,0x0869,0x2AE7,0x0303,
        0x3C5E,0x079B,0x1622,0x3E0A,0x25EF,0x0BBD,0x2895,0x02DB,
        0x3ED6,0x23BA,0x2F5B,0x040F,0x2B66,0x1D34,0x3072,0x0B89,
        0x354D,0x26CF,0x0351,0x2F8F,0x1E57,0x04E7,0x2082,0x360D,
        0x3096,0x1D04,0x3B57,0x0AA7,0x26EC,0x3721,0x14AE,0x3D83,
        0x0558,0x19F7,0x2E53,0x15F7,0x2826,0x04AD,0x3D04,0x2070,
        0x0073,0x3545,0x21A7,0x0990,0x364D,0x02A6,0x3FD4,0x22A5,
        0x1B7B,0x2033,0x2FA4,0x09CE,0x334B,0x05C8,0x3CAB,0x0DB3,
        0x2639,0x1FF9,0x17CE,0x3660,0x2A0E,0x138E,0x3BC5,0x21A5,
        0x05EA,0x2F33,0x1645,0x2836,0x1A7D,0x24E6,0x0C25,0x27C2,
        0x01CD,0x31D9,0x14FC,0x3A66,0x1915,0x3334,0x1259,0x302C,
        0x1C8C,0x0B10,0x257F,0x0EAE,0x36DB,0x03B4,0x2108,0x3221,
        0x1401,0x2FBA,0x2277,0x0755,0x166F,0x335E,0x1883,0x3E06,
        0x14A1,0x2A5A,0x1761,0x2C8B,0x127E,0x2757,0x0C5D,0x34C4,
        0x0379,0x2E41,0x0B1A,0x3426,0x2842,0x0E91,0x1904,0x2FB3,
        0x11FA,0x2AA8,0x10FB,0x285E,0x14D8,0x2E5B,0x1EA0,0x128B,
        0x3D1A,0x237C,0x0D32,0x3864,0x1CDF,0x3F03,0x1369,0x276A,
        0x16E8,0x3037,0x218F,0x096E,0x1DF7,0x3118,0x150C,0x2C2A,
        0x17A4,0x078A,0x1B55,0x3450,0x119C,0x3E5C,0x148C,0x2914,
        0x0604,0x1A56,0x33D9,0x0D17,0x284F,0x3A62,0x166E,0x0B12,
        0x10E9,0x2CC9,0x1277,0x2A59,0x1B66,0x0902,0x2FA8,0x0C98,
        0x22B8,0x387F,0x022D,0x3F3A,0x0AE0,0x2CE5,0x0CC8,0x196B,
        0x2F70,0x0EDA,0x175D,0x3152,0x14BE,0x2D6B,0x180D,0x0ABA,
        0x310C,0x062A,0x25C9,0x19FF,0x2115,0x285C,0x16D7,0x3237,
        0x0115,0x3A4E,0x07BA,0x210D,0x0A01,0x272F,0x0072,0x19C1,
        0x3932,0x1162,0x34D3,0x024F,0x3CC0,0x146F,0x3402,0x178D,
        0x3EF7,0x1F61,0x087F,0x2249,0x0323,0x2545,0x1F0B,0x047A,
        0x3633,0x17A7,0x3AFA,0x1B1B,0x224A,0x30E9,0x174E,0x096F,
        0x3BAE,0x00DA,0x192A,0x3D5C,0x2686,0x0224,0x29E5,0x0A4F,
        0x2724,0x001A,0x390F,0x07EF,0x1F62,0x31CB,0x1949,0x2436,
        0x1E5A,0x1183,0x3940,0x17FC,0x0745,0x3C82,0x2016,0x01F9,
        0x3F4C,0x06F4,0x338A,0x0AAF,0x372D,0x04EF,0x3966,0x2180,
        0x01EC,0x17F8,0x31D8,0x166D,0x0B45,0x2301,0x3271,0x0C69,
        0x29A4,0x1080,0x345C,0x1A61,0x36DF,0x04BA,0x399A,0x0E88,
        0x35A1,0x1EEF,0x3C7F,0x0AD2,0x2755,0x01C4,0x2CD7,0x0DDE,
        0x39E7,0x2424,0x1209,0x3C2B,0x17A9,0x09E0,0x2900,0x3F05,
        0x25F1,0x07D0,0x3807,0x03DC,0x3CCE,0x1DDF,0x252E,0x185A,
        0x30DA,0x10E4,0x269C,0x1CA8,0x33C6,0x1440,0x39A2,0x22C1,
        0x07ED,0x3EA5,0x29D2,0x0587,0x3C00,0x08C9,0x2552,0x39C6,
        0x1582,0x3690,0x1082,0x3EBF,0x027C,0x3756,0x0ACF,0x1CB4,
        0x2B4A,0x12AF,0x27F0,0x3D26,0x15EA,0x3358,0x1D4B,0x2DB7,
        0x0B42,0x2607,0x1B57,0x2B30,0x0AB5,0x2EF3,0x0583,0x295A,
        0x1087,0x2E0D,0x1BAE,0x29B2,0x37E2,0x0F9F,0x3F96,0x27B5,
        0x0D63,0x2A2D,0x0035,0x2CE9,0x09EE,0x1516,0x3994,0x232E,
        0x1BA7,0x2168,0x2D99,0x0AF1,0x1F30,0x37CB,0x12BF,0x32B5,
        0x1A2B,0x2E29,0x15A1,0x23A2,0x3F01,0x021F,0x384C,0x097C,
        0x3CC9,0x226B,0x006C,0x214B,0x2F31,0x13BD,0x34E7,0x24CB,
        0x1480,0x295C,0x1A19,0x2527,0x1337,0x27EB,0x0BBA,0x306F,
        0x1C5B,0x36C3,0x06D4,0x20BF,0x2F89,0x006F,0x1B65,0x367A,
        0x05DD,0x3B40,0x0210,0x2D3E,0x0DCF,0x2A99,0x1CAE,0x2540,
        0x003E,0x2D80,0x138F,0x29EB,0x103B,0x3884,0x128D,0x322B,
        0x1BD8,0x090A,0x2CAC,0x005D,0x24CF,0x32A6,0x1C49,0x0277,
        0x35BF,0x1F66,0x1453,0x2F53,0x0FCF,0x33A7,0x001E,0x3ABC,
        0x089C,0x1EB2,0x32BC,0x0743,0x18A8,0x29A1,0x038D,0x31CC,
        0x1E0C,0x122D,0x1F88,0x244B,0x10AF,0x2ACF,0x1F47,0x0175,
        0x2E1B,0x0CCD,0x28E4,0x13DB,0x3175,0x160C,0x2252,0x3E50,
        0x0F50,0x3531,0x1D14,0x0315,0x250C,0x0D39,0x3DF3,0x11FF,
        0x36C4,0x06EB,0x3EE8,0x0F31,0x23FA,0x1BF4,0x3AF2,0x0D33,
        0x36FA,0x0438,0x344F,0x0B84,0x16F8,0x31A0,0x0A4B,0x1983,
        0x38CC,0x136B,0x3537,0x1148,0x3E8D,0x277D,0x0275,0x2BE3,
        0x0D44,0x3663,0x14A9,0x3A11,0x10C9,0x2411,0x1DF1,0x0504,
        0x3AC5,0x1092,0x3605,0x0BEE,0x1B17,0x2B5E,0x1615,0x28CB,
        0x142B,0x3287,0x1B69,0x3B3F,0x0FB8,0x2B10,0x0B5B,0x1BEA,
        0x3775,0x0D66,0x3B65,0x0010,0x3479,0x1921,0x3FC8,0x11DF,
        0x2C57,0x0E7B,0x2718,0x3E35,0x12DF,0x3907,0x250B,0x0E24,
        0x2C91,0x191E,0x25B4,0x1252,0x3FD4,0x175E,0x0A05,0x3BDB,
        0x2067,0x0CDD,0x37B7,0x0593,0x3340,0x1DEF,0x262D,0x043D,
        0x2124,0x3FB2,0x15AF,0x3719,0x1DDE,0x070D,0x3915,0x153B,
};

unsigned short black_sep[] = {
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0081,0x008A,0x0094,0x009F,
        0x00A9,0x00B4,0x00BE,0x00C9,0x00D4,0x00E0,0x00EB,0x00F6,
        0x0102,0x010E,0x011A,0x0126,0x0133,0x013F,0x014C,0x0159,
        0x0166,0x0173,0x0180,0x018E,0x019B,0x01A9,0x01B7,0x01C5,
        0x01D4,0x01E2,0x01F1,0x0200,0x020F,0x021E,0x022D,0x023C,
        0x024C,0x025C,0x026C,0x027C,0x028C,0x029C,0x02AD,0x02BE,
        0x02CF,0x02DF,0x02F1,0x0302,0x0313,0x0325,0x0336,0x0348,
        0x035A,0x036C,0x037F,0x0391,0x03A3,0x03B6,0x03C9,0x03DC,
        0x03EF,0x0402,0x0415,0x0428,0x043C,0x044F,0x0463,0x0477,
        0x048A,0x049E,0x04B2,0x04C7,0x04DB,0x04EF,0x0504,0x0518,
        0x052D,0x0541,0x0556,0x056B,0x0580,0x0595,0x05AA,0x05BF,
        0x05D4,0x05EA,0x05FF,0x0614,0x062A,0x063F,0x0655,0x066A,
        0x0680,0x0696,0x06AC,0x06C1,0x06D7,0x06ED,0x0703,0x0719,
        0x072F,0x0745,0x075B,0x0771,0x0787,0x079D,0x07B3,0x07C9,
        0x07E0,0x07F6,0x080C,0x0822,0x0838,0x084F,0x0865,0x087B,
        0x0891,0x08A7,0x08BE,0x08D4,0x08EA,0x0900,0x0917,0x092D,
        0x0943,0x0959,0x096F,0x0986,0x099C,0x09B2,0x09C8,0x09DE,
        0x09F4,0x0A0A,0x0A20,0x0A36,0x0A4C,0x0A62,0x0A78,0x0A8E,
        0x0AA4,0x0ABA,0x0AD0,0x0AE6,0x0AFB,0x0B11,0x0B27,0x0B3D,
        0x0B52,0x0B68,0x0B7E,0x0B93,0x0BA9,0x0BBE,0x0BD4,0x0BE9,
        0x0BFE,0x0C14,0x0C29,0x0C3E,0x0C54,0x0C69,0x0C7E,0x0C93,
        0x0CA8,0x0CBD,0x0CD2,0x0CE7,0x0CFC,0x0D11,0x0D26,0x0D3B,
        0x0D50,0x0D64,0x0D79,0x0D8E,0x0DA2,0x0DB7,0x0DCC,0x0DE0,
        0x0DF4,0x0E09,0x0E1D,0x0E32,0x0E46,0x0E5A,0x0E6E,0x0E83,
        0x0E97,0x0EAB,0x0EBF,0x0ED3,0x0EE7,0x0EFB,0x0F0F,0x0F23,
        0x0F36,0x0F4A,0x0F5E,0x0F72,0x0F85,0x0F99,0x0FAD,0x0FC0,
        0x0FD4,0x0FE7,0x0FFB,0x100E,0x1021,0x1035,0x1048,0x105B,
        0x106F,0x1082,0x1095,0x10A8,0x10BB,0x10CE,0x10E1,0x10F4,
        0x1107,0x111A,0x112D,0x1140,0x1153,0x1166,0x1178,0x118B,
        0x119E,0x11B1,0x11C3,0x11D6,0x11E8,0x11FB,0x120E,0x1220,
        0x1232,0x1245,0x1257,0x126A,0x127C,0x128E,0x12A1,0x12B3,
        0x12C5,0x12D8,0x12EA,0x12FC,0x130E,0x1320,0x1332,0x1344,
        0x1356,0x1368,0x137A,0x138C,0x139E,0x13B0,0x13C2,0x13D4,
        0x13E6,0x13F8,0x140A,0x141B,0x142D,0x143F,0x1451,0x1462,
        0x1474,0x1486,0x1497,0x14A9,0x14BB,0x14CC,0x14DE,0x14F0,
        0x1501,0x1513,0x1524,0x1536,0x1547,0x1559,0x156A,0x157B,
        0x158D,0x159E,0x15B0,0x15C1,0x15D2,0x15E4,0x15F5,0x1606,
        0x1618,0x1629,0x163A,0x164B,0x165C,0x166E,0x167F,0x1690,
        0x16A1,0x16B2,0x16C4,0x16D5,0x16E6,0x16F7,0x1708,0x1719,
        0x172A,0x173B,0x174C,0x175D,0x176E,0x177F,0x1790,0x17A1,
        0x17B2,0x17C3,0x17D4,0x17E5,0x17F6,0x1807,0x1818,0x1829,
        0x183A,0x184B,0x185C,0x186C,0x187D,0x188E,0x189F,0x18B0,
        0x18C1,0x18D1,0x18E2,0x18F3,0x1904,0x1915,0x1925,0x1936,
        0x1947,0x1958,0x1968,0x1979,0x198A,0x199B,0x19AB,0x19BC,
        0x19CD,0x19DD,0x19EE,0x19FF,0x1A10,0x1A20,0x1A31,0x1A41,
        0x1A52,0x1A63,0x1A73,0x1A84,0x1A95,0x1AA5,0x1AB6,0x1AC7,
        0x1AD7,0x1AE8,0x1AF8,0x1B09,0x1B1A,0x1B2A,0x1B3B,0x1B4B,
        0x1B5C,0x1B6C,0x1B7D,0x1B8D,0x1B9E,0x1BAF,0x1BBF,0x1BD0,
        0x1BE0,0x1BF1,0x1C01,0x1C12,0x1C22,0x1C33,0x1C43,0x1C54,
        0x1C64,0x1C75,0x1C85,0x1C96,0x1CA6,0x1CB7,0x1CC7,0x1CD8,
        0x1CE8,0x1CF9,0x1D09,0x1D19,0x1D2A,0x1D3A,0x1D4B,0x1D5B,
        0x1D6C,0x1D7C,0x1D8D,0x1D9D,0x1DAD,0x1DBE,0x1DCE,0x1DDF,
        0x1DEF,0x1E00,0x1E10,0x1E20,0x1E31,0x1E41,0x1E52,0x1E62,
        0x1E72,0x1E83,0x1E93,0x1EA4,0x1EB4,0x1EC4,0x1ED5,0x1EE5,
        0x1EF5,0x1F06,0x1F16,0x1F27,0x1F37,0x1F47,0x1F58,0x1F68,
        0x1F78,0x1F89,0x1F99,0x1FAA,0x1FBA,0x1FCA,0x1FDB,0x1FEB,
        0x1FFB,0x200C,0x201C,0x202C,0x203D,0x204D,0x205D,0x206E,
        0x207E,0x208E,0x209F,0x20AF,0x20BF,0x20D0,0x20E0,0x20F0,
        0x2101,0x2111,0x2121,0x2132,0x2142,0x2152,0x2163,0x2173,
        0x2183,0x2194,0x21A4,0x21B4,0x21C5,0x21D5,0x21E5,0x21F6,
        0x2206,0x2216,0x2226,0x2237,0x2247,0x2257,0x2268,0x2278,
        0x2288,0x2299,0x22A9,0x22B9,0x22CA,0x22DA,0x22EA,0x22FA,
        0x230B,0x231B,0x232B,0x233C,0x234C,0x235C,0x236D,0x237D,
        0x238D,0x239D,0x23AE,0x23BE,0x23CE,0x23DF,0x23EF,0x23FF,
        0x240F,0x2420,0x2430,0x2440,0x2451,0x2461,0x2471,0x2481,
        0x2492,0x24A2,0x24B2,0x24C3,0x24D3,0x24E3,0x24F3,0x2504,
        0x2514,0x2524,0x2534,0x2545,0x2555,0x2565,0x2576,0x2586,
        0x2596,0x25A6,0x25B7,0x25C7,0x25D7,0x25E8,0x25F8,0x2608,
        0x2618,0x2629,0x2639,0x2649,0x2659,0x266A,0x267A,0x268A,
        0x269A,0x26AB,0x26BB,0x26CB,0x26DC,0x26EC,0x26FC,0x270C,
        0x271D,0x272D,0x273D,0x274D,0x275E,0x276E,0x277E,0x278E,
        0x279F,0x27AF,0x27BF,0x27D0,0x27E0,0x27F0,0x2800,0x2811,
        0x2821,0x2831,0x2841,0x2852,0x2862,0x2872,0x2882,0x2893,
        0x28A3,0x28B3,0x28C3,0x28D4,0x28E4,0x28F4,0x2905,0x2915,
        0x2925,0x2935,0x2946,0x2956,0x2966,0x2976,0x2987,0x2997,
        0x29A7,0x29B7,0x29C8,0x29D8,0x29E8,0x29F8,0x2A09,0x2A19,
        0x2A29,0x2A39,0x2A4A,0x2A5A,0x2A6A,0x2A7A,0x2A8B,0x2A9B,
        0x2AAB,0x2ABC,0x2ACC,0x2ADC,0x2AEC,0x2AFD,0x2B0D,0x2B1D,
        0x2B2D,0x2B3E,0x2B4E,0x2B5E,0x2B6E,0x2B7F,0x2B8F,0x2B9F,
        0x2BAF,0x2BC0,0x2BD0,0x2BE0,0x2BF0,0x2C01,0x2C11,0x2C21,
        0x2C31,0x2C42,0x2C52,0x2C62,0x2C72,0x2C83,0x2C93,0x2CA3,
        0x2CB3,0x2CC4,0x2CD4,0x2CE4,0x2CF4,0x2D05,0x2D15,0x2D25,
        0x2D35,0x2D46,0x2D56,0x2D66,0x2D76,0x2D87,0x2D97,0x2DA7,
        0x2DB7,0x2DC8,0x2DD8,0x2DE8,0x2DF9,0x2E09,0x2E19,0x2E29,
        0x2E3A,0x2E4A,0x2E5A,0x2E6A,0x2E7B,0x2E8B,0x2E9B,0x2EAB,
        0x2EBC,0x2ECC,0x2EDC,0x2EEC,0x2EFD,0x2F0D,0x2F1D,0x2F2D,
        0x2F3E,0x2F4E,0x2F5E,0x2F6E,0x2F7F,0x2F8F,0x2F9F,0x2FAF,
        0x2FC0,0x2FD0,0x2FE0,0x2FF0,0x3001,0x3011,0x3021,0x3031,
        0x3042,0x3052,0x3062,0x3072,0x3083,0x3093,0x30A3,0x30B3,
        0x30C4,0x30D4,0x30E4,0x30F4,0x3105,0x3115,0x3125,0x3135,
        0x3146,0x3156,0x3166,0x3176,0x3187,0x3197,0x31A7,0x31B7,
        0x31C8,0x31D8,0x31E8,0x31F8,0x3209,0x3219,0x3229,0x3239,
        0x324A,0x325A,0x326A,0x327A,0x328B,0x329B,0x32AB,0x32BB,
        0x32CC,0x32DC,0x32EC,0x32FC,0x330D,0x331D,0x332D,0x333D,
        0x334E,0x335E,0x336E,0x337E,0x338F,0x339F,0x33AF,0x33BF,
        0x33D0,0x33E0,0x33F0,0x3400,0x3411,0x3421,0x3431,0x3441,
        0x3452,0x3462,0x3472,0x3482,0x3493,0x34A3,0x34B3,0x34C3,
        0x34D4,0x34E4,0x34F4,0x3504,0x3515,0x3525,0x3535,0x3545,
        0x3556,0x3566,0x3576,0x3586,0x3597,0x35A7,0x35B7,0x35C7,
        0x35D8,0x35E8,0x35F8,0x3608,0x3619,0x3629,0x3639,0x3649,
        0x365A,0x366A,0x367A,0x368A,0x369B,0x36AB,0x36BB,0x36CB,
        0x36DC,0x36EC,0x36FC,0x370C,0x371D,0x372D,0x373D,0x374D,
        0x375E,0x376E,0x377E,0x378E,0x379F,0x37AF,0x37BF,0x37CF,
        0x37E0,0x37F0,0x3800,0x3810,0x3821,0x3831,0x3841,0x3851,
        0x3862,0x3872,0x3882,0x3892,0x38A3,0x38B3,0x38C3,0x38D3,
        0x38E4,0x38F4,0x3904,0x3914,0x3925,0x3935,0x3945,0x3955,
        0x3966,0x3976,0x3986,0x3996,0x39A7,0x39B7,0x39C7,0x39D7,
        0x39E8,0x39F8,0x3A08,0x3A18,0x3A29,0x3A39,0x3A49,0x3A59,
        0x3A6A,0x3A7A,0x3A8A,0x3A9A,0x3AAB,0x3ABB,0x3ACB,0x3ADB,
        0x3AEC,0x3AFC,0x3B0C,0x3B1C,0x3B2D,0x3B3D,0x3B4D,0x3B5D,
        0x3B6E,0x3B7E,0x3B8E,0x3B9E,0x3BAF,0x3BBF,0x3BCF,0x3BDF,
        0x3BF0,0x3C00,0x3C10,0x3C20,0x3C31,0x3C41,0x3C51,0x3C61,
        0x3C72,0x3C82,0x3C92,0x3CA2,0x3CB3,0x3CC3,0x3CD3,0x3CE3,
        0x3CF4,0x3D04,0x3D14,0x3D24,0x3D35,0x3D45,0x3D55,0x3D65,
        0x3D76,0x3D86,0x3D96,0x3DA6,0x3DB7,0x3DC7,0x3DD7,0x3DE7,
        0x3DF8,0x3E08,0x3E18,0x3E28,0x3E39,0x3E49,0x3E59,0x3E69,
        0x3E7A,0x3E8A,0x3E9A,0x3EAA,0x3EBB,0x3ECB,0x3EDB,0x3EEB,
        0x3EFC,0x3F0C,0x3F1C,0x3F2C,0x3F3D,0x3F4D,0x3F5D,0x3F6D,
        0x3F7E,0x3F8E,0x3F9E,0x3FAE,0x3FBF,0x3FCF,0x3FDF,0x3FEF
};

static signed short HtoCMY[]



 = {
        0xFFAF,0x03E6,0x03E4,0xFFAF,0x03E4,0x03E4,0xFFAF,0x03E1,0x03E4,0xFFAF,0x03DE,0x03E4,
        0xFFAF,0x03DB,0x03E4,0xFFAF,0x03D7,0x03E4,0xFFAF,0x03D3,0x03E4,0xFFAF,0x03D0,0x03E4,
        0xFFAF,0x03CC,0x03E4,0xFFAF,0x03C8,0x03E4,0xFFAF,0x03C4,0x03E4,0xFFAF,0x03C0,0x03E4,
        0xFFAF,0x03BB,0x03E4,0xFFAF,0x03B7,0x03E4,0xFFAF,0x03B3,0x03E4,0xFFAF,0x03AE,0x03E4,
        0xFFAF,0x03AA,0x03E4,0xFFAF,0x03A5,0x03E3,0xFFAF,0x03A1,0x03E3,0xFFAF,0x039C,0x03E3,
        0xFFAF,0x0397,0x03E3,0xFFAF,0x0393,0x03E3,0xFFAF,0x038E,0x03E3,0xFFAF,0x0389,0x03E3,
        0xFFAF,0x0384,0x03E3,0xFFAF,0x037F,0x03E3,0xFFAF,0x037A,0x03E3,0xFFAF,0x0375,0x03E3,
        0xFFAF,0x0370,0x03E3,0xFFAF,0x036B,0x03E3,0xFFAF,0x0366,0x03E3,0xFFAF,0x0361,0x03E3,
        0xFFAF,0x035C,0x03E2,0xFFAF,0x0357,0x03E2,0xFFAF,0x0352,0x03E2,0xFFAF,0x034C,0x03E2,
        0xFFAF,0x0347,0x03E2,0xFFAF,0x0342,0x03E2,0xFFAF,0x033C,0x03E2,0xFFAE,0x0337,0x03E2,
        0xFFAE,0x0332,0x03E2,0xFFAE,0x032C,0x03E2,0xFFAE,0x0327,0x03E2,0xFFAE,0x0321,0x03E1,
        0xFFAE,0x031C,0x03E1,0xFFAE,0x0316,0x03E1,0xFFAE,0x0311,0x03E1,0xFFAE,0x030B,0x03E1,
        0xFFAE,0x0305,0x03E1,0xFFAE,0x0300,0x03E1,0xFFAE,0x02FA,0x03E1,0xFFAE,0x02F4,0x03E1,
        0xFFAE,0x02EF,0x03E0,0xFFAE,0x02E9,0x03E0,0xFFAE,0x02E3,0x03E0,0xFFAE,0x02DE,0x03E0,
        0xFFAE,0x02D8,0x03E0,0xFFAE,0x02D2,0x03E0,0xFFAE,0x02CC,0x03E0,0xFFAE,0x02C6,0x03E0,
        0xFFAE,0x02C0,0x03DF,0xFFAD,0x02BB,0x03DF,0xFFAD,0x02B5,0x03DF,0xFFAD,0x02AF,0x03DF,
        0xFFAD,0x02A9,0x03DF,0xFFAD,0x02A3,0x03DF,0xFFAD,0x029D,0x03DF,0xFFAD,0x0297,0x03DE,
        0xFFAD,0x0291,0x03DE,0xFFAD,0x028B,0x03DE,0xFFAD,0x0285,0x03DE,0xFFAD,0x027F,0x03DE,
        0xFFAD,0x0279,0x03DE,0xFFAD,0x0273,0x03DE,0xFFAD,0x026C,0x03DD,0xFFAC,0x0266,0x03DD,
        0xFFAC,0x0260,0x03DD,0xFFAC,0x025A,0x03DD,0xFFAC,0x0254,0x03DD,0xFFAC,0x024E,0x03DD,
        0xFFAC,0x0247,0x03DD,0xFFAC,0x0241,0x03DC,0xFFAC,0x023B,0x03DC,0xFFAC,0x0235,0x03DC,
        0xFFAC,0x022E,0x03DC,0xFFAC,0x0228,0x03DC,0xFFAC,0x0222,0x03DC,0xFFAB,0x021C,0x03DB,
        0xFFAB,0x0215,0x03DB,0xFFAB,0x020F,0x03DB,0xFFAB,0x0208,0x03DB,0xFFAB,0x0202,0x03DB,
        0xFFAB,0x01FC,0x03DB,0xFFAB,0x01F5,0x03DA,0xFFAB,0x01EF,0x03DA,0xFFAB,0x01E8,0x03DA,
        0xFFAA,0x01E2,0x03DA,0xFFAA,0x01DC,0x03DA,0xFFAA,0x01D5,0x03D9,0xFFAA,0x01CF,0x03D9,
        0xFFAA,0x01C8,0x03D9,0xFFAA,0x01C2,0x03D9,0xFFAA,0x01BB,0x03D9,0xFFAA,0x01B5,0x03D9,
        0xFFA9,0x01AE,0x03D8,0xFFA9,0x01A9,0x03D8,0xFFA9,0x01A3,0x03D8,0xFFA9,0x019E,0x03D8,
        0xFFA9,0x0199,0x03D8,0xFFA9,0x0194,0x03D7,0xFFA9,0x018F,0x03D7,0xFFA9,0x018A,0x03D7,
        0xFFA8,0x0184,0x03D7,0xFFA8,0x017F,0x03D7,0xFFA8,0x017A,0x03D6,0xFFA8,0x0175,0x03D6,
        0xFFA8,0x0170,0x03D6,0xFFA8,0x016B,0x03D6,0xFFA8,0x0166,0x03D6,0xFFA7,0x0161,0x03D5,
        0xFFA7,0x015C,0x03D5,0xFFA7,0x0157,0x03D5,0xFFA7,0x0152,0x03D5,0xFFA7,0x014E,0x03D4,
        0xFFA7,0x0149,0x03D4,0xFFA6,0x0144,0x03D4,0xFFA6,0x013F,0x03D4,0xFFA6,0x013A,0x03D4,
        0xFFA6,0x0136,0x03D3,0xFFA6,0x0131,0x03D3,0xFFA6,0x012C,0x03D3,0xFFA5,0x0127,0x03D3,
        0xFFA5,0x0123,0x03D2,0xFFA5,0x011E,0x03D2,0xFFA5,0x011A,0x03D2,0xFFA5,0x0115,0x03D2,
        0xFFA5,0x0110,0x03D2,0xFFA4,0x010C,0x03D1,0xFFA4,0x0107,0x03D1,0xFFA4,0x0103,0x03D1,
        0xFFA4,0x00FE,0x03D1,0xFFA4,0x00FA,0x03D0,0xFFA3,0x00F6,0x03D0,0xFFA3,0x00F1,0x03D0,
        0xFFA3,0x00ED,0x03D0,0xFFA3,0x00E9,0x03CF,0xFFA3,0x00E4,0x03CF,0xFFA2,0x00E0,0x03CF,
        0xFFA2,0x00DC,0x03CF,0xFFA2,0x00D8,0x03CE,0xFFA2,0x00D3,0x03CE,0xFFA2,0x00CF,0x03CE,
        0xFFA1,0x00CB,0x03CE,0xFFA1,0x00C7,0x03CD,0xFFA1,0x00C3,0x03CD,0xFFA1,0x00BF,0x03CD,
        0xFFA0,0x00BB,0x03CD,0xFFA0,0x00B7,0x03CC,0xFFA0,0x00B3,0x03CC,0xFFA0,0x00AF,0x03CC,
        0xFFA0,0x00AB,0x03CC,0xFF9F,0x00A7,0x03CB,0xFF9F,0x00A3,0x03CB,0xFF9F,0x00A0,0x03CB,
        0xFF9F,0x009C,0x03CB,0xFF9E,0x0098,0x03CA,0xFF9E,0x0094,0x03CA,0xFF9E,0x0091,0x03CA,
        0xFF9E,0x008D,0x03CA,0xFF9D,0x0089,0x03C9,0xFF9D,0x0086,0x03C9,0xFF9D,0x0082,0x03C9,
        0xFF9D,0x007F,0x03C9,0xFF9C,0x007B,0x03C8,0xFF9C,0x0078,0x03C8,0xFF9C,0x0074,0x03C8,
        0xFF9C,0x0071,0x03C7,0xFF9B,0x006D,0x03C7,0xFF9B,0x006A,0x03C7,0xFF9B,0x0067,0x03C7,
        0xFF9A,0x0064,0x03C6,0xFF9A,0x0060,0x03C6,0xFF9A,0x005D,0x03C6,0xFF9A,0x005A,0x03C5,
        0xFF99,0x0057,0x03C5,0xFF99,0x0054,0x03C5,0xFF99,0x0051,0x03C5,0xFF98,0x004E,0x03C4,
        0xFF98,0x004B,0x03C4,0xFF98,0x0048,0x03C4,0xFF98,0x0045,0x03C3,0xFF97,0x0042,0x03C3,
        0xFF97,0x003F,0x03C3,0xFF97,0x003C,0x03C3,0xFF96,0x003A,0x03C2,0xFF96,0x0037,0x03C2,
        0xFF96,0x0034,0x03C2,0xFF95,0x0032,0x03C1,0xFF95,0x002F,0x03C1,0xFF95,0x002D,0x03C1,
        0xFF95,0x002A,0x03C1,0xFF94,0x0028,0x03C0,0xFF94,0x0026,0x03C0,0xFF94,0x0023,0x03C0,
        0xFF93,0x0021,0x03BF,0xFF93,0x001F,0x03BF,0xFF93,0x001D,0x03BF,0xFF92,0x001A,0x03BE,
        0xFF92,0x0018,0x03BE,0xFF92,0x0016,0x03BE,0xFF91,0x0014,0x03BD,0xFF91,0x0013,0x03BD,
        0xFF91,0x0011,0x03BD,0xFF90,0x000F,0x03BC,0xFF90,0x000D,0x03BC,0xFF90,0x000C,0x03BC,
        0xFF8F,0x000A,0x03BC,0xFF8F,0x0009,0x03BB,0xFF8E,0x0007,0x03BB,0xFF8E,0x0006,0x03BB,
        0xFF8E,0x0005,0x03BA,0xFF8D,0x0004,0x03BA,0xFF8D,0x0003,0x03BA,0xFF8D,0x0002,0x03B9,
        0xFF8C,0x0001,0x03B9,0xFF8C,0x0000,0x03B9,0xFF8C,0x0000,0x03B8,0xFF8B,0xFFFD,0x03B8,
        0xFF8B,0xFFFB,0x03B8,0xFF8A,0xFFF8,0x03B7,0xFF8A,0xFFF5,0x03B7,0xFF8A,0xFFF2,0x03B7,
        0xFF89,0xFFF0,0x03B6,0xFF89,0xFFED,0x03B6,0xFF88,0xFFEA,0x03B6,0xFF88,0xFFE7,0x03B5,
        0xFF88,0xFFE5,0x03B5,0xFF87,0xFFE2,0x03B5,0xFF87,0xFFDF,0x03B4,0xFF86,0xFFDC,0x03B4,
        0xFF86,0xFFDA,0x03B4,0xFF88,0xFFD7,0x03B3,0xFF8B,0xFFD4,0x03B3,0xFF8D,0xFFD1,0x03B3,
        0xFF8F,0xFFCF,0x03B2,0xFF92,0xFFCC,0x03B2,0xFF94,0xFFC9,0x03B2,0xFF96,0xFFC6,0x03B1,
        0xFF99,0xFFC4,0x03B1,0xFF9B,0xFFC1,0x03B0,0xFF9D,0xFFBE,0x03B0,0xFFA0,0xFFBC,0x03B0,
        0xFFA2,0xFFB9,0x03AF,0xFFA5,0xFFB6,0x03AF,0xFFA7,0xFFB3,0x03AF,0xFFA9,0xFFB1,0x03AE,
        0xFFAC,0xFFAE,0x03AE,0xFFAE,0xFFAB,0x03AE,0xFFB0,0xFFA8,0x03AE,0xFFB3,0xFFA6,0x03AE,
        0xFFB5,0xFFA3,0x03AE,0xFFB7,0xFFA0,0x03AE,0xFFBA,0xFF9D,0x03AE,0xFFBC,0xFF9B,0x03AE,
        0xFFBE,0xFF98,0x03AE,0xFFC1,0xFF95,0x03AE,0xFFC3,0xFF92,0x03AE,0xFFC5,0xFF90,0x03AE,
        0xFFC8,0xFF8D,0x03AE,0xFFCA,0xFF8A,0x03AE,0xFFCC,0xFF87,0x03AE,0xFFCF,0xFF85,0x03AE,
        0xFFD1,0xFF82,0x03AE,0xFFD3,0xFF82,0x03AE,0xFFD6,0xFF81,0x03AE,0xFFD8,0xFF81,0x03AD,
        0xFFDA,0xFF80,0x03AD,0xFFDD,0xFF80,0x03AD,0xFFDF,0xFF7F,0x03AD,0xFFE2,0xFF7F,0x03AD,
        0xFFE4,0xFF7E,0x03AD,0xFFE6,0xFF7E,0x03AD,0xFFE9,0xFF7E,0x03AD,0xFFEB,0xFF7D,0x03AD,
        0xFFED,0xFF7D,0x03AD,0xFFF0,0xFF7C,0x03AD,0xFFF2,0xFF7C,0x03AD,0xFFF4,0xFF7B,0x03AD,
        0xFFF7,0xFF7B,0x03AD,0xFFF9,0xFF7B,0x03AD,0xFFFB,0xFF7A,0x03AD,0xFFFE,0xFF7A,0x03AD,
        0x0000,0xFF79,0x03AD,0x0001,0xFF79,0x03AC,0x0001,0xFF78,0x03AC,0x0002,0xFF78,0x03AC,
        0x0002,0xFF78,0x03AC,0x0003,0xFF77,0x03AC,0x0004,0xFF77,0x03AC,0x0005,0xFF76,0x03AC,
        0x0006,0xFF76,0x03AC,0x0007,0xFF76,0x03AC,0x0008,0xFF75,0x03AC,0x0009,0xFF75,0x03AC,
        0x000A,0xFF74,0x03AC,0x000C,0xFF74,0x03AC,0x000D,0xFF74,0x03AC,0x000E,0xFF73,0x03AB,
        0x000F,0xFF73,0x03AB,0x0011,0xFF72,0x03AB,0x0012,0xFF72,0x03AB,0x0014,0xFF72,0x03AB,
        0x0015,0xFF71,0x03AB,0x0017,0xFF71,0x03AB,0x0018,0xFF71,0x03AB,0x001A,0xFF70,0x03AB,
        0x001B,0xFF70,0x03AB,0x001D,0xFF6F,0x03AB,0x001F,0xFF6F,0x03AA,0x0021,0xFF6F,0x03AA,
        0x0022,0xFF6E,0x03AA,0x0024,0xFF6E,0x03AA,0x0026,0xFF6E,0x03AA,0x0028,0xFF6D,0x03AA,
        0x002A,0xFF6D,0x03AA,0x002C,0xFF6C,0x03AA,0x002E,0xFF6C,0x03AA,0x0030,0xFF6C,0x03AA,
        0x0031,0xFF6B,0x03AA,0x0034,0xFF6B,0x03A9,0x0036,0xFF6B,0x03A9,0x0038,0xFF6A,0x03A9,
        0x003A,0xFF6A,0x03A9,0x003C,0xFF6A,0x03A9,0x003E,0xFF69,0x03A9,0x0040,0xFF69,0x03A9,
        0x0042,0xFF69,0x03A9,0x0045,0xFF68,0x03A9,0x0047,0xFF68,0x03A8,0x0049,0xFF68,0x03A8,
        0x004B,0xFF67,0x03A8,0x004E,0xFF67,0x03A8,0x0050,0xFF67,0x03A8,0x0052,0xFF66,0x03A8,
        0x0055,0xFF66,0x03A8,0x0057,0xFF66,0x03A8,0x005A,0xFF65,0x03A8,0x005C,0xFF65,0x03A8,
        0x005F,0xFF65,0x03A7,0x0061,0xFF64,0x03A7,0x0064,0xFF64,0x03A7,0x0066,0xFF64,0x03A7,
        0x0069,0xFF63,0x03A7,0x006B,0xFF63,0x03A7,0x006E,0xFF63,0x03A7,0x0071,0xFF62,0x03A7,
        0x0073,0xFF62,0x03A6,0x0076,0xFF62,0x03A6,0x0079,0xFF62,0x03A6,0x007B,0xFF61,0x03A6,
        0x007E,0xFF61,0x03A6,0x0081,0xFF61,0x03A6,0x0084,0xFF60,0x03A6,0x0086,0xFF60,0x03A6,
        0x0089,0xFF60,0x03A5,0x008C,0xFF5F,0x03A5,0x008F,0xFF5F,0x03A5,0x0092,0xFF5F,0x03A5,
        0x0095,0xFF5F,0x03A5,0x0097,0xFF5E,0x03A5,0x009A,0xFF5E,0x03A5,0x009D,0xFF5E,0x03A5,
        0x00A0,0xFF5D,0x03A4,0x00A3,0xFF5D,0x03A4,0x00A6,0xFF5D,0x03A4,0x00A9,0xFF5D,0x03A4,
        0x00AC,0xFF5C,0x03A4,0x00AF,0xFF5C,0x03A4,0x00B2,0xFF5C,0x03A4,0x00B6,0xFF5C,0x03A3,
        0x00B9,0xFF5B,0x03A3,0x00BC,0xFF5B,0x03A3,0x00BF,0xFF5B,0x03A3,0x00C2,0xFF5B,0x03A3,
        0x00C5,0xFF5A,0x03A3,0x00C8,0xFF5A,0x03A3,0x00CC,0xFF5A,0x03A3,0x00CF,0xFF5A,0x03A2,
        0x00D2,0xFF59,0x03A2,0x00D5,0xFF59,0x03A2,0x00D9,0xFF59,0x03A2,0x00DC,0xFF59,0x03A2,
        0x00DF,0xFF58,0x03A2,0x00E3,0xFF58,0x03A1,0x00E6,0xFF58,0x03A1,0x00E9,0xFF58,0x03A1,
        0x00ED,0xFF57,0x03A1,0x00F0,0xFF57,0x03A1,0x00F0,0xFF57,0x03A1,0x00F2,0xFF57,0x03A1,
        0x00F3,0xFF56,0x03A0,0x00F5,0xFF56,0x03A0,0x00F6,0xFF56,0x03A0,0x00F8,0xFF56,0x03A0,
        0x00F9,0xFF56,0x03A0,0x00FB,0xFF55,0x03A0,0x00FC,0xFF55,0x03A0,0x00FE,0xFF55,0x039F,
        0x00FF,0xFF55,0x039F,0x0101,0xFF54,0x039F,0x0102,0xFF54,0x039F,0x0104,0xFF54,0x039F,
        0x0105,0xFF54,0x039F,0x0106,0xFF54,0x039E,0x0108,0xFF53,0x039E,0x0109,0xFF53,0x039E,
        0x010B,0xFF53,0x039E,0x010C,0xFF53,0x039E,0x010D,0xFF53,0x039E,0x010F,0xFF52,0x039D,
        0x0110,0xFF52,0x039D,0x0112,0xFF52,0x039D,0x0113,0xFF52,0x039D,0x0114,0xFF52,0x039D,
        0x0116,0xFF51,0x039D,0x0117,0xFF51,0x039D,0x0118,0xFF51,0x039C,0x011A,0xFF51,0x039C,
        0x011B,0xFF51,0x039C,0x011C,0xFF51,0x039C,0x011D,0xFF50,0x039C,0x011F,0xFF50,0x039C,
        0x0120,0xFF50,0x039B,0x0121,0xFF50,0x039B,0x0123,0xFF50,0x039B,0x0124,0xFF50,0x039B,
        0x0125,0xFF4F,0x039B,0x0126,0xFF4F,0x039A,0x0127,0xFF4F,0x039A,0x0129,0xFF4F,0x039A,
        0x012A,0xFF4F,0x039A,0x012B,0xFF4F,0x039A,0x012C,0xFF4E,0x039A,0x012D,0xFF4E,0x0399,
        0x012E,0xFF4E,0x0399,0x0130,0xFF4E,0x0399,0x0131,0xFF4E,0x0399,0x0132,0xFF4E,0x0399,
        0x0133,0xFF4E,0x0399,0x0134,0xFF4D,0x0398,0x0135,0xFF4D,0x0398,0x0136,0xFF4D,0x0398,
        0x0137,0xFF4D,0x0398,0x0138,0xFF4D,0x0398,0x0139,0xFF4D,0x0397,0x013A,0xFF4D,0x0397,
        0x013B,0xFF4D,0x0397,0x013C,0xFF4C,0x0397,0x013D,0xFF4C,0x0397,0x013E,0xFF4C,0x0397,
        0x013F,0xFF4C,0x0396,0x0140,0xFF4C,0x0396,0x0141,0xFF4C,0x0396,0x0142,0xFF4C,0x0396,
        0x0143,0xFF4C,0x0396,0x0144,0xFF4C,0x0395,0x0145,0xFF4B,0x0395,0x0146,0xFF4B,0x0395,
        0x0147,0xFF4B,0x0395,0x0148,0xFF4B,0x0395,0x0149,0xFF4B,0x0394,0x0149,0xFF4B,0x0394,
        0x014A,0xFF4B,0x0394,0x014B,0xFF4B,0x0394,0x014C,0xFF4B,0x0394,0x014D,0xFF4B,0x0394,
        0x014D,0xFF4B,0x0393,0x014E,0xFF4A,0x0393,0x014F,0xFF4A,0x0393,0x0150,0xFF4A,0x0393,
        0x0150,0xFF4A,0x0393,0x0151,0xFF4A,0x0392,0x0152,0xFF4A,0x0392,0x0153,0xFF4A,0x0392,
        0x0153,0xFF4A,0x0392,0x0154,0xFF4A,0x0392,0x0155,0xFF4A,0x0391,0x0155,0xFF4A,0x0391,
        0x0156,0xFF4A,0x0391,0x0156,0xFF4A,0x0391,0x0157,0xFF4A,0x0391,0x0158,0xFF4A,0x0390,
        0x0158,0xFF4A,0x0390,0x0159,0xFF49,0x0390,0x0159,0xFF49,0x0390,0x015A,0xFF49,0x0390,
        0x015A,0xFF49,0x038F,0x015B,0xFF49,0x038F,0x015B,0xFF49,0x038F,0x015C,0xFF49,0x038F,
        0x015C,0xFF49,0x038F,0x015C,0xFF49,0x038E,0x015D,0xFF49,0x038E,0x015D,0xFF49,0x038E,
        0x015D,0xFF49,0x038E,0x015E,0xFF49,0x038D,0x015E,0xFF49,0x038D,0x015E,0xFF49,0x038D,
        0x015E,0xFF49,0x038D,0x015F,0xFF49,0x038D,0x015F,0xFF49,0x038C,0x015F,0xFF49,0x038C,
        0x015F,0xFF49,0x038C,0x015F,0xFF49,0x038C,0x015F,0xFF48,0x038B,0x015F,0xFF48,0x038A,
        0x015F,0xFF48,0x038A,0x015F,0xFF48,0x0389,0x015F,0xFF47,0x0387,0x015F,0xFF47,0x0386,
        0x015F,0xFF47,0x0385,0x015F,0xFF47,0x0384,0x015F,0xFF46,0x0382,0x015F,0xFF46,0x0381,
        0x015F,0xFF46,0x037F,0x015F,0xFF46,0x037E,0x015F,0xFF45,0x037C,0x015F,0xFF45,0x037A,
        0x015F,0xFF45,0x0378,0x015F,0xFF45,0x0377,0x015F,0xFF44,0x0375,0x015F,0xFF44,0x0373,
        0x015F,0xFF44,0x0371,0x015F,0xFF44,0x036F,0x015F,0xFF43,0x036C,0x015F,0xFF43,0x036A,
        0x015F,0xFF43,0x0368,0x015F,0xFF43,0x0366,0x015F,0xFF42,0x0363,0x015F,0xFF42,0x0361,
        0x015F,0xFF42,0x035F,0x015F,0xFF42,0x035C,0x015F,0xFF41,0x035A,0x015F,0xFF41,0x0357,
        0x015F,0xFF41,0x0355,0x015F,0xFF41,0x0352,0x015F,0xFF41,0x034F,0x015F,0xFF40,0x034D,
        0x015F,0xFF40,0x034A,0x015F,0xFF40,0x0347,0x015F,0xFF40,0x0344,0x015F,0xFF3F,0x0341,
        0x015F,0xFF3F,0x033E,0x015F,0xFF3F,0x033C,0x015F,0xFF3F,0x0339,0x015F,0xFF3F,0x0336,
        0x015F,0xFF3E,0x0333,0x015F,0xFF3E,0x032F,0x015F,0xFF3E,0x032C,0x015F,0xFF3E,0x0329,
        0x015E,0xFF3D,0x0326,0x015E,0xFF3D,0x0323,0x015E,0xFF3D,0x0320,0x015E,0xFF3D,0x031C,
        0x015E,0xFF3D,0x0319,0x015E,0xFF3C,0x0316,0x015E,0xFF3C,0x0312,0x015E,0xFF3C,0x030F,
        0x015E,0xFF3C,0x030C,0x015E,0xFF3C,0x0308,0x015E,0xFF3B,0x0305,0x015E,0xFF3B,0x0301,
        0x015E,0xFF3B,0x02FE,0x015E,0xFF3B,0x02FA,0x015E,0xFF3A,0x02F6,0x015E,0xFF3A,0x02F3,
        0x015E,0xFF3A,0x02EF,0x015E,0xFF3A,0x02EB,0x015E,0xFF3A,0x02E8,0x015E,0xFF39,0x02E4,
        0x015E,0xFF39,0x02E0,0x015E,0xFF39,0x02DC,0x015E,0xFF39,0x02D9,0x015E,0xFF39,0x02D5,
        0x015E,0xFF39,0x02D1,0x015E,0xFF38,0x02CD,0x015E,0xFF38,0x02C9,0x015D,0xFF38,0x02C5,
        0x015D,0xFF38,0x02C1,0x015D,0xFF38,0x02BD,0x015D,0xFF37,0x02B9,0x015D,0xFF37,0x02B5,
        0x015D,0xFF37,0x02B1,0x015D,0xFF37,0x02AD,0x015D,0xFF37,0x02A8,0x015D,0xFF36,0x02A4,
        0x015D,0xFF36,0x02A0,0x015D,0xFF36,0x029C,0x015D,0xFF36,0x0298,0x015D,0xFF36,0x0293,
        0x015D,0xFF36,0x028F,0x015D,0xFF35,0x028B,0x015D,0xFF35,0x0286,0x015D,0xFF35,0x0282,
        0x015D,0xFF35,0x027E,0x015C,0xFF35,0x0279,0x015C,0xFF35,0x0275,0x015C,0xFF34,0x0270,
        0x015C,0xFF34,0x026C,0x015C,0xFF34,0x0267,0x015C,0xFF34,0x0263,0x015C,0xFF34,0x025E,
        0x015C,0xFF34,0x025A,0x015C,0xFF33,0x0255,0x015C,0xFF33,0x0250,0x015C,0xFF33,0x024C,
        0x015C,0xFF33,0x0247,0x015C,0xFF33,0x0242,0x015C,0xFF33,0x023E,0x015B,0xFF32,0x0239,
        0x015B,0xFF32,0x0234,0x015B,0xFF32,0x022F,0x015B,0xFF32,0x022A,0x015B,0xFF32,0x0226,
        0x015B,0xFF32,0x0221,0x015B,0xFF32,0x021C,0x015B,0xFF31,0x0217,0x015B,0xFF31,0x0212,
        0x015B,0xFF31,0x020D,0x015B,0xFF31,0x0208,0x015A,0xFF31,0x0203,0x015A,0xFF31,0x01FE,
        0x015A,0xFF31,0x01F9,0x015A,0xFF30,0x01F4,0x015A,0xFF30,0x01EF,0x015A,0xFF30,0x01EA,
        0x015A,0xFF30,0x01E5,0x015A,0xFF30,0x01E0,0x015A,0xFF30,0x01DB,0x015A,0xFF30,0x01D5,
        0x015A,0xFF2F,0x01D0,0x0159,0xFF2F,0x01CB,0x0159,0xFF2F,0x01C6,0x0159,0xFF2F,0x01C1,
        0x0159,0xFF2F,0x01BB,0x0159,0xFF2F,0x01B6,0x0159,0xFF2F,0x01B1,0x0159,0xFF2F,0x01AB,
        0x0159,0xFF2E,0x01A6,0x0159,0xFF2E,0x01A1,0x0158,0xFF2E,0x019C,0x0158,0xFF2E,0x0197,
        0x0158,0xFF2E,0x0193,0x0158,0xFF2E,0x018E,0x0158,0xFF2E,0x0189,0x0158,0xFF2E,0x0184,
        0x0158,0xFF2E,0x017F,0x0158,0xFF2D,0x017A,0x0157,0xFF2D,0x0176,0x0157,0xFF2D,0x0171,
        0x0157,0xFF2D,0x016C,0x0157,0xFF2D,0x0167,0x0157,0xFF2D,0x0163,0x0157,0xFF2D,0x015E,
        0x0157,0xFF2D,0x0159,0x0157,0xFF2D,0x0155,0x0156,0xFF2C,0x0150,0x0156,0xFF2C,0x014B,
        0x0156,0xFF2C,0x0147,0x0156,0xFF2C,0x0142,0x0156,0xFF2C,0x013E,0x0156,0xFF2C,0x0139,
        0x0156,0xFF2C,0x0134,0x0155,0xFF2C,0x0130,0x0155,0xFF2C,0x012B,0x0155,0xFF2C,0x0127,
        0x0155,0xFF2B,0x0122,0x0155,0xFF2B,0x011E,0x0155,0xFF2B,0x0119,0x0155,0xFF2B,0x0115,
        0x0154,0xFF2B,0x0110,0x0154,0xFF2B,0x010C,0x0154,0xFF2B,0x0108,0x0154,0xFF2B,0x0103,
        0x0154,0xFF2B,0x00FF,0x0154,0xFF2B,0x00FB,0x0154,0xFF2B,0x00F6,0x0153,0xFF2B,0x00F2,
        0x0153,0xFF2A,0x00EE,0x0153,0xFF2A,0x00E9,0x0153,0xFF2A,0x00E5,0x0153,0xFF2A,0x00E1,
        0x0153,0xFF2A,0x00DD,0x0152,0xFF2A,0x00D8,0x0152,0xFF2A,0x00D4,0x0152,0xFF2A,0x00D0,
        0x0152,0xFF2A,0x00CC,0x0152,0xFF2A,0x00C8,0x0152,0xFF2A,0x00C4,0x0151,0xFF2A,0x00C0,
        0x0151,0xFF2A,0x00BB,0x0151,0xFF2A,0x00B7,0x0151,0xFF29,0x00B3,0x0151,0xFF29,0x00AF,
        0x0150,0xFF29,0x00AB,0x0150,0xFF29,0x00A7,0x0150,0xFF29,0x00A3,0x0150,0xFF29,0x00A0,
        0x0150,0xFF29,0x009C,0x0150,0xFF29,0x0098,0x014F,0xFF29,0x0094,0x014F,0xFF29,0x0090,
        0x014F,0xFF29,0x008C,0x014F,0xFF29,0x0088,0x014F,0xFF29,0x0085,0x014E,0xFF29,0x0081,
        0x014E,0xFF29,0x007D,0x014E,0xFF29,0x007A,0x014E,0xFF29,0x0076,0x014E,0xFF29,0x0072,
        0x014D,0xFF29,0x006F,0x014D,0xFF29,0x006B,0x014D,0xFF28,0x0068,0x014D,0xFF28,0x0064,
        0x014D,0xFF28,0x0060,0x014C,0xFF28,0x005D,0x014C,0xFF28,0x005A,0x014C,0xFF28,0x0056,
        0x014C,0xFF28,0x0053,0x014B,0xFF28,0x004F,0x014B,0xFF28,0x004C,0x014B,0xFF28,0x0049,
        0x014B,0xFF28,0x0046,0x014B,0xFF28,0x0042,0x014A,0xFF28,0x003F,0x014A,0xFF28,0x003C,
        0x014A,0xFF28,0x0039,0x014A,0xFF28,0x0036,0x0149,0xFF28,0x0033,0x0149,0xFF28,0x0030,
        0x0149,0xFF28,0x002D,0x0149,0xFF28,0x002A,0x0149,0xFF28,0x0027,0x0148,0xFF28,0x0024,
        0x0148,0xFF28,0x0022,0x0148,0xFF28,0x001F,0x0148,0xFF28,0x001C,0x0147,0xFF28,0x001A,
        0x0147,0xFF28,0x0017,0x0147,0xFF2B,0x0015,0x0147,0xFF2E,0x0012,0x0146,0xFF31,0x0010,
        0x0146,0xFF33,0x000E,0x0146,0xFF36,0x000B,0x0146,0xFF39,0x0009,0x0145,0xFF3C,0x0007,
        0x0145,0xFF3F,0x0006,0x0145,0xFF42,0x0004,0x0145,0xFF44,0x0002,0x0144,0xFF47,0x0001,
        0x0144,0xFF4A,0x0000,0x0144,0xFF4D,0xFFF7,0x0144,0xFF50,0xFFEE,0x0143,0xFF53,0xFFE5,
        0x0143,0xFF55,0xFFDD,0x0143,0xFF58,0xFFD4,0x0143,0xFF5B,0xFFCC,0x0142,0xFF5E,0xFFC3,
        0x0142,0xFF61,0xFFBB,0x0146,0xFF64,0xFFB3,0x0149,0xFF67,0xFFAB,0x014D,0xFF69,0xFFA2,
        0x0151,0xFF6C,0xFF9B,0x0154,0xFF6F,0xFF93,0x0158,0xFF72,0xFF8B,0x015C,0xFF75,0xFF83,
        0x015F,0xFF78,0xFF7C,0x0163,0xFF7A,0xFF75,0x0166,0xFF7D,0xFF6D,0x016A,0xFF80,0xFF66,
        0x016E,0xFF83,0xFF5F,0x0171,0xFF86,0xFF58,0x0175,0xFF89,0xFF52,0x0178,0xFF8B,0xFF4B,
        0x017C,0xFF8E,0xFF44,0x0180,0xFF91,0xFF3E,0x0183,0xFF94,0xFF38,0x0187,0xFF97,0xFF32,
        0x018A,0xFF9A,0xFF2C,0x018E,0xFF9D,0xFF26,0x0191,0xFF9F,0xFF21,0x0195,0xFFA2,0xFF1B,
        0x0199,0xFFA5,0xFF16,0x019C,0xFFA8,0xFF11,0x01A0,0xFFAB,0xFF0C,0x01A3,0xFFAE,0xFF08,
        0x01A7,0xFFB0,0xFF04,0x01AA,0xFFB3,0xFF00,0x01AE,0xFFB6,0xFEFC,0x01B1,0xFFB9,0xFEF9,
        0x01B5,0xFFBC,0xFEF6,0x01B8,0xFFBF,0xFEF3,0x01BC,0xFFC1,0xFEF2,0x01BF,0xFFC4,0xFEF2,
        0x01C2,0xFFC7,0xFEF1,0x01C6,0xFFCA,0xFEF1,0x01C9,0xFFCD,0xFEF0,0x01CD,0xFFD0,0xFEF0,
        0x01D0,0xFFD3,0xFEEF,0x01D4,0xFFD5,0xFEEF,0x01D7,0xFFD8,0xFEEE,0x01DB,0xFFDB,0xFEEE,
        0x01DE,0xFFDE,0xFEED,0x01E1,0xFFE1,0xFEED,0x01E5,0xFFE4,0xFEEC,0x01E8,0xFFE6,0xFEEC,
        0x01EC,0xFFE9,0xFEEB,0x01EF,0xFFEC,0xFEEB,0x01F2,0xFFEF,0xFEEA,0x01F6,0xFFF2,0xFEEA,
        0x01F9,0xFFF5,0xFEEA,0x01FC,0xFFF7,0xFEE9,0x0200,0xFFFA,0xFEE9,0x0203,0xFFFD,0xFEE8,
        0x0206,0x0000,0xFEE8,0x020A,0x0000,0xFEE7,0x020D,0x0000,0xFEE7,0x0210,0x0001,0xFEE6,
        0x0214,0x0001,0xFEE6,0x0217,0x0002,0xFEE6,0x021A,0x0002,0xFEE5,0x021E,0x0003,0xFEE5,
        0x0221,0x0004,0xFEE4,0x0224,0x0004,0xFEE4,0x0227,0x0005,0xFEE4,0x022B,0x0006,0xFEE3,
        0x022E,0x0007,0xFEE3,0x0231,0x0008,0xFEE2,0x0234,0x0009,0xFEE2,0x0238,0x000A,0xFEE1,
        0x023B,0x000B,0xFEE1,0x023E,0x000C,0xFEE1,0x0241,0x000D,0xFEE0,0x0244,0x000E,0xFEE0,
        0x0248,0x000F,0xFEE0,0x024B,0x0010,0xFEDF,0x024E,0x0011,0xFEDF,0x0251,0x0012,0xFEDE,
        0x0254,0x0013,0xFEDE,0x0257,0x0015,0xFEDE,0x025B,0x0016,0xFEDD,0x025E,0x0017,0xFEDD,
        0x0261,0x0018,0xFEDD,0x0264,0x001A,0xFEDC,0x0267,0x001B,0xFEDC,0x026A,0x001C,0xFEDB,
        0x026D,0x001E,0xFEDB,0x0270,0x001F,0xFEDB,0x0274,0x0021,0xFEDA,0x0277,0x0022,0xFEDA,
        0x027A,0x0024,0xFEDA,0x027D,0x0025,0xFED9,0x0280,0x0027,0xFED9,0x0283,0x0028,0xFED9,
        0x0286,0x002A,0xFED8,0x0289,0x002B,0xFED8,0x028C,0x002D,0xFED8,0x028F,0x002E,0xFED7,
        0x0292,0x0030,0xFED7,0x0295,0x0032,0xFED7,0x0298,0x0033,0xFED6,0x029B,0x0035,0xFED6,
        0x029E,0x0037,0xFED6,0x02A1,0x0039,0xFED5,0x02A4,0x003A,0xFED5,0x02A7,0x003C,0xFED5,
        0x02AA,0x003E,0xFED4,0x02AD,0x0040,0xFED4,0x02B0,0x0041,0xFED4,0x02B3,0x0043,0xFED4,
        0x02B6,0x0045,0xFED3,0x02B9,0x0047,0xFED3,0x02BC,0x0049,0xFED3,0x02BE,0x004B,0xFED2,
        0x02C1,0x004D,0xFED2,0x02C4,0x004E,0xFED2,0x02C7,0x0050,0xFED2,0x02CA,0x0052,0xFED1,
        0x02CD,0x0054,0xFED1,0x02D0,0x0056,0xFED1,0x02D2,0x0058,0xFED0,0x02D5,0x005A,0xFED0,
        0x02D8,0x005C,0xFED0,0x02DB,0x005E,0xFED0,0x02DE,0x0060,0xFECF,0x02E1,0x0063,0xFECF,
        0x02E3,0x0065,0xFECF,0x02E6,0x0067,0xFECF,0x02E9,0x0069,0xFECE,0x02EC,0x006B,0xFECE,
        0x02EE,0x006D,0xFECE,0x02F1,0x006F,0xFECE,0x02F4,0x0071,0xFECD,0x02F7,0x0074,0xFECD,
        0x02F9,0x0076,0xFECD,0x02FC,0x0078,0xFECD,0x02FF,0x007A,0xFECC,0x0301,0x007D,0xFECC,
        0x0304,0x007F,0xFECC,0x0307,0x0081,0xFECC,0x0309,0x0083,0xFECC,0x030C,0x0086,0xFECB,
        0x030F,0x0088,0xFECB,0x0311,0x008A,0xFECB,0x0314,0x008D,0xFECB,0x0317,0x008F,0xFECA,
        0x0319,0x0091,0xFECA,0x031C,0x0094,0xFECA,0x031E,0x0096,0xFECA,0x0321,0x0099,0xFECA,
        0x0324,0x009B,0xFEC9,0x0326,0x009D,0xFEC9,0x0329,0x00A0,0xFEC9,0x032B,0x00A2,0xFEC9,
        0x032E,0x00A5,0xFEC9,0x0330,0x00A7,0xFEC8,0x0333,0x00AA,0xFEC8,0x0335,0x00AC,0xFEC8,
        0x0338,0x00AF,0xFEC8,0x033A,0x00B1,0xFEC8,0x033D,0x00B4,0xFEC8,0x033F,0x00B6,0xFEC7,
        0x0342,0x00B9,0xFEC7,0x0344,0x00BB,0xFEC7,0x0346,0x00BE,0xFEC7,0x0349,0x00C1,0xFEC7,
        0x034B,0x00C3,0xFEC7,0x034E,0x00C6,0xFEC6,0x0350,0x00C9,0xFEC6,0x0352,0x00CB,0xFEC6,
        0x0355,0x00CE,0xFEC6,0x0357,0x00D1,0xFEC6,0x0359,0x00D3,0xFEC6,0x035C,0x00D6,0xFEC5,
        0x035E,0x00D9,0xFEC5,0x0360,0x00DB,0xFEC5,0x0363,0x00DE,0xFEC5,0x0365,0x00E1,0xFEC5,
        0x0367,0x00E3,0xFEC5,0x036A,0x00E6,0xFEC5,0x036C,0x00E9,0xFEC4,0x036E,0x00EC,0xFEC4,
        0x0370,0x00EF,0xFEC4,0x0372,0x00F1,0xFEC4,0x0375,0x00F4,0xFEC4,0x0377,0x00F7,0xFEC4,
        0x0379,0x00FA,0xFEC4,0x037B,0x00FD,0xFEC4,0x037D,0x0100,0xFEC3,0x037F,0x0102,0xFEC3,
        0x0382,0x0105,0xFEC3,0x0384,0x0108,0xFEC3,0x0386,0x010B,0xFEC3,0x0388,0x010E,0xFEC3,
        0x038A,0x0111,0xFEC3,0x038C,0x0114,0xFEC3,0x038E,0x0117,0xFEC3,0x0390,0x011A,0xFEC3,
        0x0392,0x011D,0xFEC2,0x0394,0x0120,0xFEC2,0x0396,0x0123,0xFEC2,0x0398,0x0126,0xFEC2,
        0x039A,0x0129,0xFEC2,0x039C,0x012C,0xFEC2,0x039E,0x012F,0xFEC2,0x03A0,0x0132,0xFEC2,
        0x03A1,0x0135,0xFEC2,0x03A3,0x0138,0xFEC2,0x03A5,0x013B,0xFEC2,0x03A7,0x013E,0xFEC1,
        0x03A9,0x0141,0xFEC1,0x03AB,0x0144,0xFEC1,0x03AC,0x0147,0xFEC1,0x03AE,0x014A,0xFEC1,
        0x03B0,0x014D,0xFEC1,0x03B2,0x0151,0xFEC1,0x03B3,0x0154,0xFEC1,0x03B5,0x0157,0xFEC1,
        0x03B7,0x015A,0xFEC1,0x03B9,0x015D,0xFEC1,0x03BA,0x0160,0xFEC1,0x03BC,0x0164,0xFEC1,
        0x03BD,0x0167,0xFEC1,0x03BF,0x016A,0xFEC1,0x03C1,0x016D,0xFEC1,0x03C2,0x0170,0xFEC1,
        0x03C4,0x0174,0xFEC1,0x03C5,0x0177,0xFEC0,0x03C7,0x017A,0xFEC0,0x03C8,0x017D,0xFEC0,
        0x03CA,0x0181,0xFEC0,0x03CB,0x0184,0xFEC0,0x03CC,0x0187,0xFEC0,0x03CE,0x018B,0xFEC0,
        0x03CF,0x018E,0xFEC0,0x03D0,0x0191,0xFEC0,0x03D2,0x0195,0xFEC0,0x03D3,0x0198,0xFEC0,
        0x03D4,0x019B,0xFEC0,0x03D5,0x019F,0xFEC0,0x03D7,0x01A2,0xFEC0,0x03D8,0x01A5,0xFEC0,
        0x03D9,0x01A9,0xFEC0,0x03DA,0x01AC,0xFEC0,0x03DB,0x01AF,0xFEC0,0x03DC,0x01B3,0xFEC0,
        0x03DD,0x01B6,0xFEC0,0x03DE,0x01BA,0xFEC0,0x03DE,0x01BD,0xFEC0,0x03DF,0x01C1,0xFEC0,
        0x03E0,0x01C4,0xFEC0,0x03E1,0x01C8,0xFEC0,0x03E1,0x01CB,0xFEC0,0x03E2,0x01CF,0xFEC0,
        0x03E2,0x01D2,0xFEC0,0x03E1,0x01D3,0xFEC0,0x03DF,0x01D5,0xFEC0,0x03DD,0x01D6,0xFEC0,
        0x03DB,0x01D8,0xFEC0,0x03D9,0x01D9,0xFEC0,0x03D6,0x01DB,0xFEC0,0x03D4,0x01DC,0xFEC0,
        0x03D1,0x01DD,0xFEC0,0x03CE,0x01DF,0xFEC0,0x03CB,0x01E0,0xFEC0,0x03C8,0x01E2,0xFEC0,
        0x03C5,0x01E3,0xFEC0,0x03C2,0x01E4,0xFEC0,0x03BF,0x01E6,0xFEC0,0x03BC,0x01E7,0xFEC0,
        0x03B8,0x01E9,0xFEC0,0x03B5,0x01EA,0xFEC0,0x03B1,0x01EB,0xFEC0,0x03AE,0x01ED,0xFEC0,
        0x03AA,0x01EE,0xFEC0,0x03A7,0x01EF,0xFEC1,0x03A3,0x01F1,0xFEC1,0x039F,0x01F2,0xFEC1,
        0x039B,0x01F4,0xFEC1,0x0398,0x01F5,0xFEC1,0x0394,0x01F6,0xFEC1,0x0390,0x01F8,0xFEC1,
        0x038C,0x01F9,0xFEC1,0x0388,0x01FA,0xFEC1,0x0384,0x01FC,0xFEC1,0x0380,0x01FD,0xFEC1,
        0x037B,0x01FE,0xFEC1,0x0377,0x0200,0xFEC2,0x0373,0x0201,0xFEC2,0x036F,0x0202,0xFEC2,
        0x036B,0x0204,0xFEC2,0x0366,0x0205,0xFEC2,0x0362,0x0206,0xFEC2,0x035D,0x0207,0xFEC2,
        0x0359,0x0209,0xFEC2,0x0354,0x020A,0xFEC3,0x0350,0x020B,0xFEC3,0x034B,0x020D,0xFEC3,
        0x0347,0x020E,0xFEC3,0x0342,0x020F,0xFEC3,0x033E,0x0210,0xFEC3,0x0339,0x0212,0xFEC4,
        0x0334,0x0213,0xFEC4,0x0330,0x0214,0xFEC4,0x032B,0x0216,0xFEC4,0x0326,0x0217,0xFEC4,
        0x0321,0x0218,0xFEC4,0x031C,0x0219,0xFEC5,0x0318,0x021B,0xFEC5,0x0313,0x021C,0xFEC5,
        0x030E,0x021D,0xFEC5,0x0309,0x021E,0xFEC6,0x0304,0x0220,0xFEC6,0x02FF,0x0221,0xFEC6,
        0x02FA,0x0222,0xFEC6,0x02F5,0x0223,0xFEC6,0x02F0,0x0224,0xFEC7,0x02EB,0x0226,0xFEC7,
        0x02E6,0x0227,0xFEC7,0x02E0,0x0228,0xFEC8,0x02DB,0x0229,0xFEC8,0x02D6,0x022A,0xFEC8,
        0x02D1,0x022C,0xFEC8,0x02CC,0x022D,0xFEC9,0x02C6,0x022E,0xFEC9,0x02C1,0x022F,0xFEC9,
        0x02BC,0x0230,0xFEC9,0x02B6,0x0232,0xFECA,0x02B1,0x0233,0xFECA,0x02AC,0x0234,0xFECA,
        0x02A6,0x0235,0xFECB,0x02A1,0x0236,0xFECB,0x029C,0x0237,0xFECB,0x0296,0x0239,0xFECC,
        0x0291,0x023A,0xFECC,0x028B,0x023B,0xFECC,0x0286,0x023C,0xFECD,0x0280,0x023D,0xFECD,
        0x027A,0x023E,0xFECE,0x0275,0x023F,0xFECE,0x026F,0x0241,0xFECE,0x026A,0x0242,0xFECF,
        0x0264,0x0243,0xFECF,0x025E,0x0244,0xFECF,0x0259,0x0245,0xFED0,0x0253,0x0246,0xFED0,
        0x024D,0x0247,0xFED1,0x0248,0x0248,0xFED1,0x0242,0x0249,0xFED2,0x023C,0x024A,0xFED2,
        0x0236,0x024C,0xFED2,0x0231,0x024D,0xFED3,0x022B,0x024E,0xFED3,0x0225,0x024F,0xFED4,
        0x021F,0x0250,0xFED4,0x0219,0x0251,0xFED5,0x0213,0x0252,0xFED5,0x020D,0x0253,0xFED6,
        0x0207,0x0254,0xFED6,0x0202,0x0255,0xFED7,0x01FC,0x0256,0xFED7,0x01F6,0x0257,0xFED8,
        0x01F0,0x0258,0xFED8,0x01EA,0x0259,0xFED9,0x01E4,0x025A,0xFED9,0x01DE,0x025B,0xFEDA,
        0x01D7,0x025C,0xFEDA,0x01D1,0x025D,0xFEDB,0x01CB,0x025E,0xFEDB,0x01C5,0x025F,0xFEDC,
        0x01BF,0x0260,0xFEDC,0x01B9,0x0261,0xFEDD,0x01B3,0x0262,0xFEDE,0x01AD,0x0263,0xFEDE,
        0x01A6,0x0264,0xFEDF,0x01A0,0x0265,0xFEDF,0x019A,0x0266,0xFEE0,0x0195,0x0267,0xFEE1,
        0x0190,0x0268,0xFEE1,0x018B,0x0269,0xFEE2,0x0186,0x026A,0xFEE2,0x0181,0x026B,0xFEE3,
        0x017C,0x026C,0xFEE4,0x0177,0x026D,0xFEE4,0x0172,0x026E,0xFEE5,0x016E,0x026F,0xFEE6,
        0x0169,0x0270,0xFEE6,0x0164,0x0271,0xFEE7,0x015F,0x0272,0xFEE8,0x015A,0x0273,0xFEE8,
        0x0156,0x0274,0xFEE9,0x0151,0x0274,0xFEEA,0x014C,0x0275,0xFEEA,0x0148,0x0276,0xFEEB,
        0x0143,0x0277,0xFEEC,0x013E,0x0278,0xFEED,0x013A,0x0279,0xFEED,0x0135,0x027A,0xFEEE,
        0x0131,0x027B,0xFEEF,0x012C,0x027C,0xFEEF,0x0128,0x027C,0xFEF0,0x0123,0x027D,0xFEF1,
        0x011F,0x027E,0xFEF2,0x011A,0x027F,0xFEF3,0x0116,0x0280,0xFEF3,0x0112,0x0281,0xFEF4,
        0x010D,0x0282,0xFEF5,0x0109,0x0282,0xFEF6,0x0105,0x0283,0xFEF7,0x0101,0x0284,0xFEF7,
        0x00FC,0x0285,0xFEF8,0x00F8,0x0286,0xFEF9,0x00F4,0x0287,0xFEFA,0x00F0,0x0287,0xFEFB,
        0x00EC,0x0288,0xFEFC,0x00E8,0x0289,0xFEFC,0x00E4,0x028A,0xFEFD,0x00E0,0x028A,0xFEFE,
        0x00DC,0x028B,0xFEFF,0x00D8,0x028C,0xFF00,0x00D4,0x028D,0xFF01,0x00D0,0x028E,0xFF02,
        0x00CC,0x028E,0xFF03,0x00C8,0x028F,0xFF04,0x00C4,0x0290,0xFF04,0x00C0,0x0291,0xFF05,
        0x00BD,0x0291,0xFF06,0x00B9,0x0292,0xFF07,0x00B5,0x0293,0xFF08,0x00B1,0x0294,0xFF09,
        0x00AE,0x0294,0xFF0A,0x00AA,0x0295,0xFF0B,0x00A6,0x0296,0xFF0C,0x00A3,0x0296,0xFF0D,
        0x009F,0x0297,0xFF0E,0x009C,0x0298,0xFF0F,0x0098,0x0298,0xFF10,0x0095,0x0299,0xFF11,
        0x0091,0x029A,0xFF12,0x008E,0x029A,0xFF13,0x008B,0x029B,0xFF14,0x0087,0x029C,0xFF15,
        0x0084,0x029C,0xFF16,0x0081,0x029D,0xFF17,0x007D,0x029E,0xFF18,0x007A,0x029E,0xFF1A,
        0x0077,0x029F,0xFF1B,0x0074,0x02A0,0xFF1C,0x0071,0x02A0,0xFF1D,0x006E,0x02A1,0xFF1E,
        0x006B,0x02A1,0xFF1F,0x0068,0x02A2,0xFF20,0x0065,0x02A3,0xFF21,0x0062,0x02A3,0xFF22,
        0x005F,0x02A4,0xFF24,0x005C,0x02A4,0xFF25,0x0059,0x02A5,0xFF26,0x0056,0x02A5,0xFF27,
        0x0053,0x02A6,0xFF28,0x0051,0x02A7,0xFF29,0x004E,0x02A7,0xFF2B,0x004B,0x02A8,0xFF2C,
        0x0048,0x02A8,0xFF2D,0x0046,0x02A9,0xFF2E,0x0043,0x02A9,0xFF2F,0x0041,0x02AA,0xFF31,
        0x003E,0x02AA,0xFF32,0x003C,0x02AB,0xFF33,0x0039,0x02AB,0xFF34,0x0037,0x02AC,0xFF36,
        0x0035,0x02AC,0xFF37,0x0032,0x02AD,0xFF38,0x0030,0x02AD,0xFF39,0x002E,0x02AE,0xFF3B,
        0x002C,0x02AE,0xFF3C,0x0029,0x02AE,0xFF3D,0x0027,0x02AF,0xFF3F,0x0025,0x02AF,0xFF40,
        0x0023,0x02B0,0xFF41,0x0021,0x02B0,0xFF42,0x001F,0x02B1,0xFF44,0x001D,0x02B1,0xFF45,
        0x001B,0x02B1,0xFF47,0x001A,0x02B2,0xFF48,0x0018,0x02B2,0xFF49,0x0016,0x02B2,0xFF4B,
        0x0015,0x02B3,0xFF4C,0x0013,0x02B3,0xFF4F,0x0011,0x02B3,0xFF52,0x0010,0x02B4,0xFF55,
        0x000E,0x02B4,0xFF58,0x000D,0x02B4,0xFF5B,0x000C,0x02B5,0xFF5D,0x000A,0x02B5,0xFF60,
        0x0009,0x02B5,0xFF63,0x0008,0x02B6,0xFF66,0x0007,0x02B6,0xFF69,0x0006,0x02B6,0xFF6C,
        0x0005,0x02B6,0xFF6F,0x0004,0x02B7,0xFF72,0x0003,0x02B7,0xFF75,0x0002,0x02B7,0xFF78,
        0x0002,0x02B7,0xFF7A,0x0001,0x02B7,0xFF7D,0x0001,0x02B7,0xFF80,0x0000,0x02B8,0xFF83,
        0x0000,0x02B8,0xFF86,0xFFFD,0x02B8,0xFF89,0xFFFA,0x02B8,0xFF8C,0xFFF7,0x02B8,0xFF8F,
        0xFFF4,0x02B8,0xFF92,0xFFF1,0x02BA,0xFF95,0xFFEE,0x02BC,0xFF97,0xFFEB,0x02BE,0xFF9A,
        0xFFE9,0x02C0,0xFF9D,0xFFE6,0x02C1,0xFFA0,0xFFE3,0x02C3,0xFFA3,0xFFE0,0x02C5,0xFFA6,
        0xFFDD,0x02C7,0xFFA9,0xFFDB,0x02C9,0xFFAC,0xFFD8,0x02CB,0xFFAF,0xFFD5,0x02CC,0xFFB2,
        0xFFD3,0x02CE,0xFFB5,0xFFD0,0x02D0,0xFFB7,0xFFCE,0x02D2,0xFFBA,0xFFCB,0x02D4,0xFFBD,
        0xFFC9,0x02D6,0xFFC0,0xFFC6,0x02D7,0xFFC3,0xFFC4,0x02D9,0xFFC6,0xFFC2,0x02DB,0xFFC9,
        0xFFBF,0x02DD,0xFFCC,0xFFBD,0x02DF,0xFFCF,0xFFBB,0x02E0,0xFFD2,0xFFB9,0x02E2,0xFFD4,
        0xFFB6,0x02E4,0xFFD7,0xFFB4,0x02E6,0xFFDA,0xFFB2,0x02E8,0xFFDD,0xFFB0,0x02E9,0xFFE0,
        0xFFAE,0x02EB,0xFFE3,0xFFAD,0x02ED,0xFFE6,0xFFAB,0x02EF,0xFFE9,0xFFA9,0x02F0,0xFFEC,
        0xFFA8,0x02F2,0xFFEF,0xFFA6,0x02F4,0xFFF1,0xFFA5,0x02F6,0xFFF4,0xFFA4,0x02F7,0xFFF7,
        0xFFA3,0x02F9,0xFFFA,0xFFA3,0x02FB,0xFFFD,0xFFA3,0x02FC,0x0000,0xFFA3,0x02FE,0x0000,
        0xFFA3,0x0300,0x0001,0xFFA3,0x0302,0x0002,0xFFA4,0x0303,0x0002,0xFFA4,0x0305,0x0003,
        0xFFA4,0x0307,0x0005,0xFFA4,0x0308,0x0006,0xFFA4,0x030A,0x0007,0xFFA4,0x030C,0x0008,
        0xFFA4,0x030D,0x000A,0xFFA4,0x030F,0x000B,0xFFA4,0x0311,0x000D,0xFFA4,0x0312,0x000F,
        0xFFA4,0x0314,0x0010,0xFFA4,0x0316,0x0012,0xFFA5,0x0317,0x0014,0xFFA5,0x0319,0x0016,
        0xFFA5,0x031B,0x0018,0xFFA5,0x031C,0x001A,0xFFA5,0x031E,0x001C,0xFFA5,0x031F,0x001E,
        0xFFA5,0x0321,0x0020,0xFFA5,0x0323,0x0022,0xFFA5,0x0324,0x0024,0xFFA5,0x0326,0x0027,
        0xFFA5,0x0327,0x0029,0xFFA5,0x0329,0x002B,0xFFA6,0x032B,0x002E,0xFFA6,0x032C,0x0030,
        0xFFA6,0x032E,0x0033,0xFFA6,0x032F,0x0035,0xFFA6,0x0331,0x0038,0xFFA6,0x0332,0x003B,
        0xFFA6,0x0334,0x003D,0xFFA6,0x0335,0x0040,0xFFA6,0x0337,0x0043,0xFFA6,0x0339,0x0046,
        0xFFA6,0x033A,0x0048,0xFFA6,0x033C,0x004B,0xFFA6,0x033D,0x004E,0xFFA7,0x033F,0x0051,
        0xFFA7,0x0340,0x0054,0xFFA7,0x0342,0x0057,0xFFA7,0x0343,0x005A,0xFFA7,0x0345,0x005D,
        0xFFA7,0x0346,0x0061,0xFFA7,0x0348,0x0064,0xFFA7,0x0349,0x0067,0xFFA7,0x034B,0x006A,
        0xFFA7,0x034C,0x006D,0xFFA7,0x034E,0x0071,0xFFA7,0x034F,0x0074,0xFFA7,0x0350,0x0077,
        0xFFA8,0x0352,0x007B,0xFFA8,0x0353,0x007E,0xFFA8,0x0355,0x0082,0xFFA8,0x0356,0x0085,
        0xFFA8,0x0358,0x0089,0xFFA8,0x0359,0x008C,0xFFA8,0x035A,0x0090,0xFFA8,0x035C,0x0093,
        0xFFA8,0x035D,0x0097,0xFFA8,0x035F,0x009B,0xFFA8,0x0360,0x009E,0xFFA8,0x0361,0x00A2,
        0xFFA8,0x0363,0x00A6,0xFFA8,0x0364,0x00AA,0xFFA8,0x0366,0x00AE,0xFFA9,0x0367,0x00B1,
        0xFFA9,0x0368,0x00B5,0xFFA9,0x036A,0x00B9,0xFFA9,0x036B,0x00BD,0xFFA9,0x036C,0x00C1,
        0xFFA9,0x036E,0x00C5,0xFFA9,0x036F,0x00C9,0xFFA9,0x0370,0x00CD,0xFFA9,0x0372,0x00D1,
        0xFFA9,0x0373,0x00D5,0xFFA9,0x0374,0x00D9,0xFFA9,0x0376,0x00DD,0xFFA9,0x0377,0x00E2,
        0xFFA9,0x0378,0x00E6,0xFFAA,0x037A,0x00EA,0xFFAA,0x037B,0x00EE,0xFFAA,0x037C,0x00F2,
        0xFFAA,0x037D,0x00F7,0xFFAA,0x037F,0x00FB,0xFFAA,0x0380,0x00FF,0xFFAA,0x0381,0x0104,
        0xFFAA,0x0382,0x0108,0xFFAA,0x0384,0x010D,0xFFAA,0x0385,0x0111,0xFFAA,0x0386,0x0116,
        0xFFAA,0x0387,0x011A,0xFFAA,0x0389,0x011F,0xFFAA,0x038A,0x0123,0xFFAA,0x038B,0x0128,
        0xFFAA,0x038C,0x012C,0xFFAB,0x038D,0x0131,0xFFAB,0x038F,0x0135,0xFFAB,0x0390,0x013A,
        0xFFAB,0x0391,0x013F,0xFFAB,0x0392,0x0143,0xFFAB,0x0393,0x0148,0xFFAB,0x0394,0x014D,
        0xFFAB,0x0396,0x0152,0xFFAB,0x0397,0x0156,0xFFAB,0x0398,0x015B,0xFFAB,0x0399,0x0160,
        0xFFAB,0x039A,0x0165,0xFFAB,0x039B,0x016A,0xFFAB,0x039C,0x016F,0xFFAB,0x039D,0x0174,
        0xFFAB,0x039F,0x0179,0xFFAB,0x03A0,0x017E,0xFFAB,0x03A1,0x0183,0xFFAC,0x03A2,0x0188,
        0xFFAC,0x03A3,0x018D,0xFFAC,0x03A4,0x0192,0xFFAC,0x03A5,0x0197,0xFFAC,0x03A6,0x019C,
        0xFFAC,0x03A7,0x01A1,0xFFAC,0x03A8,0x01A6,0xFFAC,0x03A9,0x01AB,0xFFAC,0x03AA,0x01B0,
        0xFFAC,0x03AB,0x01B6,0xFFAC,0x03AC,0x01BB,0xFFAC,0x03AD,0x01C0,0xFFAC,0x03AE,0x01C5,
        0xFFAC,0x03AF,0x01CB,0xFFAC,0x03B0,0x01D0,0xFFAC,0x03B1,0x01D5,0xFFAC,0x03B2,0x01DB,
        0xFFAC,0x03B3,0x01E0,0xFFAC,0x03B4,0x01E5,0xFFAD,0x03B5,0x01EB,0xFFAD,0x03B6,0x01F0,
        0xFFAD,0x03B7,0x01F6,0xFFAD,0x03B8,0x01FB,0xFFAD,0x03B9,0x0201,0xFFAD,0x03BA,0x0206,
        0xFFAD,0x03BB,0x020C,0xFFAD,0x03BC,0x0211,0xFFAD,0x03BD,0x0217,0xFFAD,0x03BD,0x021C,
        0xFFAD,0x03BE,0x0222,0xFFAD,0x03BF,0x0228,0xFFAD,0x03C0,0x022D,0xFFAD,0x03C1,0x0233,
        0xFFAD,0x03C2,0x0238,0xFFAD,0x03C3,0x023E,0xFFAD,0x03C3,0x0244,0xFFAD,0x03C4,0x024A,
        0xFFAD,0x03C5,0x024F,0xFFAD,0x03C6,0x0255,0xFFAD,0x03C7,0x025B,0xFFAD,0x03C8,0x0261,
        0xFFAD,0x03C8,0x0267,0xFFAE,0x03C9,0x026C,0xFFAE,0x03CA,0x0272,0xFFAE,0x03CB,0x0278,
        0xFFAE,0x03CB,0x027E,0xFFAE,0x03CC,0x0284,0xFFAE,0x03CD,0x028A,0xFFAE,0x03CE,0x0290,
        0xFFAE,0x03CE,0x0296,0xFFAE,0x03CF,0x029C,0xFFAE,0x03D0,0x02A2,0xFFAE,0x03D1,0x02A8,
        0xFFAE,0x03D1,0x02AE,0xFFAE,0x03D2,0x02B4,0xFFAE,0x03D3,0x02BA,0xFFAE,0x03D3,0x02C0,
        0xFFAE,0x03D4,0x02C6,0xFFAE,0x03D5,0x02CC,0xFFAE,0x03D5,0x02D3,0xFFAE,0x03D6,0x02D9,
        0xFFAE,0x03D7,0x02DF,0xFFAE,0x03D7,0x02E5,0xFFAE,0x03D8,0x02EB,0xFFAE,0x03D8,0x02F2,
        0xFFAE,0x03D9,0x02F8,0xFFAE,0x03D9,0x02FE,0xFFAE,0x03DA,0x0304,0xFFAE,0x03DB,0x030B,
        0xFFAE,0x03DB,0x0311,0xFFAE,0x03DC,0x0317,0xFFAF,0x03DC,0x031E,0xFFAF,0x03DD,0x0324,
        0xFFAF,0x03DD,0x032A,0xFFAF,0x03DE,0x0331,0xFFAF,0x03DE,0x0337,0xFFAF,0x03DF,0x033E,
        0xFFAF,0x03DF,0x0344,0xFFAF,0x03E0,0x034B,0xFFAF,0x03E0,0x0351,0xFFAF,0x03E0,0x0358,
        0xFFAF,0x03E1,0x035E,0xFFAF,0x03E1,0x0365,0xFFAF,0x03E2,0x036B,0xFFAF,0x03E2,0x0372,
        0xFFAF,0x03E2,0x0378,0xFFAF,0x03E3,0x037F,0xFFAF,0x03E3,0x0386,0xFFAF,0x03E3,0x038C,
        0xFFAF,0x03E4,0x0393,0xFFAF,0x03E4,0x039A,0xFFAF,0x03E4,0x03A0,0xFFAF,0x03E5,0x03A7,
        0xFFAF,0x03E5,0x03AE,0xFFAF,0x03E5,0x03B4,0xFFAF,0x03E5,0x03BB,0xFFAF,0x03E5,0x03C2,
        0xFFAF,0x03E6,0x03C9,0xFFAF,0x03E6,0x03D0,0xFFAF,0x03E6,0x03D6,0xFFAF,0x03E6,0x03DD
};

static signed short v_tbl[] = {



        0x0000,0x0005,0x000B,0x0010,0x0016,0x001B,0x0020,0x0026,
        0x002B,0x0030,0x0036,0x003B,0x0040,0x0046,0x004B,0x0050,
        0x0056,0x005B,0x0060,0x0066,0x006B,0x0070,0x0075,0x007B,
        0x0080,0x0085,0x008A,0x008F,0x0095,0x009A,0x009F,0x00A4,
        0x00A9,0x00AF,0x00B4,0x00B9,0x00BE,0x00C3,0x00C8,0x00CD,
        0x00D2,0x00D8,0x00DD,0x00E2,0x00E7,0x00EC,0x00F1,0x00F6,
        0x00FB,0x0100,0x0105,0x010A,0x010F,0x0114,0x0119,0x011E,
        0x0123,0x0128,0x012D,0x0132,0x0137,0x013C,0x0141,0x0146,
        0x014A,0x014F,0x0154,0x0159,0x015E,0x0163,0x0168,0x016D,
        0x0171,0x0176,0x017B,0x0180,0x0185,0x0189,0x018E,0x0193,
        0x0198,0x019C,0x01A1,0x01A6,0x01AB,0x01AF,0x01B4,0x01B9,
        0x01BD,0x01C2,0x01C7,0x01CB,0x01D0,0x01D5,0x01D9,0x01DE,
        0x01E2,0x01E7,0x01EB,0x01F0,0x01F5,0x01F9,0x01FE,0x0202,
        0x0207,0x020B,0x0210,0x0214,0x0219,0x021D,0x0222,0x0226,
        0x022A,0x022F,0x0233,0x0238,0x023C,0x0240,0x0245,0x0249,
        0x024D,0x0252,0x0256,0x025A,0x025F,0x0263,0x0267,0x026C,
        0x0270,0x0274,0x0278,0x027C,0x0281,0x0285,0x0289,0x028D,
        0x0291,0x0296,0x029A,0x029E,0x02A2,0x02A6,0x02AA,0x02AE,
        0x02B2,0x02B6,0x02BA,0x02BE,0x02C2,0x02C6,0x02CA,0x02CE,
        0x02D2,0x02D6,0x02DA,0x02DE,0x02E2,0x02E6,0x02EA,0x02ED,
        0x02F1,0x02F5,0x02F9,0x02FD,0x0300,0x0304,0x0308,0x030C,
        0x030F,0x0313,0x0317,0x031B,0x031E,0x0322,0x0325,0x0329,
        0x032D,0x0330,0x0334,0x0337,0x033B,0x033E,0x0342,0x0345,
        0x0349,0x034C,0x0350,0x0353,0x0357,0x035A,0x035D,0x0361,
        0x0364,0x0367,0x036B,0x036E,0x0371,0x0374,0x0378,0x037B,
        0x037E,0x0381,0x0384,0x0387,0x038B,0x038E,0x0391,0x0394,
        0x0397,0x039A,0x039D,0x03A0,0x03A2,0x03A5,0x03A8,0x03AB,
        0x03AE,0x03B1,0x03B3,0x03B6,0x03B9,0x03BC,0x03BE,0x03C1,
        0x03C4,0x03C6,0x03C9,0x03CB,0x03CE,0x03D0,0x03D3,0x03D5,
        0x03D7,0x03DA,0x03DC,0x03DE,0x03E0,0x03E2,0x03E5,0x03E7,
        0x03E9,0x03EB,0x03ED,0x03EE,0x03F0,0x03F2,0x03F4,0x03F5,
        0x03F7,0x03F9,0x03FA,0x03FB,0x03FC,0x03FE,0x03FE,0x03FF
};
static unsigned short grnsep[] = {
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
        0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
        0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
        0x0001,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
        0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
        0x0002,0x0002,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
        0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
        0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,
        0x0004,0x0004,0x0004,0x0004,0x0005,0x0005,0x0005,0x0005,
        0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,0x0006,
        0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,
        0x0007,0x0007,0x0007,0x0007,0x0007,0x0007,0x0007,0x0007,
        0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
        0x0009,0x0009,0x0009,0x0009,0x0009,0x0009,0x0009,0x0009,
        0x000A,0x000A,0x000A,0x000A,0x000A,0x000A,0x000B,0x000B,
        0x000B,0x000B,0x000B,0x000B,0x000B,0x000C,0x000C,0x000C,
        0x000C,0x000C,0x000C,0x000D,0x000D,0x000D,0x000D,0x000D,
        0x000D,0x000E,0x000E,0x000E,0x000E,0x000E,0x000F,0x000F,
        0x000F,0x000F,0x000F,0x000F,0x0010,0x0010,0x0010,0x0010,
        0x0010,0x0011,0x0011,0x0011,0x0011,0x0011,0x0012,0x0012,
        0x0012,0x0012,0x0012,0x0013,0x0013,0x0013,0x0013,0x0014,
        0x0014,0x0014,0x0014,0x0014,0x0015,0x0015,0x0015,0x0015,
        0x0015,0x0016,0x0016,0x0016,0x0016,0x0017,0x0017,0x0017,
        0x0017,0x0018,0x0018,0x0018,0x0018,0x0018,0x0019,0x0019,
        0x0019,0x0019,0x001A,0x001A,0x001A,0x001A,0x001B,0x001B,
        0x001B,0x001B,0x001C,0x001C,0x001C,0x001C,0x001D,0x001D,
        0x001D,0x001D,0x001E,0x001E,0x001E,0x001E,0x001F,0x001F,
        0x001F,0x001F,0x0020,0x0020,0x0020,0x0021,0x0021,0x0021,
        0x0021,0x0022,0x0022,0x0022,0x0022,0x0023,0x0023,0x0023,
        0x0023,0x0024,0x0024,0x0024,0x0025,0x0025,0x0025,0x0025,
        0x0026,0x0026,0x0026,0x0026,0x0027,0x0027,0x0027,0x0028,
        0x0028,0x0028,0x0028,0x0029,0x0029,0x0029,0x0029,0x002A,
        0x002A,0x002A,0x002B,0x002B,0x002B,0x002B,0x002C,0x002C,
        0x002C,0x002D,0x002D,0x002D,0x002D,0x002E,0x002E,0x002E,
        0x002E,0x002F,0x002F,0x002F,0x0030,0x0030,0x0030,0x0030,
        0x0031,0x0031,0x0031,0x0032,0x0032,0x0032,0x0032,0x0033,
        0x0033,0x0033,0x0033,0x0034,0x0034,0x0034,0x0035,0x0035,
        0x0035,0x0035,0x0036,0x0036,0x0036,0x0036,0x0037,0x0037,
        0x0037,0x0038,0x0038,0x0038,0x0038,0x0039,0x0039,0x0039,
        0x0039,0x003A,0x003A,0x003A,0x003B,0x003B,0x003B,0x003B,
        0x003C,0x003C,0x003C,0x003C,0x003D,0x003D,0x003D,0x003D,
        0x003E,0x003E,0x003E,0x003E,0x003F,0x003F,0x003F,0x003F,
        0x0040,0x0040,0x0040,0x0040,0x0041,0x0041,0x0041,0x0041,
        0x0042,0x0042,0x0042,0x0042,0x0043,0x0043,0x0043,0x0043,
        0x0044,0x0044,0x0044,0x0044,0x0045,0x0045,0x0045,0x0045,
        0x0046,0x0046,0x0046,0x0046,0x0047,0x0047,0x0047,0x0047,
        0x0047,0x0048,0x0048,0x0048,0x0048,0x0049,0x0049,0x0049,
        0x0049,0x004A,0x004A,0x004A,0x004A,0x004A,0x004B,0x004B,
        0x004B,0x004B,0x004B,0x004C,0x004C,0x004C,0x004C,0x004D,
        0x004D,0x004D,0x004D,0x004D,0x004E,0x004E,0x004E,0x004E,
        0x004E,0x004F,0x004F,0x004F,0x004F,0x004F,0x0050,0x0050,
        0x0050,0x0050,0x0050,0x0050,0x0051,0x0051,0x0051,0x0051,
        0x0051,0x0052,0x0052,0x0052,0x0052,0x0052,0x0052,0x0053,
        0x0053,0x0053,0x0053,0x0053,0x0053,0x0054,0x0054,0x0054,
        0x0054,0x0054,0x0054,0x0055,0x0055,0x0055,0x0055,0x0055,
        0x0055,0x0055,0x0056,0x0056,0x0056,0x0056,0x0056,0x0056,
        0x0056,0x0057,0x0057,0x0057,0x0057,0x0057,0x0057,0x0057,
        0x0058,0x0058,0x0058,0x0058,0x0058,0x0058,0x0058,0x0058,
        0x0058,0x0059,0x0059,0x0059,0x0059,0x0059,0x0059,0x0059,
        0x0059,0x0059,0x005A,0x005A,0x005A,0x005A,0x005A,0x005A,
        0x005A,0x005A,0x005A,0x005A,0x005A,0x005A,0x005B,0x005B,
        0x005B,0x005B,0x005B,0x005B,0x005B,0x005B,0x005B,0x005B,
        0x005B,0x005B,0x005B,0x005B,0x005B,0x005B,0x005B,0x005C,
        0x005C,0x005C,0x005C,0x005C,0x005C,0x005C,0x005C,0x005C,
        0x005C,0x005C,0x005C,0x005C,0x005C,0x005C,0x005C,0x005C,
        0x005C,0x005C,0x005C,0x005C,0x005C,0x005C,0x005C,0x005C,
        0x005C,0x005C,0x005C,0x005C,0x005C,0x005C,0x005C,0x005C,
        0x005C,0x005C,0x005C,0x005C,0x005C,0x005C,0x005C,0x005B,
        0x005B,0x005B,0x005B,0x005B,0x005B,0x005B,0x005B,0x005B,
        0x005B,0x005B,0x005B,0x005B,0x005B,0x005B,0x005B,0x005A,
        0x005A,0x005A,0x005A,0x005A,0x005A,0x005A,0x005A,0x005A,
        0x005A,0x0059,0x0059,0x0059,0x0059,0x0059,0x0059,0x0059,
        0x0059,0x0059,0x0058,0x0058,0x0058,0x0058,0x0058,0x0058,
        0x0058,0x0057,0x0057,0x0057,0x0057,0x0057,0x0057,0x0057,
        0x0056,0x0056,0x0056,0x0056,0x0056,0x0056,0x0055,0x0055,
        0x0055,0x0055,0x0055,0x0055,0x0054,0x0054,0x0054,0x0054,
        0x0054,0x0053,0x0053,0x0053,0x0053,0x0053,0x0052,0x0052,
        0x0052,0x0052,0x0051,0x0051,0x0051,0x0051,0x0051,0x0050,
        0x0050,0x0050,0x0050,0x004F,0x004F,0x004F,0x004F,0x004E,
        0x004E,0x004E,0x004E,0x004D,0x004D,0x004D,0x004D,0x004C,
        0x004C,0x004C,0x004C,0x004B,0x004B,0x004B,0x004B,0x004A,
        0x004A,0x004A,0x004A,0x0049,0x0049,0x0049,0x0048,0x0048,
        0x0048,0x0048,0x0047,0x0047,0x0047,0x0046,0x0046,0x0046,
        0x0046,0x0045,0x0045,0x0045,0x0044,0x0044,0x0044,0x0044,
        0x0043,0x0043,0x0043,0x0042,0x0042,0x0042,0x0041,0x0041,
        0x0041,0x0041,0x0040,0x0040,0x0040,0x003F,0x003F,0x003F,
        0x003E,0x003E,0x003E,0x003D,0x003D,0x003D,0x003D,0x003C,
        0x003C,0x003C,0x003B,0x003B,0x003B,0x003A,0x003A,0x003A,
        0x0039,0x0039,0x0039,0x0038,0x0038,0x0038,0x0038,0x0037,
        0x0037,0x0037,0x0036,0x0036,0x0036,0x0035,0x0035,0x0035,
        0x0034,0x0034,0x0034,0x0033,0x0033,0x0033,0x0033,0x0032,
        0x0032,0x0032,0x0031,0x0031,0x0031,0x0030,0x0030,0x0030,
        0x002F,0x002F,0x002F,0x002F,0x002E,0x002E,0x002E,0x002D,
        0x002D,0x002D,0x002C,0x002C,0x002C,0x002C,0x002B,0x002B,
        0x002B,0x002A,0x002A,0x002A,0x002A,0x0029,0x0029,0x0029,
        0x0028,0x0028,0x0028,0x0028,0x0027,0x0027,0x0027,0x0026,
        0x0026,0x0026,0x0026,0x0025,0x0025,0x0025,0x0025,0x0024,
        0x0024,0x0024,0x0023,0x0023,0x0023,0x0023,0x0022,0x0022,
        0x0022,0x0022,0x0021,0x0021,0x0021,0x0021,0x0020,0x0020,
        0x0020,0x0020,0x001F,0x001F,0x001F,0x001F,0x001E,0x001E,
        0x001E,0x001E,0x001D,0x001D,0x001D,0x001D,0x001D,0x001C,
        0x001C,0x001C,0x001C,0x001B,0x001B,0x001B,0x001B,0x001B,
        0x001A,0x001A,0x001A,0x001A,0x0019,0x0019,0x0019,0x0019,
        0x0019,0x0018,0x0018,0x0018,0x0018,0x0018,0x0017,0x0017,
        0x0017,0x0017,0x0017,0x0016,0x0016,0x0016,0x0016,0x0016,
        0x0016,0x0015,0x0015,0x0015,0x0015,0x0015,0x0014,0x0014,
        0x0014,0x0014,0x0014,0x0014,0x0013,0x0013,0x0013,0x0013,
        0x0013,0x0013,0x0012,0x0012,0x0012,0x0012,0x0012,0x0012,
        0x0011,0x0011,0x0011,0x0011,0x0011,0x0011,0x0011,0x0010,
        0x0010,0x0010,0x0010,0x0010,0x0010,0x0010,0x000F,0x000F,
        0x000F,0x000F,0x000F,0x000F,0x000F,0x000E,0x000E,0x000E,
        0x000E,0x000E,0x000E,0x000E,0x000E,0x000D,0x000D,0x000D,
        0x000D,0x000D,0x000D,0x000D,0x000D,0x000C,0x000C,0x000C,
        0x000C,0x000C,0x000C,0x000C,0x000C,0x000C,0x000B,0x000B,
        0x000B,0x000B,0x000B,0x000B,0x000B,0x000B,0x000B,0x000B,
        0x000A,0x000A,0x000A,0x000A,0x000A,0x000A,0x000A,0x000A,
        0x000A,0x000A,0x000A,0x0009,0x0009,0x0009,0x0009,0x0009,
        0x0009,0x0009,0x0009,0x0009,0x0009,0x0009,0x0008,0x0008,
        0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
        0x0008,0x0008,0x0008,0x0007,0x0007,0x0007,0x0007,0x0007,
        0x0007,0x0007,0x0007,0x0007,0x0007,0x0007,0x0007,0x0007,
        0x0007,0x0007,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,
        0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,
        0x0006,0x0006,0x0006,0x0005,0x0005,0x0005,0x0005,0x0005,
        0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,
        0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,0x0005
};
static unsigned short grnsep2[] = {
        0x0000,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
        0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,0x0002,0x0002,
        0x0002,0x0002,0x0002,0x0003,0x0003,0x0003,0x0003,0x0004,
        0x0004,0x0004,0x0005,0x0005,0x0006,0x0006,0x0007,0x0007,
        0x0008,0x0008,0x0009,0x000A,0x000B,0x000C,0x000D,0x000E,
        0x000F,0x0010,0x0011,0x0013,0x0014,0x0016,0x0017,0x0019,
        0x001B,0x001D,0x0020,0x0022,0x0025,0x0027,0x002A,0x002E,
        0x0031,0x0035,0x0038,0x003D,0x0041,0x0046,0x004B,0x0050,
        0x0056,0x005C,0x0063,0x006A,0x0071,0x0079,0x0081,0x008A,
        0x0094,0x009E,0x00A9,0x00B4,0x00C0,0x00CD,0x00DB,0x00E9,
        0x00F8,0x0109,0x011A,0x012C,0x013F,0x0153,0x0169,0x0180,
        0x0197,0x01B1,0x01CC,0x01E8,0x0206,0x0225,0x0246,0x0269,
        0x028E,0x02B4,0x02DD,0x0308,0x0334,0x0364,0x0395,0x03C9,
        0x0400,0x043A,0x0476,0x04B5,0x04F7,0x053C,0x0585,0x05D1,
        0x0620,0x0674,0x06CB,0x0725,0x0784,0x07E7,0x084F,0x08BB,
        0x092B,0x09A1,0x0A1B,0x0A9A,0x0B1F,0x0BA9,0x0C39,0x0CCE,
        0x0D69,0x0E0A,0x0EB2,0x0F60,0x1014,0x10CF,0x1191,0x125A,
        0x132B,0x1402,0x14E2,0x15C9,0x16B7,0x17AE,0x18AD,0x19B5,
        0x1AC5,0x1BDE,0x1CFF,0x1E2A,0x1F5D,0x209A,0x21E0,0x2330,
        0x2489,0x25EC,0x2759,0x28D0,0x2A51,0x2BDC,0x2D71,0x2F11,
        0x30BB,0x326F,0x342E,0x35F7,0x37CB,0x39A9,0x3B92,0x3D86,
        0x3F84,0x418C,0x439F,0x45BC,0x47E3,0x4A15,0x4C50,0x4E96,
        0x50E6,0x533F,0x55A2,0x580E,0x5A83,0x5D02,0x5F89,0x6219,
        0x64B1,0x6751,0x69F9,0x6CA8,0x6F5F,0x721C,0x74E0,0x77AA,
        0x7A79,0x7D4E,0x8028,0x8307,0x85E9,0x88D0,0x8BB9,0x8EA5,
        0x9193,0x9484,0x9775,0x9A67,0x9D59,0xA04B,0xA33C,0xA62B,
        0xA918,0xAC03,0xAEEA,0xB1CE,0xB4AD,0xB787,0xBA5B,0xBD29,
        0xBFF0,0xC2B0,0xC568,0xC817,0xCABC,0xCD58,0xCFE9,0xD26E,
        0xD4E8,0xD756,0xD9B7,0xDC0A,0xDE4E,0xE085,0xE2AC,0xE4C3,
        0xE6CA,0xE8C0,0xEAA4,0xEC77,0xEE37,0xEFE5,0xF17F,0xF306,
        0xF479,0xF5D7,0xF720,0xF854,0xF973,0xFA7C,0xFB6F,0xFC4B,
        0xFD11,0xFDC1,0xFE59,0xFEDA,0xFF44,0xFF96,0xFFD1,0xFFF4,
        0xFFFF,0xFFF4,0xFFD1,0xFF96,0xFF44,0xFEDA,0xFE59,0xFDC1,
        0xFD11,0xFC4B,0xFB6F,0xFA7C,0xF973,0xF854,0xF720,0xF5D7,
        0xF479,0xF306,0xF17F,0xEFE5,0xEE37,0xEC77,0xEAA4,0xE8C0,
        0xE6CA,0xE4C3,0xE2AC,0xE085,0xDE4E,0xDC0A,0xD9B7,0xD756,
        0xD4E8,0xD26E,0xCFE9,0xCD58,0xCABC,0xC817,0xC568,0xC2B0,
        0xBFF0,0xBD29,0xBA5B,0xB787,0xB4AD,0xB1CE,0xAEEA,0xAC03,
        0xA918,0xA62B,0xA33C,0xA04B,0x9D59,0x9A67,0x9775,0x9484,
        0x9193,0x8EA5,0x8BB9,0x88D0,0x85E9,0x8307,0x8028,0x7D4E,
        0x7A79,0x77AA,0x74E0,0x721C,0x6F5F,0x6CA8,0x69F9,0x6751,
        0x64B1,0x6219,0x5F89,0x5D02,0x5A83,0x580E,0x55A2,0x533F,
        0x50E6,0x4E96,0x4C50,0x4A15,0x47E3,0x45BC,0x439F,0x418C,
        0x3F84,0x3D86,0x3B92,0x39A9,0x37CB,0x35F7,0x342E,0x326F,
        0x30BB,0x2F11,0x2D71,0x2BDC,0x2A51,0x28D0,0x2759,0x25EC,
        0x2489,0x2330,0x21E0,0x209A,0x1F5D,0x1E2A,0x1CFF,0x1BDE,
        0x1AC5,0x19B5,0x18AD,0x17AE,0x16B7,0x15C9,0x14E2,0x1402,
        0x132B,0x125A,0x1191,0x10CF,0x1014,0x0F60,0x0EB2,0x0E0A,
        0x0D69,0x0CCE,0x0C39,0x0BA9,0x0B1F,0x0A9A,0x0A1B,0x09A1,
        0x092B,0x08BB,0x084F,0x07E7,0x0784,0x0725,0x06CB,0x0674,
        0x0620,0x05D1,0x0585,0x053C,0x04F7,0x04B5,0x0476,0x043A,
        0x0400,0x03C9,0x0395,0x0364,0x0334,0x0308,0x02DD,0x02B4,
        0x028E,0x0269,0x0246,0x0225,0x0206,0x01E8,0x01CC,0x01B1,
        0x0197,0x0180,0x0169,0x0153,0x013F,0x012C,0x011A,0x0109,
        0x00F8,0x00E9,0x00DB,0x00CD,0x00C0,0x00B4,0x00A9,0x009E,
        0x0094,0x008A,0x0081,0x0079,0x0071,0x006A,0x0063,0x005C,
        0x0056,0x0050,0x004B,0x0046,0x0041,0x003D,0x0038,0x0035,
        0x0031,0x002E,0x002A,0x0027,0x0025,0x0022,0x0020,0x001D,
        0x001B,0x0019,0x0017,0x0016,0x0014,0x0013,0x0011,0x0010,
        0x000F,0x000E,0x000D,0x000C,0x000B,0x000A,0x0009,0x0008,
        0x0008,0x0007,0x0007,0x0006,0x0006,0x0005,0x0005,0x0004,
        0x0004,0x0004,0x0003,0x0003,0x0003,0x0003,0x0002,0x0002,
        0x0002,0x0002,0x0002,0x0002,0x0001,0x0001,0x0001,0x0001,
        0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
};
static short esp_dat_c[] = {
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x004A,0x0050,0x0056,0x005B,0x0061,0x0067,0x006C,
        0x0072,0x0078,0x007D,0x0083,0x0089,0x008F,0x0095,0x009B,
        0x00A0,0x00A6,0x00AC,0x00B2,0x00B8,0x00BE,0x00C4,0x00CA,
        0x00D0,0x00D6,0x00DC,0x00E2,0x00E8,0x00EE,0x00F5,0x00FB,
        0x0101,0x0107,0x010D,0x0113,0x011A,0x0120,0x0126,0x012D,
        0x0133,0x0139,0x013F,0x0146,0x014C,0x0153,0x0159,0x015F,
        0x0166,0x016C,0x0173,0x0179,0x0180,0x0186,0x018D,0x0193,
        0x019A,0x01A1,0x01A7,0x01AE,0x01B5,0x01BB,0x01C2,0x01C9,
        0x01CF,0x01D6,0x01DD,0x01E3,0x01EA,0x01F1,0x01F8,0x01FF,
        0x0205,0x020C,0x0213,0x021A,0x0221,0x0228,0x022F,0x0236,
        0x023D,0x0243,0x024A,0x0251,0x0258,0x025F,0x0266,0x026D,
        0x0274,0x027C,0x0283,0x028A,0x0291,0x0298,0x029F,0x02A6,
        0x02AD,0x02B4,0x02BC,0x02C3,0x02CA,0x02D1,0x02D8,0x02E0,
        0x02E7,0x02EE,0x02F5,0x02FD,0x0304,0x030B,0x0312,0x031A,
        0x0321,0x0328,0x0330,0x0337,0x033E,0x0346,0x034D,0x0355,
        0x035C,0x0363,0x036B,0x0372,0x037A,0x0381,0x0389,0x0390,
        0x0398,0x039F,0x03A7,0x03AE,0x03B6,0x03BD,0x03C5,0x03CC,
        0x03D4,0x03DB,0x03E3,0x03EA,0x03F2,0x03F9,0x0401,0x0409,
        0x0410,0x0418,0x041F,0x0427,0x042F,0x0436,0x043E,0x0445,
        0x044D,0x0455,0x045C,0x0464,0x046C,0x0473,0x047B,0x0483,
        0x048A,0x0492,0x049A,0x04A1,0x04A9,0x04B1,0x04B9,0x04C0,
        0x04C8,0x04D0,0x04D7,0x04DF,0x04E7,0x04EF,0x04F6,0x04FE,
        0x0506,0x050E,0x0515,0x051D,0x0525,0x052D,0x0534,0x053C,
        0x0544,0x054C,0x0553,0x055B,0x0563,0x056B,0x0572,0x057A,
        0x0582,0x058A,0x0592,0x0599,0x05A1,0x05A9,0x05B1,0x05B9,
        0x05C0,0x05C8,0x05D0,0x05D8,0x05DF,0x05E7,0x05EF,0x05F7,
        0x05FF,0x0606,0x060E,0x0616,0x061E,0x0626,0x062D,0x0635,
        0x063D,0x0645,0x064D,0x0654,0x065C,0x0664,0x066C,0x0674,
        0x067B,0x0683,0x068B,0x0693,0x069B,0x06A2,0x06AA,0x06B2,
        0x06BA,0x06C1,0x06C9,0x06D1,0x06D9,0x06E1,0x06E8,0x06F0,
        0x06F8,0x0700,0x0707,0x070F,0x0717,0x071F,0x0727,0x072E,
        0x0736,0x073E,0x0746,0x074D,0x0755,0x075D,0x0765,0x076C,
        0x0774,0x077C,0x0783,0x078B,0x0793,0x079B,0x07A2,0x07AA,
        0x07B2,0x07BA,0x07C1,0x07C9,0x07D1,0x07D8,0x07E0,0x07E8,
        0x07F0,0x07F7,0x07FF,0x0807,0x080E,0x0816,0x081E,0x0825,
        0x082D,0x0835,0x083C,0x0844,0x084C,0x0853,0x085B,0x0863,
        0x086A,0x0872,0x087A,0x0881,0x0889,0x0891,0x0898,0x08A0,
        0x08A7,0x08AF,0x08B7,0x08BE,0x08C6,0x08CE,0x08D5,0x08DD,
        0x08E4,0x08EC,0x08F4,0x08FB,0x0903,0x090A,0x0912,0x091A,
        0x0921,0x0929,0x0930,0x0938,0x093F,0x0947,0x094F,0x0956,
        0x095E,0x0965,0x096D,0x0974,0x097C,0x0983,0x098B,0x0993,
        0x099A,0x09A2,0x09A9,0x09B1,0x09B8,0x09C0,0x09C7,0x09CF,
        0x09D6,0x09DE,0x09E5,0x09ED,0x09F4,0x09FC,0x0A03,0x0A0B,
        0x0A12,0x0A1A,0x0A21,0x0A29,0x0A30,0x0A38,0x0A3F,0x0A47,
        0x0A4E,0x0A56,0x0A5D,0x0A65,0x0A6C,0x0A74,0x0A7B,0x0A83,
        0x0A8A,0x0A92,0x0A99,0x0AA1,0x0AA8,0x0AB0,0x0AB7,0x0ABE,
        0x0AC6,0x0ACD,0x0AD5,0x0ADC,0x0AE4,0x0AEB,0x0AF3,0x0AFA,
        0x0B02,0x0B09,0x0B11,0x0B18,0x0B1F,0x0B27,0x0B2E,0x0B36,
        0x0B3D,0x0B45,0x0B4C,0x0B54,0x0B5B,0x0B63,0x0B6A,0x0B71,
        0x0B79,0x0B80,0x0B88,0x0B8F,0x0B97,0x0B9E,0x0BA6,0x0BAD,
        0x0BB4,0x0BBC,0x0BC3,0x0BCB,0x0BD2,0x0BDA,0x0BE1,0x0BE9,
        0x0BF0,0x0BF8,0x0BFF,0x0C07,0x0C0E,0x0C15,0x0C1D,0x0C24,
        0x0C2C,0x0C33,0x0C3B,0x0C42,0x0C4A,0x0C51,0x0C59,0x0C60,
        0x0C68,0x0C6F,0x0C77,0x0C7E,0x0C86,0x0C8D,0x0C95,0x0C9C,
        0x0CA4,0x0CAB,0x0CB3,0x0CBA,0x0CC2,0x0CC9,0x0CD1,0x0CD8,
        0x0CE0,0x0CE8,0x0CEF,0x0CF7,0x0CFE,0x0D06,0x0D0D,0x0D15,
        0x0D1C,0x0D24,0x0D2C,0x0D33,0x0D3B,0x0D42,0x0D4A,0x0D52,
        0x0D59,0x0D61,0x0D68,0x0D70,0x0D78,0x0D7F,0x0D87,0x0D8E,
        0x0D96,0x0D9E,0x0DA5,0x0DAD,0x0DB5,0x0DBC,0x0DC4,0x0DCC,
        0x0DD3,0x0DDB,0x0DE3,0x0DEB,0x0DF2,0x0DFA,0x0E02,0x0E0A,
        0x0E11,0x0E19,0x0E21,0x0E29,0x0E30,0x0E38,0x0E40,0x0E48,
        0x0E4F,0x0E57,0x0E5F,0x0E67,0x0E6F,0x0E77,0x0E7E,0x0E86,
        0x0E8E,0x0E96,0x0E9E,0x0EA6,0x0EAE,0x0EB6,0x0EBE,0x0EC6,
        0x0ECD,0x0ED5,0x0EDD,0x0EE5,0x0EED,0x0EF5,0x0EFD,0x0F05,
        0x0F0D,0x0F15,0x0F1D,0x0F25,0x0F2E,0x0F36,0x0F3E,0x0F46,
        0x0F4E,0x0F56,0x0F5E,0x0F66,0x0F6E,0x0F77,0x0F7F,0x0F87,
        0x0F8F,0x0F97,0x0FA0,0x0FA8,0x0FB0,0x0FB8,0x0FC1,0x0FC9,
        0x0FD1,0x0FD9,0x0FE2,0x0FEA,0x0FF2,0x0FFB,0x1003,0x100C,
        0x1014,0x101C,0x1025,0x102D,0x1036,0x103E,0x1047,0x104F,
        0x1058,0x1060,0x1069,0x1071,0x107A,0x1083,0x108B,0x1094,
        0x109C,0x10A5,0x10AE,0x10B6,0x10BF,0x10C8,0x10D1,0x10D9,
        0x10E2,0x10EB,0x10F4,0x10FD,0x1105,0x110E,0x1117,0x1120,
        0x1129,0x1132,0x113B,0x1144,0x114D,0x1156,0x115F,0x1168,
        0x1171,0x117A,0x1183,0x118C,0x1195,0x119F,0x11A8,0x11B1,
        0x11BA,0x11C3,0x11CD,0x11D6,0x11DF,0x11E9,0x11F2,0x11FB,
        0x1205,0x120E,0x1218,0x1221,0x122B,0x1234,0x123E,0x1247,
        0x1251,0x125A,0x1264,0x126E,0x1277,0x1281,0x128B,0x1294,
        0x129E,0x12A8,0x12B2,0x12BC,0x12C5,0x12CF,0x12D9,0x12E3,
        0x12ED,0x12F7,0x1301,0x130B,0x1315,0x131F,0x132A,0x1334,
        0x133E,0x1348,0x1352,0x135D,0x1367,0x1371,0x137C,0x1386,
        0x1390,0x139B,0x13A5,0x13B0,0x13BA,0x13C5,0x13D0,0x13DA,
        0x13E5,0x13F0,0x13FA,0x1405,0x1410,0x141B,0x1426,0x1430,
        0x143B,0x1446,0x1451,0x145C,0x1467,0x1472,0x147E,0x1489,
        0x1494,0x149F,0x14AA,0x14B6,0x14C1,0x14CC,0x14D8,0x14E3,
        0x14EF,0x14FA,0x1506,0x1511,0x151D,0x1529,0x1534,0x1540,
        0x154C,0x1558,0x1564,0x1570,0x157C,0x1588,0x1594,0x15A0,
        0x15AC,0x15B8,0x15C4,0x15D0,0x15DD,0x15E9,0x15F5,0x1602,
        0x160E,0x161B,0x1627,0x1634,0x1641,0x164D,0x165A,0x1667,
        0x1674,0x1681,0x168D,0x169A,0x16A7,0x16B5,0x16C2,0x16CF,
        0x16DC,0x16E9,0x16F7,0x1704,0x1711,0x171F,0x172C,0x173A,
        0x1748,0x1755,0x1763,0x1771,0x177F,0x178D,0x179B,0x17A9,
        0x17B7,0x17C5,0x17D3,0x17E1,0x17F0,0x17FE,0x180C,0x181B,
        0x1829,0x1838,0x1847,0x1855,0x1864,0x1873,0x1882,0x1891,
        0x18A0,0x18AF,0x18BE,0x18CD,0x18DD,0x18EC,0x18FC,0x190B,
        0x191B,0x192A,0x193A,0x194A,0x195A,0x196A,0x197A,0x198A,
        0x199A,0x19AA,0x19BA,0x19CB,0x19DB,0x19EC,0x19FC,0x1A0D,
        0x1A1E,0x1A2F,0x1A40,0x1A51,0x1A62,0x1A73,0x1A84,0x1A95,
        0x1AA7,0x1AB8,0x1ACA,0x1ADB,0x1AED,0x1AFF,0x1B11,0x1B23,
        0x1B35,0x1B47,0x1B5A,0x1B6C,0x1B7E,0x1B91,0x1BA4,0x1BB6,
        0x1BC9,0x1BDC,0x1BEF,0x1C02,0x1C16,0x1C29,0x1C3C,0x1C50,
        0x1C64,0x1C77,0x1C8B,0x1C9F,0x1CB3,0x1CC7,0x1CDC,0x1CF0,
        0x1D05,0x1D19,0x1D2E,0x1D43,0x1D58,0x1D6D,0x1D82,0x1D97,
        0x1DAD,0x1DC2,0x1DD8,0x1DEE,0x1E04,0x1E1A,0x1E30,0x1E46,
        0x1E5D,0x1E73,0x1E8A,0x1EA1,0x1EB8,0x1ECF,0x1EE6,0x1EFE,
        0x1F15,0x1F2D,0x1F45,0x1F5D,0x1F75,0x1F8D,0x1FA5,0x1FBE,
        0x1FD7,0x1FF0,0x2009,0x2022,0x203B,0x2055,0x206E,0x2088,
        0x20A2,0x20BC,0x20D7,0x20F1,0x210C,0x2127,0x2142,0x215D,
        0x2178,0x2194,0x21AF,0x21CB,0x21E7,0x2204,0x2220,0x223D,
        0x225A,0x2277,0x2294,0x22B2,0x22CF,0x22ED,0x230B,0x232A,
        0x2348,0x2367,0x2386,0x23A5,0x23C5,0x23E4,0x2404,0x2424,
        0x2445,0x2465,0x2486,0x24A7,0x24C9,0x24EA,0x250C,0x252E,
        0x2550,0x2573,0x2596,0x25B9,0x25DD,0x2600,0x2624,0x2648,
        0x266D,0x2692,0x26B7,0x26DC,0x2702,0x2728,0x274F,0x2775,
        0x279C,0x27C4,0x27EB,0x2813,0x283C,0x2864,0x288D,0x28B7,
        0x28E0,0x290A,0x2935,0x2960,0x298B,0x29B6,0x29E2,0x2A0F,
        0x2A3B,0x2A69,0x2A96,0x2AC4,0x2AF2,0x2B21,0x2B50,0x2B80,
        0x2BB0,0x2BE1,0x2C12,0x2C43,0x2C75,0x2CA8,0x2CDB,0x2D0E,
        0x2D42,0x2D76,0x2DAB,0x2DE1,0x2E17,0x2E4D,0x2E85,0x2EBC,
        0x2EF4,0x2F2D,0x2F67,0x2FA1,0x2FDB,0x3016,0x3052,0x308F,
        0x30CC,0x310A,0x3148,0x3187,0x31C7,0x3208,0x3249,0x328B,
        0x32CE,0x3311,0x3355,0x339A,0x33E0,0x3427,0x346E,0x34B6,
        0x3500,0x354A,0x3595,0x35E0,0x362D,0x367B,0x36CA,0x3719,
        0x376A,0x37BB,0x380E,0x3862,0x38B7,0x390D,0x3964,0x39BC,
        0x3A15,0x3A70,0x3ACB,0x3B28,0x3B87,0x3BE6,0x3C47,0x3CA9,
        0x3D0D,0x3D72,0x3DD8,0x3E40,0x3EAA,0x3F15,0x3F81,0x3FF0
};
static short esp_dat_m[] = {
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x004A,0x004E,0x0052,0x0057,0x005B,0x005F,0x0064,
        0x0068,0x006C,0x0071,0x0075,0x007A,0x007E,0x0083,0x0087,
        0x008C,0x0090,0x0095,0x0099,0x009E,0x00A2,0x00A7,0x00AB,
        0x00B0,0x00B5,0x00B9,0x00BE,0x00C2,0x00C7,0x00CC,0x00D1,
        0x00D5,0x00DA,0x00DF,0x00E3,0x00E8,0x00ED,0x00F2,0x00F6,
        0x00FB,0x0100,0x0105,0x010A,0x010F,0x0114,0x0118,0x011D,
        0x0122,0x0127,0x012C,0x0131,0x0136,0x013B,0x0140,0x0145,
        0x014A,0x014F,0x0154,0x0159,0x015E,0x0163,0x0168,0x016E,
        0x0173,0x0178,0x017D,0x0182,0x0187,0x018C,0x0192,0x0197,
        0x019C,0x01A1,0x01A6,0x01AC,0x01B1,0x01B6,0x01BC,0x01C1,
        0x01C6,0x01CB,0x01D1,0x01D6,0x01DC,0x01E1,0x01E6,0x01EC,
        0x01F1,0x01F6,0x01FC,0x0201,0x0207,0x020C,0x0212,0x0217,
        0x021D,0x0222,0x0228,0x022D,0x0233,0x0238,0x023E,0x0243,
        0x0249,0x024F,0x0254,0x025A,0x025F,0x0265,0x026B,0x0270,
        0x0276,0x027C,0x0281,0x0287,0x028D,0x0292,0x0298,0x029E,
        0x02A4,0x02A9,0x02AF,0x02B5,0x02BB,0x02C0,0x02C6,0x02CC,
        0x02D2,0x02D8,0x02DE,0x02E3,0x02E9,0x02EF,0x02F5,0x02FB,
        0x0301,0x0307,0x030D,0x0312,0x0318,0x031E,0x0324,0x032A,
        0x0330,0x0336,0x033C,0x0342,0x0348,0x034E,0x0354,0x035A,
        0x0360,0x0366,0x036C,0x0372,0x0378,0x037E,0x0384,0x038A,
        0x0391,0x0397,0x039D,0x03A3,0x03A9,0x03AF,0x03B5,0x03BB,
        0x03C1,0x03C8,0x03CE,0x03D4,0x03DA,0x03E0,0x03E6,0x03ED,
        0x03F3,0x03F9,0x03FF,0x0405,0x040C,0x0412,0x0418,0x041E,
        0x0425,0x042B,0x0431,0x0437,0x043E,0x0444,0x044A,0x0450,
        0x0457,0x045D,0x0463,0x046A,0x0470,0x0476,0x047D,0x0483,
        0x0489,0x0490,0x0496,0x049C,0x04A3,0x04A9,0x04AF,0x04B6,
        0x04BC,0x04C2,0x04C9,0x04CF,0x04D6,0x04DC,0x04E2,0x04E9,
        0x04EF,0x04F6,0x04FC,0x0502,0x0509,0x050F,0x0516,0x051C,
        0x0523,0x0529,0x052F,0x0536,0x053C,0x0543,0x0549,0x0550,
        0x0556,0x055D,0x0563,0x056A,0x0570,0x0577,0x057D,0x0584,
        0x058A,0x0591,0x0597,0x059E,0x05A4,0x05AB,0x05B1,0x05B8,
        0x05BE,0x05C5,0x05CB,0x05D2,0x05D8,0x05DF,0x05E6,0x05EC,
        0x05F3,0x05F9,0x0600,0x0606,0x060D,0x0613,0x061A,0x0621,
        0x0627,0x062E,0x0634,0x063B,0x0641,0x0648,0x064F,0x0655,
        0x065C,0x0662,0x0669,0x0670,0x0676,0x067D,0x0683,0x068A,
        0x0691,0x0697,0x069E,0x06A4,0x06AB,0x06B2,0x06B8,0x06BF,
        0x06C6,0x06CC,0x06D3,0x06DA,0x06E0,0x06E7,0x06ED,0x06F4,
        0x06FB,0x0701,0x0708,0x070F,0x0715,0x071C,0x0723,0x0729,
        0x0730,0x0737,0x073D,0x0744,0x074B,0x0751,0x0758,0x075F,
        0x0765,0x076C,0x0773,0x0779,0x0780,0x0787,0x078D,0x0794,
        0x079B,0x07A2,0x07A8,0x07AF,0x07B6,0x07BC,0x07C3,0x07CA,
        0x07D0,0x07D7,0x07DE,0x07E5,0x07EB,0x07F2,0x07F9,0x07FF,
        0x0806,0x080D,0x0814,0x081A,0x0821,0x0828,0x082F,0x0835,
        0x083C,0x0843,0x0849,0x0850,0x0857,0x085E,0x0864,0x086B,
        0x0872,0x0879,0x0880,0x0886,0x088D,0x0894,0x089B,0x08A1,
        0x08A8,0x08AF,0x08B6,0x08BC,0x08C3,0x08CA,0x08D1,0x08D8,
        0x08DE,0x08E5,0x08EC,0x08F3,0x08FA,0x0900,0x0907,0x090E,
        0x0915,0x091C,0x0922,0x0929,0x0930,0x0937,0x093E,0x0945,
        0x094B,0x0952,0x0959,0x0960,0x0967,0x096E,0x0975,0x097B,
        0x0982,0x0989,0x0990,0x0997,0x099E,0x09A5,0x09AB,0x09B2,
        0x09B9,0x09C0,0x09C7,0x09CE,0x09D5,0x09DC,0x09E3,0x09EA,
        0x09F0,0x09F7,0x09FE,0x0A05,0x0A0C,0x0A13,0x0A1A,0x0A21,
        0x0A28,0x0A2F,0x0A36,0x0A3D,0x0A44,0x0A4B,0x0A52,0x0A59,
        0x0A60,0x0A67,0x0A6E,0x0A75,0x0A7C,0x0A83,0x0A8A,0x0A91,
        0x0A98,0x0A9F,0x0AA6,0x0AAD,0x0AB4,0x0ABB,0x0AC2,0x0AC9,
        0x0AD0,0x0AD7,0x0ADE,0x0AE5,0x0AEC,0x0AF4,0x0AFB,0x0B02,
        0x0B09,0x0B10,0x0B17,0x0B1E,0x0B25,0x0B2D,0x0B34,0x0B3B,
        0x0B42,0x0B49,0x0B50,0x0B58,0x0B5F,0x0B66,0x0B6D,0x0B74,
        0x0B7C,0x0B83,0x0B8A,0x0B91,0x0B98,0x0BA0,0x0BA7,0x0BAE,
        0x0BB6,0x0BBD,0x0BC4,0x0BCB,0x0BD3,0x0BDA,0x0BE1,0x0BE9,
        0x0BF0,0x0BF7,0x0BFF,0x0C06,0x0C0D,0x0C15,0x0C1C,0x0C24,
        0x0C2B,0x0C32,0x0C3A,0x0C41,0x0C49,0x0C50,0x0C58,0x0C5F,
        0x0C67,0x0C6E,0x0C76,0x0C7D,0x0C85,0x0C8C,0x0C94,0x0C9B,
        0x0CA3,0x0CAA,0x0CB2,0x0CBA,0x0CC1,0x0CC9,0x0CD0,0x0CD8,
        0x0CE0,0x0CE7,0x0CEF,0x0CF7,0x0CFE,0x0D06,0x0D0E,0x0D16,
        0x0D1D,0x0D25,0x0D2D,0x0D35,0x0D3C,0x0D44,0x0D4C,0x0D54,
        0x0D5C,0x0D63,0x0D6B,0x0D73,0x0D7B,0x0D83,0x0D8B,0x0D93,
        0x0D9B,0x0DA3,0x0DAB,0x0DB3,0x0DBB,0x0DC3,0x0DCB,0x0DD3,
        0x0DDB,0x0DE3,0x0DEB,0x0DF3,0x0DFB,0x0E03,0x0E0B,0x0E14,
        0x0E1C,0x0E24,0x0E2C,0x0E34,0x0E3D,0x0E45,0x0E4D,0x0E55,
        0x0E5E,0x0E66,0x0E6E,0x0E77,0x0E7F,0x0E87,0x0E90,0x0E98,
        0x0EA1,0x0EA9,0x0EB2,0x0EBA,0x0EC2,0x0ECB,0x0ED4,0x0EDC,
        0x0EE5,0x0EED,0x0EF6,0x0EFF,0x0F07,0x0F10,0x0F19,0x0F21,
        0x0F2A,0x0F33,0x0F3B,0x0F44,0x0F4D,0x0F56,0x0F5F,0x0F68,
        0x0F71,0x0F79,0x0F82,0x0F8B,0x0F94,0x0F9D,0x0FA6,0x0FAF,
        0x0FB8,0x0FC2,0x0FCB,0x0FD4,0x0FDD,0x0FE6,0x0FEF,0x0FF9,
        0x1002,0x100B,0x1014,0x101E,0x1027,0x1030,0x103A,0x1043,
        0x104D,0x1056,0x1060,0x1069,0x1073,0x107C,0x1086,0x108F,
        0x1099,0x10A3,0x10AC,0x10B6,0x10C0,0x10CA,0x10D3,0x10DD,
        0x10E7,0x10F1,0x10FB,0x1105,0x110F,0x1119,0x1123,0x112D,
        0x1137,0x1141,0x114B,0x1156,0x1160,0x116A,0x1174,0x117F,
        0x1189,0x1193,0x119E,0x11A8,0x11B3,0x11BD,0x11C8,0x11D2,
        0x11DD,0x11E8,0x11F2,0x11FD,0x1208,0x1213,0x121D,0x1228,
        0x1233,0x123E,0x1249,0x1254,0x125F,0x126A,0x1275,0x1280,
        0x128B,0x1297,0x12A2,0x12AD,0x12B9,0x12C4,0x12CF,0x12DB,
        0x12E6,0x12F2,0x12FD,0x1309,0x1315,0x1320,0x132C,0x1338,
        0x1344,0x1350,0x135B,0x1367,0x1373,0x137F,0x138C,0x1398,
        0x13A4,0x13B0,0x13BC,0x13C9,0x13D5,0x13E1,0x13EE,0x13FA,
        0x1407,0x1414,0x1420,0x142D,0x143A,0x1446,0x1453,0x1460,
        0x146D,0x147A,0x1487,0x1494,0x14A2,0x14AF,0x14BC,0x14C9,
        0x14D7,0x14E4,0x14F2,0x14FF,0x150D,0x151A,0x1528,0x1536,
        0x1544,0x1552,0x1560,0x156E,0x157C,0x158A,0x1598,0x15A6,
        0x15B5,0x15C3,0x15D1,0x15E0,0x15EF,0x15FD,0x160C,0x161B,
        0x1629,0x1638,0x1647,0x1656,0x1665,0x1675,0x1684,0x1693,
        0x16A3,0x16B2,0x16C2,0x16D1,0x16E1,0x16F1,0x1700,0x1710,
        0x1720,0x1730,0x1741,0x1751,0x1761,0x1771,0x1782,0x1792,
        0x17A3,0x17B4,0x17C5,0x17D5,0x17E6,0x17F7,0x1808,0x181A,
        0x182B,0x183C,0x184E,0x185F,0x1871,0x1883,0x1895,0x18A7,
        0x18B9,0x18CB,0x18DD,0x18EF,0x1902,0x1914,0x1927,0x1939,
        0x194C,0x195F,0x1972,0x1985,0x1998,0x19AC,0x19BF,0x19D3,
        0x19E6,0x19FA,0x1A0E,0x1A22,0x1A36,0x1A4A,0x1A5F,0x1A73,
        0x1A88,0x1A9C,0x1AB1,0x1AC6,0x1ADB,0x1AF0,0x1B06,0x1B1B,
        0x1B31,0x1B46,0x1B5C,0x1B72,0x1B88,0x1B9E,0x1BB5,0x1BCB,
        0x1BE2,0x1BF8,0x1C0F,0x1C26,0x1C3E,0x1C55,0x1C6C,0x1C84,
        0x1C9C,0x1CB4,0x1CCC,0x1CE4,0x1CFC,0x1D15,0x1D2E,0x1D47,
        0x1D60,0x1D79,0x1D92,0x1DAC,0x1DC5,0x1DDF,0x1DF9,0x1E14,
        0x1E2E,0x1E49,0x1E63,0x1E7E,0x1E99,0x1EB5,0x1ED0,0x1EEC,
        0x1F08,0x1F24,0x1F40,0x1F5D,0x1F79,0x1F96,0x1FB4,0x1FD1,
        0x1FEE,0x200C,0x202A,0x2048,0x2067,0x2085,0x20A4,0x20C3,
        0x20E3,0x2102,0x2122,0x2142,0x2163,0x2183,0x21A4,0x21C5,
        0x21E6,0x2208,0x222A,0x224C,0x226E,0x2291,0x22B4,0x22D7,
        0x22FB,0x231F,0x2343,0x2367,0x238C,0x23B1,0x23D6,0x23FC,
        0x2422,0x2448,0x246F,0x2496,0x24BD,0x24E5,0x250D,0x2535,
        0x255E,0x2587,0x25B0,0x25DA,0x2604,0x262F,0x265A,0x2685,
        0x26B1,0x26DD,0x2709,0x2736,0x2764,0x2791,0x27C0,0x27EE,
        0x281E,0x284D,0x287D,0x28AE,0x28DF,0x2910,0x2942,0x2974,
        0x29A7,0x29DB,0x2A0F,0x2A43,0x2A79,0x2AAE,0x2AE4,0x2B1B,
        0x2B52,0x2B8A,0x2BC3,0x2BFC,0x2C36,0x2C70,0x2CAB,0x2CE7,
        0x2D23,0x2D60,0x2D9D,0x2DDC,0x2E1B,0x2E5A,0x2E9B,0x2EDC,
        0x2F1E,0x2F61,0x2FA4,0x2FE9,0x302E,0x3074,0x30BB,0x3102,
        0x314B,0x3194,0x31DF,0x322A,0x3276,0x32C3,0x3311,0x3361,
        0x33B1,0x3402,0x3454,0x34A8,0x34FC,0x3552,0x35A9,0x3601,
        0x365A,0x36B4,0x3710,0x376D,0x37CB,0x382B,0x388C,0x38EE,
        0x3952,0x39B7,0x3A1E,0x3A86,0x3AF0,0x3B5B,0x3BC9,0x3C37,
        0x3CA8,0x3D1A,0x3D8E,0x3E04,0x3E7C,0x3EF6,0x3F72,0x3FF0
};
static short esp_dat_y[] = {
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
        0x0000,0x004B,0x004F,0x0054,0x0058,0x005D,0x0061,0x0066,
        0x006A,0x006F,0x0073,0x0078,0x007D,0x0081,0x0086,0x008B,
        0x008F,0x0094,0x0099,0x009D,0x00A2,0x00A7,0x00AC,0x00B1,
        0x00B5,0x00BA,0x00BF,0x00C4,0x00C9,0x00CE,0x00D3,0x00D8,
        0x00DD,0x00E2,0x00E7,0x00EC,0x00F1,0x00F6,0x00FB,0x0100,
        0x0105,0x010A,0x010F,0x0115,0x011A,0x011F,0x0124,0x012A,
        0x012F,0x0134,0x0139,0x013F,0x0144,0x0149,0x014F,0x0154,
        0x015A,0x015F,0x0164,0x016A,0x016F,0x0175,0x017A,0x0180,
        0x0185,0x018B,0x0191,0x0196,0x019C,0x01A1,0x01A7,0x01AD,
        0x01B3,0x01B8,0x01BE,0x01C4,0x01C9,0x01CF,0x01D5,0x01DB,
        0x01E1,0x01E7,0x01EC,0x01F2,0x01F8,0x01FE,0x0204,0x020A,
        0x0210,0x0216,0x021C,0x0222,0x0228,0x022E,0x0234,0x023A,
        0x0240,0x0246,0x024C,0x0253,0x0259,0x025F,0x0265,0x026B,
        0x0272,0x0278,0x027E,0x0284,0x028B,0x0291,0x0297,0x029E,
        0x02A4,0x02AA,0x02B1,0x02B7,0x02BE,0x02C4,0x02CB,0x02D1,
        0x02D8,0x02DE,0x02E5,0x02EB,0x02F2,0x02F8,0x02FF,0x0305,
        0x030C,0x0313,0x0319,0x0320,0x0327,0x032D,0x0334,0x033B,
        0x0341,0x0348,0x034F,0x0356,0x035D,0x0363,0x036A,0x0371,
        0x0378,0x037F,0x0386,0x038C,0x0393,0x039A,0x03A1,0x03A8,
        0x03AF,0x03B6,0x03BD,0x03C4,0x03CB,0x03D2,0x03D9,0x03E0,
        0x03E7,0x03EE,0x03F5,0x03FD,0x0404,0x040B,0x0412,0x0419,
        0x0420,0x0427,0x042F,0x0436,0x043D,0x0444,0x044C,0x0453,
        0x045A,0x0461,0x0469,0x0470,0x0477,0x047F,0x0486,0x048D,
        0x0495,0x049C,0x04A3,0x04AB,0x04B2,0x04BA,0x04C1,0x04C9,
        0x04D0,0x04D7,0x04DF,0x04E6,0x04EE,0x04F5,0x04FD,0x0504,
        0x050C,0x0514,0x051B,0x0523,0x052A,0x0532,0x0539,0x0541,
        0x0549,0x0550,0x0558,0x0560,0x0567,0x056F,0x0577,0x057E,
        0x0586,0x058E,0x0595,0x059D,0x05A5,0x05AD,0x05B4,0x05BC,
        0x05C4,0x05CC,0x05D3,0x05DB,0x05E3,0x05EB,0x05F3,0x05FB,
        0x0602,0x060A,0x0612,0x061A,0x0622,0x062A,0x0632,0x0639,
        0x0641,0x0649,0x0651,0x0659,0x0661,0x0669,0x0671,0x0679,
        0x0681,0x0689,0x0691,0x0699,0x06A1,0x06A9,0x06B1,0x06B9,
        0x06C1,0x06C9,0x06D1,0x06D9,0x06E1,0x06E9,0x06F1,0x06F9,
        0x0701,0x0709,0x0711,0x0719,0x0722,0x072A,0x0732,0x073A,
        0x0742,0x074A,0x0752,0x075A,0x0762,0x076B,0x0773,0x077B,
        0x0783,0x078B,0x0793,0x079C,0x07A4,0x07AC,0x07B4,0x07BC,
        0x07C5,0x07CD,0x07D5,0x07DD,0x07E5,0x07EE,0x07F6,0x07FE,
        0x0806,0x080F,0x0817,0x081F,0x0827,0x0830,0x0838,0x0840,
        0x0848,0x0851,0x0859,0x0861,0x086A,0x0872,0x087A,0x0883,
        0x088B,0x0893,0x089B,0x08A4,0x08AC,0x08B4,0x08BD,0x08C5,
        0x08CD,0x08D6,0x08DE,0x08E6,0x08EF,0x08F7,0x0900,0x0908,
        0x0910,0x0919,0x0921,0x0929,0x0932,0x093A,0x0943,0x094B,
        0x0953,0x095C,0x0964,0x096D,0x0975,0x097D,0x0986,0x098E,
        0x0997,0x099F,0x09A8,0x09B0,0x09B8,0x09C1,0x09C9,0x09D2,
        0x09DA,0x09E3,0x09EB,0x09F4,0x09FC,0x0A04,0x0A0D,0x0A15,
        0x0A1E,0x0A26,0x0A2F,0x0A37,0x0A40,0x0A48,0x0A51,0x0A59,
        0x0A62,0x0A6A,0x0A73,0x0A7B,0x0A84,0x0A8C,0x0A95,0x0A9D,
        0x0AA6,0x0AAE,0x0AB7,0x0ABF,0x0AC8,0x0AD0,0x0AD9,0x0AE2,
        0x0AEA,0x0AF3,0x0AFB,0x0B04,0x0B0C,0x0B15,0x0B1D,0x0B26,
        0x0B2F,0x0B37,0x0B40,0x0B48,0x0B51,0x0B5A,0x0B62,0x0B6B,
        0x0B73,0x0B7C,0x0B84,0x0B8D,0x0B96,0x0B9E,0x0BA7,0x0BB0,
        0x0BB8,0x0BC1,0x0BC9,0x0BD2,0x0BDB,0x0BE3,0x0BEC,0x0BF5,
        0x0BFD,0x0C06,0x0C0F,0x0C17,0x0C20,0x0C29,0x0C31,0x0C3A,
        0x0C43,0x0C4B,0x0C54,0x0C5D,0x0C65,0x0C6E,0x0C77,0x0C80,
        0x0C88,0x0C91,0x0C9A,0x0CA2,0x0CAB,0x0CB4,0x0CBD,0x0CC5,
        0x0CCE,0x0CD7,0x0CE0,0x0CE9,0x0CF1,0x0CFA,0x0D03,0x0D0C,
        0x0D14,0x0D1D,0x0D26,0x0D2F,0x0D38,0x0D40,0x0D49,0x0D52,
        0x0D5B,0x0D64,0x0D6D,0x0D75,0x0D7E,0x0D87,0x0D90,0x0D99,
        0x0DA2,0x0DAB,0x0DB4,0x0DBC,0x0DC5,0x0DCE,0x0DD7,0x0DE0,
        0x0DE9,0x0DF2,0x0DFB,0x0E04,0x0E0D,0x0E16,0x0E1F,0x0E28,
        0x0E31,0x0E3A,0x0E43,0x0E4C,0x0E55,0x0E5E,0x0E67,0x0E70,
        0x0E79,0x0E82,0x0E8B,0x0E94,0x0E9D,0x0EA6,0x0EAF,0x0EB8,
        0x0EC1,0x0ECA,0x0ED4,0x0EDD,0x0EE6,0x0EEF,0x0EF8,0x0F01,
        0x0F0A,0x0F14,0x0F1D,0x0F26,0x0F2F,0x0F38,0x0F42,0x0F4B,
        0x0F54,0x0F5D,0x0F67,0x0F70,0x0F79,0x0F82,0x0F8C,0x0F95,
        0x0F9E,0x0FA8,0x0FB1,0x0FBA,0x0FC4,0x0FCD,0x0FD6,0x0FE0,
        0x0FE9,0x0FF3,0x0FFC,0x1006,0x100F,0x1018,0x1022,0x102B,
        0x1035,0x103E,0x1048,0x1051,0x105B,0x1065,0x106E,0x1078,
        0x1081,0x108B,0x1094,0x109E,0x10A8,0x10B1,0x10BB,0x10C5,
        0x10CE,0x10D8,0x10E2,0x10EC,0x10F5,0x10FF,0x1109,0x1113,
        0x111C,0x1126,0x1130,0x113A,0x1144,0x114E,0x1158,0x1161,
        0x116B,0x1175,0x117F,0x1189,0x1193,0x119D,0x11A7,0x11B1,
        0x11BB,0x11C5,0x11CF,0x11DA,0x11E4,0x11EE,0x11F8,0x1202,
        0x120C,0x1217,0x1221,0x122B,0x1235,0x1240,0x124A,0x1254,
        0x125E,0x1269,0x1273,0x127E,0x1288,0x1292,0x129D,0x12A7,
        0x12B2,0x12BC,0x12C7,0x12D1,0x12DC,0x12E7,0x12F1,0x12FC,
        0x1306,0x1311,0x131C,0x1327,0x1331,0x133C,0x1347,0x1352,
        0x135C,0x1367,0x1372,0x137D,0x1388,0x1393,0x139E,0x13A9,
        0x13B4,0x13BF,0x13CA,0x13D5,0x13E0,0x13EB,0x13F6,0x1402,
        0x140D,0x1418,0x1423,0x142F,0x143A,0x1445,0x1451,0x145C,
        0x1468,0x1473,0x147E,0x148A,0x1496,0x14A1,0x14AD,0x14B8,
        0x14C4,0x14D0,0x14DB,0x14E7,0x14F3,0x14FF,0x150A,0x1516,
        0x1522,0x152E,0x153A,0x1546,0x1552,0x155E,0x156A,0x1576,
        0x1582,0x158F,0x159B,0x15A7,0x15B3,0x15C0,0x15CC,0x15D8,
        0x15E5,0x15F1,0x15FE,0x160A,0x1617,0x1623,0x1630,0x163D,
        0x1649,0x1656,0x1663,0x1670,0x167D,0x168A,0x1696,0x16A3,
        0x16B0,0x16BE,0x16CB,0x16D8,0x16E5,0x16F2,0x16FF,0x170D,
        0x171A,0x1727,0x1735,0x1742,0x1750,0x175D,0x176B,0x1779,
        0x1786,0x1794,0x17A2,0x17B0,0x17BD,0x17CB,0x17D9,0x17E7,
        0x17F5,0x1803,0x1812,0x1820,0x182E,0x183C,0x184B,0x1859,
        0x1867,0x1876,0x1884,0x1893,0x18A2,0x18B0,0x18BF,0x18CE,
        0x18DD,0x18EC,0x18FB,0x190A,0x1919,0x1928,0x1937,0x1946,
        0x1956,0x1965,0x1974,0x1984,0x1993,0x19A3,0x19B3,0x19C2,
        0x19D2,0x19E2,0x19F2,0x1A02,0x1A12,0x1A22,0x1A32,0x1A42,
        0x1A53,0x1A63,0x1A73,0x1A84,0x1A94,0x1AA5,0x1AB6,0x1AC6,
        0x1AD7,0x1AE8,0x1AF9,0x1B0A,0x1B1B,0x1B2C,0x1B3E,0x1B4F,
        0x1B60,0x1B72,0x1B83,0x1B95,0x1BA7,0x1BB8,0x1BCA,0x1BDC,
        0x1BEE,0x1C00,0x1C13,0x1C25,0x1C37,0x1C4A,0x1C5C,0x1C6F,
        0x1C81,0x1C94,0x1CA7,0x1CBA,0x1CCD,0x1CE0,0x1CF3,0x1D06,
        0x1D1A,0x1D2D,0x1D41,0x1D55,0x1D68,0x1D7C,0x1D90,0x1DA4,
        0x1DB8,0x1DCD,0x1DE1,0x1DF5,0x1E0A,0x1E1E,0x1E33,0x1E48,
        0x1E5D,0x1E72,0x1E87,0x1E9D,0x1EB2,0x1EC7,0x1EDD,0x1EF3,
        0x1F09,0x1F1F,0x1F35,0x1F4B,0x1F61,0x1F78,0x1F8E,0x1FA5,
        0x1FBC,0x1FD2,0x1FE9,0x2001,0x2018,0x202F,0x2047,0x205F,
        0x2076,0x208E,0x20A6,0x20BF,0x20D7,0x20EF,0x2108,0x2121,
        0x213A,0x2153,0x216C,0x2185,0x219F,0x21B9,0x21D2,0x21EC,
        0x2206,0x2221,0x223B,0x2256,0x2271,0x228B,0x22A7,0x22C2,
        0x22DD,0x22F9,0x2315,0x2330,0x234D,0x2369,0x2385,0x23A2,
        0x23BF,0x23DC,0x23F9,0x2416,0x2434,0x2452,0x2470,0x248E,
        0x24AC,0x24CB,0x24EA,0x2509,0x2528,0x2547,0x2567,0x2587,
        0x25A7,0x25C7,0x25E8,0x2609,0x262A,0x264B,0x266C,0x268E,
        0x26B0,0x26D2,0x26F4,0x2717,0x273A,0x275D,0x2781,0x27A4,
        0x27C8,0x27ED,0x2811,0x2836,0x285B,0x2880,0x28A6,0x28CC,
        0x28F2,0x2919,0x2940,0x2967,0x298E,0x29B6,0x29DE,0x2A06,
        0x2A2F,0x2A58,0x2A81,0x2AAB,0x2AD5,0x2B00,0x2B2A,0x2B55,
        0x2B81,0x2BAD,0x2BD9,0x2C06,0x2C33,0x2C60,0x2C8E,0x2CBC,
        0x2CEA,0x2D19,0x2D49,0x2D78,0x2DA9,0x2DD9,0x2E0A,0x2E3C,
        0x2E6E,0x2EA0,0x2ED3,0x2F07,0x2F3B,0x2F6F,0x2FA4,0x2FD9,
        0x300F,0x3046,0x307C,0x30B4,0x30EC,0x3124,0x315E,0x3197,
        0x31D1,0x320C,0x3248,0x3284,0x32C0,0x32FE,0x333C,0x337A,
        0x33B9,0x33F9,0x343A,0x347B,0x34BD,0x3500,0x3543,0x3587,
        0x35CC,0x3612,0x3658,0x369F,0x36E7,0x3730,0x377A,0x37C4,
        0x3810,0x385C,0x38A9,0x38F7,0x3946,0x3996,0x39E7,0x3A39,
        0x3A8C,0x3AE0,0x3B35,0x3B8B,0x3BE2,0x3C3B,0x3C94,0x3CEF,
        0x3D4A,0x3DA7,0x3E05,0x3E65,0x3EC6,0x3F28,0x3F8B,0x3FF0
};

static signed short barrier_dat[] = {



        0x3FF0,0x3FF0,0x3000,0x1555,0x0C00,0x07AE,0x0555,0x03EB,
        0x0300,0x025E,0x01EB,0x0196,0x3FF0,0x3FF0,0x2666,0x1333,
        0x0B4B,0x0762,0x0530,0x03D7,0x02F4,0x0257,0x01E6,0x0192,
        0x3000,0x2666,0x1800,0x0EC4,0x0999,0x069E,0x04CC,0x039F,
        0x02D2,0x0242,0x01D8,0x0189,0x1555,0x1333,0x0EC4,0x0AAA,
        0x07AE,0x05A5,0x0444,0x034F,0x02A1,0x0222,0x01C2,0x017A,
        0x0C00,0x0B4B,0x0999,0x07AE,0x0600,0x04AE,0x03B1,0x02F4,
        0x0266,0x01FA,0x01A7,0x0166,0x07AE,0x0762,0x069E,0x05A5,
        0x04AE,0x03D7,0x0325,0x0298,0x0228,0x01CF,0x0189,0x0150,
        0x0555,0x0530,0x04CC,0x0444,0x03B1,0x0325,0x02AA,0x0242,
        0x01EB,0x01A4,0x0169,0x0139,0x03EB,0x03D7,0x039F,0x034F,
        0x02F4,0x0298,0x0242,0x01F5,0x01B2,0x017A,0x0149,0x0121,
        0x0300,0x02F4,0x02D2,0x02A1,0x0266,0x0228,0x01EB,0x01B2,
        0x0180,0x0152,0x012B,0x0109,0x025E,0x0257,0x0242,0x0222,
        0x01FA,0x01CF,0x01A4,0x017A,0x0152,0x012F,0x010F,0x00F3,
        0x01EB,0x01E6,0x01D8,0x01C2,0x01A7,0x0189,0x0169,0x0149,
        0x012B,0x010F,0x00F5,0x00DE,0x0196,0x0192,0x0189,0x017A,
        0x0166,0x0150,0x0139,0x0121,0x0109,0x00F3,0x00DE,0x00CB
};
# 55 "./contrib/japanese/gdevmjc.c" 2
# 142 "./contrib/japanese/gdevmjc.c"
static gx_color_index gdev_mjc_map_rgb_color(gx_device *dev, const gx_color_value cv[]);
static int gdev_mjc_map_color_rgb(gx_device *dev, gx_color_index color, gx_color_value rgb[3]);


static int mj700v2c_open(gx_device *dev);
static int mj500c_open(gx_device *dev);
static int mj6000c_open(gx_device *dev);
static int mj8000c_open(gx_device *dev);
static int mj700v2c_print_page(gx_device_printer *, FILE *);
static int mj500c_print_page(gx_device_printer *, FILE *);
static int mj6000c_print_page(gx_device_printer *, FILE *);
static int mj8000c_print_page(gx_device_printer *, FILE *);

static int mj_get_params(gx_device *dev, gs_param_list *plist);
static int mj700v2c_put_params(gx_device *dev, gs_param_list *plist);
static int mj500c_put_params(gx_device *dev, gs_param_list *plist);

static int mj_open(gx_device * pdev, int ptype);
static int mj_put_params(gx_device * pdev, gs_param_list * plist, int ptype);
static int mj_print_page(gx_device_printer * pdev, FILE * prn_stream, int ptype);
static void expand_line(word *, int, int, int);
static int put_param_int(gs_param_list *, gs_param_name, int *, int, int, int);
static void set_bpp(gx_device *, int);
static void mj500c_set_bpp(gx_device *, int);
static gx_color_index mjc_correct_color(gx_device_printer *, gx_color_index);


struct gx_device_mj_s {
        int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs;
        byte skip[(((sizeof(gx_device_memory)) > (sizeof(gx_device_clist))) ? (sizeof(gx_device_memory)) : (sizeof(gx_device_clist))) - sizeof(gx_device) + sizeof(double) ]; gx_printer_device_procs printer_procs; char fname[4096]; bool BLS_force_memory; bool OpenOutputFile; bool ReopenPerPage; bool Duplex; int Duplex_set; bool file_is_new; FILE *file; long buffer_space; byte *buf; gs_memory_t *buffer_memory; gs_memory_t *bandlist_memory; int (*free_up_bandlist_memory)(gx_device *dev, bool flush_current); gx_page_queue_t *page_queue; bool is_async_renderer; gx_device_printer *async_renderer; uint clist_disable_mask; bool bg_print_requested; bg_print_t bg_print; int num_render_threads_requested; gx_saved_pages_list *saved_pages_list; gx_device_procs save_procs_while_delaying_erasepage; gx_device_procs orig_procs;
        int colorcomp;
        int density;
        int cyan;
        int magenta;
        int yellow;
        int black;
        bool direction;
        bool microweave;
        int dotsize;

};

typedef struct gx_device_mj_s gx_device_mj;
# 227 "./contrib/japanese/gdevmjc.c"
static gx_device_procs mj700v2c_procs =
{ mj700v2c_open, gx_default_get_initial_matrix, gx_default_sync_output, gdev_prn_output_page, gdev_prn_close, gdev_mjc_map_rgb_color, gdev_mjc_map_color_rgb, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_default_get_bits, mj_get_params, mj700v2c_put_params};

static gx_device_procs mj500c_procs =
{ mj500c_open, gx_default_get_initial_matrix, gx_default_sync_output, gdev_prn_output_page, gdev_prn_close, gdev_mjc_map_rgb_color, gdev_mjc_map_color_rgb, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_default_get_bits, mj_get_params, mj500c_put_params};

static gx_device_procs mj6000c_procs =
{ mj6000c_open, gx_default_get_initial_matrix, gx_default_sync_output, gdev_prn_output_page, gdev_prn_close, gdev_mjc_map_rgb_color, gdev_mjc_map_color_rgb, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_default_get_bits, mj_get_params, mj700v2c_put_params};

static gx_device_procs mj8000c_procs =
{ mj8000c_open, gx_default_get_initial_matrix, gx_default_sync_output, gdev_prn_output_page, gdev_prn_close, gdev_mjc_map_rgb_color, gdev_mjc_map_color_rgb, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), gx_default_get_bits, mj_get_params, mj700v2c_put_params};

gx_device_mj gs_mj700v2c_device =
{ sizeof(gx_device_mj), &mj700v2c_procs, "mj700v2c", 0 , &st_device_printer, 0 , 0 , { 0 } , 0 , 0 , 0, {(32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3) , (32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3) , ( ((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 32 , (((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) == 3 ? 0xff : ((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) - 1) , (32 >= 8 ? 255 : 1) , (32 >= 8 ? 255 : 32 > 1 ? 1 : 0) , (32 >= 8 ? 5 : 2) , (32 >= 8 ? 5 : 32 > 1 ? 2 : 0) , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( ((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) == 1 ? "DeviceGray" : (((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)((float)(82.6389) * (360) / 10 + 0.5), (int)((float)(116.9444) * (360) / 10 + 0.5), 0 , 0 , 0 , 0 , { (float)(((((int)((float)(82.6389) * (360) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (360)) , (float)(((((int)((float)(116.9444) * (360) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (360)) }, { 0, 0, 0, 0 } , 0 , { 360, 360 } , { 360, 360 }, {(float)(-(0.118) * (360)), (float)(-(0.33465) * (360))}, {(float)((0.118) * 72.0), (float)((0.52) * 72.0), (float)((0.118) * 72.0), (float)((0.33465) * 72.0)}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page }, { 0 }, { 0 }, { mj700v2c_print_page, gx_default_print_page_copies, { gx_default_create_buf_device, gx_default_size_buf_device, gx_default_setup_buf_device, gx_default_destroy_buf_device }, gx_default_get_space_params, gx_default_start_render_thread, gx_default_open_render_device, gx_default_close_render_device, gx_default_buffer_page }, { 0 }, 0 , 0 , 0 , 0 , -1, 0 , 0, 0, 0, 0, 0, 0, 0, 0 , 0, 0, 0 , { 0 , 0 , 0 , 0 , 0 }, 0, 0, { 0 }, { 0 }, (32 == 32 ? 4 : 1), 1024, 1024, 1024, 1024, 1024, 0, 1, 1 };


gx_device_mj gs_mj500c_device =
{ sizeof(gx_device_mj), &mj500c_procs, "mj500c", 0 , &st_device_printer, 0 , 0 , { 0 } , 0 , 0 , 0, {(32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3) , (32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3) , ( ((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 32 , (((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) == 3 ? 0xff : ((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) - 1) , (32 >= 8 ? 255 : 1) , (32 >= 8 ? 255 : 32 > 1 ? 1 : 0) , (32 >= 8 ? 5 : 2) , (32 >= 8 ? 5 : 32 > 1 ? 2 : 0) , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( ((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) == 1 ? "DeviceGray" : (((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)((float)(82.6389) * (360) / 10 + 0.5), (int)((float)(116.9444) * (360) / 10 + 0.5), 0 , 0 , 0 , 0 , { (float)(((((int)((float)(82.6389) * (360) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (360)) , (float)(((((int)((float)(116.9444) * (360) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (360)) }, { 0, 0, 0, 0 } , 0 , { 360, 360 } , { 360, 360 }, {(float)(-(0.118) * (360)), (float)(-(0.33465) * (360))}, {(float)((0.118) * 72.0), (float)((0.52) * 72.0), (float)((0.118) * 72.0), (float)((0.33465) * 72.0)}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page }, { 0 }, { 0 }, { mj500c_print_page, gx_default_print_page_copies, { gx_default_create_buf_device, gx_default_size_buf_device, gx_default_setup_buf_device, gx_default_destroy_buf_device }, gx_default_get_space_params, gx_default_start_render_thread, gx_default_open_render_device, gx_default_close_render_device, gx_default_buffer_page }, { 0 }, 0 , 0 , 0 , 0 , -1, 0 , 0, 0, 0, 0, 0, 0, 0, 0 , 0, 0, 0 , { 0 , 0 , 0 , 0 , 0 }, 0, 0, { 0 }, { 0 }, (32 == 32 ? 3 : 1), 1024, 1024, 1024, 1024, 1024, 0, 1, 1 };


gx_device_mj gs_mj6000c_device =
{ sizeof(gx_device_mj), &mj6000c_procs, "mj6000c", 0 , &st_device_printer, 0 , 0 , { 0 } , 0 , 0 , 0, {(32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3) , (32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3) , ( ((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 32 , (((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) == 3 ? 0xff : ((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) - 1) , (32 >= 8 ? 255 : 1) , (32 >= 8 ? 255 : 32 > 1 ? 1 : 0) , (32 >= 8 ? 5 : 2) , (32 >= 8 ? 5 : 32 > 1 ? 2 : 0) , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( ((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) == 1 ? "DeviceGray" : (((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)((float)(82.6389) * (360) / 10 + 0.5), (int)((float)(116.9444) * (360) / 10 + 0.5), 0 , 0 , 0 , 0 , { (float)(((((int)((float)(82.6389) * (360) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (360)) , (float)(((((int)((float)(116.9444) * (360) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (360)) }, { 0, 0, 0, 0 } , 0 , { 360, 360 } , { 360, 360 }, {(float)(-(0.118) * (360)), (float)(-(0.33465) * (360))}, {(float)((0.118) * 72.0), (float)((0.52) * 72.0), (float)((0.118) * 72.0), (float)((0.33465) * 72.0)}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page }, { 0 }, { 0 }, { mj6000c_print_page, gx_default_print_page_copies, { gx_default_create_buf_device, gx_default_size_buf_device, gx_default_setup_buf_device, gx_default_destroy_buf_device }, gx_default_get_space_params, gx_default_start_render_thread, gx_default_open_render_device, gx_default_close_render_device, gx_default_buffer_page }, { 0 }, 0 , 0 , 0 , 0 , -1, 0 , 0, 0, 0, 0, 0, 0, 0, 0 , 0, 0, 0 , { 0 , 0 , 0 , 0 , 0 }, 0, 0, { 0 }, { 0 }, (32 == 32 ? 4 : 1), 1024, 1024, 1024, 1024, 1024, 0, 1, 1 };


gx_device_mj gs_mj8000c_device =
{ sizeof(gx_device_mj), &mj8000c_procs, "mj8000c", 0 , &st_device_printer, 0 , 0 , { 0 } , 0 , 0 , 0, {(32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3) , (32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3) , ( ((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) >= 4 ? GX_CINFO_POLARITY_SUBTRACTIVE : GX_CINFO_POLARITY_ADDITIVE ) , 32 , (((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) == 3 ? 0xff : ((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) - 1) , (32 >= 8 ? 255 : 1) , (32 >= 8 ? 255 : 32 > 1 ? 1 : 0) , (32 >= 8 ? 5 : 2) , (32 >= 8 ? 5 : 32 > 1 ? 2 : 0) , { 1, 1 } , GX_CINFO_UNKNOWN_SEP_LIN , { 0 } , { 0 } , { 0 } , ( ((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) == 1 ? "DeviceGray" : (((32 == 32 ? 4 : (32 == 1 || 32 == 8) ? 1 : 3)) == 3 ? "DeviceRGB" : "DeviceCMYK") ) , GX_CINFO_OPMODE_UNKNOWN , 0 }, { ((gx_color_index)(~0)), ((gx_color_index)(~0)) }, (int)((float)(82.6389) * (360) / 10 + 0.5), (int)((float)(116.9444) * (360) / 10 + 0.5), 0 , 0 , 0 , 0 , { (float)(((((int)((float)(82.6389) * (360) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (360)) , (float)(((((int)((float)(116.9444) * (360) / 10 + 0.5)) * 72.0 + 0.5) - 0.5) / (360)) }, { 0, 0, 0, 0 } , 0 , { 360, 360 } , { 360, 360 }, {(float)(-(0.118) * (360)), (float)(-(0.33465) * (360))}, {(float)((0.118) * 72.0), (float)((0.52) * 72.0), (float)((0.118) * 72.0), (float)((0.33465) * 72.0)}, 0 , 0 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , {((bool)0)} , 0 , 0 , { 10000000L, 4000000L, { 0, 0, 0 }, 0 , BandingAuto }, 0 , 0 , { gx_default_install, gx_default_begin_page, gx_default_end_page }, { 0 }, { 0 }, { mj8000c_print_page, gx_default_print_page_copies, { gx_default_create_buf_device, gx_default_size_buf_device, gx_default_setup_buf_device, gx_default_destroy_buf_device }, gx_default_get_space_params, gx_default_start_render_thread, gx_default_open_render_device, gx_default_close_render_device, gx_default_buffer_page }, { 0 }, 0 , 0 , 0 , 0 , -1, 0 , 0, 0, 0, 0, 0, 0, 0, 0 , 0, 0, 0 , { 0 , 0 , 0 , 0 , 0 }, 0, 0, { 0 }, { 0 }, (32 == 32 ? 4 : 1), 1024, 1024, 1024, 1024, 1024, 0, 1, 1 };



static int
gdev_mjc_paper_size(gx_device *dev)
{
  int width = dev->MediaSize[0];
  int height = dev->MediaSize[1];

  if (width == 1190 && height == 1684)
    return 28;
  else
    return 26;
}

static int
mj700v2c_open(gx_device * pdev)
{
  return mj_open(pdev, 1);
}

static int
mj500c_open(gx_device * pdev)
{
  return mj_open(pdev, 1);
}

static int
mj6000c_open(gx_device * pdev)
{
  return mj_open(pdev, 1);
}

static int
mj8000c_open(gx_device * pdev)
{
  return mj_open(pdev, 1);
}


static int
mj_open(gx_device *pdev, int ptype)
{
  int xdpi = pdev->HWResolution[0];
  int ydpi = pdev->HWResolution[1];

  static const float mj_margin[4] = { 0.118, 0.52, 0.118, 0.33465 };
  static const float mj6000c_a2[4] = { 0.948, 0.52, 1.969, 0.33465 };
  static const float mj8000c_a2[4] = { 0.194, 0.52, 0.194, 0.33465 };

  const float *m;

  int paper_size;







  paper_size = gdev_mjc_paper_size(pdev);
  if (paper_size == 28 ) {
    if (ptype == 3)
      m = mj6000c_a2;
    else if (ptype == 4)
      m = mj8000c_a2;
    else
      m = mj_margin;
  } else {
    m = mj_margin;
  }

  gx_device_set_margins(pdev, m, ((bool)1));

  if (((gx_device_mj *) pdev)->colorcomp == 3)
    ((gx_device_mj *) pdev)->density = ((gx_device_mj *) pdev)->density * 720 / ydpi * 1.5;
  else
    ((gx_device_mj *) pdev)->density = ((gx_device_mj *) pdev)->density * 720 / ydpi;


  if (!((xdpi == 180 && ydpi == 180) ||
      (xdpi == 360 && ydpi == 360) ||
      (xdpi == 720 && ydpi == 720) ||
      (xdpi == 360 && ydpi == 720) ||
      (xdpi == 720 && ydpi == 360)))
    return ((-15));

  return gdev_prn_open(pdev);
}






static int
mj_get_params(gx_device *pdev, gs_param_list *plist)
{
        int code = gdev_prn_get_params(pdev, plist);

        if ( code < 0 ||
            (code = param_write_int(plist, "Density", &((gx_device_mj *) pdev)->density)) < 0 ||
            (code = param_write_int(plist, "Cyan", &((gx_device_mj *) pdev)->cyan)) < 0 ||
            (code = param_write_int(plist, "Magenta", &((gx_device_mj *) pdev)->magenta)) < 0 ||
            (code = param_write_int(plist, "Yellow", &((gx_device_mj *) pdev)->yellow)) < 0 ||
            (code = param_write_int(plist, "Black", &((gx_device_mj *) pdev)->black)) < 0 ||
            (code = param_write_bool(plist, "Unidirectional", &((gx_device_mj *) pdev)->direction)) < 0 ||
            (code = param_write_bool(plist, "Microweave", &((gx_device_mj *) pdev)->microweave)) < 0 ||
            (code = param_write_int(plist, "DotSize", &((gx_device_mj *) pdev)->dotsize)) < 0
           )
          return code;

        return code;
}


static int
mj700v2c_put_params(gx_device *pdev, gs_param_list *plist)
{
  return mj_put_params(pdev, plist, 1);
}

static int
mj500c_put_params(gx_device *pdev, gs_param_list *plist)
{
  return mj_put_params(pdev, plist, 2);
}

static int
mj_put_params(gx_device *pdev, gs_param_list *plist, int ptype)
{
        int old_bpp = ((gx_device_mj *) pdev)->color_info.depth;
        int bpp = 0;
        int code = 0;
        int density = ((gx_device_mj *) pdev)->density;
        int cyan = ((gx_device_mj *) pdev)->cyan;
        int magenta = ((gx_device_mj *) pdev)->magenta;
        int yellow = ((gx_device_mj *) pdev)->yellow;
        int black = ((gx_device_mj *) pdev)->black;
        bool direction = ((gx_device_mj *) pdev)->direction;
        bool microweave = ((gx_device_mj *) pdev)->microweave;
        int dotsize = ((gx_device_mj *) pdev)->dotsize;
        gs_param_name param_name;
        int ecode = 0;

        code = put_param_int(plist, "Density", &density, 0, 2147483647, code);
        code = put_param_int(plist, "Cyan", &cyan, 0, 2147483647, code);
        code = put_param_int(plist, "Magenta", &magenta, 0, 2147483647, code);
        code = put_param_int(plist, "Yellow", &yellow, 0, 2147483647, code);
        code = put_param_int(plist, "Black", &black, 0, 2147483647, code);

        if ((code = param_read_bool(plist,
                                     (param_name = "Unidirectional"),
                                     &direction))< 0) {
          (*(plist)->procs->signal_error)(plist, param_name, ecode = code);
        }

        if ((code = param_read_bool(plist,
                                     (param_name = "Microweave"),
                                     &microweave))< 0) {
          (*(plist)->procs->signal_error)(plist, param_name, ecode = code);
        }
        if (ecode < 0)
          return code;

        if (microweave && pdev->HWResolution[0] == 180)
            return ((-15));

        code = put_param_int(plist, "DotSize", &dotsize, 0, 1, code);
        code = put_param_int(plist, "BitsPerPixel", &bpp, 1, 32, code);

        if ( code < 0 )
          return code;

        ((gx_device_mj *) pdev)->density = density;
        ((gx_device_mj *) pdev)->cyan = cyan;
        ((gx_device_mj *) pdev)->magenta = magenta;
        ((gx_device_mj *) pdev)->yellow = yellow;
        ((gx_device_mj *) pdev)->black = black;
        ((gx_device_mj *) pdev)->direction = direction;
        ((gx_device_mj *) pdev)->microweave = microweave;
        ((gx_device_mj *) pdev)->dotsize = dotsize;

        if ( bpp != 0 ) {
          if (bpp != 8 && bpp != 32)
            return ((-15));

          if (ptype == 2)
            mj500c_set_bpp(pdev, bpp);
          else
            set_bpp(pdev, bpp);
          gdev_prn_put_params(pdev, plist);
          if ( bpp != old_bpp && pdev->is_open )
            return gs_closedevice(pdev);
          return 0;
        }
        else
          return gdev_prn_put_params(pdev, plist);
}
# 583 "./contrib/japanese/gdevmjc.c"
static int
mj_raster_cmd(int c_id, int in_size, byte* in, byte* buf2,
              gx_device_printer* pdev, FILE* prn_stream)
{
  int band_size = 1;

  byte *out = buf2;

  int width = in_size;
  int count;

  byte* in_end = in + in_size;

  static char colour_number[] = "\004\001\002\000";

  byte *inp = in;
  byte *outp = out;
  register byte *p, *q;



  fputs("\033r",prn_stream);
  fputc(colour_number[c_id], prn_stream);





  for( p = inp, q = inp + 1 ; q < in_end ; ) {

    if( *p != *q ) {
      p += 2;
      q += 2;
    } else {





      if( p > inp && *p == *(p-1) )
           p--;





      for( q++ ; *q == *p && q < in_end ; q++ ) {
        if( (q-p) >= 128 ) {
          if( p > inp ) {
            count = p - inp;
            while( count > 128 ) {
              *outp++ = '\177';
              memcpy(outp, inp, 128);
              inp += 128;
              outp += 128;
              count -= 128;
            }
            *outp++ = (char) (count - 1);
            memcpy(outp, inp, count);
            outp += count;
          }
          *outp++ = '\201';
          *outp++ = *p;
          p += 128;
          inp = p;
        }
      }

      if( (q - p) > 2 ) {
        if( p > inp ) {
          count = p - inp;
          while( count > 128 ) {
            *outp++ = '\177';
            memcpy(outp, inp, 128);
            inp += 128;
            outp += 128;
            count -= 128;
          }
          *outp++ = (char) (count - 1);
          memcpy(outp, inp, count);
          outp += count;
        }
        count = q - p;
        *outp++ = (char) (256 - count + 1);
        *outp++ = *p;
        p += count;
        inp = p;
      } else
           p = q;
      if( q < in_end )
           q++;
    }
  }





  if( inp < in_end ) {

    count = in_end - inp;







    while( count > 128 ) {
      *outp++ = '\177';
      memcpy(outp, inp, 128);
      inp += 128;
      outp += 128;
      count -= 128;
    }

    *outp++ = (char) (count - 1);
    memcpy(outp, inp, count);
    outp += count;
  }




  fwrite("\033.\001", 1, 3, prn_stream);

  if(pdev->HWResolution[1] == 720)
       fputc('\005', prn_stream);
  else if(pdev->HWResolution[1] == 180)
       fputc('\024', prn_stream);
  else
       fputc('\012', prn_stream);

  if(pdev->HWResolution[0] == 720)
       fputc('\005', prn_stream);
  else if(pdev->HWResolution[0] == 180)
       fputc('\024', prn_stream);
  else
       fputc('\012', prn_stream);

  fputc(band_size, prn_stream);

  fputc((width << 3) & 0xff, prn_stream);
  fputc( width >> 5, prn_stream);

  fwrite(out, 1, (outp - out), prn_stream);

  fputc('\r', prn_stream);

  return 0;
}

static int
mj_v_skip(int n, gx_device_printer *pdev, FILE *stream)
{

  static const int max_y_step = (256 * 15 + 255);

  int l = n - max_y_step;
  for (; l > 0; l -= max_y_step) {
    fwrite("\033(v\2\0\xff\x0f", sizeof(byte), 7, stream);
  }
  l += max_y_step;

  {
    int n2 = l / 256;
    int n1 = l - n2 * 256;
    fwrite("\033(v\2\0", sizeof(byte) ,5 ,stream);
    fputc(n1, stream);
    fputc(n2, stream);
    fputc('\r', stream);
  }
  return 0;
}



static void
bld_barrier( short **bar , int x )
{
        int i , j;

        short t;
        short *p;
        short *b;
        short *dat = barrier_dat + 1;

        p = *bar++ + x + 1;

        for ( i = 0 ; i < 11 ; i++ ) {
                t = *dat++;
                if (*p < t )
                        *p = t;
                p++;
        }

        for ( j = 0 ; j < 11 ; j++ ) {
                p = *bar++ + x;
                b = p;

                t = *dat++;
                if (*p < t )
                        *p = t;
                p++;
                for ( i = 0 ; i < 11 ; i++ ) {
                        t = *dat++;
                        if (*p < t )
                                *p = t;
                        p++;

                        if (*(--b) < t )
                                *b = t;
                }
        }
}

static void
DifSubK( int d0 , short *a4 , short *a5 )
{







        *a4++ = 0;
        d0 >>= 1;
        *a4 += d0;
        d0 >>= 1;
        *(a5-1) += d0;
        d0 >>= 1;
        *a5++ += d0;
        *a5 += d0;
}


static byte
Xtal( byte bitmask , short d0 , int x , short **bar , short *b1 , short *b2 )
{
        short *a2;

        if (d0 != 0)
                d0 += *b1;

        a2 = *bar + x;


        if (*a2 < d0) {
                d0 -= 16400;
                if (-4096 >= d0) {
                        DifSubK( d0 , b1 , b2 );
                        bld_barrier( bar , x );
                } else {
                        DifSubK( d0 , b1 , b2 );
                }
                return( bitmask );
        } else {
                if (d0 > 56)
                        d0 -= 56;
                DifSubK( d0 , b1 , b2 );
                return( 0 );
        }
}

static void
xtal_plane( byte *dp , short *buf[] , byte *oP , short **bar , int plane_size , int xtalbuff_size )
{
        int i;
        int j;
        int x = 0;
        byte bitmask;
        byte out;
        short *p;
        short *b1 , *b2;

        b1 = buf[0];
        b2 = buf[1];






        for ( i = 0 ; i < plane_size ; i++ ) {
                bitmask = 0x80;
                out = 0;
                for ( j = 0 ; j < 8 ; j++ ) {
                        out |= Xtal( bitmask , (short)(*dp) << 6 , x++ , bar , b1++ , b2++ );
                        dp += 4;
                        bitmask >>= 1;
                }
                *oP++ = out;
        }

        p = buf[0];

        buf[0] = buf[1];
        buf[1] = p;

        p = bar[0];
        for ( i = 0 ; i < plane_size*8 ; i++ )
                *p++ = 0;


        p = bar[0];
        for ( i = 0 ; i <= 14 ; i++ )
                bar[i] = bar[i+1];
        bar[15] = p;
}

static int
mj700v2c_print_page(gx_device_printer * pdev, FILE * prn_stream)
{
  return mj_print_page(pdev, prn_stream, 1);
}

static int
mj500c_print_page(gx_device_printer * pdev, FILE * prn_stream)
{
  return mj_print_page(pdev, prn_stream, 2);
}

static int
mj6000c_print_page(gx_device_printer * pdev, FILE * prn_stream)
{
  return mj_print_page(pdev, prn_stream, 3);
}

static int
mj8000c_print_page(gx_device_printer * pdev, FILE * prn_stream)
{
  return mj_print_page(pdev, prn_stream, 4);
}


static int
mj_print_page(gx_device_printer * pdev, FILE * prn_stream, int ptype)
{

  int line_size = gx_device_raster((gx_device *)(pdev), 0);
  int line_size_words = (line_size + sizeof(word) - 1) / sizeof(word);
  int num_comps = pdev->color_info.num_components;
  int bits_per_pixel = pdev->color_info.depth;
  int storage_bpp = bits_per_pixel;
  int expanded_bpp = bits_per_pixel;
  int plane_size, databuff_size;
  int errbuff_size = 0;
  int outbuff_size = 0;
  int scan = 0;
  int *errors[2];
  byte *data[4], *plane_data[4][4], *out_data;
  byte *out_row, *out_row_alt;
  word *storage;
  uint storage_size_words;
  uint mj_tmp_buf_size;
  byte* mj_tmp_buf;
  int xtalbuff_size;
  short *xtalbuff;
  short *Cbar[16];
  short *Mbar[16];
  short *Ybar[16];
  short *Kbar[16];
  short *Cbuf[2];
  short *Mbuf[2];
  short *Ybuf[2];
  short *Kbuf[2];


  if (num_comps == 3) num_comps = 4;

  if (storage_bpp == 8 && num_comps >= 3)
    bits_per_pixel = expanded_bpp = 3;

  plane_size = (((((line_size) + ((storage_bpp) * sizeof(word)) - 1) / ((storage_bpp) * sizeof(word)))) * sizeof(word));

  if (bits_per_pixel == 1) {
    databuff_size = 0;
    outbuff_size = plane_size * 4;
  }

  if (bits_per_pixel > 4) {
    expanded_bpp = storage_bpp =
      num_comps * 8;
    errbuff_size =
      ((((((plane_size * expanded_bpp + num_comps * 4) * sizeof(int)) + ((1) * sizeof(word)) - 1) / ((1) * sizeof(word)))) * sizeof(word));
  }

  databuff_size = plane_size * storage_bpp;

  storage_size_words = ((plane_size + plane_size) * num_comps +
                        databuff_size + errbuff_size + outbuff_size) / sizeof(word);


  xtalbuff_size = plane_size*8 + 64;
  xtalbuff = (short *) (void *)(*(pdev->memory->non_gc_memory->non_gc_memory)->procs.alloc_byte_array)(pdev->memory->non_gc_memory->non_gc_memory, xtalbuff_size*(16*4+2*4), sizeof(word), "mj_colour_print_barrier");
  memset(xtalbuff, 0, xtalbuff_size*(16*4+2*4) * sizeof(word));
  {
        int i;
        short *p = xtalbuff + 16;
        for ( i = 0 ; i < 16 ; i++ ) {
                Cbar[i] = p;
                p += xtalbuff_size;
        }
        for ( i = 0 ; i < 16 ; i++ ) {
                Mbar[i] = p;
                p += xtalbuff_size;
        }
        for ( i = 0 ; i < 16 ; i++ ) {
                Ybar[i] = p;
                p += xtalbuff_size;
        }
        for ( i = 0 ; i < 16 ; i++ ) {
                Kbar[i] = p;
                p += xtalbuff_size;
        }
        Cbuf[0] = p;
        p += xtalbuff_size;
        Cbuf[1] = p;
        p += xtalbuff_size;
        Mbuf[0] = p;
        p += xtalbuff_size;
        Mbuf[1] = p;
        p += xtalbuff_size;
        Ybuf[0] = p;
        p += xtalbuff_size;
        Ybuf[1] = p;
        p += xtalbuff_size;
        Kbuf[0] = p;
        p += xtalbuff_size;
        Kbuf[1] = p;
        p += xtalbuff_size;
  }

  storage = (word *) (void *)(*(pdev->memory->non_gc_memory->non_gc_memory)->procs.alloc_byte_array)(pdev->memory->non_gc_memory->non_gc_memory, storage_size_words, sizeof(word), "mj_colour_print_page");



  mj_tmp_buf_size = plane_size;
  mj_tmp_buf = (byte *) (void *)(*(pdev->memory->non_gc_memory->non_gc_memory)->procs.alloc_byte_array)(pdev->memory->non_gc_memory->non_gc_memory, mj_tmp_buf_size, sizeof(word), "mj_raster_buffer");
# 1042 "./contrib/japanese/gdevmjc.c"
  if (storage == ((void*)0) || mj_tmp_buf == ((void*)0))
    return ((-25));
  else {
    int i;
    byte *p = out_data = out_row = (byte *)storage;
    data[0] = data[1] = data[2] = p;
    data[3] = p + databuff_size;
    out_row_alt = out_row + plane_size * 2;
    if (bits_per_pixel > 1) {
      p += databuff_size;
    }
    if (bits_per_pixel > 4) {
      errors[0] = (int *)p + num_comps * 2;
      errors[1] = errors[0] + databuff_size;
      p += errbuff_size;
    }
    for (i = 0; i < num_comps; i++) {
      plane_data[0][i] = plane_data[2][i] = p;
      p += plane_size;
    }
    for (i = 0; i < num_comps; i++) {
      plane_data[1][i] = p;
      plane_data[3][i] = p + plane_size;
      p += plane_size;
    }
    if (bits_per_pixel == 1) {
      out_data = out_row = p;
      out_row_alt = out_row + plane_size * 2;
      data[1] += databuff_size;
      data[3] += databuff_size;
    }
  }


  memset(storage, 0, storage_size_words * sizeof(word));


  {


    fwrite("\033@\033(G\001\000\001", sizeof(byte), 8, prn_stream);


    if (((gx_device_mj *) pdev)->microweave) {
      fwrite("\033(i\001\000\001", sizeof(byte), 6, prn_stream);
    }

    if (((gx_device_mj *) pdev)->dotsize) {
      fwrite("\033(e\002\000\000\001", sizeof(byte), 7, prn_stream);
    }

    if (ptype == 3 || ptype == 4) {

      if (pdev->color_info.depth == 8)
        fwrite("\033(K\002\000\000\001", sizeof(byte), 7, prn_stream);
    }

    if (((gx_device_mj *) pdev)->direction)
      fwrite("\033U\1", 1, 3, prn_stream);
    else
      fwrite("\033U\0", 1, 3, prn_stream);
# 1122 "./contrib/japanese/gdevmjc.c"
        if( pdev->HWResolution[1] >= 720 ) {
          fwrite("\033(U\001\0\005\033+\001", sizeof(byte), 9, prn_stream);
         }
        else if( pdev->HWResolution[1] >= 360 )
           fwrite("\033(U\001\0\012\033+\001", sizeof(byte), 9, prn_stream);
        else
           fwrite("\033(U\001\0\024\033+\002", sizeof(byte), 9, prn_stream);


        fwrite("\033(C\2\0", sizeof(byte), 5, prn_stream);
        fputc(((pdev->height) % 256), prn_stream);
        fputc(((pdev->height) / 256), prn_stream);
  }



  {
    int MJ_MARGIN_MM = 55;
    uint top_skip = ( MJ_MARGIN_MM * pdev->HWResolution[1] ) / 254;
    top_skip = (top_skip ^ (-1)) & 65536;
    fwrite("\033(V\2\0\0\0",sizeof(byte), 7, prn_stream);
    fwrite("\033(v\2\0\0\xff",sizeof(byte), 7, prn_stream);
  }


  {
    long int lend = pdev->height -
      (((pdev)->HWMargins[3]) + ((pdev)->HWMargins[1]));
    int cErr, mErr, yErr, kErr;
    int this_pass, i;
    long int lnum;
    int num_blank_lines = 0;
    int start_rows = (num_comps == 1) ?
      50 - 1 : 16 - 1;
    word rmask = ~(word) 0 << ((-pdev->width * storage_bpp) & (sizeof(word) * 8 - 1));

    cErr = mErr = yErr = kErr = 0;

    if (bits_per_pixel > 4) {
      int *ep = errors[0];
      for (i = 0; i < databuff_size; i++) {
        *ep++ = (rand() % (((256 << (sizeof(int) * sizeof(int))) - 1) / 2)) - ((256 << (sizeof(int) * sizeof(int))) - 1) / 4;
      }
    }

    this_pass = start_rows;

    lnum = 0;



    for (; lnum < lend; lnum++) {
      word *data_words = (word *)data[scan];
      register word *end_data = data_words + line_size_words;
      gx_color_index *p_data;

      gdev_prn_copy_scan_lines(pdev, lnum, data[scan], line_size);


      end_data[-1] &= rmask;


      while (end_data > data_words && end_data[-1] == 0)
        end_data--;
      if (end_data == data_words) {
        num_blank_lines++;
        continue;
      }

      if (num_blank_lines > 0 ) {
        mj_v_skip(num_blank_lines, pdev, prn_stream);
        memset(plane_data[1 - scan][0], 0, plane_size * num_comps);
        num_blank_lines = 0;
        this_pass = start_rows;
      }


          if (((gx_device_mj *) pdev)->density != 1024 || ((gx_device_mj *) pdev)->yellow != 1024 || ((gx_device_mj *) pdev)->cyan != 1024
                  || ((gx_device_mj *) pdev)->magenta != 1024 || ((gx_device_mj *) pdev)->black != 1024 ) {
              for (p_data = (gx_color_index*) data_words; p_data < (gx_color_index *)end_data; p_data++) {
                        *p_data = mjc_correct_color(pdev, *p_data);
              }
          }

      {
        register byte *kP = plane_data[scan + 2][3];
        register byte *cP = plane_data[scan + 2][2];
        register byte *mP = plane_data[scan + 2][1];
        register byte *yP = plane_data[scan + 2][0];
        register byte *dp = data[scan + 2];
        int zero_row_count;
        int i, j;
        byte *odp;

        if (this_pass)
          this_pass--;
        else
          this_pass = start_rows;

        if (expanded_bpp > bits_per_pixel)
          expand_line(data_words, line_size, bits_per_pixel, expanded_bpp);




        switch (expanded_bpp) {
        case 3:

          for (i = 0, odp = plane_data[scan][0]; i < databuff_size;
               i += 8, odp++) {



            static word spr40[8] = { 0, 0x40, 0x40*0x100, 0x40*0x101, 0x40*0x10000L, 0x40*0x10001L, 0x40*0x10100L, 0x40*0x10101L };
            static word spr08[8] = { 0, 8, 8*0x100, 8*0x101, 8*0x10000L, 8*0x10001L, 8*0x10100L, 8*0x10101L };
            static word spr02[8] = { 0, 2, 2*0x100, 2*0x101, 2*0x10000L, 2*0x10001L, 2*0x10100L, 2*0x10101L };
            register byte *dp = data[scan] + i;
            register word pword =
            (spr40[dp[0]] << 1) +
            (spr40[dp[1]]) +
            (spr40[dp[2]] >> 1) +
            (spr08[dp[3]] << 1) +
            (spr08[dp[4]]) +
            (spr08[dp[5]] >> 1) +
            (spr02[dp[6]]) +
            (spr02[dp[7]] >> 1);
            odp[0] = (byte) (pword >> 16);
            odp[plane_size] = (byte) (pword >> 8);
            odp[plane_size * 2] = (byte) (pword);
          }
          break;

        case 8:
          { unsigned short *mat = matrix2 + (lnum & 127)*128; int x; if (scan == 0) { x = 0; for (i = 0; i < plane_size; i++) { byte c, y, m, k, bitmask; int val; bitmask = 0x80; for (c = m = y = k = j = 0; j < 8; j++) { val = *(mat + (x++ & 127)); if (1 >= 4) { if ((*dp++ << 6) > val) { k |= bitmask; }; } if (1 >= 3) { if ((*dp++ << 6) > val) { c |= bitmask; }; if ((*dp++ << 6) > val) { m |= bitmask; }; } if ((*dp++ << 6) > val) { y |= bitmask; }; bitmask >>= 1; } if (1 >= 4) *kP++ = k; if (1 >= 3) { *cP++ = c; *mP++ = m; } *yP++ = y; } } else { x = plane_size*8; for (i = 0; i < plane_size; i++) { byte c, y, m, k, bitmask; int val; bitmask = 0x01; for (c = m = y = k = j = 0; j < 8; j++) { val = *(mat + (--x & 127)); if ((*--dp << 6) > val) { y |= bitmask; }; if (1 >= 3) { if ((*--dp << 6) > val) { m |= bitmask; }; if ((*--dp << 6) > val) { c |= bitmask; }; } if (1 >= 4) { if ((*--dp << 6) > val) { k |= bitmask; }; } bitmask <<= 1; } *--yP = y; if (1 >= 3) { *--mP = m; *--cP = c; } if (1 >= 4) *--kP = k; } }};

          break;
        case 24:
          { unsigned short *mat = matrix2 + (lnum & 127)*128; int x; if (scan == 0) { x = 0; for (i = 0; i < plane_size; i++) { byte c, y, m, k, bitmask; int val; bitmask = 0x80; for (c = m = y = k = j = 0; j < 8; j++) { val = *(mat + (x++ & 127)); if (3 >= 4) { if ((*dp++ << 6) > val) { k |= bitmask; }; } if (3 >= 3) { if ((*dp++ << 6) > val) { c |= bitmask; }; if ((*dp++ << 6) > val) { m |= bitmask; }; } if ((*dp++ << 6) > val) { y |= bitmask; }; bitmask >>= 1; } if (3 >= 4) *kP++ = k; if (3 >= 3) { *cP++ = c; *mP++ = m; } *yP++ = y; } } else { x = plane_size*8; for (i = 0; i < plane_size; i++) { byte c, y, m, k, bitmask; int val; bitmask = 0x01; for (c = m = y = k = j = 0; j < 8; j++) { val = *(mat + (--x & 127)); if ((*--dp << 6) > val) { y |= bitmask; }; if (3 >= 3) { if ((*--dp << 6) > val) { m |= bitmask; }; if ((*--dp << 6) > val) { c |= bitmask; }; } if (3 >= 4) { if ((*--dp << 6) > val) { k |= bitmask; }; } bitmask <<= 1; } *--yP = y; if (3 >= 3) { *--mP = m; *--cP = c; } if (3 >= 4) *--kP = k; } }};

          break;
        case 32:
                if (scan == 1) {
                        dp -= plane_size*8*4;
                        cP -= plane_size;
                        mP -= plane_size;
                        yP -= plane_size;
                        kP -= plane_size;
                }
# 1287 "./contrib/japanese/gdevmjc.c"
          xtal_plane( dp++ , Kbuf , kP , Kbar , plane_size , xtalbuff_size );
          xtal_plane( dp++ , Cbuf , cP , Cbar , plane_size , xtalbuff_size );
          xtal_plane( dp++ , Mbuf , mP , Mbar , plane_size , xtalbuff_size );
          xtal_plane( dp++ , Ybuf , yP , Ybar , plane_size , xtalbuff_size );

          break;

        }


        if (num_comps == 4 ) {
          if (((gx_device_mj *) pdev)->colorcomp > 3 ) {
            register word *kp = (word *)plane_data[scan][3];
            register word *cp = (word *)plane_data[scan][2];
            register word *mp = (word *)plane_data[scan][1];
            register word *yp = (word *)plane_data[scan][0];
            if (bits_per_pixel > 4) {
# 1312 "./contrib/japanese/gdevmjc.c"
            } else {
              for (i = 0; i < plane_size / sizeof(word); i++) {
                word bits = *cp & *mp & *yp;
                *kp++ = bits;
                bits = ~bits;
                *cp++ &= bits;
                *mp++ &= bits;
                *yp++ &= bits;
              }
            }
          } else if (((gx_device_mj *) pdev)->colorcomp == 3 ) {
            register word *kp = (word *)plane_data[scan][3];
            register word *cp = (word *)plane_data[scan][2];
            register word *mp = (word *)plane_data[scan][1];
            register word *yp = (word *)plane_data[scan][0];
            if (bits_per_pixel > 4) {
              for (i = 0; i < plane_size / sizeof(word); i++) {
                word bits = *kp++;
                *cp++ |= bits;
                *mp++ |= bits;
                *yp++ |= bits;
              }
            } else {
            }
          }
        }



        switch (((gx_device_mj *) pdev)->colorcomp) {
        case 1:
          zero_row_count = 0;
          out_data = (byte*) plane_data[scan][0];

          mj_raster_cmd(3, plane_size, out_data, mj_tmp_buf, pdev, prn_stream);
          break;
        case 3:
          for (zero_row_count = 0, i = 3 - 1; i >= 0; i--) {
            out_data = (byte*) plane_data[scan][i];
            mj_raster_cmd(i, plane_size, out_data, mj_tmp_buf, pdev, prn_stream);
          }
          break;
        default:
          for (zero_row_count = 0, i = num_comps - 1; i >= 0; i--) {
            out_data = (byte*) plane_data[scan][i];
            mj_raster_cmd(i, plane_size, out_data, mj_tmp_buf, pdev, prn_stream);
          }
          break;
        }

        {
          if ( pdev->HWResolution[1] > 360 ) {
             fwrite("\033(v\2\0\1\0",sizeof(byte),7, prn_stream);
           } else {
             fputc('\n', prn_stream);
           }
        }
        scan = 1 - scan;
      }
    }
  }




  {
    fputs("\f\033@", prn_stream);
    fflush(prn_stream);
  }

  ((pdev->memory->non_gc_memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory->non_gc_memory, (char *) storage, "mj_colour_print_page"));
  ((pdev->memory->non_gc_memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory->non_gc_memory, (char *) mj_tmp_buf, "mj_raster_buffer"));
  ((pdev->memory->non_gc_memory->non_gc_memory)->procs.free_object(pdev->memory->non_gc_memory->non_gc_memory, (char *) xtalbuff, "mj_colour_print_barrier"));

  return 0;
}

static void
mj_color_correct(gx_color_value *Rptr ,gx_color_value *Gptr , gx_color_value *Bptr )

{
        short R,G,B;
        short C,M,Y;
        short H,D,Wa;
        long S;

        R = *Rptr;
        G = *Gptr;
        B = *Bptr;
        if (R==G) {
                if (G==B) {
                        C=M=Y=1023-v_tbl[R];
                        *Rptr = C;
                        *Gptr = M;
                        *Bptr = Y;
                        return;
                } else if (G>B) {
                        D = G-B;
                        Wa = R;
                        H = 256;
                } else {
                        D = G-B;
                        Wa = R;
                        H = 1024;
                }
        }

        if (R>G) {
                if (G>=B) {
                        Wa=R;
                        D=R-B;
                        H=(G-B)*256/D;
                } else if (R>B) {
                        Wa=R;
                        D=R-G;
                        H=1536-(B-G)*256/D;
                } else {
                        Wa=B;
                        D=B-G;
                        H=1024+(R-G)*256/D;
                }
        } else {
                if (R>B) {
                        Wa=G;
                        D=G-B;
                        H=512-(R-B)*256/D;
                } else if (G>B) {
                        Wa=G;
                        D=G-R;
                        H=512+(B-R)*256/D;
                } else {
                        Wa=B;
                        D=B-R;
                        H=1024-(G-R)*256/D;
                }
        }

        if(Wa!=0){
                if(Wa==D){
                        Wa=v_tbl[Wa];
                        D=Wa/4;
                } else {
                        S=((long)D<<16)/Wa;
                        Wa=v_tbl[Wa];
                        D= ( ((long)S*Wa)>>18 );
                }
        }
        Wa=1023-Wa;

        C=(HtoCMY[H*3 ])*D/256+Wa;
        M=(HtoCMY[H*3+1])*D/256+Wa;
        Y=(HtoCMY[H*3+2])*D/256+Wa;
        if (C<0)
                C=0;
        if (M<0)
                M=0;
        if (Y<0)
                Y=0;

        if(H>256 && H<1024){
                short work;
                work=(((long)grnsep[M]*(long)grnsep2[H-256])>>16);
                C+=work;
                Y+=work+work;
                M-=work+work;
                if(C>1023) C=1023;
                if(Y>1023) Y=1023;
        }

        *Rptr = C;
        *Gptr = M;
        *Bptr = Y;
}
# 1494 "./contrib/japanese/gdevmjc.c"
static gx_color_index
gdev_mjc_map_rgb_color(gx_device *pdev, const gx_color_value cv[])
{
  gx_color_value r, g, b;

  r = cv[0]; g = cv[1]; b = cv[2];
  if (((gx_color_value)((((unsigned int)r & g & b)*0xFF01 + 0x800000)>>24)) == 0xff)
    return (gx_color_index)0;
  else {
    gx_color_value c = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - r;
    gx_color_value m = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - g;
    gx_color_value y = ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) - b;

    switch (pdev->color_info.depth) {
    case 1:
      return ((c | m | y) > ((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)) / 2 ?
              (gx_color_index)1 : (gx_color_index)0);
    case 8:
      if (pdev->color_info.num_components >= 3)

        return (((c) >> ((sizeof(gx_color_value) * 8) - 1)) +
                (((m) >> ((sizeof(gx_color_value) * 8) - 1)) << 1) +
                (((y) >> ((sizeof(gx_color_value) * 8) - 1)) << 2));
      else



        return ((((word)c * 306 +
                  (word)m * 601 +
                  (word)y * 117)
                 >> ((sizeof(gx_color_value) * 8) + 2)));
    case 16:


      return (((y) >> ((sizeof(gx_color_value) * 8) - 5)) +
              (((m) >> ((sizeof(gx_color_value) * 8) - 6)) << 5) +
              (((c) >> ((sizeof(gx_color_value) * 8) - 5)) << 11));
    case 24:
      return (((gx_color_value)((((unsigned int)y)*0xFF01 + 0x800000)>>24)) +
              (((gx_color_value)((((unsigned int)m)*0xFF01 + 0x800000)>>24)) << 8) +
              ((word)((gx_color_value)((((unsigned int)c)*0xFF01 + 0x800000)>>24)) << 16));
    case 32:
        {
                gx_color_value k;
                c = ((gx_color_value)((((unsigned int)r)*0xFF01 + 0x800000)>>24));
                m = ((gx_color_value)((((unsigned int)g)*0xFF01 + 0x800000)>>24));
                y = ((gx_color_value)((((unsigned int)b)*0xFF01 + 0x800000)>>24));

                mj_color_correct( &c , &m , &y );

                c = esp_dat_c[c];
                m = esp_dat_m[m];
                y = esp_dat_y[y];

                k = c <= m ? (c <= y ? c : y) : (m <= y ? m : y);
                k = black_sep[ k >> 4 ] >> 6;
                c >>= 6;
                m >>= 6;
                y >>= 6;

        return ( (y - k) + ((m - k) << 8) +
                ((word)(c - k) << 16) + ((word)(k) << 24) );
      }
    }
  }
  return (gx_color_index)0;
}


static int
gdev_mjc_map_color_rgb(gx_device *pdev, gx_color_index color,
                            gx_color_value prgb[3])
{

  switch (pdev->color_info.depth) {
  case 1:
    prgb[0] = prgb[1] = prgb[2] = -((gx_color_value)color ^ 1);
    break;
  case 8:
      if (pdev->color_info.num_components >= 3)
        { gx_color_value c = (gx_color_value)color ^ 7;
          prgb[0] = -(c & 1);
          prgb[1] = -((c >> 1) & 1);
          prgb[2] = -(c >> 2);
        }
      else
        { gx_color_value value = (gx_color_value)color ^ 0xff;
          prgb[0] = prgb[1] = prgb[2] = (value << 8) + value;
        }
    break;
  case 16:
    { gx_color_value c = (gx_color_value)color ^ 0xffff;
      ushort value = c >> 11;
      prgb[0] = ((value << 11) + (value << 6) + (value << 1) +
                 (value >> 4)) >> (16 - (sizeof(gx_color_value) * 8));
      value = (c >> 6) & 0x3f;
      prgb[1] = ((value << 10) + (value << 4) + (value >> 2))
        >> (16 - (sizeof(gx_color_value) * 8));
      value = c & 0x1f;
      prgb[2] = ((value << 11) + (value << 6) + (value << 1) +
                 (value >> 4)) >> (16 - (sizeof(gx_color_value) * 8));
    }
    break;
  case 24:
    { gx_color_value c = (gx_color_value)color ^ 0xffffff;
      prgb[0] = (((c >> 16) << ((sizeof(gx_color_value) * 8) - 8)) + ((c >> 16) >> (16 - (sizeof(gx_color_value) * 8))));
      prgb[1] = ((((c >> 8) & 0xff) << ((sizeof(gx_color_value) * 8) - 8)) + (((c >> 8) & 0xff) >> (16 - (sizeof(gx_color_value) * 8))));
      prgb[2] = (((c & 0xff) << ((sizeof(gx_color_value) * 8) - 8)) + ((c & 0xff) >> (16 - (sizeof(gx_color_value) * 8))));
    }
    break;
  case 32:

    { gx_color_value w = (((((gx_color_value)((((unsigned int)((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)))*0xFF01 + 0x800000)>>24))) << ((sizeof(gx_color_value) * 8) - 8)) + ((((gx_color_value)((((unsigned int)((gx_color_value)((1L << (sizeof(gx_color_value) * 8)) - 1)))*0xFF01 + 0x800000)>>24))) >> (16 - (sizeof(gx_color_value) * 8)))) - (((color >> 24) << ((sizeof(gx_color_value) * 8) - 8)) + ((color >> 24) >> (16 - (sizeof(gx_color_value) * 8))));
      prgb[0] = w - ((((color >> 16) & 0xff) << ((sizeof(gx_color_value) * 8) - 8)) + (((color >> 16) & 0xff) >> (16 - (sizeof(gx_color_value) * 8))));
      prgb[1] = w - ((((color >> 8) & 0xff) << ((sizeof(gx_color_value) * 8) - 8)) + (((color >> 8) & 0xff) >> (16 - (sizeof(gx_color_value) * 8))));
      prgb[2] = w - (((color & 0xff) << ((sizeof(gx_color_value) * 8) - 8)) + ((color & 0xff) >> (16 - (sizeof(gx_color_value) * 8))));
    }
    break;
  }
  return 0;
}
# 1623 "./contrib/japanese/gdevmjc.c"
static void
expand_line(word *line, int linesize, int bpp, int ebpp)
{
  int endline = linesize;
  byte *start = (byte *)line;
  register byte *in, *out;

  if (bpp == 16)
    { register byte b0, b1;
      endline = ((endline + 1) / 2);
      in = start + endline * 2;
      out = start + (endline *= 3);

      while (in > start)
        { b0 = *--in;
          b1 = *--in;
          *--out = (b0 << 3) + ((b0 >> 2) & 0x7);
          *--out = (b1 << 5) + ((b0 >> 3) & 0x1c) + ((b1 >> 1) & 0x3);
          *--out = (b1 & 0xf8) + (b1 >> 5);
        }
    }

  if (ebpp == 32)
    { register byte c, m, y, k;
      endline = ((endline + 2) / 3);
      in = start + endline * 3;
      out = start + endline * 4;

      while (in > start)
        { y = *--in;
          m = *--in;
          c = *--in;
          k = c < m ? (c < y ? c : y) : (m < y ? m : y);
          *--out = y - k;
          *--out = m - k;
          *--out = c - k;
          *--out = k;
        }
    }
}

static int
put_param_int(gs_param_list *plist, gs_param_name pname, int *pvalue, int minval, int maxval, int ecode)
{ int code, value;
        switch ( code = param_read_int(plist, pname, &value) )
        {
        default:
                return code;
        case 1:
                return ecode;
        case 0:
                if ( value < minval || value > maxval )
                   (*(plist)->procs->signal_error)(plist, pname, (-15));
                *pvalue = value;
                return (ecode < 0 ? ecode : 1);
        }
}

static void
set_bpp(gx_device *pdev, int bits_per_pixel)
{ gx_device_color_info *ci = &pdev->color_info;

  int bpp = bits_per_pixel < 3 ? 1 : bits_per_pixel < 8 ? 3 :
    (bits_per_pixel >> 3) << 3;
  ci->num_components = ((bpp == 1) || (bpp == 8) ? 1 : 3);
  ci->depth = ((bpp > 1) && (bpp < 8) ? 8 : bpp);
  ci->max_gray = (bpp >= 8 ? 255 : 1);
  ci->max_color = (bpp >= 8 ? 255 : bpp > 1 ? 1 : 0);
  ci->dither_grays = (bpp >= 8 ? 5 : 2);
  ci->dither_colors = (bpp >= 8 ? 5 : bpp > 1 ? 2 : 0);
  ((gx_device_mj *) pdev)->colorcomp = (bpp == 8 ? 1 : 4);
}

static void
mj500c_set_bpp(gx_device *pdev, int bits_per_pixel)
{ gx_device_color_info *ci = &pdev->color_info;

  int bpp = bits_per_pixel < 3 ? 1 : bits_per_pixel < 8 ? 3 :
    (bits_per_pixel >> 3) << 3;
  ci->num_components = ((bpp == 1) || (bpp == 8) ? 1 : 3);
  ci->depth = ((bpp > 1) && (bpp < 8) ? 8 : bpp);
  ci->max_gray = (bpp >= 8 ? 255 : 1);
  ci->max_color = (bpp >= 8 ? 255 : bpp > 1 ? 1 : 0);
  ci->dither_grays = (bpp >= 8 ? 5 : 2);
  ci->dither_colors = (bpp >= 8 ? 5 : bpp > 1 ? 2 : 0);
  ((gx_device_mj *) pdev)->colorcomp = (bpp == 8 ? 1 : 3);
}

static gx_color_index
mjc_correct_color(gx_device_printer *pdev, gx_color_index ci)
{
  gx_color_index c, m, y, k, co;
  gx_color_index k2, k3, k4;

  gx_color_index c2, m2, y2, k5, k6, k7, k8;

  const uint cmask = 0xff;
  uint dn = ((gx_device_mj *) pdev)->density;
  uint mjy = ((gx_device_mj *) pdev)->yellow;
  uint mjc = ((gx_device_mj *) pdev)->cyan;
  uint mjm = ((gx_device_mj *) pdev)->magenta;
  uint mjb = ((gx_device_mj *) pdev)->black;
  switch (pdev->color_info.depth) {
 case 8:
    k = ((ci & cmask) * (mjb)) >> 10;
    k = (k < cmask) ? k : cmask;
    k2 = (((ci >> 8) & cmask) * (mjb)) >> 10;
    k2 = (k2 < cmask) ? k2 : cmask;
    k3 = (((ci >> 16) & cmask) * (mjb)) >> 10;
    k3 = (k3 < cmask) ? k3 : cmask;
    k4 = (((ci >> 24) & cmask) * (mjb)) >> 10;
    k4 = (k4 < cmask) ? k4 : cmask;


    if (sizeof(word) == 8)
      {
        k5 = (((ci >> 32) & cmask) * (mjb)) >> 10;
        k5 = (k5 < cmask) ? k5 : cmask;
        k6 = (((ci >> 40) & cmask) * (mjb)) >> 10;
        k6 = (k6 < cmask) ? k6 : cmask;
        k7 = (((ci >> 48) & cmask) * (mjb)) >> 10;
        k7 = (k7 < cmask) ? k7 : cmask;
        k8 = (((ci >> 56) & cmask) * (mjb)) >> 10;
        k8 = (k8 < cmask) ? k8 : cmask;
        co = k + (k2 << 8) + (k3 << 16) + (k4 << 24)
          + (k5 << 32) + (k6 << 40) + (k7 << 48) + (k8 << 56);
        if (ci != co)
          errprintf_nomem("%s\n", "error");
        return co;
      }

    return k + (k2 << 8) + (k3 << 16) + (k << 24);
    break;
 case 32:
    y = ((ci & cmask) * mjy * dn) >> 20;
    y = (y < cmask) ? y : cmask;
    m = (((ci >> 8) & cmask) * mjm * dn) >> 20;
    m = (m < cmask) ? m : cmask;
    c = (((ci >> 16) & cmask) * mjc * dn) >> 20;
    c = (c < cmask) ? c : cmask;
    k = (((ci >> 24) & cmask) * mjb * dn) >> 20;
    k = (k < cmask) ? k : cmask;


    if (sizeof(word) == 8)
      {
        y2 = (((ci >> 32) & cmask) * mjy * dn) >> 20;
        y2 = (y2 < cmask) ? y2 : cmask;
        m2 = (((ci >> 40) & cmask) * mjm * dn) >> 20;
        m2 = (m2 < cmask) ? m2 : cmask;
        c2 = (((ci >> 48) & cmask) * mjc * dn) >> 20;
        c2 = (c2 < cmask) ? c2 : cmask;
        k2 = (((ci >> 56) & cmask) * mjb * dn) >> 20;
        k2 = (k2 < cmask) ? k2 : cmask;

        co = y + (m << 8) + (c << 16) + (k << 24)
          + (y2 << 32) + (m2 << 40) + (c2 << 48) + (k2 << 56);

        return co;
      }

    co = (y + (m << 8) + (c << 16) + (k << 24));

    return co;




    break;
  }
  return ci;
}
