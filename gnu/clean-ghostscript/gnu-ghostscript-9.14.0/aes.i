# 1 "./base/aes.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/aes.c" 2
# 41 "./base/aes.c"
# 1 "./base/string_.h" 1
# 23 "./base/string_.h"
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
# 24 "./base/string_.h" 2








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
# 33 "./base/string_.h" 2
# 42 "./base/aes.c" 2
# 1 "./base/aes.h" 1
# 44 "./base/aes.h"
typedef struct
{
    int nr;
    unsigned long *rk;
    unsigned long buf[68];
}
aes_context;
# 63 "./base/aes.h"
void aes_setkey_enc( aes_context *ctx, const unsigned char *key,
                        int keysize );
# 73 "./base/aes.h"
void aes_setkey_dec( aes_context *ctx, const unsigned char *key,
                        int keysize );
# 84 "./base/aes.h"
void aes_crypt_ecb( aes_context *ctx,
                    int mode,
                    const unsigned char input[16],
                    unsigned char output[16] );
# 99 "./base/aes.h"
void aes_crypt_cbc( aes_context *ctx,
                    int mode,
                    int length,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output );
# 117 "./base/aes.h"
void aes_crypt_cfb( aes_context *ctx,
                    int mode,
                    int length,
                    int *iv_off,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output );






int aes_self_test( int verbose );
# 43 "./base/aes.c" 2
# 73 "./base/aes.c"
static const unsigned char FSb[256] =
{
    0x63, 0x7C, 0x77, 0x7B, 0xF2, 0x6B, 0x6F, 0xC5,
    0x30, 0x01, 0x67, 0x2B, 0xFE, 0xD7, 0xAB, 0x76,
    0xCA, 0x82, 0xC9, 0x7D, 0xFA, 0x59, 0x47, 0xF0,
    0xAD, 0xD4, 0xA2, 0xAF, 0x9C, 0xA4, 0x72, 0xC0,
    0xB7, 0xFD, 0x93, 0x26, 0x36, 0x3F, 0xF7, 0xCC,
    0x34, 0xA5, 0xE5, 0xF1, 0x71, 0xD8, 0x31, 0x15,
    0x04, 0xC7, 0x23, 0xC3, 0x18, 0x96, 0x05, 0x9A,
    0x07, 0x12, 0x80, 0xE2, 0xEB, 0x27, 0xB2, 0x75,
    0x09, 0x83, 0x2C, 0x1A, 0x1B, 0x6E, 0x5A, 0xA0,
    0x52, 0x3B, 0xD6, 0xB3, 0x29, 0xE3, 0x2F, 0x84,
    0x53, 0xD1, 0x00, 0xED, 0x20, 0xFC, 0xB1, 0x5B,
    0x6A, 0xCB, 0xBE, 0x39, 0x4A, 0x4C, 0x58, 0xCF,
    0xD0, 0xEF, 0xAA, 0xFB, 0x43, 0x4D, 0x33, 0x85,
    0x45, 0xF9, 0x02, 0x7F, 0x50, 0x3C, 0x9F, 0xA8,
    0x51, 0xA3, 0x40, 0x8F, 0x92, 0x9D, 0x38, 0xF5,
    0xBC, 0xB6, 0xDA, 0x21, 0x10, 0xFF, 0xF3, 0xD2,
    0xCD, 0x0C, 0x13, 0xEC, 0x5F, 0x97, 0x44, 0x17,
    0xC4, 0xA7, 0x7E, 0x3D, 0x64, 0x5D, 0x19, 0x73,
    0x60, 0x81, 0x4F, 0xDC, 0x22, 0x2A, 0x90, 0x88,
    0x46, 0xEE, 0xB8, 0x14, 0xDE, 0x5E, 0x0B, 0xDB,
    0xE0, 0x32, 0x3A, 0x0A, 0x49, 0x06, 0x24, 0x5C,
    0xC2, 0xD3, 0xAC, 0x62, 0x91, 0x95, 0xE4, 0x79,
    0xE7, 0xC8, 0x37, 0x6D, 0x8D, 0xD5, 0x4E, 0xA9,
    0x6C, 0x56, 0xF4, 0xEA, 0x65, 0x7A, 0xAE, 0x08,
    0xBA, 0x78, 0x25, 0x2E, 0x1C, 0xA6, 0xB4, 0xC6,
    0xE8, 0xDD, 0x74, 0x1F, 0x4B, 0xBD, 0x8B, 0x8A,
    0x70, 0x3E, 0xB5, 0x66, 0x48, 0x03, 0xF6, 0x0E,
    0x61, 0x35, 0x57, 0xB9, 0x86, 0xC1, 0x1D, 0x9E,
    0xE1, 0xF8, 0x98, 0x11, 0x69, 0xD9, 0x8E, 0x94,
    0x9B, 0x1E, 0x87, 0xE9, 0xCE, 0x55, 0x28, 0xDF,
    0x8C, 0xA1, 0x89, 0x0D, 0xBF, 0xE6, 0x42, 0x68,
    0x41, 0x99, 0x2D, 0x0F, 0xB0, 0x54, 0xBB, 0x16
};
# 180 "./base/aes.c"
static const unsigned long FT0[256] = { 0xA56363C6, 0x847C7CF8, 0x997777EE, 0x8D7B7BF6, 0x0DF2F2FF, 0xBD6B6BD6, 0xB16F6FDE, 0x54C5C591, 0x50303060, 0x03010102, 0xA96767CE, 0x7D2B2B56, 0x19FEFEE7, 0x62D7D7B5, 0xE6ABAB4D, 0x9A7676EC, 0x45CACA8F, 0x9D82821F, 0x40C9C989, 0x877D7DFA, 0x15FAFAEF, 0xEB5959B2, 0xC947478E, 0x0BF0F0FB, 0xECADAD41, 0x67D4D4B3, 0xFDA2A25F, 0xEAAFAF45, 0xBF9C9C23, 0xF7A4A453, 0x967272E4, 0x5BC0C09B, 0xC2B7B775, 0x1CFDFDE1, 0xAE93933D, 0x6A26264C, 0x5A36366C, 0x413F3F7E, 0x02F7F7F5, 0x4FCCCC83, 0x5C343468, 0xF4A5A551, 0x34E5E5D1, 0x08F1F1F9, 0x937171E2, 0x73D8D8AB, 0x53313162, 0x3F15152A, 0x0C040408, 0x52C7C795, 0x65232346, 0x5EC3C39D, 0x28181830, 0xA1969637, 0x0F05050A, 0xB59A9A2F, 0x0907070E, 0x36121224, 0x9B80801B, 0x3DE2E2DF, 0x26EBEBCD, 0x6927274E, 0xCDB2B27F, 0x9F7575EA, 0x1B090912, 0x9E83831D, 0x742C2C58, 0x2E1A1A34, 0x2D1B1B36, 0xB26E6EDC, 0xEE5A5AB4, 0xFBA0A05B, 0xF65252A4, 0x4D3B3B76, 0x61D6D6B7, 0xCEB3B37D, 0x7B292952, 0x3EE3E3DD, 0x712F2F5E, 0x97848413, 0xF55353A6, 0x68D1D1B9, 0x00000000, 0x2CEDEDC1, 0x60202040, 0x1FFCFCE3, 0xC8B1B179, 0xED5B5BB6, 0xBE6A6AD4, 0x46CBCB8D, 0xD9BEBE67, 0x4B393972, 0xDE4A4A94, 0xD44C4C98, 0xE85858B0, 0x4ACFCF85, 0x6BD0D0BB, 0x2AEFEFC5, 0xE5AAAA4F, 0x16FBFBED, 0xC5434386, 0xD74D4D9A, 0x55333366, 0x94858511, 0xCF45458A, 0x10F9F9E9, 0x06020204, 0x817F7FFE, 0xF05050A0, 0x443C3C78, 0xBA9F9F25, 0xE3A8A84B, 0xF35151A2, 0xFEA3A35D, 0xC0404080, 0x8A8F8F05, 0xAD92923F, 0xBC9D9D21, 0x48383870, 0x04F5F5F1, 0xDFBCBC63, 0xC1B6B677, 0x75DADAAF, 0x63212142, 0x30101020, 0x1AFFFFE5, 0x0EF3F3FD, 0x6DD2D2BF, 0x4CCDCD81, 0x140C0C18, 0x35131326, 0x2FECECC3, 0xE15F5FBE, 0xA2979735, 0xCC444488, 0x3917172E, 0x57C4C493, 0xF2A7A755, 0x827E7EFC, 0x473D3D7A, 0xAC6464C8, 0xE75D5DBA, 0x2B191932, 0x957373E6, 0xA06060C0, 0x98818119, 0xD14F4F9E, 0x7FDCDCA3, 0x66222244, 0x7E2A2A54, 0xAB90903B, 0x8388880B, 0xCA46468C, 0x29EEEEC7, 0xD3B8B86B, 0x3C141428, 0x79DEDEA7, 0xE25E5EBC, 0x1D0B0B16, 0x76DBDBAD, 0x3BE0E0DB, 0x56323264, 0x4E3A3A74, 0x1E0A0A14, 0xDB494992, 0x0A06060C, 0x6C242448, 0xE45C5CB8, 0x5DC2C29F, 0x6ED3D3BD, 0xEFACAC43, 0xA66262C4, 0xA8919139, 0xA4959531, 0x37E4E4D3, 0x8B7979F2, 0x32E7E7D5, 0x43C8C88B, 0x5937376E, 0xB76D6DDA, 0x8C8D8D01, 0x64D5D5B1, 0xD24E4E9C, 0xE0A9A949, 0xB46C6CD8, 0xFA5656AC, 0x07F4F4F3, 0x25EAEACF, 0xAF6565CA, 0x8E7A7AF4, 0xE9AEAE47, 0x18080810, 0xD5BABA6F, 0x887878F0, 0x6F25254A, 0x722E2E5C, 0x241C1C38, 0xF1A6A657, 0xC7B4B473, 0x51C6C697, 0x23E8E8CB, 0x7CDDDDA1, 0x9C7474E8, 0x211F1F3E, 0xDD4B4B96, 0xDCBDBD61, 0x868B8B0D, 0x858A8A0F, 0x907070E0, 0x423E3E7C, 0xC4B5B571, 0xAA6666CC, 0xD8484890, 0x05030306, 0x01F6F6F7, 0x120E0E1C, 0xA36161C2, 0x5F35356A, 0xF95757AE, 0xD0B9B969, 0x91868617, 0x58C1C199, 0x271D1D3A, 0xB99E9E27, 0x38E1E1D9, 0x13F8F8EB, 0xB398982B, 0x33111122, 0xBB6969D2, 0x70D9D9A9, 0x898E8E07, 0xA7949433, 0xB69B9B2D, 0x221E1E3C, 0x92878715, 0x20E9E9C9, 0x49CECE87, 0xFF5555AA, 0x78282850, 0x7ADFDFA5, 0x8F8C8C03, 0xF8A1A159, 0x80898909, 0x170D0D1A, 0xDABFBF65, 0x31E6E6D7, 0xC6424284, 0xB86868D0, 0xC3414182, 0xB0999929, 0x772D2D5A, 0x110F0F1E, 0xCBB0B07B, 0xFC5454A8, 0xD6BBBB6D, 0x3A16162C };



