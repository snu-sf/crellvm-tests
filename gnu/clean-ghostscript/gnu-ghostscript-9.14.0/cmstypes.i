# 1 "./lcms2/src/cmstypes.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./lcms2/src/cmstypes.c" 2
# 27 "./lcms2/src/cmstypes.c"
# 1 "./lcms2/src/lcms2_internal.h" 1
# 31 "./lcms2/src/lcms2_internal.h"
# 1 "./lcms2/include/lcms2_plugin.h" 1
# 46 "./lcms2/include/lcms2_plugin.h"
# 1 "./lcms2/include/lcms2.h" 1
# 64 "./lcms2/include/lcms2.h"
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
# 65 "./lcms2/include/lcms2.h" 2


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
# 59 "/usr/include/time.h" 3 4
typedef __clock_t clock_t;
# 75 "/usr/include/time.h" 3 4
typedef __time_t time_t;
# 91 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
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





typedef __pid_t pid_t;
# 189 "/usr/include/time.h" 3 4
extern clock_t clock (void) __attribute__ ((__nothrow__ ));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ ));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ ));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));
# 221 "/usr/include/time.h" 3 4
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
# 222 "/usr/include/time.h" 2 3 4

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
# 47 "./lcms2/include/lcms2_plugin.h" 2



# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 33 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/bits/waitflags.h" 1 3 4
# 42 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/bits/waitstatus.h" 1 3 4
# 64 "/usr/include/bits/waitstatus.h" 3 4
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
# 65 "/usr/include/bits/waitstatus.h" 2 3 4

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
# 104 "/usr/include/sys/types.h" 3 4
typedef __id_t id_t;
# 115 "/usr/include/sys/types.h" 3 4
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 146 "/usr/include/sys/types.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 147 "/usr/include/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
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
# 219 "/usr/include/sys/types.h" 3 4
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
# 315 "/usr/include/stdlib.h" 2 3 4






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
# 619 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 641 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
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
# 52 "./lcms2/include/lcms2_plugin.h" 2

# 1 "/usr/include/memory.h" 1 3 4
# 29 "/usr/include/memory.h" 3 4
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
# 162 "/usr/include/string.h" 3 4
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
# 30 "/usr/include/memory.h" 2 3 4
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
# 32 "./lcms2/src/lcms2_internal.h" 2



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
# 36 "./lcms2/src/lcms2_internal.h" 2


# 1 "/usr/include/assert.h" 1 3 4
# 68 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
# 39 "./lcms2/src/lcms2_internal.h" 2
# 129 "./lcms2/src/lcms2_internal.h"
static inline cmsS15Fixed16Number _cmsToFixedDomain(int a) { return a + ((a + 0x7fff) / 0xffff); }
static inline int _cmsFromFixedDomain(cmsS15Fixed16Number a) { return a - ((a + 0x7fff) >> 16); }







static inline int _cmsQuickFloor(cmsFloat64Number val)
{



    const cmsFloat64Number _lcms_double2fixmagic = 68719476736.0 * 1.5;
    union {
        cmsFloat64Number val;
        int halves[2];
    } temp;

    temp.val = val + _lcms_double2fixmagic;




    return temp.halves[0] >> 16;


}


static inline cmsUInt16Number _cmsQuickFloorWord(cmsFloat64Number d)
{
    return (cmsUInt16Number) _cmsQuickFloor(d - 32767.0) + 32767U;
}


static inline cmsUInt16Number _cmsQuickSaturateWord(cmsFloat64Number d)
{
    d += 0.5;
    if (d <= 0) return 0;
    if (d >= 65535.0) return 0xffff;

    return _cmsQuickFloorWord(d);
}
# 295 "./lcms2/src/lcms2_internal.h"
# 1 "/usr/include/pthread.h" 1 3 4
# 23 "/usr/include/pthread.h" 3 4
# 1 "/usr/include/sched.h" 1 3 4
# 29 "/usr/include/sched.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 30 "/usr/include/sched.h" 2 3 4
# 42 "/usr/include/sched.h" 3 4
# 1 "/usr/include/bits/sched.h" 1 3 4
# 73 "/usr/include/bits/sched.h" 3 4
struct sched_param
  {
    int __sched_priority;
  };
# 104 "/usr/include/bits/sched.h" 3 4
struct __sched_param
  {
    int __sched_priority;
  };
# 119 "/usr/include/bits/sched.h" 3 4
typedef unsigned long int __cpu_mask;






typedef struct
{
  __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
# 204 "/usr/include/bits/sched.h" 3 4
extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
  __attribute__ ((__nothrow__ ));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__ )) ;
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__ ));
# 43 "/usr/include/sched.h" 2 3 4







extern int sched_setparam (__pid_t __pid, const struct sched_param *__param)
     __attribute__ ((__nothrow__ ));


extern int sched_getparam (__pid_t __pid, struct sched_param *__param) __attribute__ ((__nothrow__ ));


extern int sched_setscheduler (__pid_t __pid, int __policy,
          const struct sched_param *__param) __attribute__ ((__nothrow__ ));


extern int sched_getscheduler (__pid_t __pid) __attribute__ ((__nothrow__ ));


extern int sched_yield (void) __attribute__ ((__nothrow__ ));


extern int sched_get_priority_max (int __algorithm) __attribute__ ((__nothrow__ ));


extern int sched_get_priority_min (int __algorithm) __attribute__ ((__nothrow__ ));


extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) __attribute__ ((__nothrow__ ));
# 24 "/usr/include/pthread.h" 2 3 4



# 1 "/usr/include/bits/setjmp.h" 1 3 4
# 26 "/usr/include/bits/setjmp.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 27 "/usr/include/bits/setjmp.h" 2 3 4




typedef long int __jmp_buf[8];
# 28 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/pthread.h" 2 3 4



enum
{
  PTHREAD_CREATE_JOINABLE,

  PTHREAD_CREATE_DETACHED

};



enum
{
  PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_ADAPTIVE_NP

  ,
  PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL





};




enum
{
  PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_ROBUST,
  PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST
};





enum
{
  PTHREAD_PRIO_NONE,
  PTHREAD_PRIO_INHERIT,
  PTHREAD_PRIO_PROTECT
};
# 113 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_RWLOCK_PREFER_READER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
  PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP
};
# 154 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_INHERIT_SCHED,

  PTHREAD_EXPLICIT_SCHED

};



enum
{
  PTHREAD_SCOPE_SYSTEM,

  PTHREAD_SCOPE_PROCESS

};



enum
{
  PTHREAD_PROCESS_PRIVATE,

  PTHREAD_PROCESS_SHARED

};
# 189 "/usr/include/pthread.h" 3 4
struct _pthread_cleanup_buffer
{
  void (*__routine) (void *);
  void *__arg;
  int __canceltype;
  struct _pthread_cleanup_buffer *__prev;
};


enum
{
  PTHREAD_CANCEL_ENABLE,

  PTHREAD_CANCEL_DISABLE

};
enum
{
  PTHREAD_CANCEL_DEFERRED,

  PTHREAD_CANCEL_ASYNCHRONOUS

};
# 232 "/usr/include/pthread.h" 3 4
extern int pthread_create (pthread_t *__restrict __newthread,
      const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));





extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));







extern int pthread_join (pthread_t __th, void **__thread_return);
# 270 "/usr/include/pthread.h" 3 4
extern int pthread_detach (pthread_t __th) __attribute__ ((__nothrow__ ));



extern pthread_t pthread_self (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));


extern int pthread_equal (pthread_t __thread1, pthread_t __thread2)
  __attribute__ ((__nothrow__ )) __attribute__ ((__const__));







extern int pthread_attr_init (pthread_attr_t *__attr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_destroy (pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getdetachstate (const pthread_attr_t *__attr,
     int *__detachstate)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setdetachstate (pthread_attr_t *__attr,
     int __detachstate)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getguardsize (const pthread_attr_t *__attr,
          size_t *__guardsize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setguardsize (pthread_attr_t *__attr,
          size_t __guardsize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
           struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
           const struct sched_param *__restrict
           __param) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict
     __attr, int *__restrict __policy)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedpolicy (pthread_attr_t *__attr, int __policy)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict
      __attr, int *__restrict __inherit)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setinheritsched (pthread_attr_t *__attr,
      int __inherit)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr,
      int *__restrict __scope)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setscope (pthread_attr_t *__attr, int __scope)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict
          __attr, void **__restrict __stackaddr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__deprecated__));





extern int pthread_attr_setstackaddr (pthread_attr_t *__attr,
          void *__stackaddr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__));


extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict
          __attr, size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_attr_setstacksize (pthread_attr_t *__attr,
          size_t __stacksize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getstack (const pthread_attr_t *__restrict __attr,
      void **__restrict __stackaddr,
      size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_attr_setstack (pthread_attr_t *__attr, void *__stackaddr,
      size_t __stacksize) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 420 "/usr/include/pthread.h" 3 4
extern int pthread_setschedparam (pthread_t __target_thread, int __policy,
      const struct sched_param *__param)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));


extern int pthread_getschedparam (pthread_t __target_thread,
      int *__restrict __policy,
      struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));


extern int pthread_setschedprio (pthread_t __target_thread, int __prio)
     __attribute__ ((__nothrow__ ));
# 485 "/usr/include/pthread.h" 3 4
extern int pthread_once (pthread_once_t *__once_control,
    void (*__init_routine) (void)) __attribute__ ((__nonnull__ (1, 2)));
# 497 "/usr/include/pthread.h" 3 4
extern int pthread_setcancelstate (int __state, int *__oldstate);



extern int pthread_setcanceltype (int __type, int *__oldtype);


extern int pthread_cancel (pthread_t __th);




extern void pthread_testcancel (void);




typedef struct
{
  struct
  {
    __jmp_buf __cancel_jmp_buf;
    int __mask_was_saved;
  } __cancel_jmp_buf[1];
  void *__pad[4];
} __pthread_unwind_buf_t __attribute__ ((__aligned__));
# 531 "/usr/include/pthread.h" 3 4
struct __pthread_cleanup_frame
{
  void (*__cancel_routine) (void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
};
# 671 "/usr/include/pthread.h" 3 4
extern void __pthread_register_cancel (__pthread_unwind_buf_t *__buf)
                            ;
# 683 "/usr/include/pthread.h" 3 4
extern void __pthread_unregister_cancel (__pthread_unwind_buf_t *__buf)
                         ;
# 724 "/usr/include/pthread.h" 3 4
extern void __pthread_unwind_next (__pthread_unwind_buf_t *__buf)
                             __attribute__ ((__noreturn__))

     __attribute__ ((__weak__))

