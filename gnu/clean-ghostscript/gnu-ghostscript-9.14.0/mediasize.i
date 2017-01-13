# 1 "./contrib/pcl3/eprn/mediasize.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./contrib/pcl3/eprn/mediasize.c" 2
# 16 "./contrib/pcl3/eprn/mediasize.c"
static const char
  cm_id[] = "@(#)$Id: mediasize.c,v 1.11 2001/04/12 18:35:26 Martin Rel $";
# 26 "./contrib/pcl3/eprn/mediasize.c"
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
# 44 "/usr/include/sys/types.h" 3 4
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
# 122 "/usr/include/sys/types.h" 3 4
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



typedef __useconds_t useconds_t;



typedef __suseconds_t suseconds_t;






# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 62 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 147 "/usr/include/sys/types.h" 2 3 4
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
# 228 "/usr/include/sys/types.h" 3 4
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
# 198 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile (void) __asm__ ("" "tmpfile64") ;






extern FILE *tmpfile64 (void) ;



extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ )) ;
# 227 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
# 237 "/usr/include/stdio.h" 3 4
extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);
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
# 332 "/usr/include/stdio.h" 3 4
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ ));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ ));
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
# 425 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ ));
# 471 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 531 "/usr/include/stdio.h" 3 4
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);
# 550 "/usr/include/stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 573 "/usr/include/stdio.h" 3 4
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);
# 602 "/usr/include/stdio.h" 3 4
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);
# 622 "/usr/include/stdio.h" 3 4
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
          ;
# 689 "/usr/include/stdio.h" 3 4
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
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
# 846 "/usr/include/stdio.h" 3 4
extern void perror (const char *__s);







# 1 "/usr/include/bits/sys_errlist.h" 1 3 4
# 854 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ )) ;
# 873 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ ));





extern char *cuserid (char *__s);
# 913 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ ));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ )) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ ));








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
# 929 "/usr/include/stdio.h" 2 3 4





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
# 62 "/usr/include/bits/stdio.h" 3 4
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
# 97 "/usr/include/bits/stdio.h" 3 4
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
# 27 "./contrib/pcl3/eprn/mediasize.c" 2


# 1 "./base/assert_.h" 1
# 40 "./base/assert_.h"
# 1 "/usr/include/assert.h" 1 3 4
# 41 "./base/assert_.h" 2
# 30 "./contrib/pcl3/eprn/mediasize.c" 2
# 1 "/usr/include/errno.h" 1 3 4
# 35 "/usr/include/errno.h" 3 4
# 1 "/usr/include/bits/errno.h" 1 3 4
# 24 "/usr/include/bits/errno.h" 3 4
# 1 "/usr/include/linux/errno.h" 1 3 4
# 1 "/usr/include/asm/errno.h" 1 3 4
# 1 "/usr/include/asm-generic/errno.h" 1 3 4



# 1 "/usr/include/asm-generic/errno-base.h" 1 3 4
# 5 "/usr/include/asm-generic/errno.h" 2 3 4
# 2 "/usr/include/asm/errno.h" 2 3 4
# 2 "/usr/include/linux/errno.h" 2 3 4
# 25 "/usr/include/bits/errno.h" 2 3 4
# 50 "/usr/include/bits/errno.h" 3 4
extern int *__errno_location (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
# 36 "/usr/include/errno.h" 2 3 4
# 31 "./contrib/pcl3/eprn/mediasize.c" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 90 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3 4
typedef int wchar_t;
# 33 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/bits/waitflags.h" 1 3 4
# 42 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/bits/waitstatus.h" 1 3 4
# 43 "/usr/include/stdlib.h" 2 3 4
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
# 208 "/usr/include/stdlib.h" 3 4
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
# 374 "/usr/include/stdlib.h" 3 4
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
# 465 "/usr/include/stdlib.h" 3 4
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
# 479 "/usr/include/stdlib.h" 3 4
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ ));
# 497 "/usr/include/stdlib.h" 3 4
extern void *valloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
# 508 "/usr/include/stdlib.h" 3 4
extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__, __alloc_size__ (2)));




extern void abort (void) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));







extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 542 "/usr/include/stdlib.h" 3 4
extern void exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));





extern void quick_exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));







extern void _Exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));






extern char *getenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 577 "/usr/include/stdlib.h" 3 4
extern int putenv (char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 605 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 622 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __asm__ ("" "mkstemp64")
     __attribute__ ((__nonnull__ (1))) ;





extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) ;
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
# 859 "/usr/include/stdlib.h" 3 4
extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ )) ;


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ )) ;


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ )) ;



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ ));
# 895 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3))) ;





