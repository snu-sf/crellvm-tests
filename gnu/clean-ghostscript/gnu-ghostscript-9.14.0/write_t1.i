# 1 "./base/write_t1.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/write_t1.c" 2
# 22 "./base/write_t1.c"
# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
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
# 28 "/usr/include/stdio.h" 2 3 4





# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 62 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 34 "/usr/include/stdio.h" 2 3 4

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
# 36 "/usr/include/stdio.h" 2 3 4








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
# 90 "/usr/include/stdio.h" 3 4
typedef __off_t off_t;
# 102 "/usr/include/stdio.h" 3 4
typedef __ssize_t ssize_t;







typedef _G_fpos_t fpos_t;
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
# 195 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile (void) ;
# 209 "/usr/include/stdio.h" 3 4
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
# 272 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 306 "/usr/include/stdio.h" 3 4
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
# 773 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 798 "/usr/include/stdio.h" 3 4
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 826 "/usr/include/stdio.h" 3 4
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
# 23 "./base/write_t1.c" 2
# 1 "./base/wrfont.h" 1
# 26 "./base/wrfont.h"
# 1 "./base/stdpre.h" 1
# 253 "./base/stdpre.h"
typedef unsigned char byte;
typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;
# 273 "./base/stdpre.h"
# 1 "/usr/include/sys/types.h" 1 3 4
# 33 "/usr/include/sys/types.h" 3 4
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;
# 60 "/usr/include/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;
# 98 "/usr/include/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;
# 115 "/usr/include/sys/types.h" 3 4
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






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 270 "/usr/include/sys/types.h" 3 4
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
# 27 "./base/wrfont.h" 2

typedef struct WRF_output_
{
    unsigned char *m_pos;
    long m_limit;
    long m_count;
    bool m_encrypt;
    unsigned short m_key;
} WRF_output;

void WRF_init(WRF_output * a_output, unsigned char *a_buffer,
              long a_buffer_size);
void WRF_wbyte(WRF_output * a_output, unsigned char a_byte);
void WRF_wtext(WRF_output * a_output, const unsigned char *a_string,
               long a_length);
void WRF_wstring(WRF_output * a_output, const char *a_string);
void WRF_wfloat(WRF_output * a_output, double a_float);
void WRF_wint(WRF_output * a_output, long a_int);
# 24 "./base/write_t1.c" 2
# 1 "./base/write_t1.h" 1
# 26 "./base/write_t1.h"
# 1 "./base/gxfapi.h" 1
# 19 "./base/gxfapi.h"
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
# 20 "./base/gslibctx.h"
# 1 "./base/std.h" 1
# 25 "./base/std.h"
# 1 "./obj/arch.h" 1
# 26 "./base/std.h" 2
# 69 "./base/std.h"
typedef ushort bits16;


typedef uint bits32;
# 165 "./base/std.h"
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
# 21 "./base/gslibctx.h" 2
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
# 20 "./base/gxfapi.h" 2
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




typedef struct stream_s stream;

int sget_matrix(stream *, gs_matrix *);
int sput_matrix(stream *, const gs_matrix *);
# 21 "./base/gxfapi.h" 2
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
# 22 "./base/gxfapi.h" 2
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
# 23 "./base/gxfapi.h" 2



typedef struct gs_font_base_s gs_font_base;




typedef struct gs_state_s gs_state;




typedef struct gs_text_enum_s gs_text_enum_t;




typedef struct gs_font_s gs_font;


typedef int fracint;



typedef int gs_fapi_retcode;