     ;



struct __jmp_buf_tag;
extern int __sigsetjmp (struct __jmp_buf_tag *__env, int __savemask) __attribute__ ((__nothrow__));





extern int pthread_mutex_init (pthread_mutex_t *__mutex,
          const pthread_mutexattr_t *__mutexattr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_destroy (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_trylock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_lock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_timedlock (pthread_mutex_t *__restrict __mutex,
        const struct timespec *__restrict
        __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_unlock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_getprioceiling (const pthread_mutex_t *
      __restrict __mutex,
      int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_setprioceiling (pthread_mutex_t *__restrict __mutex,
      int __prioceiling,
      int *__restrict __old_ceiling)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3)));




extern int pthread_mutex_consistent (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 797 "/usr/include/pthread.h" 3 4
extern int pthread_mutexattr_init (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t *
      __restrict __attr,
      int *__restrict __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr,
      int __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_gettype (const pthread_mutexattr_t *__restrict
          __attr, int *__restrict __kind)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_mutexattr_settype (pthread_mutexattr_t *__attr, int __kind)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getprotocol (const pthread_mutexattr_t *
       __restrict __attr,
       int *__restrict __protocol)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutexattr_setprotocol (pthread_mutexattr_t *__attr,
       int __protocol)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t *
          __restrict __attr,
          int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *__attr,
          int __prioceiling)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getrobust (const pthread_mutexattr_t *__attr,
     int *__robustness)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));







extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
     int __robustness)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 879 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_init (pthread_rwlock_t *__restrict __rwlock,
    const pthread_rwlockattr_t *__restrict
    __attr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_destroy (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_rdlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_tryrdlock (pthread_rwlock_t *__rwlock)
  __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedrdlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_wrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_trywrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedwrlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_unlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int pthread_rwlockattr_init (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_destroy (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getpshared (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setpshared (pthread_rwlockattr_t *__attr,
       int __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pref)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setkind_np (pthread_rwlockattr_t *__attr,
       int __pref) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));







extern int pthread_cond_init (pthread_cond_t *__restrict __cond,
         const pthread_condattr_t *__restrict __cond_attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_destroy (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_signal (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_broadcast (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_cond_wait (pthread_cond_t *__restrict __cond,
         pthread_mutex_t *__restrict __mutex)
     __attribute__ ((__nonnull__ (1, 2)));
# 991 "/usr/include/pthread.h" 3 4
extern int pthread_cond_timedwait (pthread_cond_t *__restrict __cond,
       pthread_mutex_t *__restrict __mutex,
       const struct timespec *__restrict __abstime)
     __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_condattr_init (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_destroy (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_getpshared (const pthread_condattr_t *
     __restrict __attr,
     int *__restrict __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setpshared (pthread_condattr_t *__attr,
     int __pshared) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int pthread_condattr_getclock (const pthread_condattr_t *
          __restrict __attr,
          __clockid_t *__restrict __clock_id)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setclock (pthread_condattr_t *__attr,
          __clockid_t __clock_id)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 1035 "/usr/include/pthread.h" 3 4
extern int pthread_spin_init (pthread_spinlock_t *__lock, int __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_destroy (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_lock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_trylock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_unlock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_barrier_init (pthread_barrier_t *__restrict __barrier,
     const pthread_barrierattr_t *__restrict
     __attr, unsigned int __count)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_destroy (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_wait (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_barrierattr_init (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_destroy (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_getpshared (const pthread_barrierattr_t *
        __restrict __attr,
        int *__restrict __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_barrierattr_setpshared (pthread_barrierattr_t *__attr,
        int __pshared)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 1102 "/usr/include/pthread.h" 3 4
extern int pthread_key_create (pthread_key_t *__key,
          void (*__destr_function) (void *))
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int pthread_key_delete (pthread_key_t __key) __attribute__ ((__nothrow__ ));


extern void *pthread_getspecific (pthread_key_t __key) __attribute__ ((__nothrow__ ));


extern int pthread_setspecific (pthread_key_t __key,
    const void *__pointer) __attribute__ ((__nothrow__ )) ;




extern int pthread_getcpuclockid (pthread_t __thread_id,
      __clockid_t *__clock_id)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 1136 "/usr/include/pthread.h" 3 4
extern int pthread_atfork (void (*__prepare) (void),
      void (*__parent) (void),
      void (*__child) (void)) __attribute__ ((__nothrow__ ));




extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) pthread_equal (pthread_t __thread1, pthread_t __thread2)
{
  return __thread1 == __thread2;
}
# 296 "./lcms2/src/lcms2_internal.h" 2


typedef pthread_mutex_t _cmsMutex;


static inline int _cmsLockPrimitive(_cmsMutex *m)
{
 return pthread_mutex_lock(m);
}

static inline int _cmsUnlockPrimitive(_cmsMutex *m)
{
 return pthread_mutex_unlock(m);
}

static inline int _cmsInitMutexPrimitive(_cmsMutex *m)
{
 return pthread_mutex_init(m, ((void*)0));
}

static inline int _cmsDestroyMutexPrimitive(_cmsMutex *m)
{
 return pthread_mutex_destroy(m);
}

static inline int _cmsEnterCriticalSectionPrimitive(_cmsMutex *m)
{
 return pthread_mutex_lock(m);
}

static inline int _cmsLeaveCriticalSectionPrimitive(_cmsMutex *m)
{
 return pthread_mutex_unlock(m);
}
# 378 "./lcms2/src/lcms2_internal.h"
void* _cmsPluginMalloc(cmsContext ContextID, cmsUInt32Number size);


cmsBool _cmsRegisterMemHandlerPlugin(cmsContext ContextID, cmsPluginBase* Plugin);


cmsBool _cmsRegisterInterpPlugin(cmsContext ContextID, cmsPluginBase* Plugin);


cmsBool _cmsRegisterParametricCurvesPlugin(cmsContext ContextID, cmsPluginBase* Plugin);


cmsBool _cmsRegisterFormattersPlugin(cmsContext ContextID, cmsPluginBase* Plugin);


cmsBool _cmsRegisterTagTypePlugin(cmsContext ContextID, cmsPluginBase* Plugin);


cmsBool _cmsRegisterTagPlugin(cmsContext ContextID, cmsPluginBase* Plugin);


cmsBool _cmsRegisterRenderingIntentPlugin(cmsContext ContextID, cmsPluginBase* Plugin);


cmsBool _cmsRegisterMultiProcessElementPlugin(cmsContext ContextID, cmsPluginBase* Plugin);


cmsBool _cmsRegisterOptimizationPlugin(cmsContext ContextID, cmsPluginBase* Plugin);


cmsBool _cmsRegisterTransformPlugin(cmsContext ContextID, cmsPluginBase* Plugin);


cmsBool _cmsRegisterMutexPlugin(cmsContext ContextID, cmsPluginBase* Plugin);




typedef struct _cmsSubAllocator_chunk_st {

    cmsUInt8Number* Block;
    cmsUInt32Number BlockSize;
    cmsUInt32Number Used;

    struct _cmsSubAllocator_chunk_st* next;

} _cmsSubAllocator_chunk;


typedef struct {

    cmsContext ContextID;
    _cmsSubAllocator_chunk* h;

} _cmsSubAllocator;


_cmsSubAllocator* _cmsCreateSubAlloc(cmsContext ContextID, cmsUInt32Number Initial);
void _cmsSubAllocDestroy(_cmsSubAllocator* s);
void* _cmsSubAlloc(_cmsSubAllocator* s, cmsUInt32Number size);
void* _cmsSubAllocDup(_cmsSubAllocator* s, const void *ptr, cmsUInt32Number size);




typedef enum {

    UserPtr,
    Logger,
    AlarmCodesContext,
    AdaptationStateContext,
    MemPlugin,
    InterpPlugin,
    CurvesPlugin,
    FormattersPlugin,
    TagTypePlugin,
    TagPlugin,
    IntentPlugin,
    MPEPlugin,
    OptimizationPlugin,
    TransformPlugin,
    MutexPlugin,


    MemoryClientMax

} _cmsMemoryClient;



typedef struct {

    _cmsMallocFnPtrType MallocPtr;
    _cmsMalloZerocFnPtrType MallocZeroPtr;
    _cmsFreeFnPtrType FreePtr;
    _cmsReallocFnPtrType ReallocPtr;
    _cmsCallocFnPtrType CallocPtr;
    _cmsDupFnPtrType DupPtr;

} _cmsMemPluginChunkType;


void _cmsInstallAllocFunctions(cmsPluginMemHandler* Plugin, _cmsMemPluginChunkType* ptr);


struct _cmsContext_struct {

    struct _cmsContext_struct* Next;
    _cmsSubAllocator* MemPool;

    void* chunks[MemoryClientMax];


    _cmsMemPluginChunkType DefaultMemoryManager;
};



struct _cmsContext_struct* _cmsGetContext(cmsContext ContextID);


void* _cmsContextGetClientChunk(cmsContext id, _cmsMemoryClient mc);







typedef struct {

    cmsLogErrorHandlerFunction LogErrorHandler;

} _cmsLogErrorChunkType;


extern _cmsLogErrorChunkType _cmsLogErrorChunk;


void _cmsAllocLogErrorChunk(struct _cmsContext_struct* ctx,
                            const struct _cmsContext_struct* src);


typedef struct {

    cmsUInt16Number AlarmCodes[16];

} _cmsAlarmCodesChunkType;


extern _cmsAlarmCodesChunkType _cmsAlarmCodesChunk;


void _cmsAllocAlarmCodesChunk(struct _cmsContext_struct* ctx,
                            const struct _cmsContext_struct* src);


typedef struct {

    cmsFloat64Number AdaptationState;

} _cmsAdaptationStateChunkType;


extern _cmsAdaptationStateChunkType _cmsAdaptationStateChunk;


void _cmsAllocAdaptationStateChunk(struct _cmsContext_struct* ctx,
                                   const struct _cmsContext_struct* src);



extern _cmsMemPluginChunkType _cmsMemPluginChunk;


void _cmsAllocMemPluginChunk(struct _cmsContext_struct* ctx,
                             const struct _cmsContext_struct* src);


typedef struct {

    cmsInterpFnFactory Interpolators;

} _cmsInterpPluginChunkType;


extern _cmsInterpPluginChunkType _cmsInterpPluginChunk;


void _cmsAllocInterpPluginChunk(struct _cmsContext_struct* ctx,
                                const struct _cmsContext_struct* src);


typedef struct {

    struct _cmsParametricCurvesCollection_st* ParametricCurves;

} _cmsCurvesPluginChunkType;


extern _cmsCurvesPluginChunkType _cmsCurvesPluginChunk;


void _cmsAllocCurvesPluginChunk(struct _cmsContext_struct* ctx,
                                                      const struct _cmsContext_struct* src);


typedef struct {

    struct _cms_formatters_factory_list* FactoryList;

} _cmsFormattersPluginChunkType;


extern _cmsFormattersPluginChunkType _cmsFormattersPluginChunk;


void _cmsAllocFormattersPluginChunk(struct _cmsContext_struct* ctx,
                                                       const struct _cmsContext_struct* src);


typedef struct {

    struct _cmsTagTypeLinkedList_st* TagTypes;

} _cmsTagTypePluginChunkType;



extern _cmsTagTypePluginChunkType _cmsTagTypePluginChunk;



extern _cmsTagTypePluginChunkType _cmsMPETypePluginChunk;


void _cmsAllocTagTypePluginChunk(struct _cmsContext_struct* ctx,
                                                        const struct _cmsContext_struct* src);

void _cmsAllocMPETypePluginChunk(struct _cmsContext_struct* ctx,
                                                        const struct _cmsContext_struct* src);

typedef struct {

    struct _cmsTagLinkedList_st* Tag;

} _cmsTagPluginChunkType;



extern _cmsTagPluginChunkType _cmsTagPluginChunk;


void _cmsAllocTagPluginChunk(struct _cmsContext_struct* ctx,
                                                      const struct _cmsContext_struct* src);


typedef struct {

    struct _cms_intents_list* Intents;

} _cmsIntentsPluginChunkType;



extern _cmsIntentsPluginChunkType _cmsIntentsPluginChunk;


void _cmsAllocIntentsPluginChunk(struct _cmsContext_struct* ctx,
                                                        const struct _cmsContext_struct* src);


typedef struct {

    struct _cmsOptimizationCollection_st* OptimizationCollection;

} _cmsOptimizationPluginChunkType;



extern _cmsOptimizationPluginChunkType _cmsOptimizationPluginChunk;


void _cmsAllocOptimizationPluginChunk(struct _cmsContext_struct* ctx,
                                         const struct _cmsContext_struct* src);


typedef struct {

    struct _cmsTransformCollection_st* TransformCollection;

} _cmsTransformPluginChunkType;


extern _cmsTransformPluginChunkType _cmsTransformPluginChunk;


void _cmsAllocTransformPluginChunk(struct _cmsContext_struct* ctx,
                                        const struct _cmsContext_struct* src);


typedef struct {

    _cmsCreateMutexFnPtrType CreateMutexPtr;
    _cmsDestroyMutexFnPtrType DestroyMutexPtr;
    _cmsLockMutexFnPtrType LockMutexPtr;
    _cmsUnlockMutexFnPtrType UnlockMutexPtr;

} _cmsMutexPluginChunkType;


extern _cmsMutexPluginChunkType _cmsMutexPluginChunk;


void _cmsAllocMutexPluginChunk(struct _cmsContext_struct* ctx,
                                        const struct _cmsContext_struct* src);



typedef struct {

    cmsUInt16Number Language;
    cmsUInt16Number Country;

    cmsUInt32Number StrW;
    cmsUInt32Number Len;

} _cmsMLUentry;

struct _cms_MLU_struct {

    cmsContext ContextID;


    int AllocatedEntries;
    int UsedEntries;
    _cmsMLUentry* Entries;


    cmsUInt32Number PoolSize;
    cmsUInt32Number PoolUsed;
    void* MemPool;
};


typedef struct {

    char Name[256];
    cmsUInt16Number PCS[3];
    cmsUInt16Number DeviceColorant[16];

} _cmsNAMEDCOLOR;

struct _cms_NAMEDCOLORLIST_struct {

    cmsUInt32Number nColors;
    cmsUInt32Number Allocated;
    cmsUInt32Number ColorantCount;

    char Prefix[33];
    char Suffix[33];

    _cmsNAMEDCOLOR* List;

    cmsContext ContextID;
};
# 753 "./lcms2/src/lcms2_internal.h"
typedef struct _cms_iccprofile_struct {


    cmsIOHANDLER* IOhandler;


    cmsContext ContextID;


    struct tm Created;


    cmsUInt32Number Version;
    cmsProfileClassSignature DeviceClass;
    cmsColorSpaceSignature ColorSpace;
    cmsColorSpaceSignature PCS;
    cmsUInt32Number RenderingIntent;

    cmsUInt32Number flags;
    cmsUInt32Number manufacturer, model;
    cmsUInt64Number attributes;
    cmsUInt32Number creator;

    cmsProfileID ProfileID;


    cmsUInt32Number TagCount;
    cmsTagSignature TagNames[100];
    cmsTagSignature TagLinked[100];
    cmsUInt32Number TagSizes[100];
    cmsUInt32Number TagOffsets[100];
    cmsBool TagSaveAsRaw[100];
    void * TagPtrs[100];
    cmsTagTypeHandler* TagTypeHandlers[100];



    cmsBool IsWrite;


    void * UsrMutex;

} _cmsICCPROFILE;


cmsBool _cmsReadHeader(_cmsICCPROFILE* Icc);
cmsBool _cmsWriteHeader(_cmsICCPROFILE* Icc, cmsUInt32Number UsedSpace);
int _cmsSearchTag(_cmsICCPROFILE* Icc, cmsTagSignature sig, cmsBool lFollowLinks);


cmsTagTypeHandler* _cmsGetTagTypeHandler(cmsContext ContextID, cmsTagTypeSignature sig);
cmsTagTypeSignature _cmsGetTagTrueType(cmsHPROFILE hProfile, cmsTagSignature sig);
cmsTagDescriptor* _cmsGetTagDescriptor(cmsContext ContextID, cmsTagSignature sig);



void _cmsTagSignature2String(char String[5], cmsTagSignature sig);



cmsInterpParams* _cmsComputeInterpParams(cmsContext ContextID, int nSamples, int InputChan, int OutputChan, const void* Table, cmsUInt32Number dwFlags);
cmsInterpParams* _cmsComputeInterpParamsEx(cmsContext ContextID, const cmsUInt32Number nSamples[], int InputChan, int OutputChan, const void* Table, cmsUInt32Number dwFlags);
void _cmsFreeInterpParams(cmsInterpParams* p);
cmsBool _cmsSetInterpolationRoutine(cmsContext ContextID, cmsInterpParams* p);







struct _cms_curve_struct {

    cmsInterpParams* InterpParams;

    cmsUInt32Number nSegments;
    cmsCurveSegment* Segments;
    cmsInterpParams** SegInterp;

    cmsParametricCurveEvaluator* Evals;


    cmsUInt32Number nEntries;
    cmsUInt16Number* Table16;
};





struct _cmsStage_struct {

    cmsContext ContextID;

    cmsStageSignature Type;
    cmsStageSignature Implements;

    cmsUInt32Number InputChannels;
    cmsUInt32Number OutputChannels;

    _cmsStageEvalFn EvalPtr;
    _cmsStageDupElemFn DupElemPtr;
    _cmsStageFreeElemFn FreePtr;


    void* Data;


    struct _cmsStage_struct* Next;
};



cmsStage* _cmsStageAllocLab2XYZ(cmsContext ContextID);
cmsStage* _cmsStageAllocXYZ2Lab(cmsContext ContextID);
cmsStage* _cmsStageAllocLabPrelin(cmsContext ContextID);
cmsStage* _cmsStageAllocLabV2ToV4(cmsContext ContextID);
cmsStage* _cmsStageAllocLabV2ToV4curves(cmsContext ContextID);
cmsStage* _cmsStageAllocLabV4ToV2(cmsContext ContextID);
cmsStage* _cmsStageAllocNamedColor(cmsNAMEDCOLORLIST* NamedColorList, cmsBool UsePCS);
cmsStage* _cmsStageAllocIdentityCurves(cmsContext ContextID, int nChannels);
cmsStage* _cmsStageAllocIdentityCLut(cmsContext ContextID, int nChan);
cmsStage* _cmsStageNormalizeFromLabFloat(cmsContext ContextID);
cmsStage* _cmsStageNormalizeFromXyzFloat(cmsContext ContextID);
cmsStage* _cmsStageNormalizeToLabFloat(cmsContext ContextID);
cmsStage* _cmsStageNormalizeToXyzFloat(cmsContext ContextID);


cmsToneCurve** _cmsStageGetPtrToCurveSet(const cmsStage* mpe);



typedef void (* _cmsPipelineEvalFloatFn)(const cmsFloat32Number In[],
                                         cmsFloat32Number Out[],
                                         const void* Data);

struct _cmsPipeline_struct {

    cmsStage* Elements;
    cmsUInt32Number InputChannels, OutputChannels;


    void *Data;

   _cmsOPTeval16Fn Eval16Fn;
   _cmsPipelineEvalFloatFn EvalFloatFn;
   _cmsFreeUserDataFn FreeDataFn;
   _cmsDupUserDataFn DupDataFn;

    cmsContext ContextID;

    cmsBool SaveAs8Bits;
};






cmsPipeline* _cmsReadInputLUT(cmsHPROFILE hProfile, int Intent);
cmsPipeline* _cmsReadOutputLUT(cmsHPROFILE hProfile, int Intent);
cmsPipeline* _cmsReadDevicelinkLUT(cmsHPROFILE hProfile, int Intent);


cmsBool _cmsReadMediaWhitePoint(cmsCIEXYZ* Dest, cmsHPROFILE hProfile);
cmsBool _cmsReadCHAD(cmsMAT3* Dest, cmsHPROFILE hProfile);



cmsPipeline* _cmsLinkProfiles(cmsContext ContextID,
                              cmsUInt32Number nProfiles,
                              cmsUInt32Number TheIntents[],
                              cmsHPROFILE hProfiles[],
                              cmsBool BPC[],
                              cmsFloat64Number AdaptationStates[],
                              cmsUInt32Number dwFlags);



cmsSEQ* _cmsReadProfileSequence(cmsHPROFILE hProfile);
cmsBool _cmsWriteProfileSequence(cmsHPROFILE hProfile, const cmsSEQ* seq);
cmsSEQ* _cmsCompileProfileSequence(cmsContext ContextID, cmsUInt32Number nProfiles, cmsHPROFILE hProfiles[]);




cmsUInt16Number _cmsQuantizeVal(cmsFloat64Number i, int MaxSamples);
int _cmsReasonableGridpointsByColorspace(cmsColorSpaceSignature Colorspace, cmsUInt32Number dwFlags);

cmsBool _cmsEndPointsBySpace(cmsColorSpaceSignature Space,
                                      cmsUInt16Number **White,
                                      cmsUInt16Number **Black,
                                      cmsUInt32Number *nOutputs);

cmsBool _cmsOptimizePipeline(cmsContext ContextID,
                                      cmsPipeline** Lut,
                                      int Intent,
                                      cmsUInt32Number* InputFormat,
                                      cmsUInt32Number* OutputFormat,
                                      cmsUInt32Number* dwFlags );




cmsPipeline* _cmsCreateGamutCheckPipeline(cmsContext ContextID,
                                              cmsHPROFILE hProfiles[],
                                              cmsBool BPC[],
                                              cmsUInt32Number Intents[],
                                              cmsFloat64Number AdaptationStates[],
                                              cmsUInt32Number nGamutPCSposition,
                                              cmsHPROFILE hGamut);






cmsBool _cmsFormatterIsFloat(cmsUInt32Number Type);
cmsBool _cmsFormatterIs8bit(cmsUInt32Number Type);

cmsFormatter _cmsGetFormatter(cmsContext ContextID,
                                 cmsUInt32Number Type,
                                 cmsFormatterDirection Dir,
                                 cmsUInt32Number dwFlags);





cmsFloat32Number _cmsHalf2Float(cmsUInt16Number h);
cmsUInt16Number _cmsFloat2Half(cmsFloat32Number flt);





struct _cmstransform_struct;

typedef struct {


    cmsUInt16Number CacheIn[16];
    cmsUInt16Number CacheOut[16];

} _cmsCACHE;




typedef struct _cmstransform_struct {

    cmsUInt32Number InputFormat, OutputFormat;


    _cmsTransformFn xform;


    cmsFormatter16 FromInput;
    cmsFormatter16 ToOutput;

    cmsFormatterFloat FromInputFloat;
    cmsFormatterFloat ToOutputFloat;


    _cmsCACHE Cache;


    cmsPipeline* Lut;


    cmsPipeline* GamutCheck;


    cmsNAMEDCOLORLIST* InputColorant;
    cmsNAMEDCOLORLIST* OutputColorant;


    cmsColorSpaceSignature EntryColorSpace;
    cmsColorSpaceSignature ExitColorSpace;


    cmsCIEXYZ EntryWhitePoint;
    cmsCIEXYZ ExitWhitePoint;


    cmsSEQ* Sequence;

    cmsUInt32Number dwOriginalFlags;
    cmsFloat64Number AdaptationState;


    cmsUInt32Number RenderingIntent;


    cmsContext ContextID;


    void* UserData;
    _cmsFreeUserDataFn FreeUserData;

} _cmsTRANSFORM;



cmsHTRANSFORM _cmsChain2Lab(cmsContext ContextID,
                            cmsUInt32Number nProfiles,
                            cmsUInt32Number InputFormat,
                            cmsUInt32Number OutputFormat,
                            const cmsUInt32Number Intents[],
                            const cmsHPROFILE hProfiles[],
                            const cmsBool BPC[],
                            const cmsFloat64Number AdaptationStates[],
                            cmsUInt32Number dwFlags);


cmsToneCurve* _cmsBuildKToneCurve(cmsContext ContextID,
                            cmsUInt32Number nPoints,
                            cmsUInt32Number nProfiles,
                            const cmsUInt32Number Intents[],
                            const cmsHPROFILE hProfiles[],
                            const cmsBool BPC[],
                            const cmsFloat64Number AdaptationStates[],
                            cmsUInt32Number dwFlags);

cmsBool _cmsAdaptationMatrix(cmsMAT3* r, const cmsMAT3* ConeMatrix, const cmsCIEXYZ* FromIll, const cmsCIEXYZ* ToIll);

cmsBool _cmsBuildRGB2XYZtransferMatrix(cmsMAT3* r, const cmsCIExyY* WhitePoint, const cmsCIExyYTRIPLE* Primaries);
# 28 "./lcms2/src/cmstypes.c" 2
# 44 "./lcms2/src/cmstypes.c"
typedef struct _cmsTagTypeLinkedList_st {

    cmsTagTypeHandler Handler;
    struct _cmsTagTypeLinkedList_st* Next;

} _cmsTagTypeLinkedList;
# 64 "./lcms2/src/cmstypes.c"
static
cmsBool RegisterTypesPlugin(cmsContext id, cmsPluginBase* Data, _cmsMemoryClient pos)
{
    cmsPluginTagType* Plugin = (cmsPluginTagType*) Data;
    _cmsTagTypePluginChunkType* ctx = ( _cmsTagTypePluginChunkType*) _cmsContextGetClientChunk(id, pos);
    _cmsTagTypeLinkedList *pt;


    if (Data == ((void*)0)) {


        ctx ->TagTypes = ((void*)0);
        return 1;
    }


    pt = (_cmsTagTypeLinkedList*) _cmsPluginMalloc(id, sizeof(_cmsTagTypeLinkedList));
    if (pt == ((void*)0)) return 0;

    pt ->Handler = Plugin ->Handler;
    pt ->Next = ctx ->TagTypes;

    ctx ->TagTypes = pt;

    return 1;
}



static
cmsTagTypeHandler* GetHandler(cmsTagTypeSignature sig, _cmsTagTypeLinkedList* PluginLinkedList, _cmsTagTypeLinkedList* DefaultLinkedList)
{
    _cmsTagTypeLinkedList* pt;

    for (pt = PluginLinkedList;
         pt != ((void*)0);
         pt = pt ->Next) {

            if (sig == pt -> Handler.Signature) return &pt ->Handler;
    }

    for (pt = DefaultLinkedList;
         pt != ((void*)0);
         pt = pt ->Next) {

            if (sig == pt -> Handler.Signature) return &pt ->Handler;
    }

    return ((void*)0);
}



static
cmsBool _cmsWriteWCharArray(cmsIOHANDLER* io, cmsUInt32Number n, const wchar_t* Array)
{
    cmsUInt32Number i;

    (((io != ((void*)0))) ? (void) (0) : __assert_fail ("(io != ((void*)0))", "./lcms2/src/cmstypes.c", 122, __PRETTY_FUNCTION__));
    (((!(Array == ((void*)0) && n > 0))) ? (void) (0) : __assert_fail ("(!(Array == ((void*)0) && n > 0))", "./lcms2/src/cmstypes.c", 123, __PRETTY_FUNCTION__));

    for (i=0; i < n; i++) {
        if (!_cmsWriteUInt16Number(io, (cmsUInt16Number) Array[i])) return 0;
    }

    return 1;
}


static
cmsBool _cmsReadWCharArray(cmsIOHANDLER* io, cmsUInt32Number n, wchar_t* Array)
{
    cmsUInt32Number i;
    cmsUInt16Number tmp;

    (((io != ((void*)0))) ? (void) (0) : __assert_fail ("(io != ((void*)0))", "./lcms2/src/cmstypes.c", 139, __PRETTY_FUNCTION__));

    for (i=0; i < n; i++) {

        if (Array != ((void*)0)) {

            if (!_cmsReadUInt16Number(io, &tmp)) return 0;
            Array[i] = (wchar_t) tmp;
        }
        else {
            if (!_cmsReadUInt16Number(io, ((void*)0))) return 0;
        }

    }
    return 1;
}


typedef cmsBool (* PositionTableEntryFn)(struct _cms_typehandler_struct* self,
                                             cmsIOHANDLER* io,
                                             void* Cargo,
                                             cmsUInt32Number n,
                                             cmsUInt32Number SizeOfTag);




static
cmsBool ReadPositionTable(struct _cms_typehandler_struct* self,
                              cmsIOHANDLER* io,
                              cmsUInt32Number Count,
                              cmsUInt32Number BaseOffset,
                              void *Cargo,
                              PositionTableEntryFn ElementFn)
{
    cmsUInt32Number i;
    cmsUInt32Number *ElementOffsets = ((void*)0), *ElementSizes = ((void*)0);


    ElementOffsets = (cmsUInt32Number *) _cmsCalloc(io ->ContextID, Count, sizeof(cmsUInt32Number));
    if (ElementOffsets == ((void*)0)) goto Error;

    ElementSizes = (cmsUInt32Number *) _cmsCalloc(io ->ContextID, Count, sizeof(cmsUInt32Number));
    if (ElementSizes == ((void*)0)) goto Error;

    for (i=0; i < Count; i++) {

        if (!_cmsReadUInt32Number(io, &ElementOffsets[i])) goto Error;
        if (!_cmsReadUInt32Number(io, &ElementSizes[i])) goto Error;

        ElementOffsets[i] += BaseOffset;
    }


    for (i=0; i < Count; i++) {

        if (!io -> Seek(io, ElementOffsets[i])) goto Error;


        if (!ElementFn(self, io, Cargo, i, ElementSizes[i])) goto Error;
    }


    if (ElementOffsets != ((void*)0)) _cmsFree(io ->ContextID, ElementOffsets);
    if (ElementSizes != ((void*)0)) _cmsFree(io ->ContextID, ElementSizes);
    return 1;

Error:
    if (ElementOffsets != ((void*)0)) _cmsFree(io ->ContextID, ElementOffsets);
    if (ElementSizes != ((void*)0)) _cmsFree(io ->ContextID, ElementSizes);
    return 0;
}


static
cmsBool WritePositionTable(struct _cms_typehandler_struct* self,
                               cmsIOHANDLER* io,
                               cmsUInt32Number SizeOfTag,
                               cmsUInt32Number Count,
                               cmsUInt32Number BaseOffset,
                               void *Cargo,
                               PositionTableEntryFn ElementFn)
{
    cmsUInt32Number i;
    cmsUInt32Number DirectoryPos, CurrentPos, Before;
    cmsUInt32Number *ElementOffsets = ((void*)0), *ElementSizes = ((void*)0);


    ElementOffsets = (cmsUInt32Number *) _cmsCalloc(io ->ContextID, Count, sizeof(cmsUInt32Number));
    if (ElementOffsets == ((void*)0)) goto Error;

    ElementSizes = (cmsUInt32Number *) _cmsCalloc(io ->ContextID, Count, sizeof(cmsUInt32Number));
    if (ElementSizes == ((void*)0)) goto Error;


    DirectoryPos = io ->Tell(io);


    for (i=0; i < Count; i++) {

        if (!_cmsWriteUInt32Number(io, 0)) goto Error;
        if (!_cmsWriteUInt32Number(io, 0)) goto Error;
    }


    for (i=0; i < Count; i++) {

        Before = io ->Tell(io);
        ElementOffsets[i] = Before - BaseOffset;


        if (!ElementFn(self, io, Cargo, i, SizeOfTag)) goto Error;


        ElementSizes[i] = io ->Tell(io) - Before;
    }


    CurrentPos = io ->Tell(io);
    if (!io ->Seek(io, DirectoryPos)) goto Error;

    for (i=0; i < Count; i++) {
        if (!_cmsWriteUInt32Number(io, ElementOffsets[i])) goto Error;
        if (!_cmsWriteUInt32Number(io, ElementSizes[i])) goto Error;
    }

    if (!io ->Seek(io, CurrentPos)) goto Error;

    if (ElementOffsets != ((void*)0)) _cmsFree(io ->ContextID, ElementOffsets);
    if (ElementSizes != ((void*)0)) _cmsFree(io ->ContextID, ElementSizes);
    return 1;

Error:
    if (ElementOffsets != ((void*)0)) _cmsFree(io ->ContextID, ElementOffsets);
    if (ElementSizes != ((void*)0)) _cmsFree(io ->ContextID, ElementSizes);
    return 0;
}
# 287 "./lcms2/src/cmstypes.c"
static
void *Type_XYZ_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsCIEXYZ* xyz;

    *nItems = 0;
    xyz = (cmsCIEXYZ*) _cmsMallocZero(self ->ContextID, sizeof(cmsCIEXYZ));
    if (xyz == ((void*)0)) return ((void*)0);

    if (!_cmsReadXYZNumber(io, xyz)) {
        _cmsFree(self ->ContextID, xyz);
        return ((void*)0);
    }

    *nItems = 1;
    return (void*) xyz;

    ((void)SizeOfTag);
}

static
cmsBool Type_XYZ_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    return _cmsWriteXYZNumber(io, (cmsCIEXYZ*) Ptr);

    ((void)nItems);
    ((void)self);
}

static
void* Type_XYZ_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return _cmsDupMem(self ->ContextID, Ptr, sizeof(cmsCIEXYZ));

    ((void)n);
}

static
void Type_XYZ_Free(struct _cms_typehandler_struct* self, void *Ptr)
{
    _cmsFree(self ->ContextID, Ptr);
}


static
cmsTagTypeSignature DecideXYZtype(cmsFloat64Number ICCVersion, const void *Data)
{
    return cmsSigXYZType;

    ((void)ICCVersion);
    ((void)Data);
}
# 347 "./lcms2/src/cmstypes.c"
static
void *Type_Chromaticity_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsCIExyYTRIPLE* chrm;
    cmsUInt16Number nChans, Table;

    *nItems = 0;
    chrm = (cmsCIExyYTRIPLE*) _cmsMallocZero(self ->ContextID, sizeof(cmsCIExyYTRIPLE));
    if (chrm == ((void*)0)) return ((void*)0);

    if (!_cmsReadUInt16Number(io, &nChans)) goto Error;


    if (nChans == 0 && SizeOfTag == 32) {

        if (!_cmsReadUInt16Number(io, ((void*)0))) goto Error;
        if (!_cmsReadUInt16Number(io, &nChans)) goto Error;
    }

    if (nChans != 3) goto Error;

    if (!_cmsReadUInt16Number(io, &Table)) goto Error;

    if (!_cmsRead15Fixed16Number(io, &chrm ->Red.x)) goto Error;
    if (!_cmsRead15Fixed16Number(io, &chrm ->Red.y)) goto Error;

    chrm ->Red.Y = 1.0;

    if (!_cmsRead15Fixed16Number(io, &chrm ->Green.x)) goto Error;
    if (!_cmsRead15Fixed16Number(io, &chrm ->Green.y)) goto Error;

    chrm ->Green.Y = 1.0;

    if (!_cmsRead15Fixed16Number(io, &chrm ->Blue.x)) goto Error;
    if (!_cmsRead15Fixed16Number(io, &chrm ->Blue.y)) goto Error;

    chrm ->Blue.Y = 1.0;

    *nItems = 1;
    return (void*) chrm;

Error:
    _cmsFree(self ->ContextID, (void*) chrm);
    return ((void*)0);

    ((void)SizeOfTag);
}

static
cmsBool SaveOneChromaticity(cmsFloat64Number x, cmsFloat64Number y, cmsIOHANDLER* io)
{
    if (!_cmsWriteUInt32Number(io, _cmsDoubleTo15Fixed16(x))) return 0;
    if (!_cmsWriteUInt32Number(io, _cmsDoubleTo15Fixed16(y))) return 0;

    return 1;
}

static
cmsBool Type_Chromaticity_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsCIExyYTRIPLE* chrm = (cmsCIExyYTRIPLE*) Ptr;

    if (!_cmsWriteUInt16Number(io, 3)) return 0;
    if (!_cmsWriteUInt16Number(io, 0)) return 0;

    if (!SaveOneChromaticity(chrm -> Red.x, chrm -> Red.y, io)) return 0;
    if (!SaveOneChromaticity(chrm -> Green.x, chrm -> Green.y, io)) return 0;
    if (!SaveOneChromaticity(chrm -> Blue.x, chrm -> Blue.y, io)) return 0;

    return 1;

    ((void)nItems);
    ((void)self);
}

static
void* Type_Chromaticity_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return _cmsDupMem(self ->ContextID, Ptr, sizeof(cmsCIExyYTRIPLE));

    ((void)n);
}

static
void Type_Chromaticity_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    _cmsFree(self ->ContextID, Ptr);
}
# 449 "./lcms2/src/cmstypes.c"
static
void *Type_ColorantOrderType_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt8Number* ColorantOrder;
    cmsUInt32Number Count;

    *nItems = 0;
    if (!_cmsReadUInt32Number(io, &Count)) return ((void*)0);
    if (Count > 16) return ((void*)0);

    ColorantOrder = (cmsUInt8Number*) _cmsCalloc(self ->ContextID, 16, sizeof(cmsUInt8Number));
    if (ColorantOrder == ((void*)0)) return ((void*)0);


    memset(ColorantOrder, 0xFF, 16 * sizeof(cmsUInt8Number));

    if (io ->Read(io, ColorantOrder, sizeof(cmsUInt8Number), Count) != Count) {

        _cmsFree(self ->ContextID, (void*) ColorantOrder);
        return ((void*)0);
    }

    *nItems = 1;
    return (void*) ColorantOrder;

    ((void)SizeOfTag);
}

static
cmsBool Type_ColorantOrderType_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUInt8Number* ColorantOrder = (cmsUInt8Number*) Ptr;
    cmsUInt32Number i, sz, Count;


    for (Count=i=0; i < 16; i++) {
        if (ColorantOrder[i] != 0xFF) Count++;
    }

    if (!_cmsWriteUInt32Number(io, Count)) return 0;

    sz = Count * sizeof(cmsUInt8Number);
    if (!io -> Write(io, sz, ColorantOrder)) return 0;

    return 1;

    ((void)nItems);
    ((void)self);
}

static
void* Type_ColorantOrderType_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return _cmsDupMem(self ->ContextID, Ptr, 16 * sizeof(cmsUInt8Number));

    ((void)n);
}


static
void Type_ColorantOrderType_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    _cmsFree(self ->ContextID, Ptr);
}







static
void *Type_S15Fixed16_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsFloat64Number* array_double;
    cmsUInt32Number i, n;

    *nItems = 0;
    n = SizeOfTag / sizeof(cmsUInt32Number);
    array_double = (cmsFloat64Number*) _cmsCalloc(self ->ContextID, n, sizeof(cmsFloat64Number));
    if (array_double == ((void*)0)) return ((void*)0);

    for (i=0; i < n; i++) {

        if (!_cmsRead15Fixed16Number(io, &array_double[i])) {

            _cmsFree(self ->ContextID, array_double);
            return ((void*)0);
        }
    }

    *nItems = n;
    return (void*) array_double;
}

static
cmsBool Type_S15Fixed16_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsFloat64Number* Value = (cmsFloat64Number*) Ptr;
    cmsUInt32Number i;

    for (i=0; i < nItems; i++) {

        if (!_cmsWrite15Fixed16Number(io, Value[i])) return 0;
    }

    return 1;

    ((void)self);
}

static
void* Type_S15Fixed16_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return _cmsDupMem(self ->ContextID, Ptr, n * sizeof(cmsFloat64Number));
}


static
void Type_S15Fixed16_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    _cmsFree(self ->ContextID, Ptr);
}
# 580 "./lcms2/src/cmstypes.c"
static
void *Type_U16Fixed16_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsFloat64Number* array_double;
    cmsUInt32Number v;
    cmsUInt32Number i, n;

    *nItems = 0;
    n = SizeOfTag / sizeof(cmsUInt32Number);
    array_double = (cmsFloat64Number*) _cmsCalloc(self ->ContextID, n, sizeof(cmsFloat64Number));
    if (array_double == ((void*)0)) return ((void*)0);

    for (i=0; i < n; i++) {

        if (!_cmsReadUInt32Number(io, &v)) {
            _cmsFree(self ->ContextID, (void*) array_double);
            return ((void*)0);
        }


        array_double[i] = (cmsFloat64Number) (v / 65536.0);
    }

    *nItems = n;
    return (void*) array_double;
}

static
cmsBool Type_U16Fixed16_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsFloat64Number* Value = (cmsFloat64Number*) Ptr;
    cmsUInt32Number i;

    for (i=0; i < nItems; i++) {

        cmsUInt32Number v = (cmsUInt32Number) floor(Value[i]*65536.0 + 0.5);

        if (!_cmsWriteUInt32Number(io, v)) return 0;
    }

    return 1;

    ((void)self);
}


static
void* Type_U16Fixed16_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return _cmsDupMem(self ->ContextID, Ptr, n * sizeof(cmsFloat64Number));
}

static
void Type_U16Fixed16_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    _cmsFree(self ->ContextID, Ptr);
}
# 647 "./lcms2/src/cmstypes.c"
static
void *Type_Signature_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsSignature* SigPtr = (cmsSignature*) _cmsMalloc(self ->ContextID, sizeof(cmsSignature));
    if (SigPtr == ((void*)0)) return ((void*)0);

     if (!_cmsReadUInt32Number(io, SigPtr)) return ((void*)0);
     *nItems = 1;

     return SigPtr;

     ((void)SizeOfTag);
}

static
cmsBool Type_Signature_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsSignature* SigPtr = (cmsSignature*) Ptr;

    return _cmsWriteUInt32Number(io, *SigPtr);

    ((void)nItems);
    ((void)self);
}

static
void* Type_Signature_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return _cmsDupMem(self ->ContextID, Ptr, n * sizeof(cmsSignature));
}