extern void setkey (const char *__key) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 920 "/usr/include/stdlib.h" 3 4
extern int grantpt (int __fd) __attribute__ ((__nothrow__ ));



extern int unlockpt (int __fd) __attribute__ ((__nothrow__ ));




extern char *ptsname (int __fd) __attribute__ ((__nothrow__ )) ;
# 951 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/bits/stdlib-float.h" 1 3 4
# 25 "/usr/include/bits/stdlib-float.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ )) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void*)0));
}
# 952 "/usr/include/stdlib.h" 2 3 4
# 32 "./contrib/pcl3/eprn/mediasize.c" 2
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
# 172 "/usr/include/string.h" 3 4
extern char *strdup (const char *__s)
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
# 409 "/usr/include/string.h" 3 4
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
# 447 "/usr/include/string.h" 3 4
extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 630 "/usr/include/string.h" 3 4
# 1 "/usr/include/bits/string.h" 1 3 4
# 631 "/usr/include/string.h" 2 3 4


# 1 "/usr/include/bits/string2.h" 1 3 4
# 51 "/usr/include/bits/string2.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 52 "/usr/include/bits/string2.h" 2 3 4
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
# 634 "/usr/include/string.h" 2 3 4
# 33 "./contrib/pcl3/eprn/mediasize.c" 2


# 1 "./contrib/pcl3/eprn/mediasize.h" 1
# 18 "./contrib/pcl3/eprn/mediasize.h"
#pragma ident "@(#)$Id: mediasize.h,v 1.11 2001/04/12 18:35:26 Martin Rel $"
# 60 "./contrib/pcl3/eprn/mediasize.h"
typedef enum {
  ms_none,
  ms_A10,
  ms_EnvC10,
  ms_ISOB10,
  ms_JISB10,
  ms_A9,
  ms_EnvC9,
  ms_ISOB9,
  ms_JISB9,
  ms_A8,
  ms_EnvC8,
  ms_ISOB8,
  ms_JISB8,
  ms_A7,
  ms_Index3x5in,
  ms_EnvC7,
  ms_ISOB7,
  ms_EnvChou4,
  ms_JISB7,
  ms_EnvMonarch,
  ms_Env9,
  ms_Postcard,
  ms_Index4x6in,
  ms_Env10,
  ms_A6,
  ms_EnvDL,
  ms_EnvUS_A2,
  ms_EnvC6,
  ms_EnvChou3,
  ms_ISOB6,
  ms_Index5x8in,
  ms_JISB6,
  ms_Statement,
  ms_DoublePostcard,
  ms_A5,
  ms_EnvC5,
  ms_ISOB5,
  ms_JISB5,
  ms_Executive,
  ms_A4,
  ms_Folio,
  ms_Quarto,
  ms_Letter,
  ms_Legal,
  ms_EnvKaku3,
  ms_SuperA,
  ms_ARCHA,
  ms_EnvC4,
  ms_EnvKaku2,
  ms_ISOB4,
  ms_JISB4,
  ms_Tabloid,
  ms_A3,
  ms_ARCHB,
  ms_SuperB,
  ms_EnvC3,
  ms_HPSuperB,

  ms_ISOB3,
  ms_JISB3,
  ms_A2,
  ms_ARCHC,
  ms_EnvC2,
  ms_ISOB2,
  ms_JISB2,
  ms_A1,
  ms_ARCHD,
  ms_EnvC1,
  ms_ISOB1,
  ms_JISB1,
  ms_A0,
  ms_ARCHE,
  ms_EnvC0,
  ms_ISOB0,
  ms_JISB0,
  ms_2A0,
  ms_4A0,

  ms_CustomPageSize,
  ms_MaxPage
} ms_Size;

typedef struct {
  ms_Size size;
  const char *name;



  float dimen[2];




} ms_SizeDescription;
# 178 "./contrib/pcl3/eprn/mediasize.h"
typedef unsigned int ms_MediaCode;
# 221 "./contrib/pcl3/eprn/mediasize.h"
typedef struct {
  ms_MediaCode code;
  const char *name;
} ms_Flag;






extern const ms_SizeDescription *ms_find_size_from_code(ms_MediaCode code);
# 260 "./contrib/pcl3/eprn/mediasize.h"
extern ms_MediaCode ms_find_code_from_name(const char *name,
  const ms_Flag *user_flag_list);
# 284 "./contrib/pcl3/eprn/mediasize.h"
extern int ms_find_name_from_code(char *buffer, size_t length,
  ms_MediaCode code, const ms_Flag *user_flag_list);