static const unsigned long FT1[256] = { 0x6363C6A5, 0x7C7CF884, 0x7777EE99, 0x7B7BF68D, 0xF2F2FF0D, 0x6B6BD6BD, 0x6F6FDEB1, 0xC5C59154, 0x30306050, 0x01010203, 0x6767CEA9, 0x2B2B567D, 0xFEFEE719, 0xD7D7B562, 0xABAB4DE6, 0x7676EC9A, 0xCACA8F45, 0x82821F9D, 0xC9C98940, 0x7D7DFA87, 0xFAFAEF15, 0x5959B2EB, 0x47478EC9, 0xF0F0FB0B, 0xADAD41EC, 0xD4D4B367, 0xA2A25FFD, 0xAFAF45EA, 0x9C9C23BF, 0xA4A453F7, 0x7272E496, 0xC0C09B5B, 0xB7B775C2, 0xFDFDE11C, 0x93933DAE, 0x26264C6A, 0x36366C5A, 0x3F3F7E41, 0xF7F7F502, 0xCCCC834F, 0x3434685C, 0xA5A551F4, 0xE5E5D134, 0xF1F1F908, 0x7171E293, 0xD8D8AB73, 0x31316253, 0x15152A3F, 0x0404080C, 0xC7C79552, 0x23234665, 0xC3C39D5E, 0x18183028, 0x969637A1, 0x05050A0F, 0x9A9A2FB5, 0x07070E09, 0x12122436, 0x80801B9B, 0xE2E2DF3D, 0xEBEBCD26, 0x27274E69, 0xB2B27FCD, 0x7575EA9F, 0x0909121B, 0x83831D9E, 0x2C2C5874, 0x1A1A342E, 0x1B1B362D, 0x6E6EDCB2, 0x5A5AB4EE, 0xA0A05BFB, 0x5252A4F6, 0x3B3B764D, 0xD6D6B761, 0xB3B37DCE, 0x2929527B, 0xE3E3DD3E, 0x2F2F5E71, 0x84841397, 0x5353A6F5, 0xD1D1B968, 0x00000000, 0xEDEDC12C, 0x20204060, 0xFCFCE31F, 0xB1B179C8, 0x5B5BB6ED, 0x6A6AD4BE, 0xCBCB8D46, 0xBEBE67D9, 0x3939724B, 0x4A4A94DE, 0x4C4C98D4, 0x5858B0E8, 0xCFCF854A, 0xD0D0BB6B, 0xEFEFC52A, 0xAAAA4FE5, 0xFBFBED16, 0x434386C5, 0x4D4D9AD7, 0x33336655, 0x85851194, 0x45458ACF, 0xF9F9E910, 0x02020406, 0x7F7FFE81, 0x5050A0F0, 0x3C3C7844, 0x9F9F25BA, 0xA8A84BE3, 0x5151A2F3, 0xA3A35DFE, 0x404080C0, 0x8F8F058A, 0x92923FAD, 0x9D9D21BC, 0x38387048, 0xF5F5F104, 0xBCBC63DF, 0xB6B677C1, 0xDADAAF75, 0x21214263, 0x10102030, 0xFFFFE51A, 0xF3F3FD0E, 0xD2D2BF6D, 0xCDCD814C, 0x0C0C1814, 0x13132635, 0xECECC32F, 0x5F5FBEE1, 0x979735A2, 0x444488CC, 0x17172E39, 0xC4C49357, 0xA7A755F2, 0x7E7EFC82, 0x3D3D7A47, 0x6464C8AC, 0x5D5DBAE7, 0x1919322B, 0x7373E695, 0x6060C0A0, 0x81811998, 0x4F4F9ED1, 0xDCDCA37F, 0x22224466, 0x2A2A547E, 0x90903BAB, 0x88880B83, 0x46468CCA, 0xEEEEC729, 0xB8B86BD3, 0x1414283C, 0xDEDEA779, 0x5E5EBCE2, 0x0B0B161D, 0xDBDBAD76, 0xE0E0DB3B, 0x32326456, 0x3A3A744E, 0x0A0A141E, 0x494992DB, 0x06060C0A, 0x2424486C, 0x5C5CB8E4, 0xC2C29F5D, 0xD3D3BD6E, 0xACAC43EF, 0x6262C4A6, 0x919139A8, 0x959531A4, 0xE4E4D337, 0x7979F28B, 0xE7E7D532, 0xC8C88B43, 0x37376E59, 0x6D6DDAB7, 0x8D8D018C, 0xD5D5B164, 0x4E4E9CD2, 0xA9A949E0, 0x6C6CD8B4, 0x5656ACFA, 0xF4F4F307, 0xEAEACF25, 0x6565CAAF, 0x7A7AF48E, 0xAEAE47E9, 0x08081018, 0xBABA6FD5, 0x7878F088, 0x25254A6F, 0x2E2E5C72, 0x1C1C3824, 0xA6A657F1, 0xB4B473C7, 0xC6C69751, 0xE8E8CB23, 0xDDDDA17C, 0x7474E89C, 0x1F1F3E21, 0x4B4B96DD, 0xBDBD61DC, 0x8B8B0D86, 0x8A8A0F85, 0x7070E090, 0x3E3E7C42, 0xB5B571C4, 0x6666CCAA, 0x484890D8, 0x03030605, 0xF6F6F701, 0x0E0E1C12, 0x6161C2A3, 0x35356A5F, 0x5757AEF9, 0xB9B969D0, 0x86861791, 0xC1C19958, 0x1D1D3A27, 0x9E9E27B9, 0xE1E1D938, 0xF8F8EB13, 0x98982BB3, 0x11112233, 0x6969D2BB, 0xD9D9A970, 0x8E8E0789, 0x949433A7, 0x9B9B2DB6, 0x1E1E3C22, 0x87871592, 0xE9E9C920, 0xCECE8749, 0x5555AAFF, 0x28285078, 0xDFDFA57A, 0x8C8C038F, 0xA1A159F8, 0x89890980, 0x0D0D1A17, 0xBFBF65DA, 0xE6E6D731, 0x424284C6, 0x6868D0B8, 0x414182C3, 0x999929B0, 0x2D2D5A77, 0x0F0F1E11, 0xB0B07BCB, 0x5454A8FC, 0xBBBB6DD6, 0x16162C3A };