static
void Type_Signature_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    _cmsFree(self ->ContextID, Ptr);
}
# 693 "./lcms2/src/cmstypes.c"
static
void *Type_Text_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    char* Text = ((void*)0);
    cmsMLU* mlu = ((void*)0);


    mlu = cmsMLUalloc(self ->ContextID, 1);
    if (mlu == ((void*)0)) return ((void*)0);

    *nItems = 0;


    if (SizeOfTag == (2147483647 *2U +1U)) goto Error;

    Text = (char*) _cmsMalloc(self ->ContextID, SizeOfTag + 1);
    if (Text == ((void*)0)) goto Error;

    if (io -> Read(io, Text, sizeof(char), SizeOfTag) != SizeOfTag) goto Error;


    Text[SizeOfTag] = 0;
    *nItems = 1;


    if (!cmsMLUsetASCII(mlu, "\0\0", "\0\0", Text)) goto Error;

    _cmsFree(self ->ContextID, Text);
    return (void*) mlu;

Error:
    if (mlu != ((void*)0))
        cmsMLUfree(mlu);
    if (Text != ((void*)0))
        _cmsFree(self ->ContextID, Text);

    return ((void*)0);
}


static
cmsBool Type_Text_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsMLU* mlu = (cmsMLU*) Ptr;
    cmsUInt32Number size;
    cmsBool rc;
    char* Text;


    size = cmsMLUgetASCII(mlu, "\0\0", "\0\0", ((void*)0), 0);
    if (size == 0) return 0;


    Text = (char*) _cmsMalloc(self ->ContextID, size);
    if (Text == ((void*)0)) return 0;

    cmsMLUgetASCII(mlu, "\0\0", "\0\0", Text, size);


    rc = io ->Write(io, size, Text);

    _cmsFree(self ->ContextID, Text);
    return rc;

    ((void)nItems);
}

static
void* Type_Text_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return (void*) cmsMLUdup((cmsMLU*) Ptr);

    ((void)n);
    ((void)self);
}


static
void Type_Text_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsMLU* mlu = (cmsMLU*) Ptr;
    cmsMLUfree(mlu);
    return;

    ((void)self);
}

static
cmsTagTypeSignature DecideTextType(cmsFloat64Number ICCVersion, const void *Data)
{
    if (ICCVersion >= 4.0)
        return cmsSigMultiLocalizedUnicodeType;

    return cmsSigTextType;

    ((void)Data);
}







static
void *Type_Data_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsICCData* BinData;
    cmsUInt32Number LenOfData;

    *nItems = 0;

    if (SizeOfTag < sizeof(cmsUInt32Number)) return ((void*)0);

    LenOfData = SizeOfTag - sizeof(cmsUInt32Number);
    if (LenOfData > 2147483647) return ((void*)0);

    BinData = (cmsICCData*) _cmsMalloc(self ->ContextID, sizeof(cmsICCData) + LenOfData - 1);
    if (BinData == ((void*)0)) return ((void*)0);

    BinData ->len = LenOfData;
    if (!_cmsReadUInt32Number(io, &BinData->flag)) {
        _cmsFree(self ->ContextID, BinData);
        return ((void*)0);
    }

    if (io -> Read(io, BinData ->data, sizeof(cmsUInt8Number), LenOfData) != LenOfData) {

        _cmsFree(self ->ContextID, BinData);
        return ((void*)0);
    }

    *nItems = 1;

    return (void*) BinData;
}


static
cmsBool Type_Data_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
   cmsICCData* BinData = (cmsICCData*) Ptr;

   if (!_cmsWriteUInt32Number(io, BinData ->flag)) return 0;

   return io ->Write(io, BinData ->len, BinData ->data);

   ((void)nItems);
   ((void)self);
}


static
void* Type_Data_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    cmsICCData* BinData = (cmsICCData*) Ptr;

    return _cmsDupMem(self ->ContextID, Ptr, sizeof(cmsICCData) + BinData ->len - 1);

    ((void)n);
}

static
void Type_Data_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    _cmsFree(self ->ContextID, Ptr);
}





static
void *Type_Text_Description_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    char* Text = ((void*)0);
    cmsMLU* mlu = ((void*)0);
    cmsUInt32Number AsciiCount;
    cmsUInt32Number i, UnicodeCode, UnicodeCount;
    cmsUInt16Number ScriptCodeCode, Dummy;
    cmsUInt8Number ScriptCodeCount;

    *nItems = 0;


    if (SizeOfTag < sizeof(cmsUInt32Number)) return ((void*)0);


    if (!_cmsReadUInt32Number(io, &AsciiCount)) return ((void*)0);
    SizeOfTag -= sizeof(cmsUInt32Number);


    if (SizeOfTag < AsciiCount) return ((void*)0);


    mlu = cmsMLUalloc(self ->ContextID, 1);
    if (mlu == ((void*)0)) return ((void*)0);


    Text = (char*) _cmsMalloc(self ->ContextID, AsciiCount + 1);
    if (Text == ((void*)0)) goto Error;


    if (io ->Read(io, Text, sizeof(char), AsciiCount) != AsciiCount) goto Error;
    SizeOfTag -= AsciiCount;


    Text[AsciiCount] = 0;


    if (!cmsMLUsetASCII(mlu, "\0\0", "\0\0", Text)) goto Error;
    _cmsFree(self ->ContextID, (void*) Text);
    Text = ((void*)0);


    if (SizeOfTag < 2* sizeof(cmsUInt32Number)) goto Done;
    if (!_cmsReadUInt32Number(io, &UnicodeCode)) goto Done;
    if (!_cmsReadUInt32Number(io, &UnicodeCount)) goto Done;
    SizeOfTag -= 2* sizeof(cmsUInt32Number);

    if (SizeOfTag < UnicodeCount*sizeof(cmsUInt16Number)) goto Done;

    for (i=0; i < UnicodeCount; i++) {
        if (!io ->Read(io, &Dummy, sizeof(cmsUInt16Number), 1)) goto Done;
    }
    SizeOfTag -= UnicodeCount*sizeof(cmsUInt16Number);





    if (SizeOfTag >= sizeof(cmsUInt16Number) + sizeof(cmsUInt8Number) + 67) {

        if (!_cmsReadUInt16Number(io, &ScriptCodeCode)) goto Done;
        if (!_cmsReadUInt8Number(io, &ScriptCodeCount)) goto Done;


        for (i=0; i < 67; i++) {
            if (!io ->Read(io, &Dummy, sizeof(cmsUInt8Number), 1)) goto Error;
        }
    }

Done:

    *nItems = 1;
    return mlu;

Error:
    if (Text) _cmsFree(self ->ContextID, (void*) Text);
    if (mlu) cmsMLUfree(mlu);
    return ((void*)0);
}



static
cmsBool Type_Text_Description_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsMLU* mlu = (cmsMLU*) Ptr;
    char *Text = ((void*)0);
    wchar_t *Wide = ((void*)0);
    cmsUInt32Number len, len_aligned, len_filler_alignment;
    cmsBool rc = 0;
    char Filler[68];


    memset(Filler, 0, sizeof(Filler));


    len = cmsMLUgetASCII(mlu, "\0\0", "\0\0", ((void*)0), 0);
# 973 "./lcms2/src/cmstypes.c"
    len_aligned = (((len)+(sizeof(cmsUInt32Number)-1)) & ~(sizeof(cmsUInt32Number)-1));
    len_filler_alignment = len_aligned - len;


    if (len <= 0) {

        Text = (char*) _cmsDupMem(self ->ContextID, "", sizeof(char));
        Wide = (wchar_t*) _cmsDupMem(self ->ContextID, L"", sizeof(wchar_t));
    }
    else {

        Text = (char*) _cmsCalloc(self ->ContextID, len, sizeof(char));
        if (Text == ((void*)0)) goto Error;

        Wide = (wchar_t*) _cmsCalloc(self ->ContextID, len, sizeof(wchar_t));
        if (Wide == ((void*)0)) goto Error;


        cmsMLUgetASCII(mlu, "\0\0", "\0\0", Text, len * sizeof(char));
        cmsMLUgetWide(mlu, "\0\0", "\0\0", Wide, len * sizeof(wchar_t));
    }
# 1004 "./lcms2/src/cmstypes.c"
    if (!_cmsWriteUInt32Number(io, len_aligned)) goto Error;
    if (!io ->Write(io, len, Text)) goto Error;
    if (!io ->Write(io, len_filler_alignment, Filler)) goto Error;

    if (!_cmsWriteUInt32Number(io, 0)) goto Error;




    if (!_cmsWriteUInt32Number(io, len_aligned+1)) goto Error;


    if (!_cmsWriteWCharArray(io, len, Wide)) goto Error;
    if (!_cmsWriteUInt16Array(io, len_filler_alignment+1, (cmsUInt16Number*) Filler)) goto Error;


    if (!_cmsWriteUInt16Number(io, 0)) goto Error;
    if (!_cmsWriteUInt8Number(io, 0)) goto Error;

    if (!io ->Write(io, 67, Filler)) goto Error;

    rc = 1;

Error:
    if (Text) _cmsFree(self ->ContextID, Text);
    if (Wide) _cmsFree(self ->ContextID, Wide);

    return rc;

    ((void)nItems);
}


static
void* Type_Text_Description_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return (void*) cmsMLUdup((cmsMLU*) Ptr);

    ((void)n);
    ((void)self);
}

static
void Type_Text_Description_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsMLU* mlu = (cmsMLU*) Ptr;

    cmsMLUfree(mlu);
    return;

    ((void)self);
}


static
cmsTagTypeSignature DecideTextDescType(cmsFloat64Number ICCVersion, const void *Data)
{
    if (ICCVersion >= 4.0)
        return cmsSigMultiLocalizedUnicodeType;

    return cmsSigTextDescriptionType;

    ((void)Data);
}






static
void *Type_Curve_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt32Number Count;
    cmsToneCurve* NewGamma;

    *nItems = 0;
    if (!_cmsReadUInt32Number(io, &Count)) return ((void*)0);

    switch (Count) {

           case 0:
               {
                   cmsFloat64Number SingleGamma = 1.0;

                   NewGamma = cmsBuildParametricToneCurve(self ->ContextID, 1, &SingleGamma);
                   if (!NewGamma) return ((void*)0);
                   *nItems = 1;
                   return NewGamma;
               }

           case 1:
               {
                   cmsUInt16Number SingleGammaFixed;
                   cmsFloat64Number SingleGamma;

                   if (!_cmsReadUInt16Number(io, &SingleGammaFixed)) return ((void*)0);
                   SingleGamma = _cms8Fixed8toDouble(SingleGammaFixed);

                   *nItems = 1;
                   return cmsBuildParametricToneCurve(self ->ContextID, 1, &SingleGamma);
               }

           default:

               if (Count > 0x7FFF)
                   return ((void*)0);

               NewGamma = cmsBuildTabulatedToneCurve16(self ->ContextID, Count, ((void*)0));
               if (!NewGamma) return ((void*)0);

               if (!_cmsReadUInt16Array(io, Count, NewGamma -> Table16)) return ((void*)0);

               *nItems = 1;
               return NewGamma;
    }

    ((void)SizeOfTag);
}


static
cmsBool Type_Curve_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsToneCurve* Curve = (cmsToneCurve*) Ptr;

    if (Curve ->nSegments == 1 && Curve ->Segments[0].Type == 1) {


            cmsUInt16Number SingleGammaFixed = _cmsDoubleTo8Fixed8(Curve ->Segments[0].Params[0]);

            if (!_cmsWriteUInt32Number(io, 1)) return 0;
            if (!_cmsWriteUInt16Number(io, SingleGammaFixed)) return 0;
            return 1;

    }

    if (!_cmsWriteUInt32Number(io, Curve ->nEntries)) return 0;
    return _cmsWriteUInt16Array(io, Curve ->nEntries, Curve ->Table16);

    ((void)nItems);
    ((void)self);
}


static
void* Type_Curve_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return (void*) cmsDupToneCurve((cmsToneCurve*) Ptr);

    ((void)n);
    ((void)self);
}

static
void Type_Curve_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsToneCurve* gamma = (cmsToneCurve*) Ptr;

    cmsFreeToneCurve(gamma);
    return;

    ((void)self);
}
# 1176 "./lcms2/src/cmstypes.c"
static
cmsTagTypeSignature DecideCurveType(cmsFloat64Number ICCVersion, const void *Data)
{
    cmsToneCurve* Curve = (cmsToneCurve*) Data;

    if (ICCVersion < 4.0) return cmsSigCurveType;
    if (Curve ->nSegments != 1) return cmsSigCurveType;
    if (Curve ->Segments[0].Type < 0) return cmsSigCurveType;
    if (Curve ->Segments[0].Type > 5) return cmsSigCurveType;

    return cmsSigParametricCurveType;
}

static
void *Type_ParametricCurve_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    static const int ParamsByType[] = { 1, 3, 4, 5, 7 };
    cmsFloat64Number Params[10];
    cmsUInt16Number Type;
    int i, n;
    cmsToneCurve* NewGamma;

    if (!_cmsReadUInt16Number(io, &Type)) return ((void*)0);
    if (!_cmsReadUInt16Number(io, ((void*)0))) return ((void*)0);

    if (Type > 4) {

        cmsSignalError(self->ContextID, 8, "Unknown parametric curve type '%d'", Type);
        return ((void*)0);
    }

    memset(Params, 0, sizeof(Params));
    n = ParamsByType[Type];

    for (i=0; i < n; i++) {

        if (!_cmsRead15Fixed16Number(io, &Params[i])) return ((void*)0);
    }

    NewGamma = cmsBuildParametricToneCurve(self ->ContextID, Type+1, Params);

    *nItems = 1;
    return NewGamma;

    ((void)SizeOfTag);
}


static
cmsBool Type_ParametricCurve_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsToneCurve* Curve = (cmsToneCurve*) Ptr;
    int i, nParams, typen;
    static const int ParamsByType[] = { 0, 1, 3, 4, 5, 7 };

    typen = Curve -> Segments[0].Type;

    if (Curve ->nSegments > 1 || typen < 1) {

        cmsSignalError(self->ContextID, 8, "Multisegment or Inverted parametric curves cannot be written");
        return 0;
    }

    if (typen > 5) {
        cmsSignalError(self->ContextID, 8, "Unsupported parametric curve");
        return 0;
    }

    nParams = ParamsByType[typen];

    if (!_cmsWriteUInt16Number(io, (cmsUInt16Number) (Curve ->Segments[0].Type - 1))) return 0;
    if (!_cmsWriteUInt16Number(io, 0)) return 0;

    for (i=0; i < nParams; i++) {

        if (!_cmsWrite15Fixed16Number(io, Curve -> Segments[0].Params[i])) return 0;
    }

    return 1;

    ((void)nItems);
}

static
void* Type_ParametricCurve_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return (void*) cmsDupToneCurve((cmsToneCurve*) Ptr);

    ((void)n);
    ((void)self);
}

static
void Type_ParametricCurve_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsToneCurve* gamma = (cmsToneCurve*) Ptr;

    cmsFreeToneCurve(gamma);
    return;

    ((void)self);
}
# 1294 "./lcms2/src/cmstypes.c"
static
void *Type_DateTime_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsDateTimeNumber timestamp;
    struct tm * NewDateTime;

    *nItems = 0;
    NewDateTime = (struct tm*) _cmsMalloc(self ->ContextID, sizeof(struct tm));
    if (NewDateTime == ((void*)0)) return ((void*)0);

    if (io->Read(io, &timestamp, sizeof(cmsDateTimeNumber), 1) != 1) return ((void*)0);

     _cmsDecodeDateTimeNumber(&timestamp, NewDateTime);

     *nItems = 1;
     return NewDateTime;

     ((void)SizeOfTag);
}


static
cmsBool Type_DateTime_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    struct tm * DateTime = (struct tm*) Ptr;
    cmsDateTimeNumber timestamp;

    _cmsEncodeDateTimeNumber(&timestamp, DateTime);
    if (!io ->Write(io, sizeof(cmsDateTimeNumber), &timestamp)) return 0;

    return 1;

    ((void)nItems);
    ((void)self);
}

static
void* Type_DateTime_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return _cmsDupMem(self ->ContextID, Ptr, sizeof(struct tm));

    ((void)n);
}

static
void Type_DateTime_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    _cmsFree(self ->ContextID, Ptr);
}
# 1356 "./lcms2/src/cmstypes.c"
static
void *Type_Measurement_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsICCMeasurementConditions mc;


    memset(&mc, 0, sizeof(mc));

    if (!_cmsReadUInt32Number(io, &mc.Observer)) return ((void*)0);
    if (!_cmsReadXYZNumber(io, &mc.Backing)) return ((void*)0);
    if (!_cmsReadUInt32Number(io, &mc.Geometry)) return ((void*)0);
    if (!_cmsRead15Fixed16Number(io, &mc.Flare)) return ((void*)0);
    if (!_cmsReadUInt32Number(io, &mc.IlluminantType)) return ((void*)0);

    *nItems = 1;
    return _cmsDupMem(self ->ContextID, &mc, sizeof(cmsICCMeasurementConditions));

    ((void)SizeOfTag);
}


static
cmsBool Type_Measurement_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsICCMeasurementConditions* mc =(cmsICCMeasurementConditions*) Ptr;

    if (!_cmsWriteUInt32Number(io, mc->Observer)) return 0;
    if (!_cmsWriteXYZNumber(io, &mc->Backing)) return 0;
    if (!_cmsWriteUInt32Number(io, mc->Geometry)) return 0;
    if (!_cmsWrite15Fixed16Number(io, mc->Flare)) return 0;
    if (!_cmsWriteUInt32Number(io, mc->IlluminantType)) return 0;

    return 1;

    ((void)nItems);
    ((void)self);
}

static
void* Type_Measurement_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
     return _cmsDupMem(self ->ContextID, Ptr, sizeof(cmsICCMeasurementConditions));

     ((void)n);
}

static
void Type_Measurement_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
   _cmsFree(self ->ContextID, Ptr);
}
# 1418 "./lcms2/src/cmstypes.c"
static
void *Type_MLU_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsMLU* mlu;
    cmsUInt32Number Count, RecLen, NumOfWchar;
    cmsUInt32Number SizeOfHeader;
    cmsUInt32Number Len, Offset;
    cmsUInt32Number i;
    wchar_t* Block;
    cmsUInt32Number BeginOfThisString, EndOfThisString, LargestPosition;

    *nItems = 0;
    if (!_cmsReadUInt32Number(io, &Count)) return ((void*)0);
    if (!_cmsReadUInt32Number(io, &RecLen)) return ((void*)0);

    if (RecLen != 12) {

        cmsSignalError(self->ContextID, 8, "multiLocalizedUnicodeType of len != 12 is not supported.");
        return ((void*)0);
    }

    mlu = cmsMLUalloc(self ->ContextID, Count);
    if (mlu == ((void*)0)) return ((void*)0);

    mlu ->UsedEntries = Count;

    SizeOfHeader = 12 * Count + sizeof(_cmsTagBase);
    LargestPosition = 0;

    for (i=0; i < Count; i++) {

        if (!_cmsReadUInt16Number(io, &mlu ->Entries[i].Language)) goto Error;
        if (!_cmsReadUInt16Number(io, &mlu ->Entries[i].Country)) goto Error;


        if (!_cmsReadUInt32Number(io, &Len)) goto Error;
        if (!_cmsReadUInt32Number(io, &Offset)) goto Error;


        if (Offset < (SizeOfHeader + 8)) goto Error;


        BeginOfThisString = Offset - SizeOfHeader - 8;


        mlu ->Entries[i].Len = (Len * sizeof(wchar_t)) / sizeof(cmsUInt16Number);
        mlu ->Entries[i].StrW = (BeginOfThisString * sizeof(wchar_t)) / sizeof(cmsUInt16Number);


        EndOfThisString = BeginOfThisString + Len;
        if (EndOfThisString > LargestPosition)
            LargestPosition = EndOfThisString;
    }


    SizeOfTag = (LargestPosition * sizeof(wchar_t)) / sizeof(cmsUInt16Number);
    if (SizeOfTag == 0)
    {
        Block = ((void*)0);
        NumOfWchar = 0;

    }
    else
    {
        Block = (wchar_t*) _cmsMalloc(self ->ContextID, SizeOfTag);
        if (Block == ((void*)0)) goto Error;
        NumOfWchar = SizeOfTag / sizeof(wchar_t);
        if (!_cmsReadWCharArray(io, NumOfWchar, Block)) goto Error;
    }

    mlu ->MemPool = Block;
    mlu ->PoolSize = SizeOfTag;
    mlu ->PoolUsed = SizeOfTag;

    *nItems = 1;
    return (void*) mlu;

Error:
    if (mlu) cmsMLUfree(mlu);
    return ((void*)0);
}

static
cmsBool Type_MLU_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsMLU* mlu =(cmsMLU*) Ptr;
    cmsUInt32Number HeaderSize;
    cmsUInt32Number Len, Offset;
    int i;

    if (Ptr == ((void*)0)) {


          if (!_cmsWriteUInt32Number(io, 0)) return 0;
          if (!_cmsWriteUInt32Number(io, 12)) return 0;
          return 1;
    }

    if (!_cmsWriteUInt32Number(io, mlu ->UsedEntries)) return 0;
    if (!_cmsWriteUInt32Number(io, 12)) return 0;

    HeaderSize = 12 * mlu ->UsedEntries + sizeof(_cmsTagBase);

    for (i=0; i < mlu ->UsedEntries; i++) {

        Len = mlu ->Entries[i].Len;
        Offset = mlu ->Entries[i].StrW;

        Len = (Len * sizeof(cmsUInt16Number)) / sizeof(wchar_t);
        Offset = (Offset * sizeof(cmsUInt16Number)) / sizeof(wchar_t) + HeaderSize + 8;

        if (!_cmsWriteUInt16Number(io, mlu ->Entries[i].Language)) return 0;
        if (!_cmsWriteUInt16Number(io, mlu ->Entries[i].Country)) return 0;
        if (!_cmsWriteUInt32Number(io, Len)) return 0;
        if (!_cmsWriteUInt32Number(io, Offset)) return 0;
    }

    if (!_cmsWriteWCharArray(io, mlu ->PoolUsed / sizeof(wchar_t), (wchar_t*) mlu ->MemPool)) return 0;

    return 1;

    ((void)nItems);
    ((void)self);
}


static
void* Type_MLU_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return (void*) cmsMLUdup((cmsMLU*) Ptr);

    ((void)n);
    ((void)self);
}

static
void Type_MLU_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsMLUfree((cmsMLU*) Ptr);
    return;

    ((void)self);
}







static
cmsTagTypeSignature DecideLUTtypeA2B(cmsFloat64Number ICCVersion, const void *Data)
{
    cmsPipeline* Lut = (cmsPipeline*) Data;

    if (ICCVersion < 4.0) {
        if (Lut ->SaveAs8Bits) return cmsSigLut8Type;
        return cmsSigLut16Type;
    }
    else {
         return cmsSigLutAtoBType;
    }
}

static
cmsTagTypeSignature DecideLUTtypeB2A(cmsFloat64Number ICCVersion, const void *Data)
{
    cmsPipeline* Lut = (cmsPipeline*) Data;

    if (ICCVersion < 4.0) {
        if (Lut ->SaveAs8Bits) return cmsSigLut8Type;
        return cmsSigLut16Type;
    }
    else {
         return cmsSigLutBtoAType;
    }
}
# 1615 "./lcms2/src/cmstypes.c"
static
cmsBool Read8bitTables(cmsContext ContextID, cmsIOHANDLER* io, cmsPipeline* lut, int nChannels)
{
    cmsUInt8Number* Temp = ((void*)0);
    int i, j;
    cmsToneCurve* Tables[16];

    if (nChannels > 16) return 0;
    if (nChannels <= 0) return 0;

    memset(Tables, 0, sizeof(Tables));

    Temp = (cmsUInt8Number*) _cmsMalloc(ContextID, 256);
    if (Temp == ((void*)0)) return 0;

    for (i=0; i < nChannels; i++) {
        Tables[i] = cmsBuildTabulatedToneCurve16(ContextID, 256, ((void*)0));
        if (Tables[i] == ((void*)0)) goto Error;
    }

    for (i=0; i < nChannels; i++) {

        if (io ->Read(io, Temp, 256, 1) != 1) goto Error;

        for (j=0; j < 256; j++)
            Tables[i]->Table16[j] = (cmsUInt16Number) (cmsUInt16Number) ((((cmsUInt16Number) (Temp[j])) << 8)|(Temp[j]));
    }

    _cmsFree(ContextID, Temp);
    Temp = ((void*)0);

    if (!cmsPipelineInsertStage(lut, cmsAT_END, cmsStageAllocToneCurves(ContextID, nChannels, Tables)))
        goto Error;

    for (i=0; i < nChannels; i++)
        cmsFreeToneCurve(Tables[i]);

    return 1;

Error:
    for (i=0; i < nChannels; i++) {
        if (Tables[i]) cmsFreeToneCurve(Tables[i]);
    }

    if (Temp) _cmsFree(ContextID, Temp);
    return 0;
}


static
cmsBool Write8bitTables(cmsContext ContextID, cmsIOHANDLER* io, cmsUInt32Number n, _cmsStageToneCurvesData* Tables)
{
    int j;
    cmsUInt32Number i;
    cmsUInt8Number val;

    for (i=0; i < n; i++) {

        if (Tables) {


            if ((Tables ->TheCurves[i]->nEntries == 2) &&
                (Tables->TheCurves[i]->Table16[0] == 0) &&
                (Tables->TheCurves[i]->Table16[1] == 65535)) {

                    for (j=0; j < 256; j++) {
                        if (!_cmsWriteUInt8Number(io, (cmsUInt8Number) j)) return 0;
                    }
            }
            else
                if (Tables ->TheCurves[i]->nEntries != 256) {
                    cmsSignalError(ContextID, 2, "LUT8 needs 256 entries on prelinearization");
                    return 0;
                }
                else
                    for (j=0; j < 256; j++) {

                        if (Tables != ((void*)0))
                            val = (cmsUInt8Number) (cmsUInt8Number) ((((Tables->TheCurves[i]->Table16[j]) * 65281 + 8388608) >> 24) & 0xFF);
                        else
                            val = (cmsUInt8Number) j;

                        if (!_cmsWriteUInt8Number(io, val)) return 0;
                    }
        }
    }
    return 1;
}



