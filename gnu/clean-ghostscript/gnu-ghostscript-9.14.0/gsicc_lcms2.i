# 1 "./base/gsicc_lcms2.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/gsicc_lcms2.c" 2
# 19 "./base/gsicc_lcms2.c"
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
# 55 "./base/memory_.h" 2
# 20 "./base/gsicc_lcms2.c" 2
# 1 "./lcms2/include/lcms2.h" 1
# 67 "./lcms2/include/lcms2.h"
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
# 68 "./lcms2/include/lcms2.h" 2
# 1 "/usr/include/time.h" 1 3 4
# 37 "/usr/include/time.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
# 42 "/usr/include/time.h" 2 3 4
# 133 "/usr/include/time.h" 3 4
struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  const char *tm_zone;




};
# 161 "/usr/include/time.h" 3 4
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };


struct sigevent;
# 189 "/usr/include/time.h" 3 4
extern clock_t clock (void) __attribute__ ((__nothrow__ ));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ ));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ ));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));
# 223 "/usr/include/time.h" 3 4
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__ ));
# 239 "/usr/include/time.h" 3 4
extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ ));



extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ ));





extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));



extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));





extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ ));


extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ ));







extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ ));


extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ ));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__ ));



extern int daylight;
extern long int timezone;





extern int stime (const time_t *__when) __attribute__ ((__nothrow__ ));
# 319 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ ));


extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ ));


extern int dysize (int __year) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
# 334 "/usr/include/time.h" 3 4
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ ));


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__ ));


extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ ));






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ ));




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ ));


extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ ));


extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ ));


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ ));


extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ ));





