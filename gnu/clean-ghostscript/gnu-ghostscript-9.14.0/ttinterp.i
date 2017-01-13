# 1 "./base/ttinterp.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/ttinterp.c" 2
# 65 "./base/ttinterp.c"
# 1 "./base/ttmisc.h" 1
# 22 "./base/ttmisc.h"
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
# 23 "./base/ttmisc.h" 2
# 1 "./base/string_.h" 1
# 32 "./base/string_.h"
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
# 24 "./base/ttmisc.h" 2
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
# 25 "./base/ttmisc.h" 2

# 1 "./base/tttypes.h" 1
# 46 "./base/tttypes.h"
# 1 "./base/ttconfig.h" 1
# 50 "./base/ttconfig.h"
# 1 "./base/ttconf.h" 1
# 51 "./base/ttconfig.h" 2
# 47 "./base/tttypes.h" 2
# 1 "./base/tttype.h" 1
# 65 "./base/tttype.h"
  typedef signed int TT_Fixed;




  typedef signed short TT_FWord;
  typedef unsigned short TT_UFWord;

  typedef signed short TT_Short;
  typedef unsigned short TT_UShort;
  typedef signed long TT_Long;
  typedef unsigned long TT_ULong;

  typedef signed short TT_F2Dot14;
# 94 "./base/tttype.h"
  typedef signed int TT_F26Dot6;
# 103 "./base/tttype.h"
  typedef signed int TT_Pos;
# 117 "./base/tttype.h"
  struct _TT_UnitVector
  {
    TT_F2Dot14 x;
    TT_F2Dot14 y;
  };

  typedef struct _TT_UnitVector TT_UnitVector;

  struct _TT_Vector
  {
    TT_F26Dot6 x;
    TT_F26Dot6 y;
  };

  typedef struct _TT_Vector TT_Vector;
# 140 "./base/tttype.h"
  struct _TT_Matrix
  {
    TT_Fixed xx, xy;
    TT_Fixed yx, yy;
  };

  typedef struct _TT_Matrix TT_Matrix;



  struct _TT_Outline
  {
    unsigned int contours;
    unsigned int points;

    unsigned short* conEnds;

    TT_Pos* xCoord;
    TT_Pos* yCoord;
    unsigned char* flag;






    int owner;
# 192 "./base/tttype.h"
    int high_precision;
    int second_pass;
    char dropout_mode;
  };

  typedef struct _TT_Outline TT_Outline;



  struct _TT_BBox
  {
    TT_Pos xMin;
    TT_Pos yMin;
    TT_Pos xMax;
    TT_Pos yMax;
  };

  typedef struct _TT_BBox TT_BBox;
# 230 "./base/tttype.h"
  struct _TT_Glyph_Metrics
  {
    TT_BBox bbox;

    TT_Pos bearingX;
    TT_Pos bearingY;

    TT_Pos advance;
  };
# 249 "./base/tttype.h"
  struct _TT_Big_Glyph_Metrics
  {
    TT_BBox bbox;

    TT_Pos horiBearingX;
    TT_Pos horiBearingY;

    TT_Pos vertBearingX;
    TT_Pos vertBearingY;

    TT_Pos horiAdvance;
    TT_Pos vertAdvance;
  };

  typedef struct _TT_Glyph_Metrics TT_Glyph_Metrics;
  typedef struct _TT_Big_Glyph_Metrics TT_Big_Glyph_Metrics;



  struct _TT_Instance_Metrics
  {
    int pointSize;

    int x_ppem;
    int y_ppem;

    TT_Fixed x_scale;
    TT_Fixed y_scale;

    int x_resolution;
    int y_resolution;
  };

  typedef struct _TT_Instance_Metrics TT_Instance_Metrics;
# 323 "./base/tttype.h"
  struct _TT_Raster_Map
  {
    int rows;
    int cols;
    int width;
    int flow;

    void* bitmap;
    long size;
  };

  typedef struct _TT_Raster_Map TT_Raster_Map;



  struct _TT_Header
  {
    TT_Fixed Table_Version;
    TT_Fixed Font_Revision;

    TT_Long CheckSum_Adjust;
    TT_Long Magic_Number;

    TT_UShort Flags;
    TT_UShort Units_Per_EM;

    TT_Long Created [2];
    TT_Long Modified[2];

    TT_FWord xMin;
    TT_FWord yMin;
    TT_FWord xMax;
    TT_FWord yMax;

    TT_UShort Mac_Style;
    TT_UShort Lowest_Rec_PPEM;

    TT_Short Font_Direction;
    TT_Short Index_To_Loc_Format;
    TT_Short Glyph_Data_Format;
  };

  typedef struct _TT_Header TT_Header;



  struct _TT_Horizontal_Header
  {
    TT_Fixed Version;
    TT_FWord Ascender;
    TT_FWord Descender;
    TT_FWord Line_Gap;

    TT_UFWord advance_Width_Max;

    TT_FWord min_Left_Side_Bearing;
    TT_FWord min_Right_Side_Bearing;
    TT_FWord xMax_Extent;
    TT_FWord caret_Slope_Rise;
    TT_FWord caret_Slope_Run;

    TT_Short Reserved[5];

    TT_Short metric_Data_Format;
    TT_UShort number_Of_HMetrics;
  };

  typedef struct _TT_Horizontal_Header TT_Horizontal_Header;



  struct _TT_OS2
  {
    TT_UShort version;
    TT_FWord xAvgCharWidth;
    TT_UShort usWeightClass;
    TT_UShort usWidthClass;
    TT_Short fsType;
    TT_FWord ySubscriptXSize;
    TT_FWord ySubscriptYSize;
    TT_FWord ySubscriptXOffset;
    TT_FWord ySubscriptYOffset;
    TT_FWord ySuperscriptXSize;
    TT_FWord ySuperscriptYSize;
    TT_FWord ySuperscriptXOffset;
    TT_FWord ySuperscriptYOffset;
    TT_FWord yStrikeoutSize;
    TT_FWord yStrikeoutPosition;
    TT_Short sFamilyClass;

    char panose[10];

    TT_ULong ulUnicodeRange1;
    TT_ULong ulUnicodeRange2;
    TT_ULong ulUnicodeRange3;
    TT_ULong ulUnicodeRange4;

    char achVendID[4];

    TT_UShort fsSelection;
    TT_UShort usFirstCharIndex;
    TT_UShort usLastCharIndex;
    TT_UShort sTypoAscender;
    TT_UShort sTypoDescender;
    TT_UShort sTypoLineGap;
    TT_UShort usWinAscent;
    TT_UShort usWinDescent;



    TT_ULong ulCodePageRange1;
    TT_ULong ulCodePageRange2;
  };

  typedef struct _TT_OS2 TT_OS2;



  struct _TT_Postscript
  {
    TT_Fixed FormatType;
    TT_Fixed italicAngle;
    TT_FWord underlinePosition;
    TT_FWord underlineThickness;
    TT_ULong isFixedPitch;
    TT_ULong minMemType42;
    TT_ULong maxMemType42;
    TT_ULong minMemType1;
    TT_ULong maxMemType1;



  };

  typedef struct _TT_Postscript TT_Postscript;



  struct _TT_Hdmx_Record
  {
    unsigned char ppem;
    unsigned char max_width;
    unsigned char* widths;
  };

  typedef struct _TT_Hdmx_Record TT_Hdmx_Record;

  struct _TT_Hdmx
  {
    TT_UShort version;
    TT_Short num_records;
    TT_Hdmx_Record* records;
  };

  typedef struct _TT_Hdmx TT_Hdmx;



  struct _TT_Face_Properties
  {
    int num_Glyphs;
    int max_Points;
    int max_Contours;

    int num_Faces;



    TT_Header* header;
    TT_Horizontal_Header* horizontal;
    TT_OS2* os2;
    TT_Postscript* postscript;
    TT_Hdmx* hdmx;
  };

  typedef struct _TT_Face_Properties TT_Face_Properties;
# 529 "./base/tttype.h"
  struct _TT_Engine { void* z; };
  struct _TT_Stream { void* z; };
  struct _TT_Face { void* z; };
  struct _TT_Instance { void* z; };
  struct _TT_Glyph { void* z; };
  struct _TT_CharMap { void* z; };

  typedef struct _TT_Engine TT_Engine;
  typedef struct _TT_Stream TT_Stream;
  typedef struct _TT_Face TT_Face;
  typedef struct _TT_Instance TT_Instance;
  typedef struct _TT_Glyph TT_Glyph;
  typedef struct _TT_CharMap TT_CharMap;

  typedef int TT_Error;

  extern const TT_Instance TT_Null_Instance;
# 559 "./base/tttype.h"
  TT_Error TT_Init_FreeType( TT_Engine* engine );


  TT_Error TT_Done_FreeType( TT_Engine engine );
# 574 "./base/tttype.h"
  TT_Error TT_Set_Raster_Gray_Palette( TT_Engine engine, char* palette );
# 588 "./base/tttype.h"
  TT_Error TT_Open_Face( TT_Engine engine,
                          const char* fontpathname,
                          TT_Face* face );




  TT_Error TT_Open_Collection( TT_Engine engine,
                                const char* collectionpathname,
                                int fontIndex,
                                TT_Face* face );



  TT_Error TT_Get_Face_Properties( TT_Face face,
                                    TT_Face_Properties* properties );


  TT_Error TT_Set_Face_Pointer( TT_Face face,
                                 void* data );


  void* TT_Get_Face_Pointer( TT_Face face );



  TT_Error TT_Flush_Face( TT_Face face );




  TT_Error TT_Close_Face( TT_Face face );



  TT_Error TT_Get_Font_Data( TT_Face face,
                              long tag,
                              long offset,
                              void* buffer,
                              long* length );
# 638 "./base/tttype.h"
  TT_Error TT_New_Instance( TT_Face face,
                             TT_Instance* instance );







  TT_Error TT_Set_Instance_Resolutions( TT_Instance instance,
                                         int x_resolution,
                                         int y_resolution );



  TT_Error TT_Set_Instance_CharSize( TT_Instance instance,
                                      TT_F26Dot6 charSize );

  TT_Error TT_Set_Instance_CharSizes( TT_Instance instance,
                                       TT_F26Dot6 charWidth,
                                       TT_F26Dot6 charHeight );




  TT_Error TT_Set_Instance_PixelSizes( TT_Instance instance,
                                        int pixelWidth,
                                        int pixelHeight,
                                        TT_F26Dot6 pointSize );
# 684 "./base/tttype.h"
  TT_Error TT_Set_Instance_Transform_Flags( TT_Instance instance,
                                             int rotated,
                                             int stretched );



  TT_Error TT_Get_Instance_Metrics( TT_Instance instance,
                                     TT_Instance_Metrics* metrics );



  TT_Error TT_Set_Instance_Pointer( TT_Instance instance,
                                     void* data );



  void* TT_Get_Instance_Pointer( TT_Instance instance );




  TT_Error TT_Done_Instance( TT_Instance instance );





  TT_Error TT_New_Glyph( TT_Face face,
                          TT_Glyph* glyph );



  TT_Error TT_Done_Glyph( TT_Glyph glyph );
# 744 "./base/tttype.h"
  TT_Error TT_Load_Glyph( TT_Instance instance,
                           TT_Glyph glyph,
                           int glyph_index,
                           int load_flags );





  TT_Error TT_Get_Glyph_Outline( TT_Glyph glyph,
                                  TT_Outline* outline );



  TT_Error TT_Get_Glyph_Metrics( TT_Glyph glyph,
                                  TT_Glyph_Metrics* metrics );
# 770 "./base/tttype.h"
  TT_Error TT_Get_Glyph_Bitmap( TT_Glyph glyph,
                                 TT_Raster_Map* raster_map,
                                 TT_F26Dot6 x_offset,
                                 TT_F26Dot6 y_offset );
# 784 "./base/tttype.h"
  TT_Error TT_Get_Glyph_Pixmap( TT_Glyph glyph,
                                 TT_Raster_Map* raster_map,
                                 TT_F26Dot6 x_offset,
                                 TT_F26Dot6 y_offset );






  TT_Error TT_New_Outline( int num_points,
                            int num_contours,
                            TT_Outline* outline );



  TT_Error TT_Done_Outline( TT_Outline* outline );



  TT_Error TT_Copy_Outline( TT_Outline* source,
                             TT_Outline* target );



  TT_Error TT_Get_Outline_Bitmap( TT_Engine engine,
                                   TT_Outline* outline,
                                   TT_Raster_Map* raster_map );




  TT_Error TT_Get_Outline_Pixmap( TT_Engine engine,
                                   TT_Outline* outline,
                                   TT_Raster_Map* raster_map );





  TT_Error TT_Get_Outline_BBox( TT_Outline* outline,
                                 TT_BBox* bbox );



  void TT_Transform_Outline( TT_Outline* outline,
                                  TT_Matrix* matrix );






  void TT_Translate_Outline( TT_Outline* outline,
                                  TT_F26Dot6 x_offset,
                                  TT_F26Dot6 y_offset );






  void TT_Transform_Vector( TT_F26Dot6* x,
                                 TT_F26Dot6* y,
                                 TT_Matrix* matrix );






  void TT_Matrix_Multiply( TT_Matrix* a,
                                TT_Matrix* b );



  TT_Error TT_Matrix_Invert( TT_Matrix* matrix );






  int TT_Get_CharMap_Count( TT_Face face );




  TT_Error TT_Get_CharMap_ID( TT_Face face,
                               int charmapIndex,
                               short* platformID,
                               short* encodingID );







  TT_Error TT_Get_CharMap( TT_Face face,
                            int charmapIndex,
                            TT_CharMap* charMap );






  int TT_Char_Index( TT_CharMap charMap,
                      unsigned short charCode );






  int TT_Get_Name_Count( TT_Face face );




  TT_Error TT_Get_Name_ID( TT_Face face,
                            int nameIndex,
                            short* platformID,
                            short* encodingID,
                            short* languageID,
                            short* nameID );
# 919 "./base/tttype.h"
  TT_Error TT_Get_Name_String( TT_Face face,
                                int nameIndex,
                                char** stringPtr,
                                int* length );
# 937 "./base/tttype.h"
  typedef int (*TT_Glyph_Loader_Callback)( void* instance_ptr,
                                            int glyph_index,
                                            TT_Outline* outline,
                                            TT_F26Dot6* lsb,
                                            TT_F26Dot6* aw );




  TT_Error TT_Register_Callback( TT_Engine engine,
                                  int callback_id,
                                  void* callback_ptr );
# 48 "./base/tttypes.h" 2
# 58 "./base/tttypes.h"
  typedef unsigned char Byte;

  typedef unsigned short UShort;
  typedef signed short Short;

  typedef unsigned long ULong;
  typedef signed long Long;

  typedef int Int;

  typedef long Integer;



  typedef Byte* PByte;
  typedef UShort* PUShort;
  typedef Short* PShort;
  typedef ULong* PULong;
  typedef Long* PLong;

  typedef Int* PInt;

  typedef void* Pointer;

  typedef TT_F26Dot6* PCoordinates;
  typedef unsigned char* PTouchTable;


  typedef int Bool;
# 101 "./base/tttypes.h"
  typedef Long* PStorage;
# 27 "./base/ttmisc.h" 2
# 66 "./base/ttinterp.c" 2

# 1 "./base/ttfoutl.h" 1
# 24 "./base/ttfoutl.h"
typedef struct _TFace TFace;




typedef struct _TInstance TInstance;




typedef struct _TExecution_Context TExecution_Context;




typedef struct ttfInterpreter_s ttfInterpreter;




typedef struct ttfMemoryDescriptor_s ttfMemoryDescriptor;

typedef struct {
    double a, b, c, d, tx, ty;
} FloatMatrix;

typedef struct {
    double x, y;
} FloatPoint;




typedef signed int F26Dot6;




typedef struct {
    F26Dot6 x;
    F26Dot6 y;
} F26Dot6Point;


typedef struct ttfMemory_s ttfMemory;
struct ttfMemory_s {
    void *(*alloc_bytes)(ttfMemory *, int size, const char *cname);
    void *(*alloc_struct)(ttfMemory *, const ttfMemoryDescriptor *, const char *cname);
    void (*free)(ttfMemory *, void *p, const char *cname);
} ;

typedef struct ttfSubGlyphUsage_s ttfSubGlyphUsage;


struct ttfInterpreter_s {
    TExecution_Context *exec;
    ttfSubGlyphUsage *usage;
    int usage_size;
    int usage_top;
    int lock;
    ttfMemory *ttf_memory;
};


typedef enum {
    fNoError,
    fTableNotFound,
    fNameNotFound,
    fMemoryError,
    fUnimplemented,
    fCMapNotFound,
    fGlyphNotFound,
    fBadFontData,
    fPatented,
    fBadInstruction
} FontError;


typedef struct ttfReader_s ttfReader;
struct ttfReader_s {
    bool (*Eof)(ttfReader *);
    void (*Read)(ttfReader *, void *p, int n);
    void (*Seek)(ttfReader *, int nPos);
    int (*Tell)(ttfReader *);
    bool (*Error)(ttfReader *);
    int (*LoadGlyph)(ttfReader *, int nIndex, const byte **, int *);
    void (*ReleaseGlyph)(ttfReader *, int nIndex);
    int (*get_metrics)(const ttfReader *ttf, uint glyph_index, bool bVertical,
                          short *sideBearing, unsigned short *nAdvance);
};


typedef struct {
    int nPos, nLen;
} ttfPtrElem;