static
cmsUInt32Number uipow(cmsUInt32Number n, cmsUInt32Number a, cmsUInt32Number b)
{
    cmsUInt32Number rv = 1, rc;

    if (a == 0) return 0;
    if (n == 0) return 0;

    for (; b > 0; b--) {

        rv *= a;


        if (rv > (2147483647 *2U +1U) / a) return (cmsUInt32Number) -1;

    }

    rc = rv * n;

    if (rv != rc / n) return (cmsUInt32Number) -1;
    return rc;
}






static
void *Type_LUT8_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt8Number InputChannels, OutputChannels, CLUTpoints;
    cmsUInt8Number* Temp = ((void*)0);
    cmsPipeline* NewLUT = ((void*)0);
    cmsUInt32Number nTabSize, i;
    cmsFloat64Number Matrix[3*3];

    *nItems = 0;

    if (!_cmsReadUInt8Number(io, &InputChannels)) goto Error;
    if (!_cmsReadUInt8Number(io, &OutputChannels)) goto Error;
    if (!_cmsReadUInt8Number(io, &CLUTpoints)) goto Error;

     if (CLUTpoints == 1) goto Error;


    if (!_cmsReadUInt8Number(io, ((void*)0))) goto Error;


    if (InputChannels > 16) goto Error;
    if (OutputChannels > 16) goto Error;


    NewLUT = cmsPipelineAlloc(self ->ContextID, InputChannels, OutputChannels);
    if (NewLUT == ((void*)0)) goto Error;


    if (!_cmsRead15Fixed16Number(io, &Matrix[0])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[1])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[2])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[3])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[4])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[5])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[6])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[7])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[8])) goto Error;



    if ((InputChannels == 3) && !_cmsMAT3isIdentity((cmsMAT3*) Matrix)) {

        if (!cmsPipelineInsertStage(NewLUT, cmsAT_BEGIN, cmsStageAllocMatrix(self ->ContextID, 3, 3, Matrix, ((void*)0))))
            goto Error;
    }


    if (!Read8bitTables(self ->ContextID, io, NewLUT, InputChannels)) goto Error;


    nTabSize = uipow(OutputChannels, CLUTpoints, InputChannels);
    if (nTabSize == (cmsUInt32Number) -1) goto Error;
    if (nTabSize > 0) {

        cmsUInt16Number *PtrW, *T;

        PtrW = T = (cmsUInt16Number*) _cmsCalloc(self ->ContextID, nTabSize, sizeof(cmsUInt16Number));
        if (T == ((void*)0)) goto Error;

        Temp = (cmsUInt8Number*) _cmsMalloc(self ->ContextID, nTabSize);
        if (Temp == ((void*)0)) {
            _cmsFree(self ->ContextID, T);
            goto Error;
        }

        if (io ->Read(io, Temp, nTabSize, 1) != 1) {
            _cmsFree(self ->ContextID, T);
            _cmsFree(self ->ContextID, Temp);
            goto Error;
        }

        for (i = 0; i < nTabSize; i++) {

            *PtrW++ = (cmsUInt16Number) ((((cmsUInt16Number) (Temp[i])) << 8)|(Temp[i]));
        }
        _cmsFree(self ->ContextID, Temp);
        Temp = ((void*)0);

        if (!cmsPipelineInsertStage(NewLUT, cmsAT_END, cmsStageAllocCLut16bit(self ->ContextID, CLUTpoints, InputChannels, OutputChannels, T)))
            goto Error;
        _cmsFree(self ->ContextID, T);
    }



    if (!Read8bitTables(self ->ContextID, io, NewLUT, OutputChannels)) goto Error;

    *nItems = 1;
    return NewLUT;

Error:
    if (NewLUT != ((void*)0)) cmsPipelineFree(NewLUT);
    return ((void*)0);

    ((void)SizeOfTag);
}


static
cmsBool Type_LUT8_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUInt32Number j, nTabSize;
    cmsUInt8Number val;
    cmsPipeline* NewLUT = (cmsPipeline*) Ptr;
    cmsStage* mpe;
    _cmsStageToneCurvesData* PreMPE = ((void*)0), *PostMPE = ((void*)0);
    _cmsStageMatrixData* MatMPE = ((void*)0);
    _cmsStageCLutData* clut = ((void*)0);
    int clutPoints;


    mpe = NewLUT -> Elements;
    if (mpe ->Type == cmsSigMatrixElemType) {

        MatMPE = (_cmsStageMatrixData*) mpe ->Data;
        mpe = mpe -> Next;
    }

    if (mpe != ((void*)0) && mpe ->Type == cmsSigCurveSetElemType) {
        PreMPE = (_cmsStageToneCurvesData*) mpe ->Data;
        mpe = mpe -> Next;
    }

    if (mpe != ((void*)0) && mpe ->Type == cmsSigCLutElemType) {
        clut = (_cmsStageCLutData*) mpe -> Data;
        mpe = mpe ->Next;
    }

    if (mpe != ((void*)0) && mpe ->Type == cmsSigCurveSetElemType) {
        PostMPE = (_cmsStageToneCurvesData*) mpe ->Data;
        mpe = mpe -> Next;
    }


    if (mpe != ((void*)0)) {
        cmsSignalError(mpe->ContextID, 8, "LUT is not suitable to be saved as LUT8");
        return 0;
    }


    if (clut == ((void*)0))
        clutPoints = 0;
    else
        clutPoints = clut->Params->nSamples[0];

    if (!_cmsWriteUInt8Number(io, (cmsUInt8Number) NewLUT ->InputChannels)) return 0;
    if (!_cmsWriteUInt8Number(io, (cmsUInt8Number) NewLUT ->OutputChannels)) return 0;
    if (!_cmsWriteUInt8Number(io, (cmsUInt8Number) clutPoints)) return 0;
    if (!_cmsWriteUInt8Number(io, 0)) return 0;


    if (MatMPE != ((void*)0)) {

        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[0])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[1])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[2])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[3])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[4])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[5])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[6])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[7])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[8])) return 0;

    }
    else {

        if (!_cmsWrite15Fixed16Number(io, 1)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 1)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 1)) return 0;
    }


    if (!Write8bitTables(self ->ContextID, io, NewLUT ->InputChannels, PreMPE)) return 0;

    nTabSize = uipow(NewLUT->OutputChannels, clutPoints, NewLUT ->InputChannels);
    if (nTabSize == (cmsUInt32Number) -1) return 0;
    if (nTabSize > 0) {


        if (clut != ((void*)0)) {

            for (j=0; j < nTabSize; j++) {

                val = (cmsUInt8Number) (cmsUInt8Number) ((((clut ->Tab.T[j]) * 65281 + 8388608) >> 24) & 0xFF);
                if (!_cmsWriteUInt8Number(io, val)) return 0;
            }
        }
    }


    if (!Write8bitTables(self ->ContextID, io, NewLUT ->OutputChannels, PostMPE)) return 0;

    return 1;

    ((void)nItems);
}


static
void* Type_LUT8_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return (void*) cmsPipelineDup((cmsPipeline*) Ptr);

    ((void)n);
    ((void)self);
}

static
void Type_LUT8_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsPipelineFree((cmsPipeline*) Ptr);
    return;

    ((void)self);
}






static
cmsBool Read16bitTables(cmsContext ContextID, cmsIOHANDLER* io, cmsPipeline* lut, int nChannels, int nEntries)
{
    int i;
    cmsToneCurve* Tables[16];


    if (nEntries <= 0) return 1;


    if (nEntries < 2) return 0;
    if (nChannels > 16) return 0;


    memset(Tables, 0, sizeof(Tables));

    for (i=0; i < nChannels; i++) {

        Tables[i] = cmsBuildTabulatedToneCurve16(ContextID, nEntries, ((void*)0));
        if (Tables[i] == ((void*)0)) goto Error;

        if (!_cmsReadUInt16Array(io, nEntries, Tables[i]->Table16)) goto Error;
    }



    if (!cmsPipelineInsertStage(lut, cmsAT_END, cmsStageAllocToneCurves(ContextID, nChannels, Tables)))
        goto Error;

    for (i=0; i < nChannels; i++)
        cmsFreeToneCurve(Tables[i]);

    return 1;

Error:
    for (i=0; i < nChannels; i++) {
        if (Tables[i]) cmsFreeToneCurve(Tables[i]);
    }

    return 0;
}

static
cmsBool Write16bitTables(cmsContext ContextID, cmsIOHANDLER* io, _cmsStageToneCurvesData* Tables)
{
    int j;
    cmsUInt32Number i;
    cmsUInt16Number val;
    int nEntries;

    (((Tables != ((void*)0))) ? (void) (0) : __assert_fail ("(Tables != ((void*)0))", "./lcms2/src/cmstypes.c", 2012, __PRETTY_FUNCTION__));

    nEntries = Tables->TheCurves[0]->nEntries;

    for (i=0; i < Tables ->nCurves; i++) {

        for (j=0; j < nEntries; j++) {

            val = Tables->TheCurves[i]->Table16[j];
            if (!_cmsWriteUInt16Number(io, val)) return 0;
        }
    }
    return 1;

    ((void)ContextID);
}

static
void *Type_LUT16_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt8Number InputChannels, OutputChannels, CLUTpoints;
    cmsPipeline* NewLUT = ((void*)0);
    cmsUInt32Number nTabSize;
    cmsFloat64Number Matrix[3*3];
    cmsUInt16Number InputEntries, OutputEntries;

    *nItems = 0;

    if (!_cmsReadUInt8Number(io, &InputChannels)) return ((void*)0);
    if (!_cmsReadUInt8Number(io, &OutputChannels)) return ((void*)0);
    if (!_cmsReadUInt8Number(io, &CLUTpoints)) return ((void*)0);


    if (!_cmsReadUInt8Number(io, ((void*)0))) return ((void*)0);


    if (InputChannels > 16) goto Error;
    if (OutputChannels > 16) goto Error;


    NewLUT = cmsPipelineAlloc(self ->ContextID, InputChannels, OutputChannels);
    if (NewLUT == ((void*)0)) goto Error;


    if (!_cmsRead15Fixed16Number(io, &Matrix[0])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[1])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[2])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[3])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[4])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[5])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[6])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[7])) goto Error;
    if (!_cmsRead15Fixed16Number(io, &Matrix[8])) goto Error;



    if ((InputChannels == 3) && !_cmsMAT3isIdentity((cmsMAT3*) Matrix)) {

        if (!cmsPipelineInsertStage(NewLUT, cmsAT_END, cmsStageAllocMatrix(self ->ContextID, 3, 3, Matrix, ((void*)0))))
            goto Error;
    }

    if (!_cmsReadUInt16Number(io, &InputEntries)) goto Error;
    if (!_cmsReadUInt16Number(io, &OutputEntries)) goto Error;

    if (InputEntries > 0x7FFF || OutputEntries > 0x7FFF) goto Error;
    if (CLUTpoints == 1) goto Error;


    if (!Read16bitTables(self ->ContextID, io, NewLUT, InputChannels, InputEntries)) goto Error;


    nTabSize = uipow(OutputChannels, CLUTpoints, InputChannels);
    if (nTabSize == (cmsUInt32Number) -1) goto Error;
    if (nTabSize > 0) {

        cmsUInt16Number *T;

        T = (cmsUInt16Number*) _cmsCalloc(self ->ContextID, nTabSize, sizeof(cmsUInt16Number));
        if (T == ((void*)0)) goto Error;

        if (!_cmsReadUInt16Array(io, nTabSize, T)) {
            _cmsFree(self ->ContextID, T);
            goto Error;
        }

        if (!cmsPipelineInsertStage(NewLUT, cmsAT_END, cmsStageAllocCLut16bit(self ->ContextID, CLUTpoints, InputChannels, OutputChannels, T))) {
            _cmsFree(self ->ContextID, T);
            goto Error;
        }
        _cmsFree(self ->ContextID, T);
    }



    if (!Read16bitTables(self ->ContextID, io, NewLUT, OutputChannels, OutputEntries)) goto Error;

    *nItems = 1;
    return NewLUT;

Error:
    if (NewLUT != ((void*)0)) cmsPipelineFree(NewLUT);
    return ((void*)0);

    ((void)SizeOfTag);
}




static
cmsBool Type_LUT16_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUInt32Number nTabSize;
    cmsPipeline* NewLUT = (cmsPipeline*) Ptr;
    cmsStage* mpe;
    _cmsStageToneCurvesData* PreMPE = ((void*)0), *PostMPE = ((void*)0);
    _cmsStageMatrixData* MatMPE = ((void*)0);
    _cmsStageCLutData* clut = ((void*)0);
    int i, InputChannels, OutputChannels, clutPoints;


    mpe = NewLUT -> Elements;
    if (mpe != ((void*)0) && mpe ->Type == cmsSigMatrixElemType) {

        MatMPE = (_cmsStageMatrixData*) mpe ->Data;
        mpe = mpe -> Next;
    }


    if (mpe != ((void*)0) && mpe ->Type == cmsSigCurveSetElemType) {
        PreMPE = (_cmsStageToneCurvesData*) mpe ->Data;
        mpe = mpe -> Next;
    }

    if (mpe != ((void*)0) && mpe ->Type == cmsSigCLutElemType) {
        clut = (_cmsStageCLutData*) mpe -> Data;
        mpe = mpe ->Next;
    }

    if (mpe != ((void*)0) && mpe ->Type == cmsSigCurveSetElemType) {
        PostMPE = (_cmsStageToneCurvesData*) mpe ->Data;
        mpe = mpe -> Next;
    }


    if (mpe != ((void*)0)) {
        cmsSignalError(mpe->ContextID, 8, "LUT is not suitable to be saved as LUT16");
        return 0;
    }

    InputChannels = cmsPipelineInputChannels(NewLUT);
    OutputChannels = cmsPipelineOutputChannels(NewLUT);

    if (clut == ((void*)0))
        clutPoints = 0;
    else
        clutPoints = clut->Params->nSamples[0];

    if (!_cmsWriteUInt8Number(io, (cmsUInt8Number) InputChannels)) return 0;
    if (!_cmsWriteUInt8Number(io, (cmsUInt8Number) OutputChannels)) return 0;
    if (!_cmsWriteUInt8Number(io, (cmsUInt8Number) clutPoints)) return 0;
    if (!_cmsWriteUInt8Number(io, 0)) return 0;


    if (MatMPE != ((void*)0)) {

        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[0])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[1])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[2])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[3])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[4])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[5])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[6])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[7])) return 0;
        if (!_cmsWrite15Fixed16Number(io, MatMPE -> Double[8])) return 0;
    }
    else {

        if (!_cmsWrite15Fixed16Number(io, 1)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 1)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 1)) return 0;
    }


    if (PreMPE != ((void*)0)) {
        if (!_cmsWriteUInt16Number(io, (cmsUInt16Number) PreMPE ->TheCurves[0]->nEntries)) return 0;
    } else {
            if (!_cmsWriteUInt16Number(io, 2)) return 0;
    }

    if (PostMPE != ((void*)0)) {
        if (!_cmsWriteUInt16Number(io, (cmsUInt16Number) PostMPE ->TheCurves[0]->nEntries)) return 0;
    } else {
        if (!_cmsWriteUInt16Number(io, 2)) return 0;

    }



    if (PreMPE != ((void*)0)) {
        if (!Write16bitTables(self ->ContextID, io, PreMPE)) return 0;
    }
    else {
        for (i=0; i < InputChannels; i++) {

            if (!_cmsWriteUInt16Number(io, 0)) return 0;
            if (!_cmsWriteUInt16Number(io, 0xffff)) return 0;
        }
    }

    nTabSize = uipow(OutputChannels, clutPoints, InputChannels);
    if (nTabSize == (cmsUInt32Number) -1) return 0;
    if (nTabSize > 0) {

        if (clut != ((void*)0)) {
            if (!_cmsWriteUInt16Array(io, nTabSize, clut->Tab.T)) return 0;
        }
    }


    if (PostMPE != ((void*)0)) {
        if (!Write16bitTables(self ->ContextID, io, PostMPE)) return 0;
    }
    else {
        for (i=0; i < OutputChannels; i++) {

            if (!_cmsWriteUInt16Number(io, 0)) return 0;
            if (!_cmsWriteUInt16Number(io, 0xffff)) return 0;
        }
    }

    return 1;

    ((void)nItems);
}

static
void* Type_LUT16_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return (void*) cmsPipelineDup((cmsPipeline*) Ptr);

    ((void)n);
    ((void)self);
}

static
void Type_LUT16_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsPipelineFree((cmsPipeline*) Ptr);
    return;

    ((void)self);
}
# 2281 "./lcms2/src/cmstypes.c"
static
cmsStage* ReadMatrix(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number Offset)
{
    cmsFloat64Number dMat[3*3];
    cmsFloat64Number dOff[3];
    cmsStage* Mat;


    if (!io -> Seek(io, Offset)) return ((void*)0);


    if (!_cmsRead15Fixed16Number(io, &dMat[0])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(io, &dMat[1])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(io, &dMat[2])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(io, &dMat[3])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(io, &dMat[4])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(io, &dMat[5])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(io, &dMat[6])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(io, &dMat[7])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(io, &dMat[8])) return ((void*)0);

    if (!_cmsRead15Fixed16Number(io, &dOff[0])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(io, &dOff[1])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(io, &dOff[2])) return ((void*)0);

    Mat = cmsStageAllocMatrix(self ->ContextID, 3, 3, dMat, dOff);

     return Mat;
}






static
cmsStage* ReadCLUT(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number Offset, int InputChannels, int OutputChannels)
{
    cmsUInt8Number gridPoints8[16];
    cmsUInt32Number GridPoints[16], i;
    cmsUInt8Number Precision;
    cmsStage* CLUT;
    _cmsStageCLutData* Data;

    if (!io -> Seek(io, Offset)) return ((void*)0);
    if (io -> Read(io, gridPoints8, 16, 1) != 1) return ((void*)0);


    for (i=0; i < 16; i++) {

        if (gridPoints8[i] == 1) return ((void*)0);
        GridPoints[i] = gridPoints8[i];
    }

    if (!_cmsReadUInt8Number(io, &Precision)) return ((void*)0);

    if (!_cmsReadUInt8Number(io, ((void*)0))) return ((void*)0);
    if (!_cmsReadUInt8Number(io, ((void*)0))) return ((void*)0);
    if (!_cmsReadUInt8Number(io, ((void*)0))) return ((void*)0);

    CLUT = cmsStageAllocCLut16bitGranular(self ->ContextID, GridPoints, InputChannels, OutputChannels, ((void*)0));
    if (CLUT == ((void*)0)) return ((void*)0);

    Data = (_cmsStageCLutData*) CLUT ->Data;


    if (Precision == 1) {

        cmsUInt8Number v;

        for (i=0; i < Data ->nEntries; i++) {

            if (io ->Read(io, &v, sizeof(cmsUInt8Number), 1) != 1) return ((void*)0);
            Data ->Tab.T[i] = (cmsUInt16Number) ((((cmsUInt16Number) (v)) << 8)|(v));
        }

    }
    else
        if (Precision == 2) {

            if (!_cmsReadUInt16Array(io, Data->nEntries, Data ->Tab.T)) {
                cmsStageFree(CLUT);
                return ((void*)0);
            }
        }
        else {
            cmsStageFree(CLUT);
            cmsSignalError(self ->ContextID, 8, "Unknown precision of '%d'", Precision);
            return ((void*)0);
        }

        return CLUT;
}

static
cmsToneCurve* ReadEmbeddedCurve(struct _cms_typehandler_struct* self, cmsIOHANDLER* io)
{
    cmsTagTypeSignature BaseType;
    cmsUInt32Number nItems;

    BaseType = _cmsReadTypeBase(io);
    switch (BaseType) {

            case cmsSigCurveType:
                return (cmsToneCurve*) Type_Curve_Read(self, io, &nItems, 0);

            case cmsSigParametricCurveType:
                return (cmsToneCurve*) Type_ParametricCurve_Read(self, io, &nItems, 0);

            default:
                {
                    char String[5];

                    _cmsTagSignature2String(String, (cmsTagSignature) BaseType);
                    cmsSignalError(self ->ContextID, 8, "Unknown curve type '%s'", String);
                }
                return ((void*)0);
    }
}



static
cmsStage* ReadSetOfCurves(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number Offset, cmsUInt32Number nCurves)
{
    cmsToneCurve* Curves[16];
    cmsUInt32Number i;
    cmsStage* Lin = ((void*)0);

    if (nCurves > 16) return 0;

    if (!io -> Seek(io, Offset)) return 0;

    for (i=0; i < nCurves; i++)
        Curves[i] = ((void*)0);

    for (i=0; i < nCurves; i++) {

        Curves[i] = ReadEmbeddedCurve(self, io);
        if (Curves[i] == ((void*)0)) goto Error;
        if (!_cmsReadAlignment(io)) goto Error;

    }

    Lin = cmsStageAllocToneCurves(self ->ContextID, nCurves, Curves);

Error:
    for (i=0; i < nCurves; i++)
        cmsFreeToneCurve(Curves[i]);

    return Lin;
}
# 2456 "./lcms2/src/cmstypes.c"
static
void* Type_LUTA2B_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt32Number BaseOffset;
    cmsUInt8Number inputChan;
    cmsUInt8Number outputChan;
    cmsUInt32Number offsetB;
    cmsUInt32Number offsetMat;
    cmsUInt32Number offsetM;
    cmsUInt32Number offsetC;
    cmsUInt32Number offsetA;
    cmsPipeline* NewLUT = ((void*)0);


    BaseOffset = io ->Tell(io) - sizeof(_cmsTagBase);

    if (!_cmsReadUInt8Number(io, &inputChan)) return ((void*)0);
    if (!_cmsReadUInt8Number(io, &outputChan)) return ((void*)0);

    if (!_cmsReadUInt16Number(io, ((void*)0))) return ((void*)0);

    if (!_cmsReadUInt32Number(io, &offsetB)) return ((void*)0);
    if (!_cmsReadUInt32Number(io, &offsetMat)) return ((void*)0);
    if (!_cmsReadUInt32Number(io, &offsetM)) return ((void*)0);
    if (!_cmsReadUInt32Number(io, &offsetC)) return ((void*)0);
    if (!_cmsReadUInt32Number(io, &offsetA)) return ((void*)0);


    NewLUT = cmsPipelineAlloc(self ->ContextID, inputChan, outputChan);
    if (NewLUT == ((void*)0)) return ((void*)0);

    if (offsetA!= 0) {
        if (!cmsPipelineInsertStage(NewLUT, cmsAT_END, ReadSetOfCurves(self, io, BaseOffset + offsetA, inputChan)))
            goto Error;
    }

    if (offsetC != 0) {
        if (!cmsPipelineInsertStage(NewLUT, cmsAT_END, ReadCLUT(self, io, BaseOffset + offsetC, inputChan, outputChan)))
            goto Error;
    }

    if (offsetM != 0) {
        if (!cmsPipelineInsertStage(NewLUT, cmsAT_END, ReadSetOfCurves(self, io, BaseOffset + offsetM, outputChan)))
            goto Error;
    }

    if (offsetMat != 0) {
        if (!cmsPipelineInsertStage(NewLUT, cmsAT_END, ReadMatrix(self, io, BaseOffset + offsetMat)))
            goto Error;
    }

    if (offsetB != 0) {
        if (!cmsPipelineInsertStage(NewLUT, cmsAT_END, ReadSetOfCurves(self, io, BaseOffset + offsetB, outputChan)))
            goto Error;
    }

    *nItems = 1;
    return NewLUT;
Error:
    cmsPipelineFree(NewLUT);
    return ((void*)0);

    ((void)SizeOfTag);
}


static
cmsBool WriteMatrix(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsStage* mpe)
{
    _cmsStageMatrixData* m = (_cmsStageMatrixData*) mpe -> Data;


    if (!_cmsWrite15Fixed16Number(io, m -> Double[0])) return 0;
    if (!_cmsWrite15Fixed16Number(io, m -> Double[1])) return 0;
    if (!_cmsWrite15Fixed16Number(io, m -> Double[2])) return 0;
    if (!_cmsWrite15Fixed16Number(io, m -> Double[3])) return 0;
    if (!_cmsWrite15Fixed16Number(io, m -> Double[4])) return 0;
    if (!_cmsWrite15Fixed16Number(io, m -> Double[5])) return 0;
    if (!_cmsWrite15Fixed16Number(io, m -> Double[6])) return 0;
    if (!_cmsWrite15Fixed16Number(io, m -> Double[7])) return 0;
    if (!_cmsWrite15Fixed16Number(io, m -> Double[8])) return 0;

    if (m ->Offset != ((void*)0)) {

    if (!_cmsWrite15Fixed16Number(io, m -> Offset[0])) return 0;
    if (!_cmsWrite15Fixed16Number(io, m -> Offset[1])) return 0;
    if (!_cmsWrite15Fixed16Number(io, m -> Offset[2])) return 0;
    }
    else {
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;
        if (!_cmsWrite15Fixed16Number(io, 0)) return 0;

    }


    return 1;

    ((void)self);
}



static
cmsBool WriteSetOfCurves(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsTagTypeSignature Type, cmsStage* mpe)
{
    cmsUInt32Number i, n;
    cmsTagTypeSignature CurrentType;
    cmsToneCurve** Curves;


    n = cmsStageOutputChannels(mpe);
    Curves = _cmsStageGetPtrToCurveSet(mpe);

    for (i=0; i < n; i++) {


        CurrentType = Type;

        if ((Curves[i] ->nSegments == 0)||
            ((Curves[i]->nSegments == 2) && (Curves[i] ->Segments[1].Type == 0)) )
            CurrentType = cmsSigCurveType;
        else
        if (Curves[i] ->Segments[0].Type < 0)
            CurrentType = cmsSigCurveType;

        if (!_cmsWriteTypeBase(io, CurrentType)) return 0;

        switch (CurrentType) {

            case cmsSigCurveType:
                if (!Type_Curve_Write(self, io, Curves[i], 1)) return 0;
                break;

            case cmsSigParametricCurveType:
                if (!Type_ParametricCurve_Write(self, io, Curves[i], 1)) return 0;
                break;

            default:
                {
                    char String[5];

                    _cmsTagSignature2String(String, (cmsTagSignature) Type);
                    cmsSignalError(self ->ContextID, 8, "Unknown curve type '%s'", String);
                }
                return 0;
        }

        if (!_cmsWriteAlignment(io)) return 0;
    }


    return 1;
}