static const unsigned long FT2[256] = { 0x63C6A563, 0x7CF8847C, 0x77EE9977, 0x7BF68D7B, 0xF2FF0DF2, 0x6BD6BD6B, 0x6FDEB16F, 0xC59154C5, 0x30605030, 0x01020301, 0x67CEA967, 0x2B567D2B, 0xFEE719FE, 0xD7B562D7, 0xAB4DE6AB, 0x76EC9A76, 0xCA8F45CA, 0x821F9D82, 0xC98940C9, 0x7DFA877D, 0xFAEF15FA, 0x59B2EB59, 0x478EC947, 0xF0FB0BF0, 0xAD41ECAD, 0xD4B367D4, 0xA25FFDA2, 0xAF45EAAF, 0x9C23BF9C, 0xA453F7A4, 0x72E49672, 0xC09B5BC0, 0xB775C2B7, 0xFDE11CFD, 0x933DAE93, 0x264C6A26, 0x366C5A36, 0x3F7E413F, 0xF7F502F7, 0xCC834FCC, 0x34685C34, 0xA551F4A5, 0xE5D134E5, 0xF1F908F1, 0x71E29371, 0xD8AB73D8, 0x31625331, 0x152A3F15, 0x04080C04, 0xC79552C7, 0x23466523, 0xC39D5EC3, 0x18302818, 0x9637A196, 0x050A0F05, 0x9A2FB59A, 0x070E0907, 0x12243612, 0x801B9B80, 0xE2DF3DE2, 0xEBCD26EB, 0x274E6927, 0xB27FCDB2, 0x75EA9F75, 0x09121B09, 0x831D9E83, 0x2C58742C, 0x1A342E1A, 0x1B362D1B, 0x6EDCB26E, 0x5AB4EE5A, 0xA05BFBA0, 0x52A4F652, 0x3B764D3B, 0xD6B761D6, 0xB37DCEB3, 0x29527B29, 0xE3DD3EE3, 0x2F5E712F, 0x84139784, 0x53A6F553, 0xD1B968D1, 0x00000000, 0xEDC12CED, 0x20406020, 0xFCE31FFC, 0xB179C8B1, 0x5BB6ED5B, 0x6AD4BE6A, 0xCB8D46CB, 0xBE67D9BE, 0x39724B39, 0x4A94DE4A, 0x4C98D44C, 0x58B0E858, 0xCF854ACF, 0xD0BB6BD0, 0xEFC52AEF, 0xAA4FE5AA, 0xFBED16FB, 0x4386C543, 0x4D9AD74D, 0x33665533, 0x85119485, 0x458ACF45, 0xF9E910F9, 0x02040602, 0x7FFE817F, 0x50A0F050, 0x3C78443C, 0x9F25BA9F, 0xA84BE3A8, 0x51A2F351, 0xA35DFEA3, 0x4080C040, 0x8F058A8F, 0x923FAD92, 0x9D21BC9D, 0x38704838, 0xF5F104F5, 0xBC63DFBC, 0xB677C1B6, 0xDAAF75DA, 0x21426321, 0x10203010, 0xFFE51AFF, 0xF3FD0EF3, 0xD2BF6DD2, 0xCD814CCD, 0x0C18140C, 0x13263513, 0xECC32FEC, 0x5FBEE15F, 0x9735A297, 0x4488CC44, 0x172E3917, 0xC49357C4, 0xA755F2A7, 0x7EFC827E, 0x3D7A473D, 0x64C8AC64, 0x5DBAE75D, 0x19322B19, 0x73E69573, 0x60C0A060, 0x81199881, 0x4F9ED14F, 0xDCA37FDC, 0x22446622, 0x2A547E2A, 0x903BAB90, 0x880B8388, 0x468CCA46, 0xEEC729EE, 0xB86BD3B8, 0x14283C14, 0xDEA779DE, 0x5EBCE25E, 0x0B161D0B, 0xDBAD76DB, 0xE0DB3BE0, 0x32645632, 0x3A744E3A, 0x0A141E0A, 0x4992DB49, 0x060C0A06, 0x24486C24, 0x5CB8E45C, 0xC29F5DC2, 0xD3BD6ED3, 0xAC43EFAC, 0x62C4A662, 0x9139A891, 0x9531A495, 0xE4D337E4, 0x79F28B79, 0xE7D532E7, 0xC88B43C8, 0x376E5937, 0x6DDAB76D, 0x8D018C8D, 0xD5B164D5, 0x4E9CD24E, 0xA949E0A9, 0x6CD8B46C, 0x56ACFA56, 0xF4F307F4, 0xEACF25EA, 0x65CAAF65, 0x7AF48E7A, 0xAE47E9AE, 0x08101808, 0xBA6FD5BA, 0x78F08878, 0x254A6F25, 0x2E5C722E, 0x1C38241C, 0xA657F1A6, 0xB473C7B4, 0xC69751C6, 0xE8CB23E8, 0xDDA17CDD, 0x74E89C74, 0x1F3E211F, 0x4B96DD4B, 0xBD61DCBD, 0x8B0D868B, 0x8A0F858A, 0x70E09070, 0x3E7C423E, 0xB571C4B5, 0x66CCAA66, 0x4890D848, 0x03060503, 0xF6F701F6, 0x0E1C120E, 0x61C2A361, 0x356A5F35, 0x57AEF957, 0xB969D0B9, 0x86179186, 0xC19958C1, 0x1D3A271D, 0x9E27B99E, 0xE1D938E1, 0xF8EB13F8, 0x982BB398, 0x11223311, 0x69D2BB69, 0xD9A970D9, 0x8E07898E, 0x9433A794, 0x9B2DB69B, 0x1E3C221E, 0x87159287, 0xE9C920E9, 0xCE8749CE, 0x55AAFF55, 0x28507828, 0xDFA57ADF, 0x8C038F8C, 0xA159F8A1, 0x89098089, 0x0D1A170D, 0xBF65DABF, 0xE6D731E6, 0x4284C642, 0x68D0B868, 0x4182C341, 0x9929B099, 0x2D5A772D, 0x0F1E110F, 0xB07BCBB0, 0x54A8FC54, 0xBB6DD6BB, 0x162C3A16 };



static const unsigned long FT3[256] = { 0xC6A56363, 0xF8847C7C, 0xEE997777, 0xF68D7B7B, 0xFF0DF2F2, 0xD6BD6B6B, 0xDEB16F6F, 0x9154C5C5, 0x60503030, 0x02030101, 0xCEA96767, 0x567D2B2B, 0xE719FEFE, 0xB562D7D7, 0x4DE6ABAB, 0xEC9A7676, 0x8F45CACA, 0x1F9D8282, 0x8940C9C9, 0xFA877D7D, 0xEF15FAFA, 0xB2EB5959, 0x8EC94747, 0xFB0BF0F0, 0x41ECADAD, 0xB367D4D4, 0x5FFDA2A2, 0x45EAAFAF, 0x23BF9C9C, 0x53F7A4A4, 0xE4967272, 0x9B5BC0C0, 0x75C2B7B7, 0xE11CFDFD, 0x3DAE9393, 0x4C6A2626, 0x6C5A3636, 0x7E413F3F, 0xF502F7F7, 0x834FCCCC, 0x685C3434, 0x51F4A5A5, 0xD134E5E5, 0xF908F1F1, 0xE2937171, 0xAB73D8D8, 0x62533131, 0x2A3F1515, 0x080C0404, 0x9552C7C7, 0x46652323, 0x9D5EC3C3, 0x30281818, 0x37A19696, 0x0A0F0505, 0x2FB59A9A, 0x0E090707, 0x24361212, 0x1B9B8080, 0xDF3DE2E2, 0xCD26EBEB, 0x4E692727, 0x7FCDB2B2, 0xEA9F7575, 0x121B0909, 0x1D9E8383, 0x58742C2C, 0x342E1A1A, 0x362D1B1B, 0xDCB26E6E, 0xB4EE5A5A, 0x5BFBA0A0, 0xA4F65252, 0x764D3B3B, 0xB761D6D6, 0x7DCEB3B3, 0x527B2929, 0xDD3EE3E3, 0x5E712F2F, 0x13978484, 0xA6F55353, 0xB968D1D1, 0x00000000, 0xC12CEDED, 0x40602020, 0xE31FFCFC, 0x79C8B1B1, 0xB6ED5B5B, 0xD4BE6A6A, 0x8D46CBCB, 0x67D9BEBE, 0x724B3939, 0x94DE4A4A, 0x98D44C4C, 0xB0E85858, 0x854ACFCF, 0xBB6BD0D0, 0xC52AEFEF, 0x4FE5AAAA, 0xED16FBFB, 0x86C54343, 0x9AD74D4D, 0x66553333, 0x11948585, 0x8ACF4545, 0xE910F9F9, 0x04060202, 0xFE817F7F, 0xA0F05050, 0x78443C3C, 0x25BA9F9F, 0x4BE3A8A8, 0xA2F35151, 0x5DFEA3A3, 0x80C04040, 0x058A8F8F, 0x3FAD9292, 0x21BC9D9D, 0x70483838, 0xF104F5F5, 0x63DFBCBC, 0x77C1B6B6, 0xAF75DADA, 0x42632121, 0x20301010, 0xE51AFFFF, 0xFD0EF3F3, 0xBF6DD2D2, 0x814CCDCD, 0x18140C0C, 0x26351313, 0xC32FECEC, 0xBEE15F5F, 0x35A29797, 0x88CC4444, 0x2E391717, 0x9357C4C4, 0x55F2A7A7, 0xFC827E7E, 0x7A473D3D, 0xC8AC6464, 0xBAE75D5D, 0x322B1919, 0xE6957373, 0xC0A06060, 0x19988181, 0x9ED14F4F, 0xA37FDCDC, 0x44662222, 0x547E2A2A, 0x3BAB9090, 0x0B838888, 0x8CCA4646, 0xC729EEEE, 0x6BD3B8B8, 0x283C1414, 0xA779DEDE, 0xBCE25E5E, 0x161D0B0B, 0xAD76DBDB, 0xDB3BE0E0, 0x64563232, 0x744E3A3A, 0x141E0A0A, 0x92DB4949, 0x0C0A0606, 0x486C2424, 0xB8E45C5C, 0x9F5DC2C2, 0xBD6ED3D3, 0x43EFACAC, 0xC4A66262, 0x39A89191, 0x31A49595, 0xD337E4E4, 0xF28B7979, 0xD532E7E7, 0x8B43C8C8, 0x6E593737, 0xDAB76D6D, 0x018C8D8D, 0xB164D5D5, 0x9CD24E4E, 0x49E0A9A9, 0xD8B46C6C, 0xACFA5656, 0xF307F4F4, 0xCF25EAEA, 0xCAAF6565, 0xF48E7A7A, 0x47E9AEAE, 0x10180808, 0x6FD5BABA, 0xF0887878, 0x4A6F2525, 0x5C722E2E, 0x38241C1C, 0x57F1A6A6, 0x73C7B4B4, 0x9751C6C6, 0xCB23E8E8, 0xA17CDDDD, 0xE89C7474, 0x3E211F1F, 0x96DD4B4B, 0x61DCBDBD, 0x0D868B8B, 0x0F858A8A, 0xE0907070, 0x7C423E3E, 0x71C4B5B5, 0xCCAA6666, 0x90D84848, 0x06050303, 0xF701F6F6, 0x1C120E0E, 0xC2A36161, 0x6A5F3535, 0xAEF95757, 0x69D0B9B9, 0x17918686, 0x9958C1C1, 0x3A271D1D, 0x27B99E9E, 0xD938E1E1, 0xEB13F8F8, 0x2BB39898, 0x22331111, 0xD2BB6969, 0xA970D9D9, 0x07898E8E, 0x33A79494, 0x2DB69B9B, 0x3C221E1E, 0x15928787, 0xC920E9E9, 0x8749CECE, 0xAAFF5555, 0x50782828, 0xA57ADFDF, 0x038F8C8C, 0x59F8A1A1, 0x09808989, 0x1A170D0D, 0x65DABFBF, 0xD731E6E6, 0x84C64242, 0xD0B86868, 0x82C34141, 0x29B09999, 0x5A772D2D, 0x1E110F0F, 0x7BCBB0B0, 0xA8FC5454, 0x6DD6BBBB, 0x2C3A1616 };