typedef struct ttfFont_s ttfFont;

struct ttfFont_s {
    ttfPtrElem t_cvt_;
    ttfPtrElem t_fpgm;
    ttfPtrElem t_glyf;
    ttfPtrElem t_head;
    ttfPtrElem t_hhea;
    ttfPtrElem t_hmtx;
    ttfPtrElem t_vhea;
    ttfPtrElem t_vmtx;
    ttfPtrElem t_loca;
    ttfPtrElem t_maxp;
    ttfPtrElem t_prep;
    ttfPtrElem t_cmap;
    unsigned short nUnitsPerEm;
    unsigned int nFlags;
    unsigned int nNumGlyphs;
    unsigned int nMaxComponents;
    unsigned int nLongMetricsVert;
    unsigned int nLongMetricsHorz;
    unsigned int nIndexToLocFormat;
    bool patented;
    bool design_grid;
    TFace *face;
    TInstance *inst;
    TExecution_Context *exec;
    ttfInterpreter *tti;
    void (*DebugRepaint)(ttfFont *);
    int (*DebugPrint)(ttfFont *, const char *s, ...);
    const gs_memory_t *DebugMem;
};

void ttfFont__init(ttfFont *this, ttfMemory *mem,
                   void (*DebugRepaint)(ttfFont *),
                   int (*DebugPrint)(ttfFont *, const char *s, ...),
                   const gs_memory_t *);
void ttfFont__finit(ttfFont *this);
FontError ttfFont__Open(ttfInterpreter *, ttfFont *, ttfReader *r,
                        unsigned int nTTC, float w, float h,
                        bool design_grid);


typedef struct ttfExport_s ttfExport;
struct ttfExport_s {
    bool bPoints, bOutline;
    void (*MoveTo)(ttfExport *, FloatPoint*);
    void (*LineTo)(ttfExport *, FloatPoint*);
    void (*CurveTo)(ttfExport *, FloatPoint*, FloatPoint*, FloatPoint*);
    void (*Close)(ttfExport *);
    void (*Point)(ttfExport *, FloatPoint*, bool bOnCurve, bool bNewPath);
    void (*SetWidth)(ttfExport *, FloatPoint*);
    void (*DebugPaint)(ttfExport *);
};

int ttfInterpreter__obtain(ttfMemory *mem, ttfInterpreter **ptti);
void ttfInterpreter__release(ttfInterpreter **ptti);


typedef struct {
    bool bCompound;
    int contourCount;
    uint pointCount;
    F26Dot6Point advance;
    F26Dot6 sideBearing;
    F26Dot6 xMinB, yMinB, xMaxB, yMaxB;
} ttfGlyphOutline;


typedef struct {
    bool bOutline;
    bool bFirst;
    bool bVertical;
    int nPointsTotal;
    int nContoursTotal;
    F26Dot6 ppx, ppy;
    ttfReader *r;
    ttfExport *exp;
    ttfFont *pFont;
    ttfGlyphOutline out;
    FloatMatrix post_transform;
} ttfOutliner;

void ttfOutliner__init(ttfOutliner *, ttfFont *f, ttfReader *r, ttfExport *exp,
                        bool bOutline, bool bFirst, bool bVertical);
FontError ttfOutliner__Outline(ttfOutliner *this, int glyphIndex,
        float orig_x, float orig_y, FloatMatrix *m1);
void ttfOutliner__DrawGlyphOutline(ttfOutliner *this);
# 68 "./base/ttinterp.c" 2

# 1 "./base/ttcalc.h" 1
# 40 "./base/ttcalc.h"
# 1 "./base/ttcommon.h" 1
# 41 "./base/ttcalc.h" 2
# 51 "./base/ttcalc.h"
  typedef signed short Int16;
  typedef unsigned short Word16;



  typedef signed int Int32;
  typedef unsigned int Word32;
# 104 "./base/ttcalc.h"
  typedef long Int64;
# 121 "./base/ttcalc.h"
  Int32 ttMulDiv( Int32 a, Int32 b, Int32 c );
  Int32 MulDiv_Round( Int32 a, Int32 b, Int32 c );

  Int32 Sqrt32( Int32 l );
  Int32 Sqrt64( Int64 l );
# 70 "./base/ttinterp.c" 2
# 1 "./base/ttinterp.h" 1
# 55 "./base/ttinterp.h"
# 1 "./base/ttobjs.h" 1
# 42 "./base/ttobjs.h"
# 1 "./base/tttables.h" 1
# 54 "./base/tttables.h"
  struct _TTTCHeader
  {
    Long Tag;
    TT_Fixed version;
    ULong DirCount;
    PULong TableDirectory;
  };

  typedef struct _TTTCHeader TTTCHeader;
  typedef TTTCHeader* PTTCHeader;



  struct _TTableDir
  {
    TT_Fixed version;
    UShort numTables;

    UShort searchRange;
    UShort entrySelector;
    UShort rangeShift;
  };

  typedef struct _TTableDir TTableDir;
  typedef TTableDir* PTableDir;



  struct _TTableDirEntry
  {
    Long Tag;
    Long CheckSum;
    Long Offset;
    Long Length;
  };

  typedef struct _TTableDirEntry TTableDirEntry;
  typedef TTableDirEntry* PTableDirEntry;



  struct _TCMapDir
  {
    UShort tableVersionNumber;
    UShort numCMaps;
  };

  typedef struct _TCMapDir TCMapDir;
  typedef TCMapDir* PCMapDir;

  struct _TCMapDirEntry
  {
    UShort platformID;
    UShort platformEncodingID;
    Long offset;
  };

  typedef struct _TCMapDirEntry TCMapDirEntry;
  typedef TCMapDirEntry* PCMapDirEntries;



  struct _TMaxProfile
  {
    TT_Fixed version;
    UShort numGlyphs,
              maxPoints,
              maxContours,
              maxCompositePoints,
              maxCompositeContours,
              maxZones,
              maxTwilightPoints,
              maxStorage,
              maxFunctionDefs,
              maxInstructionDefs,
              maxStackElements,
              maxSizeOfInstructions,
              maxComponentElements,
              maxComponentDepth;
  };

  typedef struct _TMaxProfile TMaxProfile;
  typedef TMaxProfile* PMaxProfile;






  struct _GaspRange
  {
    UShort maxPPEM;
    UShort gaspFlag;
  };

  typedef struct _GaspRange GaspRange;

  struct _TGasp
  {
    UShort version;
    UShort numRanges;
    GaspRange* gaspRanges;
  };

  typedef struct _TGasp TGasp;






  struct _TLongHorMetric
  {
    UShort advance_Width;
    Short lsb;
  };

  typedef struct _TLongHorMetric TLongHorMetric;
  typedef TLongHorMetric* PTableHorMetrics;






  struct _TLoca
  {
    UShort Size;
    PStorage Table;
  };

  typedef struct _TLoca TLoca;



  struct _TNameRec
  {
    UShort platformID;
    UShort encodingID;
    UShort languageID;
    UShort nameID;
    UShort stringLength;
    UShort stringOffset;




    PByte string;
  };

  typedef struct _TNameRec TNameRec;

  struct _TName_Table
  {
    UShort format;
    UShort numNameRecords;
    UShort storageOffset;
    TNameRec* names;
    PByte storage;
  };

  typedef struct _TName_Table TName_Table;
# 43 "./base/ttobjs.h" 2
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
# 44 "./base/ttobjs.h" 2
# 161 "./base/ttobjs.h"
  struct _TFace;
  struct _TInstance;
  struct _TExecution_Context;
  struct _TGlyph;





  typedef TFace* PFace;





  typedef TInstance* PInstance;





  typedef TExecution_Context* PExecution_Context;

  typedef struct _TGlyph TGlyph;
  typedef TGlyph* PGlyph;
# 204 "./base/ttobjs.h"
  struct _TGraphicsState
  {
    Int rp0;
    Int rp1;
    Int rp2;

    TT_UnitVector dualVector;
    TT_UnitVector projVector;
    TT_UnitVector freeVector;

    Long loop;
    TT_F26Dot6 minimum_distance;
    Int round_state;

    Bool auto_flip;
    TT_F26Dot6 control_value_cutin;
    TT_F26Dot6 single_width_cutin;
    TT_F26Dot6 single_width_value;
    Int delta_base;
    Int delta_shift;

    Byte instruct_control;
    Bool scan_control;
    Int scan_type;

    Int gep0;
    Int gep1;
    Int gep2;

  };

  typedef struct _TGraphicsState TGraphicsState;

  extern const TGraphicsState Default_GraphicsState;
# 258 "./base/ttobjs.h"
  struct _TCodeRange
  {
    PByte Base;
    Int Size;
  };

  typedef struct _TCodeRange TCodeRange;
  typedef TCodeRange* PCodeRange;
# 275 "./base/ttobjs.h"
  typedef TCodeRange TCodeRangeTable[3];



  struct _TDefRecord
  {
    Int Range;
    Int Start;
    Byte Opc;
    Bool Active;
  };

  typedef struct _TDefRecord TDefRecord;
  typedef TDefRecord* PDefRecord;
  typedef TDefRecord* PDefArray;



  struct _TCallRecord
  {
    Int Caller_Range;
    Int Caller_IP;
    Int Cur_Count;
    Int Cur_Restart;
  };

  typedef struct _TCallRecord TCallRecord;
  typedef TCallRecord* PCallRecord;
  typedef TCallRecord* PCallStack;



  struct _TGlyph_Zone
  {
    int n_points;
    int n_contours;

    PCoordinates org_x;
    PCoordinates org_y;
    PCoordinates cur_x;
    PCoordinates cur_y;

    Byte* touch;
    Short* contours;
  };

  typedef struct _TGlyph_Zone TGlyph_Zone;
  typedef TGlyph_Zone *PGlyph_Zone;
# 341 "./base/ttobjs.h"
  typedef TT_F26Dot6 (*TRound_Function)( PExecution_Context exc, TT_F26Dot6 distance,
                                                   TT_F26Dot6 compensation );



  typedef void (*TMove_Function)( PExecution_Context exc, PGlyph_Zone zone,
                                            Int point,
                                            TT_F26Dot6 distance );



  typedef TT_F26Dot6 (*TProject_Function)( PExecution_Context exc, TT_F26Dot6 Vx,
                                                     TT_F26Dot6 Vy );


  typedef TT_F26Dot6 (*TGet_CVT_Function)( PExecution_Context exc, Int index );



  typedef void (*TSet_CVT_Function)( PExecution_Context exc, Int index,
                                                TT_F26Dot6 value );


  struct _TTransform
  {
    TT_Fixed xx, xy;
    TT_Fixed yx, yy;
    TT_F26Dot6 ox, oy;
  };

  typedef struct _TTransform TTransform;
  typedef TTransform *PTransform;


  struct _TSubglyph_Record
  {
    Int index;
    Bool is_scaled;
    Bool is_hinted;
    Bool preserve_pps;

    Long file_offset;

    TT_BBox bbox;

    TGlyph_Zone zone;

    Int arg1;
    Int arg2;

    Int element_flag;

    TTransform transform;

    TT_Vector pp1, pp2;

    Int leftBearing;
    Int advanceWidth;
  };

  typedef struct _TSubglyph_Record TSubglyph_Record;
  typedef TSubglyph_Record* PSubglyph_Record;
  typedef TSubglyph_Record* PSubglyph_Stack;
# 460 "./base/ttobjs.h"
  struct _TIns_Metrics
  {
    TT_F26Dot6 pointSize;

    Int x_resolution;
    Int y_resolution;

    Int x_ppem;
    Int y_ppem;

    Long x_scale1;
    Long x_scale2;

    Long y_scale1;
    Long y_scale2;


    Long x_ratio;
    Long y_ratio;

    Int ppem;
    Long ratio;
    Long scale1;
    Long scale2;

    TT_F26Dot6 compensations[4];

    Bool rotated;
    Bool stretched;
  };

  typedef struct _TIns_Metrics TIns_Metrics;
  typedef TIns_Metrics *PIns_Metrics;







  struct _TFace
  {
    ttfReader *r;
    ttfFont *font;


    TMaxProfile maxProfile;
# 520 "./base/ttobjs.h"
    Int numLocations;





    Int fontPgmSize;
    PByte fontProgram;


    Int cvtPgmSize;
    PByte cvtProgram;


    Int cvtSize;
    PShort cvt;




    Int numGlyphs;
    Int maxPoints;
    Int maxContours;
    Int maxComponents;

  };







  struct _TInstance
  {
    PFace face;

    Bool valid;

    TIns_Metrics metrics;

    Int numFDefs;
    PDefArray FDefs;

    Int numIDefs;
    PDefArray IDefs;
    Int countIDefs;
    Byte IDefPtr[256];

    TCodeRangeTable codeRangeTable;

    TGraphicsState GS;
    TGraphicsState default_GS;

    Int cvtSize;
    PLong cvt;

    Int storeSize;
    PLong storage;

  };







  struct _TExecution_Context
  {
    PFace current_face;



    Int error;

    Int curRange;
    PByte code;
    Int IP;
    Int codeSize;

    Byte opcode;
    Int length;

    Bool step_ins;


    Int numFDefs;
    PDefRecord FDefs;

    Int numIDefs;
    PDefRecord IDefs;
    Int countIDefs;
    Byte IDefPtr[256];

    PByte glyphIns;
    Int glyphSize;

    Int callTop,
                    callSize;
    PCallStack callStack;

    TCodeRangeTable codeRangeTable;


    Int storeSize;
    PStorage storage;

    Int stackSize;
    Int top;
    PStorage stack;

    Int args,
                    new_top;

    TT_F26Dot6 period;
    TT_F26Dot6 phase;
    TT_F26Dot6 threshold;

    TIns_Metrics metrics;

    Int cur_ppem;
    Long scale1;
    Long scale2;
    Bool cached_metrics;


    TGlyph_Zone zp0,
                    zp1,
                    zp2,
                    pts,
                    twilight;

    Bool instruction_trap;


    TGraphicsState GS;

    TGraphicsState default_GS;

    Bool is_composite;

    Int cvtSize;
    PLong cvt;



    Long F_dot_P;

    TRound_Function func_round;

    TProject_Function func_project,
                       func_dualproj,
                       func_freeProj;

    TMove_Function func_move;

    TGet_CVT_Function func_read_cvt;
    TSet_CVT_Function func_write_cvt;
    TSet_CVT_Function func_move_cvt;

    gsfix_jmp_buf trap;
    Int n_contours;
    Int n_points;
    Int maxGlyphSize;
    Int lock;
    ttfMemory *memory;
  };
# 696 "./base/ttobjs.h"
  TT_Error Goto_CodeRange( PExecution_Context exec, Int range, Int IP );

  void Unset_CodeRange( PExecution_Context exec );



  PCodeRange Get_CodeRange( PExecution_Context exec, Int range );


  TT_Error Set_CodeRange( PExecution_Context exec,
                           Int range,
                           void* base,
                           Int length );


  TT_Error Clear_CodeRange( PExecution_Context exec, Int range );

  PExecution_Context New_Context( PFace face );

  TT_Error Done_Context( PExecution_Context exec );

  TT_Error Context_Load( PExecution_Context exec,
                          PInstance ins );

  TT_Error Context_Save( PExecution_Context exec,
                          PInstance ins );

  TT_Error Context_Run( PExecution_Context exec,
                         Bool debug );

  TT_Error Instance_Init( PInstance ins );

  TT_Error Instance_Reset( PInstance ins,
                            Bool debug );

  TT_Error Instance_Create( void* _instance,
                             void* _face );

  TT_Error Instance_Destroy( void* _instance );

  TT_Error Context_Destroy( void* _context );

  TT_Error Context_Create( void* _context, void* _face );







  TT_Pos Scale_X( PIns_Metrics metrics, TT_Pos x );
  TT_Pos Scale_Y( PIns_Metrics metrics, TT_Pos y );
# 760 "./base/ttobjs.h"
TT_Error Face_Create( PFace _face);
TT_Error Face_Destroy( PFace _face);
# 56 "./base/ttinterp.h" 2






  TT_Error RunIns( PExecution_Context exc );
# 71 "./base/ttinterp.c" 2
# 1 "./base/ttfinp.h" 1
# 22 "./base/ttfinp.h"
unsigned char ttfReader__Byte(ttfReader *r);
signed char ttfReader__SignedByte(ttfReader *r);
unsigned short ttfReader__UShort(ttfReader *r);
unsigned int ttfReader__UInt(ttfReader *r);
signed short ttfReader__Short(ttfReader *r);
signed int ttfReader__Int(ttfReader *r);
# 72 "./base/ttinterp.c" 2
# 212 "./base/ttinterp.c"
  typedef void (*TInstruction_Function)( PExecution_Context exc, PStorage args );