static
cmsBool WriteCLUT(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt8Number Precision, cmsStage* mpe)
{
    cmsUInt8Number gridPoints[16];
    cmsUInt32Number i;
    _cmsStageCLutData* CLUT = ( _cmsStageCLutData*) mpe -> Data;

    if (CLUT ->HasFloatValues) {
         cmsSignalError(self ->ContextID, 13, "Cannot save floating point data, CLUT are 8 or 16 bit only");
         return 0;
    }

    memset(gridPoints, 0, sizeof(gridPoints));
    for (i=0; i < (cmsUInt32Number) CLUT ->Params ->nInputs; i++)
        gridPoints[i] = (cmsUInt8Number) CLUT ->Params ->nSamples[i];

    if (!io -> Write(io, 16*sizeof(cmsUInt8Number), gridPoints)) return 0;

    if (!_cmsWriteUInt8Number(io, (cmsUInt8Number) Precision)) return 0;
    if (!_cmsWriteUInt8Number(io, 0)) return 0;
    if (!_cmsWriteUInt8Number(io, 0)) return 0;
    if (!_cmsWriteUInt8Number(io, 0)) return 0;


    if (Precision == 1) {

        for (i=0; i < CLUT->nEntries; i++) {

            if (!_cmsWriteUInt8Number(io, (cmsUInt8Number) ((((CLUT->Tab.T[i]) * 65281 + 8388608) >> 24) & 0xFF))) return 0;
        }
    }
    else
        if (Precision == 2) {

            if (!_cmsWriteUInt16Array(io, CLUT->nEntries, CLUT ->Tab.T)) return 0;
        }
        else {
             cmsSignalError(self ->ContextID, 8, "Unknown precision of '%d'", Precision);
            return 0;
        }

        if (!_cmsWriteAlignment(io)) return 0;

        return 1;
}




static
cmsBool Type_LUTA2B_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsPipeline* Lut = (cmsPipeline*) Ptr;
    int inputChan, outputChan;
    cmsStage *A = ((void*)0), *B = ((void*)0), *M = ((void*)0);
    cmsStage * Matrix = ((void*)0);
    cmsStage * CLUT = ((void*)0);
    cmsUInt32Number offsetB = 0, offsetMat = 0, offsetM = 0, offsetC = 0, offsetA = 0;
    cmsUInt32Number BaseOffset, DirectoryPos, CurrentPos;


    BaseOffset = io ->Tell(io) - sizeof(_cmsTagBase);

    if (Lut ->Elements != ((void*)0))
        if (!cmsPipelineCheckAndRetreiveStages(Lut, 1, cmsSigCurveSetElemType, &B))
            if (!cmsPipelineCheckAndRetreiveStages(Lut, 3, cmsSigCurveSetElemType, cmsSigMatrixElemType, cmsSigCurveSetElemType, &M, &Matrix, &B))
                if (!cmsPipelineCheckAndRetreiveStages(Lut, 3, cmsSigCurveSetElemType, cmsSigCLutElemType, cmsSigCurveSetElemType, &A, &CLUT, &B))
                    if (!cmsPipelineCheckAndRetreiveStages(Lut, 5, cmsSigCurveSetElemType, cmsSigCLutElemType, cmsSigCurveSetElemType,
                        cmsSigMatrixElemType, cmsSigCurveSetElemType, &A, &CLUT, &M, &Matrix, &B)) {

                            cmsSignalError(self->ContextID, 13, "LUT is not suitable to be saved as LutAToB");
                            return 0;
                    }


    inputChan = cmsPipelineInputChannels(Lut);
    outputChan = cmsPipelineOutputChannels(Lut);


    if (!_cmsWriteUInt8Number(io, (cmsUInt8Number) inputChan)) return 0;
    if (!_cmsWriteUInt8Number(io, (cmsUInt8Number) outputChan)) return 0;
    if (!_cmsWriteUInt16Number(io, 0)) return 0;


    DirectoryPos = io ->Tell(io);


    if (!_cmsWriteUInt32Number(io, 0)) return 0;
    if (!_cmsWriteUInt32Number(io, 0)) return 0;
    if (!_cmsWriteUInt32Number(io, 0)) return 0;
    if (!_cmsWriteUInt32Number(io, 0)) return 0;
    if (!_cmsWriteUInt32Number(io, 0)) return 0;

    if (A != ((void*)0)) {

        offsetA = io ->Tell(io) - BaseOffset;
        if (!WriteSetOfCurves(self, io, cmsSigParametricCurveType, A)) return 0;
    }

    if (CLUT != ((void*)0)) {
        offsetC = io ->Tell(io) - BaseOffset;
        if (!WriteCLUT(self, io, Lut ->SaveAs8Bits ? 1 : 2, CLUT)) return 0;

    }
    if (M != ((void*)0)) {

        offsetM = io ->Tell(io) - BaseOffset;
        if (!WriteSetOfCurves(self, io, cmsSigParametricCurveType, M)) return 0;
    }

    if (Matrix != ((void*)0)) {
        offsetMat = io ->Tell(io) - BaseOffset;
        if (!WriteMatrix(self, io, Matrix)) return 0;
    }

    if (B != ((void*)0)) {

        offsetB = io ->Tell(io) - BaseOffset;
        if (!WriteSetOfCurves(self, io, cmsSigParametricCurveType, B)) return 0;
    }

    CurrentPos = io ->Tell(io);

    if (!io ->Seek(io, DirectoryPos)) return 0;

    if (!_cmsWriteUInt32Number(io, offsetB)) return 0;
    if (!_cmsWriteUInt32Number(io, offsetMat)) return 0;
    if (!_cmsWriteUInt32Number(io, offsetM)) return 0;
    if (!_cmsWriteUInt32Number(io, offsetC)) return 0;
    if (!_cmsWriteUInt32Number(io, offsetA)) return 0;

    if (!io ->Seek(io, CurrentPos)) return 0;

    return 1;

    ((void)nItems);
}


static
void* Type_LUTA2B_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return (void*) cmsPipelineDup((cmsPipeline*) Ptr);

    ((void)n);
    ((void)self);
}

static
void Type_LUTA2B_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsPipelineFree((cmsPipeline*) Ptr);
    return;

    ((void)self);
}




static
void* Type_LUTB2A_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt8Number inputChan;
    cmsUInt8Number outputChan;
    cmsUInt32Number BaseOffset;
    cmsUInt32Number offsetB;
    cmsUInt32Number offsetMat;
    cmsUInt32Number offsetM;
    cmsUInt32Number offsetC;
    cmsUInt32Number offsetA;
    cmsPipeline* NewLUT = ((void*)0);


    BaseOffset = io ->Tell(io) - sizeof(_cmsTagBase);

    if (!_cmsReadUInt8Number(io, &inputChan)) return ((void*)0);
    if (!_cmsReadUInt8Number(io, &outputChan)) return ((void*)0);


    if (!_cmsReadUInt16Number(io, ((void*)0))) return ((void*)0);

    if (!_cmsReadUInt32Number(io, &offsetB)) return ((void*)0);
    if (!_cmsReadUInt32Number(io, &offsetMat)) return ((void*)0);
    if (!_cmsReadUInt32Number(io, &offsetM)) return ((void*)0);
    if (!_cmsReadUInt32Number(io, &offsetC)) return ((void*)0);
    if (!_cmsReadUInt32Number(io, &offsetA)) return ((void*)0);


    NewLUT = cmsPipelineAlloc(self ->ContextID, inputChan, outputChan);
    if (NewLUT == ((void*)0)) return ((void*)0);

    if (offsetB != 0) {
        if (!cmsPipelineInsertStage(NewLUT, cmsAT_END, ReadSetOfCurves(self, io, BaseOffset + offsetB, inputChan)))
            goto Error;
    }

    if (offsetMat != 0) {
        if (!cmsPipelineInsertStage(NewLUT, cmsAT_END, ReadMatrix(self, io, BaseOffset + offsetMat)))
            goto Error;
    }

    if (offsetM != 0) {
        if (!cmsPipelineInsertStage(NewLUT, cmsAT_END, ReadSetOfCurves(self, io, BaseOffset + offsetM, inputChan)))
            goto Error;
    }

    if (offsetC != 0) {
        if (!cmsPipelineInsertStage(NewLUT, cmsAT_END, ReadCLUT(self, io, BaseOffset + offsetC, inputChan, outputChan)))
            goto Error;
    }

    if (offsetA!= 0) {
        if (!cmsPipelineInsertStage(NewLUT, cmsAT_END, ReadSetOfCurves(self, io, BaseOffset + offsetA, outputChan)))
            goto Error;
    }

    *nItems = 1;
    return NewLUT;
Error:
    cmsPipelineFree(NewLUT);
    return ((void*)0);

    ((void)SizeOfTag);
}
# 2846 "./lcms2/src/cmstypes.c"
static
cmsBool Type_LUTB2A_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsPipeline* Lut = (cmsPipeline*) Ptr;
    int inputChan, outputChan;
    cmsStage *A = ((void*)0), *B = ((void*)0), *M = ((void*)0);
    cmsStage *Matrix = ((void*)0);
    cmsStage *CLUT = ((void*)0);
    cmsUInt32Number offsetB = 0, offsetMat = 0, offsetM = 0, offsetC = 0, offsetA = 0;
    cmsUInt32Number BaseOffset, DirectoryPos, CurrentPos;


    BaseOffset = io ->Tell(io) - sizeof(_cmsTagBase);

    if (!cmsPipelineCheckAndRetreiveStages(Lut, 1, cmsSigCurveSetElemType, &B))
        if (!cmsPipelineCheckAndRetreiveStages(Lut, 3, cmsSigCurveSetElemType, cmsSigMatrixElemType, cmsSigCurveSetElemType, &B, &Matrix, &M))
            if (!cmsPipelineCheckAndRetreiveStages(Lut, 3, cmsSigCurveSetElemType, cmsSigCLutElemType, cmsSigCurveSetElemType, &B, &CLUT, &A))
                if (!cmsPipelineCheckAndRetreiveStages(Lut, 5, cmsSigCurveSetElemType, cmsSigMatrixElemType, cmsSigCurveSetElemType,
                    cmsSigCLutElemType, cmsSigCurveSetElemType, &B, &Matrix, &M, &CLUT, &A)) {
                        cmsSignalError(self->ContextID, 13, "LUT is not suitable to be saved as LutBToA");
                        return 0;
                }

    inputChan = cmsPipelineInputChannels(Lut);
    outputChan = cmsPipelineOutputChannels(Lut);

    if (!_cmsWriteUInt8Number(io, (cmsUInt8Number) inputChan)) return 0;
    if (!_cmsWriteUInt8Number(io, (cmsUInt8Number) outputChan)) return 0;
    if (!_cmsWriteUInt16Number(io, 0)) return 0;

    DirectoryPos = io ->Tell(io);

    if (!_cmsWriteUInt32Number(io, 0)) return 0;
    if (!_cmsWriteUInt32Number(io, 0)) return 0;
    if (!_cmsWriteUInt32Number(io, 0)) return 0;
    if (!_cmsWriteUInt32Number(io, 0)) return 0;
    if (!_cmsWriteUInt32Number(io, 0)) return 0;

    if (A != ((void*)0)) {

        offsetA = io ->Tell(io) - BaseOffset;
        if (!WriteSetOfCurves(self, io, cmsSigParametricCurveType, A)) return 0;
    }

    if (CLUT != ((void*)0)) {
        offsetC = io ->Tell(io) - BaseOffset;
        if (!WriteCLUT(self, io, Lut ->SaveAs8Bits ? 1 : 2, CLUT)) return 0;

    }
    if (M != ((void*)0)) {

        offsetM = io ->Tell(io) - BaseOffset;
        if (!WriteSetOfCurves(self, io, cmsSigParametricCurveType, M)) return 0;
    }

    if (Matrix != ((void*)0)) {
        offsetMat = io ->Tell(io) - BaseOffset;
        if (!WriteMatrix(self, io, Matrix)) return 0;
    }

    if (B != ((void*)0)) {

        offsetB = io ->Tell(io) - BaseOffset;
        if (!WriteSetOfCurves(self, io, cmsSigParametricCurveType, B)) return 0;
    }

    CurrentPos = io ->Tell(io);

    if (!io ->Seek(io, DirectoryPos)) return 0;

    if (!_cmsWriteUInt32Number(io, offsetB)) return 0;
    if (!_cmsWriteUInt32Number(io, offsetMat)) return 0;
    if (!_cmsWriteUInt32Number(io, offsetM)) return 0;
    if (!_cmsWriteUInt32Number(io, offsetC)) return 0;
    if (!_cmsWriteUInt32Number(io, offsetA)) return 0;

    if (!io ->Seek(io, CurrentPos)) return 0;

    return 1;

    ((void)nItems);
}



static
void* Type_LUTB2A_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return (void*) cmsPipelineDup((cmsPipeline*) Ptr);

    ((void)n);
    ((void)self);
}

static
void Type_LUTB2A_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsPipelineFree((cmsPipeline*) Ptr);
    return;

    ((void)self);
}
# 2962 "./lcms2/src/cmstypes.c"
static
void *Type_ColorantTable_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt32Number i, Count;
    cmsNAMEDCOLORLIST* List;
    char Name[34];
    cmsUInt16Number PCS[3];


    if (!_cmsReadUInt32Number(io, &Count)) return ((void*)0);

    if (Count > 16) {
        cmsSignalError(self->ContextID, 2, "Too many colorants '%d'", Count);
        return ((void*)0);
    }

    List = cmsAllocNamedColorList(self ->ContextID, Count, 0, "", "");
    for (i=0; i < Count; i++) {

        if (io ->Read(io, Name, 32, 1) != 1) goto Error;
        Name[33] = 0;

        if (!_cmsReadUInt16Array(io, 3, PCS)) goto Error;

        if (!cmsAppendNamedColor(List, Name, PCS, ((void*)0))) goto Error;

    }

    *nItems = 1;
    return List;

Error:
    *nItems = 0;
    cmsFreeNamedColorList(List);
    return ((void*)0);

    ((void)SizeOfTag);
}




static
cmsBool Type_ColorantTable_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsNAMEDCOLORLIST* NamedColorList = (cmsNAMEDCOLORLIST*) Ptr;
    int i, nColors;

    nColors = cmsNamedColorCount(NamedColorList);

    if (!_cmsWriteUInt32Number(io, nColors)) return 0;

    for (i=0; i < nColors; i++) {

        char root[33];
        cmsUInt16Number PCS[3];

        if (!cmsNamedColorInfo(NamedColorList, i, root, ((void*)0), ((void*)0), PCS, ((void*)0))) return 0;
        root[32] = 0;

        if (!io ->Write(io, 32, root)) return 0;
        if (!_cmsWriteUInt16Array(io, 3, PCS)) return 0;
    }

    return 1;

    ((void)nItems);
    ((void)self);
}


static
void* Type_ColorantTable_Dup(struct _cms_typehandler_struct* self, const void* Ptr, cmsUInt32Number n)
{
    cmsNAMEDCOLORLIST* nc = (cmsNAMEDCOLORLIST*) Ptr;
    return (void*) cmsDupNamedColorList(nc);

    ((void)n);
    ((void)self);
}


static
void Type_ColorantTable_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsFreeNamedColorList((cmsNAMEDCOLORLIST*) Ptr);
    return;

    ((void)self);
}
# 3069 "./lcms2/src/cmstypes.c"
static
void *Type_NamedColor_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{

    cmsUInt32Number vendorFlag;
    cmsUInt32Number count;
    cmsUInt32Number nDeviceCoords;
    char prefix[32];
    char suffix[32];
    cmsNAMEDCOLORLIST* v;
    cmsUInt32Number i;


    *nItems = 0;
    if (!_cmsReadUInt32Number(io, &vendorFlag)) return ((void*)0);
    if (!_cmsReadUInt32Number(io, &count)) return ((void*)0);
    if (!_cmsReadUInt32Number(io, &nDeviceCoords)) return ((void*)0);

    if (io -> Read(io, prefix, 32, 1) != 1) return ((void*)0);
    if (io -> Read(io, suffix, 32, 1) != 1) return ((void*)0);

    prefix[31] = suffix[31] = 0;

    v = cmsAllocNamedColorList(self ->ContextID, count, nDeviceCoords, prefix, suffix);
    if (v == ((void*)0)) {
        cmsSignalError(self->ContextID, 2, "Too many named colors '%d'", count);
        return ((void*)0);
    }

    if (nDeviceCoords > 16) {
        cmsSignalError(self->ContextID, 2, "Too many device coordinates '%d'", nDeviceCoords);
        return 0;
    }
    for (i=0; i < count; i++) {

        cmsUInt16Number PCS[3];
        cmsUInt16Number Colorant[16];
        char Root[33];

        memset(Colorant, 0, sizeof(Colorant));
        if (io -> Read(io, Root, 32, 1) != 1) return ((void*)0);
        if (!_cmsReadUInt16Array(io, 3, PCS)) goto Error;
        if (!_cmsReadUInt16Array(io, nDeviceCoords, Colorant)) goto Error;

        if (!cmsAppendNamedColor(v, Root, PCS, Colorant)) goto Error;
    }

    *nItems = 1;
    return (void*) v ;

Error:
    cmsFreeNamedColorList(v);
    return ((void*)0);

    ((void)SizeOfTag);
}



static
cmsBool Type_NamedColor_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsNAMEDCOLORLIST* NamedColorList = (cmsNAMEDCOLORLIST*) Ptr;
    char prefix[32];
    char suffix[32];
    int i, nColors;

    nColors = cmsNamedColorCount(NamedColorList);

    if (!_cmsWriteUInt32Number(io, 0)) return 0;
    if (!_cmsWriteUInt32Number(io, nColors)) return 0;
    if (!_cmsWriteUInt32Number(io, NamedColorList ->ColorantCount)) return 0;

    __builtin_strncpy (prefix, (const char*) NamedColorList->Prefix, 32);
    __builtin_strncpy (suffix, (const char*) NamedColorList->Suffix, 32);

    suffix[31] = prefix[31] = 0;

    if (!io ->Write(io, 32, prefix)) return 0;
    if (!io ->Write(io, 32, suffix)) return 0;

    for (i=0; i < nColors; i++) {

       cmsUInt16Number PCS[3];
       cmsUInt16Number Colorant[16];
       char Root[33];

        if (!cmsNamedColorInfo(NamedColorList, i, Root, ((void*)0), ((void*)0), PCS, Colorant)) return 0;
        if (!io ->Write(io, 32 , Root)) return 0;
        if (!_cmsWriteUInt16Array(io, 3, PCS)) return 0;
        if (!_cmsWriteUInt16Array(io, NamedColorList ->ColorantCount, Colorant)) return 0;
    }

    return 1;

    ((void)nItems);
    ((void)self);
}

static
void* Type_NamedColor_Dup(struct _cms_typehandler_struct* self, const void* Ptr, cmsUInt32Number n)
{
    cmsNAMEDCOLORLIST* nc = (cmsNAMEDCOLORLIST*) Ptr;

    return (void*) cmsDupNamedColorList(nc);

    ((void)n);
    ((void)self);
}


static
void Type_NamedColor_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsFreeNamedColorList((cmsNAMEDCOLORLIST*) Ptr);
    return;

    ((void)self);
}
# 3201 "./lcms2/src/cmstypes.c"
static
cmsBool ReadEmbeddedText(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsMLU** mlu, cmsUInt32Number SizeOfTag)
{
    cmsTagTypeSignature BaseType;
    cmsUInt32Number nItems;

    BaseType = _cmsReadTypeBase(io);

    switch (BaseType) {

       case cmsSigTextType:
           if (*mlu) cmsMLUfree(*mlu);
           *mlu = (cmsMLU*)Type_Text_Read(self, io, &nItems, SizeOfTag);
           return (*mlu != ((void*)0));

       case cmsSigTextDescriptionType:
           if (*mlu) cmsMLUfree(*mlu);
           *mlu = (cmsMLU*) Type_Text_Description_Read(self, io, &nItems, SizeOfTag);
           return (*mlu != ((void*)0));





       case cmsSigMultiLocalizedUnicodeType:
           if (*mlu) cmsMLUfree(*mlu);
           *mlu = (cmsMLU*) Type_MLU_Read(self, io, &nItems, SizeOfTag);
           return (*mlu != ((void*)0));

       default: return 0;
    }
}


static
void *Type_ProfileSequenceDesc_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsSEQ* OutSeq;
    cmsUInt32Number i, Count;

    *nItems = 0;

    if (!_cmsReadUInt32Number(io, &Count)) return ((void*)0);

    if (SizeOfTag < sizeof(cmsUInt32Number)) return ((void*)0);
    SizeOfTag -= sizeof(cmsUInt32Number);


    OutSeq = cmsAllocProfileSequenceDescription(self ->ContextID, Count);
    if (OutSeq == ((void*)0)) return ((void*)0);

    OutSeq ->n = Count;



    for (i=0; i < Count; i++) {

        cmsPSEQDESC* sec = &OutSeq -> seq[i];

        if (!_cmsReadUInt32Number(io, &sec ->deviceMfg)) goto Error;
        if (SizeOfTag < sizeof(cmsUInt32Number)) goto Error;
        SizeOfTag -= sizeof(cmsUInt32Number);

        if (!_cmsReadUInt32Number(io, &sec ->deviceModel)) goto Error;
        if (SizeOfTag < sizeof(cmsUInt32Number)) goto Error;
        SizeOfTag -= sizeof(cmsUInt32Number);

        if (!_cmsReadUInt64Number(io, &sec ->attributes)) goto Error;
        if (SizeOfTag < sizeof(cmsUInt64Number)) goto Error;
        SizeOfTag -= sizeof(cmsUInt64Number);

        if (!_cmsReadUInt32Number(io, (cmsUInt32Number *)&sec ->technology)) goto Error;
        if (SizeOfTag < sizeof(cmsUInt32Number)) goto Error;
        SizeOfTag -= sizeof(cmsUInt32Number);

        if (!ReadEmbeddedText(self, io, &sec ->Manufacturer, SizeOfTag)) goto Error;
        if (!ReadEmbeddedText(self, io, &sec ->Model, SizeOfTag)) goto Error;
    }

    *nItems = 1;
    return OutSeq;

Error:
    cmsFreeProfileSequenceDescription(OutSeq);
    return ((void*)0);
}




static
cmsBool SaveDescription(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsMLU* Text)
{
    if (self ->ICCVersion < 0x4000000) {

        if (!_cmsWriteTypeBase(io, cmsSigTextDescriptionType)) return 0;
        return Type_Text_Description_Write(self, io, Text, 1);
    }
    else {
        if (!_cmsWriteTypeBase(io, cmsSigMultiLocalizedUnicodeType)) return 0;
        return Type_MLU_Write(self, io, Text, 1);
    }
}


static
cmsBool Type_ProfileSequenceDesc_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsSEQ* Seq = (cmsSEQ*) Ptr;
    cmsUInt32Number i;

    if (!_cmsWriteUInt32Number(io, Seq->n)) return 0;

    for (i=0; i < Seq ->n; i++) {

        cmsPSEQDESC* sec = &Seq -> seq[i];

        if (!_cmsWriteUInt32Number(io, sec ->deviceMfg)) return 0;
        if (!_cmsWriteUInt32Number(io, sec ->deviceModel)) return 0;
        if (!_cmsWriteUInt64Number(io, &sec ->attributes)) return 0;
        if (!_cmsWriteUInt32Number(io, sec ->technology)) return 0;

        if (!SaveDescription(self, io, sec ->Manufacturer)) return 0;
        if (!SaveDescription(self, io, sec ->Model)) return 0;
    }

     return 1;

     ((void)nItems);
}


static
void* Type_ProfileSequenceDesc_Dup(struct _cms_typehandler_struct* self, const void* Ptr, cmsUInt32Number n)
{
    return (void*) cmsDupProfileSequenceDescription((cmsSEQ*) Ptr);

    ((void)n);
    ((void)self);
}

static
void Type_ProfileSequenceDesc_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsFreeProfileSequenceDescription((cmsSEQ*) Ptr);
    return;

    ((void)self);
}
# 3363 "./lcms2/src/cmstypes.c"
static
cmsBool ReadSeqID(struct _cms_typehandler_struct* self,
                                             cmsIOHANDLER* io,
                                             void* Cargo,
                                             cmsUInt32Number n,
                                             cmsUInt32Number SizeOfTag)
{
    cmsSEQ* OutSeq = (cmsSEQ*) Cargo;
    cmsPSEQDESC* seq = &OutSeq ->seq[n];

    if (io -> Read(io, seq ->ProfileID.ID8, 16, 1) != 1) return 0;
    if (!ReadEmbeddedText(self, io, &seq ->Description, SizeOfTag)) return 0;

    return 1;
}



static
void *Type_ProfileSequenceId_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsSEQ* OutSeq;
    cmsUInt32Number Count;
    cmsUInt32Number BaseOffset;

    *nItems = 0;


    BaseOffset = io ->Tell(io) - sizeof(_cmsTagBase);


    if (!_cmsReadUInt32Number(io, &Count)) return ((void*)0);
    SizeOfTag -= sizeof(cmsUInt32Number);


    OutSeq = cmsAllocProfileSequenceDescription(self ->ContextID, Count);
    if (OutSeq == ((void*)0)) return ((void*)0);



    if (!ReadPositionTable(self, io, Count, BaseOffset, OutSeq, ReadSeqID)) {

        cmsFreeProfileSequenceDescription(OutSeq);
        return ((void*)0);
    }


    *nItems = 1;
    return OutSeq;

}


static
cmsBool WriteSeqID(struct _cms_typehandler_struct* self,
                                             cmsIOHANDLER* io,
                                             void* Cargo,
                                             cmsUInt32Number n,
                                             cmsUInt32Number SizeOfTag)
{
    cmsSEQ* Seq = (cmsSEQ*) Cargo;

    if (!io ->Write(io, 16, Seq ->seq[n].ProfileID.ID8)) return 0;


    if (!SaveDescription(self, io, Seq ->seq[n].Description)) return 0;

    return 1;

    ((void)SizeOfTag);
}