# 36 "./contrib/pcl3/eprn/mediasize.c" 2
# 66 "./contrib/pcl3/eprn/mediasize.c"
static const ms_SizeDescription list[] = {
  {ms_none, "", {0.0, 0.0}},
  {ms_A10, "A10", {26*(72.0/25.4), 37*(72.0/25.4)}},
  {ms_EnvC10, "EnvC10", {28*(72.0/25.4), 40*(72.0/25.4)}},
  {ms_ISOB10, "ISOB10", {31*(72.0/25.4), 44*(72.0/25.4)}},
  {ms_JISB10, "JISB10", {32*(72.0/25.4), 45*(72.0/25.4)}},
  {ms_A9, "A9", {37*(72.0/25.4), 52*(72.0/25.4)}},
  {ms_EnvC9, "EnvC9", {40*(72.0/25.4), 57*(72.0/25.4)}},
  {ms_ISOB9, "ISOB9", {44*(72.0/25.4), 62*(72.0/25.4)}},
  {ms_JISB9, "JISB9", {45*(72.0/25.4), 64*(72.0/25.4)}},
  {ms_A8, "A8", {52*(72.0/25.4), 74*(72.0/25.4)}},
  {ms_EnvC8, "EnvC8", {57*(72.0/25.4), 81*(72.0/25.4)}},
  {ms_ISOB8, "ISOB8", {62*(72.0/25.4), 88*(72.0/25.4)}},
  {ms_JISB8, "JISB8", {64*(72.0/25.4), 91*(72.0/25.4)}},
  {ms_A7, "A7", {74*(72.0/25.4), 105*(72.0/25.4)}},
  {ms_Index3x5in, "Index3x5in", {3*72.0, 5*72.0}},
  {ms_EnvC7, "EnvC7", {81*(72.0/25.4), 114*(72.0/25.4)}},
  {ms_ISOB7, "ISOB7", {88*(72.0/25.4), 125*(72.0/25.4)}},
  {ms_EnvChou4, "EnvChou4", {90*(72.0/25.4), 205*(72.0/25.4)}},
  {ms_JISB7, "JISB7", {91*(72.0/25.4), 128*(72.0/25.4)}},
  {ms_EnvMonarch, "EnvMonarch", {3.875*72.0, 7.5*72.0}},
  {ms_Env9, "Env9", {3.875*72.0, 8.875*72.0}},
  {ms_Postcard, "Postcard", {100*(72.0/25.4), 148*(72.0/25.4)}},
  {ms_Index4x6in, "Index4x6in", {4.0*72.0, 6.0*72.0}},
  {ms_Env10, "Env10", {4.125*72.0, 9.5*72.0}},
  {ms_A6, "A6", {105*(72.0/25.4), 148*(72.0/25.4)}},
  {ms_EnvDL, "EnvDL", {110*(72.0/25.4), 220*(72.0/25.4)}},
  {ms_EnvUS_A2, "EnvUS_A2", {4.375*72.0, 5.75*72.0}},
  {ms_EnvC6, "EnvC6", {114*(72.0/25.4), 162*(72.0/25.4)}},
  {ms_EnvChou3, "EnvChou3", {120*(72.0/25.4), 235*(72.0/25.4)}},
  {ms_ISOB6, "ISOB6", {125*(72.0/25.4), 176*(72.0/25.4)}},
  {ms_Index5x8in, "Index5x8in", {5.0*72.0, 8.0*72.0}},
  {ms_JISB6, "JISB6", {128*(72.0/25.4), 182*(72.0/25.4)}},
  {ms_Statement, "Statement", {5.5*72.0, 8.5*72.0}},
  {ms_DoublePostcard, "DoublePostcard", {148*(72.0/25.4), 200*(72.0/25.4)}},
  {ms_A5, "A5", {148*(72.0/25.4), 210*(72.0/25.4)}},
  {ms_EnvC5, "EnvC5", {162*(72.0/25.4), 229*(72.0/25.4)}},
  {ms_ISOB5, "ISOB5", {176*(72.0/25.4), 250*(72.0/25.4)}},
  {ms_JISB5, "JISB5", {182*(72.0/25.4), 257*(72.0/25.4)}},
  {ms_Executive, "Executive", {7.25*72.0, 10.5*72.0}},

  {ms_A4, "A4", {210*(72.0/25.4), 297*(72.0/25.4)}},
  {ms_Folio, "Folio", {210*(72.0/25.4), 330*(72.0/25.4)}},
  {ms_Quarto, "Quarto", {8.5*72.0, 10.83*72.0}},


  {ms_Letter, "Letter", {8.5*72.0, 11.0*72.0}},
  {ms_Legal, "Legal", {8.5*72.0, 14.0*72.0}},
  {ms_EnvKaku3, "EnvKaku3", {216*(72.0/25.4), 277*(72.0/25.4)}},
  {ms_SuperA, "SuperA", {227*(72.0/25.4), 356*(72.0/25.4)}},
  {ms_ARCHA, "ARCHA", {9*72.0, 12*72.0}},
  {ms_EnvC4, "EnvC4", {229*(72.0/25.4), 324*(72.0/25.4)}},
  {ms_EnvKaku2, "EnvKaku2", {240*(72.0/25.4), 332*(72.0/25.4)}},
  {ms_ISOB4, "ISOB4", {250*(72.0/25.4), 353*(72.0/25.4)}},
  {ms_JISB4, "JISB4", {257*(72.0/25.4), 364*(72.0/25.4)}},
  {ms_Tabloid, "Tabloid", {11*72.0, 17*72.0}},
  {ms_A3, "A3", {297*(72.0/25.4), 420*(72.0/25.4)}},
  {ms_ARCHB, "ARCHB", {12*72.0, 18*72.0}},
  {ms_SuperB, "SuperB", {305*(72.0/25.4), 487*(72.0/25.4)}},
  {ms_EnvC3, "EnvC3", {324*(72.0/25.4), 458*(72.0/25.4)}},
  {ms_HPSuperB, "HPSuperB", {13*72.0, 19*72.0}},
  {ms_ISOB3, "ISOB3", {353*(72.0/25.4), 500*(72.0/25.4)}},
  {ms_JISB3, "JISB3", {364*(72.0/25.4), 515*(72.0/25.4)}},
  {ms_A2, "A2", {420*(72.0/25.4), 594*(72.0/25.4)}},
  {ms_ARCHC, "ARCHC", {18*72.0, 24*72.0}},
  {ms_EnvC2, "EnvC2", {458*(72.0/25.4), 648*(72.0/25.4)}},
  {ms_ISOB2, "ISOB2", {500*(72.0/25.4), 707*(72.0/25.4)}},
  {ms_JISB2, "JISB2", {515*(72.0/25.4), 728*(72.0/25.4)}},
  {ms_A1, "A1", {594*(72.0/25.4), 841*(72.0/25.4)}},
  {ms_ARCHD, "ARCHD", {24*72.0, 36*72.0}},
  {ms_EnvC1, "EnvC1", {648*(72.0/25.4), 917*(72.0/25.4)}},
  {ms_ISOB1, "ISOB1", {707*(72.0/25.4), 1000*(72.0/25.4)}},
  {ms_JISB1, "JISB1", {728*(72.0/25.4), 1030*(72.0/25.4)}},
  {ms_A0, "A0", {841*(72.0/25.4), 1189*(72.0/25.4)}},
  {ms_ARCHE, "ARCHE", {36*72.0, 48*72.0}},
  {ms_EnvC0, "EnvC0", {917*(72.0/25.4), 1297*(72.0/25.4)}},
  {ms_ISOB0, "ISOB0", {1000*(72.0/25.4), 1414*(72.0/25.4)}},
  {ms_JISB0, "JISB0", {1030*(72.0/25.4), 1456*(72.0/25.4)}},
  {ms_2A0, "2A0", {1189*(72.0/25.4), 1682*(72.0/25.4)}},
  {ms_4A0, "4A0", {1682*(72.0/25.4), 2378*(72.0/25.4)}},

  {ms_CustomPageSize, "CustomPageSize", {0.0, 0.0}},
  {ms_MaxPage, "MaxPage", {0.0, 0.0}}
};
# 190 "./contrib/pcl3/eprn/mediasize.c"
const ms_SizeDescription *ms_find_size_from_code(ms_MediaCode code)
{



  code = ((ms_Size)((code) & ~0xFF00U));
  if (code < 1 || (sizeof(list)/sizeof(list[0])) <= code) return ((void*)0);

  return list + code;
}






