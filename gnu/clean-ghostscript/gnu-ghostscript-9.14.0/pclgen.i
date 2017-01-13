# 1 "./contrib/pcl3/src/pclgen.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./contrib/pcl3/src/pclgen.c" 2
# 54 "./contrib/pcl3/src/pclgen.c"
static const char
  cm_id[] = "@(#)$Id: pclgen.c,v 1.21 2001/04/29 10:37:08 Martin Rel $";
# 65 "./contrib/pcl3/src/pclgen.c"
# 1 "/usr/include/assert.h" 1 3 4
# 36 "/usr/include/assert.h" 3 4
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
# 37 "/usr/include/assert.h" 2 3 4
# 68 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
# 66 "./contrib/pcl3/src/pclgen.c" 2
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
# 67 "./contrib/pcl3/src/pclgen.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 33 "/usr/include/stdio.h" 3 4
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
# 110 "/usr/include/stdio.h" 3 4
typedef _G_fpos_t fpos_t;
# 164 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 165 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (const char *__filename) __attribute__ ((__nothrow__ ));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ ));
# 195 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile (void) ;
# 209 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ )) ;
# 227 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
# 237 "/usr/include/stdio.h" 3 4
extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);
# 272 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 306 "/usr/include/stdio.h" 3 4
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
# 68 "./contrib/pcl3/src/pclgen.c" 2
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





# 1 "/usr/include/sys/types.h" 1 3 4
# 44 "/usr/include/sys/types.h" 3 4
typedef __loff_t loff_t;



typedef __ino_t ino_t;
# 60 "/usr/include/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;
# 98 "/usr/include/sys/types.h" 3 4
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
# 271 "/usr/include/sys/types.h" 2 3 4
# 315 "/usr/include/stdlib.h" 2 3 4






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
# 619 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
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
# 69 "./contrib/pcl3/src/pclgen.c" 2
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
# 70 "./contrib/pcl3/src/pclgen.c" 2


# 1 "./contrib/pcl3/src/pclgen.h" 1
# 26 "./contrib/pcl3/src/pclgen.h"
#pragma ident "@(#)$Id: pclgen.h,v 1.25 2001/08/18 17:41:29 Martin Rel $"
# 36 "./contrib/pcl3/src/pclgen.h"
typedef enum {
  pcl_level_3plus_DJ500,

  pcl_level_3plus_ERG_both,

  pcl_level_3plus_S5,


  pcl_level_3plus_S68,

  pcl_level_3plus_CRD_only


} pcl_Level;
# 129 "./contrib/pcl3/src/pclgen.h"
typedef enum {
  pcl_ps_default = 0,


  pcl_ps_Executive = 1,


  pcl_ps_Letter = 2,
  pcl_ps_Legal = 3,
  pcl_ps_Tabloid = 6,


  pcl_ps_Statement = 15,
  pcl_ps_HPSuperB = 16,



  pcl_ps_A6 = 24,
  pcl_ps_A5 = 25,
  pcl_ps_A4 = 26,
  pcl_ps_A3 = 27,
  pcl_ps_JISB5 = 45,
  pcl_ps_JISB4 = 46,
  pcl_ps_Postcard = 71,
  pcl_ps_DoublePostcard = 72,

  pcl_ps_A6Card = 73,



  pcl_ps_Index4x6in = 74,
  pcl_ps_Index5x8in = 75,
  pcl_ps_Index3x5in = 78,
  pcl_ps_EnvMonarch = 80,
  pcl_ps_Env10 = 81,
  pcl_ps_Env10_Negative = -81,

  pcl_ps_EnvDL = 90,
  pcl_ps_EnvDL_Negative = -90,



  pcl_ps_EnvC5 = 91,
  pcl_ps_EnvC6 = 92,
  pcl_ps_ISOB5 = 100,

  pcl_ps_CustomPageSize = 101,
  pcl_ps_EnvUS_A2 = 109,
  pcl_ps_EnvChou3 = 110,

  pcl_ps_EnvChou4 = 111,

  pcl_ps_EnvKaku2 = 113
} pcl_PageSize;