# 246 "./base/ttinterp.c"
  static unsigned char Pop_Push_Count[512] =
  {



                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      0, 2,
                      0, 2,
                      0, 0,
                      5, 0,

                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      0, 0,
                      0, 0,
                      1, 0,
                      0, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,

                      1, 2,
                      1, 0,
                      0, 0,
                      2, 2,
                      0, 1,
                      1, 1,
                      1, 0,
                      2, 0,
                      0, 0,
                      1, 0,
                      2, 0,
                      1, 0,
                      1, 0,
                      0, 0,
                      1, 0,
                      1, 0,

                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      0, 0,
                      2, 0,
                      2, 0,
                      0, 0,
                      0, 0,
                      2, 0,
                      2, 0,

                      0, 0,
                      0, 0,
                      2, 0,
                      1, 1,
                      2, 0,
                      1, 1,
                      1, 1,
                      1, 1,
                      2, 0,
                      2, 1,
                      2, 1,
                      0, 1,
                      0, 1,
                      0, 0,
                      0, 0,
                      1, 0,

                      2, 1,
                      2, 1,
                      2, 1,
                      2, 1,
                      2, 1,
                      2, 1,
                      1, 1,
                      1, 1,
                      1, 0,
                      0, 0,
                      2, 1,
                      2, 1,
                      1, 1,
                      1, 0,
                      1, 0,
                      1, 0,

                      2, 1,
                      2, 1,
                      2, 1,
                      2, 1,
                      1, 1,
                      1, 1,
                      1, 1,
                      1, 1,
                      1, 1,
                      1, 1,
                      1, 1,
                      1, 1,
                      1, 1,
                      1, 1,
                      1, 1,
                      1, 1,

                      2, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      2, 0,
                      2, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      1, 0,
                      1, 0,

                      0, 0,
                      2, 0,
                      2, 0,
                      0, 0,
                      0, 0,
                      1, 0,
                      2, 0,
                      2, 0,
                      1, 1,
                      1, 0,
                      3, 3,
                      2, 1,
                      2, 1,
                      1, 0,
                      2, 0,
                      0, 0,

                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,

                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,
                      0, 0,

                      0, 1,
                      0, 2,
                      0, 3,
                      0, 4,
                      0, 5,
                      0, 6,
                      0, 7,
                      0, 8,
                      0, 1,
                      0, 2,
                      0, 3,
                      0, 4,
                      0, 5,
                      0, 6,
                      0, 7,
                      0, 8,

                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,

                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,
                      1, 0,

                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,

                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0,
                      2, 0
  };
# 536 "./base/ttinterp.c"
  static TT_F26Dot6 Norm( TT_F26Dot6 X, TT_F26Dot6 Y )
  {
    Int64 T1, T2;

    ( (T1) = (Int64)(X) * (X) );
    ( (T2) = (Int64)(Y) * (Y) );

    ( (T1) = (T1) + (T2) );

    return (TT_F26Dot6)Sqrt64( T1 );
  }
# 560 "./base/ttinterp.c"
  static TT_F26Dot6 FUnits_To_Pixels( PExecution_Context exc, Int distance )
  {
    return MulDiv_Round( distance,
                         (*exc).metrics.scale1,
                         (*exc).metrics.scale2 );
  }
# 581 "./base/ttinterp.c"
  static Long Current_Ratio( PExecution_Context exc )
  {
    if ( (*exc).metrics.ratio )
      return (*exc).metrics.ratio;

    if ( (*exc).GS.projVector.y == 0 )
      (*exc).metrics.ratio = (*exc).metrics.x_ratio;

    else if ( (*exc).GS.projVector.x == 0 )
      (*exc).metrics.ratio = (*exc).metrics.y_ratio;

    else
    {
      Long x, y;

      x = MulDiv_Round( (*exc).GS.projVector.x, (*exc).metrics.x_ratio, 0x4000 );
      y = MulDiv_Round( (*exc).GS.projVector.y, (*exc).metrics.y_ratio, 0x4000 );
      (*exc).metrics.ratio = Norm( x, y );
    }

    return (*exc).metrics.ratio;
  }

  static Int Current_Ppem( PExecution_Context exc )
  {
    return MulDiv_Round( (*exc).metrics.ppem, Current_Ratio( exc ), 0x10000 );
  }

  static TT_F26Dot6 Read_CVT( PExecution_Context exc, Int index )
  {
    return (*exc).cvt[index];
  }

  static TT_F26Dot6 Read_CVT_Stretched( PExecution_Context exc, Int index )
  {
    return MulDiv_Round( (*exc).cvt[index], Current_Ratio( exc ), 0x10000 );
  }

  static void Write_CVT( PExecution_Context exc, Int index, TT_F26Dot6 value )
  {
    int ov=(*exc).cvt[index];
    (void)ov;
    (*exc).cvt[index] = value;
                                                           ;
}

  static void Write_CVT_Stretched( PExecution_Context exc, Int index, TT_F26Dot6 value )
  {
    int ov=(*exc).cvt[index];
    (void)ov;
    (*exc).cvt[index] = MulDiv_Round( value, 0x10000, Current_Ratio( exc ) );
                                                           ;
  }

  static void Move_CVT( PExecution_Context exc, Int index, TT_F26Dot6 value )
  {
    int ov=(*exc).cvt[index];
    (void)ov;
    (*exc).cvt[index] += value;
                                                           ;
  }

  static void Move_CVT_Stretched( PExecution_Context exc, Int index, TT_F26Dot6 value )
  {
    int ov=(*exc).cvt[index];
    (void)ov;
    (*exc).cvt[index] += MulDiv_Round( value, 0x10000, Current_Ratio( exc ) );
                                                           ;
  }
# 659 "./base/ttinterp.c"
  static Bool Calc_Length( PExecution_Context exc )
  {
    (*exc).opcode = (*exc).code[(*exc).IP];

    switch ( (*exc).opcode )
    {
    case 0x40:
      if ( (*exc).IP + 1 >= (*exc).codeSize )
        return -1;

      (*exc).length = (*exc).code[(*exc).IP + 1] + 2;
      break;

    case 0x41:
      if ( (*exc).IP + 1 >= (*exc).codeSize )
        return -1;

      (*exc).length = (*exc).code[(*exc).IP + 1] * 2 + 2;
      break;

    case 0xB0:
    case 0xB1:
    case 0xB2:
    case 0xB3:
    case 0xB4:
    case 0xB5:
    case 0xB6:
    case 0xB7:
      (*exc).length = (*exc).opcode - 0xB0 + 2;
      break;

    case 0xB8:
    case 0xB9:
    case 0xBA:
    case 0xBB:
    case 0xBC:
    case 0xBD:
    case 0xBE:
    case 0xBF:
      (*exc).length = ((*exc).opcode - 0xB8) * 2 + 3;
      break;

    default:
      (*exc).length = 1;
      break;
    }



    if ( (*exc).IP + (*exc).length > (*exc).codeSize )
      return -1;

    return 0;
  }
# 729 "./base/ttinterp.c"
  static Short GetShortIns( PExecution_Context exc )
  {

    (*exc).IP += 2;
    return ( (*exc).code[(*exc).IP-2] << 8) +
             (*exc).code[(*exc).IP-1];
  }
# 752 "./base/ttinterp.c"
  static Bool Ins_Goto_CodeRange( PExecution_Context exc, Int aRange, Int aIP )
  {
    TCodeRange* WITH;

    if ( aRange < 1 || aRange > 3 )
    {
      (*exc).error = 0x404;
      return -1;
    }

    WITH = &(*exc).codeRangeTable[aRange - 1];

    if ( WITH->Base == ((void*)0) )
    {
      (*exc).error = 0x40F;
      return -1;
    }





    if ( aIP > WITH->Size )
    {
      (*exc).error = 0x403;
      return -1;
    }

    (*exc).code = WITH->Base;
    (*exc).codeSize = WITH->Size;
    (*exc).IP = aIP;
    (*exc).curRange = aRange;

    return 0;
  }
# 803 "./base/ttinterp.c"
  static void Direct_Move( PExecution_Context exc, PGlyph_Zone zone,
                                     Int point,
                                     TT_F26Dot6 distance )
  {
    TT_F26Dot6 v;

    v = (*exc).GS.freeVector.x;

    if ( v != 0 )
    {
      zone->cur_x[point] += MulDiv_Round( distance,
                                          v * 0x10000L,
                                          (*exc).F_dot_P );

      zone->touch[point] |= 2;
    }

    v = (*exc).GS.freeVector.y;

    if ( v != 0 )
    {
      zone->cur_y[point] += MulDiv_Round( distance,
                                          v * 0x10000L,
                                          (*exc).F_dot_P );

      zone->touch[point] |= 4;
    }
  }
# 844 "./base/ttinterp.c"
  static void Direct_Move_X( PExecution_Context exc, PGlyph_Zone zone,
                                       Int point,
                                       TT_F26Dot6 distance )
  { (void)exc;
    zone->cur_x[point] += distance;
    zone->touch[point] |= 2;
  }






  static void Direct_Move_Y( PExecution_Context exc, PGlyph_Zone zone,
                                       Int point,
                                       TT_F26Dot6 distance )
  { (void)exc;
    zone->cur_y[point] += distance;
    zone->touch[point] |= 4;
  }
# 883 "./base/ttinterp.c"
  static TT_F26Dot6 Round_None( PExecution_Context exc, TT_F26Dot6 distance,
                                          TT_F26Dot6 compensation )
  {
    TT_F26Dot6 val;
    (void)exc;

    if ( distance >= 0 )
    {
      val = distance + compensation;
      if ( val < 0 )
        val = 0;
    }
    else {
      val = distance - compensation;
      if ( val > 0 )
        val = 0;
    }

    return val;
  }
# 918 "./base/ttinterp.c"
  static TT_F26Dot6 Round_To_Grid( PExecution_Context exc, TT_F26Dot6 distance,
                                             TT_F26Dot6 compensation )
  {
    TT_F26Dot6 val;
    (void)exc;

    if ( distance >= 0 )
    {
      val = (distance + compensation + 32) & (-64);
      if ( val < 0 )
        val = 0;
    }
    else
    {
      val = -( (compensation - distance + 32) & (-64) );
      if ( val > 0 )
        val = 0;
    }

    return val;
  }
# 954 "./base/ttinterp.c"
  static TT_F26Dot6 Round_To_Half_Grid( PExecution_Context exc, TT_F26Dot6 distance,
                                                  TT_F26Dot6 compensation )
  {
    TT_F26Dot6 val;
     (void)exc;

    if ( distance >= 0 )
    {
      val = ((distance + compensation) & (-64)) + 32;
      if ( val < 0 )
        val = 0;
    }
    else
    {
      val = -( ((compensation - distance) & (-64)) + 32 );
      if ( val > 0 )
        val = 0;
    }

    return val;
  }
# 990 "./base/ttinterp.c"
  static TT_F26Dot6 Round_Down_To_Grid( PExecution_Context exc, TT_F26Dot6 distance,
                                                  TT_F26Dot6 compensation )
  {
    TT_F26Dot6 val;
    (void)exc;

    if ( distance >= 0 )
    {
      val = (distance + compensation) & (-64);
      if ( val < 0 )
        val = 0;
    }
    else
    {
      val = -( (compensation - distance) & (-64) );
      if ( val > 0 )
        val = 0;
    }

    return val;
  }
# 1026 "./base/ttinterp.c"
  static TT_F26Dot6 Round_Up_To_Grid( PExecution_Context exc, TT_F26Dot6 distance,
                                                TT_F26Dot6 compensation )
  {
    TT_F26Dot6 val;
    (void)exc;

    if ( distance >= 0 )
    {
      val = (distance + compensation + 63) & (-64);
      if ( val < 0 )
        val = 0;
    }
    else
    {
      val = -( (compensation - distance + 63) & (-64) );
      if ( val > 0 )
        val = 0;
    }

    return val;
  }
# 1062 "./base/ttinterp.c"
  static TT_F26Dot6 Round_To_Double_Grid( PExecution_Context exc, TT_F26Dot6 distance,
                                                    TT_F26Dot6 compensation )
  {
    TT_F26Dot6 val;
    (void)exc;

    if ( distance >= 0 )
    {
      val = (distance + compensation + 16) & (-32);
      if ( val < 0 )
        val = 0;
    }
    else
    {
      val = -( (compensation - distance + 16) & (-32) );
      if ( val > 0 )
        val = 0;
    }

    return val;
  }
# 1103 "./base/ttinterp.c"
  static TT_F26Dot6 Round_Super( PExecution_Context exc, TT_F26Dot6 distance,
                                           TT_F26Dot6 compensation )
  {
    TT_F26Dot6 val;

    if ( distance >= 0 )
    {
      val = (distance - (*exc).phase + (*exc).threshold + compensation) &
              (-(*exc).period);
      if ( val < 0 )
        val = 0;
      val += (*exc).phase;
    }
    else
    {
      val = -( ((*exc).threshold - (*exc).phase - distance + compensation) &
               (-(*exc).period) );
      if ( val > 0 )
        val = 0;
      val -= (*exc).phase;
    }

    return val;
  }
# 1145 "./base/ttinterp.c"
  static TT_F26Dot6 Round_Super_45( PExecution_Context exc, TT_F26Dot6 distance,
                                              TT_F26Dot6 compensation )
  {
    TT_F26Dot6 val;

    if ( distance >= 0 )
    {
      val = ( (distance - (*exc).phase + (*exc).threshold + compensation) /
                (*exc).period ) * (*exc).period;
      if ( val < 0 )
        val = 0;
      val += (*exc).phase;
    }
    else
    {
      val = -( ( ((*exc).threshold - (*exc).phase - distance + compensation) /
                   (*exc).period ) * (*exc).period );
      if ( val > 0 )
        val = 0;
      val -= (*exc).phase;
    }

    return val;
  }






  static void Compute_Round( PExecution_Context exc, Byte round_mode )
  {
    switch ( round_mode )
    {
    case 5:
      (*exc).func_round = (TRound_Function)Round_None;
      break;

    case 1:
      (*exc).func_round = (TRound_Function)Round_To_Grid;
      break;

    case 4:
      (*exc).func_round = (TRound_Function)Round_Up_To_Grid;
      break;

    case 3:
      (*exc).func_round = (TRound_Function)Round_Down_To_Grid;
      break;

    case 0:
      (*exc).func_round = (TRound_Function)Round_To_Half_Grid;
      break;

    case 2:
      (*exc).func_round = (TRound_Function)Round_To_Double_Grid;
      break;

    case 6:
      (*exc).func_round = (TRound_Function)Round_Super;
      break;

    case 7:
      (*exc).func_round = (TRound_Function)Round_Super_45;
      break;
    }
  }
# 1226 "./base/ttinterp.c"
  static void SetSuperRound( PExecution_Context exc, TT_F26Dot6 GridPeriod,
                                       Long selector )
  {
    switch ( selector & 0xC0 )
    {
      case 0:
        (*exc).period = GridPeriod / 2;
        break;

      case 0x40:
        (*exc).period = GridPeriod;
        break;

      case 0x80:
        (*exc).period = GridPeriod * 2;
        break;



      case 0xC0:
        (*exc).period = GridPeriod;
        break;
    }

    switch ( selector & 0x30 )
    {
    case 0:
      (*exc).phase = 0;
      break;

    case 0x10:
      (*exc).phase = (*exc).period / 4;
      break;

    case 0x20:
      (*exc).phase = (*exc).period / 2;
      break;

    case 0x30:
      (*exc).phase = GridPeriod * 3 / 4;
      break;
    }

    if ( (selector & 0x0F) == 0 )
      (*exc).threshold = (*exc).period - 1;
    else
      (*exc).threshold = ( (Int)(selector & 0x0F) - 4L ) * (*exc).period / 8;

    (*exc).period /= 256;
    (*exc).phase /= 256;
    (*exc).threshold /= 256;
  }
# 1291 "./base/ttinterp.c"
  static TT_F26Dot6 Project( PExecution_Context exc, TT_F26Dot6 Vx, TT_F26Dot6 Vy )
  {
    longjmp((*(jmp_buf *)( ((size_t)((*exc).trap).stuff + ((size_t)&((gsfix_jmp_buf_test*)0)->j)) & ~(size_t)(((size_t)&((gsfix_jmp_buf_test*)0)->j)-1) )), 0x020);
    return 0;
  }
# 1310 "./base/ttinterp.c"
  static TT_F26Dot6 Dual_Project( PExecution_Context exc, TT_F26Dot6 Vx, TT_F26Dot6 Vy )
  {
    longjmp((*(jmp_buf *)( ((size_t)((*exc).trap).stuff + ((size_t)&((gsfix_jmp_buf_test*)0)->j)) & ~(size_t)(((size_t)&((gsfix_jmp_buf_test*)0)->j)-1) )), 0x020);
    return 0;
  }
# 1329 "./base/ttinterp.c"
  static TT_F26Dot6 Free_Project( PExecution_Context exc, TT_F26Dot6 Vx, TT_F26Dot6 Vy )
  {
    longjmp((*(jmp_buf *)( ((size_t)((*exc).trap).stuff + ((size_t)&((gsfix_jmp_buf_test*)0)->j)) & ~(size_t)(((size_t)&((gsfix_jmp_buf_test*)0)->j)-1) )), 0x020);
    return 0;
  }
# 1347 "./base/ttinterp.c"
  static TT_F26Dot6 Project_x( PExecution_Context exc, TT_F26Dot6 Vx, TT_F26Dot6 Vy )
  { (void)exc; (void)Vy;
    return Vx;
  }
# 1364 "./base/ttinterp.c"
  static TT_F26Dot6 Project_y( PExecution_Context exc, TT_F26Dot6 Vx, TT_F26Dot6 Vy )
  { (void)exc; (void)Vx;
    return Vy;
  }