static
cmsBool Type_ProfileSequenceId_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsSEQ* Seq = (cmsSEQ*) Ptr;
    cmsUInt32Number BaseOffset;


    BaseOffset = io ->Tell(io) - sizeof(_cmsTagBase);


    if (!_cmsWriteUInt32Number(io, Seq ->n)) return 0;


    if (!WritePositionTable(self, io, 0, Seq ->n, BaseOffset, Seq, WriteSeqID)) return 0;

    return 1;

    ((void)nItems);
}

static
void* Type_ProfileSequenceId_Dup(struct _cms_typehandler_struct* self, const void* Ptr, cmsUInt32Number n)
{
    return (void*) cmsDupProfileSequenceDescription((cmsSEQ*) Ptr);

    ((void)n);
    ((void)self);
}

static
void Type_ProfileSequenceId_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsFreeProfileSequenceDescription((cmsSEQ*) Ptr);
    return;

    ((void)self);
}
# 3483 "./lcms2/src/cmstypes.c"
static
void *Type_UcrBg_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUcrBg* n = (cmsUcrBg*) _cmsMallocZero(self ->ContextID, sizeof(cmsUcrBg));
    cmsUInt32Number CountUcr, CountBg;
    char* ASCIIString;

    *nItems = 0;
    if (n == ((void*)0)) return ((void*)0);


    if (!_cmsReadUInt32Number(io, &CountUcr)) return ((void*)0);
    if (SizeOfTag < sizeof(cmsUInt32Number)) return ((void*)0);
    SizeOfTag -= sizeof(cmsUInt32Number);

    n ->Ucr = cmsBuildTabulatedToneCurve16(self ->ContextID, CountUcr, ((void*)0));
    if (n ->Ucr == ((void*)0)) return ((void*)0);

    if (!_cmsReadUInt16Array(io, CountUcr, n ->Ucr->Table16)) return ((void*)0);
    if (SizeOfTag < sizeof(cmsUInt32Number)) return ((void*)0);
    SizeOfTag -= CountUcr * sizeof(cmsUInt16Number);


    if (!_cmsReadUInt32Number(io, &CountBg)) return ((void*)0);
    if (SizeOfTag < sizeof(cmsUInt32Number)) return ((void*)0);
    SizeOfTag -= sizeof(cmsUInt32Number);

    n ->Bg = cmsBuildTabulatedToneCurve16(self ->ContextID, CountBg, ((void*)0));
    if (n ->Bg == ((void*)0)) return ((void*)0);
    if (!_cmsReadUInt16Array(io, CountBg, n ->Bg->Table16)) return ((void*)0);
    if (SizeOfTag < CountBg * sizeof(cmsUInt16Number)) return ((void*)0);
    SizeOfTag -= CountBg * sizeof(cmsUInt16Number);
    if (SizeOfTag == (2147483647 *2U +1U)) return ((void*)0);


    n ->Desc = cmsMLUalloc(self ->ContextID, 1);
    if (n ->Desc == ((void*)0)) return ((void*)0);

    ASCIIString = (char*) _cmsMalloc(self ->ContextID, SizeOfTag + 1);
    if (io ->Read(io, ASCIIString, sizeof(char), SizeOfTag) != SizeOfTag) return ((void*)0);
    ASCIIString[SizeOfTag] = 0;
    cmsMLUsetASCII(n ->Desc, "\0\0", "\0\0", ASCIIString);
    _cmsFree(self ->ContextID, ASCIIString);

    *nItems = 1;
    return (void*) n;
}

static
cmsBool Type_UcrBg_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUcrBg* Value = (cmsUcrBg*) Ptr;
    cmsUInt32Number TextSize;
    char* Text;


    if (!_cmsWriteUInt32Number(io, Value ->Ucr ->nEntries)) return 0;
    if (!_cmsWriteUInt16Array(io, Value ->Ucr ->nEntries, Value ->Ucr ->Table16)) return 0;


    if (!_cmsWriteUInt32Number(io, Value ->Bg ->nEntries)) return 0;
    if (!_cmsWriteUInt16Array(io, Value ->Bg ->nEntries, Value ->Bg ->Table16)) return 0;


    TextSize = cmsMLUgetASCII(Value ->Desc, "\0\0", "\0\0", ((void*)0), 0);
    Text = (char*) _cmsMalloc(self ->ContextID, TextSize);
    if (cmsMLUgetASCII(Value ->Desc, "\0\0", "\0\0", Text, TextSize) != TextSize) return 0;

    if (!io ->Write(io, TextSize, Text)) return 0;
    _cmsFree(self ->ContextID, Text);

    return 1;

    ((void)nItems);
}

static
void* Type_UcrBg_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    cmsUcrBg* Src = (cmsUcrBg*) Ptr;
    cmsUcrBg* NewUcrBg = (cmsUcrBg*) _cmsMallocZero(self ->ContextID, sizeof(cmsUcrBg));

    if (NewUcrBg == ((void*)0)) return ((void*)0);

    NewUcrBg ->Bg = cmsDupToneCurve(Src ->Bg);
    NewUcrBg ->Ucr = cmsDupToneCurve(Src ->Ucr);
    NewUcrBg ->Desc = cmsMLUdup(Src ->Desc);

    return (void*) NewUcrBg;

    ((void)n);
}

static
void Type_UcrBg_Free(struct _cms_typehandler_struct* self, void *Ptr)
{
   cmsUcrBg* Src = (cmsUcrBg*) Ptr;

   if (Src ->Ucr) cmsFreeToneCurve(Src ->Ucr);
   if (Src ->Bg) cmsFreeToneCurve(Src ->Bg);
   if (Src ->Desc) cmsMLUfree(Src ->Desc);

   _cmsFree(self ->ContextID, Ptr);
}
# 3608 "./lcms2/src/cmstypes.c"
static
cmsBool ReadCountAndSting(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsMLU* mlu, cmsUInt32Number* SizeOfTag, const char* Section)
{
    cmsUInt32Number Count;
    char* Text;

    if (*SizeOfTag < sizeof(cmsUInt32Number)) return 0;

    if (!_cmsReadUInt32Number(io, &Count)) return 0;

    if (Count > (2147483647 *2U +1U) - sizeof(cmsUInt32Number)) return 0;
    if (*SizeOfTag < Count + sizeof(cmsUInt32Number)) return 0;

    Text = (char*) _cmsMalloc(self ->ContextID, Count+1);
    if (Text == ((void*)0)) return 0;

    if (io ->Read(io, Text, sizeof(cmsUInt8Number), Count) != Count) {
        _cmsFree(self ->ContextID, Text);
        return 0;
    }

    Text[Count] = 0;

    cmsMLUsetASCII(mlu, "PS", Section, Text);
    _cmsFree(self ->ContextID, Text);

    *SizeOfTag -= (Count + sizeof(cmsUInt32Number));
    return 1;
}

static
cmsBool WriteCountAndSting(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsMLU* mlu, const char* Section)
{
 cmsUInt32Number TextSize;
 char* Text;

    TextSize = cmsMLUgetASCII(mlu, "PS", Section, ((void*)0), 0);
    Text = (char*) _cmsMalloc(self ->ContextID, TextSize);

    if (!_cmsWriteUInt32Number(io, TextSize)) return 0;

    if (cmsMLUgetASCII(mlu, "PS", Section, Text, TextSize) == 0) return 0;

    if (!io ->Write(io, TextSize, Text)) return 0;
    _cmsFree(self ->ContextID, Text);

    return 1;
}

static
void *Type_CrdInfo_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsMLU* mlu = cmsMLUalloc(self ->ContextID, 5);

    *nItems = 0;
    if (!ReadCountAndSting(self, io, mlu, &SizeOfTag, "nm")) goto Error;
    if (!ReadCountAndSting(self, io, mlu, &SizeOfTag, "#0")) goto Error;
    if (!ReadCountAndSting(self, io, mlu, &SizeOfTag, "#1")) goto Error;
    if (!ReadCountAndSting(self, io, mlu, &SizeOfTag, "#2")) goto Error;
    if (!ReadCountAndSting(self, io, mlu, &SizeOfTag, "#3")) goto Error;

    *nItems = 1;
    return (void*) mlu;

Error:
    cmsMLUfree(mlu);
    return ((void*)0);

}

static
cmsBool Type_CrdInfo_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{

    cmsMLU* mlu = (cmsMLU*) Ptr;

    if (!WriteCountAndSting(self, io, mlu, "nm")) goto Error;
    if (!WriteCountAndSting(self, io, mlu, "#0")) goto Error;
    if (!WriteCountAndSting(self, io, mlu, "#1")) goto Error;
    if (!WriteCountAndSting(self, io, mlu, "#2")) goto Error;
    if (!WriteCountAndSting(self, io, mlu, "#3")) goto Error;

    return 1;

Error:
    return 0;

    ((void)nItems);
}


static
void* Type_CrdInfo_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return (void*) cmsMLUdup((cmsMLU*) Ptr);

    ((void)n);
    ((void)self);
}

static
void Type_CrdInfo_Free(struct _cms_typehandler_struct* self, void *Ptr)
{
    cmsMLUfree((cmsMLU*) Ptr);
    return;

    ((void)self);
}
# 3724 "./lcms2/src/cmstypes.c"
static
void *Type_Screening_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsScreening* sc = ((void*)0);
    cmsUInt32Number i;

    sc = (cmsScreening*) _cmsMallocZero(self ->ContextID, sizeof(cmsScreening));
    if (sc == ((void*)0)) return ((void*)0);

    *nItems = 0;

    if (!_cmsReadUInt32Number(io, &sc ->Flag)) goto Error;
    if (!_cmsReadUInt32Number(io, &sc ->nChannels)) goto Error;

    if (sc ->nChannels > 16 - 1)
        sc ->nChannels = 16 - 1;

    for (i=0; i < sc ->nChannels; i++) {

        if (!_cmsRead15Fixed16Number(io, &sc ->Channels[i].Frequency)) goto Error;
        if (!_cmsRead15Fixed16Number(io, &sc ->Channels[i].ScreenAngle)) goto Error;
        if (!_cmsReadUInt32Number(io, &sc ->Channels[i].SpotShape)) goto Error;
    }


    *nItems = 1;

    return (void*) sc;

Error:
    if (sc != ((void*)0))
        _cmsFree(self ->ContextID, sc);

    return ((void*)0);

    ((void)SizeOfTag);
}


static
cmsBool Type_Screening_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsScreening* sc = (cmsScreening* ) Ptr;
    cmsUInt32Number i;

    if (!_cmsWriteUInt32Number(io, sc ->Flag)) return 0;
    if (!_cmsWriteUInt32Number(io, sc ->nChannels)) return 0;

    for (i=0; i < sc ->nChannels; i++) {

        if (!_cmsWrite15Fixed16Number(io, sc ->Channels[i].Frequency)) return 0;
        if (!_cmsWrite15Fixed16Number(io, sc ->Channels[i].ScreenAngle)) return 0;
        if (!_cmsWriteUInt32Number(io, sc ->Channels[i].SpotShape)) return 0;
    }

    return 1;

    ((void)nItems);
    ((void)self);
}


static
void* Type_Screening_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
   return _cmsDupMem(self ->ContextID, Ptr, sizeof(cmsScreening));

   ((void)n);
}


static
void Type_Screening_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
   _cmsFree(self ->ContextID, Ptr);
}
# 3809 "./lcms2/src/cmstypes.c"
static
void *Type_ViewingConditions_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsICCViewingConditions* vc = ((void*)0);

    vc = (cmsICCViewingConditions*) _cmsMallocZero(self ->ContextID, sizeof(cmsICCViewingConditions));
    if (vc == ((void*)0)) return ((void*)0);

    *nItems = 0;

    if (!_cmsReadXYZNumber(io, &vc ->IlluminantXYZ)) goto Error;
    if (!_cmsReadXYZNumber(io, &vc ->SurroundXYZ)) goto Error;
    if (!_cmsReadUInt32Number(io, &vc ->IlluminantType)) goto Error;

    *nItems = 1;

    return (void*) vc;

Error:
    if (vc != ((void*)0))
        _cmsFree(self ->ContextID, vc);

    return ((void*)0);

    ((void)SizeOfTag);
}


static
cmsBool Type_ViewingConditions_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsICCViewingConditions* sc = (cmsICCViewingConditions* ) Ptr;

    if (!_cmsWriteXYZNumber(io, &sc ->IlluminantXYZ)) return 0;
    if (!_cmsWriteXYZNumber(io, &sc ->SurroundXYZ)) return 0;
    if (!_cmsWriteUInt32Number(io, sc ->IlluminantType)) return 0;

    return 1;

    ((void)nItems);
    ((void)self);
}


static
void* Type_ViewingConditions_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
   return _cmsDupMem(self ->ContextID, Ptr, sizeof(cmsScreening));

   ((void)n);
}


static
void Type_ViewingConditions_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
   _cmsFree(self ->ContextID, Ptr);
}







static
void* GenericMPEdup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return (void*) cmsStageDup((cmsStage*) Ptr);

    ((void)n);
    ((void)self);
}

static
void GenericMPEfree(struct _cms_typehandler_struct* self, void *Ptr)
{
    cmsStageFree((cmsStage*) Ptr);
    return;

    ((void)self);
}
# 3899 "./lcms2/src/cmstypes.c"
static
cmsToneCurve* ReadSegmentedCurve(struct _cms_typehandler_struct* self, cmsIOHANDLER* io)
{
    cmsCurveSegSignature ElementSig;
    cmsUInt32Number i, j;
    cmsUInt16Number nSegments;
    cmsCurveSegment* Segments;
    cmsToneCurve* Curve;
    cmsFloat32Number PrevBreak = -1E22F;


     if (!_cmsReadUInt32Number(io, (cmsUInt32Number*) &ElementSig)) return ((void*)0);


     if (ElementSig != cmsSigSegmentedCurve) return ((void*)0);

     if (!_cmsReadUInt32Number(io, ((void*)0))) return ((void*)0);
     if (!_cmsReadUInt16Number(io, &nSegments)) return ((void*)0);
     if (!_cmsReadUInt16Number(io, ((void*)0))) return ((void*)0);

     if (nSegments < 1) return ((void*)0);
     Segments = (cmsCurveSegment*) _cmsCalloc(self ->ContextID, nSegments, sizeof(cmsCurveSegment));
     if (Segments == ((void*)0)) return ((void*)0);


     for (i=0; i < (cmsUInt32Number) nSegments - 1; i++) {

         Segments[i].x0 = PrevBreak;
         if (!_cmsReadFloat32Number(io, &Segments[i].x1)) goto Error;
         PrevBreak = Segments[i].x1;
     }

     Segments[nSegments-1].x0 = PrevBreak;
     Segments[nSegments-1].x1 = 1E22F;


     for (i=0; i < nSegments; i++) {

          if (!_cmsReadUInt32Number(io, (cmsUInt32Number*) &ElementSig)) goto Error;
          if (!_cmsReadUInt32Number(io, ((void*)0))) goto Error;

           switch (ElementSig) {

            case cmsSigFormulaCurveSeg: {

                cmsUInt16Number Type;
                cmsUInt32Number ParamsByType[] = {4, 5, 5 };

                if (!_cmsReadUInt16Number(io, &Type)) goto Error;
                if (!_cmsReadUInt16Number(io, ((void*)0))) goto Error;

                Segments[i].Type = Type + 6;
                if (Type > 2) goto Error;

                for (j=0; j < ParamsByType[Type]; j++) {

                    cmsFloat32Number f;
                    if (!_cmsReadFloat32Number(io, &f)) goto Error;
                    Segments[i].Params[j] = f;
                }
                }
                break;


            case cmsSigSampledCurveSeg: {
                cmsUInt32Number Count;

                if (!_cmsReadUInt32Number(io, &Count)) return ((void*)0);

                Segments[i].nGridPoints = Count;
                Segments[i].SampledPoints = (cmsFloat32Number*) _cmsCalloc(self ->ContextID, Count, sizeof(cmsFloat32Number));
                if (Segments[i].SampledPoints == ((void*)0)) goto Error;

                for (j=0; j < Count; j++) {
                    if (!_cmsReadFloat32Number(io, &Segments[i].SampledPoints[j])) goto Error;
                }
                }
                break;

            default:
                {
                char String[5];

                _cmsTagSignature2String(String, (cmsTagSignature) ElementSig);
                cmsSignalError(self->ContextID, 8, "Unknown curve element type '%s' found.", String);
                }
                return ((void*)0);

         }
     }

     Curve = cmsBuildSegmentedToneCurve(self ->ContextID, nSegments, Segments);

     for (i=0; i < nSegments; i++) {
         if (Segments[i].SampledPoints) _cmsFree(self ->ContextID, Segments[i].SampledPoints);
     }
     _cmsFree(self ->ContextID, Segments);
     return Curve;

Error:
     if (Segments) _cmsFree(self ->ContextID, Segments);
     return ((void*)0);
}


static
cmsBool ReadMPECurve(struct _cms_typehandler_struct* self,
                     cmsIOHANDLER* io,
                     void* Cargo,
                     cmsUInt32Number n,
                     cmsUInt32Number SizeOfTag)
{
      cmsToneCurve** GammaTables = ( cmsToneCurve**) Cargo;

      GammaTables[n] = ReadSegmentedCurve(self, io);
      return (GammaTables[n] != ((void*)0));

      ((void)SizeOfTag);
}

static
void *Type_MPEcurve_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsStage* mpe = ((void*)0);
    cmsUInt16Number InputChans, OutputChans;
    cmsUInt32Number i, BaseOffset;
    cmsToneCurve** GammaTables;

    *nItems = 0;


    BaseOffset = io ->Tell(io) - sizeof(_cmsTagBase);

    if (!_cmsReadUInt16Number(io, &InputChans)) return ((void*)0);
    if (!_cmsReadUInt16Number(io, &OutputChans)) return ((void*)0);

    if (InputChans != OutputChans) return ((void*)0);

    GammaTables = (cmsToneCurve**) _cmsCalloc(self ->ContextID, InputChans, sizeof(cmsToneCurve*));
    if (GammaTables == ((void*)0)) return ((void*)0);

    if (ReadPositionTable(self, io, InputChans, BaseOffset, GammaTables, ReadMPECurve)) {

        mpe = cmsStageAllocToneCurves(self ->ContextID, InputChans, GammaTables);
    }
    else {
        mpe = ((void*)0);
    }

    for (i=0; i < InputChans; i++) {
        if (GammaTables[i]) cmsFreeToneCurve(GammaTables[i]);
    }

    _cmsFree(self ->ContextID, GammaTables);
    *nItems = (mpe != ((void*)0)) ? 1 : 0;
    return mpe;

    ((void)SizeOfTag);
}



static
cmsBool WriteSegmentedCurve(cmsIOHANDLER* io, cmsToneCurve* g)
{
    cmsUInt32Number i, j;
    cmsCurveSegment* Segments = g ->Segments;
    cmsUInt32Number nSegments = g ->nSegments;

    if (!_cmsWriteUInt32Number(io, cmsSigSegmentedCurve)) goto Error;
    if (!_cmsWriteUInt32Number(io, 0)) goto Error;
    if (!_cmsWriteUInt16Number(io, (cmsUInt16Number) nSegments)) goto Error;
    if (!_cmsWriteUInt16Number(io, 0)) goto Error;


    for (i=0; i < nSegments - 1; i++) {
        if (!_cmsWriteFloat32Number(io, Segments[i].x1)) goto Error;
    }


    for (i=0; i < g ->nSegments; i++) {

        cmsCurveSegment* ActualSeg = Segments + i;

        if (ActualSeg -> Type == 0) {


            if (!_cmsWriteUInt32Number(io, (cmsUInt32Number) cmsSigSampledCurveSeg)) goto Error;
            if (!_cmsWriteUInt32Number(io, 0)) goto Error;
            if (!_cmsWriteUInt32Number(io, ActualSeg -> nGridPoints)) goto Error;

            for (j=0; j < g ->Segments[i].nGridPoints; j++) {
                if (!_cmsWriteFloat32Number(io, ActualSeg -> SampledPoints[j])) goto Error;
            }

        }
        else {
            int Type;
            cmsUInt32Number ParamsByType[] = { 4, 5, 5 };


            if (!_cmsWriteUInt32Number(io, (cmsUInt32Number) cmsSigFormulaCurveSeg)) goto Error;
            if (!_cmsWriteUInt32Number(io, 0)) goto Error;


            Type = ActualSeg ->Type - 6;
            if (Type > 2 || Type < 0) goto Error;

            if (!_cmsWriteUInt16Number(io, (cmsUInt16Number) Type)) goto Error;
            if (!_cmsWriteUInt16Number(io, 0)) goto Error;

            for (j=0; j < ParamsByType[Type]; j++) {
                if (!_cmsWriteFloat32Number(io, (cmsFloat32Number) ActualSeg ->Params[j])) goto Error;
            }
        }



    }

    return 1;

Error:
    return 0;
}


static
cmsBool WriteMPECurve(struct _cms_typehandler_struct* self,
                      cmsIOHANDLER* io,
                      void* Cargo,
                      cmsUInt32Number n,
                      cmsUInt32Number SizeOfTag)
{
    _cmsStageToneCurvesData* Curves = (_cmsStageToneCurvesData*) Cargo;

    return WriteSegmentedCurve(io, Curves ->TheCurves[n]);

    ((void)SizeOfTag);
    ((void)self);
}


static
cmsBool Type_MPEcurve_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUInt32Number BaseOffset;
    cmsStage* mpe = (cmsStage*) Ptr;
    _cmsStageToneCurvesData* Curves = (_cmsStageToneCurvesData*) mpe ->Data;

    BaseOffset = io ->Tell(io) - sizeof(_cmsTagBase);


    if (!_cmsWriteUInt16Number(io, (cmsUInt16Number) mpe ->InputChannels)) return 0;
    if (!_cmsWriteUInt16Number(io, (cmsUInt16Number) mpe ->InputChannels)) return 0;

    if (!WritePositionTable(self, io, 0,
                                mpe ->InputChannels, BaseOffset, Curves, WriteMPECurve)) return 0;


    return 1;

    ((void)nItems);
}
# 4171 "./lcms2/src/cmstypes.c"
static
void *Type_MPEmatrix_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsStage* mpe;
    cmsUInt16Number InputChans, OutputChans;
    cmsUInt32Number nElems, i;
    cmsFloat64Number* Matrix;
    cmsFloat64Number* Offsets;

    if (!_cmsReadUInt16Number(io, &InputChans)) return ((void*)0);
    if (!_cmsReadUInt16Number(io, &OutputChans)) return ((void*)0);


    nElems = InputChans * OutputChans;


    Matrix = (cmsFloat64Number*) _cmsCalloc(self ->ContextID, nElems, sizeof(cmsFloat64Number));
    if (Matrix == ((void*)0)) return ((void*)0);

    Offsets = (cmsFloat64Number*) _cmsCalloc(self ->ContextID, OutputChans, sizeof(cmsFloat64Number));
    if (Offsets == ((void*)0)) {

        _cmsFree(self ->ContextID, Matrix);
        return ((void*)0);
    }

    for (i=0; i < nElems; i++) {

        cmsFloat32Number v;

        if (!_cmsReadFloat32Number(io, &v)) return ((void*)0);
        Matrix[i] = v;
    }


    for (i=0; i < OutputChans; i++) {

        cmsFloat32Number v;

        if (!_cmsReadFloat32Number(io, &v)) return ((void*)0);
        Offsets[i] = v;
    }


    mpe = cmsStageAllocMatrix(self ->ContextID, OutputChans, InputChans, Matrix, Offsets);
    _cmsFree(self ->ContextID, Matrix);
    _cmsFree(self ->ContextID, Offsets);

    *nItems = 1;

    return mpe;

    ((void)SizeOfTag);
}

static
cmsBool Type_MPEmatrix_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUInt32Number i, nElems;
    cmsStage* mpe = (cmsStage*) Ptr;
    _cmsStageMatrixData* Matrix = (_cmsStageMatrixData*) mpe ->Data;

    if (!_cmsWriteUInt16Number(io, (cmsUInt16Number) mpe ->InputChannels)) return 0;
    if (!_cmsWriteUInt16Number(io, (cmsUInt16Number) mpe ->OutputChannels)) return 0;

    nElems = mpe ->InputChannels * mpe ->OutputChannels;

    for (i=0; i < nElems; i++) {
        if (!_cmsWriteFloat32Number(io, (cmsFloat32Number) Matrix->Double[i])) return 0;
    }


    for (i=0; i < mpe ->OutputChannels; i++) {

        if (Matrix ->Offset == ((void*)0)) {

               if (!_cmsWriteFloat32Number(io, 0)) return 0;
        }
        else {
               if (!_cmsWriteFloat32Number(io, (cmsFloat32Number) Matrix->Offset[i])) return 0;
        }
    }

    return 1;

    ((void)nItems);
    ((void)self);
}



static
void *Type_MPEclut_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsStage* mpe = ((void*)0);
    cmsUInt16Number InputChans, OutputChans;
    cmsUInt8Number Dimensions8[16];
    cmsUInt32Number i, nMaxGrids, GridPoints[8];
    _cmsStageCLutData* clut;

    if (!_cmsReadUInt16Number(io, &InputChans)) return ((void*)0);
    if (!_cmsReadUInt16Number(io, &OutputChans)) return ((void*)0);

    if (InputChans == 0) goto Error;
    if (OutputChans == 0) goto Error;

    if (io ->Read(io, Dimensions8, sizeof(cmsUInt8Number), 16) != 16)
        goto Error;


    nMaxGrids = InputChans > 8 ? 8 : InputChans;
    for (i=0; i < nMaxGrids; i++) GridPoints[i] = (cmsUInt32Number) Dimensions8[i];


    mpe = cmsStageAllocCLutFloatGranular(self ->ContextID, GridPoints, InputChans, OutputChans, ((void*)0));
    if (mpe == ((void*)0)) goto Error;


    clut = (_cmsStageCLutData*) mpe ->Data;
    for (i=0; i < clut ->nEntries; i++) {

        if (!_cmsReadFloat32Number(io, &clut ->Tab.TFloat[i])) goto Error;
    }

    *nItems = 1;
    return mpe;

Error:
    *nItems = 0;
    if (mpe != ((void*)0)) cmsStageFree(mpe);
    return ((void*)0);

    ((void)SizeOfTag);
}