typedef enum
{
    gs_fapi_font_feature_FontMatrix,
    gs_fapi_font_feature_UniqueID,
    gs_fapi_font_feature_BlueScale,
    gs_fapi_font_feature_Weight,
    gs_fapi_font_feature_ItalicAngle,
    gs_fapi_font_feature_IsFixedPitch,
    gs_fapi_font_feature_UnderLinePosition,
    gs_fapi_font_feature_UnderlineThickness,
    gs_fapi_font_feature_FontType,
    gs_fapi_font_feature_FontBBox,
    gs_fapi_font_feature_BlueValues_count,
    gs_fapi_font_feature_BlueValues,
    gs_fapi_font_feature_OtherBlues_count,
    gs_fapi_font_feature_OtherBlues,
    gs_fapi_font_feature_FamilyBlues_count,
    gs_fapi_font_feature_FamilyBlues,
    gs_fapi_font_feature_FamilyOtherBlues_count,
    gs_fapi_font_feature_FamilyOtherBlues,
    gs_fapi_font_feature_BlueShift,
    gs_fapi_font_feature_BlueFuzz,
    gs_fapi_font_feature_StdHW,
    gs_fapi_font_feature_StdVW,
    gs_fapi_font_feature_StemSnapH_count,
    gs_fapi_font_feature_StemSnapH,
    gs_fapi_font_feature_StemSnapV_count,
    gs_fapi_font_feature_StemSnapV,
    gs_fapi_font_feature_ForceBold,
    gs_fapi_font_feature_LanguageGroup,
    gs_fapi_font_feature_lenIV,
    gs_fapi_font_feature_GlobalSubrs_count,
    gs_fapi_font_feature_Subrs_count,
    gs_fapi_font_feature_Subrs_total_size,
    gs_fapi_font_feature_TT_size,

    gs_fapi_font_feature_DollarBlend,
    gs_fapi_font_feature_DollarBlend_length,
    gs_fapi_font_feature_BlendAxisTypes_count,
    gs_fapi_font_feature_BlendAxisTypes,
    gs_fapi_font_feature_BlendPrivate_count,
    gs_fapi_font_feature_BlendFontInfo_count,
    gs_fapi_font_feature_WeightVector_count,
    gs_fapi_font_feature_WeightVector,
    gs_fapi_font_feature_BlendDesignPositionsArrays_count,
    gs_fapi_font_feature_BlendDesignPositionsArrayValue,
    gs_fapi_font_feature_BlendDesignMapArrays_count,
    gs_fapi_font_feature_BlendDesignMapSubArrays_count,
    gs_fapi_font_feature_BlendDesignMapArrayValue,


    gs_fapi_font_feature_CharStrings_count,

} gs_fapi_font_feature;

typedef enum
{
    gs_fapi_metrics_notdef,
    gs_fapi_metrics_add,
    gs_fapi_metrics_replace_width,
    gs_fapi_metrics_replace
} gs_fapi_metrics_type;

typedef struct
{
    gs_char client_char_code;
    gs_glyph char_codes[4];
    int char_codes_count;
    bool is_glyph_index;
    const unsigned char *char_name;
    unsigned int char_name_length;
    gs_fapi_metrics_type metrics_type;
    fracint sb_x, sb_y, aw_x, aw_y;
    int metrics_scale;

} gs_fapi_char_ref;


typedef struct
{
    int platform_id;
    int encoding_id;
} gs_fapi_ttf_cmap_request;



typedef struct gs_fapi_font_s gs_fapi_font;
struct gs_fapi_font_s
{

    void *server_font_data;
    bool need_decrypt;