# 1380 "./base/ttinterp.c"
  static void Compute_Funcs( PExecution_Context exc )
  {
    if ( (*exc).GS.freeVector.x == 0x4000 )
    {
      (*exc).func_freeProj = (TProject_Function)Project_x;
      (*exc).F_dot_P = (*exc).GS.projVector.x * 0x10000L;
    }
    else
    {
      if ( (*exc).GS.freeVector.y == 0x4000 )
      {
        (*exc).func_freeProj = (TProject_Function)Project_y;
        (*exc).F_dot_P = (*exc).GS.projVector.y * 0x10000L;
      }
      else
      {
        (*exc).func_move = (TMove_Function)Direct_Move;
        (*exc).func_freeProj = (TProject_Function)Free_Project;
        (*exc).F_dot_P = (Long)(*exc).GS.projVector.x * (*exc).GS.freeVector.x * 4 +
                      (Long)(*exc).GS.projVector.y * (*exc).GS.freeVector.y * 4;
      }
    }

    (*exc).cached_metrics = 0;

    if ( (*exc).GS.projVector.x == 0x4000 )
      (*exc).func_project = (TProject_Function)Project_x;
    else
    {
      if ( (*exc).GS.projVector.y == 0x4000 )
        (*exc).func_project = (TProject_Function)Project_y;
      else
        (*exc).func_project = (TProject_Function)Project;
    }

    if ( (*exc).GS.dualVector.x == 0x4000 )
      (*exc).func_dualproj = (TProject_Function)Project_x;
    else
    {
      if ( (*exc).GS.dualVector.y == 0x4000 )
        (*exc).func_dualproj = (TProject_Function)Project_y;
      else
        (*exc).func_dualproj = (TProject_Function)Dual_Project;
    }

    (*exc).func_move = (TMove_Function)Direct_Move;

    if ( (*exc).F_dot_P == 0x40000000L )
    {
      if ( (*exc).GS.freeVector.x == 0x4000 )
        (*exc).func_move = (TMove_Function)Direct_Move_X;
      else
      {
        if ( (*exc).GS.freeVector.y == 0x4000 )
          (*exc).func_move = (TMove_Function)Direct_Move_Y;
      }
    }




    if ( ( ((*exc).F_dot_P) < 0 ? -((*exc).F_dot_P) : ((*exc).F_dot_P) ) < 0x4000000L )
      (*exc).F_dot_P = 0x40000000L;


    (*exc).metrics.ratio = 0;
  }
# 1461 "./base/ttinterp.c"
  static Bool Normalize( PExecution_Context exc, TT_F26Dot6 Vx,
                                   TT_F26Dot6 Vy,
                                   TT_UnitVector* R )
  {
    TT_F26Dot6 W;
    Bool S1, S2;

    if ( ( (Vx) < 0 ? -(Vx) : (Vx) ) < 0x10000L && ( (Vy) < 0 ? -(Vy) : (Vy) ) < 0x10000L )
    {
      Vx *= 0x100;
      Vy *= 0x100;

      W = Norm( Vx, Vy );

      if ( W == 0 )
      {


        return 0;
      }

      R->x = (TT_F2Dot14)MulDiv_Round( Vx, 0x4000L, W );
      R->y = (TT_F2Dot14)MulDiv_Round( Vy, 0x4000L, W );

      return 0;
    }

    W = Norm( Vx, Vy );

    if ( W <= 0 )
    {
      (*exc).error = 0x405;
      return -1;
    }

    Vx = MulDiv_Round( Vx, 0x4000L, W );
    Vy = MulDiv_Round( Vy, 0x4000L, W );

    W = Vx * Vx + Vy * Vy;




    if ( Vx < 0 )
    {
      Vx = -Vx;
      S1 = 1;
    }
    else
      S1 = 0;

    if ( Vy < 0 )
    {
      Vy = -Vy;
      S2 = 1;
    }
    else
      S2 = 0;

    while ( W < 0x10000000L )
    {

      if ( Vx < Vy )
        Vx++;
      else
        Vy++;

      W = Vx * Vx + Vy * Vy;
    }

    while ( W >= 0x10004000L )
    {

      if ( Vx < Vy )
        Vx--;
      else
        Vy--;

      W = Vx * Vx + Vy * Vy;
    }




    if ( S1 )
      Vx = -Vx;

    if ( S2 )
      Vy = -Vy;

    R->x = (TT_F2Dot14)Vx;
    R->y = (TT_F2Dot14)Vy;

    return 0;
  }
# 1569 "./base/ttinterp.c"
  static void Ins_DUP( PExecution_Context exc, PStorage args )
  { (void)exc;
    args[1] = args[0];
  }





  static void Ins_POP( PExecution_Context exc, PStorage args )
  { (void)exc; (void)args;

  }





  static void Ins_CLEAR( PExecution_Context exc, PStorage args )
  { (void)args;
    (*exc).new_top = 0;
  }





  static void Ins_SWAP( PExecution_Context exc, PStorage args )
  {
    Long L;
    (void)exc;

    L = args[0];
    args[0] = args[1];
    args[1] = L;
  }





  static void Ins_DEPTH( PExecution_Context exc, PStorage args )
  {
    args[0] = (*exc).top;
  }





  static void Ins_CINDEX( PExecution_Context exc, PStorage args )
  {
    Long L;

    L = args[0];

    if ( L<0 || L > (*exc).args )
      (*exc).error = 0x408;
    else
      args[0] = (*exc).stack[(*exc).args - L];
  }





  static void Ins_MINDEX( PExecution_Context exc, PStorage args )
  {
    Long L, K;

    L = args[0];

    if (L == 0)
        return;

    if ( L<0 || L > (*exc).args )
    {
      (*exc).error = 0x408;
      return;
    }

    K = (*exc).stack[(*exc).args - L];

    memmove( (&(*exc).stack[(*exc).args - L ]),
              (&(*exc).stack[(*exc).args - L + 1]),
              (L - 1) * sizeof ( Long ) );

    (*exc).stack[ (*exc).args-1 ] = K;
  }





  static void Ins_ROLL( PExecution_Context exc, PStorage args )
  {
    Long A, B, C;
    (void)exc;

    A = args[2];
    B = args[1];
    C = args[0];

    args[2] = C;
    args[1] = A;
    args[0] = B;
  }
# 1685 "./base/ttinterp.c"
  static Bool SkipCode( PExecution_Context exc )
  {
    (*exc).IP += (*exc).length;

    if ( (*exc).IP < (*exc).codeSize )
      if ( Calc_Length( exc ) == 0 )
        return 0;

    (*exc).error = 0x403;
    return -1;
  }





  static void Ins_IF( PExecution_Context exc, PStorage args )
  {
    Int nIfs;
    Bool Out;

    if ( args[0] != 0 )
      return;

    nIfs = 1;
    Out = 0;

    do
    {
      if ( SkipCode( exc ) == -1 )
        return;

      switch ( (*exc).opcode )
      {
      case 0x58:
        nIfs++;
        break;

      case 0x1b:
        Out = (nIfs == 1);
        break;

      case 0x59:
        nIfs--;
        Out = (nIfs == 0);
        break;
      }
    } while ( Out == 0 );
  }





  static void Ins_ELSE( PExecution_Context exc, PStorage args )
  {
    Int nIfs;
    (void)args;

    nIfs = 1;

    do
    {
      if ( SkipCode( exc ) == -1 )
        return;

      switch ( (*exc).opcode )
      {
      case 0x58:
        nIfs++;
        break;

      case 0x59:
        nIfs--;
        break;
      }
    } while ( nIfs != 0 );
  }





  static void Ins_EIF( PExecution_Context exc, PStorage args )
  { (void)exc; (void)args;

  }





  static void Ins_JROT( PExecution_Context exc, PStorage args )
  {
    if ( args[1] != 0 )
    {
      (*exc).IP += (Int)(args[0]);
      (*exc).step_ins = 0;


      if((*exc).code[(*exc).IP] != 0x2D && (*exc).code[(*exc).IP - 1] == 0x2D)
        (*exc).IP -= 1;
    }
  }





  static void Ins_JMPR( PExecution_Context exc, PStorage args )
  {
    (*exc).IP += (Int)(args[0]);
    (*exc).step_ins = 0;

    if((*exc).code[(*exc).IP] != 0x2D && (*exc).code[(*exc).IP - 1] == 0x2D)







      (*exc).IP -= 1;
  }





  static void Ins_JROF( PExecution_Context exc, PStorage args )
  {
    if ( args[1] == 0 )
    {
      (*exc).IP += (Int)(args[0]);
      (*exc).step_ins = 0;


      if((*exc).code[(*exc).IP] != 0x2D && (*exc).code[(*exc).IP - 1] == 0x2D)
        (*exc).IP -= 1;
    }
  }
# 1839 "./base/ttinterp.c"
  static void Ins_LT( PExecution_Context exc, PStorage args )
  { (void)exc;
    if ( args[0] < args[1] )
      args[0] = 1;
    else
      args[0] = 0;
  }





  static void Ins_LTEQ( PExecution_Context exc, PStorage args )
  { (void)exc;
    if ( args[0] <= args[1] )
      args[0] = 1;
    else
      args[0] = 0;
  }





  static void Ins_GT( PExecution_Context exc, PStorage args )
  { (void)exc;
    if ( args[0] > args[1] )
      args[0] = 1;
    else
      args[0] = 0;
  }





  static void Ins_GTEQ( PExecution_Context exc, PStorage args )
  { (void)exc;
    if ( args[0] >= args[1] )
      args[0] = 1;
    else
      args[0] = 0;
  }





  static void Ins_EQ( PExecution_Context exc, PStorage args )
  { (void)exc;
    if ( args[0] == args[1] )
      args[0] = 1;
    else
      args[0] = 0;
  }





  static void Ins_NEQ( PExecution_Context exc, PStorage args )
  { (void)exc;
    if ( args[0] != args[1] )
      args[0] = 1;
    else
      args[0] = 0;
  }





  static void Ins_ODD( PExecution_Context exc, PStorage args )
  {
    if ( ((*exc).func_round( exc, args[0], 0L ) & 127) == 64 )
      args[0] = 1;
    else
      args[0] = 0;
  }





  static void Ins_EVEN( PExecution_Context exc, PStorage args )
  {
    if ( ((*exc).func_round( exc, args[0], 0L ) & 127) == 0 )
      args[0] = 1;
    else
      args[0] = 0;
  }





  static void Ins_AND( PExecution_Context exc, PStorage args )
  { (void)exc;
    if ( args[0] != 0 && args[1] != 0 )
      args[0] = 1;
    else
      args[0] = 0;
  }





  static void Ins_OR( PExecution_Context exc, PStorage args )
  { (void)exc;
    if ( args[0] != 0 || args[1] != 0 )
      args[0] = 1;
    else
      args[0] = 0;
  }





  static void Ins_NOT( PExecution_Context exc, PStorage args )
  { (void)exc;
    if ( args[0] != 0 )
      args[0] = 0;
    else
      args[0] = 1;
  }
# 1979 "./base/ttinterp.c"
  static void Ins_ADD( PExecution_Context exc, PStorage args )
  { (void)exc;
    args[0] += args[1];
  }





  static void Ins_SUB( PExecution_Context exc, PStorage args )
  { (void)exc;
    args[0] -= args[1];
  }





  static void Ins_DIV( PExecution_Context exc, PStorage args )
  {
    if ( args[1] == 0 )
    {
      (*exc).error = 0x405;
      return;
    }

    args[0] = MulDiv_Round( args[0], 64L, args[1] );
                              ;
  }





  static void Ins_MUL( PExecution_Context exc, PStorage args )
  { (void)exc;
    args[0] = MulDiv_Round( args[0], args[1], 64L );
  }





  static void Ins_ABS( PExecution_Context exc, PStorage args )
  { (void)exc;
    args[0] = ( (args[0]) < 0 ? -(args[0]) : (args[0]) );
  }





  static void Ins_NEG( PExecution_Context exc, PStorage args )
  { (void)exc;
    args[0] = -args[0];
  }





  static void Ins_FLOOR( PExecution_Context exc, PStorage args )
  { (void)exc;
    args[0] &= -64;
  }





  static void Ins_CEILING( PExecution_Context exc, PStorage args )
  { (void)exc;
    args[0] = (args[0] + 63) & (-64);
  }





  static void Ins_MAX( PExecution_Context exc, PStorage args )
  { (void)exc;
    if ( args[1] > args[0] )
      args[0] = args[1];
  }





  static void Ins_MIN( PExecution_Context exc, PStorage args )
  { (void)exc;
    if ( args[1] < args[0] )
      args[0] = args[1];
  }
# 2086 "./base/ttinterp.c"
  static void Ins_ROUND( PExecution_Context exc, PStorage args )
  {
    args[0] = (*exc).func_round( exc, args[0], (*exc).metrics.compensations[(*exc).opcode - 0x68] );

  }





  static void Ins_NROUND( PExecution_Context exc, PStorage args )
  {
    args[0] = Round_None( exc,
                          args[0],
                          (*exc).metrics.compensations[(*exc).opcode - 0x6C] );
  }
# 2112 "./base/ttinterp.c"
  static void skip_FDEF( PExecution_Context exc )
  {


    while ( SkipCode( exc ) == 0 )
    {
      switch ( (*exc).opcode )
      {
      case 0x89:
      case 0x2c:
        (*exc).error = 0x40E;
        return;

      case 0x2d:
        return;
      }
    }
  }





  static void Ins_FDEF( PExecution_Context exc, PStorage args )
  {
    PDefRecord pRec;

    if ( ( args[0] < 0 || args[0] >= (*exc).numFDefs ) )
    {
      (*exc).error = 0x408;
      return;
    }

    pRec = &(*exc).FDefs[args[0]];

    pRec->Range = (*exc).curRange;
    pRec->Opc = (Byte)(args[0]);
    pRec->Start = (*exc).IP + 1;
    pRec->Active = 1;

    skip_FDEF(exc);
  }





  static void Ins_ENDF( PExecution_Context exc, PStorage args )
  {
    PCallRecord pRec;
     (void)args;

    if ( (*exc).callTop <= 0 )
    {
      (*exc).error = 0x40C;
      return;
    }

    (*exc).callTop--;

    pRec = &(*exc).callStack[(*exc).callTop];

    pRec->Cur_Count--;

    (*exc).step_ins = 0;

    if ( pRec->Cur_Count > 0 )
    {
      (*exc).callTop++;
      (*exc).IP = pRec->Cur_Restart;
    }
    else

      Ins_Goto_CodeRange( exc, pRec->Caller_Range, pRec->Caller_IP );
# 2195 "./base/ttinterp.c"
  }





  static void Ins_CALL( PExecution_Context exc, PStorage args )
  {
    PCallRecord pCrec;

    if ( ( args[0] < 0 || args[0] >= (*exc).numFDefs ) || !(*exc).FDefs[args[0]].Active )
    {
      (*exc).error = 0x408;
      return;
    }

    if ( (*exc).callTop >= (*exc).callSize )
    {
      (*exc).error = 0x402;
      return;
    }

                             ;

    pCrec = &(*exc).callStack[(*exc).callTop];

    pCrec->Caller_Range = (*exc).curRange;
    pCrec->Caller_IP = (*exc).IP + 1;
    pCrec->Cur_Count = 1;
    pCrec->Cur_Restart = (*exc).FDefs[args[0]].Start;

    (*exc).callTop++;

    Ins_Goto_CodeRange( exc, (*exc).FDefs[args[0]].Range, (*exc).FDefs[args[0]].Start );


    (*exc).step_ins = 0;
  }





  static void Ins_LOOPCALL( PExecution_Context exc, PStorage args )
  {
    PCallRecord pTCR;

    if ( ( args[1] < 0 || args[1] >= (*exc).numFDefs ) || !(*exc).FDefs[args[1]].Active )
    {
      (*exc).error = 0x408;
      return;
    }

    if ( (*exc).callTop >= (*exc).callSize )
    {
      (*exc).error = 0x402;
      return;
    }

    if ( args[0] > 0 )
    {
      pTCR = &(*exc).callStack[(*exc).callTop];

      pTCR->Caller_Range = (*exc).curRange;
      pTCR->Caller_IP = (*exc).IP + 1;
      pTCR->Cur_Count = (Int)(args[0]);
      pTCR->Cur_Restart = (*exc).FDefs[args[1]].Start;

      (*exc).callTop++;

      Ins_Goto_CodeRange( exc, (*exc).FDefs[args[1]].Range, (*exc).FDefs[args[1]].Start );


      (*exc).step_ins = 0;
    }
  }





  static void Ins_IDEF( PExecution_Context exc, PStorage args )
  {
    if ((*exc).countIDefs >= (*exc).numIDefs || args[0] > 255)
        (*exc).error = 0x406;
    else
      {
        PDefRecord pTDR;

        (*exc).IDefPtr[(Byte)(args[0])] = (*exc).countIDefs;
        pTDR = &(*exc).IDefs[(*exc).countIDefs++];
        pTDR->Opc = (Byte)(args[0]);
        pTDR->Start = (*exc).IP + 1;
        pTDR->Range = (*exc).curRange;
        pTDR->Active = 1;
        skip_FDEF(exc);
      }
  }