typedef enum {
  pcl_cm_none = 0,
  pcl_cm_rl = 1,
  pcl_cm_tiff = 2,

  pcl_cm_delta = 3,
  pcl_cm_adaptive = 5,
  pcl_cm_crdr = 9
} pcl_Compression;
# 204 "./contrib/pcl3/src/pclgen.h"
typedef int pcl_bool;
# 221 "./contrib/pcl3/src/pclgen.h"
typedef enum {
  pcl_no_palette,
  pcl_black,
  pcl_CMY,
  pcl_CMYK,
  pcl_RGB,
  pcl_any_palette

} pcl_Palette;


typedef struct {
  unsigned int hres, vres;

  unsigned int levels;
} pcl_ColorantState;






typedef unsigned char pcl_Octet;



typedef struct {
  pcl_Octet *str;
  int length;
} pcl_OctetString;
# 260 "./contrib/pcl3/src/pclgen.h"
typedef struct {
  pcl_Level level;


  int NULs_to_send;
  char
    *PJL_job,
    *PJL_language;


  pcl_OctetString
    init1,
    init2;


  pcl_PageSize size;
  int
    media_type,
    media_source,
    media_destination,

    duplex;







  pcl_bool manual_feed;



  int
    print_quality,
    depletion,
    shingling,
    raster_graphics_quality;


  pcl_Palette palette;
  unsigned int number_of_colorants;
  pcl_ColorantState *colorant;




  pcl_ColorantState colorant_array[4];


  pcl_bool order_CMYK;




  int dry_time;
  pcl_Compression compression;



  unsigned short number_of_bitplanes;
  unsigned short black_planes;
  unsigned int minvres;
} pcl_FileData;





typedef struct {

  unsigned int width;




  pcl_FileData *global;

  pcl_OctetString
    *previous, *next;
# 369 "./contrib/pcl3/src/pclgen.h"
  pcl_Octet *workspace[2];


  size_t workspace_allocated;






  pcl_Compression current_compression;
  pcl_OctetString **seed_plane;
} pcl_RasterData;
# 408 "./contrib/pcl3/src/pclgen.h"
extern unsigned int pcl3_levels_to_planes(unsigned int levels);
extern int pcl3_set_printquality(pcl_FileData *data, int quality);
extern int pcl3_set_mediatype(pcl_FileData *data, int mediatype);
extern int pcl3_set_oldquality(pcl_FileData *data);
extern int pcl_compress(pcl_Compression method, const pcl_OctetString *in,
  const pcl_OctetString *prev, pcl_OctetString *out);


extern int pcl3_init_file(FILE *out, pcl_FileData *global);
extern int pcl3_begin_page(FILE *out, pcl_FileData *global);
extern int pcl3_end_page(FILE *out, pcl_FileData *global);
extern int pcl3_end_file(FILE *out, pcl_FileData *global);


extern int pcl3_begin_raster(FILE *out, pcl_RasterData *data);
extern int pcl3_skip_groups(FILE *out, pcl_RasterData *data,
  unsigned int count);