    const gs_memory_t *memory;
    const char *font_file_path;
    const char *full_font_buf;
    int full_font_buf_len;
    int subfont;
    bool is_type1;
    bool is_cid;
    bool is_outline_font;
    bool is_mtx_skipped;
    bool is_vertical;
    bool metrics_only;
    gs_fapi_ttf_cmap_request ttf_cmap_req[10];
    void *client_ctx_p;
    void *client_font_data;
    void *client_font_data2;
    const void *char_data;
    int char_data_len;
    float embolden;
    unsigned short (*get_word) (gs_fapi_font *ff,
                                gs_fapi_font_feature var_id, int index);
    unsigned long (*get_long) (gs_fapi_font *ff, gs_fapi_font_feature var_id,
                               int index);
    float (*get_float) (gs_fapi_font *ff, gs_fapi_font_feature var_id,
                        int index);
    int (*get_name) (gs_fapi_font *ff, gs_fapi_font_feature var_id,
                     int index, char *buffer, int len);
    int (*get_proc) (gs_fapi_font *ff, gs_fapi_font_feature var_id,
                     int index, char *Buffer);
    unsigned short (*get_gsubr) (gs_fapi_font *ff, int index, byte *buf,
                                 ushort buf_length);
    unsigned short (*get_subr) (gs_fapi_font *ff, int index, byte *buf,
                                ushort buf_length);
    unsigned short (*get_raw_subr) (gs_fapi_font *ff, int index, byte *buf,
                                    ushort buf_length);
    int (*get_glyph) (gs_fapi_font *ff, int char_code, byte *buf,
                      ushort buf_length);
    unsigned short (*serialize_tt_font) (gs_fapi_font *ff, void *buf,
                                         int buf_size);
    unsigned short (*get_charstring) (gs_fapi_font *ff, int index,
                                      byte *buf, ushort buf_length);
    unsigned short (*get_charstring_name) (gs_fapi_font *ff, int index,
                                           byte *buf, ushort buf_length);
    int (*get_glyphdirectory_data) (gs_fapi_font *ff, int char_code,
                                    const byte **ptr);
    int (*get_glyphname_or_cid) (gs_font_base *pbfont,
                                 gs_string *charstring, gs_string *name,
                                 int ccode, gs_string *enc_char_name,
                                 char *font_file_path, gs_fapi_char_ref *cr,
                                 bool bCID);
    int (*fapi_get_metrics) (gs_fapi_font *ff, gs_string *char_name,
                             int cid, double *m, bool vertical);
    int (*fapi_set_cache) (gs_text_enum_t *penum,
                           const gs_font_base *pbfont,
                           const gs_string *char_name, int cid,
                           const double pwidth[2], const gs_rect *pbbox,
                           const double Metrics2_sbw_default[4],
                           bool *imagenow);
};

typedef struct gs_fapi_face_s gs_fapi_face;
struct gs_fapi_face_s
{
    gs_id font_id;
    gs_matrix ctm;
    gs_log2_scale_point log2_scale;
    bool align_to_pixels;
    float HWResolution[2];
};

typedef struct gs_fapi_path_s gs_fapi_path;
struct gs_fapi_path_s
{
    void *olh;
    int shift;
    int gs_error;
    int (*moveto) (gs_fapi_path *, int64_t, int64_t);
    int (*lineto) (gs_fapi_path *, int64_t, int64_t);
    int (*curveto) (gs_fapi_path *, int64_t, int64_t, int64_t, int64_t,
                    int64_t, int64_t);
    int (*closepath) (gs_fapi_path *);
};

typedef struct gs_fapi_font_scale_s
{
    fracint matrix[6];
    fracint HWResolution[2];
    int subpixels[2];
    bool align_to_pixels;
} gs_fapi_font_scale;

typedef struct gs_fapi_metrics_s
{
    int bbox_x0, bbox_y0, bbox_x1, bbox_y1;
    int escapement;
    int v_escapement;
    int em_x, em_y;
} gs_fapi_metrics;

typedef struct
{
    void *p;
    int width, height, line_step;
    int orig_x, orig_y;
    int left_indent, top_indent;
    int black_width, black_height;
} gs_fapi_raster;






typedef enum gs_fapi_descendant_code_s
{
    gs_fapi_descendant_prepared = -1,
    gs_fapi_toplevel_prepared = -2,
    gs_fapi_toplevel_begin = -3,
    gs_fapi_toplevel_complete = -4
} gs_fapi_descendant_code;




typedef enum gs_fapi_style_s
{
    gs_fapi_style_bold = 1
} gs_fapi_style;




typedef enum gs_fapi_font_info_s
{
    gs_fapi_font_info_name = 1,
    gs_fapi_font_info_bbox = 2,
    gs_fapi_font_info_pitch = 3,
    gs_fapi_font_info_uid = 4,
    gs_fapi_font_info_design_units = 5
} gs_fapi_font_info;

typedef struct gs_fapi_server_descriptor_s gs_fapi_server_descriptor;
typedef struct gs_fapi_server_instance_s gs_fapi_server_instance;

struct gs_fapi_server_descriptor_s
{
    const char *type;
    const char *subtype;
    void (*finit) (gs_fapi_server **server);
};

struct gs_fapi_server_instance_s
{
    const gs_fapi_server_descriptor *d;
};