static const unsigned char RSb[256] =
{
    0x52, 0x09, 0x6A, 0xD5, 0x30, 0x36, 0xA5, 0x38,
    0xBF, 0x40, 0xA3, 0x9E, 0x81, 0xF3, 0xD7, 0xFB,
    0x7C, 0xE3, 0x39, 0x82, 0x9B, 0x2F, 0xFF, 0x87,
    0x34, 0x8E, 0x43, 0x44, 0xC4, 0xDE, 0xE9, 0xCB,
    0x54, 0x7B, 0x94, 0x32, 0xA6, 0xC2, 0x23, 0x3D,
    0xEE, 0x4C, 0x95, 0x0B, 0x42, 0xFA, 0xC3, 0x4E,
    0x08, 0x2E, 0xA1, 0x66, 0x28, 0xD9, 0x24, 0xB2,
    0x76, 0x5B, 0xA2, 0x49, 0x6D, 0x8B, 0xD1, 0x25,
    0x72, 0xF8, 0xF6, 0x64, 0x86, 0x68, 0x98, 0x16,
    0xD4, 0xA4, 0x5C, 0xCC, 0x5D, 0x65, 0xB6, 0x92,
    0x6C, 0x70, 0x48, 0x50, 0xFD, 0xED, 0xB9, 0xDA,
    0x5E, 0x15, 0x46, 0x57, 0xA7, 0x8D, 0x9D, 0x84,
    0x90, 0xD8, 0xAB, 0x00, 0x8C, 0xBC, 0xD3, 0x0A,
    0xF7, 0xE4, 0x58, 0x05, 0xB8, 0xB3, 0x45, 0x06,
    0xD0, 0x2C, 0x1E, 0x8F, 0xCA, 0x3F, 0x0F, 0x02,
    0xC1, 0xAF, 0xBD, 0x03, 0x01, 0x13, 0x8A, 0x6B,
    0x3A, 0x91, 0x11, 0x41, 0x4F, 0x67, 0xDC, 0xEA,
    0x97, 0xF2, 0xCF, 0xCE, 0xF0, 0xB4, 0xE6, 0x73,
    0x96, 0xAC, 0x74, 0x22, 0xE7, 0xAD, 0x35, 0x85,
    0xE2, 0xF9, 0x37, 0xE8, 0x1C, 0x75, 0xDF, 0x6E,
    0x47, 0xF1, 0x1A, 0x71, 0x1D, 0x29, 0xC5, 0x89,
    0x6F, 0xB7, 0x62, 0x0E, 0xAA, 0x18, 0xBE, 0x1B,
    0xFC, 0x56, 0x3E, 0x4B, 0xC6, 0xD2, 0x79, 0x20,
    0x9A, 0xDB, 0xC0, 0xFE, 0x78, 0xCD, 0x5A, 0xF4,
    0x1F, 0xDD, 0xA8, 0x33, 0x88, 0x07, 0xC7, 0x31,
    0xB1, 0x12, 0x10, 0x59, 0x27, 0x80, 0xEC, 0x5F,
    0x60, 0x51, 0x7F, 0xA9, 0x19, 0xB5, 0x4A, 0x0D,
    0x2D, 0xE5, 0x7A, 0x9F, 0x93, 0xC9, 0x9C, 0xEF,
    0xA0, 0xE0, 0x3B, 0x4D, 0xAE, 0x2A, 0xF5, 0xB0,
    0xC8, 0xEB, 0xBB, 0x3C, 0x83, 0x53, 0x99, 0x61,
    0x17, 0x2B, 0x04, 0x7E, 0xBA, 0x77, 0xD6, 0x26,
    0xE1, 0x69, 0x14, 0x63, 0x55, 0x21, 0x0C, 0x7D
};
# 307 "./base/aes.c"
static const unsigned long RT0[256] = { 0x50A7F451, 0x5365417E, 0xC3A4171A, 0x965E273A, 0xCB6BAB3B, 0xF1459D1F, 0xAB58FAAC, 0x9303E34B, 0x55FA3020, 0xF66D76AD, 0x9176CC88, 0x254C02F5, 0xFCD7E54F, 0xD7CB2AC5, 0x80443526, 0x8FA362B5, 0x495AB1DE, 0x671BBA25, 0x980EEA45, 0xE1C0FE5D, 0x02752FC3, 0x12F04C81, 0xA397468D, 0xC6F9D36B, 0xE75F8F03, 0x959C9215, 0xEB7A6DBF, 0xDA595295, 0x2D83BED4, 0xD3217458, 0x2969E049, 0x44C8C98E, 0x6A89C275, 0x78798EF4, 0x6B3E5899, 0xDD71B927, 0xB64FE1BE, 0x17AD88F0, 0x66AC20C9, 0xB43ACE7D, 0x184ADF63, 0x82311AE5, 0x60335197, 0x457F5362, 0xE07764B1, 0x84AE6BBB, 0x1CA081FE, 0x942B08F9, 0x58684870, 0x19FD458F, 0x876CDE94, 0xB7F87B52, 0x23D373AB, 0xE2024B72, 0x578F1FE3, 0x2AAB5566, 0x0728EBB2, 0x03C2B52F, 0x9A7BC586, 0xA50837D3, 0xF2872830, 0xB2A5BF23, 0xBA6A0302, 0x5C8216ED, 0x2B1CCF8A, 0x92B479A7, 0xF0F207F3, 0xA1E2694E, 0xCDF4DA65, 0xD5BE0506, 0x1F6234D1, 0x8AFEA6C4, 0x9D532E34, 0xA055F3A2, 0x32E18A05, 0x75EBF6A4, 0x39EC830B, 0xAAEF6040, 0x069F715E, 0x51106EBD, 0xF98A213E, 0x3D06DD96, 0xAE053EDD, 0x46BDE64D, 0xB58D5491, 0x055DC471, 0x6FD40604, 0xFF155060, 0x24FB9819, 0x97E9BDD6, 0xCC434089, 0x779ED967, 0xBD42E8B0, 0x888B8907, 0x385B19E7, 0xDBEEC879, 0x470A7CA1, 0xE90F427C, 0xC91E84F8, 0x00000000, 0x83868009, 0x48ED2B32, 0xAC70111E, 0x4E725A6C, 0xFBFF0EFD, 0x5638850F, 0x1ED5AE3D, 0x27392D36, 0x64D90F0A, 0x21A65C68, 0xD1545B9B, 0x3A2E3624, 0xB1670A0C, 0x0FE75793, 0xD296EEB4, 0x9E919B1B, 0x4FC5C080, 0xA220DC61, 0x694B775A, 0x161A121C, 0x0ABA93E2, 0xE52AA0C0, 0x43E0223C, 0x1D171B12, 0x0B0D090E, 0xADC78BF2, 0xB9A8B62D, 0xC8A91E14, 0x8519F157, 0x4C0775AF, 0xBBDD99EE, 0xFD607FA3, 0x9F2601F7, 0xBCF5725C, 0xC53B6644, 0x347EFB5B, 0x7629438B, 0xDCC623CB, 0x68FCEDB6, 0x63F1E4B8, 0xCADC31D7, 0x10856342, 0x40229713, 0x2011C684, 0x7D244A85, 0xF83DBBD2, 0x1132F9AE, 0x6DA129C7, 0x4B2F9E1D, 0xF330B2DC, 0xEC52860D, 0xD0E3C177, 0x6C16B32B, 0x99B970A9, 0xFA489411, 0x2264E947, 0xC48CFCA8, 0x1A3FF0A0, 0xD82C7D56, 0xEF903322, 0xC74E4987, 0xC1D138D9, 0xFEA2CA8C, 0x360BD498, 0xCF81F5A6, 0x28DE7AA5, 0x268EB7DA, 0xA4BFAD3F, 0xE49D3A2C, 0x0D927850, 0x9BCC5F6A, 0x62467E54, 0xC2138DF6, 0xE8B8D890, 0x5EF7392E, 0xF5AFC382, 0xBE805D9F, 0x7C93D069, 0xA92DD56F, 0xB31225CF, 0x3B99ACC8, 0xA77D1810, 0x6E639CE8, 0x7BBB3BDB, 0x097826CD, 0xF418596E, 0x01B79AEC, 0xA89A4F83, 0x656E95E6, 0x7EE6FFAA, 0x08CFBC21, 0xE6E815EF, 0xD99BE7BA, 0xCE366F4A, 0xD4099FEA, 0xD67CB029, 0xAFB2A431, 0x31233F2A, 0x3094A5C6, 0xC066A235, 0x37BC4E74, 0xA6CA82FC, 0xB0D090E0, 0x15D8A733, 0x4A9804F1, 0xF7DAEC41, 0x0E50CD7F, 0x2FF69117, 0x8DD64D76, 0x4DB0EF43, 0x544DAACC, 0xDF0496E4, 0xE3B5D19E, 0x1B886A4C, 0xB81F2CC1, 0x7F516546, 0x04EA5E9D, 0x5D358C01, 0x737487FA, 0x2E410BFB, 0x5A1D67B3, 0x52D2DB92, 0x335610E9, 0x1347D66D, 0x8C61D79A, 0x7A0CA137, 0x8E14F859, 0x893C13EB, 0xEE27A9CE, 0x35C961B7, 0xEDE51CE1, 0x3CB1477A, 0x59DFD29C, 0x3F73F255, 0x79CE1418, 0xBF37C773, 0xEACDF753, 0x5BAAFD5F, 0x146F3DDF, 0x86DB4478, 0x81F3AFCA, 0x3EC468B9, 0x2C342438, 0x5F40A3C2, 0x72C31D16, 0x0C25E2BC, 0x8B493C28, 0x41950DFF, 0x7101A839, 0xDEB30C08, 0x9CE4B4D8, 0x90C15664, 0x6184CB7B, 0x70B632D5, 0x745C6C48, 0x4257B8D0 };