static
cmsBool Type_MPEclut_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUInt8Number Dimensions8[16];
    cmsUInt32Number i;
    cmsStage* mpe = (cmsStage*) Ptr;
    _cmsStageCLutData* clut = (_cmsStageCLutData*) mpe ->Data;


    if (mpe -> InputChannels > 15) return 0;


    if (clut ->HasFloatValues == 0) return 0;

    if (!_cmsWriteUInt16Number(io, (cmsUInt16Number) mpe ->InputChannels)) return 0;
    if (!_cmsWriteUInt16Number(io, (cmsUInt16Number) mpe ->OutputChannels)) return 0;

    memset(Dimensions8, 0, sizeof(Dimensions8));

    for (i=0; i < mpe ->InputChannels; i++)
        Dimensions8[i] = (cmsUInt8Number) clut ->Params ->nSamples[i];

    if (!io ->Write(io, 16, Dimensions8)) return 0;

    for (i=0; i < clut ->nEntries; i++) {

        if (!_cmsWriteFloat32Number(io, clut ->Tab.TFloat[i])) return 0;
    }

    return 1;

    ((void)nItems);
    ((void)self);
}




static _cmsTagTypeLinkedList SupportedMPEtypes[] = {

{{ (cmsTagTypeSignature) cmsSigBAcsElemType, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0 }, &SupportedMPEtypes[1] },
{{ (cmsTagTypeSignature) cmsSigEAcsElemType, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0 }, &SupportedMPEtypes[2] },

{{ ((cmsTagTypeSignature) cmsSigCurveSetElemType), Type_MPEcurve_Read, Type_MPEcurve_Write, GenericMPEdup, GenericMPEfree, ((void*)0), 0 }, &SupportedMPEtypes[3] },
{{ ((cmsTagTypeSignature) cmsSigMatrixElemType), Type_MPEmatrix_Read, Type_MPEmatrix_Write, GenericMPEdup, GenericMPEfree, ((void*)0), 0 }, &SupportedMPEtypes[4] },
{{ ((cmsTagTypeSignature) cmsSigCLutElemType), Type_MPEclut_Read, Type_MPEclut_Write, GenericMPEdup, GenericMPEfree, ((void*)0), 0 }, ((void*)0) },
};

_cmsTagTypePluginChunkType _cmsMPETypePluginChunk = { ((void*)0) };

static
cmsBool ReadMPEElem(struct _cms_typehandler_struct* self,
                    cmsIOHANDLER* io,
                    void* Cargo,
                    cmsUInt32Number n,
                    cmsUInt32Number SizeOfTag)
{
    cmsStageSignature ElementSig;
    cmsTagTypeHandler* TypeHandler;
    cmsUInt32Number nItems;
    cmsPipeline *NewLUT = (cmsPipeline *) Cargo;
    _cmsTagTypePluginChunkType* MPETypePluginChunk = ( _cmsTagTypePluginChunkType*) _cmsContextGetClientChunk(self->ContextID, MPEPlugin);



    if (!_cmsReadUInt32Number(io, (cmsUInt32Number*) &ElementSig)) return 0;


    if (!_cmsReadUInt32Number(io, ((void*)0))) return 0;


    TypeHandler = GetHandler((cmsTagTypeSignature) ElementSig, MPETypePluginChunk ->TagTypes, SupportedMPEtypes);
    if (TypeHandler == ((void*)0)) {

        char String[5];

        _cmsTagSignature2String(String, (cmsTagSignature) ElementSig);


        cmsSignalError(self ->ContextID, 8, "Unknown MPE type '%s' found.", String);
        return 0;
    }



    if (TypeHandler ->ReadPtr != ((void*)0)) {


        if (!cmsPipelineInsertStage(NewLUT, cmsAT_END, (cmsStage*) TypeHandler ->ReadPtr(self, io, &nItems, SizeOfTag)))
            return 0;
    }

    return 1;

    ((void)SizeOfTag);
    ((void)n);
}



static
void *Type_MPE_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt16Number InputChans, OutputChans;
    cmsUInt32Number ElementCount;
    cmsPipeline *NewLUT = ((void*)0);
    cmsUInt32Number BaseOffset;


    BaseOffset = io ->Tell(io) - sizeof(_cmsTagBase);


    if (!_cmsReadUInt16Number(io, &InputChans)) return ((void*)0);
    if (!_cmsReadUInt16Number(io, &OutputChans)) return ((void*)0);


    NewLUT = cmsPipelineAlloc(self ->ContextID, InputChans, OutputChans);
    if (NewLUT == ((void*)0)) return ((void*)0);

    if (!_cmsReadUInt32Number(io, &ElementCount)) return ((void*)0);

    if (!ReadPositionTable(self, io, ElementCount, BaseOffset, NewLUT, ReadMPEElem)) {
        if (NewLUT != ((void*)0)) cmsPipelineFree(NewLUT);
        *nItems = 0;
        return ((void*)0);
    }


    *nItems = 1;
    return NewLUT;

    ((void)SizeOfTag);
}




static
cmsBool Type_MPE_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUInt32Number i, BaseOffset, DirectoryPos, CurrentPos;
    int inputChan, outputChan;
    cmsUInt32Number ElemCount;
    cmsUInt32Number *ElementOffsets = ((void*)0), *ElementSizes = ((void*)0), Before;
    cmsStageSignature ElementSig;
    cmsPipeline* Lut = (cmsPipeline*) Ptr;
    cmsStage* Elem = Lut ->Elements;
    cmsTagTypeHandler* TypeHandler;
    _cmsTagTypePluginChunkType* MPETypePluginChunk = ( _cmsTagTypePluginChunkType*) _cmsContextGetClientChunk(self->ContextID, MPEPlugin);

    BaseOffset = io ->Tell(io) - sizeof(_cmsTagBase);

    inputChan = cmsPipelineInputChannels(Lut);
    outputChan = cmsPipelineOutputChannels(Lut);
    ElemCount = cmsPipelineStageCount(Lut);

    ElementOffsets = (cmsUInt32Number *) _cmsCalloc(self ->ContextID, ElemCount, sizeof(cmsUInt32Number));
    if (ElementOffsets == ((void*)0)) goto Error;

    ElementSizes = (cmsUInt32Number *) _cmsCalloc(self ->ContextID, ElemCount, sizeof(cmsUInt32Number));
    if (ElementSizes == ((void*)0)) goto Error;


    if (!_cmsWriteUInt16Number(io, (cmsUInt16Number) inputChan)) goto Error;
    if (!_cmsWriteUInt16Number(io, (cmsUInt16Number) outputChan)) goto Error;
    if (!_cmsWriteUInt32Number(io, (cmsUInt16Number) ElemCount)) goto Error;

    DirectoryPos = io ->Tell(io);


    for (i=0; i < ElemCount; i++) {
        if (!_cmsWriteUInt32Number(io, 0)) goto Error;
        if (!_cmsWriteUInt32Number(io, 0)) goto Error;
    }


    for (i=0; i < ElemCount; i++) {

        ElementOffsets[i] = io ->Tell(io) - BaseOffset;

        ElementSig = Elem ->Type;

        TypeHandler = GetHandler((cmsTagTypeSignature) ElementSig, MPETypePluginChunk->TagTypes, SupportedMPEtypes);
        if (TypeHandler == ((void*)0)) {

                char String[5];

                _cmsTagSignature2String(String, (cmsTagSignature) ElementSig);


                 cmsSignalError(self->ContextID, 8, "Found unknown MPE type '%s'", String);
                 goto Error;
        }

        if (!_cmsWriteUInt32Number(io, ElementSig)) goto Error;
        if (!_cmsWriteUInt32Number(io, 0)) goto Error;
        Before = io ->Tell(io);
        if (!TypeHandler ->WritePtr(self, io, Elem, 1)) goto Error;
        if (!_cmsWriteAlignment(io)) goto Error;

        ElementSizes[i] = io ->Tell(io) - Before;

        Elem = Elem ->Next;
    }


    CurrentPos = io ->Tell(io);

    if (!io ->Seek(io, DirectoryPos)) goto Error;

    for (i=0; i < ElemCount; i++) {
        if (!_cmsWriteUInt32Number(io, ElementOffsets[i])) goto Error;
        if (!_cmsWriteUInt32Number(io, ElementSizes[i])) goto Error;
    }

    if (!io ->Seek(io, CurrentPos)) goto Error;

    if (ElementOffsets != ((void*)0)) _cmsFree(self ->ContextID, ElementOffsets);
    if (ElementSizes != ((void*)0)) _cmsFree(self ->ContextID, ElementSizes);
    return 1;

Error:
    if (ElementOffsets != ((void*)0)) _cmsFree(self ->ContextID, ElementOffsets);
    if (ElementSizes != ((void*)0)) _cmsFree(self ->ContextID, ElementSizes);
    return 0;

    ((void)nItems);
}


static
void* Type_MPE_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return (void*) cmsPipelineDup((cmsPipeline*) Ptr);

    ((void)n);
    ((void)self);
}

static
void Type_MPE_Free(struct _cms_typehandler_struct* self, void *Ptr)
{
    cmsPipelineFree((cmsPipeline*) Ptr);
    return;

    ((void)self);
}
# 4565 "./lcms2/src/cmstypes.c"
typedef struct {
    double Gamma;
    double Min;
    double Max;
} _cmsVCGTGAMMA;


static
void *Type_vcgt_Read(struct _cms_typehandler_struct* self,
                     cmsIOHANDLER* io,
                     cmsUInt32Number* nItems,
                     cmsUInt32Number SizeOfTag)
{
    cmsUInt32Number TagType, n, i;
    cmsToneCurve** Curves;

    *nItems = 0;


    if (!_cmsReadUInt32Number(io, &TagType)) return ((void*)0);


    Curves = ( cmsToneCurve**) _cmsCalloc(self ->ContextID, 3, sizeof(cmsToneCurve*));
    if (Curves == ((void*)0)) return ((void*)0);


    switch (TagType) {


    case 0:
    {
       cmsUInt16Number nChannels, nElems, nBytes;


       if (!_cmsReadUInt16Number(io, &nChannels)) goto Error;

       if (nChannels != 3) {
           cmsSignalError(self->ContextID, 8, "Unsupported number of channels for VCGT '%d'", nChannels);
           goto Error;
       }


       if (!_cmsReadUInt16Number(io, &nElems)) goto Error;
       if (!_cmsReadUInt16Number(io, &nBytes)) goto Error;


       if (nElems == 256 && nBytes == 1 && SizeOfTag == 1576)
           nBytes = 2;



       for (n=0; n < 3; n++) {

           Curves[n] = cmsBuildTabulatedToneCurve16(self ->ContextID, nElems, ((void*)0));
           if (Curves[n] == ((void*)0)) goto Error;


           switch (nBytes) {


           case 1:
               for (i=0; i < nElems; i++) {

                   cmsUInt8Number v;

                      if (!_cmsReadUInt8Number(io, &v)) goto Error;
                      Curves[n] ->Table16[i] = (cmsUInt16Number) ((((cmsUInt16Number) (v)) << 8)|(v));
               }
               break;


           case 2:
              if (!_cmsReadUInt16Array(io, nElems, Curves[n]->Table16)) goto Error;
              break;


           default:
              cmsSignalError(self->ContextID, 8, "Unsupported bit depth for VCGT '%d'", nBytes * 8);
              goto Error;
           }
       }
    }
    break;


   case 1:
   {
       _cmsVCGTGAMMA Colorant[3];


       for (n=0; n < 3; n++) {

           double Params[10];

           if (!_cmsRead15Fixed16Number(io, &Colorant[n].Gamma)) goto Error;
           if (!_cmsRead15Fixed16Number(io, &Colorant[n].Min)) goto Error;
           if (!_cmsRead15Fixed16Number(io, &Colorant[n].Max)) goto Error;
# 4675 "./lcms2/src/cmstypes.c"
           Params[0] = Colorant[n].Gamma;
           Params[1] = pow((Colorant[n].Max - Colorant[n].Min), (1.0 / Colorant[n].Gamma));
           Params[2] = 0;
           Params[3] = 0;
           Params[4] = 0;
           Params[5] = Colorant[n].Min;
           Params[6] = 0;

           Curves[n] = cmsBuildParametricToneCurve(self ->ContextID, 5, Params);
           if (Curves[n] == ((void*)0)) goto Error;
       }
   }
   break;


   default:
      cmsSignalError(self->ContextID, 8, "Unsupported tag type for VCGT '%d'", TagType);
      goto Error;
   }

   *nItems = 1;
   return (void*) Curves;


Error:

    cmsFreeToneCurveTriple(Curves);
    _cmsFree(self ->ContextID, Curves);
    return ((void*)0);

     ((void)SizeOfTag);
}



static
cmsBool Type_vcgt_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsToneCurve** Curves = (cmsToneCurve**) Ptr;
    cmsUInt32Number i, j;

    if (cmsGetToneCurveParametricType(Curves[0]) == 5 &&
        cmsGetToneCurveParametricType(Curves[1]) == 5 &&
        cmsGetToneCurveParametricType(Curves[2]) == 5) {

            if (!_cmsWriteUInt32Number(io, 1)) return 0;


            for (i=0; i < 3; i++) {

                _cmsVCGTGAMMA v;

                v.Gamma = Curves[i] ->Segments[0].Params[0];
                v.Min = Curves[i] ->Segments[0].Params[5];
                v.Max = pow(Curves[i] ->Segments[0].Params[1], v.Gamma) + v.Min;

                if (!_cmsWrite15Fixed16Number(io, v.Gamma)) return 0;
                if (!_cmsWrite15Fixed16Number(io, v.Min)) return 0;
                if (!_cmsWrite15Fixed16Number(io, v.Max)) return 0;
            }
    }

    else {


        if (!_cmsWriteUInt32Number(io, 0)) return 0;
        if (!_cmsWriteUInt16Number(io, 3)) return 0;
        if (!_cmsWriteUInt16Number(io, 256)) return 0;
        if (!_cmsWriteUInt16Number(io, 2)) return 0;

        for (i=0; i < 3; i++) {
            for (j=0; j < 256; j++) {

                cmsFloat32Number v = cmsEvalToneCurveFloat(Curves[i], (cmsFloat32Number) (j / 255.0));
                cmsUInt16Number n = _cmsQuickSaturateWord(v * 65535.0);

                if (!_cmsWriteUInt16Number(io, n)) return 0;
            }
        }
    }

    return 1;

    ((void)self);
    ((void)nItems);
}

static
void* Type_vcgt_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    cmsToneCurve** OldCurves = (cmsToneCurve**) Ptr;
    cmsToneCurve** NewCurves;

    NewCurves = ( cmsToneCurve**) _cmsCalloc(self ->ContextID, 3, sizeof(cmsToneCurve*));
    if (NewCurves == ((void*)0)) return ((void*)0);

    NewCurves[0] = cmsDupToneCurve(OldCurves[0]);
    NewCurves[1] = cmsDupToneCurve(OldCurves[1]);
    NewCurves[2] = cmsDupToneCurve(OldCurves[2]);

    return (void*) NewCurves;

    ((void)n);
}


static
void Type_vcgt_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsFreeToneCurveTriple((cmsToneCurve**) Ptr);
    _cmsFree(self ->ContextID, Ptr);
}







typedef struct {
    cmsContext ContextID;
    cmsUInt32Number *Offsets;
    cmsUInt32Number *Sizes;
} _cmsDICelem;

typedef struct {
    _cmsDICelem Name, Value, DisplayName, DisplayValue;

} _cmsDICarray;


static
cmsBool AllocElem(cmsContext ContextID, _cmsDICelem* e, cmsUInt32Number Count)
{
    e->Offsets = (cmsUInt32Number *) _cmsCalloc(ContextID, Count, sizeof(cmsUInt32Number));
    if (e->Offsets == ((void*)0)) return 0;

    e->Sizes = (cmsUInt32Number *) _cmsCalloc(ContextID, Count, sizeof(cmsUInt32Number));
    if (e->Sizes == ((void*)0)) {

        _cmsFree(ContextID, e -> Offsets);
        return 0;
    }

    e ->ContextID = ContextID;
    return 1;
}


static
void FreeElem(_cmsDICelem* e)
{
    if (e ->Offsets != ((void*)0)) _cmsFree(e -> ContextID, e -> Offsets);
    if (e ->Sizes != ((void*)0)) _cmsFree(e -> ContextID, e -> Sizes);
    e->Offsets = e ->Sizes = ((void*)0);
}


static
void FreeArray( _cmsDICarray* a)
{
    if (a ->Name.Offsets != ((void*)0)) FreeElem(&a->Name);
    if (a ->Value.Offsets != ((void*)0)) FreeElem(&a ->Value);
    if (a ->DisplayName.Offsets != ((void*)0)) FreeElem(&a->DisplayName);
    if (a ->DisplayValue.Offsets != ((void*)0)) FreeElem(&a ->DisplayValue);
}



static
cmsBool AllocArray(cmsContext ContextID, _cmsDICarray* a, cmsUInt32Number Count, cmsUInt32Number Length)
{

    memset(a, 0, sizeof(_cmsDICarray));


    if (!AllocElem(ContextID, &a ->Name, Count)) goto Error;
    if (!AllocElem(ContextID, &a ->Value, Count)) goto Error;

    if (Length > 16) {
        if (!AllocElem(ContextID, &a -> DisplayName, Count)) goto Error;

    }
    if (Length > 24) {
        if (!AllocElem(ContextID, &a ->DisplayValue, Count)) goto Error;
    }
    return 1;

Error:
    FreeArray(a);
    return 0;
}


static
cmsBool ReadOneElem(cmsIOHANDLER* io, _cmsDICelem* e, cmsUInt32Number i, cmsUInt32Number BaseOffset)
{
    if (!_cmsReadUInt32Number(io, &e->Offsets[i])) return 0;
    if (!_cmsReadUInt32Number(io, &e ->Sizes[i])) return 0;


    if (e ->Offsets[i] > 0)
        e ->Offsets[i] += BaseOffset;
    return 1;
}


static
cmsBool ReadOffsetArray(cmsIOHANDLER* io, _cmsDICarray* a, cmsUInt32Number Count, cmsUInt32Number Length, cmsUInt32Number BaseOffset)
{
    cmsUInt32Number i;


    for (i=0; i < Count; i++) {

        if (!ReadOneElem(io, &a -> Name, i, BaseOffset)) return 0;
        if (!ReadOneElem(io, &a -> Value, i, BaseOffset)) return 0;

        if (Length > 16) {

            if (!ReadOneElem(io, &a ->DisplayName, i, BaseOffset)) return 0;

        }

        if (Length > 24) {

            if (!ReadOneElem(io, & a -> DisplayValue, i, BaseOffset)) return 0;
        }
    }
    return 1;
}



static
cmsBool WriteOneElem(cmsIOHANDLER* io, _cmsDICelem* e, cmsUInt32Number i)
{
    if (!_cmsWriteUInt32Number(io, e->Offsets[i])) return 0;
    if (!_cmsWriteUInt32Number(io, e ->Sizes[i])) return 0;

    return 1;
}

static
cmsBool WriteOffsetArray(cmsIOHANDLER* io, _cmsDICarray* a, cmsUInt32Number Count, cmsUInt32Number Length)
{
    cmsUInt32Number i;

    for (i=0; i < Count; i++) {

        if (!WriteOneElem(io, &a -> Name, i)) return 0;
        if (!WriteOneElem(io, &a -> Value, i)) return 0;

        if (Length > 16) {

            if (!WriteOneElem(io, &a -> DisplayName, i)) return 0;
        }

        if (Length > 24) {

            if (!WriteOneElem(io, &a -> DisplayValue, i)) return 0;
        }
    }

    return 1;
}

static
cmsBool ReadOneWChar(cmsIOHANDLER* io, _cmsDICelem* e, cmsUInt32Number i, wchar_t ** wcstr)
{

    cmsUInt32Number nChars;



      if (e -> Offsets[i] == 0) {

          *wcstr = ((void*)0);
          return 1;
      }

      if (!io -> Seek(io, e -> Offsets[i])) return 0;

      nChars = e ->Sizes[i] / sizeof(cmsUInt16Number);


      *wcstr = (wchar_t*) _cmsMallocZero(e ->ContextID, (nChars + 1) * sizeof(wchar_t));
      if (*wcstr == ((void*)0)) return 0;

      if (!_cmsReadWCharArray(io, nChars, *wcstr)) {
          _cmsFree(e ->ContextID, *wcstr);
          return 0;
      }


      (*wcstr)[nChars] = 0;
      return 1;
}

static
cmsUInt32Number mywcslen(const wchar_t *s)
{
    const wchar_t *p;

    p = s;
    while (*p)
        p++;

    return (cmsUInt32Number)(p - s);
}

static
cmsBool WriteOneWChar(cmsIOHANDLER* io, _cmsDICelem* e, cmsUInt32Number i, const wchar_t * wcstr, cmsUInt32Number BaseOffset)
{
    cmsUInt32Number Before = io ->Tell(io);
    cmsUInt32Number n;

    e ->Offsets[i] = Before - BaseOffset;

    if (wcstr == ((void*)0)) {
        e ->Sizes[i] = 0;
        e ->Offsets[i] = 0;
        return 1;
    }

    n = mywcslen(wcstr);
    if (!_cmsWriteWCharArray(io, n, wcstr)) return 0;

    e ->Sizes[i] = io ->Tell(io) - Before;
    return 1;
}

static
cmsBool ReadOneMLUC(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, _cmsDICelem* e, cmsUInt32Number i, cmsMLU** mlu)
{
    cmsUInt32Number nItems = 0;


    if (e -> Offsets[i] == 0 || e ->Sizes[i] == 0) {

        *mlu = ((void*)0);
        return 1;
    }

    if (!io -> Seek(io, e -> Offsets[i])) return 0;

    *mlu = (cmsMLU*) Type_MLU_Read(self, io, &nItems, e ->Sizes[i]);
    return *mlu != ((void*)0);
}

static
cmsBool WriteOneMLUC(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, _cmsDICelem* e, cmsUInt32Number i, const cmsMLU* mlu, cmsUInt32Number BaseOffset)
{
    cmsUInt32Number Before;



     if (mlu == ((void*)0)) {
        e ->Sizes[i] = 0;
        e ->Offsets[i] = 0;
        return 1;
    }

    Before = io ->Tell(io);
    e ->Offsets[i] = Before - BaseOffset;

    if (!Type_MLU_Write(self, io, (void*) mlu, 1)) return 0;

    e ->Sizes[i] = io ->Tell(io) - Before;
    return 1;
}


static
void *Type_Dictionary_Read(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
   cmsHANDLE hDict;
   cmsUInt32Number i, Count, Length;
   cmsUInt32Number BaseOffset;
   _cmsDICarray a;
   wchar_t *NameWCS = ((void*)0), *ValueWCS = ((void*)0);
   cmsMLU *DisplayNameMLU = ((void*)0), *DisplayValueMLU=((void*)0);
   cmsBool rc;

    *nItems = 0;


    BaseOffset = io ->Tell(io) - sizeof(_cmsTagBase);


    if (!_cmsReadUInt32Number(io, &Count)) return ((void*)0);
    SizeOfTag -= sizeof(cmsUInt32Number);


    if (!_cmsReadUInt32Number(io, &Length)) return ((void*)0);
    SizeOfTag -= sizeof(cmsUInt32Number);


    if (Length != 16 && Length != 24 && Length != 32) {
         cmsSignalError(self->ContextID, 8, "Unknown record length in dictionary '%d'", Length);
         return ((void*)0);
    }


    hDict = cmsDictAlloc(self -> ContextID);
    if (hDict == ((void*)0)) return ((void*)0);


    if (!AllocArray(self -> ContextID, &a, Count, Length)) goto Error;


    if (!ReadOffsetArray(io, &a, Count, Length, BaseOffset)) goto Error;


    for (i=0; i < Count; i++) {

        if (!ReadOneWChar(io, &a.Name, i, &NameWCS)) goto Error;
        if (!ReadOneWChar(io, &a.Value, i, &ValueWCS)) goto Error;

        if (Length > 16) {
            if (!ReadOneMLUC(self, io, &a.DisplayName, i, &DisplayNameMLU)) goto Error;
        }

        if (Length > 24) {
            if (!ReadOneMLUC(self, io, &a.DisplayValue, i, &DisplayValueMLU)) goto Error;
        }

        if (NameWCS == ((void*)0) || ValueWCS == ((void*)0)) {

            cmsSignalError(self->ContextID, 12, "Bad dictionary Name/Value");
            rc = 0;
        }
        else {

            rc = cmsDictAddEntry(hDict, NameWCS, ValueWCS, DisplayNameMLU, DisplayValueMLU);
        }

        if (NameWCS != ((void*)0)) _cmsFree(self ->ContextID, NameWCS);
        if (ValueWCS != ((void*)0)) _cmsFree(self ->ContextID, ValueWCS);
        if (DisplayNameMLU != ((void*)0)) cmsMLUfree(DisplayNameMLU);
        if (DisplayValueMLU != ((void*)0)) cmsMLUfree(DisplayValueMLU);

        if (!rc) goto Error;
    }

   FreeArray(&a);
   *nItems = 1;
   return (void*) hDict;

Error:
   FreeArray(&a);
   cmsDictFree(hDict);
   return ((void*)0);
}