static int cmp_by_name(const void *a, const void *b)
{
  return __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p ((*(const ms_SizeDescription *const *)a)->name) && __builtin_constant_p ((*(const ms_SizeDescription *const *)b)->name) && (__s1_len = strlen ((*(const ms_SizeDescription *const *)a)->name), __s2_len = strlen ((*(const ms_SizeDescription *const *)b)->name), (!((size_t)(const void *)(((*(const ms_SizeDescription *const *)a)->name) + 1) - (size_t)(const void *)((*(const ms_SizeDescription *const *)a)->name) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(((*(const ms_SizeDescription *const *)b)->name) + 1) - (size_t)(const void *)((*(const ms_SizeDescription *const *)b)->name) == 1) || __s2_len >= 4)) ? __builtin_strcmp ((*(const ms_SizeDescription *const *)a)->name, (*(const ms_SizeDescription *const *)b)->name) : (__builtin_constant_p ((*(const ms_SizeDescription *const *)a)->name) && ((size_t)(const void *)(((*(const ms_SizeDescription *const *)a)->name) + 1) - (size_t)(const void *)((*(const ms_SizeDescription *const *)a)->name) == 1) && (__s1_len = strlen ((*(const ms_SizeDescription *const *)a)->name), __s1_len < 4) ? (__builtin_constant_p ((*(const ms_SizeDescription *const *)b)->name) && ((size_t)(const void *)(((*(const ms_SizeDescription *const *)b)->name) + 1) - (size_t)(const void *)((*(const ms_SizeDescription *const *)b)->name) == 1) ? __builtin_strcmp ((*(const ms_SizeDescription *const *)a)->name, (*(const ms_SizeDescription *const *)b)->name) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ((*(const ms_SizeDescription *const *)b)->name); register int __result = (((const unsigned char *) (const char *) ((*(const ms_SizeDescription *const *)a)->name))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) ((*(const ms_SizeDescription *const *)a)->name))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) ((*(const ms_SizeDescription *const *)a)->name))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) ((*(const ms_SizeDescription *const *)a)->name))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ((*(const ms_SizeDescription *const *)b)->name) && ((size_t)(const void *)(((*(const ms_SizeDescription *const *)b)->name) + 1) - (size_t)(const void *)((*(const ms_SizeDescription *const *)b)->name) == 1) && (__s2_len = strlen ((*(const ms_SizeDescription *const *)b)->name), __s2_len < 4) ? (__builtin_constant_p ((*(const ms_SizeDescription *const *)a)->name) && ((size_t)(const void *)(((*(const ms_SizeDescription *const *)a)->name) + 1) - (size_t)(const void *)((*(const ms_SizeDescription *const *)a)->name) == 1) ? __builtin_strcmp ((*(const ms_SizeDescription *const *)a)->name, (*(const ms_SizeDescription *const *)b)->name) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) ((*(const ms_SizeDescription *const *)a)->name); register int __result = __s1[0] - ((const unsigned char *) (const char *) ((*(const ms_SizeDescription *const *)b)->name))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ((*(const ms_SizeDescription *const *)b)->name))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ((*(const ms_SizeDescription *const *)b)->name))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ((*(const ms_SizeDescription *const *)b)->name))[3]); } } __result; }))) : __builtin_strcmp ((*(const ms_SizeDescription *const *)a)->name, (*(const ms_SizeDescription *const *)b)->name)))); });

}
# 224 "./contrib/pcl3/eprn/mediasize.c"
static ms_MediaCode find_flag(const char *name, size_t *length,
  const ms_Flag *flag_list)
{
  int j = 0;
  size_t L;

  while (flag_list[j].code != 0 &&
    ((L = strlen(flag_list[j].name)) >= *length ||
      (__extension__ (__builtin_constant_p (L) && ((__builtin_constant_p (name + *length - L) && strlen (name + *length - L) < ((size_t) (L))) || (__builtin_constant_p (flag_list[j].name) && strlen (flag_list[j].name) < ((size_t) (L)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (name + *length - L) && __builtin_constant_p (flag_list[j].name) && (__s1_len = strlen (name + *length - L), __s2_len = strlen (flag_list[j].name), (!((size_t)(const void *)((name + *length - L) + 1) - (size_t)(const void *)(name + *length - L) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((flag_list[j].name) + 1) - (size_t)(const void *)(flag_list[j].name) == 1) || __s2_len >= 4)) ? __builtin_strcmp (name + *length - L, flag_list[j].name) : (__builtin_constant_p (name + *length - L) && ((size_t)(const void *)((name + *length - L) + 1) - (size_t)(const void *)(name + *length - L) == 1) && (__s1_len = strlen (name + *length - L), __s1_len < 4) ? (__builtin_constant_p (flag_list[j].name) && ((size_t)(const void *)((flag_list[j].name) + 1) - (size_t)(const void *)(flag_list[j].name) == 1) ? __builtin_strcmp (name + *length - L, flag_list[j].name) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (flag_list[j].name); register int __result = (((const unsigned char *) (const char *) (name + *length - L))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (name + *length - L))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (name + *length - L))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (name + *length - L))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (flag_list[j].name) && ((size_t)(const void *)((flag_list[j].name) + 1) - (size_t)(const void *)(flag_list[j].name) == 1) && (__s2_len = strlen (flag_list[j].name), __s2_len < 4) ? (__builtin_constant_p (name + *length - L) && ((size_t)(const void *)((name + *length - L) + 1) - (size_t)(const void *)(name + *length - L) == 1) ? __builtin_strcmp (name + *length - L, flag_list[j].name) : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (name + *length - L); register int __result = __s1[0] - ((const unsigned char *) (const char *) (flag_list[j].name))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) (flag_list[j].name))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) (flag_list[j].name))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) (flag_list[j].name))[3]); } } __result; }))) : __builtin_strcmp (name + *length - L, flag_list[j].name)))); }) : strncmp (name + *length - L, flag_list[j].name, L))) != 0)) j++;
  if (flag_list[j].code == 0) return 0;

  *length -= L;

  return flag_list[j].code;
}