static const unsigned long RT1[256] = { 0xA7F45150, 0x65417E53, 0xA4171AC3, 0x5E273A96, 0x6BAB3BCB, 0x459D1FF1, 0x58FAACAB, 0x03E34B93, 0xFA302055, 0x6D76ADF6, 0x76CC8891, 0x4C02F525, 0xD7E54FFC, 0xCB2AC5D7, 0x44352680, 0xA362B58F, 0x5AB1DE49, 0x1BBA2567, 0x0EEA4598, 0xC0FE5DE1, 0x752FC302, 0xF04C8112, 0x97468DA3, 0xF9D36BC6, 0x5F8F03E7, 0x9C921595, 0x7A6DBFEB, 0x595295DA, 0x83BED42D, 0x217458D3, 0x69E04929, 0xC8C98E44, 0x89C2756A, 0x798EF478, 0x3E58996B, 0x71B927DD, 0x4FE1BEB6, 0xAD88F017, 0xAC20C966, 0x3ACE7DB4, 0x4ADF6318, 0x311AE582, 0x33519760, 0x7F536245, 0x7764B1E0, 0xAE6BBB84, 0xA081FE1C, 0x2B08F994, 0x68487058, 0xFD458F19, 0x6CDE9487, 0xF87B52B7, 0xD373AB23, 0x024B72E2, 0x8F1FE357, 0xAB55662A, 0x28EBB207, 0xC2B52F03, 0x7BC5869A, 0x0837D3A5, 0x872830F2, 0xA5BF23B2, 0x6A0302BA, 0x8216ED5C, 0x1CCF8A2B, 0xB479A792, 0xF207F3F0, 0xE2694EA1, 0xF4DA65CD, 0xBE0506D5, 0x6234D11F, 0xFEA6C48A, 0x532E349D, 0x55F3A2A0, 0xE18A0532, 0xEBF6A475, 0xEC830B39, 0xEF6040AA, 0x9F715E06, 0x106EBD51, 0x8A213EF9, 0x06DD963D, 0x053EDDAE, 0xBDE64D46, 0x8D5491B5, 0x5DC47105, 0xD406046F, 0x155060FF, 0xFB981924, 0xE9BDD697, 0x434089CC, 0x9ED96777, 0x42E8B0BD, 0x8B890788, 0x5B19E738, 0xEEC879DB, 0x0A7CA147, 0x0F427CE9, 0x1E84F8C9, 0x00000000, 0x86800983, 0xED2B3248, 0x70111EAC, 0x725A6C4E, 0xFF0EFDFB, 0x38850F56, 0xD5AE3D1E, 0x392D3627, 0xD90F0A64, 0xA65C6821, 0x545B9BD1, 0x2E36243A, 0x670A0CB1, 0xE757930F, 0x96EEB4D2, 0x919B1B9E, 0xC5C0804F, 0x20DC61A2, 0x4B775A69, 0x1A121C16, 0xBA93E20A, 0x2AA0C0E5, 0xE0223C43, 0x171B121D, 0x0D090E0B, 0xC78BF2AD, 0xA8B62DB9, 0xA91E14C8, 0x19F15785, 0x0775AF4C, 0xDD99EEBB, 0x607FA3FD, 0x2601F79F, 0xF5725CBC, 0x3B6644C5, 0x7EFB5B34, 0x29438B76, 0xC623CBDC, 0xFCEDB668, 0xF1E4B863, 0xDC31D7CA, 0x85634210, 0x22971340, 0x11C68420, 0x244A857D, 0x3DBBD2F8, 0x32F9AE11, 0xA129C76D, 0x2F9E1D4B, 0x30B2DCF3, 0x52860DEC, 0xE3C177D0, 0x16B32B6C, 0xB970A999, 0x489411FA, 0x64E94722, 0x8CFCA8C4, 0x3FF0A01A, 0x2C7D56D8, 0x903322EF, 0x4E4987C7, 0xD138D9C1, 0xA2CA8CFE, 0x0BD49836, 0x81F5A6CF, 0xDE7AA528, 0x8EB7DA26, 0xBFAD3FA4, 0x9D3A2CE4, 0x9278500D, 0xCC5F6A9B, 0x467E5462, 0x138DF6C2, 0xB8D890E8, 0xF7392E5E, 0xAFC382F5, 0x805D9FBE, 0x93D0697C, 0x2DD56FA9, 0x1225CFB3, 0x99ACC83B, 0x7D1810A7, 0x639CE86E, 0xBB3BDB7B, 0x7826CD09, 0x18596EF4, 0xB79AEC01, 0x9A4F83A8, 0x6E95E665, 0xE6FFAA7E, 0xCFBC2108, 0xE815EFE6, 0x9BE7BAD9, 0x366F4ACE, 0x099FEAD4, 0x7CB029D6, 0xB2A431AF, 0x233F2A31, 0x94A5C630, 0x66A235C0, 0xBC4E7437, 0xCA82FCA6, 0xD090E0B0, 0xD8A73315, 0x9804F14A, 0xDAEC41F7, 0x50CD7F0E, 0xF691172F, 0xD64D768D, 0xB0EF434D, 0x4DAACC54, 0x0496E4DF, 0xB5D19EE3, 0x886A4C1B, 0x1F2CC1B8, 0x5165467F, 0xEA5E9D04, 0x358C015D, 0x7487FA73, 0x410BFB2E, 0x1D67B35A, 0xD2DB9252, 0x5610E933, 0x47D66D13, 0x61D79A8C, 0x0CA1377A, 0x14F8598E, 0x3C13EB89, 0x27A9CEEE, 0xC961B735, 0xE51CE1ED, 0xB1477A3C, 0xDFD29C59, 0x73F2553F, 0xCE141879, 0x37C773BF, 0xCDF753EA, 0xAAFD5F5B, 0x6F3DDF14, 0xDB447886, 0xF3AFCA81, 0xC468B93E, 0x3424382C, 0x40A3C25F, 0xC31D1672, 0x25E2BC0C, 0x493C288B, 0x950DFF41, 0x01A83971, 0xB30C08DE, 0xE4B4D89C, 0xC1566490, 0x84CB7B61, 0xB632D570, 0x5C6C4874, 0x57B8D042 };