static
cmsBool Type_Dictionary_Write(struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsHANDLE hDict = (cmsHANDLE) Ptr;
    const cmsDICTentry* p;
    cmsBool AnyName, AnyValue;
    cmsUInt32Number i, Count, Length;
    cmsUInt32Number DirectoryPos, CurrentPos, BaseOffset;
   _cmsDICarray a;

    if (hDict == ((void*)0)) return 0;

    BaseOffset = io ->Tell(io) - sizeof(_cmsTagBase);


    Count = 0; AnyName = 0; AnyValue = 0;
    for (p = cmsDictGetEntryList(hDict); p != ((void*)0); p = cmsDictNextEntry(p)) {

        if (p ->DisplayName != ((void*)0)) AnyName = 1;
        if (p ->DisplayValue != ((void*)0)) AnyValue = 1;
        Count++;
    }

    Length = 16;
    if (AnyName) Length += 8;
    if (AnyValue) Length += 8;

    if (!_cmsWriteUInt32Number(io, Count)) return 0;
    if (!_cmsWriteUInt32Number(io, Length)) return 0;


    DirectoryPos = io ->Tell(io);


    if (!AllocArray(self ->ContextID, &a, Count, Length)) goto Error;


    if (!WriteOffsetArray(io, &a, Count, Length)) goto Error;


    p = cmsDictGetEntryList(hDict);
    for (i=0; i < Count; i++) {

        if (!WriteOneWChar(io, &a.Name, i, p ->Name, BaseOffset)) goto Error;
        if (!WriteOneWChar(io, &a.Value, i, p ->Value, BaseOffset)) goto Error;

        if (p ->DisplayName != ((void*)0)) {
            if (!WriteOneMLUC(self, io, &a.DisplayName, i, p ->DisplayName, BaseOffset)) goto Error;
        }

        if (p ->DisplayValue != ((void*)0)) {
            if (!WriteOneMLUC(self, io, &a.DisplayValue, i, p ->DisplayValue, BaseOffset)) goto Error;
        }

       p = cmsDictNextEntry(p);
    }


    CurrentPos = io ->Tell(io);
    if (!io ->Seek(io, DirectoryPos)) goto Error;

    if (!WriteOffsetArray(io, &a, Count, Length)) goto Error;

    if (!io ->Seek(io, CurrentPos)) goto Error;

    FreeArray(&a);
    return 1;

Error:
    FreeArray(&a);
    return 0;

    ((void)nItems);
}


static
void* Type_Dictionary_Dup(struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return (void*) cmsDictDup((cmsHANDLE) Ptr);

    ((void)n);
    ((void)self);
}


static
void Type_Dictionary_Free(struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsDictFree((cmsHANDLE) Ptr);
    ((void)self);
}
# 5231 "./lcms2/src/cmstypes.c"
static _cmsTagTypeLinkedList SupportedTagTypes[] = {

{{ (cmsSigChromaticityType), Type_Chromaticity_Read, Type_Chromaticity_Write, Type_Chromaticity_Dup, Type_Chromaticity_Free, ((void*)0), 0 }, &SupportedTagTypes[1] },
{{ (cmsSigColorantOrderType), Type_ColorantOrderType_Read, Type_ColorantOrderType_Write, Type_ColorantOrderType_Dup, Type_ColorantOrderType_Free, ((void*)0), 0 }, &SupportedTagTypes[2] },
{{ (cmsSigS15Fixed16ArrayType), Type_S15Fixed16_Read, Type_S15Fixed16_Write, Type_S15Fixed16_Dup, Type_S15Fixed16_Free, ((void*)0), 0 }, &SupportedTagTypes[3] },
{{ (cmsSigU16Fixed16ArrayType), Type_U16Fixed16_Read, Type_U16Fixed16_Write, Type_U16Fixed16_Dup, Type_U16Fixed16_Free, ((void*)0), 0 }, &SupportedTagTypes[4] },
{{ (cmsSigTextType), Type_Text_Read, Type_Text_Write, Type_Text_Dup, Type_Text_Free, ((void*)0), 0 }, &SupportedTagTypes[5] },
{{ (cmsSigTextDescriptionType), Type_Text_Description_Read, Type_Text_Description_Write, Type_Text_Description_Dup, Type_Text_Description_Free, ((void*)0), 0 }, &SupportedTagTypes[6] },
{{ (cmsSigCurveType), Type_Curve_Read, Type_Curve_Write, Type_Curve_Dup, Type_Curve_Free, ((void*)0), 0 }, &SupportedTagTypes[7] },
{{ (cmsSigParametricCurveType), Type_ParametricCurve_Read, Type_ParametricCurve_Write, Type_ParametricCurve_Dup, Type_ParametricCurve_Free, ((void*)0), 0 }, &SupportedTagTypes[8] },
{{ (cmsSigDateTimeType), Type_DateTime_Read, Type_DateTime_Write, Type_DateTime_Dup, Type_DateTime_Free, ((void*)0), 0 }, &SupportedTagTypes[9] },
{{ (cmsSigLut8Type), Type_LUT8_Read, Type_LUT8_Write, Type_LUT8_Dup, Type_LUT8_Free, ((void*)0), 0 }, &SupportedTagTypes[10] },
{{ (cmsSigLut16Type), Type_LUT16_Read, Type_LUT16_Write, Type_LUT16_Dup, Type_LUT16_Free, ((void*)0), 0 }, &SupportedTagTypes[11] },
{{ (cmsSigColorantTableType), Type_ColorantTable_Read, Type_ColorantTable_Write, Type_ColorantTable_Dup, Type_ColorantTable_Free, ((void*)0), 0 }, &SupportedTagTypes[12] },
{{ (cmsSigNamedColor2Type), Type_NamedColor_Read, Type_NamedColor_Write, Type_NamedColor_Dup, Type_NamedColor_Free, ((void*)0), 0 }, &SupportedTagTypes[13] },
{{ (cmsSigMultiLocalizedUnicodeType), Type_MLU_Read, Type_MLU_Write, Type_MLU_Dup, Type_MLU_Free, ((void*)0), 0 }, &SupportedTagTypes[14] },
{{ (cmsSigProfileSequenceDescType), Type_ProfileSequenceDesc_Read, Type_ProfileSequenceDesc_Write, Type_ProfileSequenceDesc_Dup, Type_ProfileSequenceDesc_Free, ((void*)0), 0 }, &SupportedTagTypes[15] },
{{ (cmsSigSignatureType), Type_Signature_Read, Type_Signature_Write, Type_Signature_Dup, Type_Signature_Free, ((void*)0), 0 }, &SupportedTagTypes[16] },
{{ (cmsSigMeasurementType), Type_Measurement_Read, Type_Measurement_Write, Type_Measurement_Dup, Type_Measurement_Free, ((void*)0), 0 }, &SupportedTagTypes[17] },
{{ (cmsSigDataType), Type_Data_Read, Type_Data_Write, Type_Data_Dup, Type_Data_Free, ((void*)0), 0 }, &SupportedTagTypes[18] },
{{ (cmsSigLutAtoBType), Type_LUTA2B_Read, Type_LUTA2B_Write, Type_LUTA2B_Dup, Type_LUTA2B_Free, ((void*)0), 0 }, &SupportedTagTypes[19] },
{{ (cmsSigLutBtoAType), Type_LUTB2A_Read, Type_LUTB2A_Write, Type_LUTB2A_Dup, Type_LUTB2A_Free, ((void*)0), 0 }, &SupportedTagTypes[20] },
{{ (cmsSigUcrBgType), Type_UcrBg_Read, Type_UcrBg_Write, Type_UcrBg_Dup, Type_UcrBg_Free, ((void*)0), 0 }, &SupportedTagTypes[21] },
{{ (cmsSigCrdInfoType), Type_CrdInfo_Read, Type_CrdInfo_Write, Type_CrdInfo_Dup, Type_CrdInfo_Free, ((void*)0), 0 }, &SupportedTagTypes[22] },
{{ (cmsSigMultiProcessElementType), Type_MPE_Read, Type_MPE_Write, Type_MPE_Dup, Type_MPE_Free, ((void*)0), 0 }, &SupportedTagTypes[23] },
{{ (cmsSigScreeningType), Type_Screening_Read, Type_Screening_Write, Type_Screening_Dup, Type_Screening_Free, ((void*)0), 0 }, &SupportedTagTypes[24] },
{{ (cmsSigViewingConditionsType), Type_ViewingConditions_Read, Type_ViewingConditions_Write, Type_ViewingConditions_Dup, Type_ViewingConditions_Free, ((void*)0), 0 }, &SupportedTagTypes[25] },
{{ (cmsSigXYZType), Type_XYZ_Read, Type_XYZ_Write, Type_XYZ_Dup, Type_XYZ_Free, ((void*)0), 0 }, &SupportedTagTypes[26] },
{{ (((cmsTagTypeSignature) 0x17A505B8)), Type_XYZ_Read, Type_XYZ_Write, Type_XYZ_Dup, Type_XYZ_Free, ((void*)0), 0 }, &SupportedTagTypes[27] },
{{ (((cmsTagTypeSignature) 0x9478ee00)), Type_Curve_Read, Type_Curve_Write, Type_Curve_Dup, Type_Curve_Free, ((void*)0), 0 }, &SupportedTagTypes[28] },
{{ (cmsSigProfileSequenceIdType), Type_ProfileSequenceId_Read, Type_ProfileSequenceId_Write, Type_ProfileSequenceId_Dup, Type_ProfileSequenceId_Free, ((void*)0), 0 }, &SupportedTagTypes[29] },
{{ (cmsSigDictType), Type_Dictionary_Read, Type_Dictionary_Write, Type_Dictionary_Dup, Type_Dictionary_Free, ((void*)0), 0 }, &SupportedTagTypes[30] },
{{ (cmsSigVcgtType), Type_vcgt_Read, Type_vcgt_Write, Type_vcgt_Dup, Type_vcgt_Free, ((void*)0), 0 }, ((void*)0) }
};


_cmsTagTypePluginChunkType _cmsTagTypePluginChunk = { ((void*)0) };




static
void DupTagTypeList(struct _cmsContext_struct* ctx,
                    const struct _cmsContext_struct* src,
                    int loc)
{
   _cmsTagTypePluginChunkType newHead = { ((void*)0) };
   _cmsTagTypeLinkedList* entry;
   _cmsTagTypeLinkedList* Anterior = ((void*)0);
   _cmsTagTypePluginChunkType* head = (_cmsTagTypePluginChunkType*) src->chunks[loc];


   for (entry = head->TagTypes;
       entry != ((void*)0);
       entry = entry ->Next) {

           _cmsTagTypeLinkedList *newEntry = ( _cmsTagTypeLinkedList *) _cmsSubAllocDup(ctx ->MemPool, entry, sizeof(_cmsTagTypeLinkedList));

           if (newEntry == ((void*)0))
               return;


           newEntry -> Next = ((void*)0);
           if (Anterior)
               Anterior -> Next = newEntry;

           Anterior = newEntry;

           if (newHead.TagTypes == ((void*)0))
               newHead.TagTypes = newEntry;
   }

   ctx ->chunks[loc] = _cmsSubAllocDup(ctx->MemPool, &newHead, sizeof(_cmsTagTypePluginChunkType));
}


void _cmsAllocTagTypePluginChunk(struct _cmsContext_struct* ctx,
                                 const struct _cmsContext_struct* src)
{
    if (src != ((void*)0)) {


        DupTagTypeList(ctx, src, TagTypePlugin);
    }
    else {
        static _cmsTagTypePluginChunkType TagTypePluginChunk = { ((void*)0) };
        ctx ->chunks[TagTypePlugin] = _cmsSubAllocDup(ctx ->MemPool, &TagTypePluginChunk, sizeof(_cmsTagTypePluginChunkType));
    }
}

void _cmsAllocMPETypePluginChunk(struct _cmsContext_struct* ctx,
                               const struct _cmsContext_struct* src)
{
    if (src != ((void*)0)) {


        DupTagTypeList(ctx, src, MPEPlugin);
    }
    else {
        static _cmsTagTypePluginChunkType TagTypePluginChunk = { ((void*)0) };
        ctx ->chunks[MPEPlugin] = _cmsSubAllocDup(ctx ->MemPool, &TagTypePluginChunk, sizeof(_cmsTagTypePluginChunkType));
    }

}



cmsBool _cmsRegisterTagTypePlugin(cmsContext id, cmsPluginBase* Data)
{
    return RegisterTypesPlugin(id, Data, TagTypePlugin);
}

cmsBool _cmsRegisterMultiProcessElementPlugin(cmsContext id, cmsPluginBase* Data)
{
    return RegisterTypesPlugin(id, Data,MPEPlugin);
}



cmsTagTypeHandler* _cmsGetTagTypeHandler(cmsContext ContextID, cmsTagTypeSignature sig)
{
    _cmsTagTypePluginChunkType* ctx = ( _cmsTagTypePluginChunkType*) _cmsContextGetClientChunk(ContextID, TagTypePlugin);

    return GetHandler(sig, ctx->TagTypes, SupportedTagTypes);
}





typedef struct _cmsTagLinkedList_st {

            cmsTagSignature Signature;
            cmsTagDescriptor Descriptor;
            struct _cmsTagLinkedList_st* Next;

} _cmsTagLinkedList;


static _cmsTagLinkedList SupportedTags[] = {

    { cmsSigAToB0Tag, { 1, 3, { cmsSigLut16Type, cmsSigLutAtoBType, cmsSigLut8Type}, DecideLUTtypeA2B}, &SupportedTags[1]},
    { cmsSigAToB1Tag, { 1, 3, { cmsSigLut16Type, cmsSigLutAtoBType, cmsSigLut8Type}, DecideLUTtypeA2B}, &SupportedTags[2]},
    { cmsSigAToB2Tag, { 1, 3, { cmsSigLut16Type, cmsSigLutAtoBType, cmsSigLut8Type}, DecideLUTtypeA2B}, &SupportedTags[3]},
    { cmsSigBToA0Tag, { 1, 3, { cmsSigLut16Type, cmsSigLutBtoAType, cmsSigLut8Type}, DecideLUTtypeB2A}, &SupportedTags[4]},
    { cmsSigBToA1Tag, { 1, 3, { cmsSigLut16Type, cmsSigLutBtoAType, cmsSigLut8Type}, DecideLUTtypeB2A}, &SupportedTags[5]},
    { cmsSigBToA2Tag, { 1, 3, { cmsSigLut16Type, cmsSigLutBtoAType, cmsSigLut8Type}, DecideLUTtypeB2A}, &SupportedTags[6]},


    { cmsSigRedColorantTag, { 1, 2, { cmsSigXYZType, ((cmsTagTypeSignature) 0x17A505B8) }, DecideXYZtype}, &SupportedTags[7]},
    { cmsSigGreenColorantTag, { 1, 2, { cmsSigXYZType, ((cmsTagTypeSignature) 0x17A505B8) }, DecideXYZtype}, &SupportedTags[8]},
    { cmsSigBlueColorantTag, { 1, 2, { cmsSigXYZType, ((cmsTagTypeSignature) 0x17A505B8) }, DecideXYZtype}, &SupportedTags[9]},

    { cmsSigRedTRCTag, { 1, 3, { cmsSigCurveType, cmsSigParametricCurveType, ((cmsTagTypeSignature) 0x9478ee00) }, DecideCurveType}, &SupportedTags[10]},
    { cmsSigGreenTRCTag, { 1, 3, { cmsSigCurveType, cmsSigParametricCurveType, ((cmsTagTypeSignature) 0x9478ee00) }, DecideCurveType}, &SupportedTags[11]},
    { cmsSigBlueTRCTag, { 1, 3, { cmsSigCurveType, cmsSigParametricCurveType, ((cmsTagTypeSignature) 0x9478ee00) }, DecideCurveType}, &SupportedTags[12]},

    { cmsSigCalibrationDateTimeTag, { 1, 1, { cmsSigDateTimeType }, ((void*)0)}, &SupportedTags[13]},
    { cmsSigCharTargetTag, { 1, 1, { cmsSigTextType }, ((void*)0)}, &SupportedTags[14]},

    { cmsSigChromaticAdaptationTag, { 9, 1, { cmsSigS15Fixed16ArrayType }, ((void*)0)}, &SupportedTags[15]},
    { cmsSigChromaticityTag, { 1, 1, { cmsSigChromaticityType }, ((void*)0)}, &SupportedTags[16]},
    { cmsSigColorantOrderTag, { 1, 1, { cmsSigColorantOrderType }, ((void*)0)}, &SupportedTags[17]},
    { cmsSigColorantTableTag, { 1, 1, { cmsSigColorantTableType }, ((void*)0)}, &SupportedTags[18]},
    { cmsSigColorantTableOutTag, { 1, 1, { cmsSigColorantTableType }, ((void*)0)}, &SupportedTags[19]},

    { cmsSigCopyrightTag, { 1, 3, { cmsSigTextType, cmsSigMultiLocalizedUnicodeType, cmsSigTextDescriptionType}, DecideTextType}, &SupportedTags[20]},
    { cmsSigDateTimeTag, { 1, 1, { cmsSigDateTimeType }, ((void*)0)}, &SupportedTags[21]},

    { cmsSigDeviceMfgDescTag, { 1, 3, { cmsSigTextDescriptionType, cmsSigMultiLocalizedUnicodeType, cmsSigTextType}, DecideTextDescType}, &SupportedTags[22]},
    { cmsSigDeviceModelDescTag, { 1, 3, { cmsSigTextDescriptionType, cmsSigMultiLocalizedUnicodeType, cmsSigTextType}, DecideTextDescType}, &SupportedTags[23]},

    { cmsSigGamutTag, { 1, 3, { cmsSigLut16Type, cmsSigLutBtoAType, cmsSigLut8Type }, DecideLUTtypeB2A}, &SupportedTags[24]},

    { cmsSigGrayTRCTag, { 1, 2, { cmsSigCurveType, cmsSigParametricCurveType }, DecideCurveType}, &SupportedTags[25]},
    { cmsSigLuminanceTag, { 1, 1, { cmsSigXYZType }, ((void*)0)}, &SupportedTags[26]},

    { cmsSigMediaBlackPointTag, { 1, 2, { cmsSigXYZType, ((cmsTagTypeSignature) 0x17A505B8) }, ((void*)0)}, &SupportedTags[27]},
    { cmsSigMediaWhitePointTag, { 1, 2, { cmsSigXYZType, ((cmsTagTypeSignature) 0x17A505B8) }, ((void*)0)}, &SupportedTags[28]},

    { cmsSigNamedColor2Tag, { 1, 1, { cmsSigNamedColor2Type }, ((void*)0)}, &SupportedTags[29]},

    { cmsSigPreview0Tag, { 1, 3, { cmsSigLut16Type, cmsSigLutBtoAType, cmsSigLut8Type }, DecideLUTtypeB2A}, &SupportedTags[30]},
    { cmsSigPreview1Tag, { 1, 3, { cmsSigLut16Type, cmsSigLutBtoAType, cmsSigLut8Type }, DecideLUTtypeB2A}, &SupportedTags[31]},
    { cmsSigPreview2Tag, { 1, 3, { cmsSigLut16Type, cmsSigLutBtoAType, cmsSigLut8Type }, DecideLUTtypeB2A}, &SupportedTags[32]},

    { cmsSigProfileDescriptionTag, { 1, 3, { cmsSigTextDescriptionType, cmsSigMultiLocalizedUnicodeType, cmsSigTextType}, DecideTextDescType}, &SupportedTags[33]},
    { cmsSigProfileSequenceDescTag, { 1, 1, { cmsSigProfileSequenceDescType }, ((void*)0)}, &SupportedTags[34]},
    { cmsSigTechnologyTag, { 1, 1, { cmsSigSignatureType }, ((void*)0)}, &SupportedTags[35]},

    { cmsSigColorimetricIntentImageStateTag, { 1, 1, { cmsSigSignatureType }, ((void*)0)}, &SupportedTags[36]},
    { cmsSigPerceptualRenderingIntentGamutTag, { 1, 1, { cmsSigSignatureType }, ((void*)0)}, &SupportedTags[37]},
    { cmsSigSaturationRenderingIntentGamutTag, { 1, 1, { cmsSigSignatureType }, ((void*)0)}, &SupportedTags[38]},

    { cmsSigMeasurementTag, { 1, 1, { cmsSigMeasurementType }, ((void*)0)}, &SupportedTags[39]},

    { cmsSigPs2CRD0Tag, { 1, 1, { cmsSigDataType }, ((void*)0)}, &SupportedTags[40]},
    { cmsSigPs2CRD1Tag, { 1, 1, { cmsSigDataType }, ((void*)0)}, &SupportedTags[41]},
    { cmsSigPs2CRD2Tag, { 1, 1, { cmsSigDataType }, ((void*)0)}, &SupportedTags[42]},
    { cmsSigPs2CRD3Tag, { 1, 1, { cmsSigDataType }, ((void*)0)}, &SupportedTags[43]},
    { cmsSigPs2CSATag, { 1, 1, { cmsSigDataType }, ((void*)0)}, &SupportedTags[44]},
    { cmsSigPs2RenderingIntentTag, { 1, 1, { cmsSigDataType }, ((void*)0)}, &SupportedTags[45]},

    { cmsSigViewingCondDescTag, { 1, 3, { cmsSigTextDescriptionType, cmsSigMultiLocalizedUnicodeType, cmsSigTextType}, DecideTextDescType}, &SupportedTags[46]},

    { cmsSigUcrBgTag, { 1, 1, { cmsSigUcrBgType}, ((void*)0)}, &SupportedTags[47]},
    { cmsSigCrdInfoTag, { 1, 1, { cmsSigCrdInfoType}, ((void*)0)}, &SupportedTags[48]},

    { cmsSigDToB0Tag, { 1, 1, { cmsSigMultiProcessElementType}, ((void*)0)}, &SupportedTags[49]},
    { cmsSigDToB1Tag, { 1, 1, { cmsSigMultiProcessElementType}, ((void*)0)}, &SupportedTags[50]},
    { cmsSigDToB2Tag, { 1, 1, { cmsSigMultiProcessElementType}, ((void*)0)}, &SupportedTags[51]},
    { cmsSigDToB3Tag, { 1, 1, { cmsSigMultiProcessElementType}, ((void*)0)}, &SupportedTags[52]},
    { cmsSigBToD0Tag, { 1, 1, { cmsSigMultiProcessElementType}, ((void*)0)}, &SupportedTags[53]},
    { cmsSigBToD1Tag, { 1, 1, { cmsSigMultiProcessElementType}, ((void*)0)}, &SupportedTags[54]},
    { cmsSigBToD2Tag, { 1, 1, { cmsSigMultiProcessElementType}, ((void*)0)}, &SupportedTags[55]},
    { cmsSigBToD3Tag, { 1, 1, { cmsSigMultiProcessElementType}, ((void*)0)}, &SupportedTags[56]},

    { cmsSigScreeningDescTag, { 1, 1, { cmsSigTextDescriptionType }, ((void*)0)}, &SupportedTags[57]},
    { cmsSigViewingConditionsTag, { 1, 1, { cmsSigViewingConditionsType }, ((void*)0)}, &SupportedTags[58]},

    { cmsSigScreeningTag, { 1, 1, { cmsSigScreeningType}, ((void*)0) }, &SupportedTags[59]},
    { cmsSigVcgtTag, { 1, 1, { cmsSigVcgtType}, ((void*)0) }, &SupportedTags[60]},
    { cmsSigMetaTag, { 1, 1, { cmsSigDictType}, ((void*)0) }, &SupportedTags[61]},
    { cmsSigProfileSequenceIdTag, { 1, 1, { cmsSigProfileSequenceIdType}, ((void*)0) }, &SupportedTags[62]},
    { cmsSigProfileDescriptionMLTag,{ 1, 1, { cmsSigMultiLocalizedUnicodeType}, ((void*)0)}, ((void*)0)}


};
# 5470 "./lcms2/src/cmstypes.c"
_cmsTagPluginChunkType _cmsTagPluginChunk = { ((void*)0) };



static
void DupTagList(struct _cmsContext_struct* ctx,
                    const struct _cmsContext_struct* src)
{
   _cmsTagPluginChunkType newHead = { ((void*)0) };
   _cmsTagLinkedList* entry;
   _cmsTagLinkedList* Anterior = ((void*)0);
   _cmsTagPluginChunkType* head = (_cmsTagPluginChunkType*) src->chunks[TagPlugin];


   for (entry = head->Tag;
       entry != ((void*)0);
       entry = entry ->Next) {

           _cmsTagLinkedList *newEntry = ( _cmsTagLinkedList *) _cmsSubAllocDup(ctx ->MemPool, entry, sizeof(_cmsTagLinkedList));

           if (newEntry == ((void*)0))
               return;


           newEntry -> Next = ((void*)0);
           if (Anterior)
               Anterior -> Next = newEntry;

           Anterior = newEntry;

           if (newHead.Tag == ((void*)0))
               newHead.Tag = newEntry;
   }

   ctx ->chunks[TagPlugin] = _cmsSubAllocDup(ctx->MemPool, &newHead, sizeof(_cmsTagPluginChunkType));
}

void _cmsAllocTagPluginChunk(struct _cmsContext_struct* ctx,
                                 const struct _cmsContext_struct* src)
{
    if (src != ((void*)0)) {

        DupTagList(ctx, src);
    }
    else {
        static _cmsTagPluginChunkType TagPluginChunk = { ((void*)0) };
        ctx ->chunks[TagPlugin] = _cmsSubAllocDup(ctx ->MemPool, &TagPluginChunk, sizeof(_cmsTagPluginChunkType));
    }

}

cmsBool _cmsRegisterTagPlugin(cmsContext id, cmsPluginBase* Data)
{
    cmsPluginTag* Plugin = (cmsPluginTag*) Data;
    _cmsTagLinkedList *pt;
    _cmsTagPluginChunkType* TagPluginChunk = ( _cmsTagPluginChunkType*) _cmsContextGetClientChunk(id, TagPlugin);

    if (Data == ((void*)0)) {

        TagPluginChunk->Tag = ((void*)0);
        return 1;
    }

    pt = (_cmsTagLinkedList*) _cmsPluginMalloc(id, sizeof(_cmsTagLinkedList));
    if (pt == ((void*)0)) return 0;

    pt ->Signature = Plugin ->Signature;
    pt ->Descriptor = Plugin ->Descriptor;
    pt ->Next = TagPluginChunk ->Tag;

    TagPluginChunk ->Tag = pt;

    return 1;
}


cmsTagDescriptor* _cmsGetTagDescriptor(cmsContext ContextID, cmsTagSignature sig)
{
    _cmsTagLinkedList* pt;
    _cmsTagPluginChunkType* TagPluginChunk = ( _cmsTagPluginChunkType*) _cmsContextGetClientChunk(ContextID, TagPlugin);

    for (pt = TagPluginChunk->Tag;
             pt != ((void*)0);
             pt = pt ->Next) {

                if (sig == pt -> Signature) return &pt ->Descriptor;
    }

    for (pt = SupportedTags;
            pt != ((void*)0);
            pt = pt ->Next) {

                if (sig == pt -> Signature) return &pt ->Descriptor;
    }

    return ((void*)0);
}