struct gs_fapi_server_s
{
    gs_fapi_server_instance ig;
    void *client_ctx_p;
    int frac_shift;
    gs_fapi_face face;
    gs_fapi_font ff;
    int max_bitmap;
    bool use_outline;
    uint grid_fit;
    gs_matrix initial_FontMatrix;






    gs_fapi_retcode(*ensure_open) (gs_fapi_server *server, const char *param, int param_size);
    gs_fapi_retcode(*get_scaled_font) (gs_fapi_server *server, gs_fapi_font *ff, const gs_fapi_font_scale *scale, const char *xlatmap, gs_fapi_descendant_code dc);
    gs_fapi_retcode(*get_decodingID) (gs_fapi_server *server, gs_fapi_font *ff, const char **decodingID);
    gs_fapi_retcode(*get_font_bbox) (gs_fapi_server *server, gs_fapi_font *ff, int BBox[4], int unitsPerEm[2]);
    gs_fapi_retcode(*get_font_proportional_feature) (gs_fapi_server *server, gs_fapi_font *ff, bool *bProportional);
    gs_fapi_retcode(*can_retrieve_char_by_name) (gs_fapi_server *server, gs_fapi_font *ff, gs_fapi_char_ref *c, int *result);
    gs_fapi_retcode(*can_replace_metrics) (gs_fapi_server *server, gs_fapi_font *ff, gs_fapi_char_ref *c, int *result);
    gs_fapi_retcode(*can_simulate_style) (gs_fapi_server *server, gs_fapi_font *ff, gs_fapi_style style, void *style_data);
    gs_fapi_retcode(*get_fontmatrix) (gs_fapi_server *server, gs_matrix *m);
    gs_fapi_retcode(*get_char_width) (gs_fapi_server *server, gs_fapi_font *ff, gs_fapi_char_ref *c, gs_fapi_metrics *metrics);
    gs_fapi_retcode(*get_char_raster_metrics) (gs_fapi_server *server, gs_fapi_font *ff, gs_fapi_char_ref *c, gs_fapi_metrics *metrics);
    gs_fapi_retcode(*get_char_raster) (gs_fapi_server *server, gs_fapi_raster *r);
    gs_fapi_retcode(*get_char_outline_metrics) (gs_fapi_server *server, gs_fapi_font *ff, gs_fapi_char_ref *c, gs_fapi_metrics *metrics);
    gs_fapi_retcode(*get_char_outline) (gs_fapi_server *server, gs_fapi_path *p);
    gs_fapi_retcode(*release_char_data) (gs_fapi_server *server);

    gs_fapi_retcode(*release_typeface) (gs_fapi_server *server, void *server_font_data);
    gs_fapi_retcode(*check_cmap_for_GID) (gs_fapi_server *server, uint *index);
    gs_fapi_retcode(*get_font_info) (gs_fapi_server *server, gs_fapi_font *ff, gs_fapi_font_info item, int index, void *data, int *datalen);
# 355 "./base/gxfapi.h"
};
# 367 "./base/gxfapi.h"
typedef int (*gs_fapi_get_server_param_callback) (gs_fapi_server *I,
                                                  const char *subtype,
                                                  char **server_param,
                                                  int *server_param_size);

typedef int (*gs_fapi_server_init_func) (gs_memory_t *mem,
                                         gs_fapi_server **server);
# 382 "./base/gxfapi.h"
void gs_fapi_set_servers_client_data(gs_memory_t *mem,
                                     const gs_fapi_font *ff_proto,
                                     void *ctx_ptr);


int gs_fapi_find_server(gs_memory_t *mem, const char *name,
                        gs_fapi_server **server,
                        gs_fapi_get_server_param_callback
                        get_server_param_cb);

gs_fapi_server **gs_fapi_get_server_list(gs_memory_t *mem);




bool gs_fapi_available(gs_memory_t *mem, char *server);

int gs_fapi_get_metrics_count(gs_fapi_font *ff);

int
gs_fapi_prepare_font(gs_font *pfont, gs_fapi_server *I, int subfont, const char *font_file_path,
                     gs_string *full_font_buf, const char *xlatmap, const char **decodingID);