static const ms_Flag substrings[] = {
  {0x0800U, "Big"},
  {0x0400U, "Small"},
  {0x1000U, "Rotated"},
  {0x2000U, "Extra"},
  {0, ((void*)0)}
};



ms_MediaCode ms_find_code_from_name(const char *name,
  const ms_Flag *user_flag_list)
{
  const char *end;
  char stripped_name[15];
  static const ms_SizeDescription *sorted_list[(sizeof(list)/sizeof(list[0])) - 1];
  static unsigned int entries = 0;
  ms_SizeDescription
    keydata,
    *key = &keydata;
  const ms_SizeDescription **found;
  ms_MediaCode flags = 0;
  size_t l;



  if (entries == 0) {
    while (entries < (sizeof(sorted_list)/sizeof(sorted_list[0]))) {
      sorted_list[entries] = list + entries + 1;
      entries++;
    }
    qsort(sorted_list, (sizeof(sorted_list)/sizeof(sorted_list[0])), sizeof(ms_SizeDescription *),
      &cmp_by_name);
  }


  if (name == ((void*)0)) return ms_none;


  end = (__extension__ (__builtin_constant_p ('.') && !__builtin_constant_p (name) && ('.') == '\0' ? (char *) __rawmemchr (name, '.') : __builtin_strchr (name, '.')));
  if (end == ((void*)0)) end = (__extension__ (__builtin_constant_p ('\0') && !__builtin_constant_p (name) && ('\0') == '\0' ? (char *) __rawmemchr (name, '\0') : __builtin_strchr (name, '\0')));
  else {
    const char *s = end, *t;
    do {
      ms_MediaCode flag;

      s++;
      if ((t = (__extension__ (__builtin_constant_p ('.') && !__builtin_constant_p (s) && ('.') == '\0' ? (char *) __rawmemchr (s, '.') : __builtin_strchr (s, '.')))) == ((void*)0)) t = (__extension__ (__builtin_constant_p ('\0') && !__builtin_constant_p (s) && ('\0') == '\0' ? (char *) __rawmemchr (s, '\0') : __builtin_strchr (s, '\0')));
      l = t - s;



      if (l == (sizeof("Transverse") - 1) && (__extension__ (__builtin_constant_p (l) && ((__builtin_constant_p (s) && strlen (s) < ((size_t) (l))) || (__builtin_constant_p ("Transverse") && strlen ("Transverse") < ((size_t) (l)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (s) && __builtin_constant_p ("Transverse") && (__s1_len = strlen (s), __s2_len = strlen ("Transverse"), (!((size_t)(const void *)((s) + 1) - (size_t)(const void *)(s) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Transverse") + 1) - (size_t)(const void *)("Transverse") == 1) || __s2_len >= 4)) ? __builtin_strcmp (s, "Transverse") : (__builtin_constant_p (s) && ((size_t)(const void *)((s) + 1) - (size_t)(const void *)(s) == 1) && (__s1_len = strlen (s), __s1_len < 4) ? (__builtin_constant_p ("Transverse") && ((size_t)(const void *)(("Transverse") + 1) - (size_t)(const void *)("Transverse") == 1) ? __builtin_strcmp (s, "Transverse") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Transverse"); register int __result = (((const unsigned char *) (const char *) (s))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (s))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (s))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (s))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Transverse") && ((size_t)(const void *)(("Transverse") + 1) - (size_t)(const void *)("Transverse") == 1) && (__s2_len = strlen ("Transverse"), __s2_len < 4) ? (__builtin_constant_p (s) && ((size_t)(const void *)((s) + 1) - (size_t)(const void *)(s) == 1) ? __builtin_strcmp (s, "Transverse") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (s); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Transverse"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Transverse"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Transverse"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Transverse"))[3]); } } __result; }))) : __builtin_strcmp (s, "Transverse")))); }) : strncmp (s, "Transverse", l))) == 0) flag = 0x4000U;
      else if (l == (sizeof("Big") - 1) && (__extension__ (__builtin_constant_p (l) && ((__builtin_constant_p (s) && strlen (s) < ((size_t) (l))) || (__builtin_constant_p ("Big") && strlen ("Big") < ((size_t) (l)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (s) && __builtin_constant_p ("Big") && (__s1_len = strlen (s), __s2_len = strlen ("Big"), (!((size_t)(const void *)((s) + 1) - (size_t)(const void *)(s) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Big") + 1) - (size_t)(const void *)("Big") == 1) || __s2_len >= 4)) ? __builtin_strcmp (s, "Big") : (__builtin_constant_p (s) && ((size_t)(const void *)((s) + 1) - (size_t)(const void *)(s) == 1) && (__s1_len = strlen (s), __s1_len < 4) ? (__builtin_constant_p ("Big") && ((size_t)(const void *)(("Big") + 1) - (size_t)(const void *)("Big") == 1) ? __builtin_strcmp (s, "Big") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Big"); register int __result = (((const unsigned char *) (const char *) (s))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (s))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (s))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (s))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Big") && ((size_t)(const void *)(("Big") + 1) - (size_t)(const void *)("Big") == 1) && (__s2_len = strlen ("Big"), __s2_len < 4) ? (__builtin_constant_p (s) && ((size_t)(const void *)((s) + 1) - (size_t)(const void *)(s) == 1) ? __builtin_strcmp (s, "Big") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (s); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Big"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Big"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Big"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Big"))[3]); } } __result; }))) : __builtin_strcmp (s, "Big")))); }) : strncmp (s, "Big", l))) == 0) flag = 0x0800U;
      else if (l == (sizeof("Small") - 1) && (__extension__ (__builtin_constant_p (l) && ((__builtin_constant_p (s) && strlen (s) < ((size_t) (l))) || (__builtin_constant_p ("Small") && strlen ("Small") < ((size_t) (l)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (s) && __builtin_constant_p ("Small") && (__s1_len = strlen (s), __s2_len = strlen ("Small"), (!((size_t)(const void *)((s) + 1) - (size_t)(const void *)(s) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Small") + 1) - (size_t)(const void *)("Small") == 1) || __s2_len >= 4)) ? __builtin_strcmp (s, "Small") : (__builtin_constant_p (s) && ((size_t)(const void *)((s) + 1) - (size_t)(const void *)(s) == 1) && (__s1_len = strlen (s), __s1_len < 4) ? (__builtin_constant_p ("Small") && ((size_t)(const void *)(("Small") + 1) - (size_t)(const void *)("Small") == 1) ? __builtin_strcmp (s, "Small") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Small"); register int __result = (((const unsigned char *) (const char *) (s))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (s))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (s))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (s))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Small") && ((size_t)(const void *)(("Small") + 1) - (size_t)(const void *)("Small") == 1) && (__s2_len = strlen ("Small"), __s2_len < 4) ? (__builtin_constant_p (s) && ((size_t)(const void *)((s) + 1) - (size_t)(const void *)(s) == 1) ? __builtin_strcmp (s, "Small") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (s); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Small"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Small"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Small"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Small"))[3]); } } __result; }))) : __builtin_strcmp (s, "Small")))); }) : strncmp (s, "Small", l))) == 0) flag = 0x0400U;
      else if (l == (sizeof("Extra") - 1) && (__extension__ (__builtin_constant_p (l) && ((__builtin_constant_p (s) && strlen (s) < ((size_t) (l))) || (__builtin_constant_p ("Extra") && strlen ("Extra") < ((size_t) (l)))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (s) && __builtin_constant_p ("Extra") && (__s1_len = strlen (s), __s2_len = strlen ("Extra"), (!((size_t)(const void *)((s) + 1) - (size_t)(const void *)(s) == 1) || __s1_len >= 4) && (!((size_t)(const void *)(("Extra") + 1) - (size_t)(const void *)("Extra") == 1) || __s2_len >= 4)) ? __builtin_strcmp (s, "Extra") : (__builtin_constant_p (s) && ((size_t)(const void *)((s) + 1) - (size_t)(const void *)(s) == 1) && (__s1_len = strlen (s), __s1_len < 4) ? (__builtin_constant_p ("Extra") && ((size_t)(const void *)(("Extra") + 1) - (size_t)(const void *)("Extra") == 1) ? __builtin_strcmp (s, "Extra") : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) ("Extra"); register int __result = (((const unsigned char *) (const char *) (s))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (s))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (s))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (s))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p ("Extra") && ((size_t)(const void *)(("Extra") + 1) - (size_t)(const void *)("Extra") == 1) && (__s2_len = strlen ("Extra"), __s2_len < 4) ? (__builtin_constant_p (s) && ((size_t)(const void *)((s) + 1) - (size_t)(const void *)(s) == 1) ? __builtin_strcmp (s, "Extra") : (__extension__ ({ const unsigned char *__s1 = (const unsigned char *) (const char *) (s); register int __result = __s1[0] - ((const unsigned char *) (const char *) ("Extra"))[0]; if (__s2_len > 0 && __result == 0) { __result = (__s1[1] - ((const unsigned char *) (const char *) ("Extra"))[1]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2] - ((const unsigned char *) (const char *) ("Extra"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((const unsigned char *) (const char *) ("Extra"))[3]); } } __result; }))) : __builtin_strcmp (s, "Extra")))); }) : strncmp (s, "Extra", l))) == 0) flag = 0x2000U;
      else return ms_none;

      if ((flag & flags) != 0) return ms_none;
      flags |= flag;
      s = t;
    } while (*t != '\0');
  }


  l = end - name;
  while (1) {
    ms_MediaCode flag;

    if ((flag = find_flag(name, &l, substrings)) == 0 &&
        (user_flag_list == ((void*)0) ||
           (flag = find_flag(name, &l, user_flag_list)) == 0))
      break;

    if ((flag & flags) != 0) return ms_none;
    flags |= flag;
  }
  end = name + l;

  if ((flags & 0x0800U) != 0 && (flags & 0x0400U) != 0)
    return ms_none;


  l = end - name;
  if (l >= 15) return ms_none;
  __builtin_strncpy (stripped_name, name, l);
  stripped_name[l] = '\0';
  keydata.name = stripped_name;


  found = (const ms_SizeDescription **)bsearch(&key, sorted_list, entries,
    sizeof(ms_SizeDescription *), &cmp_by_name);

  return found == ((void*)0)? ms_none: ((*found)->size | flags);
}
# 357 "./contrib/pcl3/eprn/mediasize.c"
static int add_substrings(char *buffer, size_t *length, ms_MediaCode *code,
  const ms_Flag *flag_list)
{
  int j;
  size_t l;

  j = 0;
  buffer = (__extension__ (__builtin_constant_p ('\0') && !__builtin_constant_p (buffer) && ('\0') == '\0' ? (char *) __rawmemchr (buffer, '\0') : __builtin_strchr (buffer, '\0')));
  while (flag_list[j].code != 0) {
    if (flag_list[j].code & *code) {
      l = strlen(flag_list[j].name);
      if (*length < l) {
        (*__errno_location ()) = 34;
        return -1;
      }
      *code &= ~flag_list[j].code;
      strcpy(buffer, flag_list[j].name);
      buffer += l;
      *length -= l;
    }
    j++;
  }

  return 0;
}



extern int ms_find_name_from_code(char *buffer, size_t length,
  ms_MediaCode code, const ms_Flag *user_flag_list)
{
  const ms_SizeDescription *desc = ms_find_size_from_code(code);
  size_t l;

  if (buffer == ((void*)0) || length == 0) {
    (*__errno_location ()) = 22;
    return -1;
  }


  if (desc == ((void*)0)) {
    (*__errno_location ()) = 33;
    return -1;
  }
  l = strlen(desc->name);
  if (length <= l) {
    (*__errno_location ()) = 34;
    return -1;
  }
  strcpy(buffer, desc->name);
  length -= l + 1;
  code = ((code) & 0xFF00U);


  if (user_flag_list != ((void*)0) &&
      add_substrings(buffer, &length, &code, user_flag_list) != 0 ||
    add_substrings(buffer, &length, &code, substrings) != 0) return -1;


  if (code & 0x4000U) {
    if (length < 1 + (sizeof("Transverse") - 1)) {
      (*__errno_location ()) = 34;
      return -1;
    }
    strcat(buffer, "." "Transverse");
    code &= ~0x4000U;
  }


  if (code != 0) {
    (*__errno_location ()) = 33;
    return -1;
  }

  return 0;
}