# 2306 "./base/ttinterp.c"
  static void Ins_NPUSHB( PExecution_Context exc, PStorage args )
  {
    Int L, K;

    L = (Int)(*exc).code[(*exc).IP + 1];

    if ( ( L < 0 || L >= (*exc).stackSize+1-(*exc).top ) )
    {
      (*exc).error = 0x402;
      return;
    }

    for ( K = 1; K <= L; K++ )
      { args[K - 1] = (*exc).code[(*exc).IP + K + 1];
                                      ;
      }

    (*exc).new_top += L;
  }





  static void Ins_NPUSHW( PExecution_Context exc, PStorage args )
  {
    Int L, K;

    L = (Int)(*exc).code[(*exc).IP + 1];

    if ( ( L < 0 || L >= (*exc).stackSize+1-(*exc).top ) )
    {
      (*exc).error = 0x402;
      return;
    }

    (*exc).IP += 2;

    for ( K = 0; K < L; K++ )
      { args[K] = GetShortIns( exc );
                                  ;
      }

    (*exc).step_ins = 0;
    (*exc).new_top += L;
  }





  static void Ins_PUSHB( PExecution_Context exc, PStorage args )
  {
    Int L, K;

    L = ((Int)(*exc).opcode - 0xB0 + 1);

    if ( ( L < 0 || L >= (*exc).stackSize+1-(*exc).top ) )
    {
      (*exc).error = 0x402;
      return;
    }

    for ( K = 1; K <= L; K++ )
      { args[K - 1] = (*exc).code[(*exc).IP + K];
                                      ;
      }
  }





  static void Ins_PUSHW( PExecution_Context exc, PStorage args )
  {
    Int L, K;

    L = (*exc).opcode - 0xB8 + 1;

    if ( ( L < 0 || L >= (*exc).stackSize+1-(*exc).top ) )
    {
      (*exc).error = 0x402;
      return;
    }

    (*exc).IP++;

    for ( K = 0; K < L; K++ )
      { args[K] = GetShortIns( exc );
                                  ;
      }

    (*exc).step_ins = 0;
  }
# 2413 "./base/ttinterp.c"
  static void Ins_RS( PExecution_Context exc, PStorage args )
  {
    if ( ( args[0] < 0 || args[0] >= (*exc).storeSize ) )
    {
      (*exc).error = 0x408;
      return;
    }

    args[0] = (*exc).storage[args[0]];
  }





  static void Ins_WS( PExecution_Context exc, PStorage args )
  {
    if ( ( args[0] < 0 || args[0] >= (*exc).storeSize ) )
    {
      (*exc).error = 0x408;
      return;
    }

    (*exc).storage[args[0]] = args[1];
  }





  static void Ins_WCVTP( PExecution_Context exc, PStorage args )
  {
    if ( ( args[0] < 0 || args[0] >= (*exc).cvtSize ) )
    {
      (*exc).error = 0x408;
      return;
    }

    (*exc).func_write_cvt( exc, args[0], args[1] );
  }





  static void Ins_WCVTF( PExecution_Context exc, PStorage args )
  {
    int ov;

    if ( ( args[0] < 0 || args[0] >= (*exc).cvtSize ) )
    {
      (*exc).error = 0x408;
      return;
    }

    ov = (*exc).cvt[args[0]];
    (*exc).cvt[args[0]] = FUnits_To_Pixels( exc, args[1] );
                                                               ;
  }





  static void Ins_RCVT( PExecution_Context exc, PStorage args )
  {
    int index;
    if ( ( args[0] < 0 || args[0] >= (*exc).cvtSize ) )
    {
      (*exc).error = 0x408;
      return;
    }
    index=args[0];
    args[0] = (*exc).func_read_cvt( exc, index );
                                                               ;
  }
# 2502 "./base/ttinterp.c"
  static void Ins_SVTCA( PExecution_Context exc, PStorage args )
  {
    Short A, B;
    (void)args;

    if ( (*exc).opcode & 1 )
        A = 0x4000;
    else
        A = 0;

    B = A ^ 0x4000;

    (*exc).GS.freeVector.x = A;
    (*exc).GS.projVector.x = A;
    (*exc).GS.dualVector.x = A;

    (*exc).GS.freeVector.y = B;
    (*exc).GS.projVector.y = B;
    (*exc).GS.dualVector.y = B;

    Compute_Funcs( exc );
  }





  static void Ins_SPVTCA( PExecution_Context exc, PStorage args )
  {
    Short A, B;
    (void)args;
    if ( (*exc).opcode & 1 )
      A = 0x4000;
    else
      A = 0;

    B = A ^ 0x4000;

    (*exc).GS.projVector.x = A;
    (*exc).GS.dualVector.x = A;

    (*exc).GS.projVector.y = B;
    (*exc).GS.dualVector.y = B;

    Compute_Funcs( exc );
  }





  static void Ins_SFVTCA( PExecution_Context exc, PStorage args )
  {
    Short A, B;
    (void)args;

    if ( (*exc).opcode & 1 )
      A = 0x4000;
    else
      A = 0;

    B = A ^ 0x4000;

    (*exc).GS.freeVector.x = A;
    (*exc).GS.freeVector.y = B;

    Compute_Funcs( exc );
  }

  static Bool Ins_SxVTL( PExecution_Context exc, Int aIdx1,
                                    Int aIdx2,
                                    Int aOpc,
                                    TT_UnitVector* Vec )
  {
    Long A, B, C;

    if ( ( aIdx1 < 0 || aIdx1 >= (*exc).zp2.n_points ) ||
         ( aIdx2 < 0 || aIdx2 >= (*exc).zp1.n_points ) )
    {
      (*exc).error = 0x408;
      return -1;
    }

    A = (*exc).zp1.cur_x[aIdx2] - (*exc).zp2.cur_x[aIdx1];
    B = (*exc).zp1.cur_y[aIdx2] - (*exc).zp2.cur_y[aIdx1];

    if ( (aOpc & 1) != 0 )
    {
      C = B;
      B = A;
      A = -C;
    }

    if ( Normalize( exc, A, B, Vec ) == -1 )
    {


      (*exc).error = 0;
      Vec->x = 0x4000;
      Vec->y = 0;
    }

    return 0;
  }





  static void Ins_SPVTL( PExecution_Context exc, PStorage args )
  {
    if ( Ins_SxVTL( exc, args[1], args[0], (*exc).opcode, &(*exc).GS.projVector ) == -1 )



      return;

    (*exc).GS.dualVector = (*exc).GS.projVector;
    Compute_Funcs( exc );
  }





  static void Ins_SFVTL( PExecution_Context exc, PStorage args )
  {
    if ( Ins_SxVTL( exc, (Int)(args[1]), (Int)(args[0]), (*exc).opcode, &(*exc).GS.freeVector ) == -1 )



      return;

    Compute_Funcs( exc );
  }





  static void Ins_SFVTPV( PExecution_Context exc, PStorage args )
  { (void)args;
    (*exc).GS.freeVector = (*exc).GS.projVector;
    Compute_Funcs( exc );
  }





  static void Ins_SDPVTL( PExecution_Context exc, PStorage args )
  {
    Long A, B, C;
    Long p1, p2;

    p1 = args[1];
    p2 = args[0];

    if ( ( p2 < 0 || p2 >= (*exc).zp1.n_points ) ||
         ( p1 < 0 || p1 >= (*exc).zp2.n_points ) )
    {
      (*exc).error = 0x408;
      return;
    }

    A = (*exc).zp1.org_x[p2] - (*exc).zp2.org_x[p1];
    B = (*exc).zp1.org_y[p2] - (*exc).zp2.org_y[p1];

    if ( ((*exc).opcode & 1) != 0 )
    {
      C = B;
      B = A;
      A = -C;
    }

    if ( Normalize( exc, A, B, &(*exc).GS.dualVector ) == -1 )
      return;

    A = (*exc).zp1.cur_x[p2] - (*exc).zp2.cur_x[p1];
    B = (*exc).zp1.cur_y[p2] - (*exc).zp2.cur_y[p1];

    if ( ((*exc).opcode & 1) != 0 )
    {
      C = B;
      B = A;
      A = -C;
    }

    if ( Normalize( exc, A, B, &(*exc).GS.projVector ) == -1 )
      return;

    Compute_Funcs( exc );
  }





  static void Ins_SPVFS( PExecution_Context exc, PStorage args )
  {
    Short S;
    Long X, Y;


    S = (Short)args[1];
    Y = (Long)S;
    S = (Short)args[0];
    X = (Long)S;

    if ( Normalize( exc, X, Y, &(*exc).GS.projVector ) == -1 )
      return;

    (*exc).GS.dualVector = (*exc).GS.projVector;

    Compute_Funcs( exc );
  }





  static void Ins_SFVFS( PExecution_Context exc, PStorage args )
  {
    Short S;
    Long X, Y;


    S = (Short)args[1];
    Y = (Long)S;
    S = (Short)args[0];
    X = S;

    if ( Normalize( exc, X, Y, &(*exc).GS.freeVector ) == -1 )
      return;

    Compute_Funcs( exc );
  }





  static void Ins_GPV( PExecution_Context exc, PStorage args )
  {
    args[0] = (*exc).GS.projVector.x;
    args[1] = (*exc).GS.projVector.y;
  }





  static void Ins_GFV( PExecution_Context exc, PStorage args )
  {
    args[0] = (*exc).GS.freeVector.x;
    args[1] = (*exc).GS.freeVector.y;
  }





  static void Ins_SRP0( PExecution_Context exc, PStorage args )
  {
    (*exc).GS.rp0 = (Int)(args[0]);
  }





  static void Ins_SRP1( PExecution_Context exc, PStorage args )
  {
    (*exc).GS.rp1 = (Int)(args[0]);
  }





  static void Ins_SRP2( PExecution_Context exc, PStorage args )
  {
    (*exc).GS.rp2 = (Int)(args[0]);
  }





  static void Ins_SZP0( PExecution_Context exc, PStorage args )
  {
    switch ( args[0] )
    {
    case 0:
      (*exc).zp0 = (*exc).twilight;
      break;

    case 1:
      (*exc).zp0 = (*exc).pts;
      break;

    default:
      (*exc).error = 0x408;
      return;
      break;
    }

    (*exc).GS.gep0 = (Int)(args[0]);
  }





  static void Ins_SZP1( PExecution_Context exc, PStorage args )
  {
    switch ( args[0] )
    {
    case 0:
      (*exc).zp1 = (*exc).twilight;
      break;

    case 1:
      (*exc).zp1 = (*exc).pts;
      break;

    default:
      (*exc).error = 0x408;
      return;
    }

    (*exc).GS.gep1 = (Int)(args[0]);
  }





  static void Ins_SZP2( PExecution_Context exc, PStorage args )
  {
    switch ( args[0] )
    {
    case 0:
      (*exc).zp2 = (*exc).twilight;
      break;

    case 1:
      (*exc).zp2 = (*exc).pts;
      break;

    default:
      (*exc).error = 0x408;
      return;
    }

    (*exc).GS.gep2 = (Int)(args[0]);
  }





  static void Ins_SZPS( PExecution_Context exc, PStorage args )
  {
    switch ( args[0] )
    {
    case 0:
      (*exc).zp0 = (*exc).twilight;
      break;

    case 1:
      (*exc).zp0 = (*exc).pts;
      break;

    default:
      (*exc).error = 0x408;
      return;
    }

    (*exc).zp1 = (*exc).zp0;
    (*exc).zp2 = (*exc).zp0;

    (*exc).GS.gep0 = (Int)(args[0]);
    (*exc).GS.gep1 = (Int)(args[0]);
    (*exc).GS.gep2 = (Int)(args[0]);
  }





  static void Ins_RTHG( PExecution_Context exc, PStorage args )
  { (void)args;
    (*exc).GS.round_state = 0;

    (*exc).func_round = (TRound_Function)Round_To_Half_Grid;
  }





  static void Ins_RTG( PExecution_Context exc, PStorage args )
  { (void)args;
    (*exc).GS.round_state = 1;

    (*exc).func_round = (TRound_Function)Round_To_Grid;
  }





  static void Ins_RTDG( PExecution_Context exc, PStorage args )
  { (void)args;
    (*exc).GS.round_state = 2;

    (*exc).func_round = (TRound_Function)Round_To_Double_Grid;
  }





  static void Ins_RUTG( PExecution_Context exc, PStorage args )
  { (void)args;
    (*exc).GS.round_state = 4;

    (*exc).func_round = (TRound_Function)Round_Up_To_Grid;
  }





  static void Ins_RDTG( PExecution_Context exc, PStorage args )
  { (void)args;
    (*exc).GS.round_state = 3;

    (*exc).func_round = (TRound_Function)Round_Down_To_Grid;
  }





  static void Ins_ROFF( PExecution_Context exc, PStorage args )
  { (void)args;
    (*exc).GS.round_state = 5;

    (*exc).func_round = (TRound_Function)Round_None;
  }





  static void Ins_SROUND( PExecution_Context exc, PStorage args )
  {
    SetSuperRound( exc, 0x4000L, args[0] );
    (*exc).GS.round_state = 6;

    (*exc).func_round = (TRound_Function)Round_Super;
  }





  static void Ins_S45ROUND( PExecution_Context exc, PStorage args )
  {
    SetSuperRound( exc, 0x2D41L, args[0] );
    (*exc).GS.round_state = 7;

    (*exc).func_round = (TRound_Function)Round_Super_45;
  }





  static void Ins_SLOOP( PExecution_Context exc, PStorage args )
  {
    (*exc).GS.loop = args[0];
  }





  static void Ins_SMD( PExecution_Context exc, PStorage args )
  {
    (*exc).GS.minimum_distance = args[0];
  }





  static void Ins_INSTCTRL( PExecution_Context exc, PStorage args )
  {
    Long K, L;

    K = args[1];
    L = args[0];

    if ( K < 0 || K > 3 )
    {
      (*exc).error = 0x408;
      return;
    }

    (*exc).GS.instruct_control = (Int)(((*exc).GS.instruct_control & (~K)) | (L & K));
  }





  static void Ins_SCANCTRL( PExecution_Context exc, PStorage args )
  {
    Int A;


    A = (Int)(args[0] & 0xFF);

    if ( A == 0xFF )
    {
      (*exc).GS.scan_control = 1;
      return;
    }
    else if ( A == 0 )
    {
      (*exc).GS.scan_control = 0;
      return;
    }

    A *= 64;

    if ( (args[0] & 0x100) != 0 && (*exc).metrics.pointSize <= A )
      (*exc).GS.scan_control = 1;

    if ( (args[0] & 0x200) != 0 && (*exc).metrics.rotated )
      (*exc).GS.scan_control = 1;

    if ( (args[0] & 0x400) != 0 && (*exc).metrics.stretched )
      (*exc).GS.scan_control = 1;

    if ( (args[0] & 0x800) != 0 && (*exc).metrics.pointSize > A )
      (*exc).GS.scan_control = 0;

    if ( (args[0] & 0x1000) != 0 && (*exc).metrics.rotated )
      (*exc).GS.scan_control = 0;

    if ( (args[0] & 0x2000) != 0 && (*exc).metrics.stretched )
      (*exc).GS.scan_control = 0;
}





  static void Ins_SCANTYPE( PExecution_Context exc, PStorage args )
  {



    if ( args[0] >= 0 && args[0] <= 5 )
    {
      if ( args[0] == 3 )
        args[0] = 2;

      (*exc).GS.scan_type = (Int)args[0];
    }
  }





  static void Ins_SCVTCI( PExecution_Context exc, PStorage args )
  {
    (*exc).GS.control_value_cutin = (TT_F26Dot6)args[0];
  }





  static void Ins_SSWCI( PExecution_Context exc, PStorage args )
  {
    (*exc).GS.single_width_cutin = (TT_F26Dot6)args[0];
  }





  static void Ins_SSW( PExecution_Context exc, PStorage args )
  {






    (*exc).GS.single_width_value = (TT_F26Dot6)(args[0] >> 10);
  }





  static void Ins_FLIPON( PExecution_Context exc, PStorage args )
  { (void)args;
    (*exc).GS.auto_flip = 1;
  }





  static void Ins_FLIPOFF( PExecution_Context exc, PStorage args )
  { (void)args;
    (*exc).GS.auto_flip = 0;
  }





  static void Ins_SANGW( PExecution_Context exc, PStorage args )
  { (void)exc; (void)args;

  }





  static void Ins_SDB( PExecution_Context exc, PStorage args )
  {
    (*exc).GS.delta_base = (Int)args[0];
  }





  static void Ins_SDS( PExecution_Context exc, PStorage args )
  {
    (*exc).GS.delta_shift = (Int)args[0];
  }
# 3163 "./base/ttinterp.c"
  static void Ins_GC( PExecution_Context exc, PStorage args )
  {
    Long L;

    L = args[0];

    if ( ( L < 0 || L >= (*exc).zp2.n_points ) )
    {
      (*exc).error = 0x408;
      return;
    }

    switch ( (*exc).opcode & 1 )
    {
    case 0:
      L = (*exc).func_project( exc, (*exc).zp2.cur_x[L], (*exc).zp2.cur_y[L] );

      break;

    case 1:
      L = (*exc).func_dualproj( exc, (*exc).zp2.org_x[L], (*exc).zp2.org_y[L] );

      break;
    }

    args[0] = L;
  }
# 3200 "./base/ttinterp.c"
  static void Ins_SCFS( PExecution_Context exc, PStorage args )
  {
    Long K;
    Int L;

    L = (Int)args[0];

    if ( ( args[0] < 0 || args[0] >= (*exc).zp2.n_points ) )
    {
      (*exc).error = 0x408;
      return;
    }

    K = (*exc).func_project( exc, (*exc).zp2.cur_x[L], (*exc).zp2.cur_y[L] );


    (*exc).func_move( exc, &(*exc).zp2, L, args[1] - K );



    if ( (*exc).GS.gep2 == 0 )
    {
      (*exc).zp2.org_x[L] = (*exc).zp2.cur_x[L];
      (*exc).zp2.org_y[L] = (*exc).zp2.cur_y[L];
    }
  }