int
gs_fapi_finish_render(gs_font *pfont, gs_state *pgs, gs_text_enum_t *penum, gs_fapi_server *I);

int
gs_fapi_do_char(gs_font *pfont, gs_state *pgs, gs_text_enum_t *penum, char *font_file_path,
                bool bBuildGlyph, gs_string *charstring, gs_string *glyphname,
                gs_char chr, gs_glyph index, int subfont);
# 421 "./base/gxfapi.h"
int
gs_fapi_get_font_info(gs_font *pfont, gs_fapi_font_info item, int index,
                      void *data, int *data_len);

int
gs_fapi_passfont(gs_font *pfont, int subfont, char *font_file_path,
                 gs_string *full_font_buf, char *fapi_request, char *xlatmap,
                 char **fapi_id, gs_fapi_get_server_param_callback get_server_param_cb);

int gs_fapi_init(gs_memory_t *mem);

void gs_fapi_finit(gs_memory_t *mem);


void gx_fapi_get_ulp_character_data(byte **header, byte **character_data);
# 27 "./base/write_t1.h" 2

long gs_fapi_serialize_type1_font(gs_fapi_font * a_fapi_font,
                                  unsigned char *a_buffer,
                                  long a_buffer_size);
long gs_fapi_serialize_type1_font_complete(gs_fapi_font * a_fapi_font,
                                           unsigned char *a_buffer,
                                           long a_buffer_size);
# 25 "./base/write_t1.c" 2






static void
write_word_entry(gs_fapi_font * a_fapi_font, WRF_output * a_output,
                 const char *a_name, int a_index, int a_divisor)
{
    short x;

    WRF_wbyte(a_output, '/');
    WRF_wstring(a_output, a_name);
    WRF_wbyte(a_output, ' ');

    x = a_fapi_font->get_word(a_fapi_font, a_index, 0);

    x = (short)(x / a_divisor);
    WRF_wint(a_output, x);
    WRF_wstring(a_output, " def\n");
}

static void
write_array_entry_with_count(gs_fapi_font * a_fapi_font,
                             WRF_output * a_output, const char *a_name,
                             int a_index, int a_count, int a_divisor)
{
    int i;

    if (a_count <= 0)
        return;

    WRF_wbyte(a_output, '/');
    WRF_wstring(a_output, a_name);
    WRF_wstring(a_output, " [");
    for (i = 0; i < a_count; i++) {

        short x = a_fapi_font->get_word(a_fapi_font, a_index, i);


        x = (short)(x / a_divisor);
        WRF_wint(a_output, x);
        WRF_wbyte(a_output, (byte) (i == a_count - 1 ? ']' : ' '));
    }
    WRF_wstring(a_output, " def\n");
}

static void
write_array_entry(gs_fapi_font * a_fapi_font, WRF_output * a_output,
                  const char *a_name, int a_index, int a_divisor)
{

    int count = a_fapi_font->get_word(a_fapi_font, a_index - 1, 0);

    write_array_entry_with_count(a_fapi_font, a_output, a_name, a_index,
                                 count, a_divisor);
}

static void
write_subrs(gs_fapi_font * a_fapi_font, WRF_output * a_output, int raw)
{
    int i;
    int count =
        a_fapi_font->get_word(a_fapi_font, gs_fapi_font_feature_Subrs_count,
                              0);
    if (count <= 0)
        return;

    WRF_wstring(a_output, "/Subrs ");
    WRF_wint(a_output, count);
    WRF_wstring(a_output, " array\n");

    for (i = 0; i < count; i++) {
        long length;
        long buffer_size;

        if (raw)
            length = a_fapi_font->get_raw_subr(a_fapi_font, i, 0, 0);
        else
            length = a_fapi_font->get_subr(a_fapi_font, i, 0, 0);
        WRF_wstring(a_output, "dup ");
        WRF_wint(a_output, i);
        WRF_wbyte(a_output, ' ');
        WRF_wint(a_output, length);
        WRF_wstring(a_output, " RD ");


        buffer_size = a_output->m_limit - a_output->m_count;
        if (buffer_size >= length) {
            if (raw)
                a_fapi_font->get_raw_subr(a_fapi_font, i, a_output->m_pos,
                                          (ushort) length);
            else
                a_fapi_font->get_subr(a_fapi_font, i, a_output->m_pos,
                                      (ushort) length);
            WRF_wtext(a_output, a_output->m_pos, length);
        } else
            a_output->m_count += length;

        WRF_wstring(a_output, " NP\n");
    }

    WRF_wstring(a_output, "ND\n");
}