extern int timespec_get (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 69 "./lcms2/include/lcms2.h" 2
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 51 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
typedef long int ptrdiff_t;
# 90 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
typedef int wchar_t;
# 118 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/__stddef_max_align_t.h" 1 3
# 35 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/__stddef_max_align_t.h" 3
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 119 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 2 3
# 70 "./lcms2/include/lcms2.h" 2
# 84 "./lcms2/include/lcms2.h"
typedef unsigned char cmsUInt8Number;
typedef signed char cmsInt8Number;






typedef float cmsFloat32Number;
typedef double cmsFloat64Number;



 typedef unsigned short cmsUInt16Number;







  typedef short cmsInt16Number;
# 114 "./lcms2/include/lcms2.h"
 typedef unsigned int cmsUInt32Number;







 typedef int cmsInt32Number;
# 132 "./lcms2/include/lcms2.h"
    typedef unsigned long cmsUInt64Number;






      typedef long cmsInt64Number;
# 155 "./lcms2/include/lcms2.h"
typedef cmsUInt32Number cmsSignature;
typedef cmsUInt16Number cmsU8Fixed8Number;
typedef cmsInt32Number cmsS15Fixed16Number;
typedef cmsUInt32Number cmsU16Fixed16Number;


typedef int cmsBool;
# 272 "./lcms2/include/lcms2.h"
typedef enum {
    cmsSigChromaticityType = 0x6368726D,
    cmsSigColorantOrderType = 0x636C726F,
    cmsSigColorantTableType = 0x636C7274,
    cmsSigCrdInfoType = 0x63726469,
    cmsSigCurveType = 0x63757276,
    cmsSigDataType = 0x64617461,
    cmsSigDictType = 0x64696374,
    cmsSigDateTimeType = 0x6474696D,
    cmsSigDeviceSettingsType = 0x64657673,
    cmsSigLut16Type = 0x6d667432,
    cmsSigLut8Type = 0x6d667431,
    cmsSigLutAtoBType = 0x6d414220,
    cmsSigLutBtoAType = 0x6d424120,
    cmsSigMeasurementType = 0x6D656173,
    cmsSigMultiLocalizedUnicodeType = 0x6D6C7563,
    cmsSigMultiProcessElementType = 0x6D706574,
    cmsSigNamedColorType = 0x6E636f6C,
    cmsSigNamedColor2Type = 0x6E636C32,
    cmsSigParametricCurveType = 0x70617261,
    cmsSigProfileSequenceDescType = 0x70736571,
    cmsSigProfileSequenceIdType = 0x70736964,
    cmsSigResponseCurveSet16Type = 0x72637332,
    cmsSigS15Fixed16ArrayType = 0x73663332,
    cmsSigScreeningType = 0x7363726E,
    cmsSigSignatureType = 0x73696720,
    cmsSigTextType = 0x74657874,
    cmsSigTextDescriptionType = 0x64657363,
    cmsSigU16Fixed16ArrayType = 0x75663332,
    cmsSigUcrBgType = 0x62666420,
    cmsSigUInt16ArrayType = 0x75693136,
    cmsSigUInt32ArrayType = 0x75693332,
    cmsSigUInt64ArrayType = 0x75693634,
    cmsSigUInt8ArrayType = 0x75693038,
    cmsSigVcgtType = 0x76636774,
    cmsSigViewingConditionsType = 0x76696577,
    cmsSigXYZType = 0x58595A20


} cmsTagTypeSignature;


typedef enum {
    cmsSigAToB0Tag = 0x41324230,
    cmsSigAToB1Tag = 0x41324231,
    cmsSigAToB2Tag = 0x41324232,
    cmsSigBlueColorantTag = 0x6258595A,
    cmsSigBlueMatrixColumnTag = 0x6258595A,
    cmsSigBlueTRCTag = 0x62545243,
    cmsSigBToA0Tag = 0x42324130,
    cmsSigBToA1Tag = 0x42324131,
    cmsSigBToA2Tag = 0x42324132,
    cmsSigCalibrationDateTimeTag = 0x63616C74,
    cmsSigCharTargetTag = 0x74617267,
    cmsSigChromaticAdaptationTag = 0x63686164,
    cmsSigChromaticityTag = 0x6368726D,
    cmsSigColorantOrderTag = 0x636C726F,
    cmsSigColorantTableTag = 0x636C7274,
    cmsSigColorantTableOutTag = 0x636C6F74,
    cmsSigColorimetricIntentImageStateTag = 0x63696973,
    cmsSigCopyrightTag = 0x63707274,
    cmsSigCrdInfoTag = 0x63726469,
    cmsSigDataTag = 0x64617461,
    cmsSigDateTimeTag = 0x6474696D,
    cmsSigDeviceMfgDescTag = 0x646D6E64,
    cmsSigDeviceModelDescTag = 0x646D6464,
    cmsSigDeviceSettingsTag = 0x64657673,
    cmsSigDToB0Tag = 0x44324230,
    cmsSigDToB1Tag = 0x44324231,
    cmsSigDToB2Tag = 0x44324232,
    cmsSigDToB3Tag = 0x44324233,
    cmsSigBToD0Tag = 0x42324430,
    cmsSigBToD1Tag = 0x42324431,
    cmsSigBToD2Tag = 0x42324432,
    cmsSigBToD3Tag = 0x42324433,
    cmsSigGamutTag = 0x67616D74,
    cmsSigGrayTRCTag = 0x6b545243,
    cmsSigGreenColorantTag = 0x6758595A,
    cmsSigGreenMatrixColumnTag = 0x6758595A,
    cmsSigGreenTRCTag = 0x67545243,
    cmsSigLuminanceTag = 0x6C756d69,
    cmsSigMeasurementTag = 0x6D656173,
    cmsSigMediaBlackPointTag = 0x626B7074,
    cmsSigMediaWhitePointTag = 0x77747074,
    cmsSigNamedColorTag = 0x6E636f6C,
    cmsSigNamedColor2Tag = 0x6E636C32,
    cmsSigOutputResponseTag = 0x72657370,
    cmsSigPerceptualRenderingIntentGamutTag = 0x72696730,
    cmsSigPreview0Tag = 0x70726530,
    cmsSigPreview1Tag = 0x70726531,
    cmsSigPreview2Tag = 0x70726532,
    cmsSigProfileDescriptionTag = 0x64657363,
    cmsSigProfileDescriptionMLTag = 0x6473636d,
    cmsSigProfileSequenceDescTag = 0x70736571,
    cmsSigProfileSequenceIdTag = 0x70736964,
    cmsSigPs2CRD0Tag = 0x70736430,
    cmsSigPs2CRD1Tag = 0x70736431,
    cmsSigPs2CRD2Tag = 0x70736432,
    cmsSigPs2CRD3Tag = 0x70736433,
    cmsSigPs2CSATag = 0x70733273,
    cmsSigPs2RenderingIntentTag = 0x70733269,
    cmsSigRedColorantTag = 0x7258595A,
    cmsSigRedMatrixColumnTag = 0x7258595A,
    cmsSigRedTRCTag = 0x72545243,
    cmsSigSaturationRenderingIntentGamutTag = 0x72696732,
    cmsSigScreeningDescTag = 0x73637264,
    cmsSigScreeningTag = 0x7363726E,
    cmsSigTechnologyTag = 0x74656368,
    cmsSigUcrBgTag = 0x62666420,
    cmsSigViewingCondDescTag = 0x76756564,
    cmsSigViewingConditionsTag = 0x76696577,
    cmsSigVcgtTag = 0x76636774,
    cmsSigMetaTag = 0x6D657461

} cmsTagSignature;



typedef enum {
    cmsSigDigitalCamera = 0x6463616D,
    cmsSigFilmScanner = 0x6673636E,
    cmsSigReflectiveScanner = 0x7273636E,
    cmsSigInkJetPrinter = 0x696A6574,
    cmsSigThermalWaxPrinter = 0x74776178,
    cmsSigElectrophotographicPrinter = 0x6570686F,
    cmsSigElectrostaticPrinter = 0x65737461,
    cmsSigDyeSublimationPrinter = 0x64737562,
    cmsSigPhotographicPaperPrinter = 0x7270686F,
    cmsSigFilmWriter = 0x6670726E,
    cmsSigVideoMonitor = 0x7669646D,
    cmsSigVideoCamera = 0x76696463,
    cmsSigProjectionTelevision = 0x706A7476,
    cmsSigCRTDisplay = 0x43525420,
    cmsSigPMDisplay = 0x504D4420,
    cmsSigAMDisplay = 0x414D4420,
    cmsSigPhotoCD = 0x4B504344,
    cmsSigPhotoImageSetter = 0x696D6773,
    cmsSigGravure = 0x67726176,
    cmsSigOffsetLithography = 0x6F666673,
    cmsSigSilkscreen = 0x73696C6B,
    cmsSigFlexography = 0x666C6578,
    cmsSigMotionPictureFilmScanner = 0x6D706673,
    cmsSigMotionPictureFilmRecorder = 0x6D706672,
    cmsSigDigitalMotionPictureCamera = 0x646D7063,
    cmsSigDigitalCinemaProjector = 0x64636A70

} cmsTechnologySignature;



typedef enum {
    cmsSigXYZData = 0x58595A20,
    cmsSigLabData = 0x4C616220,
    cmsSigLuvData = 0x4C757620,
    cmsSigYCbCrData = 0x59436272,
    cmsSigYxyData = 0x59787920,
    cmsSigRgbData = 0x52474220,
    cmsSigGrayData = 0x47524159,
    cmsSigHsvData = 0x48535620,
    cmsSigHlsData = 0x484C5320,
    cmsSigCmykData = 0x434D594B,
    cmsSigCmyData = 0x434D5920,
    cmsSigMCH1Data = 0x4D434831,
    cmsSigMCH2Data = 0x4D434832,
    cmsSigMCH3Data = 0x4D434833,
    cmsSigMCH4Data = 0x4D434834,
    cmsSigMCH5Data = 0x4D434835,
    cmsSigMCH6Data = 0x4D434836,
    cmsSigMCH7Data = 0x4D434837,
    cmsSigMCH8Data = 0x4D434838,
    cmsSigMCH9Data = 0x4D434839,
    cmsSigMCHAData = 0x4D434841,
    cmsSigMCHBData = 0x4D434842,
    cmsSigMCHCData = 0x4D434843,
    cmsSigMCHDData = 0x4D434844,
    cmsSigMCHEData = 0x4D434845,
    cmsSigMCHFData = 0x4D434846,
    cmsSigNamedData = 0x6e6d636c,
    cmsSig1colorData = 0x31434C52,
    cmsSig2colorData = 0x32434C52,
    cmsSig3colorData = 0x33434C52,
    cmsSig4colorData = 0x34434C52,
    cmsSig5colorData = 0x35434C52,
    cmsSig6colorData = 0x36434C52,
    cmsSig7colorData = 0x37434C52,
    cmsSig8colorData = 0x38434C52,
    cmsSig9colorData = 0x39434C52,
    cmsSig10colorData = 0x41434C52,
    cmsSig11colorData = 0x42434C52,
    cmsSig12colorData = 0x43434C52,
    cmsSig13colorData = 0x44434C52,
    cmsSig14colorData = 0x45434C52,
    cmsSig15colorData = 0x46434C52,
    cmsSigLuvKData = 0x4C75764B

} cmsColorSpaceSignature;


typedef enum {
    cmsSigInputClass = 0x73636E72,
    cmsSigDisplayClass = 0x6D6E7472,
    cmsSigOutputClass = 0x70727472,
    cmsSigLinkClass = 0x6C696E6B,
    cmsSigAbstractClass = 0x61627374,
    cmsSigColorSpaceClass = 0x73706163,
    cmsSigNamedColorClass = 0x6e6d636c

} cmsProfileClassSignature;


typedef enum {
    cmsSigMacintosh = 0x4150504C,
    cmsSigMicrosoft = 0x4D534654,
    cmsSigSolaris = 0x53554E57,
    cmsSigSGI = 0x53474920,
    cmsSigTaligent = 0x54474E54,
    cmsSigUnices = 0x2A6E6978

} cmsPlatformSignature;
# 503 "./lcms2/include/lcms2.h"
typedef enum {
    cmsSigCurveSetElemType = 0x63767374,
    cmsSigMatrixElemType = 0x6D617466,
    cmsSigCLutElemType = 0x636C7574,

    cmsSigBAcsElemType = 0x62414353,
    cmsSigEAcsElemType = 0x65414353,


    cmsSigXYZ2LabElemType = 0x6C327820,
    cmsSigLab2XYZElemType = 0x78326C20,
    cmsSigNamedColorElemType = 0x6E636C20,
    cmsSigLabV2toV4 = 0x32203420,
    cmsSigLabV4toV2 = 0x34203220,


    cmsSigIdentityElemType = 0x69646E20,


    cmsSigLab2FloatPCS = 0x64326C20,
    cmsSigFloatPCS2Lab = 0x6C326420,
    cmsSigXYZ2FloatPCS = 0x64327820,
    cmsSigFloatPCS2XYZ = 0x78326420

} cmsStageSignature;


typedef enum {

    cmsSigFormulaCurveSeg = 0x70617266,
    cmsSigSampledCurveSeg = 0x73616D66,
    cmsSigSegmentedCurve = 0x63757266

} cmsCurveSegSignature;
# 557 "./lcms2/include/lcms2.h"
typedef struct {
    cmsUInt32Number len;
    cmsUInt32Number flag;
    cmsUInt8Number data[1];

} cmsICCData;


typedef struct {
    cmsUInt16Number year;
    cmsUInt16Number month;
    cmsUInt16Number day;
    cmsUInt16Number hours;
    cmsUInt16Number minutes;
    cmsUInt16Number seconds;

} cmsDateTimeNumber;


typedef struct {
    cmsS15Fixed16Number X;
    cmsS15Fixed16Number Y;
    cmsS15Fixed16Number Z;

} cmsEncodedXYZNumber;



typedef union {
    cmsUInt8Number ID8[16];
    cmsUInt16Number ID16[8];
    cmsUInt32Number ID32[4];

} cmsProfileID;







typedef struct {
    cmsUInt32Number size;
    cmsSignature cmmId;
    cmsUInt32Number version;
    cmsProfileClassSignature deviceClass;
    cmsColorSpaceSignature colorSpace;
    cmsColorSpaceSignature pcs;
    cmsDateTimeNumber date;
    cmsSignature magic;
    cmsPlatformSignature platform;
    cmsUInt32Number flags;
    cmsSignature manufacturer;
    cmsUInt32Number model;
    cmsUInt64Number attributes;
    cmsUInt32Number renderingIntent;
    cmsEncodedXYZNumber illuminant;
    cmsSignature creator;
    cmsProfileID profileID;
    cmsInt8Number reserved[28];

} cmsICCHeader;


typedef struct {
    cmsTagTypeSignature sig;
    cmsInt8Number reserved[4];

} cmsTagBase;


typedef struct {
    cmsTagSignature sig;
    cmsUInt32Number offset;
    cmsUInt32Number size;

} cmsTagEntry;





typedef void* cmsHANDLE ;
typedef void* cmsHPROFILE;
typedef void* cmsHTRANSFORM;
# 927 "./lcms2/include/lcms2.h"
typedef struct {
        cmsFloat64Number X;
        cmsFloat64Number Y;
        cmsFloat64Number Z;

    } cmsCIEXYZ;

typedef struct {
        cmsFloat64Number x;
        cmsFloat64Number y;
        cmsFloat64Number Y;

    } cmsCIExyY;

typedef struct {
        cmsFloat64Number L;
        cmsFloat64Number a;
        cmsFloat64Number b;

    } cmsCIELab;

typedef struct {
        cmsFloat64Number L;
        cmsFloat64Number C;
        cmsFloat64Number h;

    } cmsCIELCh;

typedef struct {
        cmsFloat64Number J;
        cmsFloat64Number C;
        cmsFloat64Number h;

    } cmsJCh;

typedef struct {
        cmsCIEXYZ Red;
        cmsCIEXYZ Green;
        cmsCIEXYZ Blue;

    } cmsCIEXYZTRIPLE;

typedef struct {
        cmsCIExyY Red;
        cmsCIExyY Green;
        cmsCIExyY Blue;

    } cmsCIExyYTRIPLE;
# 987 "./lcms2/include/lcms2.h"
typedef struct {
        cmsUInt32Number Observer;
        cmsCIEXYZ Backing;
        cmsUInt32Number Geometry;
        cmsFloat64Number Flare;
        cmsUInt32Number IlluminantType;

    } cmsICCMeasurementConditions;

typedef struct {
        cmsCIEXYZ IlluminantXYZ;
        cmsCIEXYZ SurroundXYZ;
        cmsUInt32Number IlluminantType;

    } cmsICCViewingConditions;



       int cmsstrcasecmp(const char* s1, const char* s2);
       long int cmsfilelength(FILE* f);







typedef struct _cmsContext_struct* cmsContext;

       cmsContext cmsCreateContext(void* Plugin, void* UserData);
       void cmsDeleteContext(cmsContext ContexID);
       cmsContext cmsDupContext(cmsContext ContextID, void* NewUserData);
       void* cmsGetContextUserData(cmsContext ContextID);



       cmsBool cmsPlugin(void* Plugin);
       cmsBool cmsPluginTHR(cmsContext ContextID, void* Plugin);
       void cmsUnregisterPlugins(void);
       void cmsUnregisterPluginsTHR(cmsContext ContextID);
# 1059 "./lcms2/include/lcms2.h"
typedef void (* cmsLogErrorHandlerFunction)(cmsContext ContextID, cmsUInt32Number ErrorCode, const char *Text);


       void cmsSetLogErrorHandler(cmsLogErrorHandlerFunction Fn);
       void cmsSetLogErrorHandlerTHR(cmsContext ContextID, cmsLogErrorHandlerFunction Fn);




       const cmsCIEXYZ* cmsD50_XYZ(void);
       const cmsCIExyY* cmsD50_xyY(void);


       void cmsXYZ2xyY(cmsCIExyY* Dest, const cmsCIEXYZ* Source);
       void cmsxyY2XYZ(cmsCIEXYZ* Dest, const cmsCIExyY* Source);
       void cmsXYZ2Lab(const cmsCIEXYZ* WhitePoint, cmsCIELab* Lab, const cmsCIEXYZ* xyz);
       void cmsLab2XYZ(const cmsCIEXYZ* WhitePoint, cmsCIEXYZ* xyz, const cmsCIELab* Lab);
       void cmsLab2LCh(cmsCIELCh*LCh, const cmsCIELab* Lab);
       void cmsLCh2Lab(cmsCIELab* Lab, const cmsCIELCh* LCh);


       void cmsLabEncoded2Float(cmsCIELab* Lab, const cmsUInt16Number wLab[3]);
       void cmsLabEncoded2FloatV2(cmsCIELab* Lab, const cmsUInt16Number wLab[3]);
       void cmsFloat2LabEncoded(cmsUInt16Number wLab[3], const cmsCIELab* Lab);
       void cmsFloat2LabEncodedV2(cmsUInt16Number wLab[3], const cmsCIELab* Lab);
       void cmsXYZEncoded2Float(cmsCIEXYZ* fxyz, const cmsUInt16Number XYZ[3]);
       void cmsFloat2XYZEncoded(cmsUInt16Number XYZ[3], const cmsCIEXYZ* fXYZ);


       cmsFloat64Number cmsDeltaE(const cmsCIELab* Lab1, const cmsCIELab* Lab2);
       cmsFloat64Number cmsCIE94DeltaE(const cmsCIELab* Lab1, const cmsCIELab* Lab2);
       cmsFloat64Number cmsBFDdeltaE(const cmsCIELab* Lab1, const cmsCIELab* Lab2);
       cmsFloat64Number cmsCMCdeltaE(const cmsCIELab* Lab1, const cmsCIELab* Lab2, cmsFloat64Number l, cmsFloat64Number c);
       cmsFloat64Number cmsCIE2000DeltaE(const cmsCIELab* Lab1, const cmsCIELab* Lab2, cmsFloat64Number Kl, cmsFloat64Number Kc, cmsFloat64Number Kh);


       cmsBool cmsWhitePointFromTemp(cmsCIExyY* WhitePoint, cmsFloat64Number TempK);
       cmsBool cmsTempFromWhitePoint(cmsFloat64Number* TempK, const cmsCIExyY* WhitePoint);


       cmsBool cmsAdaptToIlluminant(cmsCIEXYZ* Result, const cmsCIEXYZ* SourceWhitePt,
                                                                           const cmsCIEXYZ* Illuminant,
                                                                           const cmsCIEXYZ* Value);
# 1117 "./lcms2/include/lcms2.h"
typedef struct {
    cmsCIEXYZ whitePoint;
    cmsFloat64Number Yb;
    cmsFloat64Number La;
    int surround;
    cmsFloat64Number D_value;

    } cmsViewingConditions;

       cmsHANDLE cmsCIECAM02Init(cmsContext ContextID, const cmsViewingConditions* pVC);
       void cmsCIECAM02Done(cmsHANDLE hModel);
       void cmsCIECAM02Forward(cmsHANDLE hModel, const cmsCIEXYZ* pIn, cmsJCh* pOut);
       void cmsCIECAM02Reverse(cmsHANDLE hModel, const cmsJCh* pIn, cmsCIEXYZ* pOut);







typedef struct {
    cmsFloat32Number x0, x1;
    cmsInt32Number Type;
    cmsFloat64Number Params[10];
    cmsUInt32Number nGridPoints;
    cmsFloat32Number* SampledPoints;

} cmsCurveSegment;


typedef struct _cms_curve_struct cmsToneCurve;

       cmsToneCurve* cmsBuildSegmentedToneCurve(cmsContext ContextID, cmsInt32Number nSegments, const cmsCurveSegment Segments[]);
       cmsToneCurve* cmsBuildParametricToneCurve(cmsContext ContextID, cmsInt32Number Type, const cmsFloat64Number Params[]);
       cmsToneCurve* cmsBuildGamma(cmsContext ContextID, cmsFloat64Number Gamma);
       cmsToneCurve* cmsBuildTabulatedToneCurve16(cmsContext ContextID, cmsInt32Number nEntries, const cmsUInt16Number values[]);
       cmsToneCurve* cmsBuildTabulatedToneCurveFloat(cmsContext ContextID, cmsUInt32Number nEntries, const cmsFloat32Number values[]);
       void cmsFreeToneCurve(cmsToneCurve* Curve);
       void cmsFreeToneCurveTriple(cmsToneCurve* Curve[3]);
       cmsToneCurve* cmsDupToneCurve(const cmsToneCurve* Src);
       cmsToneCurve* cmsReverseToneCurve(const cmsToneCurve* InGamma);
       cmsToneCurve* cmsReverseToneCurveEx(cmsInt32Number nResultSamples, const cmsToneCurve* InGamma);
       cmsToneCurve* cmsJoinToneCurve(cmsContext ContextID, const cmsToneCurve* X, const cmsToneCurve* Y, cmsUInt32Number nPoints);
       cmsBool cmsSmoothToneCurve(cmsToneCurve* Tab, cmsFloat64Number lambda);
       cmsFloat32Number cmsEvalToneCurveFloat(const cmsToneCurve* Curve, cmsFloat32Number v);
       cmsUInt16Number cmsEvalToneCurve16(const cmsToneCurve* Curve, cmsUInt16Number v);
       cmsBool cmsIsToneCurveMultisegment(const cmsToneCurve* InGamma);
       cmsBool cmsIsToneCurveLinear(const cmsToneCurve* Curve);
       cmsBool cmsIsToneCurveMonotonic(const cmsToneCurve* t);
       cmsBool cmsIsToneCurveDescending(const cmsToneCurve* t);
       cmsInt32Number cmsGetToneCurveParametricType(const cmsToneCurve* t);
       cmsFloat64Number cmsEstimateGamma(const cmsToneCurve* t, cmsFloat64Number Precision);


       cmsUInt32Number cmsGetToneCurveEstimatedTableEntries(const cmsToneCurve* t);
       const cmsUInt16Number* cmsGetToneCurveEstimatedTable(const cmsToneCurve* t);





typedef struct _cmsPipeline_struct cmsPipeline;
typedef struct _cmsStage_struct cmsStage;


       cmsPipeline* cmsPipelineAlloc(cmsContext ContextID, cmsUInt32Number InputChannels, cmsUInt32Number OutputChannels);
       void cmsPipelineFree(cmsPipeline* lut);
       cmsPipeline* cmsPipelineDup(const cmsPipeline* Orig);

       cmsContext cmsGetPipelineContextID(const cmsPipeline* lut);
       cmsUInt32Number cmsPipelineInputChannels(const cmsPipeline* lut);
       cmsUInt32Number cmsPipelineOutputChannels(const cmsPipeline* lut);

       cmsUInt32Number cmsPipelineStageCount(const cmsPipeline* lut);
       cmsStage* cmsPipelineGetPtrToFirstStage(const cmsPipeline* lut);
       cmsStage* cmsPipelineGetPtrToLastStage(const cmsPipeline* lut);

       void cmsPipelineEval16(const cmsUInt16Number In[], cmsUInt16Number Out[], const cmsPipeline* lut);
       void cmsPipelineEvalFloat(const cmsFloat32Number In[], cmsFloat32Number Out[], const cmsPipeline* lut);
       cmsBool cmsPipelineEvalReverseFloat(cmsFloat32Number Target[], cmsFloat32Number Result[], cmsFloat32Number Hint[], const cmsPipeline* lut);
       cmsBool cmsPipelineCat(cmsPipeline* l1, const cmsPipeline* l2);
       cmsBool cmsPipelineSetSaveAs8bitsFlag(cmsPipeline* lut, cmsBool On);


typedef enum { cmsAT_BEGIN, cmsAT_END } cmsStageLoc;

       int cmsPipelineInsertStage(cmsPipeline* lut, cmsStageLoc loc, cmsStage* mpe);
       void cmsPipelineUnlinkStage(cmsPipeline* lut, cmsStageLoc loc, cmsStage** mpe);






       cmsBool cmsPipelineCheckAndRetreiveStages(const cmsPipeline* Lut, cmsUInt32Number n, ...);



       cmsStage* cmsStageAllocIdentity(cmsContext ContextID, cmsUInt32Number nChannels);
       cmsStage* cmsStageAllocToneCurves(cmsContext ContextID, cmsUInt32Number nChannels, cmsToneCurve* const Curves[]);
       cmsStage* cmsStageAllocMatrix(cmsContext ContextID, cmsUInt32Number Rows, cmsUInt32Number Cols, const cmsFloat64Number* Matrix, const cmsFloat64Number* Offset);

       cmsStage* cmsStageAllocCLut16bit(cmsContext ContextID, cmsUInt32Number nGridPoints, cmsUInt32Number inputChan, cmsUInt32Number outputChan, const cmsUInt16Number* Table);
       cmsStage* cmsStageAllocCLutFloat(cmsContext ContextID, cmsUInt32Number nGridPoints, cmsUInt32Number inputChan, cmsUInt32Number outputChan, const cmsFloat32Number* Table);

       cmsStage* cmsStageAllocCLut16bitGranular(cmsContext ContextID, const cmsUInt32Number clutPoints[], cmsUInt32Number inputChan, cmsUInt32Number outputChan, const cmsUInt16Number* Table);
       cmsStage* cmsStageAllocCLutFloatGranular(cmsContext ContextID, const cmsUInt32Number clutPoints[], cmsUInt32Number inputChan, cmsUInt32Number outputChan, const cmsFloat32Number* Table);

       cmsStage* cmsStageDup(cmsStage* mpe);
       void cmsStageFree(cmsStage* mpe);
       cmsStage* cmsStageNext(const cmsStage* mpe);

       cmsUInt32Number cmsStageInputChannels(const cmsStage* mpe);
       cmsUInt32Number cmsStageOutputChannels(const cmsStage* mpe);
       cmsStageSignature cmsStageType(const cmsStage* mpe);
       void* cmsStageData(const cmsStage* mpe);


typedef cmsInt32Number (* cmsSAMPLER16) (register const cmsUInt16Number In[],
                                            register cmsUInt16Number Out[],
                                            register void * Cargo);

typedef cmsInt32Number (* cmsSAMPLERFLOAT)(register const cmsFloat32Number In[],
                                            register cmsFloat32Number Out[],
                                            register void * Cargo);





       cmsBool cmsStageSampleCLut16bit(cmsStage* mpe, cmsSAMPLER16 Sampler, void* Cargo, cmsUInt32Number dwFlags);
       cmsBool cmsStageSampleCLutFloat(cmsStage* mpe, cmsSAMPLERFLOAT Sampler, void* Cargo, cmsUInt32Number dwFlags);


       cmsBool cmsSliceSpace16(cmsUInt32Number nInputs, const cmsUInt32Number clutPoints[],
                                                   cmsSAMPLER16 Sampler, void * Cargo);

       cmsBool cmsSliceSpaceFloat(cmsUInt32Number nInputs, const cmsUInt32Number clutPoints[],
                                                   cmsSAMPLERFLOAT Sampler, void * Cargo);



typedef struct _cms_MLU_struct cmsMLU;




       cmsMLU* cmsMLUalloc(cmsContext ContextID, cmsUInt32Number nItems);
       void cmsMLUfree(cmsMLU* mlu);
       cmsMLU* cmsMLUdup(const cmsMLU* mlu);

       cmsBool cmsMLUsetASCII(cmsMLU* mlu,
                                                  const char LanguageCode[3], const char CountryCode[3],
                                                  const char* ASCIIString);
       cmsBool cmsMLUsetWide(cmsMLU* mlu,
                                                  const char LanguageCode[3], const char CountryCode[3],
                                                  const wchar_t* WideString);

       cmsUInt32Number cmsMLUgetASCII(const cmsMLU* mlu,
                                                  const char LanguageCode[3], const char CountryCode[3],
                                                  char* Buffer, cmsUInt32Number BufferSize);

       cmsUInt32Number cmsMLUgetWide(const cmsMLU* mlu,
                                                 const char LanguageCode[3], const char CountryCode[3],
                                                 wchar_t* Buffer, cmsUInt32Number BufferSize);

       cmsBool cmsMLUgetTranslation(const cmsMLU* mlu,
                                                         const char LanguageCode[3], const char CountryCode[3],
                                                         char ObtainedLanguage[3], char ObtainedCountry[3]);

       cmsUInt32Number cmsMLUtranslationsCount(const cmsMLU* mlu);

       cmsBool cmsMLUtranslationsCodes(const cmsMLU* mlu,
                                                             cmsUInt32Number idx,
                                                             char LanguageCode[3],
                                                             char CountryCode[3]);



typedef struct {
        cmsToneCurve* Ucr;
        cmsToneCurve* Bg;
        cmsMLU* Desc;

} cmsUcrBg;
# 1318 "./lcms2/include/lcms2.h"
typedef struct {
    cmsFloat64Number Frequency;
    cmsFloat64Number ScreenAngle;
    cmsUInt32Number SpotShape;

} cmsScreeningChannel;

typedef struct {
    cmsUInt32Number Flag;
    cmsUInt32Number nChannels;
    cmsScreeningChannel Channels[16];

} cmsScreening;




typedef struct _cms_NAMEDCOLORLIST_struct cmsNAMEDCOLORLIST;

       cmsNAMEDCOLORLIST* cmsAllocNamedColorList(cmsContext ContextID,
                                                           cmsUInt32Number n,
                                                           cmsUInt32Number ColorantCount,
                                                           const char* Prefix, const char* Suffix);

       void cmsFreeNamedColorList(cmsNAMEDCOLORLIST* v);
       cmsNAMEDCOLORLIST* cmsDupNamedColorList(const cmsNAMEDCOLORLIST* v);
       cmsBool cmsAppendNamedColor(cmsNAMEDCOLORLIST* v, const char* Name,
                                                            cmsUInt16Number PCS[3],
                                                            cmsUInt16Number Colorant[16]);

       cmsUInt32Number cmsNamedColorCount(const cmsNAMEDCOLORLIST* v);
       cmsInt32Number cmsNamedColorIndex(const cmsNAMEDCOLORLIST* v, const char* Name);

       cmsBool cmsNamedColorInfo(const cmsNAMEDCOLORLIST* NamedColorList, cmsUInt32Number nColor,
                                                      char* Name,
                                                      char* Prefix,
                                                      char* Suffix,
                                                      cmsUInt16Number* PCS,
                                                      cmsUInt16Number* Colorant);


       cmsNAMEDCOLORLIST* cmsGetNamedColorList(cmsHTRANSFORM xform);





typedef struct {

    cmsSignature deviceMfg;
    cmsSignature deviceModel;
    cmsUInt64Number attributes;
    cmsTechnologySignature technology;
    cmsProfileID ProfileID;
    cmsMLU* Manufacturer;
    cmsMLU* Model;
    cmsMLU* Description;

} cmsPSEQDESC;

typedef struct {

    cmsUInt32Number n;
    cmsContext ContextID;
    cmsPSEQDESC* seq;

} cmsSEQ;

       cmsSEQ* cmsAllocProfileSequenceDescription(cmsContext ContextID, cmsUInt32Number n);
       cmsSEQ* cmsDupProfileSequenceDescription(const cmsSEQ* pseq);
       void cmsFreeProfileSequenceDescription(cmsSEQ* pseq);



typedef struct _cmsDICTentry_struct {

    struct _cmsDICTentry_struct* Next;

    cmsMLU *DisplayName;
    cmsMLU *DisplayValue;
    wchar_t* Name;
    wchar_t* Value;

} cmsDICTentry;

       cmsHANDLE cmsDictAlloc(cmsContext ContextID);
       void cmsDictFree(cmsHANDLE hDict);
       cmsHANDLE cmsDictDup(cmsHANDLE hDict);

       cmsBool cmsDictAddEntry(cmsHANDLE hDict, const wchar_t* Name, const wchar_t* Value, const cmsMLU *DisplayName, const cmsMLU *DisplayValue);
       const cmsDICTentry* cmsDictGetEntryList(cmsHANDLE hDict);
       const cmsDICTentry* cmsDictNextEntry(const cmsDICTentry* e);


       cmsHPROFILE cmsCreateProfilePlaceholder(cmsContext ContextID);

       cmsContext cmsGetProfileContextID(cmsHPROFILE hProfile);
       cmsInt32Number cmsGetTagCount(cmsHPROFILE hProfile);
       cmsTagSignature cmsGetTagSignature(cmsHPROFILE hProfile, cmsUInt32Number n);
       cmsBool cmsIsTag(cmsHPROFILE hProfile, cmsTagSignature sig);


       void* cmsReadTag(cmsHPROFILE hProfile, cmsTagSignature sig);
       cmsBool cmsWriteTag(cmsHPROFILE hProfile, cmsTagSignature sig, const void* data);
       cmsBool cmsLinkTag(cmsHPROFILE hProfile, cmsTagSignature sig, cmsTagSignature dest);
       cmsTagSignature cmsTagLinkedTo(cmsHPROFILE hProfile, cmsTagSignature sig);


       cmsInt32Number cmsReadRawTag(cmsHPROFILE hProfile, cmsTagSignature sig, void* Buffer, cmsUInt32Number BufferSize);
       cmsBool cmsWriteRawTag(cmsHPROFILE hProfile, cmsTagSignature sig, const void* data, cmsUInt32Number Size);







       cmsUInt32Number cmsGetHeaderFlags(cmsHPROFILE hProfile);
       void cmsGetHeaderAttributes(cmsHPROFILE hProfile, cmsUInt64Number* Flags);
       void cmsGetHeaderProfileID(cmsHPROFILE hProfile, cmsUInt8Number* ProfileID);
       cmsBool cmsGetHeaderCreationDateTime(cmsHPROFILE hProfile, struct tm *Dest);
       cmsUInt32Number cmsGetHeaderRenderingIntent(cmsHPROFILE hProfile);

       void cmsSetHeaderFlags(cmsHPROFILE hProfile, cmsUInt32Number Flags);
       cmsUInt32Number cmsGetHeaderManufacturer(cmsHPROFILE hProfile);
       void cmsSetHeaderManufacturer(cmsHPROFILE hProfile, cmsUInt32Number manufacturer);
       cmsUInt32Number cmsGetHeaderCreator(cmsHPROFILE hProfile);
       cmsUInt32Number cmsGetHeaderModel(cmsHPROFILE hProfile);
       void cmsSetHeaderModel(cmsHPROFILE hProfile, cmsUInt32Number model);
       void cmsSetHeaderAttributes(cmsHPROFILE hProfile, cmsUInt64Number Flags);
       void cmsSetHeaderProfileID(cmsHPROFILE hProfile, cmsUInt8Number* ProfileID);
       void cmsSetHeaderRenderingIntent(cmsHPROFILE hProfile, cmsUInt32Number RenderingIntent);

       cmsColorSpaceSignature
                                   cmsGetPCS(cmsHPROFILE hProfile);
       void cmsSetPCS(cmsHPROFILE hProfile, cmsColorSpaceSignature pcs);
       cmsColorSpaceSignature
                                   cmsGetColorSpace(cmsHPROFILE hProfile);
       void cmsSetColorSpace(cmsHPROFILE hProfile, cmsColorSpaceSignature sig);
       cmsProfileClassSignature
                                   cmsGetDeviceClass(cmsHPROFILE hProfile);
       void cmsSetDeviceClass(cmsHPROFILE hProfile, cmsProfileClassSignature sig);
       void cmsSetProfileVersion(cmsHPROFILE hProfile, cmsFloat64Number Version);
       cmsFloat64Number cmsGetProfileVersion(cmsHPROFILE hProfile);

       cmsUInt32Number cmsGetEncodedICCversion(cmsHPROFILE hProfile);
       void cmsSetEncodedICCversion(cmsHPROFILE hProfile, cmsUInt32Number Version);






       cmsBool cmsIsIntentSupported(cmsHPROFILE hProfile, cmsUInt32Number Intent, cmsUInt32Number UsedDirection);
       cmsBool cmsIsMatrixShaper(cmsHPROFILE hProfile);
       cmsBool cmsIsCLUT(cmsHPROFILE hProfile, cmsUInt32Number Intent, cmsUInt32Number UsedDirection);


       cmsColorSpaceSignature _cmsICCcolorSpace(int OurNotation);
       int _cmsLCMScolorSpace(cmsColorSpaceSignature ProfileSpace);

       cmsUInt32Number cmsChannelsOf(cmsColorSpaceSignature ColorSpace);


       cmsUInt32Number cmsFormatterForColorspaceOfProfile(cmsHPROFILE hProfile, cmsUInt32Number nBytes, cmsBool lIsFloat);
       cmsUInt32Number cmsFormatterForPCSOfProfile(cmsHPROFILE hProfile, cmsUInt32Number nBytes, cmsBool lIsFloat);



typedef enum {
             cmsInfoDescription = 0,
             cmsInfoManufacturer = 1,
             cmsInfoModel = 2,
             cmsInfoCopyright = 3
} cmsInfoType;

       cmsUInt32Number cmsGetProfileInfo(cmsHPROFILE hProfile, cmsInfoType Info,
                                                            const char LanguageCode[3], const char CountryCode[3],
                                                            wchar_t* Buffer, cmsUInt32Number BufferSize);

       cmsUInt32Number cmsGetProfileInfoASCII(cmsHPROFILE hProfile, cmsInfoType Info,
                                                            const char LanguageCode[3], const char CountryCode[3],
                                                            char* Buffer, cmsUInt32Number BufferSize);



typedef struct _cms_io_handler cmsIOHANDLER;

       cmsIOHANDLER* cmsOpenIOhandlerFromFile(cmsContext ContextID, const char* FileName, const char* AccessMode);
       cmsIOHANDLER* cmsOpenIOhandlerFromStream(cmsContext ContextID, FILE* Stream);
       cmsIOHANDLER* cmsOpenIOhandlerFromMem(cmsContext ContextID, void *Buffer, cmsUInt32Number size, const char* AccessMode);
       cmsIOHANDLER* cmsOpenIOhandlerFromNULL(cmsContext ContextID);
       cmsBool cmsCloseIOhandler(cmsIOHANDLER* io);



       cmsBool cmsMD5computeID(cmsHPROFILE hProfile);



       cmsHPROFILE cmsOpenProfileFromFile(const char *ICCProfile, const char *sAccess);
       cmsHPROFILE cmsOpenProfileFromFileTHR(cmsContext ContextID, const char *ICCProfile, const char *sAccess);
       cmsHPROFILE cmsOpenProfileFromStream(FILE* ICCProfile, const char* sAccess);
       cmsHPROFILE cmsOpenProfileFromStreamTHR(cmsContext ContextID, FILE* ICCProfile, const char* sAccess);
       cmsHPROFILE cmsOpenProfileFromMem(const void * MemPtr, cmsUInt32Number dwSize);
       cmsHPROFILE cmsOpenProfileFromMemTHR(cmsContext ContextID, const void * MemPtr, cmsUInt32Number dwSize);
       cmsHPROFILE cmsOpenProfileFromIOhandlerTHR(cmsContext ContextID, cmsIOHANDLER* io);
       cmsHPROFILE cmsOpenProfileFromIOhandler2THR(cmsContext ContextID, cmsIOHANDLER* io, cmsBool write);
       cmsBool cmsCloseProfile(cmsHPROFILE hProfile);

       cmsBool cmsSaveProfileToFile(cmsHPROFILE hProfile, const char* FileName);
       cmsBool cmsSaveProfileToStream(cmsHPROFILE hProfile, FILE* Stream);
       cmsBool cmsSaveProfileToMem(cmsHPROFILE hProfile, void *MemPtr, cmsUInt32Number* BytesNeeded);
       cmsUInt32Number cmsSaveProfileToIOhandler(cmsHPROFILE hProfile, cmsIOHANDLER* io);



       cmsHPROFILE cmsCreateRGBProfileTHR(cmsContext ContextID,
                                                   const cmsCIExyY* WhitePoint,
                                                   const cmsCIExyYTRIPLE* Primaries,
                                                   cmsToneCurve* const TransferFunction[3]);

       cmsHPROFILE cmsCreateRGBProfile(const cmsCIExyY* WhitePoint,
                                                   const cmsCIExyYTRIPLE* Primaries,
                                                   cmsToneCurve* const TransferFunction[3]);

       cmsHPROFILE cmsCreateGrayProfileTHR(cmsContext ContextID,
                                                    const cmsCIExyY* WhitePoint,
                                                    const cmsToneCurve* TransferFunction);

       cmsHPROFILE cmsCreateGrayProfile(const cmsCIExyY* WhitePoint,
                                                    const cmsToneCurve* TransferFunction);

       cmsHPROFILE cmsCreateLinearizationDeviceLinkTHR(cmsContext ContextID,
                                                                cmsColorSpaceSignature ColorSpace,
                                                                cmsToneCurve* const TransferFunctions[]);

       cmsHPROFILE cmsCreateLinearizationDeviceLink(cmsColorSpaceSignature ColorSpace,
                                                                cmsToneCurve* const TransferFunctions[]);

       cmsHPROFILE cmsCreateInkLimitingDeviceLinkTHR(cmsContext ContextID,
                                                              cmsColorSpaceSignature ColorSpace, cmsFloat64Number Limit);

       cmsHPROFILE cmsCreateInkLimitingDeviceLink(cmsColorSpaceSignature ColorSpace, cmsFloat64Number Limit);


       cmsHPROFILE cmsCreateLab2ProfileTHR(cmsContext ContextID, const cmsCIExyY* WhitePoint);
       cmsHPROFILE cmsCreateLab2Profile(const cmsCIExyY* WhitePoint);
       cmsHPROFILE cmsCreateLab4ProfileTHR(cmsContext ContextID, const cmsCIExyY* WhitePoint);
       cmsHPROFILE cmsCreateLab4Profile(const cmsCIExyY* WhitePoint);

       cmsHPROFILE cmsCreateXYZProfileTHR(cmsContext ContextID);
       cmsHPROFILE cmsCreateXYZProfile(void);

       cmsHPROFILE cmsCreate_sRGBProfileTHR(cmsContext ContextID);
       cmsHPROFILE cmsCreate_sRGBProfile(void);

       cmsHPROFILE cmsCreateBCHSWabstractProfileTHR(cmsContext ContextID,
                                                             int nLUTPoints,
                                                             cmsFloat64Number Bright,
                                                             cmsFloat64Number Contrast,
                                                             cmsFloat64Number Hue,
                                                             cmsFloat64Number Saturation,
                                                             int TempSrc,
                                                             int TempDest);

       cmsHPROFILE cmsCreateBCHSWabstractProfile(int nLUTPoints,
                                                             cmsFloat64Number Bright,
                                                             cmsFloat64Number Contrast,
                                                             cmsFloat64Number Hue,
                                                             cmsFloat64Number Saturation,
                                                             int TempSrc,
                                                             int TempDest);

       cmsHPROFILE cmsCreateNULLProfileTHR(cmsContext ContextID);
       cmsHPROFILE cmsCreateNULLProfile(void);


       cmsHPROFILE cmsTransform2DeviceLink(cmsHTRANSFORM hTransform, cmsFloat64Number Version, cmsUInt32Number dwFlags);
# 1615 "./lcms2/include/lcms2.h"
       cmsUInt32Number cmsGetSupportedIntents(cmsUInt32Number nMax, cmsUInt32Number* Codes, char** Descriptions);
       cmsUInt32Number cmsGetSupportedIntentsTHR(cmsContext ContextID, cmsUInt32Number nMax, cmsUInt32Number* Codes, char** Descriptions);
# 1652 "./lcms2/include/lcms2.h"
       cmsHTRANSFORM cmsCreateTransformTHR(cmsContext ContextID,
                                                  cmsHPROFILE Input,
                                                  cmsUInt32Number InputFormat,
                                                  cmsHPROFILE Output,
                                                  cmsUInt32Number OutputFormat,
                                                  cmsUInt32Number Intent,
                                                  cmsUInt32Number dwFlags);

       cmsHTRANSFORM cmsCreateTransform(cmsHPROFILE Input,
                                                  cmsUInt32Number InputFormat,
                                                  cmsHPROFILE Output,
                                                  cmsUInt32Number OutputFormat,
                                                  cmsUInt32Number Intent,
                                                  cmsUInt32Number dwFlags);

       cmsHTRANSFORM cmsCreateProofingTransformTHR(cmsContext ContextID,
                                                  cmsHPROFILE Input,
                                                  cmsUInt32Number InputFormat,
                                                  cmsHPROFILE Output,
                                                  cmsUInt32Number OutputFormat,
                                                  cmsHPROFILE Proofing,
                                                  cmsUInt32Number Intent,
                                                  cmsUInt32Number ProofingIntent,
                                                  cmsUInt32Number dwFlags);

       cmsHTRANSFORM cmsCreateProofingTransform(cmsHPROFILE Input,
                                                  cmsUInt32Number InputFormat,
                                                  cmsHPROFILE Output,
                                                  cmsUInt32Number OutputFormat,
                                                  cmsHPROFILE Proofing,
                                                  cmsUInt32Number Intent,
                                                  cmsUInt32Number ProofingIntent,
                                                  cmsUInt32Number dwFlags);

       cmsHTRANSFORM cmsCreateMultiprofileTransformTHR(cmsContext ContextID,
                                                  cmsHPROFILE hProfiles[],
                                                  cmsUInt32Number nProfiles,
                                                  cmsUInt32Number InputFormat,
                                                  cmsUInt32Number OutputFormat,
                                                  cmsUInt32Number Intent,
                                                  cmsUInt32Number dwFlags);


       cmsHTRANSFORM cmsCreateMultiprofileTransform(cmsHPROFILE hProfiles[],
                                                  cmsUInt32Number nProfiles,
                                                  cmsUInt32Number InputFormat,
                                                  cmsUInt32Number OutputFormat,
                                                  cmsUInt32Number Intent,
                                                  cmsUInt32Number dwFlags);


       cmsHTRANSFORM cmsCreateExtendedTransform(cmsContext ContextID,
                                                   cmsUInt32Number nProfiles, cmsHPROFILE hProfiles[],
                                                   cmsBool BPC[],
                                                   cmsUInt32Number Intents[],
                                                   cmsFloat64Number AdaptationStates[],
                                                   cmsHPROFILE hGamutProfile,
                                                   cmsUInt32Number nGamutPCSposition,
                                                   cmsUInt32Number InputFormat,
                                                   cmsUInt32Number OutputFormat,
                                                   cmsUInt32Number dwFlags);

       void cmsDeleteTransform(cmsHTRANSFORM hTransform);

       void cmsDoTransform(cmsHTRANSFORM Transform,
                                                 const void * InputBuffer,
                                                 void * OutputBuffer,
                                                 cmsUInt32Number Size);

       void cmsDoTransformStride(cmsHTRANSFORM Transform,
                                                 const void * InputBuffer,
                                                 void * OutputBuffer,
                                                 cmsUInt32Number Size,
                                                 cmsUInt32Number Stride);


       void cmsSetAlarmCodes(const cmsUInt16Number NewAlarm[16]);
       void cmsGetAlarmCodes(cmsUInt16Number NewAlarm[16]);


       void cmsSetAlarmCodesTHR(cmsContext ContextID,
                                                          const cmsUInt16Number AlarmCodes[16]);
       void cmsGetAlarmCodesTHR(cmsContext ContextID,
                                                          cmsUInt16Number AlarmCodes[16]);




       cmsFloat64Number cmsSetAdaptationState(cmsFloat64Number d);
       cmsFloat64Number cmsSetAdaptationStateTHR(cmsContext ContextID, cmsFloat64Number d);




       cmsContext cmsGetTransformContextID(cmsHTRANSFORM hTransform);


       cmsUInt32Number cmsGetTransformInputFormat(cmsHTRANSFORM hTransform);
       cmsUInt32Number cmsGetTransformOutputFormat(cmsHTRANSFORM hTransform);


       cmsBool cmsChangeBuffersFormat(cmsHTRANSFORM hTransform,
                                                         cmsUInt32Number InputFormat,
                                                         cmsUInt32Number OutputFormat);





typedef enum { cmsPS_RESOURCE_CSA, cmsPS_RESOURCE_CRD } cmsPSResourceType;


       cmsUInt32Number cmsGetPostScriptColorResource(cmsContext ContextID,
                                                                cmsPSResourceType Type,
                                                                cmsHPROFILE hProfile,
                                                                cmsUInt32Number Intent,
                                                                cmsUInt32Number dwFlags,
                                                                cmsIOHANDLER* io);

       cmsUInt32Number cmsGetPostScriptCSA(cmsContext ContextID, cmsHPROFILE hProfile, cmsUInt32Number Intent, cmsUInt32Number dwFlags, void* Buffer, cmsUInt32Number dwBufferLen);
       cmsUInt32Number cmsGetPostScriptCRD(cmsContext ContextID, cmsHPROFILE hProfile, cmsUInt32Number Intent, cmsUInt32Number dwFlags, void* Buffer, cmsUInt32Number dwBufferLen);




       cmsHANDLE cmsIT8Alloc(cmsContext ContextID);
       void cmsIT8Free(cmsHANDLE hIT8);


       cmsUInt32Number cmsIT8TableCount(cmsHANDLE hIT8);
       cmsInt32Number cmsIT8SetTable(cmsHANDLE hIT8, cmsUInt32Number nTable);


       cmsHANDLE cmsIT8LoadFromFile(cmsContext ContextID, const char* cFileName);
       cmsHANDLE cmsIT8LoadFromMem(cmsContext ContextID, void *Ptr, cmsUInt32Number len);


       cmsBool cmsIT8SaveToFile(cmsHANDLE hIT8, const char* cFileName);
       cmsBool cmsIT8SaveToMem(cmsHANDLE hIT8, void *MemPtr, cmsUInt32Number* BytesNeeded);


       const char* cmsIT8GetSheetType(cmsHANDLE hIT8);
       cmsBool cmsIT8SetSheetType(cmsHANDLE hIT8, const char* Type);

       cmsBool cmsIT8SetComment(cmsHANDLE hIT8, const char* cComment);

       cmsBool cmsIT8SetPropertyStr(cmsHANDLE hIT8, const char* cProp, const char *Str);
       cmsBool cmsIT8SetPropertyDbl(cmsHANDLE hIT8, const char* cProp, cmsFloat64Number Val);
       cmsBool cmsIT8SetPropertyHex(cmsHANDLE hIT8, const char* cProp, cmsUInt32Number Val);
       cmsBool cmsIT8SetPropertyMulti(cmsHANDLE hIT8, const char* Key, const char* SubKey, const char *Buffer);
       cmsBool cmsIT8SetPropertyUncooked(cmsHANDLE hIT8, const char* Key, const char* Buffer);


       const char* cmsIT8GetProperty(cmsHANDLE hIT8, const char* cProp);
       cmsFloat64Number cmsIT8GetPropertyDbl(cmsHANDLE hIT8, const char* cProp);
       const char* cmsIT8GetPropertyMulti(cmsHANDLE hIT8, const char* Key, const char *SubKey);
       cmsUInt32Number cmsIT8EnumProperties(cmsHANDLE hIT8, char ***PropertyNames);
       cmsUInt32Number cmsIT8EnumPropertyMulti(cmsHANDLE hIT8, const char* cProp, const char ***SubpropertyNames);


       const char* cmsIT8GetDataRowCol(cmsHANDLE hIT8, int row, int col);
       cmsFloat64Number cmsIT8GetDataRowColDbl(cmsHANDLE hIT8, int row, int col);

       cmsBool cmsIT8SetDataRowCol(cmsHANDLE hIT8, int row, int col,
                                                const char* Val);

       cmsBool cmsIT8SetDataRowColDbl(cmsHANDLE hIT8, int row, int col,
                                                cmsFloat64Number Val);

       const char* cmsIT8GetData(cmsHANDLE hIT8, const char* cPatch, const char* cSample);


       cmsFloat64Number cmsIT8GetDataDbl(cmsHANDLE hIT8, const char* cPatch, const char* cSample);

       cmsBool cmsIT8SetData(cmsHANDLE hIT8, const char* cPatch,
                                                const char* cSample,
                                                const char *Val);

       cmsBool cmsIT8SetDataDbl(cmsHANDLE hIT8, const char* cPatch,
                                                const char* cSample,
                                                cmsFloat64Number Val);

       int cmsIT8FindDataFormat(cmsHANDLE hIT8, const char* cSample);
       cmsBool cmsIT8SetDataFormat(cmsHANDLE hIT8, int n, const char *Sample);
       int cmsIT8EnumDataFormat(cmsHANDLE hIT8, char ***SampleNames);

       const char* cmsIT8GetPatchName(cmsHANDLE hIT8, int nPatch, char* buffer);
       int cmsIT8GetPatchByName(cmsHANDLE hIT8, const char *cPatch);


       int cmsIT8SetTableByLabel(cmsHANDLE hIT8, const char* cSet, const char* cField, const char* ExpectedType);

       cmsBool cmsIT8SetIndexColumn(cmsHANDLE hIT8, const char* cSample);


       void cmsIT8DefineDblFormat(cmsHANDLE hIT8, const char* Formatter);



       cmsHANDLE cmsGBDAlloc(cmsContext ContextID);
       void cmsGBDFree(cmsHANDLE hGBD);
       cmsBool cmsGDBAddPoint(cmsHANDLE hGBD, const cmsCIELab* Lab);
       cmsBool cmsGDBCompute(cmsHANDLE hGDB, cmsUInt32Number dwFlags);
       cmsBool cmsGDBCheckPoint(cmsHANDLE hGBD, const cmsCIELab* Lab);




       cmsBool cmsDetectBlackPoint(cmsCIEXYZ* BlackPoint, cmsHPROFILE hProfile, cmsUInt32Number Intent, cmsUInt32Number dwFlags);
       cmsBool cmsDetectDestinationBlackPoint(cmsCIEXYZ* BlackPoint, cmsHPROFILE hProfile, cmsUInt32Number Intent, cmsUInt32Number dwFlags);


       cmsFloat64Number cmsDetectTAC(cmsHPROFILE hProfile);



       cmsBool cmsDesaturateLab(cmsCIELab* Lab,
                                                   double amax, double amin,
                                                   double bmax, double bmin);
# 21 "./base/gsicc_lcms2.c" 2
# 1 "./lcms2/include/lcms2_plugin.h" 1
# 50 "./lcms2/include/lcms2_plugin.h"
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
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
# 952 "/usr/include/stdlib.h" 2 3 4
# 51 "./lcms2/include/lcms2_plugin.h" 2
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
# 52 "./lcms2/include/lcms2_plugin.h" 2

# 1 "/usr/include/memory.h" 1 3 4
# 54 "./lcms2/include/lcms2_plugin.h" 2
# 71 "./lcms2/include/lcms2_plugin.h"
typedef struct {
    cmsFloat64Number n[3];

    } cmsVEC3;


typedef struct {
    cmsVEC3 v[3];

    } cmsMAT3;

       void _cmsVEC3init(cmsVEC3* r, cmsFloat64Number x, cmsFloat64Number y, cmsFloat64Number z);
       void _cmsVEC3minus(cmsVEC3* r, const cmsVEC3* a, const cmsVEC3* b);
       void _cmsVEC3cross(cmsVEC3* r, const cmsVEC3* u, const cmsVEC3* v);
       cmsFloat64Number _cmsVEC3dot(const cmsVEC3* u, const cmsVEC3* v);
       cmsFloat64Number _cmsVEC3length(const cmsVEC3* a);
       cmsFloat64Number _cmsVEC3distance(const cmsVEC3* a, const cmsVEC3* b);

       void _cmsMAT3identity(cmsMAT3* a);
       cmsBool _cmsMAT3isIdentity(const cmsMAT3* a);
       void _cmsMAT3per(cmsMAT3* r, const cmsMAT3* a, const cmsMAT3* b);
       cmsBool _cmsMAT3inverse(const cmsMAT3* a, cmsMAT3* b);
       cmsBool _cmsMAT3solve(cmsVEC3* x, cmsMAT3* a, cmsVEC3* b);
       void _cmsMAT3eval(cmsVEC3* r, const cmsMAT3* a, const cmsVEC3* v);




       void cmsSignalError(cmsContext ContextID, cmsUInt32Number ErrorCode, const char *ErrorText, ...);



       void* _cmsMalloc(cmsContext ContextID, cmsUInt32Number size);
       void* _cmsMallocZero(cmsContext ContextID, cmsUInt32Number size);
       void* _cmsCalloc(cmsContext ContextID, cmsUInt32Number num, cmsUInt32Number size);
       void* _cmsRealloc(cmsContext ContextID, void* Ptr, cmsUInt32Number NewSize);
       void _cmsFree(cmsContext ContextID, void* Ptr);
       void* _cmsDupMem(cmsContext ContextID, const void* Org, cmsUInt32Number size);



struct _cms_io_handler {

    void* stream;

    cmsContext ContextID;
    cmsUInt32Number UsedSpace;
    cmsUInt32Number ReportedSize;
    char PhysicalFile[256];

    cmsUInt32Number (* Read)(struct _cms_io_handler* iohandler, void *Buffer,
                                                                  cmsUInt32Number size,
                                                                  cmsUInt32Number count);
    cmsBool (* Seek)(struct _cms_io_handler* iohandler, cmsUInt32Number offset);
    cmsBool (* Close)(struct _cms_io_handler* iohandler);
    cmsUInt32Number (* Tell)(struct _cms_io_handler* iohandler);
    cmsBool (* Write)(struct _cms_io_handler* iohandler, cmsUInt32Number size,
                                                                   const void* Buffer);
};


       cmsUInt16Number _cmsAdjustEndianess16(cmsUInt16Number Word);
       cmsUInt32Number _cmsAdjustEndianess32(cmsUInt32Number Value);
       void _cmsAdjustEndianess64(cmsUInt64Number* Result, cmsUInt64Number* QWord);


       cmsBool _cmsReadUInt8Number(cmsIOHANDLER* io, cmsUInt8Number* n);
       cmsBool _cmsReadUInt16Number(cmsIOHANDLER* io, cmsUInt16Number* n);
       cmsBool _cmsReadUInt32Number(cmsIOHANDLER* io, cmsUInt32Number* n);
       cmsBool _cmsReadFloat32Number(cmsIOHANDLER* io, cmsFloat32Number* n);
       cmsBool _cmsReadUInt64Number(cmsIOHANDLER* io, cmsUInt64Number* n);
       cmsBool _cmsRead15Fixed16Number(cmsIOHANDLER* io, cmsFloat64Number* n);
       cmsBool _cmsReadXYZNumber(cmsIOHANDLER* io, cmsCIEXYZ* XYZ);
       cmsBool _cmsReadUInt16Array(cmsIOHANDLER* io, cmsUInt32Number n, cmsUInt16Number* Array);

       cmsBool _cmsWriteUInt8Number(cmsIOHANDLER* io, cmsUInt8Number n);
       cmsBool _cmsWriteUInt16Number(cmsIOHANDLER* io, cmsUInt16Number n);
       cmsBool _cmsWriteUInt32Number(cmsIOHANDLER* io, cmsUInt32Number n);
       cmsBool _cmsWriteFloat32Number(cmsIOHANDLER* io, cmsFloat32Number n);
       cmsBool _cmsWriteUInt64Number(cmsIOHANDLER* io, cmsUInt64Number* n);
       cmsBool _cmsWrite15Fixed16Number(cmsIOHANDLER* io, cmsFloat64Number n);
       cmsBool _cmsWriteXYZNumber(cmsIOHANDLER* io, const cmsCIEXYZ* XYZ);
       cmsBool _cmsWriteUInt16Array(cmsIOHANDLER* io, cmsUInt32Number n, const cmsUInt16Number* Array);


typedef struct {
    cmsTagTypeSignature sig;
    cmsInt8Number reserved[4];

} _cmsTagBase;


       cmsTagTypeSignature _cmsReadTypeBase(cmsIOHANDLER* io);
       cmsBool _cmsWriteTypeBase(cmsIOHANDLER* io, cmsTagTypeSignature sig);


       cmsBool _cmsReadAlignment(cmsIOHANDLER* io);
       cmsBool _cmsWriteAlignment(cmsIOHANDLER* io);


       cmsBool _cmsIOPrintf(cmsIOHANDLER* io, const char* frm, ...);


       cmsFloat64Number _cms8Fixed8toDouble(cmsUInt16Number fixed8);
       cmsUInt16Number _cmsDoubleTo8Fixed8(cmsFloat64Number val);

       cmsFloat64Number _cms15Fixed16toDouble(cmsS15Fixed16Number fix32);
       cmsS15Fixed16Number _cmsDoubleTo15Fixed16(cmsFloat64Number v);


       void _cmsEncodeDateTimeNumber(cmsDateTimeNumber *Dest, const struct tm *Source);
       void _cmsDecodeDateTimeNumber(const cmsDateTimeNumber *Source, struct tm *Dest);




typedef void (* _cmsFreeUserDataFn)(cmsContext ContextID, void* Data);
typedef void* (* _cmsDupUserDataFn)(cmsContext ContextID, const void* Data);
# 207 "./lcms2/include/lcms2_plugin.h"
typedef struct _cmsPluginBaseStruct {

        cmsUInt32Number Magic;
        cmsUInt32Number ExpectedVersion;
        cmsUInt32Number Type;
        struct _cmsPluginBaseStruct* Next;

} cmsPluginBase;
# 223 "./lcms2/include/lcms2_plugin.h"
typedef void* (* _cmsMallocFnPtrType)(cmsContext ContextID, cmsUInt32Number size);
typedef void (* _cmsFreeFnPtrType)(cmsContext ContextID, void *Ptr);
typedef void* (* _cmsReallocFnPtrType)(cmsContext ContextID, void* Ptr, cmsUInt32Number NewSize);

typedef void* (* _cmsMalloZerocFnPtrType)(cmsContext ContextID, cmsUInt32Number size);
typedef void* (* _cmsCallocFnPtrType)(cmsContext ContextID, cmsUInt32Number num, cmsUInt32Number size);
typedef void* (* _cmsDupFnPtrType)(cmsContext ContextID, const void* Org, cmsUInt32Number size);

typedef struct {

        cmsPluginBase base;


        _cmsMallocFnPtrType MallocPtr;
        _cmsFreeFnPtrType FreePtr;
        _cmsReallocFnPtrType ReallocPtr;


       _cmsMalloZerocFnPtrType MallocZeroPtr;
       _cmsCallocFnPtrType CallocPtr;
       _cmsDupFnPtrType DupPtr;

} cmsPluginMemHandler;





struct _cms_interp_struc;






typedef void (* _cmsInterpFn16)(register const cmsUInt16Number Input[],
                                register cmsUInt16Number Output[],
                                register const struct _cms_interp_struc* p);




typedef void (* _cmsInterpFnFloat)(cmsFloat32Number const Input[],
                                   cmsFloat32Number Output[],
                                   const struct _cms_interp_struc* p);




typedef union {
    _cmsInterpFn16 Lerp16;
    _cmsInterpFnFloat LerpFloat;
} cmsInterpFunction;
# 285 "./lcms2/include/lcms2_plugin.h"
typedef struct _cms_interp_struc {

    cmsContext ContextID;

    cmsUInt32Number dwFlags;
    cmsUInt32Number nInputs;
    cmsUInt32Number nOutputs;

    cmsUInt32Number nSamples[8];
    cmsUInt32Number Domain[8];

    cmsUInt32Number opta[8];



    const void *Table;
    cmsInterpFunction Interpolation;

 } cmsInterpParams;


typedef cmsInterpFunction (* cmsInterpFnFactory)(cmsUInt32Number nInputChannels, cmsUInt32Number nOutputChannels, cmsUInt32Number dwFlags);


typedef struct {
    cmsPluginBase base;


    cmsInterpFnFactory InterpolatorsFactory;

} cmsPluginInterpolation;






typedef cmsFloat64Number (* cmsParametricCurveEvaluator)(cmsInt32Number Type, const cmsFloat64Number Params[10], cmsFloat64Number R);


typedef struct {
    cmsPluginBase base;

    cmsUInt32Number nFunctions;
    cmsUInt32Number FunctionTypes[20];
    cmsUInt32Number ParameterCount[20];

    cmsParametricCurveEvaluator Evaluator;

} cmsPluginParametricCurves;






struct _cmstransform_struct;

typedef cmsUInt8Number* (* cmsFormatter16)(register struct _cmstransform_struct* CMMcargo,
                                           register cmsUInt16Number Values[],
                                           register cmsUInt8Number* Buffer,
                                           register cmsUInt32Number Stride);

typedef cmsUInt8Number* (* cmsFormatterFloat)(struct _cmstransform_struct* CMMcargo,
                                              cmsFloat32Number Values[],
                                              cmsUInt8Number* Buffer,
                                              cmsUInt32Number Stride);


typedef union {
    cmsFormatter16 Fmt16;
    cmsFormatterFloat FmtFloat;

} cmsFormatter;




typedef enum { cmsFormatterInput=0, cmsFormatterOutput=1 } cmsFormatterDirection;

typedef cmsFormatter (* cmsFormatterFactory)(cmsUInt32Number Type,
                                             cmsFormatterDirection Dir,
                                             cmsUInt32Number dwFlags);


typedef struct {
    cmsPluginBase base;
    cmsFormatterFactory FormattersFactory;

} cmsPluginFormatters;





typedef struct _cms_typehandler_struct {

        cmsTagTypeSignature Signature;


        void * (* ReadPtr)(struct _cms_typehandler_struct* self,
                             cmsIOHANDLER* io,
                             cmsUInt32Number* nItems,
                             cmsUInt32Number SizeOfTag);


        cmsBool (* WritePtr)(struct _cms_typehandler_struct* self,
                              cmsIOHANDLER* io,
                              void* Ptr,
                              cmsUInt32Number nItems);


        void* (* DupPtr)(struct _cms_typehandler_struct* self,
                           const void *Ptr,
                           cmsUInt32Number n);


        void (* FreePtr)(struct _cms_typehandler_struct* self,
                            void *Ptr);


        cmsContext ContextID;
        cmsUInt32Number ICCVersion;

} cmsTagTypeHandler;


typedef struct {
        cmsPluginBase base;
        cmsTagTypeHandler Handler;

} cmsPluginTagType;






typedef struct {

    cmsUInt32Number ElemCount;


    cmsUInt32Number nSupportedTypes;
    cmsTagTypeSignature SupportedTypes[20];


    cmsTagTypeSignature (* DecideType)(cmsFloat64Number ICCVersion, const void *Data);

} cmsTagDescriptor;


typedef struct {
    cmsPluginBase base;

    cmsTagSignature Signature;
    cmsTagDescriptor Descriptor;

} cmsPluginTag;
# 452 "./lcms2/include/lcms2_plugin.h"
typedef cmsPipeline* (* cmsIntentFn)( cmsContext ContextID,
                                      cmsUInt32Number nProfiles,
                                      cmsUInt32Number Intents[],
                                      cmsHPROFILE hProfiles[],
                                      cmsBool BPC[],
                                      cmsFloat64Number AdaptationStates[],
                                      cmsUInt32Number dwFlags);



typedef struct {
    cmsPluginBase base;
    cmsUInt32Number Intent;
    cmsIntentFn Link;
    char Description[256];

} cmsPluginRenderingIntent;



       cmsPipeline* _cmsDefaultICCintents(cmsContext ContextID,
                                                     cmsUInt32Number nProfiles,
                                                     cmsUInt32Number Intents[],
                                                     cmsHPROFILE hProfiles[],
                                                     cmsBool BPC[],
                                                     cmsFloat64Number AdaptationStates[],
                                                     cmsUInt32Number dwFlags);






typedef void (* _cmsStageEvalFn) (const cmsFloat32Number In[], cmsFloat32Number Out[], const cmsStage* mpe);
typedef void*(* _cmsStageDupElemFn) (cmsStage* mpe);
typedef void (* _cmsStageFreeElemFn) (cmsStage* mpe);



       cmsStage* _cmsStageAllocPlaceholder(cmsContext ContextID,
                                cmsStageSignature Type,
                                cmsUInt32Number InputChannels,
                                cmsUInt32Number OutputChannels,
                                _cmsStageEvalFn EvalPtr,
                                _cmsStageDupElemFn DupElemPtr,
                                _cmsStageFreeElemFn FreePtr,
                                void* Data);
typedef struct {
      cmsPluginBase base;
      cmsTagTypeHandler Handler;

} cmsPluginMultiProcessElement;





typedef struct {
    cmsUInt32Number nCurves;
    cmsToneCurve** TheCurves;

} _cmsStageToneCurvesData;


typedef struct {
    cmsFloat64Number* Double;
    cmsFloat64Number* Offset;

} _cmsStageMatrixData;


typedef struct {

    union {
        cmsUInt16Number* T;
        cmsFloat32Number* TFloat;

    } Tab;

    cmsInterpParams* Params;
    cmsUInt32Number nEntries;
    cmsBool HasFloatValues;

} _cmsStageCLutData;
# 544 "./lcms2/include/lcms2_plugin.h"
typedef void (* _cmsOPTeval16Fn)(register const cmsUInt16Number In[],
                                     register cmsUInt16Number Out[],
                                     register const void* Data);


typedef cmsBool (* _cmsOPToptimizeFn)(cmsPipeline** Lut,
                                       cmsUInt32Number Intent,
                                       cmsUInt32Number* InputFormat,
                                       cmsUInt32Number* OutputFormat,
                                       cmsUInt32Number* dwFlags);




       void _cmsPipelineSetOptimizationParameters(cmsPipeline* Lut,
                                               _cmsOPTeval16Fn Eval16,
                                               void* PrivateData,
                                               _cmsFreeUserDataFn FreePrivateDataFn,
                                               _cmsDupUserDataFn DupPrivateDataFn);

typedef struct {
      cmsPluginBase base;


      _cmsOPToptimizeFn OptimizePtr;

} cmsPluginOptimization;



typedef void (* _cmsTransformFn)(struct _cmstransform_struct *CMMcargo,
                                     const void* InputBuffer,
                                     void* OutputBuffer,
                                     cmsUInt32Number Size,
                                     cmsUInt32Number Stride);

typedef cmsBool (* _cmsTransformFactory)(_cmsTransformFn* xform,
                                         void** UserData,
                                         _cmsFreeUserDataFn* FreePrivateDataFn,
                                         cmsPipeline** Lut,
                                         cmsUInt32Number* InputFormat,
                                         cmsUInt32Number* OutputFormat,
                                         cmsUInt32Number* dwFlags);



       void _cmsSetTransformUserData(struct _cmstransform_struct *CMMcargo, void* ptr, _cmsFreeUserDataFn FreePrivateDataFn);
       void * _cmsGetTransformUserData(struct _cmstransform_struct *CMMcargo);



       void _cmsGetTransformFormatters16 (struct _cmstransform_struct *CMMcargo, cmsFormatter16* FromInput, cmsFormatter16* ToOutput);
       void _cmsGetTransformFormattersFloat(struct _cmstransform_struct *CMMcargo, cmsFormatterFloat* FromInput, cmsFormatterFloat* ToOutput);

typedef struct {
      cmsPluginBase base;


      _cmsTransformFactory Factory;

} cmsPluginTransform;




typedef void* (* _cmsCreateMutexFnPtrType)(cmsContext ContextID);
typedef void (* _cmsDestroyMutexFnPtrType)(cmsContext ContextID, void* mtx);
typedef cmsBool (* _cmsLockMutexFnPtrType)(cmsContext ContextID, void* mtx);
typedef void (* _cmsUnlockMutexFnPtrType)(cmsContext ContextID, void* mtx);

typedef struct {
      cmsPluginBase base;

     _cmsCreateMutexFnPtrType CreateMutexPtr;
     _cmsDestroyMutexFnPtrType DestroyMutexPtr;
     _cmsLockMutexFnPtrType LockMutexPtr;
     _cmsUnlockMutexFnPtrType UnlockMutexPtr;

} cmsPluginMutex;

       void* _cmsCreateMutex(cmsContext ContextID);
       void _cmsDestroyMutex(cmsContext ContextID, void* mtx);
       cmsBool _cmsLockMutex(cmsContext ContextID, void* mtx);
       void _cmsUnlockMutex(cmsContext ContextID, void* mtx);
# 22 "./base/gsicc_lcms2.c" 2
# 1 "./base/gslibctx.h" 1
# 21 "./base/gslibctx.h"
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
# 22 "./base/gslibctx.h" 2
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
# 23 "./base/gsicc_lcms2.c" 2
# 1 "./base/gserrors.h" 1
# 50 "./base/gserrors.h"
int gs_log_error(int, const char *, int);
# 88 "./base/gserrors.h"
const char *gs_errstr(int code);
# 189 "./base/gserrors.h"
int gs_throw_imp(const char *func, const char *file, int line,
        int op, int code, const char *fmt, ...) __attribute__((__format__ (__printf__, 6, 7)));
# 24 "./base/gsicc_lcms2.c" 2
# 1 "./base/gp.h" 1
# 23 "./base/gp.h"
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
# 24 "./base/gp.h" 2
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
# 25 "./base/gsicc_lcms2.c" 2
# 1 "./base/gsicc_cms.h" 1
# 22 "./base/gsicc_cms.h"
# 1 "./base/gxcvalue.h" 1
# 23 "./base/gxcvalue.h"
typedef unsigned short gx_color_value;
# 23 "./base/gsicc_cms.h" 2
# 1 "./base/gscms.h" 1
# 24 "./base/gscms.h"
# 1 "./base/gscspace.h" 1
# 22 "./base/gscspace.h"
# 1 "./base/gsmemory.h" 1
# 46 "./base/gsmemory.h"
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
# 23 "./base/gscspace.h" 2
# 1 "./base/gsiparam.h" 1
# 22 "./base/gsiparam.h"
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
# 24 "./base/gsicc_cms.h" 2



    typedef void* gcmmhprofile_t;




    typedef void* gcmmhlink_t;



bool gsicc_mcm_monitor_rgb(void *inputcolor, int num_bytes);
bool gsicc_mcm_monitor_cmyk(void *inputcolor, int num_bytes);
bool gsicc_mcm_monitor_lab(void *inputcolor, int num_bytes);
void gsicc_mcm_set_link(gsicc_link_t* link);
void gsicc_mcm_end_monitor(gsicc_link_cache_t *cache, gx_device *dev);
void gsicc_mcm_begin_monitor(gsicc_link_cache_t *cache, gx_device *dev);
gsicc_link_t* gsicc_rcm_get_link(const gs_imager_state *pis, gx_device *dev,
                                 gsicc_colorbuffer_t data_cs);
gsicc_link_t* gsicc_nocm_get_link(const gs_imager_state *pis, gx_device *dev,
                                  gs_color_space_index src_index);
gcmmhprofile_t gscms_get_profile_handle_mem(gs_memory_t *mem,
                                            unsigned char *buffer,
                                            unsigned int input_size);
gcmmhprofile_t gscms_get_profile_handle_file(gs_memory_t *mem,
                                             const char *filename);
void gscms_transform_color_buffer(gx_device *dev, gsicc_link_t *icclink,
                                  gsicc_bufferdesc_t *input_buff_desc,
                                  gsicc_bufferdesc_t *output_buff_desc,
                                  void *inputbuffer,
                                  void *outputbuffer);
int gscms_get_channel_count(gcmmhprofile_t profile);
int gscms_get_pcs_channel_count(gcmmhprofile_t profile);
char* gscms_get_clrtname(gcmmhprofile_t profile, int colorcount, gs_memory_t *memory);
int gscms_get_numberclrtnames(gcmmhprofile_t profile);
bool gscms_is_device_link(gcmmhprofile_t profile);
bool gscms_is_input(gcmmhprofile_t profile);
gsicc_colorbuffer_t gscms_get_profile_data_space(gcmmhprofile_t profile);
void gscms_transform_color(gx_device *dev, gsicc_link_t *icclink, void *inputcolor,
                           void *outputcolor, int num_bytes);
gcmmhlink_t gscms_get_link(gcmmhprofile_t lcms_srchandle,
                           gcmmhprofile_t lcms_deshandle,
                           gsicc_rendering_param_t *rendering_params,
                           int cmm_flags,
                           gs_memory_t *memory);
gcmmhlink_t gscms_get_link_proof_devlink(gcmmhprofile_t lcms_srchandle,
                                         gcmmhprofile_t lcms_proofhandle,
                                         gcmmhprofile_t lcms_deshandle,
                                         gcmmhprofile_t lcms_devlinkhandle,
                                         gsicc_rendering_param_t *rendering_params,
                                         bool src_dev_link, int cmm_flags,
                                         gs_memory_t *memory);
int gscms_create(gs_memory_t *memory);
void gscms_destroy(gs_memory_t *memory);
void gscms_release_link(gsicc_link_t *icclink);
void gscms_release_profile(void *profile);
int gscms_transform_named_color(gsicc_link_t *icclink, float tint_value,
                                const char* ColorName,
                                gx_color_value device_values[] );
void gscms_get_name2device_link(gsicc_link_t *icclink,
                                gcmmhprofile_t lcms_srchandle,
                                gcmmhprofile_t lcms_deshandle,
                                gcmmhprofile_t lcms_proofhandle,
                                gsicc_rendering_param_t *rendering_params,
                                gs_memory_t *memory);
int gscms_get_input_channel_count(gcmmhprofile_t profile);
int gscms_get_output_channel_count(gcmmhprofile_t profile);
void gscms_get_link_dim(gcmmhlink_t link, int *num_inputs, int *num_outputs);
int gscms_avoid_white_fix_flag(void);
# 26 "./base/gsicc_lcms2.c" 2





typedef struct gsicc_lcms2_link_s gsicc_lcms2_link_t;


static void
gscms_error(cmsContext ContextID,
            cmsUInt32Number error_code,
            const char *error_text)
{



}

static
void *gs_lcms2_malloc(cmsContext id, unsigned int size)
{
    void *ptr;
    gs_memory_t *mem = (gs_memory_t *)id;




    ptr = (*(mem)->procs.alloc_bytes)(mem, size, "lcms");





    return ptr;
}

static
void gs_lcms2_free(cmsContext id, void *ptr)
{
    gs_memory_t *mem = (gs_memory_t *)id;
    if (ptr != ((void*)0)) {







        ((mem)->procs.free_object(mem, ptr, "lcms"));

    }
}

static
void *gs_lcms2_realloc(cmsContext id, void *ptr, unsigned int size)
{
    gs_memory_t *mem = (gs_memory_t *)id;
    void *ptr2;

    if (ptr == 0)
        return gs_lcms2_malloc(id, size);
    if (size == 0)
    {
        gs_lcms2_free(id, ptr);
        return ((void*)0);
    }



    ptr2 = ((mem)->procs.resize_object(mem, ptr, size, "lcms"));





    return ptr2;
}

static cmsPluginMemHandler gs_cms_memhandler =
{
    {
        0x61637070,
        2000,
        0x6D656D48,
        ((void*)0)
    },
    gs_lcms2_malloc,
    gs_lcms2_free,
    gs_lcms2_realloc,
    ((void*)0),
    ((void*)0),
    ((void*)0)
};



int
gscms_get_input_channel_count(gcmmhprofile_t profile)
{
    cmsColorSpaceSignature colorspace;

    colorspace = cmsGetColorSpace(profile);
    return(cmsChannelsOf(colorspace));
}


int
gscms_get_output_channel_count(gcmmhprofile_t profile)
{
    cmsColorSpaceSignature colorspace;

    colorspace = cmsGetPCS(profile);
    return(cmsChannelsOf(colorspace));
}


int
gscms_get_numberclrtnames(gcmmhprofile_t profile)
{
    cmsNAMEDCOLORLIST *lcms_names;

    lcms_names = (cmsNAMEDCOLORLIST *)cmsReadTag(profile,
                                                 cmsSigColorantTableTag);
    return cmsNamedColorCount(lcms_names);
}


char*
gscms_get_clrtname(gcmmhprofile_t profile, int colorcount, gs_memory_t *memory)
{
    cmsNAMEDCOLORLIST *lcms_names;
    char name[256];
    char *buf;
    int length;

    lcms_names = (cmsNAMEDCOLORLIST *)cmsReadTag(profile,
                                                 cmsSigColorantTableTag);
    if (colorcount >= cmsNamedColorCount(lcms_names)) return(((void*)0));
    if (cmsNamedColorInfo(lcms_names,
                          colorcount,
                          name,
                          ((void*)0),
                          ((void*)0),
                          ((void*)0),
                          ((void*)0)) == 0)
        return ((void*)0);
    length = strlen(name);
    buf = (char*) (*(memory)->procs.alloc_bytes)(memory, length + 1, "gscms_get_clrtname");
    if (buf)
        strcpy(buf, name);
    return buf;
}


bool
gscms_is_device_link(gcmmhprofile_t profile)
{
    return (cmsGetDeviceClass(profile) == cmsSigLinkClass);
}


bool
gscms_is_input(gcmmhprofile_t profile)
{
    return (cmsGetDeviceClass(profile) == cmsSigInputClass);
}


gsicc_colorbuffer_t
gscms_get_profile_data_space(gcmmhprofile_t profile)
{
    cmsColorSpaceSignature colorspace;

    colorspace = cmsGetColorSpace(profile);
    switch( colorspace ) {
        case cmsSigXYZData:
            return(gsCIEXYZ);
        case cmsSigLabData:
            return(gsCIELAB);
        case cmsSigRgbData:
            return(gsRGB);
        case cmsSigGrayData:
            return(gsGRAY);
        case cmsSigCmykData:
            return(gsCMYK);
        default:
            return(gsNCHANNEL);
    }
}


gcmmhprofile_t
gscms_get_profile_handle_mem(gs_memory_t *mem, unsigned char *buffer,
                             unsigned int input_size)
{
    cmsSetLogErrorHandler(gscms_error);
    return(cmsOpenProfileFromMemTHR((cmsContext)mem,buffer,input_size));
}


gcmmhprofile_t
gscms_get_profile_handle_file(gs_memory_t *mem,const char *filename)
{
    return(cmsOpenProfileFromFileTHR((cmsContext)mem, filename, "r"));
}


void
gscms_transform_color_buffer(gx_device *dev, gsicc_link_t *icclink,
                             gsicc_bufferdesc_t *input_buff_desc,
                             gsicc_bufferdesc_t *output_buff_desc,
                             void *inputbuffer,
                             void *outputbuffer)
{
    cmsHTRANSFORM hTransform = (cmsHTRANSFORM)icclink->link_handle;
    cmsUInt32Number dwInputFormat, dwOutputFormat, num_src_lcms, num_des_lcms;
    int planar,numbytes, big_endian, hasalpha, k;
    unsigned char *inputpos, *outputpos;
# 255 "./base/gsicc_lcms2.c"
    dwInputFormat = (((((cmsGetTransformInputFormat(hTransform))>>16)&31)) << 16);
    dwOutputFormat = (((((cmsGetTransformOutputFormat(hTransform))>>16)&31)) << 16);



    planar = input_buff_desc->is_planar;
    dwInputFormat = dwInputFormat | ((planar) << 12);
    planar = output_buff_desc->is_planar;
    dwOutputFormat = dwOutputFormat | ((planar) << 12);


    numbytes = input_buff_desc->bytes_per_chan;
    if (numbytes>2) numbytes = 0;
    dwInputFormat = dwInputFormat | (numbytes);
    numbytes = output_buff_desc->bytes_per_chan;
    if (numbytes>2) numbytes = 0;
    dwOutputFormat = dwOutputFormat | (numbytes);


    big_endian = !input_buff_desc->little_endian;
    dwInputFormat = dwInputFormat | ((big_endian) << 11);
    big_endian = !output_buff_desc->little_endian;
    dwOutputFormat = dwOutputFormat | ((big_endian) << 11);


    num_src_lcms = (((cmsGetTransformInputFormat(hTransform))>>3)&15);
    num_des_lcms = (((cmsGetTransformOutputFormat(hTransform))>>3)&15);
    if (num_src_lcms != input_buff_desc->num_chan ||
        num_des_lcms != output_buff_desc->num_chan) {

        return;
    }
    dwInputFormat = dwInputFormat | ((num_src_lcms) << 3);
    dwOutputFormat = dwOutputFormat | ((num_des_lcms) << 3);





    hasalpha = input_buff_desc->has_alpha;
    dwInputFormat = dwInputFormat | ((hasalpha) << 7);
    dwOutputFormat = dwOutputFormat | ((hasalpha) << 7);


    cmsChangeBuffersFormat(hTransform,dwInputFormat,dwOutputFormat);





    inputpos = (byte *) inputbuffer;
    outputpos = (byte *) outputbuffer;
    if(input_buff_desc->is_planar){



        if (input_buff_desc->num_rows * input_buff_desc->pixels_per_row ==
            input_buff_desc->plane_stride &&
            output_buff_desc->num_rows * output_buff_desc->pixels_per_row ==
            output_buff_desc->plane_stride) {

            cmsDoTransform(hTransform, inputpos, outputpos,
                           input_buff_desc->plane_stride);
        } else {

            byte *temp_des, *temp_src;
            int source_size = input_buff_desc->bytes_per_chan *
                              input_buff_desc->pixels_per_row;

            int des_size = output_buff_desc->bytes_per_chan *
                           output_buff_desc->pixels_per_row;
            int y, i;

            temp_src = (byte*) (*(icclink->icc_link_cache->memory)->procs.alloc_bytes)(icclink->icc_link_cache->memory, source_size * input_buff_desc->num_chan, "gscms_transform_color_buffer");


            if (temp_src == ((void*)0))
                return;
            temp_des = (byte*) (*(icclink->icc_link_cache->memory)->procs.alloc_bytes)(icclink->icc_link_cache->memory, des_size * output_buff_desc->num_chan, "gscms_transform_color_buffer");


            if (temp_des == ((void*)0))
                return;
            for (y = 0; y < input_buff_desc->num_rows; y++) {
                byte *src_cm = temp_src;
                byte *src_buff = inputpos;
                byte *des_cm = temp_des;
                byte *des_buff = outputpos;


                for (i = 0; i < input_buff_desc->num_chan; i ++) {
                    memcpy(src_cm, src_buff, source_size);
                    src_cm += source_size;
                    src_buff += input_buff_desc->plane_stride;
                }

                cmsDoTransform(hTransform, temp_src, temp_des,
                               input_buff_desc->pixels_per_row);

                for (i = 0; i < output_buff_desc->num_chan; i ++) {
                    memcpy(des_buff, des_cm, des_size);
                    des_cm += des_size;
                    des_buff += output_buff_desc->plane_stride;
                }
                inputpos += input_buff_desc->row_stride;
                outputpos += output_buff_desc->row_stride;
            }
            ((icclink->icc_link_cache->memory)->procs.free_object(icclink->icc_link_cache->memory, temp_src, "gscms_transform_color_buffer"));

            ((icclink->icc_link_cache->memory)->procs.free_object(icclink->icc_link_cache->memory, temp_des, "gscms_transform_color_buffer"));

        }
    } else {

        for(k = 0; k < input_buff_desc->num_rows ; k++){
            cmsDoTransform(hTransform, inputpos, outputpos,
                           input_buff_desc->pixels_per_row);
            inputpos += input_buff_desc->row_stride;
            outputpos += output_buff_desc->row_stride;
        }
    }
# 386 "./base/gsicc_lcms2.c"
}




void
gscms_transform_color(gx_device *dev, gsicc_link_t *icclink, void *inputcolor,
                             void *outputcolor, int num_bytes)
{
    cmsHTRANSFORM hTransform = (cmsHTRANSFORM)icclink->link_handle;
    cmsUInt32Number dwInputFormat,dwOutputFormat;




    if (num_bytes>2) num_bytes = 0;
    dwInputFormat = cmsGetTransformInputFormat(hTransform);
    dwOutputFormat = cmsGetTransformOutputFormat(hTransform);
    dwInputFormat = (dwInputFormat & (~0x7)) | (num_bytes);
    dwOutputFormat = (dwOutputFormat & (~0x7)) | (num_bytes);

    cmsChangeBuffersFormat(hTransform,dwInputFormat,dwOutputFormat);

    cmsDoTransform(hTransform,inputcolor,outputcolor,1);
}



int
gscms_avoid_white_fix_flag()
{
    return 0x0004;
}

void
gscms_get_link_dim(gcmmhlink_t link, int *num_inputs, int *num_outputs)
{
    *num_inputs = (((cmsGetTransformInputFormat(link))>>3)&15);
    *num_outputs = (((cmsGetTransformOutputFormat(link))>>3)&15);
}


gcmmhlink_t
gscms_get_link(gcmmhprofile_t lcms_srchandle,
               gcmmhprofile_t lcms_deshandle,
               gsicc_rendering_param_t *rendering_params, int cmm_flags,
               gs_memory_t *memory)
{
    cmsUInt32Number src_data_type,des_data_type;
    cmsColorSpaceSignature src_color_space,des_color_space;
    int src_nChannels,des_nChannels;
    int lcms_src_color_space, lcms_des_color_space;
    unsigned int flag;





    src_color_space = cmsGetColorSpace(lcms_srchandle);
    lcms_src_color_space = _cmsLCMScolorSpace(src_color_space);

    if (lcms_src_color_space < 0) lcms_src_color_space = 0;
    src_nChannels = cmsChannelsOf(src_color_space);


    src_data_type = (((lcms_src_color_space) << 16)|
                        ((src_nChannels) << 3)|(2));



    if (lcms_deshandle != ((void*)0)) {
        des_color_space = cmsGetColorSpace(lcms_deshandle);
    } else {

        des_color_space = cmsGetPCS(lcms_deshandle);
    }
    lcms_des_color_space = _cmsLCMScolorSpace(des_color_space);
    if (lcms_des_color_space < 0) lcms_des_color_space = 0;
    des_nChannels = cmsChannelsOf(des_color_space);
    des_data_type = (((lcms_des_color_space) << 16)|
                        ((des_nChannels) << 3)|(2));





    flag = 0x0400;
    if (rendering_params->black_point_comp == gsBLACKPTCOMP_ON
        || rendering_params->black_point_comp == gsBLACKPTCOMP_ON_OR) {
        flag = (flag | 0x2000);
    }
    if (rendering_params->preserve_black == gsBLACKPRESERVE_KONLY) {
        switch (rendering_params->rendering_intent) {
            case 0:
                rendering_params->rendering_intent = 10;
                break;
            case 1:
                rendering_params->rendering_intent = 11;
                break;
            case 2:
                rendering_params->rendering_intent = 12;
                break;
            default:
                break;
        }
    }
    if (rendering_params->preserve_black == gsBLACKPRESERVE_KPLANE) {
        switch (rendering_params->rendering_intent) {
            case 0:
                rendering_params->rendering_intent = 13;
                break;
            case 1:
                rendering_params->rendering_intent = 14;
                break;
            case 2:
                rendering_params->rendering_intent = 15;
                break;
            default:
                break;
        }
    }

    return cmsCreateTransformTHR((cmsContext)memory,
               lcms_srchandle, src_data_type,
               lcms_deshandle, des_data_type,
               rendering_params->rendering_intent, flag | cmm_flags);

}





gcmmhlink_t
gscms_get_link_proof_devlink(gcmmhprofile_t lcms_srchandle,
                             gcmmhprofile_t lcms_proofhandle,
                             gcmmhprofile_t lcms_deshandle,
                             gcmmhprofile_t lcms_devlinkhandle,
                             gsicc_rendering_param_t *rendering_params,
                             bool src_dev_link, int cmm_flags,
                             gs_memory_t *memory)
{
    cmsUInt32Number src_data_type,des_data_type;
    cmsColorSpaceSignature src_color_space,des_color_space;
    int src_nChannels,des_nChannels;
    int lcms_src_color_space, lcms_des_color_space;
    cmsHPROFILE hProfiles[5];
    int nProfiles = 0;
    unsigned int flag;







    if (lcms_proofhandle != ((void*)0) &&
        rendering_params->rendering_intent != gsRELATIVECOLORIMETRIC &&
        !src_dev_link) {


        cmsHPROFILE src_to_proof;
        cmsHTRANSFORM temptransform;

        temptransform = gscms_get_link(lcms_srchandle, lcms_proofhandle,
                                      rendering_params, cmm_flags, memory);

        flag = 0x0400;
        if (rendering_params->black_point_comp == gsBLACKPTCOMP_ON ||
            rendering_params->black_point_comp == gsBLACKPTCOMP_ON_OR) {
            flag = (flag | 0x2000);
        }
        src_to_proof = cmsTransform2DeviceLink(temptransform, 3.4, flag);

        cmsDeleteTransform(temptransform);
        src_color_space = cmsGetColorSpace(src_to_proof);
        lcms_src_color_space = _cmsLCMScolorSpace(src_color_space);

        if (lcms_src_color_space < 0) lcms_src_color_space = 0;
        src_nChannels = cmsChannelsOf(src_color_space);


        src_data_type = (((lcms_src_color_space) << 16)|
                            ((src_nChannels) << 3)|(2));
        if (lcms_devlinkhandle == ((void*)0)) {
            des_color_space = cmsGetColorSpace(lcms_deshandle);
        } else {
            des_color_space = cmsGetPCS(lcms_devlinkhandle);
        }
        lcms_des_color_space = _cmsLCMScolorSpace(des_color_space);
        if (lcms_des_color_space < 0) lcms_des_color_space = 0;
        des_nChannels = cmsChannelsOf(des_color_space);
        des_data_type = (((lcms_des_color_space) << 16)|
                            ((des_nChannels) << 3)|(2));


        hProfiles[nProfiles++] = src_to_proof;
        hProfiles[nProfiles++] = lcms_proofhandle;
        if (lcms_deshandle != ((void*)0)) {
            hProfiles[nProfiles++] = lcms_deshandle;
        }

        if (lcms_devlinkhandle != ((void*)0)) {
            hProfiles[nProfiles++] = lcms_devlinkhandle;
        }
        flag = 0x0400;
        if (rendering_params->black_point_comp == gsBLACKPTCOMP_ON
            || rendering_params->black_point_comp == gsBLACKPTCOMP_ON_OR) {
            flag = (flag | 0x2000);
        }

        temptransform = cmsCreateMultiprofileTransformTHR((cmsContext)memory,
                    hProfiles, nProfiles, src_data_type,
                    des_data_type, gsRELATIVECOLORIMETRIC, flag);
        cmsCloseProfile(src_to_proof);
        return temptransform;
    } else {

        src_color_space = cmsGetColorSpace(lcms_srchandle);
        lcms_src_color_space = _cmsLCMScolorSpace(src_color_space);

        if (lcms_src_color_space < 0) lcms_src_color_space = 0;
        src_nChannels = cmsChannelsOf(src_color_space);


        src_data_type = (((lcms_src_color_space) << 16)|
                            ((src_nChannels) << 3)|(2));
        if (lcms_devlinkhandle == ((void*)0)) {
            if (src_dev_link) {
                des_color_space = cmsGetPCS(lcms_srchandle);
            } else {
                des_color_space = cmsGetColorSpace(lcms_deshandle);
            }
        } else {
            des_color_space = cmsGetPCS(lcms_devlinkhandle);
        }
        lcms_des_color_space = _cmsLCMScolorSpace(des_color_space);
        if (lcms_des_color_space < 0) lcms_des_color_space = 0;
        des_nChannels = cmsChannelsOf(des_color_space);
        des_data_type = (((lcms_des_color_space) << 16)|
                            ((des_nChannels) << 3)|(2));



        hProfiles[nProfiles++] = lcms_srchandle;

        if (lcms_proofhandle != ((void*)0) && !src_dev_link) {
            hProfiles[nProfiles++] = lcms_proofhandle;
            hProfiles[nProfiles++] = lcms_proofhandle;
        }

        if (lcms_deshandle != ((void*)0)) {
            hProfiles[nProfiles++] = lcms_deshandle;
        }


        if (lcms_devlinkhandle != ((void*)0)) {
            hProfiles[nProfiles++] = lcms_devlinkhandle;
        }
        flag = 0x0400;
        if (rendering_params->black_point_comp == gsBLACKPTCOMP_ON
            || rendering_params->black_point_comp == gsBLACKPTCOMP_ON_OR) {
            flag = (flag | 0x2000);
        }
        return cmsCreateMultiprofileTransformTHR((cmsContext)memory,
                    hProfiles, nProfiles, src_data_type,
                    des_data_type, rendering_params->rendering_intent, flag);
    }
}


int
gscms_create(gs_memory_t *memory)
{

    cmsSetLogErrorHandler(gscms_error);
    cmsPluginTHR(memory, (void *)&gs_cms_memhandler);






    return 0;
}


void
gscms_destroy(gs_memory_t *memory)
{

}


void
gscms_release_link(gsicc_link_t *icclink)
{
    if (icclink->link_handle != ((void*)0) )
        cmsDeleteTransform(icclink->link_handle);
}


void
gscms_release_profile(void *profile)
{
    cmsHPROFILE profile_handle;

    profile_handle = (cmsHPROFILE) profile;
    cmsCloseProfile(profile_handle);
}
# 719 "./base/gsicc_lcms2.c"
int
gscms_transform_named_color(gsicc_link_t *icclink, float tint_value,
                            const char* ColorName, gx_color_value device_values[] )
{
    cmsHPROFILE hTransform = icclink->link_handle;
    unsigned short *deviceptr = device_values;
    int index;



    if((index = cmsNamedColorIndex(hTransform, ColorName)) < 0) return -1;

   cmsDoTransform(hTransform,&index,deviceptr,1);
   return(0);
}







void
gscms_get_name2device_link(gsicc_link_t *icclink,
                           gcmmhprofile_t lcms_srchandle,
                           gcmmhprofile_t lcms_deshandle,
                           gcmmhprofile_t lcms_proofhandle,
                           gsicc_rendering_param_t *rendering_params,
                           gs_memory_t *memory)
{
    cmsHTRANSFORM hTransform;
    cmsUInt32Number dwOutputFormat;
    cmsUInt32Number lcms_proof_flag;
    int number_colors;



    if ( lcms_proofhandle != ((void*)0) ){
        lcms_proof_flag = 0x1000 | 0x4000;
    } else {
        lcms_proof_flag = 0;
    }


    hTransform = cmsCreateProofingTransformTHR(memory,
                                            lcms_srchandle, (((1) << 3)|(2)),
                                            lcms_deshandle, (((6) << 16)|((4) << 3)|(1)),
                                            lcms_proofhandle,0,
                                            3,
                                            lcms_proof_flag);




    number_colors = cmsNamedColorCount(cmsGetNamedColorList(hTransform));

    dwOutputFormat = (((number_colors) << 3)|(sizeof(gx_color_value)));

    cmsChangeBuffersFormat(hTransform,(((1) << 3)|(2)),dwOutputFormat);
    icclink->link_handle = hTransform;
    cmsCloseProfile(lcms_srchandle);
    if(lcms_deshandle) cmsCloseProfile(lcms_deshandle);
    if(lcms_proofhandle) cmsCloseProfile(lcms_proofhandle);
    return;
}