# 3238 "./base/ttinterp.c"
  static void Ins_MD( PExecution_Context exc, PStorage args )
  {
    Long K, L;
    TT_F26Dot6 D;

    K = args[1];
    L = args[0];

    if( ( args[0] < 0 || args[0] >= (*exc).zp2.n_points ) ||
        ( args[1] < 0 || args[1] >= (*exc).zp1.n_points ) )
    {
      (*exc).error = 0x408;
      return;
    }

    if ( (*exc).opcode & 1 )
      D = (*exc).func_project( exc, (*exc).zp2.cur_x[L] - (*exc).zp1.cur_x[K], (*exc).zp2.cur_y[L] - (*exc).zp1.cur_y[K] );

    else
      D = (*exc).func_dualproj( exc, (*exc).zp2.org_x[L] - (*exc).zp1.org_x[K], (*exc).zp2.org_y[L] - (*exc).zp1.org_y[K] );


    args[0] = D;
  }





  static void Ins_MPPEM( PExecution_Context exc, PStorage args )
  {
    args[0] = Current_Ppem( exc );
                              ;
  }





  static void Ins_MPS( PExecution_Context exc, PStorage args )
  {
    args[0] = (*exc).metrics.pointSize;
  }
# 3294 "./base/ttinterp.c"
  static void Ins_FLIPPT( PExecution_Context exc, PStorage args )
  {
    Long point;
    (void)args;

    if ( (*exc).top < (*exc).GS.loop )
    {
      (*exc).error = 0x401;
      return;
    }

    while ( (*exc).GS.loop > 0 )
    {
      (*exc).args--;

      point = (*exc).stack[(*exc).args];

      if ( ( point < 0 || point >= (*exc).pts.n_points ) )
      {
        (*exc).error = 0x408;
       return;
      }

      (*exc).pts.touch[point] ^= 1;

      (*exc).GS.loop--;
    }

    (*exc).GS.loop = 1;
    (*exc).new_top = (*exc).args;
  }





  static void Ins_FLIPRGON( PExecution_Context exc, PStorage args )
  {
    Long I, K, L;

    K = args[1];
    L = args[0];

    if ( ( K < 0 || K >= (*exc).pts.n_points ) ||
         ( L < 0 || L >= (*exc).pts.n_points ) )
    {
      (*exc).error = 0x408;
      return;
    }

    for ( I = L; I <= K; I++ )
      (*exc).pts.touch[I] |= 1;
  }





  static void Ins_FLIPRGOFF( PExecution_Context exc, PStorage args )
  {
    Long I, K, L;

    K = args[1];
    L = args[0];

    if ( ( K < 0 || K >= (*exc).pts.n_points ) ||
         ( L < 0 || L >= (*exc).pts.n_points ) )
    {
      (*exc).error = 0x408;
      return;
    }

    for ( I = L; I <= K; I++ )
      (*exc).pts.touch[I] &= ~1;
}

  static Bool Compute_Point_Displacement( PExecution_Context exc,
                                           PCoordinates x,
                                           PCoordinates y,
                                           PGlyph_Zone zone,
                                           Int* refp )
  {
    TGlyph_Zone zp;
    Int p;
    TT_F26Dot6 d;

    if ( (*exc).opcode & 1 )
    {
      zp = (*exc).zp0;
      p = (*exc).GS.rp1;
    }
    else
    {
      zp = (*exc).zp1;
      p = (*exc).GS.rp2;
    }

    if ( ( p < 0 || p >= zp.n_points ) )
    {


      *refp = 0;
      return -1;
    }

    *zone = zp;
    *refp = p;

    d = (*exc).func_project( exc, zp.cur_x[p] - zp.org_x[p], zp.cur_y[p] - zp.org_y[p] );


    *x = MulDiv_Round(d, (Long)(*exc).GS.freeVector.x * 0x10000L, (*exc).F_dot_P );
    *y = MulDiv_Round(d, (Long)(*exc).GS.freeVector.y * 0x10000L, (*exc).F_dot_P );

    return 0;
  }

  static void Move_Zp2_Point( PExecution_Context exc,
                               Long point,
                               TT_F26Dot6 dx,
                               TT_F26Dot6 dy,
                               Bool touch )
  {
    if ( (*exc).GS.freeVector.x != 0 )
    {
      (*exc).zp2.cur_x[point] += dx;
      if ( touch )
        (*exc).zp2.touch[point] |= 2;
    }

    if ( (*exc).GS.freeVector.y != 0 )
    {
      (*exc).zp2.cur_y[point] += dy;
      if ( touch )
        (*exc).zp2.touch[point] |= 4;
    }
  }





  static void Ins_SHP( PExecution_Context exc, PStorage args )
  {
    TGlyph_Zone zp;
    Int refp;

    TT_F26Dot6 dx,
                dy;
    Long point;
    (void)args;

    if ( (*exc).top < (*exc).GS.loop )
    {
      (*exc).error = 0x408;
      return;
    }

    if ( Compute_Point_Displacement( exc, &dx, &dy, &zp, &refp ) )
      return;

    while ( (*exc).GS.loop > 0 )
    {
      (*exc).args--;
      point = (*exc).stack[(*exc).args];

      if ( ( point < 0 || point >= (*exc).zp2.n_points ) )
      {
        (*exc).error = 0x408;
        return;
      }


      Move_Zp2_Point( exc, point, dx, dy, 1 );

      (*exc).GS.loop--;
    }

    (*exc).GS.loop = 1;
    (*exc).new_top = (*exc).args;
  }





  static void Ins_SHC( PExecution_Context exc, PStorage args )
  {
    TGlyph_Zone zp;
    Int refp;
    TT_F26Dot6 dx,
                dy;

    Long contour, i;
    Int first_point, last_point;

    contour = args[0];

    if ( ( args[0] < 0 || args[0] >= (*exc).pts.n_contours ) )
    {






      return;
    }

    if ( Compute_Point_Displacement( exc, &dx, &dy, &zp, &refp ) )
      return;

    if ( contour == 0 )
      first_point = 0;
    else
      first_point = (*exc).pts.contours[contour-1] + 1;

    last_point = (*exc).pts.contours[contour];


    for ( i = first_point; i <= last_point; i++ )
    {
      if ( zp.cur_x != (*exc).zp2.cur_x || refp != i )
        Move_Zp2_Point( exc, i, dx, dy, 0 );
    }
  }





  static void Ins_SHZ( PExecution_Context exc, PStorage args )
  {
    TGlyph_Zone zp;
    Int refp;
    TT_F26Dot6 dx,
                dy;

    Int last_point;
    Long i;

    if ( ( args[0] < 0 || args[0] >= 2 ) )
    {
      (*exc).error = 0x408;
      return;
    }

    if ( Compute_Point_Displacement( exc, &dx, &dy, &zp, &refp ) )
      return;

    last_point = zp.n_points - 1;


    for ( i = 0; i <= last_point; i++ )
    {
      if ( zp.cur_x != (*exc).zp2.cur_x || refp != i )
        Move_Zp2_Point( exc, i, dx, dy, 0 );
    }
  }





  static void Ins_SHPIX( PExecution_Context exc, PStorage args )
  {
    TT_F26Dot6 dx, dy;
    Long point;

    if ( (*exc).top < (*exc).GS.loop )
    {
      (*exc).error = 0x408;
      return;
    }

    dx = MulDiv_Round( args[0],
                       (Long)(*exc).GS.freeVector.x,
                       0x4000 );
    dy = MulDiv_Round( args[0],
                       (Long)(*exc).GS.freeVector.y,
                       0x4000 );

    while ( (*exc).GS.loop > 0 )
    {
      (*exc).args--;

      point = (*exc).stack[(*exc).args];

      if ( ( point < 0 || point >= (*exc).zp2.n_points ) )
      {
        (*exc).error = 0x408;
        return;
      }

      Move_Zp2_Point( exc, point, dx, dy, 1 );

      (*exc).GS.loop--;
    }

    (*exc).GS.loop = 1;
    (*exc).new_top = (*exc).args;
  }





  static void Ins_MSIRP( PExecution_Context exc, PStorage args )
  {
    Int point;
    TT_F26Dot6 distance;

    point = (Int)args[0];

    if ( ( args[0] < 0 || args[0] >= (*exc).zp1.n_points ) )
    {
      (*exc).error = 0x408;
      return;
    }



    if ( (*exc).GS.gep0 == 0 )
    {
      (*exc).zp1.org_x[point] = (*exc).zp0.org_x[(*exc).GS.rp0];
      (*exc).zp1.org_y[point] = (*exc).zp0.org_y[(*exc).GS.rp0];
      (*exc).zp1.cur_x[point] = (*exc).zp1.org_x[point];
      (*exc).zp1.cur_y[point] = (*exc).zp1.org_y[point];
    }

    distance = (*exc).func_project( exc, (*exc).zp1.cur_x[point] - (*exc).zp0.cur_x[(*exc).GS.rp0], (*exc).zp1.cur_y[point] - (*exc).zp0.cur_y[(*exc).GS.rp0] );




    (*exc).func_move( exc, &(*exc).zp1, point, args[1] - distance );

    (*exc).GS.rp1 = (*exc).GS.rp0;
    (*exc).GS.rp2 = point;

    if ( ((*exc).opcode & 1) != 0 )
      (*exc).GS.rp0 = point;
  }





  static void Ins_MDAP( PExecution_Context exc, PStorage args )
  {
    Int point;
    TT_F26Dot6 cur_dist,
                distance;

    point = (Int)args[0];

    if ( ( args[0] < 0 || args[0] >= (*exc).zp0.n_points ) )
    {
      (*exc).error = 0x408;
      return;
    }




    if ( ((*exc).opcode & 1) != 0 )
    {
      cur_dist = (*exc).func_project( exc, (*exc).zp0.cur_x[point], (*exc).zp0.cur_y[point] );

      distance = (*exc).func_round( exc, cur_dist, (*exc).metrics.compensations[0] ) - cur_dist;

    }
    else
      distance = 0;

    (*exc).func_move( exc, &(*exc).zp0, point, distance );

    (*exc).GS.rp0 = point;
    (*exc).GS.rp1 = point;
  }





  static void Ins_MIAP( PExecution_Context exc, PStorage args )
  {
    Int cvtEntry, point;
    TT_F26Dot6 distance,
                org_dist;

    cvtEntry = (Int)args[1];
    point = (Int)args[0];

    if ( ( args[0] < 0 || args[0] >= (*exc).zp0.n_points ) ||
         ( args[1] < 0 || args[1] >= (*exc).cvtSize ) )
    {





      return;
    }
# 3721 "./base/ttinterp.c"
    distance = (*exc).func_read_cvt( exc, cvtEntry );

                                                                              ;

    if ( (*exc).GS.gep0 == 0 )
    {
      (*exc).zp0.org_x[point] = MulDiv_Round( (*exc).GS.freeVector.x,
                                           distance, 0x4000L );
      (*exc).zp0.cur_x[point] = (*exc).zp0.org_x[point];

      (*exc).zp0.org_y[point] = MulDiv_Round( (*exc).GS.freeVector.y,
                                           distance, 0x4000L );
      (*exc).zp0.cur_y[point] = (*exc).zp0.org_y[point];
    }

    org_dist = (*exc).func_project( exc, (*exc).zp0.cur_x[point], (*exc).zp0.cur_y[point] );


    if ( ((*exc).opcode & 1) != 0 )
    {
      if ( ( (distance - org_dist) < 0 ? -(distance - org_dist) : (distance - org_dist) ) > (*exc).GS.control_value_cutin )
        distance = org_dist;

      distance = (*exc).func_round( exc, distance, (*exc).metrics.compensations[0] );
    }

    (*exc).func_move( exc, &(*exc).zp0, point, distance - org_dist );

    (*exc).GS.rp0 = point;
    (*exc).GS.rp1 = point;
  }





  static void Ins_MDRP( PExecution_Context exc, PStorage args )
  {
    Int point;
    TT_F26Dot6 distance,
                org_dist;

    point = (Int)args[0];

    if ( ( args[0] < 0 || args[0] >= (*exc).zp1.n_points ) )
    {



      return;
    }




    org_dist = (*exc).func_dualproj( exc, (*exc).zp1.org_x[point] - (*exc).zp0.org_x[(*exc).GS.rp0], (*exc).zp1.org_y[point] - (*exc).zp0.org_y[(*exc).GS.rp0] );






    if ( ( (org_dist) < 0 ? -(org_dist) : (org_dist) ) < (*exc).GS.single_width_cutin )
    {
      if ( org_dist >= 0 )
        org_dist = (*exc).GS.single_width_value;
      else
        org_dist = -(*exc).GS.single_width_value;
    }



    if ( ((*exc).opcode & 4) != 0 )
      distance = (*exc).func_round( exc, org_dist, (*exc).metrics.compensations[(*exc).opcode & 3] );

    else
      distance = Round_None( exc,
                             org_dist,
                             (*exc).metrics.compensations[(*exc).opcode & 3] );



    if ( ((*exc).opcode & 8) != 0 )
    {
      if ( org_dist >= 0 )
      {
        if ( distance < (*exc).GS.minimum_distance )
          distance = (*exc).GS.minimum_distance;
      }
      else
      {
        if ( distance > -(*exc).GS.minimum_distance )
          distance = -(*exc).GS.minimum_distance;
      }
    }



    org_dist = (*exc).func_project( exc, (*exc).zp1.cur_x[point] - (*exc).zp0.cur_x[(*exc).GS.rp0], (*exc).zp1.cur_y[point] - (*exc).zp0.cur_y[(*exc).GS.rp0] );




    (*exc).func_move( exc, &(*exc).zp1, point, distance - org_dist );

    (*exc).GS.rp1 = (*exc).GS.rp0;
    (*exc).GS.rp2 = point;

    if ( ((*exc).opcode & 16) != 0 )
      (*exc).GS.rp0 = point;
  }





  static void Ins_MIRP( PExecution_Context exc, PStorage args )
  {
    Int point,
                cvtEntry;

    TT_F26Dot6 cvt_dist,
                distance,
                cur_dist,
                org_dist;

    point = (Int)args[0];
    cvtEntry = (Int)args[1];



    if ( ( args[0] < 0 || args[0] >= (*exc).zp1.n_points ) ||
         ( args[1]+1 < 0 || args[1]+1 >= (*exc).cvtSize+1 ) )
    {
      (*exc).error = 0x408;
      return;
    }

    if ( args[1] < 0 )
      cvt_dist = 0;
    else
      cvt_dist = (*exc).func_read_cvt( exc, cvtEntry );



    if ( ( (cvt_dist) < 0 ? -(cvt_dist) : (cvt_dist) ) < (*exc).GS.single_width_cutin )
    {
      if ( cvt_dist >= 0 )
        cvt_dist = (*exc).GS.single_width_value;
      else
        cvt_dist = -(*exc).GS.single_width_value;
    }



    if ( (*exc).GS.gep1 == 0 )
    {
      (*exc).zp1.org_x[point] = (*exc).zp0.org_x[(*exc).GS.rp0] +
                             MulDiv_Round( cvt_dist,
                                           (*exc).GS.freeVector.x,
                                           0x4000 );

      (*exc).zp1.org_y[point] = (*exc).zp0.org_y[(*exc).GS.rp0] +
                             MulDiv_Round( cvt_dist,
                                           (*exc).GS.freeVector.y,
                                           0x4000 );

      (*exc).zp1.cur_x[point] = (*exc).zp1.org_x[point];
      (*exc).zp1.cur_y[point] = (*exc).zp1.org_y[point];
    }

    org_dist = (*exc).func_dualproj( exc, (*exc).zp1.org_x[point] - (*exc).zp0.org_x[(*exc).GS.rp0], (*exc).zp1.org_y[point] - (*exc).zp0.org_y[(*exc).GS.rp0] );




    cur_dist = (*exc).func_project( exc, (*exc).zp1.cur_x[point] - (*exc).zp0.cur_x[(*exc).GS.rp0], (*exc).zp1.cur_y[point] - (*exc).zp0.cur_y[(*exc).GS.rp0] );






    if ( (*exc).GS.auto_flip )
    {
      if ( (org_dist ^ cvt_dist) < 0 )
        cvt_dist = -cvt_dist;
    }



    if ( ((*exc).opcode & 4) != 0 )
    {



      if ( (*exc).GS.gep0 == (*exc).GS.gep1 )
        if ( ( (cvt_dist - org_dist) < 0 ? -(cvt_dist - org_dist) : (cvt_dist - org_dist) ) >= (*exc).GS.control_value_cutin )
          cvt_dist = org_dist;

      distance = (*exc).func_round( exc, cvt_dist, (*exc).metrics.compensations[(*exc).opcode & 3] );

    }
    else
      distance = Round_None( exc,
                             cvt_dist,
                             (*exc).metrics.compensations[(*exc).opcode & 3] );



    if ( ((*exc).opcode & 8) != 0 )
    {
      if ( org_dist >= 0 )
      {
        if ( distance < (*exc).GS.minimum_distance )
          distance = (*exc).GS.minimum_distance;
      }
      else
      {
        if ( distance > -(*exc).GS.minimum_distance )
          distance = -(*exc).GS.minimum_distance;
      }
    }

    (*exc).func_move( exc, &(*exc).zp1, point, distance - cur_dist );

    (*exc).GS.rp1 = (*exc).GS.rp0;

    if ( ((*exc).opcode & 16) != 0 )
      (*exc).GS.rp0 = point;



    (*exc).GS.rp2 = point;
  }





  static void Ins_ALIGNRP( PExecution_Context exc, PStorage args )
  {
    Int point;
    TT_F26Dot6 distance;
    (void)args;

    if ( (*exc).top < (*exc).GS.loop )
    {
      (*exc).error = 0x408;
      return;
    }

    while ( (*exc).GS.loop > 0 )
    {
      (*exc).args--;

      point = (Int)(*exc).stack[(*exc).args];

      if ( ( point < 0 || point >= (*exc).zp1.n_points ) )
      {
        (*exc).error = 0x408;
        return;
      }

      distance = (*exc).func_project( exc, (*exc).zp1.cur_x[point] - (*exc).zp0.cur_x[(*exc).GS.rp0], (*exc).zp1.cur_y[point] - (*exc).zp0.cur_y[(*exc).GS.rp0] );




      (*exc).func_move( exc, &(*exc).zp1, point, -distance );
      (*exc).GS.loop--;
    }

    (*exc).GS.loop = 1;
    (*exc).new_top = (*exc).args;
  }





  static void Ins_AA( PExecution_Context exc, PStorage args )
  { (void)exc; (void)args;

  }





  static void Ins_ISECT( PExecution_Context exc, PStorage args )
  {
    Long point,
          a0, a1,
          b0, b1;

    TT_F26Dot6 discriminant;

    TT_F26Dot6 dx, dy,
                dax, day,
                dbx, dby;

    TT_F26Dot6 val;

    TT_Vector R;

    point = args[0];

    a0 = args[1];
    a1 = args[2];
    b0 = args[3];
    b1 = args[4];

    if ( ( b0 < 0 || b0 >= (*exc).zp0.n_points ) ||
         ( b1 < 0 || b1 >= (*exc).zp0.n_points ) ||
         ( a0 < 0 || a0 >= (*exc).zp1.n_points ) ||
         ( a1 < 0 || a1 >= (*exc).zp1.n_points ) )
    {
      (*exc).error = 0x408;
      return;
    }

    dbx = (*exc).zp0.cur_x[b1] - (*exc).zp0.cur_x[b0];
    dby = (*exc).zp0.cur_y[b1] - (*exc).zp0.cur_y[b0];

    dax = (*exc).zp1.cur_x[a1] - (*exc).zp1.cur_x[a0];
    day = (*exc).zp1.cur_y[a1] - (*exc).zp1.cur_y[a0];

    dx = (*exc).zp0.cur_x[b0] - (*exc).zp1.cur_x[a0];
    dy = (*exc).zp0.cur_y[b0] - (*exc).zp1.cur_y[a0];

    (*exc).zp2.touch[point] |= 6;

    discriminant = MulDiv_Round( dax, -dby, 0x40L ) +
                   MulDiv_Round( day, dbx, 0x40L );

    if ( ( (discriminant) < 0 ? -(discriminant) : (discriminant) ) >= 0x40 )
    {
      val = MulDiv_Round( dx, -dby, 0x40L ) + MulDiv_Round( dy, dbx, 0x40L );

      R.x = MulDiv_Round( val, dax, discriminant );
      R.y = MulDiv_Round( val, day, discriminant );

      (*exc).zp2.cur_x[point] = (*exc).zp1.cur_x[a0] + R.x;
      (*exc).zp2.cur_y[point] = (*exc).zp1.cur_y[a0] + R.y;
    }
    else
    {


      (*exc).zp2.cur_x[point] = ( (*exc).zp1.cur_x[a0] +
                               (*exc).zp1.cur_x[a1] +
                               (*exc).zp0.cur_x[b0] +
                               (*exc).zp1.cur_x[b1] ) / 4;
      (*exc).zp2.cur_y[point] = ( (*exc).zp1.cur_y[a0] +
                               (*exc).zp1.cur_y[a1] +
                               (*exc).zp0.cur_y[b0] +
                               (*exc).zp1.cur_y[b1] ) / 4;
    }
  }





  static void Ins_ALIGNPTS( PExecution_Context exc, PStorage args )
  {
    Int p1, p2;
    TT_F26Dot6 distance;

    p1 = (Int)args[0];
   p2 = (Int)args[1];

    if ( ( args[0] < 0 || args[0] >= (*exc).zp1.n_points ) ||
         ( args[1] < 0 || args[1] >= (*exc).zp0.n_points ) )
    {
      (*exc).error = 0x408;
      return;
    }

    distance = (*exc).func_project( exc, (*exc).zp0.cur_x[p2] - (*exc).zp1.cur_x[p1], (*exc).zp0.cur_y[p2] - (*exc).zp1.cur_x[p1] ) / 2;




    (*exc).func_move( exc, &(*exc).zp1, p1, distance );

    (*exc).func_move( exc, &(*exc).zp0, p2, -distance );
  }





  static void Ins_IP( PExecution_Context exc, PStorage args )
  {
    TT_F26Dot6 org_a, org_b, org_x,
                cur_a, cur_b, cur_x,
                distance;
    Int point;
    (void)args;

    if ( (*exc).top < (*exc).GS.loop )
    {
      (*exc).error = 0x408;
      return;
    }

    org_a = (*exc).func_dualproj( exc, (*exc).zp0.org_x[(*exc).GS.rp1], (*exc).zp0.org_y[(*exc).GS.rp1] );


    org_b = (*exc).func_dualproj( exc, (*exc).zp1.org_x[(*exc).GS.rp2], (*exc).zp1.org_y[(*exc).GS.rp2] );


    cur_a = (*exc).func_project( exc, (*exc).zp0.cur_x[(*exc).GS.rp1], (*exc).zp0.cur_y[(*exc).GS.rp1] );


    cur_b = (*exc).func_project( exc, (*exc).zp1.cur_x[(*exc).GS.rp2], (*exc).zp1.cur_y[(*exc).GS.rp2] );


    while ( (*exc).GS.loop > 0 )
    {
      (*exc).args--;

      point = (Int)(*exc).stack[(*exc).args];
      if ( ( point < 0 || point >= (*exc).zp2.n_points ) )
      {
        (*exc).error = 0x408;
        return;
      }

      org_x = (*exc).func_dualproj( exc, (*exc).zp2.org_x[point], (*exc).zp2.org_y[point] );


      cur_x = (*exc).func_project( exc, (*exc).zp2.cur_x[point], (*exc).zp2.cur_y[point] );


      if ( ( org_a <= org_b && org_x <= org_a ) ||
           ( org_a > org_b && org_x >= org_a ) )

        distance = ( cur_a - org_a ) + ( org_x - cur_x );

      else if ( ( org_a <= org_b && org_x >= org_b ) ||
                ( org_a > org_b && org_x < org_b ) )

        distance = ( cur_b - org_b ) + ( org_x - cur_x );

      else



         distance = MulDiv_Round( cur_b - cur_a,
                                  org_x - org_a,
                                  org_b - org_a ) + ( cur_a - cur_x );

      (*exc).func_move( exc, &(*exc).zp2, point, distance );

      (*exc).GS.loop--;
    }

    (*exc).GS.loop = 1;
    (*exc).new_top = (*exc).args;
  }





  static void Ins_UTP( PExecution_Context exc, PStorage args )
  {
    Byte mask;

    if ( ( args[0] < 0 || args[0] >= (*exc).zp0.n_points ) )
    {
      (*exc).error = 0x408;
      return;
    }

    mask = 0xFF;

    if ( (*exc).GS.freeVector.x != 0 )
      mask &= ~2;

    if ( (*exc).GS.freeVector.y != 0 )
      mask &= ~4;

    (*exc).zp0.touch[args[0]] &= mask;
  }


  struct LOC_Ins_IUP
  {
    PCoordinates orgs;
    PCoordinates curs;
  };

  static void Shift( Int p1,
                      Int p2,
                      Int p,
                      struct LOC_Ins_IUP* LINK )
  {
    Int i;
    TT_F26Dot6 x;

    x = LINK->curs[p] - LINK->orgs[p];

    for ( i = p1; i < p; i++ )
      LINK->curs[i] += x;

    for ( i = p + 1; i <= p2; i++ )
      LINK->curs[i] += x;
  }

  static void Interp( Int p1, Int p2,
                       Int ref1, Int ref2,
                       struct LOC_Ins_IUP* LINK )
  {
    Long i;
    TT_F26Dot6 x, x1, x2, d1, d2;

    if ( p1 > p2 )
      return;

    x1 = LINK->orgs[ref1];
    d1 = LINK->curs[ref1] - LINK->orgs[ref1];
    x2 = LINK->orgs[ref2];
    d2 = LINK->curs[ref2] - LINK->orgs[ref2];

    if ( x1 == x2 )
    {
      for ( i = p1; i <= p2; i++ )
      {
        x = LINK->orgs[i];

        if ( x <= x1 )
          x += d1;
        else
          x += d2;

        LINK->curs[i] = x;
      }
      return;
    }

    if ( x1 < x2 )
    {
      for ( i = p1; i <= p2; i++ )
      {
        x = LINK->orgs[i];

        if ( x <= x1 )
          x += d1;
        else
        {
          if ( x >= x2 )
            x += d2;
          else
            x = LINK->curs[ref1] +
                  MulDiv_Round( x - x1,
                                LINK->curs[ref2] - LINK->curs[ref1],
                                x2 - x1 );
        }
        LINK->curs[i] = x;
      }
      return;
    }



    for ( i = p1; i <= p2; i++ )
    {
      x = LINK->orgs[i];
      if ( x <= x2 )
        x += d2;
      else
      {
        if ( x >= x1 )
          x += d1;
        else
          x = LINK->curs[ref1] +
                MulDiv_Round( x - x1,
                              LINK->curs[ref2] - LINK->curs[ref1],
                              x2 - x1 );
      }
      LINK->curs[i] = x;
    }
  }





  static void Ins_IUP( PExecution_Context exc, PStorage args )
  {
    struct LOC_Ins_IUP V;
    unsigned char mask;

    Long first_point;
    Long end_point;

    Long first_touched;
    Long cur_touched;

    Long point;
    Long contour;
    (void)args;

    if ( (*exc).opcode & 1 )
    {
      mask = 2;
      V.orgs = (*exc).pts.org_x;
      V.curs = (*exc).pts.cur_x;
    }
    else
    {
      mask = 4;
      V.orgs = (*exc).pts.org_y;
      V.curs = (*exc).pts.cur_y;
    }

    contour = 0;
    point = 0;

    do
    {
      end_point = (*exc).pts.contours[contour];
      first_point = point;

      while ( point <= end_point && ((*exc).pts.touch[point] & mask) == 0 )
        point++;

      if ( point <= end_point )
      {
        first_touched = point;
        cur_touched = point;

        point++;

        while ( point <= end_point )
        {
          if ( ((*exc).pts.touch[point] & mask) != 0 )
          {
            Interp( (Int)(cur_touched + 1),
                    (Int)(point - 1),
                    (Int)cur_touched,
                    (Int)point,
                    &V );
            cur_touched = point;
          }

          point++;
        }

        if ( cur_touched == first_touched )
          Shift( (Int)first_point, (Int)end_point, (Int)cur_touched, &V );
        else
        {
          Interp((Int)(cur_touched + 1),
                 (Int)(end_point),
                 (Int)(cur_touched),
                 (Int)(first_touched),
                 &V );

          Interp((Int)(first_point),
                 (Int)(first_touched - 1),
                 (Int)(cur_touched),
                 (Int)(first_touched),
                 &V );
        }
      }
      contour++;
    } while ( contour < (*exc).pts.n_contours );
  }





  static void Ins_DELTAP( PExecution_Context exc, PStorage args )
  {
    Int k;
    Long A, B, C, nump;

    nump = args[0];

    for ( k = 1; k <= nump; k++ )
    {
      if ( (*exc).args < 2 )
      {
        (*exc).error = 0x401;
        return;
      }

      (*exc).args -= 2;

      A = (*exc).stack[(*exc).args + 1];
      B = (*exc).stack[(*exc).args];





      if ( ( A < 0 || A >= (*exc).zp0.n_points + 2 ) )

      {

        return;
      }

      C = (B & 0xF0) >> 4;

      switch ( (*exc).opcode )
      {
      case 0x5d:
        break;

      case 0x71:
        C += 16;
        break;

      case 0x72:
        C += 32;
        break;
      }

      C += (*exc).GS.delta_base;

      if ( Current_Ppem( exc ) == C )
      {
        B = (B & 0xF) - 8;
        if ( B >= 0 )
          B++;
        B = B * 64 / (1L << (*exc).GS.delta_shift);

        (*exc).func_move( exc, &(*exc).zp0, (Int)A, (Int)B );
      }
    }

    (*exc).new_top = (*exc).args;
  }





  static void Ins_DELTAC( PExecution_Context exc, PStorage args )
  {
    Long nump, k;
    Long A, B, C;

    nump = args[0];

    for ( k = 1; k <= nump; k++ )
    {
      if ( (*exc).args < 2 )
      {
        (*exc).error = 0x401;
        return;
      }

      (*exc).args -= 2;

      A = (*exc).stack[(*exc).args + 1];
      B = (*exc).stack[(*exc).args];

      if ( A >= (*exc).cvtSize )
      {
        (*exc).error = 0x408;
        return;
      }

      C = ((unsigned long)(B & 0xF0)) >> 4;

      switch ( (*exc).opcode )
      {
      case 0x73:
        break;

      case 0x74:
        C += 16;
        break;

      case 0x75:
        C += 32;
        break;
      }

      C += (*exc).GS.delta_base;

      if ( Current_Ppem( exc ) == C )
      {
        B = (B & 0xF) - 8;
        if ( B >= 0 )
          B++;
        B = B * 64 / (1L << (*exc).GS.delta_shift);

        (*exc).func_move_cvt( exc, A, B );
      }
    }

    (*exc).new_top = (*exc).args;
  }