static void
write_charstrings(gs_fapi_font * a_fapi_font, WRF_output * a_output)
{
    long length;
    long buffer_size;
    int i, count = a_fapi_font->get_word(a_fapi_font,
                                         gs_fapi_font_feature_CharStrings_count,
                                         0);
    char NameBuf[256];

    if (count <= 0)
        return;

    WRF_wstring(a_output, "2 index /CharStrings ");
    WRF_wint(a_output, count);
    WRF_wstring(a_output, " dict dup begin\n");
    for (i = 0; i < count; i++) {
        length =
            a_fapi_font->get_charstring_name(a_fapi_font, i,
                                             (byte *) & NameBuf, 256);
        if (length > 0) {
            length = a_fapi_font->get_charstring(a_fapi_font, i, 0, 0);

            WRF_wbyte(a_output, '/');
            WRF_wstring(a_output, (const char *)&NameBuf);
            WRF_wbyte(a_output, ' ');
            WRF_wint(a_output, length);
            WRF_wstring(a_output, " RD ");


            buffer_size = a_output->m_limit - a_output->m_count;
            if (buffer_size >= length) {
                a_fapi_font->get_charstring(a_fapi_font, i, a_output->m_pos,
                                            (ushort) length);
                WRF_wtext(a_output, a_output->m_pos, length);
            } else
                a_output->m_count += length;
            WRF_wstring(a_output, " ND\n");
        }
    }
    WRF_wstring(a_output, " end");
}

static int
is_MM_font(gs_fapi_font * a_fapi_font)
{
    return a_fapi_font->get_word(a_fapi_font,
                                 gs_fapi_font_feature_DollarBlend, 0);
}

static void
write_private_dictionary(gs_fapi_font * a_fapi_font, WRF_output * a_output,
                         int Write_CharStrings)
{
    a_output->m_encrypt = ((bool)1);


    WRF_wstring(a_output, "XXXX");


    WRF_wstring(a_output, "dup /Private 8 dict dup begin\n");

    WRF_wstring(a_output, "/MinFeature {16 16} def\n");
    WRF_wstring(a_output, "/password 5839 def\n");
    if (Write_CharStrings)
        write_word_entry(a_fapi_font, a_output, "lenIV",
                         gs_fapi_font_feature_lenIV, 1);
    else
        WRF_wstring(a_output, "/lenIV -1 def\n");
    write_word_entry(a_fapi_font, a_output, "BlueFuzz",
                     gs_fapi_font_feature_BlueFuzz, 16);

    WRF_wstring(a_output, "/BlueScale ");
    WRF_wfloat(a_output,
               a_fapi_font->get_long(a_fapi_font,
                                     gs_fapi_font_feature_BlueScale,
                                     0) / 65536.0);
    WRF_wstring(a_output, " def\n");

    write_word_entry(a_fapi_font, a_output, "BlueShift",
                     gs_fapi_font_feature_BlueShift, 16);
    write_array_entry(a_fapi_font, a_output, "BlueValues",
                      gs_fapi_font_feature_BlueValues, 16);
    write_array_entry(a_fapi_font, a_output, "OtherBlues",
                      gs_fapi_font_feature_OtherBlues, 16);
    write_array_entry(a_fapi_font, a_output, "FamilyBlues",
                      gs_fapi_font_feature_FamilyBlues, 16);
    write_array_entry(a_fapi_font, a_output, "FamilyOtherBlues",
                      gs_fapi_font_feature_FamilyOtherBlues, 16);
    write_word_entry(a_fapi_font, a_output, "ForceBold",
                     gs_fapi_font_feature_ForceBold, 1);
    write_array_entry_with_count(a_fapi_font, a_output, "StdHW",
                                 gs_fapi_font_feature_StdHW, 1, 16);
    write_array_entry_with_count(a_fapi_font, a_output, "StdVW",
                                 gs_fapi_font_feature_StdVW, 1, 16);
    write_array_entry(a_fapi_font, a_output, "StemSnapH",
                      gs_fapi_font_feature_StemSnapH, 16);
    write_array_entry(a_fapi_font, a_output, "StemSnapV",
                      gs_fapi_font_feature_StemSnapV, 16);

    if (is_MM_font(a_fapi_font)) {
        WRF_wstring(a_output, "3 index /Blend get /Private get begin\n");
        WRF_wstring(a_output, "|-\n");
    }
    if (Write_CharStrings)
        write_subrs(a_fapi_font, a_output, 1);
    else
        write_subrs(a_fapi_font, a_output, 0);
    if (Write_CharStrings)
        write_charstrings(a_fapi_font, a_output);
}