static const unsigned long RT2[256] = { 0xF45150A7, 0x417E5365, 0x171AC3A4, 0x273A965E, 0xAB3BCB6B, 0x9D1FF145, 0xFAACAB58, 0xE34B9303, 0x302055FA, 0x76ADF66D, 0xCC889176, 0x02F5254C, 0xE54FFCD7, 0x2AC5D7CB, 0x35268044, 0x62B58FA3, 0xB1DE495A, 0xBA25671B, 0xEA45980E, 0xFE5DE1C0, 0x2FC30275, 0x4C8112F0, 0x468DA397, 0xD36BC6F9, 0x8F03E75F, 0x9215959C, 0x6DBFEB7A, 0x5295DA59, 0xBED42D83, 0x7458D321, 0xE0492969, 0xC98E44C8, 0xC2756A89, 0x8EF47879, 0x58996B3E, 0xB927DD71, 0xE1BEB64F, 0x88F017AD, 0x20C966AC, 0xCE7DB43A, 0xDF63184A, 0x1AE58231, 0x51976033, 0x5362457F, 0x64B1E077, 0x6BBB84AE, 0x81FE1CA0, 0x08F9942B, 0x48705868, 0x458F19FD, 0xDE94876C, 0x7B52B7F8, 0x73AB23D3, 0x4B72E202, 0x1FE3578F, 0x55662AAB, 0xEBB20728, 0xB52F03C2, 0xC5869A7B, 0x37D3A508, 0x2830F287, 0xBF23B2A5, 0x0302BA6A, 0x16ED5C82, 0xCF8A2B1C, 0x79A792B4, 0x07F3F0F2, 0x694EA1E2, 0xDA65CDF4, 0x0506D5BE, 0x34D11F62, 0xA6C48AFE, 0x2E349D53, 0xF3A2A055, 0x8A0532E1, 0xF6A475EB, 0x830B39EC, 0x6040AAEF, 0x715E069F, 0x6EBD5110, 0x213EF98A, 0xDD963D06, 0x3EDDAE05, 0xE64D46BD, 0x5491B58D, 0xC471055D, 0x06046FD4, 0x5060FF15, 0x981924FB, 0xBDD697E9, 0x4089CC43, 0xD967779E, 0xE8B0BD42, 0x8907888B, 0x19E7385B, 0xC879DBEE, 0x7CA1470A, 0x427CE90F, 0x84F8C91E, 0x00000000, 0x80098386, 0x2B3248ED, 0x111EAC70, 0x5A6C4E72, 0x0EFDFBFF, 0x850F5638, 0xAE3D1ED5, 0x2D362739, 0x0F0A64D9, 0x5C6821A6, 0x5B9BD154, 0x36243A2E, 0x0A0CB167, 0x57930FE7, 0xEEB4D296, 0x9B1B9E91, 0xC0804FC5, 0xDC61A220, 0x775A694B, 0x121C161A, 0x93E20ABA, 0xA0C0E52A, 0x223C43E0, 0x1B121D17, 0x090E0B0D, 0x8BF2ADC7, 0xB62DB9A8, 0x1E14C8A9, 0xF1578519, 0x75AF4C07, 0x99EEBBDD, 0x7FA3FD60, 0x01F79F26, 0x725CBCF5, 0x6644C53B, 0xFB5B347E, 0x438B7629, 0x23CBDCC6, 0xEDB668FC, 0xE4B863F1, 0x31D7CADC, 0x63421085, 0x97134022, 0xC6842011, 0x4A857D24, 0xBBD2F83D, 0xF9AE1132, 0x29C76DA1, 0x9E1D4B2F, 0xB2DCF330, 0x860DEC52, 0xC177D0E3, 0xB32B6C16, 0x70A999B9, 0x9411FA48, 0xE9472264, 0xFCA8C48C, 0xF0A01A3F, 0x7D56D82C, 0x3322EF90, 0x4987C74E, 0x38D9C1D1, 0xCA8CFEA2, 0xD498360B, 0xF5A6CF81, 0x7AA528DE, 0xB7DA268E, 0xAD3FA4BF, 0x3A2CE49D, 0x78500D92, 0x5F6A9BCC, 0x7E546246, 0x8DF6C213, 0xD890E8B8, 0x392E5EF7, 0xC382F5AF, 0x5D9FBE80, 0xD0697C93, 0xD56FA92D, 0x25CFB312, 0xACC83B99, 0x1810A77D, 0x9CE86E63, 0x3BDB7BBB, 0x26CD0978, 0x596EF418, 0x9AEC01B7, 0x4F83A89A, 0x95E6656E, 0xFFAA7EE6, 0xBC2108CF, 0x15EFE6E8, 0xE7BAD99B, 0x6F4ACE36, 0x9FEAD409, 0xB029D67C, 0xA431AFB2, 0x3F2A3123, 0xA5C63094, 0xA235C066, 0x4E7437BC, 0x82FCA6CA, 0x90E0B0D0, 0xA73315D8, 0x04F14A98, 0xEC41F7DA, 0xCD7F0E50, 0x91172FF6, 0x4D768DD6, 0xEF434DB0, 0xAACC544D, 0x96E4DF04, 0xD19EE3B5, 0x6A4C1B88, 0x2CC1B81F, 0x65467F51, 0x5E9D04EA, 0x8C015D35, 0x87FA7374, 0x0BFB2E41, 0x67B35A1D, 0xDB9252D2, 0x10E93356, 0xD66D1347, 0xD79A8C61, 0xA1377A0C, 0xF8598E14, 0x13EB893C, 0xA9CEEE27, 0x61B735C9, 0x1CE1EDE5, 0x477A3CB1, 0xD29C59DF, 0xF2553F73, 0x141879CE, 0xC773BF37, 0xF753EACD, 0xFD5F5BAA, 0x3DDF146F, 0x447886DB, 0xAFCA81F3, 0x68B93EC4, 0x24382C34, 0xA3C25F40, 0x1D1672C3, 0xE2BC0C25, 0x3C288B49, 0x0DFF4195, 0xA8397101, 0x0C08DEB3, 0xB4D89CE4, 0x566490C1, 0xCB7B6184, 0x32D570B6, 0x6C48745C, 0xB8D04257 };



static const unsigned long RT3[256] = { 0x5150A7F4, 0x7E536541, 0x1AC3A417, 0x3A965E27, 0x3BCB6BAB, 0x1FF1459D, 0xACAB58FA, 0x4B9303E3, 0x2055FA30, 0xADF66D76, 0x889176CC, 0xF5254C02, 0x4FFCD7E5, 0xC5D7CB2A, 0x26804435, 0xB58FA362, 0xDE495AB1, 0x25671BBA, 0x45980EEA, 0x5DE1C0FE, 0xC302752F, 0x8112F04C, 0x8DA39746, 0x6BC6F9D3, 0x03E75F8F, 0x15959C92, 0xBFEB7A6D, 0x95DA5952, 0xD42D83BE, 0x58D32174, 0x492969E0, 0x8E44C8C9, 0x756A89C2, 0xF478798E, 0x996B3E58, 0x27DD71B9, 0xBEB64FE1, 0xF017AD88, 0xC966AC20, 0x7DB43ACE, 0x63184ADF, 0xE582311A, 0x97603351, 0x62457F53, 0xB1E07764, 0xBB84AE6B, 0xFE1CA081, 0xF9942B08, 0x70586848, 0x8F19FD45, 0x94876CDE, 0x52B7F87B, 0xAB23D373, 0x72E2024B, 0xE3578F1F, 0x662AAB55, 0xB20728EB, 0x2F03C2B5, 0x869A7BC5, 0xD3A50837, 0x30F28728, 0x23B2A5BF, 0x02BA6A03, 0xED5C8216, 0x8A2B1CCF, 0xA792B479, 0xF3F0F207, 0x4EA1E269, 0x65CDF4DA, 0x06D5BE05, 0xD11F6234, 0xC48AFEA6, 0x349D532E, 0xA2A055F3, 0x0532E18A, 0xA475EBF6, 0x0B39EC83, 0x40AAEF60, 0x5E069F71, 0xBD51106E, 0x3EF98A21, 0x963D06DD, 0xDDAE053E, 0x4D46BDE6, 0x91B58D54, 0x71055DC4, 0x046FD406, 0x60FF1550, 0x1924FB98, 0xD697E9BD, 0x89CC4340, 0x67779ED9, 0xB0BD42E8, 0x07888B89, 0xE7385B19, 0x79DBEEC8, 0xA1470A7C, 0x7CE90F42, 0xF8C91E84, 0x00000000, 0x09838680, 0x3248ED2B, 0x1EAC7011, 0x6C4E725A, 0xFDFBFF0E, 0x0F563885, 0x3D1ED5AE, 0x3627392D, 0x0A64D90F, 0x6821A65C, 0x9BD1545B, 0x243A2E36, 0x0CB1670A, 0x930FE757, 0xB4D296EE, 0x1B9E919B, 0x804FC5C0, 0x61A220DC, 0x5A694B77, 0x1C161A12, 0xE20ABA93, 0xC0E52AA0, 0x3C43E022, 0x121D171B, 0x0E0B0D09, 0xF2ADC78B, 0x2DB9A8B6, 0x14C8A91E, 0x578519F1, 0xAF4C0775, 0xEEBBDD99, 0xA3FD607F, 0xF79F2601, 0x5CBCF572, 0x44C53B66, 0x5B347EFB, 0x8B762943, 0xCBDCC623, 0xB668FCED, 0xB863F1E4, 0xD7CADC31, 0x42108563, 0x13402297, 0x842011C6, 0x857D244A, 0xD2F83DBB, 0xAE1132F9, 0xC76DA129, 0x1D4B2F9E, 0xDCF330B2, 0x0DEC5286, 0x77D0E3C1, 0x2B6C16B3, 0xA999B970, 0x11FA4894, 0x472264E9, 0xA8C48CFC, 0xA01A3FF0, 0x56D82C7D, 0x22EF9033, 0x87C74E49, 0xD9C1D138, 0x8CFEA2CA, 0x98360BD4, 0xA6CF81F5, 0xA528DE7A, 0xDA268EB7, 0x3FA4BFAD, 0x2CE49D3A, 0x500D9278, 0x6A9BCC5F, 0x5462467E, 0xF6C2138D, 0x90E8B8D8, 0x2E5EF739, 0x82F5AFC3, 0x9FBE805D, 0x697C93D0, 0x6FA92DD5, 0xCFB31225, 0xC83B99AC, 0x10A77D18, 0xE86E639C, 0xDB7BBB3B, 0xCD097826, 0x6EF41859, 0xEC01B79A, 0x83A89A4F, 0xE6656E95, 0xAA7EE6FF, 0x2108CFBC, 0xEFE6E815, 0xBAD99BE7, 0x4ACE366F, 0xEAD4099F, 0x29D67CB0, 0x31AFB2A4, 0x2A31233F, 0xC63094A5, 0x35C066A2, 0x7437BC4E, 0xFCA6CA82, 0xE0B0D090, 0x3315D8A7, 0xF14A9804, 0x41F7DAEC, 0x7F0E50CD, 0x172FF691, 0x768DD64D, 0x434DB0EF, 0xCC544DAA, 0xE4DF0496, 0x9EE3B5D1, 0x4C1B886A, 0xC1B81F2C, 0x467F5165, 0x9D04EA5E, 0x015D358C, 0xFA737487, 0xFB2E410B, 0xB35A1D67, 0x9252D2DB, 0xE9335610, 0x6D1347D6, 0x9A8C61D7, 0x377A0CA1, 0x598E14F8, 0xEB893C13, 0xCEEE27A9, 0xB735C961, 0xE1EDE51C, 0x7A3CB147, 0x9C59DFD2, 0x553F73F2, 0x1879CE14, 0x73BF37C7, 0x53EACDF7, 0x5F5BAAFD, 0xDF146F3D, 0x7886DB44, 0xCA81F3AF, 0xB93EC468, 0x382C3424, 0xC25F40A3, 0x1672C31D, 0xBC0C25E2, 0x288B493C, 0xFF41950D, 0x397101A8, 0x08DEB30C, 0xD89CE4B4, 0x6490C156, 0x7B6184CB, 0xD570B632, 0x48745C6C, 0xD04257B8 };