# 4536 "./base/ttinterp.c"
  static void Ins_DEBUG( PExecution_Context exc, PStorage args )
  { (void)args;
    (*exc).error = 0x40B;
  }





  static void Ins_GETINFO( PExecution_Context exc, PStorage args )
  {
    Long K;

    K = 0;



    if ( (args[0] & 1) != 0 )
      K = 3;


    if ( (*exc).metrics.rotated )
      K |= 0x80;


    if ( (*exc).metrics.stretched )
      K |= 0x100;

    args[0] = K;
  }

  static void Ins_UNKNOWN( PExecution_Context exc, PStorage args )
  {
    Byte i;
    TDefRecord* def;
    PCallRecord call;
# 4581 "./base/ttinterp.c"
    i = (*exc).IDefPtr[(Byte)(*exc).opcode];

    if (i >= (*exc).numIDefs)
      {
        (*exc).error = 0x400;
        return;
      }
    def = &(*exc).IDefs[i];

    if ( (*exc).callTop >= (*exc).callSize )
    {
      (*exc).error = 0x402;
      return;
    }

    call = (*exc).callStack + (*exc).callTop++;

    call->Caller_Range = (*exc).curRange;
    call->Caller_IP = (*exc).IP+1;
    call->Cur_Count = 1;
    call->Cur_Restart = def->Start;

    Ins_Goto_CodeRange( exc, def->Range, def->Start );

    (*exc).step_ins = 0;
    return;
  }

  static struct { const char *sName; TInstruction_Function p; } Instruct_Dispatch[256] =
  {



     {"  SVTCA  y  ", Ins_SVTCA }
    ,{"  SVTCA  x  ", Ins_SVTCA }
    ,{"  SPvTCA y  ", Ins_SPVTCA }
    ,{"  SPvTCA x  ", Ins_SPVTCA }
    ,{"  SFvTCA y  ", Ins_SFVTCA }
    ,{"  SFvTCA x  ", Ins_SFVTCA }
    ,{"  SPvTL //  ", Ins_SPVTL }
    ,{"  SPvTL +   ", Ins_SPVTL }
    ,{"  SFvTL //  ", Ins_SFVTL }
    ,{"  SFvTL +   ", Ins_SFVTL }
    ,{"  SPvFS     ", Ins_SPVFS }
    ,{"  SFvFS     ", Ins_SFVFS }
    ,{"  GPV       ", Ins_GPV }
    ,{"  GFV       ", Ins_GFV }
    ,{"  SFvTPv    ", Ins_SFVTPV }
    ,{"  ISECT     ", Ins_ISECT }

    ,{"  SRP0      ", Ins_SRP0 }
    ,{"  SRP1      ", Ins_SRP1 }
    ,{"  SRP2      ", Ins_SRP2 }
    ,{"  SZP0      ", Ins_SZP0 }
    ,{"  SZP1      ", Ins_SZP1 }
    ,{"  SZP2      ", Ins_SZP2 }
    ,{"  SZPS      ", Ins_SZPS }
    ,{"  SLOOP     ", Ins_SLOOP }
    ,{"  RTG       ", Ins_RTG }
    ,{"  RTHG      ", Ins_RTHG }
    ,{"  SMD       ", Ins_SMD }
    ,{"  ELSE      ", Ins_ELSE }
    ,{"  JMPR      ", Ins_JMPR }
    ,{"  SCvTCi    ", Ins_SCVTCI }
    ,{"  SSwCi     ", Ins_SSWCI }
    ,{"  SSW       ", Ins_SSW }

    ,{"  DUP       ", Ins_DUP }
    ,{"  POP       ", Ins_POP }
    ,{"  CLEAR     ", Ins_CLEAR }
    ,{"  SWAP      ", Ins_SWAP }
    ,{"  DEPTH     ", Ins_DEPTH }
    ,{"  CINDEX    ", Ins_CINDEX }
    ,{"  MINDEX    ", Ins_MINDEX }
    ,{"  AlignPTS  ", Ins_ALIGNPTS}
    ,{"  INS_$28   ", Ins_UNKNOWN }
    ,{"  UTP       ", Ins_UTP }
    ,{"  LOOPCALL  ", Ins_LOOPCALL}
    ,{"  CALL      ", Ins_CALL }
    ,{"  FDEF      ", Ins_FDEF }
    ,{"  ENDF      ", Ins_ENDF }
    ,{"  MDAP[0]   ", Ins_MDAP }
    ,{"  MDAP[1]   ", Ins_MDAP }

    ,{"  IUP[0]    ", Ins_IUP }
    ,{"  IUP[1]    ", Ins_IUP }
    ,{"  SHP[0]    ", Ins_SHP }
    ,{"  SHP[1]    ", Ins_SHP }
    ,{"  SHC[0]    ", Ins_SHC }
    ,{"  SHC[1]    ", Ins_SHC }
    ,{"  SHZ[0]    ", Ins_SHZ }
    ,{"  SHZ[1]    ", Ins_SHZ }
    ,{"  SHPIX     ", Ins_SHPIX }
    ,{"  IP        ", Ins_IP }
    ,{"  MSIRP[0]  ", Ins_MSIRP }
    ,{"  MSIRP[1]  ", Ins_MSIRP }
    ,{"  AlignRP   ", Ins_ALIGNRP }
    ,{"  RTDG      ", Ins_RTDG }
    ,{"  MIAP[0]   ", Ins_MIAP }
    ,{"  MIAP[1]   ", Ins_MIAP }

    ,{"  NPushB    ", Ins_NPUSHB }
    ,{"  NPushW    ", Ins_NPUSHW }
    ,{"  WS        ", Ins_WS }
    ,{"  RS        ", Ins_RS }
    ,{"  WCvtP     ", Ins_WCVTP }
    ,{"  RCvt      ", Ins_RCVT }
    ,{"  GC[0]     ", Ins_GC }
    ,{"  GC[1]     ", Ins_GC }
    ,{"  SCFS      ", Ins_SCFS }
    ,{"  MD[0]     ", Ins_MD }
    ,{"  MD[1]     ", Ins_MD }
    ,{"  MPPEM     ", Ins_MPPEM }
    ,{"  MPS       ", Ins_MPS }
    ,{"  FlipON    ", Ins_FLIPON }
    ,{"  FlipOFF   ", Ins_FLIPOFF }
    ,{"  DEBUG     ", Ins_DEBUG }

    ,{"  LT        ", Ins_LT }
    ,{"  LTEQ      ", Ins_LTEQ }
    ,{"  GT        ", Ins_GT }
    ,{"  GTEQ      ", Ins_GTEQ }
    ,{"  EQ        ", Ins_EQ }
    ,{"  NEQ       ", Ins_NEQ }
    ,{"  ODD       ", Ins_ODD }
    ,{"  EVEN      ", Ins_EVEN }
    ,{"  IF        ", Ins_IF }
    ,{"  EIF       ", Ins_EIF }
    ,{"  AND       ", Ins_AND }
    ,{"  OR        ", Ins_OR }
    ,{"  NOT       ", Ins_NOT }
    ,{"  DeltaP1   ", Ins_DELTAP }
    ,{"  SDB       ", Ins_SDB }
    ,{"  SDS       ", Ins_SDS }

    ,{"  ADD       ", Ins_ADD }
    ,{"  SUB       ", Ins_SUB }
    ,{"  DIV       ", Ins_DIV }
    ,{"  MUL       ", Ins_MUL }
    ,{"  ABS       ", Ins_ABS }
    ,{"  NEG       ", Ins_NEG }
    ,{"  FLOOR     ", Ins_FLOOR }
    ,{"  CEILING   ", Ins_CEILING }
    ,{"  ROUND[0]  ", Ins_ROUND }
    ,{"  ROUND[1]  ", Ins_ROUND }
    ,{"  ROUND[2]  ", Ins_ROUND }
    ,{"  ROUND[3]  ", Ins_ROUND }
    ,{"  NROUND[0] ", Ins_NROUND }
    ,{"  NROUND[1] ", Ins_NROUND }
    ,{"  NROUND[2] ", Ins_NROUND }
    ,{"  NROUND[3] ", Ins_NROUND }

    ,{"  WCvtF     ", Ins_WCVTF }
    ,{"  DeltaP2   ", Ins_DELTAP }
    ,{"  DeltaP3   ", Ins_DELTAP }
    ,{"  DeltaCn[0] ", Ins_DELTAC }
    ,{"  DeltaCn[1] ", Ins_DELTAC }
    ,{"  DeltaCn[2] ", Ins_DELTAC }
    ,{"  SROUND    ", Ins_SROUND }
    ,{"  S45Round  ", Ins_S45ROUND }
    ,{"  JROT      ", Ins_JROT }
    ,{"  JROF      ", Ins_JROF }
    ,{"  ROFF      ", Ins_ROFF }
    ,{"  INS_$7B   ", Ins_UNKNOWN }
    ,{"  RUTG      ", Ins_RUTG }
    ,{"  RDTG      ", Ins_RDTG }
    ,{"  SANGW     ", Ins_SANGW }
    ,{"  AA        ", Ins_AA }

    ,{"  FlipPT    ", Ins_FLIPPT }
    ,{"  FlipRgON  ", Ins_FLIPRGON }
    ,{"  FlipRgOFF ", Ins_FLIPRGOFF }
    ,{"  INS_$83   ", Ins_UNKNOWN }
    ,{"  INS_$84   ", Ins_UNKNOWN }
    ,{"  ScanCTRL  ", Ins_SCANCTRL }
    ,{"  SDPVTL[0] ", Ins_SDPVTL }
    ,{"  SDPVTL[1] ", Ins_SDPVTL }
    ,{"  GetINFO   ", Ins_GETINFO }
    ,{"  IDEF      ", Ins_IDEF }
    ,{"  ROLL      ", Ins_ROLL }
    ,{"  MAX       ", Ins_MAX }
    ,{"  MIN       ", Ins_MIN }
    ,{"  ScanTYPE  ", Ins_SCANTYPE }
    ,{"  InstCTRL  ", Ins_INSTCTRL }
    ,{"  INS_$8F   ", Ins_UNKNOWN }

    ,{"  INS_$90  ", Ins_UNKNOWN }
    ,{"  INS_$91  ", Ins_UNKNOWN }
    ,{"  INS_$92  ", Ins_UNKNOWN }
    ,{"  INS_$93  ", Ins_UNKNOWN }
    ,{"  INS_$94  ", Ins_UNKNOWN }
    ,{"  INS_$95  ", Ins_UNKNOWN }
    ,{"  INS_$96  ", Ins_UNKNOWN }
    ,{"  INS_$97  ", Ins_UNKNOWN }
    ,{"  INS_$98  ", Ins_UNKNOWN }
    ,{"  INS_$99  ", Ins_UNKNOWN }
    ,{"  INS_$9A  ", Ins_UNKNOWN }
    ,{"  INS_$9B  ", Ins_UNKNOWN }
    ,{"  INS_$9C  ", Ins_UNKNOWN }
    ,{"  INS_$9D  ", Ins_UNKNOWN }
    ,{"  INS_$9E  ", Ins_UNKNOWN }
    ,{"  INS_$9F  ", Ins_UNKNOWN }

    ,{"  INS_$A0  ", Ins_UNKNOWN }
    ,{"  INS_$A1  ", Ins_UNKNOWN }
    ,{"  INS_$A2  ", Ins_UNKNOWN }
    ,{"  INS_$A3  ", Ins_UNKNOWN }
    ,{"  INS_$A4  ", Ins_UNKNOWN }
    ,{"  INS_$A5  ", Ins_UNKNOWN }
    ,{"  INS_$A6  ", Ins_UNKNOWN }
    ,{"  INS_$A7  ", Ins_UNKNOWN }
    ,{"  INS_$A8  ", Ins_UNKNOWN }
    ,{"  INS_$A9  ", Ins_UNKNOWN }
    ,{"  INS_$AA  ", Ins_UNKNOWN }
    ,{"  INS_$AB  ", Ins_UNKNOWN }
    ,{"  INS_$AC  ", Ins_UNKNOWN }
    ,{"  INS_$AD  ", Ins_UNKNOWN }
    ,{"  INS_$AE  ", Ins_UNKNOWN }
    ,{"  INS_$AF  ", Ins_UNKNOWN }

    ,{"  PushB[0]  ", Ins_PUSHB }
    ,{"  PushB[1]  ", Ins_PUSHB }
    ,{"  PushB[2]  ", Ins_PUSHB }
    ,{"  PushB[3]  ", Ins_PUSHB }
    ,{"  PushB[4]  ", Ins_PUSHB }
    ,{"  PushB[5]  ", Ins_PUSHB }
    ,{"  PushB[6]  ", Ins_PUSHB }
    ,{"  PushB[7]  ", Ins_PUSHB }
    ,{"  PushW[0]  ", Ins_PUSHW }
    ,{"  PushW[1]  ", Ins_PUSHW }
    ,{"  PushW[2]  ", Ins_PUSHW }
    ,{"  PushW[3]  ", Ins_PUSHW }
    ,{"  PushW[4]  ", Ins_PUSHW }
    ,{"  PushW[5]  ", Ins_PUSHW }
    ,{"  PushW[6]  ", Ins_PUSHW }
    ,{"  PushW[7]  ", Ins_PUSHW }

    ,{"  MDRP[00]  ", Ins_MDRP }
    ,{"  MDRP[01]  ", Ins_MDRP }
    ,{"  MDRP[02]  ", Ins_MDRP }
    ,{"  MDRP[03]  ", Ins_MDRP }
    ,{"  MDRP[04]  ", Ins_MDRP }
    ,{"  MDRP[05]  ", Ins_MDRP }
    ,{"  MDRP[06]  ", Ins_MDRP }
    ,{"  MDRP[07]  ", Ins_MDRP }
    ,{"  MDRP[08]  ", Ins_MDRP }
    ,{"  MDRP[09]  ", Ins_MDRP }
    ,{"  MDRP[10]  ", Ins_MDRP }
    ,{"  MDRP[11]  ", Ins_MDRP }
    ,{"  MDRP[12]  ", Ins_MDRP }
    ,{"  MDRP[13]  ", Ins_MDRP }
    ,{"  MDRP[14]  ", Ins_MDRP }
    ,{"  MDRP[15]  ", Ins_MDRP }

    ,{"  MDRP[16]  ", Ins_MDRP }
    ,{"  MDRP[17]  ", Ins_MDRP }
    ,{"  MDRP[18]  ", Ins_MDRP }
    ,{"  MDRP[19]  ", Ins_MDRP }
    ,{"  MDRP[20]  ", Ins_MDRP }
    ,{"  MDRP[21]  ", Ins_MDRP }
    ,{"  MDRP[22]  ", Ins_MDRP }
    ,{"  MDRP[23]  ", Ins_MDRP }
    ,{"  MDRP[24]  ", Ins_MDRP }
    ,{"  MDRP[25]  ", Ins_MDRP }
    ,{"  MDRP[26]  ", Ins_MDRP }
    ,{"  MDRP[27]  ", Ins_MDRP }
    ,{"  MDRP[28]  ", Ins_MDRP }
    ,{"  MDRP[29]  ", Ins_MDRP }
    ,{"  MDRP[30]  ", Ins_MDRP }
    ,{"  MDRP[31]  ", Ins_MDRP }

    ,{"  MIRP[00]  ", Ins_MIRP }
    ,{"  MIRP[01]  ", Ins_MIRP }
    ,{"  MIRP[02]  ", Ins_MIRP }
    ,{"  MIRP[03]  ", Ins_MIRP }
    ,{"  MIRP[04]  ", Ins_MIRP }
    ,{"  MIRP[05]  ", Ins_MIRP }
    ,{"  MIRP[06]  ", Ins_MIRP }
    ,{"  MIRP[07]  ", Ins_MIRP }
    ,{"  MIRP[08]  ", Ins_MIRP }
    ,{"  MIRP[09]  ", Ins_MIRP }
    ,{"  MIRP[10]  ", Ins_MIRP }
    ,{"  MIRP[11]  ", Ins_MIRP }
    ,{"  MIRP[12]  ", Ins_MIRP }
    ,{"  MIRP[13]  ", Ins_MIRP }
    ,{"  MIRP[14]  ", Ins_MIRP }
    ,{"  MIRP[15]  ", Ins_MIRP }

    ,{"  MIRP[16]  ", Ins_MIRP }
    ,{"  MIRP[17]  ", Ins_MIRP }
    ,{"  MIRP[18]  ", Ins_MIRP }
    ,{"  MIRP[19]  ", Ins_MIRP }
    ,{"  MIRP[20]  ", Ins_MIRP }
    ,{"  MIRP[21]  ", Ins_MIRP }
    ,{"  MIRP[22]  ", Ins_MIRP }
    ,{"  MIRP[23]  ", Ins_MIRP }
    ,{"  MIRP[24]  ", Ins_MIRP }
    ,{"  MIRP[25]  ", Ins_MIRP }
    ,{"  MIRP[26]  ", Ins_MIRP }
    ,{"  MIRP[27]  ", Ins_MIRP }
    ,{"  MIRP[28]  ", Ins_MIRP }
    ,{"  MIRP[29]  ", Ins_MIRP }
    ,{"  MIRP[30]  ", Ins_MIRP }
    ,{"  MIRP[31]  ", Ins_MIRP }
  };