static void
write_blend_dictionary(gs_fapi_font * a_fapi_font, WRF_output * a_output)
{
}

static void
write_main_dictionary(gs_fapi_font * a_fapi_font, WRF_output * a_output,
                      int Write_CharStrings)
{
    int i;

    WRF_wstring(a_output, "5 dict begin\n");

    WRF_wstring(a_output, "/FontType 1 def\n");

    WRF_wstring(a_output, "/FontMatrix [");
    for (i = 0; i < 6; i++) {
        WRF_wfloat(a_output,
                   a_fapi_font->get_float(a_fapi_font,
                                          gs_fapi_font_feature_FontMatrix,
                                          i));
        WRF_wbyte(a_output, (byte) (i == 5 ? ']' : ' '));
    }
    WRF_wbyte(a_output, '\n');


    WRF_wstring(a_output, "/Encoding StandardEncoding def\n");

    WRF_wstring(a_output, "/FontBBox {");
    for (i = 0; i < 4; i++) {
        short x =
            a_fapi_font->get_word(a_fapi_font, gs_fapi_font_feature_FontBBox,
                                  i);
        WRF_wint(a_output, x);
        WRF_wbyte(a_output, (byte) (i == 3 ? '}' : ' '));
    }
    WRF_wbyte(a_output, '\n');
    if (is_MM_font(a_fapi_font)) {
        short x, x2;
        float x1;
        uint i, j, entries;
        char Buffer[255];

        entries = 0;
        x = a_fapi_font->get_word(a_fapi_font,
                                  gs_fapi_font_feature_BlendAxisTypes_count,
                                  0);
        if (x)
            entries++;
        x = a_fapi_font->get_word(a_fapi_font,
                                  gs_fapi_font_feature_BlendDesignPositionsArrays_count,
                                  0);
        if (x)
            entries++;
        x = a_fapi_font->get_word(a_fapi_font,
                                  gs_fapi_font_feature_BlendDesignMapArrays_count,
                                  0);
        if (x)
            entries++;

        gs_sprintf(Buffer, "/FontInfo %d dict dup begin\n", entries);
        WRF_wstring(a_output, Buffer);
        x = a_fapi_font->get_word(a_fapi_font,
                                  gs_fapi_font_feature_BlendAxisTypes_count,
                                  0);
        if (x) {
            WRF_wstring(a_output, "/BlendAxisTypes [");
            for (i = 0; i < x; i++) {
                WRF_wstring(a_output, " /");
                a_fapi_font->get_name(a_fapi_font,
                                      gs_fapi_font_feature_BlendAxisTypes, i,
                                      (char *)&Buffer, 255);
                WRF_wstring(a_output, Buffer);
            }
            WRF_wstring(a_output, "] def\n");
        }
        x = a_fapi_font->get_word(a_fapi_font,
                                  gs_fapi_font_feature_BlendDesignPositionsArrays_count,
                                  0);
        if (x) {
            WRF_wstring(a_output, "/BlendDesignPositions [");
            x2 = a_fapi_font->get_word(a_fapi_font,
                                       gs_fapi_font_feature_BlendAxisTypes_count,
                                       0);
            for (i = 0; i < x; i++) {
                WRF_wstring(a_output, "[");
                for (j = 0; j < x2; j++) {
                    x1 = a_fapi_font->get_float(a_fapi_font,
                                                gs_fapi_font_feature_BlendDesignPositionsArrayValue,
                                                i * 8 + j);
                    gs_sprintf(Buffer, "%f ", x1);
                    WRF_wstring(a_output, Buffer);
                }
                WRF_wstring(a_output, "]");
            }
            WRF_wstring(a_output, "] def\n");
        }
        x = a_fapi_font->get_word(a_fapi_font,
                                  gs_fapi_font_feature_BlendDesignMapArrays_count,
                                  0);
        if (x) {
            WRF_wstring(a_output, "/BlendDesignMap [");
            for (i = 0; i < x; i++) {
                x2 = a_fapi_font->get_word(a_fapi_font,
                                           gs_fapi_font_feature_BlendDesignMapSubArrays_count,
                                           i);
                WRF_wstring(a_output, "[");
                for (j = 0; j < x2; j++) {
                    WRF_wstring(a_output, "[");
                    x1 = a_fapi_font->get_float(a_fapi_font,
                                                gs_fapi_font_feature_BlendDesignPositionsArrayValue,
                                                i * 64 + j * 64);
                    gs_sprintf(Buffer, "%f ", x1);
                    WRF_wstring(a_output, Buffer);
                    x1 = a_fapi_font->get_float(a_fapi_font,
                                                gs_fapi_font_feature_BlendDesignPositionsArrayValue,
                                                i * 64 + j * 64 + 1);
                    gs_sprintf(Buffer, "%f ", x1);
                    WRF_wstring(a_output, Buffer);
                    WRF_wstring(a_output, "]");
                }
                WRF_wstring(a_output, "]");
            }
            WRF_wstring(a_output, "] def\n");
        }
        WRF_wstring(a_output, "end readonly def\n");







        if ((x =
             a_fapi_font->get_word(a_fapi_font,
                                   gs_fapi_font_feature_DollarBlend_length,
                                   0)) > 0) {
            WRF_wstring(a_output, "/$Blend {");

            if (a_output->m_count)
                a_output->m_count += x;
            x = a_fapi_font->get_proc(a_fapi_font,
                                      gs_fapi_font_feature_DollarBlend, 0,
                                      (char *)a_output->m_pos);
            if (a_output->m_pos)
                a_output->m_pos += x;
            WRF_wstring(a_output, "} def\n");
        } else {
            WRF_wstring(a_output,
                        "/$Blend {0.1 mul exch 0.45 mul add exch 0.17 mul add add} def\n");
        }
        WRF_wstring(a_output, "/WeightVector [");
        x = a_fapi_font->get_word(a_fapi_font,
                                  gs_fapi_font_feature_WeightVector_count, 0);
        for (i = 0; i < x; i++) {
            x1 = a_fapi_font->get_float(a_fapi_font,
                                        gs_fapi_font_feature_WeightVector, i);
            gs_sprintf(Buffer, "%f ", x1);
            WRF_wstring(a_output, Buffer);
        }
        WRF_wstring(a_output, "] def\n");
    }
    WRF_wstring(a_output, "currentdict end\ncurrentfile eexec\n");
    write_private_dictionary(a_fapi_font, a_output, Write_CharStrings);
    if (is_MM_font(a_fapi_font)) {
        write_blend_dictionary(a_fapi_font, a_output);
    }
}
# 421 "./base/write_t1.c"
long
gs_fapi_serialize_type1_font(gs_fapi_font * a_fapi_font,
                             unsigned char *a_buffer, long a_buffer_size)
{
    WRF_output output;

    WRF_init(&output, a_buffer, a_buffer_size);


    WRF_wstring(&output, "%!PS-AdobeFont-1\n");

    write_main_dictionary(a_fapi_font, &output, 0);
    return output.m_count;
}

long
gs_fapi_serialize_type1_font_complete(gs_fapi_font * a_fapi_font,
                                      unsigned char *a_buffer,
                                      long a_buffer_size)
{
    WRF_output output;

    WRF_init(&output, a_buffer, a_buffer_size);


    WRF_wstring(&output, "%!PS-AdobeFont-1\n");

    write_main_dictionary(a_fapi_font, &output, 1);
    return output.m_count;
}