static const unsigned long RCON[10] =
{
    0x00000001, 0x00000002, 0x00000004, 0x00000008,
    0x00000010, 0x00000020, 0x00000040, 0x00000080,
    0x0000001B, 0x00000036
};
# 449 "./base/aes.c"
void aes_setkey_enc( aes_context *ctx, const unsigned char *key, int keysize )
{
    int i;
    unsigned long *RK;
# 462 "./base/aes.c"
    switch( keysize )
    {
        case 128: ctx->nr = 10; break;
        case 192: ctx->nr = 12; break;
        case 256: ctx->nr = 14; break;
        default : return;
    }




    ctx->rk = RK = ctx->buf;


    for( i = 0; i < (keysize >> 5); i++ )
    {
        { (RK[i]) = ( (unsigned long) (key)[(i << 2) ] ) | ( (unsigned long) (key)[(i << 2) + 1] << 8 ) | ( (unsigned long) (key)[(i << 2) + 2] << 16 ) | ( (unsigned long) (key)[(i << 2) + 3] << 24 ); };
    }

    switch( ctx->nr )
    {
        case 10:

            for( i = 0; i < 10; i++, RK += 4 )
            {
                RK[4] = RK[0] ^ RCON[i] ^
                    ( FSb[ ( RK[3] >> 8 ) & 0xFF ] ) ^
                    ( FSb[ ( RK[3] >> 16 ) & 0xFF ] << 8 ) ^
                    ( FSb[ ( RK[3] >> 24 ) & 0xFF ] << 16 ) ^
                    ( FSb[ ( RK[3] ) & 0xFF ] << 24 );

                RK[5] = RK[1] ^ RK[4];
                RK[6] = RK[2] ^ RK[5];
                RK[7] = RK[3] ^ RK[6];
            }
            break;

        case 12:

            for( i = 0; i < 8; i++, RK += 6 )
            {
                RK[6] = RK[0] ^ RCON[i] ^
                    ( FSb[ ( RK[5] >> 8 ) & 0xFF ] ) ^
                    ( FSb[ ( RK[5] >> 16 ) & 0xFF ] << 8 ) ^
                    ( FSb[ ( RK[5] >> 24 ) & 0xFF ] << 16 ) ^
                    ( FSb[ ( RK[5] ) & 0xFF ] << 24 );

                RK[7] = RK[1] ^ RK[6];
                RK[8] = RK[2] ^ RK[7];
                RK[9] = RK[3] ^ RK[8];
                RK[10] = RK[4] ^ RK[9];
                RK[11] = RK[5] ^ RK[10];
            }
            break;

        case 14:

            for( i = 0; i < 7; i++, RK += 8 )
            {
                RK[8] = RK[0] ^ RCON[i] ^
                    ( FSb[ ( RK[7] >> 8 ) & 0xFF ] ) ^
                    ( FSb[ ( RK[7] >> 16 ) & 0xFF ] << 8 ) ^
                    ( FSb[ ( RK[7] >> 24 ) & 0xFF ] << 16 ) ^
                    ( FSb[ ( RK[7] ) & 0xFF ] << 24 );

                RK[9] = RK[1] ^ RK[8];
                RK[10] = RK[2] ^ RK[9];
                RK[11] = RK[3] ^ RK[10];

                RK[12] = RK[4] ^
                    ( FSb[ ( RK[11] ) & 0xFF ] ) ^
                    ( FSb[ ( RK[11] >> 8 ) & 0xFF ] << 8 ) ^
                    ( FSb[ ( RK[11] >> 16 ) & 0xFF ] << 16 ) ^
                    ( FSb[ ( RK[11] >> 24 ) & 0xFF ] << 24 );

                RK[13] = RK[5] ^ RK[12];
                RK[14] = RK[6] ^ RK[13];
                RK[15] = RK[7] ^ RK[14];
            }
            break;

        default:

            break;
    }
}