extern int pcl3_transfer_group(FILE *out, pcl_RasterData *data);
extern int pcl3_end_raster(FILE *out, pcl_RasterData *data);
# 73 "./contrib/pcl3/src/pclgen.c" 2
# 100 "./contrib/pcl3/src/pclgen.c"
unsigned int pcl3_levels_to_planes(unsigned int levels)
{
  unsigned long
    power = 1;
  unsigned int
    planes = 0;


  while (power < levels) {
    power *= 2;
    planes++;
  }


  return planes;
}
# 126 "./contrib/pcl3/src/pclgen.c"
static void send_ERG(FILE *out, pcl_Level level)
{

  fputs("\033*r", out);
  if ((level <= pcl_level_3plus_DJ500)) fputc('B', out);
  else if (level == pcl_level_3plus_ERG_both) fputs("bC", out);
  else fputc('C', out);

  return;
}
# 158 "./contrib/pcl3/src/pclgen.c"
int pcl3_init_file(FILE *out, pcl_FileData *data)
{
  pcl_bool needs_CRD = (data->level == pcl_level_3plus_CRD_only);

  int j;
  const pcl_ColorantState *colorant = ((void*)0);
  unsigned int maxhres = 0, maxvres = 0;


  {
    pcl_bool invalid;

    invalid = (out == ((void*)0) || data == ((void*)0));
    if (invalid)
      fputs("? pclgen: " "Null pointer passed to pcl3_init_file().\n", stderr);
    else {

      switch(data->palette) {
        case pcl_no_palette:

        case pcl_black: invalid = data->number_of_colorants != 1; break;
        case pcl_CMY: invalid = data->number_of_colorants != 3; break;
        case pcl_RGB: invalid = data->number_of_colorants != 3; break;
        case pcl_CMYK: invalid = data->number_of_colorants != 4; break;
        default: invalid = data->number_of_colorants <= 0;
      }
      if (invalid)
        fputs("? pclgen: "
          "Palette specification and number of colorants are inconsistent.\n",
          stderr);
      else {
        if (data->colorant == ((void*)0)) colorant = data->colorant_array;
        else colorant = data->colorant;



        data->minvres = colorant[0].vres;
        for (j = 0; j < data->number_of_colorants; j++) {
          if (colorant[j].hres <= 0 || colorant[j].vres <= 0) {
            invalid = 1;
            fprintf(stderr, "? pclgen: "
              "The resolution for colorant %d is not positive: %u x %u ppi.\n",
              j, colorant[j].hres, colorant[j].vres);
          }
          else {
            if (colorant[j].vres < data->minvres)
              data->minvres = colorant[j].vres;
            if (colorant[j].hres > maxhres) maxhres = colorant[j].hres;
            if (colorant[j].vres > maxvres) maxvres = colorant[j].vres;
          }
          if (colorant[j].levels < 2 || 0xFFFF < colorant[j].levels) {
            invalid = 1;
            fprintf(stderr, "? pclgen: " "The number of intensity levels for "
              "colorant %d is %u instead of at least 2 and at most 65535.\n",
              j, colorant[j].levels);



          }
        }


        if (!invalid)
          for (j = 0; j < data->number_of_colorants; j++) {


            if (maxhres != colorant[j].hres ||
                maxhres != colorant[j].vres || colorant[j].levels > 2)
              needs_CRD = 1;
# 244 "./contrib/pcl3/src/pclgen.c"
            if (colorant[j].vres % data->minvres != 0) {
              invalid = 1;
              fprintf(stderr, "? pclgen: "
                "The vertical resolution for colorant %d (%u ppi) is not a "
                "multiple of the lowest vertical resolution (%u ppi).\n",
                j, colorant[j].vres, data->minvres);
            }
            if (maxhres % colorant[j].hres != 0) {
              invalid = 1;
              fprintf(stderr, "? pclgen: "
                "The highest horizontal resolution (%u ppi) is not a multiple "
                "of the horizontal resolution for colorant %d (%u ppi).\n",
                maxhres, j, colorant[j].hres);
            }
            if (maxvres % colorant[j].vres != 0) {
              invalid = 1;
              fprintf(stderr, "? pclgen: "
                "The highest vertical resolution (%u ppi) is not a multiple "
                "of the vertical resolution for colorant %d (%u ppi).\n",
                maxvres, j, colorant[j].vres);
            }
          }
      }

      if (needs_CRD && data->palette == pcl_RGB) {
        invalid = 1;
        if (data->level == pcl_level_3plus_CRD_only)
          fputs("? pclgen: "
            "You can't use an RGB palette at the requested PCL level.\n",
            stderr);
        else
          fputs("? pclgen: " "The specified structure of resolutions and intensity "
            "levels is not possible with an RGB palette.\n",
            stderr);
      }
      if (needs_CRD && !(data->level >= pcl_level_3plus_S68)) {
        invalid = 1;
        fputs("? pclgen: " "The specified structure of resolutions and intensity "
          "levels is not possible at the requested PCL level.\n", stderr);
      }
      if (data->palette == pcl_any_palette) {
        needs_CRD = 1;
        if (!(data->level >= pcl_level_3plus_S68)) {
          invalid = 1;
          fputs("? pclgen: " "The specified palette is not possible at the "
            "requested PCL level.\n", stderr);
        }
      }
      if (needs_CRD && (maxhres > 0xFFFF || maxvres > 0xFFFF)) {
        fputs("? pclgen: " "Resolutions may be at most 65535 ppi when more than one "
          "resolution or more than two intensity levels are requested.\n",
          stderr);
        invalid = 1;
      }
      if (data->order_CMYK && data->palette != pcl_CMYK) {
        fputs("? pclgen: "
          "Ordering bit planes as CMYK instead of KCMY is only meaningful\n"
          "  for a CMYK palette.\n", stderr);
        invalid = 1;
      }


      if (data->PJL_job != ((void*)0)) {
        const unsigned char *s = (const unsigned char *)data->PJL_job;



        while (*s != '\0' && (*s == '\t' || 32 <= *s && *s != '"')) s++;
        if (*s != '\0') {
          fprintf(stderr,
            "? pclgen: " "Illegal character in PJL job name (code 0x%02X).\n", *s);
          invalid = 1;
        }






        if (strlen(data->PJL_job) > 80) {
          fputs("? pclgen: " "PJL job name is too long (more than 80 characters).\n",
            stderr);
          invalid = 1;
        }
      }


      if (data->PJL_language != ((void*)0)) {
        const char *s = data->PJL_language;





        if ((0x41 <= (*s) && (*s) <= 0x5A || 0x61 <= (*s) && (*s) <= 0x7A)) do s++; while ((0x41 <= (*s) && (*s) <= 0x5A || 0x61 <= (*s) && (*s) <= 0x7A) || (0x30 <= (*s) && (*s) <= 0x39));

        if (*data->PJL_language == '\0') {
          fputs("? pclgen: " "Empty PJL language name.\n", stderr);
          invalid = 1;
        }
        else if (*s != '\0') {
          fprintf(stderr,
            "? pclgen: " "Illegal character in PJL language name (code 0x%02X).\n",
            *s);
          invalid = 1;
        }
      }
    }

    if (invalid) return +1;
  }





  for (j = 0; j < data->NULs_to_send; j++) fputc('\0', out);
# 370 "./contrib/pcl3/src/pclgen.c"
  if (data->PJL_job != ((void*)0) || data->PJL_language != ((void*)0)) {
    fputs("\033%-12345X", out);


    if (data->PJL_job != ((void*)0)) {
      fputs("@PJL JOB", out);
      if (*data->PJL_job != '\0') fprintf(out, " NAME=\"%s\"", data->PJL_job);
      fputc('\n', out);
    }


    if (data->PJL_language != ((void*)0))
      fprintf(out, "@PJL ENTER LANGUAGE=%s\n", data->PJL_language);
  }


  fputs("\033E", out);


  if (data->init1.length > 0)
    fwrite(data->init1.str, sizeof(pcl_Octet), data->init1.length, out);


  fprintf(out,
    "\033&l%da"
    "0o"
    "0L",

    (int) data->size
  );


  if (data->media_source != 0)
    fprintf(out, "\033&l%dH", data->media_source);



  if (data->media_source != 2 && data->manual_feed) fputs("\033&l2H", out);






  if (data->media_destination != 0)
    fprintf(out, "\033&l%dG", data->media_destination);





  if (data->duplex != -1)
    fprintf(out, "\033&l%dS", data->duplex);


  if ((data->level <= pcl_level_3plus_S5)) {
    fprintf(out, "\033*r%dQ", data->raster_graphics_quality);

    if (data->level > pcl_level_3plus_DJ500)
      fprintf(out, "\033*o%dQ", data->shingling);

    if (data->depletion != 0)




      fprintf(out, "\033*o%dD", data->depletion);

  }
  else
    fprintf(out,
      "\033&l%dM"
      "\033*o%dM",
      data->media_type,
      data->print_quality
    );







  if (data->dry_time >= 0) fprintf(out, "\033&b%dT", data->dry_time);




  send_ERG(out, data->level);

  if (data->level != pcl_level_3plus_CRD_only)

    fprintf(out, "\033*t%uR", maxhres < maxvres? maxvres: maxhres);






  if (data->level >= pcl_level_3plus_S68)
    fprintf(out, "\033&u%uD", maxhres < maxvres? maxvres: maxhres);
# 479 "./contrib/pcl3/src/pclgen.c"
  if (data->level != pcl_level_3plus_CRD_only &&
      data->palette != pcl_no_palette && data->palette != pcl_any_palette)
    fprintf(out, "\033*r%dU",

      data->palette == pcl_RGB? 3:
      -data->number_of_colorants);


  if (needs_CRD) {
    fprintf(out, "\033*g%uW"
      "\002%c",
      2 + 6*data->number_of_colorants, data->number_of_colorants);

    for (j = 0; j < data->number_of_colorants; j++)
      fprintf(out, "%c%c%c%c%c%c",


        colorant[j].hres/256, colorant[j].hres%256,
        colorant[j].vres/256, colorant[j].vres%256,
        colorant[j].levels/256, colorant[j].levels%256);
  }

  if (ferror(out)) {
    fputs("? pclgen: " "Unidentified system error while writing the output file.\n",
      stderr);
    return -1;
  }


  if (data->init2.length > 0)
    fwrite(data->init2.str, sizeof(pcl_Octet), data->init2.length, out);


  if (data->palette == pcl_CMY || data->palette == pcl_RGB)
    data->black_planes = 0;
  else data->black_planes =
    pcl3_levels_to_planes(colorant[0].levels)*(colorant[0].vres/data->minvres);
  data->number_of_bitplanes = 0;
  for (j = 0; j < data->number_of_colorants; j++)
    data->number_of_bitplanes +=
      pcl3_levels_to_planes(colorant[j].levels)*
        (colorant[j].vres/data->minvres);

  return 0;
}
# 534 "./contrib/pcl3/src/pclgen.c"
int pcl3_begin_page(FILE *out, pcl_FileData *global)
{
  fputs("\033*p0Y", out);


  return 0;
}
# 560 "./contrib/pcl3/src/pclgen.c"
int pcl3_begin_raster(FILE *out, pcl_RasterData *data)
{
  const pcl_FileData *global = ((void*)0);
  int j;


  {
    pcl_bool invalid;

    invalid = (data == ((void*)0) || data->global == ((void*)0) || data->next == ((void*)0) ||
      data->workspace[0] == ((void*)0) || data->workspace_allocated <= 0);
    if (!invalid) {
      global = data->global;

      for (j = 0;
        j < global->number_of_bitplanes &&
          (data->next[j].length == 0 || data->next[j].str != ((void*)0));
        j++);
      invalid = j < global->number_of_bitplanes;
      if (!invalid && ((global->compression) == pcl_cm_delta || (global->compression) == pcl_cm_adaptive || (global->compression) == pcl_cm_crdr)) {
        invalid = (data->previous == ((void*)0) ||
          global->compression == pcl_cm_delta &&
            data->workspace[1] == ((void*)0));
        if (!invalid) {
          for (j = 0;
            j < global->number_of_bitplanes &&
              (data->previous[j].length == 0 || data->previous[j].str != ((void*)0));
            j++);
          invalid = j < global->number_of_bitplanes;
        }
      }
    }

    if (invalid) {
      fputs("? pclgen: " "Invalid data structure passed to pcl3_begin_raster().\n",
        stderr);
      return +1;
    }
  }


  data->seed_plane = (pcl_OctetString **)
    malloc(global->number_of_bitplanes*sizeof(pcl_OctetString *));
  if (data->seed_plane == ((void*)0)) {
    fputs("? pclgen: " "Memory allocation failure in pcl3_begin_raster().\n",
      stderr);
    return -1;
  }
  memset(data->seed_plane, 0,
    global->number_of_bitplanes*sizeof(pcl_OctetString *));


  if (((global->compression) == pcl_cm_delta || (global->compression) == pcl_cm_adaptive || (global->compression) == pcl_cm_crdr)) {
# 635 "./contrib/pcl3/src/pclgen.c"
    int strip;
    const pcl_ColorantState *colorant = ((void*)0);
    int plane = 0;

    if (global->colorant == ((void*)0)) colorant = global->colorant_array;
    else colorant = global->colorant;

    for (strip = 0; strip < global->number_of_colorants; strip++) {
      int lines = colorant[strip].vres/global->minvres;
      int planes = pcl3_levels_to_planes(colorant[strip].levels);
      int l, p;



      for (p = 0; p < planes; p++, plane++)
        data->seed_plane[plane] = data->previous + plane + (lines - 1)*planes;



      for (l = 1; l < lines; l++)
        for (p = 0; p < planes; p++, plane++)
          data->seed_plane[plane] = data->next + plane - planes;
    }
  }


  if (data->width > 0) {
    fprintf(out, "\033*r%uS", data->width);



  }
  fputs("\033*p0X"
        "\033*r1A", out);




  if (((global->compression) == pcl_cm_delta || (global->compression) == pcl_cm_adaptive || (global->compression) == pcl_cm_crdr))
    for (j = 0; j < global->number_of_bitplanes; j++)
      data->previous[j].length = 0;

  fputs("\033*b", out);
# 687 "./contrib/pcl3/src/pclgen.c"
  if ((global->level <= pcl_level_3plus_DJ500)) {

    fprintf(out, "%dm", (int)global->compression);
    data->current_compression = global->compression;
  }
  else data->current_compression = pcl_cm_none;

  return 0;
}
# 709 "./contrib/pcl3/src/pclgen.c"
int pcl3_skip_groups(FILE *out, pcl_RasterData *data, unsigned int count)
{
  int j;



  if (count == 0) return 0;

  fprintf(out, "%uy", count);







  if (((data->global->compression) == pcl_cm_delta || (data->global->compression) == pcl_cm_adaptive || (data->global->compression) == pcl_cm_crdr))
    for (j = 0; j < data->global->number_of_bitplanes; j++)
      data->previous[j].length = 0;

  return 0;
}
# 757 "./contrib/pcl3/src/pclgen.c"
static int send_plane(pcl_bool final,
  pcl_Compression method_demanded, pcl_Compression *method_used,
  const pcl_OctetString *in, const pcl_OctetString *prev, FILE *out,
  pcl_Octet *out_bf1, pcl_Octet *out_bf2, size_t out_bf_size)
{
  int
    rc = 0;
  pcl_Compression
    choice;
  pcl_OctetString
    out1,
    out2,
    send;


  out1.str = out_bf1;
  out1.length = in->length + (*method_used == pcl_cm_none? 0: 2);

  if (out1.length > out_bf_size) out1.length = out_bf_size;



  if (method_demanded == pcl_cm_delta) {







    int c1, c2;


    rc = pcl_compress(pcl_cm_delta, in, prev, &out1);
    if (rc == 0) c1 = out1.length; else c1 = -1;
    if (*method_used != pcl_cm_delta && c1 >= 0) c1 += 2;



    if (0 == c1) c2 = -1;
    else {
      int bound = in->length + (*method_used == pcl_cm_none? 0: 2);
      if (c1 >= 0 && c1 < bound) {


        bound = c1;
        if (*method_used != pcl_cm_tiff && bound >= 2) bound -= 2;
      }
      out2.str = out_bf2; out2.length = bound;
      rc = pcl_compress(pcl_cm_tiff, in, ((void*)0), &out2);
      if (rc == 0) c2 = out2.length; else c2 = -1;
      if (*method_used != pcl_cm_tiff && c2 >= 0) c2 += 2;
    }


    if (c1 < 0) {
      if (c2 < 0) choice = pcl_cm_none;
      else choice = pcl_cm_tiff;
    }
    else {
      if (c2 < 0 || c1 <= c2) choice = pcl_cm_delta;
      else choice = pcl_cm_tiff;
    }
    switch (choice) {
    case pcl_cm_tiff:
      send = out2; break;
    case pcl_cm_delta:
      send = out1; break;
    default:
      send = *in;
    }
  }
  else {
    if (method_demanded != pcl_cm_none &&
        pcl_compress(method_demanded, in, prev, &out1) == 0) {

      send = out1;
      choice = method_demanded;
    }
    else {

      send = *in;
      choice = pcl_cm_none;
    }
  }


  if (*method_used != choice) {

    if (fprintf(out, "%dm", (int)choice) < 0) {
      fprintf(stderr, "? pclgen: " "Error from fprintf(): %s.\n", strerror((*__errno_location ())));
      return -1;
    }
    *method_used = choice;
  }


  if (send.length == 0) {
    (*__errno_location ()) = 0;
    if (final)
      fputc('w', out);


    else
      fputc('v', out);

    if ((*__errno_location ()) != 0) {
      fprintf(stderr, "? pclgen: " "Error from fputc(): %s.\n", strerror((*__errno_location ())));
      return -1;
    }
  }
  else {

    if (fprintf(out, "%d%c", send.length, final? 'w': 'v') < 0) {
      fprintf(stderr, "? pclgen: " "Error from fprintf(): %s.\n", strerror((*__errno_location ())));
      return -1;
    }
    if (fwrite(send.str, sizeof(pcl_Octet), send.length, out) != send.length) {
      fprintf(stderr, "? pclgen: " "Error in fwrite(): %s.\n", strerror((*__errno_location ())));
      return -1;
    }
  }

  return 0;
}
# 909 "./contrib/pcl3/src/pclgen.c"
int pcl3_transfer_group(FILE *out, pcl_RasterData *data)
{
  const pcl_FileData *global = data->global;
  int
    final,
    j;


  if (global->palette == pcl_CMYK && global->order_CMYK) {

    for (j = global->black_planes; j < global->number_of_bitplanes; j++) {
      if (send_plane(0,
          global->compression, &data->current_compression, data->next + j,
          data->seed_plane[j],
          out,
          data->workspace[0], data->workspace[1],
          data->workspace_allocated) != 0)
        return -1;
    }

    final = global->black_planes - 1;
    for (j = 0; j < global->black_planes; j++) {
      if (send_plane(j == final,
          global->compression, &data->current_compression, data->next + j,
          data->seed_plane[j],
          out,
          data->workspace[0], data->workspace[1],
          data->workspace_allocated) != 0)
        return -1;
    }
  }
  else {

    final = global->number_of_bitplanes - 1;
    for (j = 0; j < global->number_of_bitplanes; j++) {
      if (send_plane(j == final,
          global->compression, &data->current_compression, data->next + j,
          data->seed_plane[j],
          out,
          data->workspace[0], data->workspace[1],
          data->workspace_allocated) != 0)
        return -1;
    }
  }


  if (((data->global->compression) == pcl_cm_delta || (data->global->compression) == pcl_cm_adaptive || (data->global->compression) == pcl_cm_crdr))
    for (j = 0; j < global->number_of_bitplanes; j++) {
      pcl_OctetString tmp;
      tmp = data->previous[j];
      data->previous[j] = data->next[j];
      data->next[j] = tmp;
    }

  return 0;
}
# 974 "./contrib/pcl3/src/pclgen.c"
int pcl3_end_raster(FILE *out, pcl_RasterData *data)
{
  fputs("0Y", out);





  send_ERG(out, data->global->level);
  if (!(data->global->level <= pcl_level_3plus_DJ500))
    data->current_compression = pcl_cm_none;


  free(data->seed_plane); data->seed_plane = ((void*)0);

  return 0;
}
# 1001 "./contrib/pcl3/src/pclgen.c"
int pcl3_end_page(FILE *out, pcl_FileData *data)
{

  fputc('\f', out);

  if (ferror(out)) {
    fputs("? pclgen: " "Unidentified system error while writing the output file.\n",
      stderr);
    return -1;
  }

  return 0;
}
# 1026 "./contrib/pcl3/src/pclgen.c"
int pcl3_end_file(FILE *out, pcl_FileData *data)
{


  if (data->media_source == -1)
    fputs("\033&l0H", out);


  fputs("\033E", out);


  if (data->PJL_job != ((void*)0) || data->PJL_language != ((void*)0)) {

    fputs("\033%-12345X", out);

    if (data->PJL_job != ((void*)0)) {


      fputs("@PJL EOJ\n", out);







      fputs("\033%-12345X", out);
    }
  }

  if (ferror(out)) {
    fputs("? pclgen: " "Unidentified system error while writing the output file.\n",
      stderr);
    return -1;
  }

  return 0;
}
# 1083 "./contrib/pcl3/src/pclgen.c"
int pcl3_set_oldquality(pcl_FileData *data)
{


  switch (data->print_quality) {
  case -1 :
    data->depletion = 3;
    data->raster_graphics_quality = 1;
    if (data->media_type == 4) data->shingling = 1;
    else data->shingling = 0;
    break;
  case 1 :
    if (3 <= data->media_type && data->media_type <= 4)
      data->depletion = 1;
    else if (data->palette == pcl_CMY || data->palette == pcl_RGB)
      data->depletion = 2;
    else
      data->depletion = 3;


    data->raster_graphics_quality = 2;
    data->shingling = 2;
    break;
  default:
    data->depletion = 2;
    data->raster_graphics_quality = 0;
    if (data->media_type == 3 ||
        data->media_type == 4 && data->palette != pcl_CMY &&
           data->palette != pcl_RGB)
      data->shingling = 2;
    else data->shingling = 1;
  }


  if (data->palette <= pcl_black) data->depletion = 0;

  return -1 <= data->print_quality && data->print_quality <= 1 &&
    0 <= data->media_type && data->media_type <= 4? 0: 1;
}



int pcl3_set_printquality(pcl_FileData *data, int quality)
{
  data->print_quality = quality;
  if ((data->level <= pcl_level_3plus_S5)) return pcl3_set_oldquality(data);

  return 0;
}



int pcl3_set_mediatype(pcl_FileData *data, int mediatype)
{
  data->media_type = mediatype;
  if ((data->level <= pcl_level_3plus_S5)) return pcl3_set_oldquality(data);

  return 0;
}