# 4918 "./base/ttinterp.c"
  TT_Error RunIns( PExecution_Context exc )
  {
    TT_Error Result;
    Int A;
    PDefRecord WITH;
    PCallRecord WITH1;
    bool bFirst;
    bool dbg_prt = (((void*)0) != ((void*)0));







    (void)dbg_prt;


    (*exc).metrics.ratio = 0;
    if ( (*exc).metrics.x_ppem != (*exc).metrics.y_ppem )
    {

      (*exc).func_read_cvt = Read_CVT_Stretched;
      (*exc).func_write_cvt = Write_CVT_Stretched;
      (*exc).func_move_cvt = Move_CVT_Stretched;
    }
    else
    {

      (*exc).func_read_cvt = Read_CVT;
      (*exc).func_write_cvt = Write_CVT;
      (*exc).func_move_cvt = Move_CVT;
    }

    Compute_Funcs( exc );
    Compute_Round( exc, (Byte)exc->GS.round_state );
# 4967 "./base/ttinterp.c"
    Result = _setjmp ((*(jmp_buf *)( ((size_t)(exc->trap).stuff + ((size_t)&((gsfix_jmp_buf_test*)0)->j)) & ~(size_t)(((size_t)&((gsfix_jmp_buf_test*)0)->j)-1) )));
    if (Result) {
        (*exc).error = Result;
        goto _LExit;
    }
    bFirst = ((bool)1);

    do
    {
      Calc_Length( exc );



      (*exc).args = (*exc).top - Pop_Push_Count[(*exc).opcode * 2];




      if ( (*exc).args < 0 )
      {
        (*exc).error = 0x401;
        goto _LErrorLabel;
      }

      (*exc).new_top = (*exc).args + Pop_Push_Count[(*exc).opcode * 2 + 1];





      if ( (*exc).new_top > (*exc).stackSize )
      {
        (*exc).error = 0x402;
        goto _LErrorLabel;
      }

      (*exc).step_ins = 1;
      (*exc).error = 0;
# 5021 "./base/ttinterp.c"
      Instruct_Dispatch[(*exc).opcode].p( exc, &(*exc).stack[(*exc).args] );
# 5057 "./base/ttinterp.c"
      if ( (*exc).error != 0 )
      {
        switch ( (*exc).error )
        {
        case 0x400:
          A = 0;

          while ( A < (*exc).numIDefs )
          {
            WITH = &(*exc).IDefs[A];

            if ( WITH->Active && (*exc).opcode == WITH->Opc )
            {
              if ( (*exc).callTop >= (*exc).callSize )
              {
                (*exc).error = 0x408;
                goto _LErrorLabel;
              }

              WITH1 = &(*exc).callStack[(*exc).callTop];

              WITH1->Caller_Range = (*exc).curRange;
              WITH1->Caller_IP = (*exc).IP + 1;
              WITH1->Cur_Count = 1;
              WITH1->Cur_Restart = WITH->Start;

              if ( Ins_Goto_CodeRange( exc, WITH->Range, WITH->Start ) == -1 )
                goto _LErrorLabel;

              goto _LSuiteLabel;
            }
            else
            {
              A++;
              continue;
            }
          }

          (*exc).error = 0x400;
          goto _LErrorLabel;
          break;

        default:
          (*exc).error = (*exc).error;
          goto _LErrorLabel;
          break;
        }
      }

      (*exc).top = (*exc).new_top;

      if ( (*exc).step_ins )
        (*exc).IP += (*exc).length;

  _LSuiteLabel:

      if ( (*exc).IP >= (*exc).codeSize )
      {
        if ( (*exc).callTop > 0 )
        {
          (*exc).error = 0x403;
          goto _LErrorLabel;
        }
        else
          goto _LNo_Error;
      }
    } while ( !(*exc).instruction_trap );

  _LNo_Error:
    Result = 0;
    goto _LExit;

  _LErrorLabel:
    Result = (*exc).error;
                                      ;
  _LExit:
# 5142 "./base/ttinterp.c"
    return Result;
  }