void aes_setkey_dec( aes_context *ctx, const unsigned char *key, int keysize )
{
    int i, j;
    aes_context cty;
    unsigned long *RK;
    unsigned long *SK;

    switch( keysize )
    {
        case 128: ctx->nr = 10; break;
        case 192: ctx->nr = 12; break;
        case 256: ctx->nr = 14; break;
        default : return;
    }




    ctx->rk = RK = ctx->buf;


    aes_setkey_enc( &cty, key, keysize );
    SK = cty.rk + cty.nr * 4;

    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;

    for( i = ctx->nr - 1, SK -= 8; i > 0; i--, SK -= 8 )
    {
        for( j = 0; j < 4; j++, SK++ )
        {
            *RK++ = RT0[ FSb[ ( *SK ) & 0xFF ] ] ^
                    RT1[ FSb[ ( *SK >> 8 ) & 0xFF ] ] ^
                    RT2[ FSb[ ( *SK >> 16 ) & 0xFF ] ] ^
                    RT3[ FSb[ ( *SK >> 24 ) & 0xFF ] ];
        }
    }

    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;

    memset( &cty, 0, sizeof( aes_context ) );
}
# 649 "./base/aes.c"
void aes_crypt_ecb( aes_context *ctx,
                    int mode,
                    const unsigned char input[16],
                    unsigned char output[16] )
{
    int i;
    unsigned long *RK, X0, X1, X2, X3, Y0, Y1, Y2, Y3;
# 665 "./base/aes.c"
    RK = ctx->rk;

    { (X0) = ( (unsigned long) (input)[(0) ] ) | ( (unsigned long) (input)[(0) + 1] << 8 ) | ( (unsigned long) (input)[(0) + 2] << 16 ) | ( (unsigned long) (input)[(0) + 3] << 24 ); }; X0 ^= *RK++;
    { (X1) = ( (unsigned long) (input)[(4) ] ) | ( (unsigned long) (input)[(4) + 1] << 8 ) | ( (unsigned long) (input)[(4) + 2] << 16 ) | ( (unsigned long) (input)[(4) + 3] << 24 ); }; X1 ^= *RK++;
    { (X2) = ( (unsigned long) (input)[(8) ] ) | ( (unsigned long) (input)[(8) + 1] << 8 ) | ( (unsigned long) (input)[(8) + 2] << 16 ) | ( (unsigned long) (input)[(8) + 3] << 24 ); }; X2 ^= *RK++;
    { (X3) = ( (unsigned long) (input)[(12) ] ) | ( (unsigned long) (input)[(12) + 1] << 8 ) | ( (unsigned long) (input)[(12) + 2] << 16 ) | ( (unsigned long) (input)[(12) + 3] << 24 ); }; X3 ^= *RK++;

    if( mode == 0 )
    {
        for( i = (ctx->nr >> 1) - 1; i > 0; i-- )
        {
            { Y0 = *RK++ ^ RT0[ ( X0 ) & 0xFF ] ^ RT1[ ( X3 >> 8 ) & 0xFF ] ^ RT2[ ( X2 >> 16 ) & 0xFF ] ^ RT3[ ( X1 >> 24 ) & 0xFF ]; Y1 = *RK++ ^ RT0[ ( X1 ) & 0xFF ] ^ RT1[ ( X0 >> 8 ) & 0xFF ] ^ RT2[ ( X3 >> 16 ) & 0xFF ] ^ RT3[ ( X2 >> 24 ) & 0xFF ]; Y2 = *RK++ ^ RT0[ ( X2 ) & 0xFF ] ^ RT1[ ( X1 >> 8 ) & 0xFF ] ^ RT2[ ( X0 >> 16 ) & 0xFF ] ^ RT3[ ( X3 >> 24 ) & 0xFF ]; Y3 = *RK++ ^ RT0[ ( X3 ) & 0xFF ] ^ RT1[ ( X2 >> 8 ) & 0xFF ] ^ RT2[ ( X1 >> 16 ) & 0xFF ] ^ RT3[ ( X0 >> 24 ) & 0xFF ]; };
            { X0 = *RK++ ^ RT0[ ( Y0 ) & 0xFF ] ^ RT1[ ( Y3 >> 8 ) & 0xFF ] ^ RT2[ ( Y2 >> 16 ) & 0xFF ] ^ RT3[ ( Y1 >> 24 ) & 0xFF ]; X1 = *RK++ ^ RT0[ ( Y1 ) & 0xFF ] ^ RT1[ ( Y0 >> 8 ) & 0xFF ] ^ RT2[ ( Y3 >> 16 ) & 0xFF ] ^ RT3[ ( Y2 >> 24 ) & 0xFF ]; X2 = *RK++ ^ RT0[ ( Y2 ) & 0xFF ] ^ RT1[ ( Y1 >> 8 ) & 0xFF ] ^ RT2[ ( Y0 >> 16 ) & 0xFF ] ^ RT3[ ( Y3 >> 24 ) & 0xFF ]; X3 = *RK++ ^ RT0[ ( Y3 ) & 0xFF ] ^ RT1[ ( Y2 >> 8 ) & 0xFF ] ^ RT2[ ( Y1 >> 16 ) & 0xFF ] ^ RT3[ ( Y0 >> 24 ) & 0xFF ]; };
        }

        { Y0 = *RK++ ^ RT0[ ( X0 ) & 0xFF ] ^ RT1[ ( X3 >> 8 ) & 0xFF ] ^ RT2[ ( X2 >> 16 ) & 0xFF ] ^ RT3[ ( X1 >> 24 ) & 0xFF ]; Y1 = *RK++ ^ RT0[ ( X1 ) & 0xFF ] ^ RT1[ ( X0 >> 8 ) & 0xFF ] ^ RT2[ ( X3 >> 16 ) & 0xFF ] ^ RT3[ ( X2 >> 24 ) & 0xFF ]; Y2 = *RK++ ^ RT0[ ( X2 ) & 0xFF ] ^ RT1[ ( X1 >> 8 ) & 0xFF ] ^ RT2[ ( X0 >> 16 ) & 0xFF ] ^ RT3[ ( X3 >> 24 ) & 0xFF ]; Y3 = *RK++ ^ RT0[ ( X3 ) & 0xFF ] ^ RT1[ ( X2 >> 8 ) & 0xFF ] ^ RT2[ ( X1 >> 16 ) & 0xFF ] ^ RT3[ ( X0 >> 24 ) & 0xFF ]; };

        X0 = *RK++ ^ ( RSb[ ( Y0 ) & 0xFF ] ) ^
                     ( RSb[ ( Y3 >> 8 ) & 0xFF ] << 8 ) ^
                     ( RSb[ ( Y2 >> 16 ) & 0xFF ] << 16 ) ^
                     ( RSb[ ( Y1 >> 24 ) & 0xFF ] << 24 );

        X1 = *RK++ ^ ( RSb[ ( Y1 ) & 0xFF ] ) ^
                     ( RSb[ ( Y0 >> 8 ) & 0xFF ] << 8 ) ^
                     ( RSb[ ( Y3 >> 16 ) & 0xFF ] << 16 ) ^
                     ( RSb[ ( Y2 >> 24 ) & 0xFF ] << 24 );

        X2 = *RK++ ^ ( RSb[ ( Y2 ) & 0xFF ] ) ^
                     ( RSb[ ( Y1 >> 8 ) & 0xFF ] << 8 ) ^
                     ( RSb[ ( Y0 >> 16 ) & 0xFF ] << 16 ) ^
                     ( RSb[ ( Y3 >> 24 ) & 0xFF ] << 24 );

        X3 = *RK++ ^ ( RSb[ ( Y3 ) & 0xFF ] ) ^
                     ( RSb[ ( Y2 >> 8 ) & 0xFF ] << 8 ) ^
                     ( RSb[ ( Y1 >> 16 ) & 0xFF ] << 16 ) ^
                     ( RSb[ ( Y0 >> 24 ) & 0xFF ] << 24 );
    }
    else
    {
        for( i = (ctx->nr >> 1) - 1; i > 0; i-- )
        {
            { Y0 = *RK++ ^ FT0[ ( X0 ) & 0xFF ] ^ FT1[ ( X1 >> 8 ) & 0xFF ] ^ FT2[ ( X2 >> 16 ) & 0xFF ] ^ FT3[ ( X3 >> 24 ) & 0xFF ]; Y1 = *RK++ ^ FT0[ ( X1 ) & 0xFF ] ^ FT1[ ( X2 >> 8 ) & 0xFF ] ^ FT2[ ( X3 >> 16 ) & 0xFF ] ^ FT3[ ( X0 >> 24 ) & 0xFF ]; Y2 = *RK++ ^ FT0[ ( X2 ) & 0xFF ] ^ FT1[ ( X3 >> 8 ) & 0xFF ] ^ FT2[ ( X0 >> 16 ) & 0xFF ] ^ FT3[ ( X1 >> 24 ) & 0xFF ]; Y3 = *RK++ ^ FT0[ ( X3 ) & 0xFF ] ^ FT1[ ( X0 >> 8 ) & 0xFF ] ^ FT2[ ( X1 >> 16 ) & 0xFF ] ^ FT3[ ( X2 >> 24 ) & 0xFF ]; };
            { X0 = *RK++ ^ FT0[ ( Y0 ) & 0xFF ] ^ FT1[ ( Y1 >> 8 ) & 0xFF ] ^ FT2[ ( Y2 >> 16 ) & 0xFF ] ^ FT3[ ( Y3 >> 24 ) & 0xFF ]; X1 = *RK++ ^ FT0[ ( Y1 ) & 0xFF ] ^ FT1[ ( Y2 >> 8 ) & 0xFF ] ^ FT2[ ( Y3 >> 16 ) & 0xFF ] ^ FT3[ ( Y0 >> 24 ) & 0xFF ]; X2 = *RK++ ^ FT0[ ( Y2 ) & 0xFF ] ^ FT1[ ( Y3 >> 8 ) & 0xFF ] ^ FT2[ ( Y0 >> 16 ) & 0xFF ] ^ FT3[ ( Y1 >> 24 ) & 0xFF ]; X3 = *RK++ ^ FT0[ ( Y3 ) & 0xFF ] ^ FT1[ ( Y0 >> 8 ) & 0xFF ] ^ FT2[ ( Y1 >> 16 ) & 0xFF ] ^ FT3[ ( Y2 >> 24 ) & 0xFF ]; };
        }

        { Y0 = *RK++ ^ FT0[ ( X0 ) & 0xFF ] ^ FT1[ ( X1 >> 8 ) & 0xFF ] ^ FT2[ ( X2 >> 16 ) & 0xFF ] ^ FT3[ ( X3 >> 24 ) & 0xFF ]; Y1 = *RK++ ^ FT0[ ( X1 ) & 0xFF ] ^ FT1[ ( X2 >> 8 ) & 0xFF ] ^ FT2[ ( X3 >> 16 ) & 0xFF ] ^ FT3[ ( X0 >> 24 ) & 0xFF ]; Y2 = *RK++ ^ FT0[ ( X2 ) & 0xFF ] ^ FT1[ ( X3 >> 8 ) & 0xFF ] ^ FT2[ ( X0 >> 16 ) & 0xFF ] ^ FT3[ ( X1 >> 24 ) & 0xFF ]; Y3 = *RK++ ^ FT0[ ( X3 ) & 0xFF ] ^ FT1[ ( X0 >> 8 ) & 0xFF ] ^ FT2[ ( X1 >> 16 ) & 0xFF ] ^ FT3[ ( X2 >> 24 ) & 0xFF ]; };

        X0 = *RK++ ^ ( FSb[ ( Y0 ) & 0xFF ] ) ^
                     ( FSb[ ( Y1 >> 8 ) & 0xFF ] << 8 ) ^
                     ( FSb[ ( Y2 >> 16 ) & 0xFF ] << 16 ) ^
                     ( FSb[ ( Y3 >> 24 ) & 0xFF ] << 24 );

        X1 = *RK++ ^ ( FSb[ ( Y1 ) & 0xFF ] ) ^
                     ( FSb[ ( Y2 >> 8 ) & 0xFF ] << 8 ) ^
                     ( FSb[ ( Y3 >> 16 ) & 0xFF ] << 16 ) ^
                     ( FSb[ ( Y0 >> 24 ) & 0xFF ] << 24 );

        X2 = *RK++ ^ ( FSb[ ( Y2 ) & 0xFF ] ) ^
                     ( FSb[ ( Y3 >> 8 ) & 0xFF ] << 8 ) ^
                     ( FSb[ ( Y0 >> 16 ) & 0xFF ] << 16 ) ^
                     ( FSb[ ( Y1 >> 24 ) & 0xFF ] << 24 );

        X3 = *RK++ ^ ( FSb[ ( Y3 ) & 0xFF ] ) ^
                     ( FSb[ ( Y0 >> 8 ) & 0xFF ] << 8 ) ^
                     ( FSb[ ( Y1 >> 16 ) & 0xFF ] << 16 ) ^
                     ( FSb[ ( Y2 >> 24 ) & 0xFF ] << 24 );
    }

    { (output)[(0) ] = (unsigned char) ( (X0) ); (output)[(0) + 1] = (unsigned char) ( (X0) >> 8 ); (output)[(0) + 2] = (unsigned char) ( (X0) >> 16 ); (output)[(0) + 3] = (unsigned char) ( (X0) >> 24 ); };
    { (output)[(4) ] = (unsigned char) ( (X1) ); (output)[(4) + 1] = (unsigned char) ( (X1) >> 8 ); (output)[(4) + 2] = (unsigned char) ( (X1) >> 16 ); (output)[(4) + 3] = (unsigned char) ( (X1) >> 24 ); };
    { (output)[(8) ] = (unsigned char) ( (X2) ); (output)[(8) + 1] = (unsigned char) ( (X2) >> 8 ); (output)[(8) + 2] = (unsigned char) ( (X2) >> 16 ); (output)[(8) + 3] = (unsigned char) ( (X2) >> 24 ); };
    { (output)[(12) ] = (unsigned char) ( (X3) ); (output)[(12) + 1] = (unsigned char) ( (X3) >> 8 ); (output)[(12) + 2] = (unsigned char) ( (X3) >> 16 ); (output)[(12) + 3] = (unsigned char) ( (X3) >> 24 ); };
}




void aes_crypt_cbc( aes_context *ctx,
                    int mode,
                    int length,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output )
{
    int i;
    unsigned char temp[16];
# 760 "./base/aes.c"
    if( mode == 0 )
    {
        while( length > 0 )
        {
            memcpy( temp, input, 16 );
            aes_crypt_ecb( ctx, mode, input, output );

            for( i = 0; i < 16; i++ )
                output[i] = (unsigned char)( output[i] ^ iv[i] );

            memcpy( iv, temp, 16 );

            input += 16;
            output += 16;
            length -= 16;
        }
    }
    else
    {
        while( length > 0 )
        {
            for( i = 0; i < 16; i++ )
                output[i] = (unsigned char)( input[i] ^ iv[i] );

            aes_crypt_ecb( ctx, mode, output, output );
            memcpy( iv, output, 16 );

            input += 16;
            output += 16;
            length -= 16;
        }
    }
}




void aes_crypt_cfb( aes_context *ctx,
                    int mode,
                    int length,
                    int *iv_off,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output )
{
    int c, n = *iv_off;

    if( mode == 0 )
    {
        while( length-- )
        {
            if( n == 0 )
                aes_crypt_ecb( ctx, 1, iv, iv );

            c = *input++;
            *output++ = (unsigned char)( c ^ iv[n] );
            iv[n] = (unsigned char) c;

            n = (n + 1) & 0x0F;
        }
    }
    else
    {
        while( length-- )
        {
            if( n == 0 )
                aes_crypt_ecb( ctx, 1, iv, iv );

            iv[n] = *output++ = (unsigned char)( iv[n] ^ *input++ );

            n = (n + 1) & 0x0F;
        }
    }

    *iv_off = n;
}
