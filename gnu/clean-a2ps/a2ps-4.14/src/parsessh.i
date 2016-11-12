# 1 "parsessh.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "parsessh.c" 2
# 68 "parsessh.c"
   enum yytokentype {
     tSTYLE = 258,
     tIS = 259,
     tEND = 260,
     tKEYWORDS = 261,
     tARE = 262,
     tIN = 263,
     tOPERATORS = 264,
     tSEQUENCES = 265,
     tFIRST = 266,
     tSECOND = 267,
     tALPHABET = 268,
     tALPHABETS = 269,
     tDOCUMENTATION = 270,
     tEXCEPTIONS = 271,
     tCASE = 272,
     tCSTRING = 273,
     tCCHAR = 274,
     tOPTIONAL = 275,
     tCLOSERS = 276,
     tWRITTEN = 277,
     tBY = 278,
     tVERSION = 279,
     tREQUIRES = 280,
     tA2PS = 281,
     tANCESTORS = 282,
     tFACE = 283,
     tFFLAGS = 284,
     tSTRING = 285,
     tLATEXSYMBOL = 286,
     tREGEX = 287,
     tSENSITIVENESS = 288,
     tBACK_REF = 289
   };
# 1 "parsessh.y"
# 33 "parsessh.y"
# 1 "../lib/a2ps.h" 1
# 28 "../lib/a2ps.h"
# 1 "../lib/system.h" 1
# 31 "../lib/system.h"
# 1 "../config.h" 1
# 32 "../lib/system.h" 2
# 76 "../lib/system.h"
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
# 77 "../lib/system.h" 2
# 88 "../lib/system.h"
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 90 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3 4
typedef int wchar_t;
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
# 952 "/usr/include/stdlib.h" 2 3 4
# 89 "../lib/system.h" 2
# 102 "../lib/system.h"
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
# 103 "../lib/system.h" 2
# 112 "../lib/system.h"
extern char *strchr (const char *s, int c);
extern char *strrchr (const char *s, int c);
# 123 "../lib/system.h"
extern char *strndup (char const *, size_t n);
# 132 "../lib/system.h"
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
# 133 "../lib/system.h" 2







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
# 141 "../lib/system.h" 2
# 151 "../lib/system.h"
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
# 152 "../lib/system.h" 2
# 192 "../lib/system.h"
# 1 "/usr/include/sys/wait.h" 1 3 4
# 30 "/usr/include/sys/wait.h" 3 4
# 1 "/usr/include/signal.h" 1 3 4
# 32 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigset.h" 1 3 4
# 103 "/usr/include/bits/sigset.h" 3 4
extern int __sigismember (const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);
# 33 "/usr/include/signal.h" 2 3 4







typedef __sig_atomic_t sig_atomic_t;
# 57 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/signum.h" 1 3 4
# 58 "/usr/include/signal.h" 2 3 4
# 75 "/usr/include/signal.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 76 "/usr/include/signal.h" 2 3 4




# 1 "/usr/include/bits/siginfo.h" 1 3 4
# 24 "/usr/include/bits/siginfo.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 25 "/usr/include/bits/siginfo.h" 2 3 4







typedef union sigval
  {
    int sival_int;
    void *sival_ptr;
  } sigval_t;
# 58 "/usr/include/bits/siginfo.h" 3 4
typedef __clock_t __sigchld_clock_t;



typedef struct
  {
    int si_signo;
    int si_errno;

    int si_code;

    union
      {
 int _pad[((128 / sizeof (int)) - 4)];


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;


 struct
   {
     int si_tid;
     int si_overrun;
     sigval_t si_sigval;
   } _timer;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     sigval_t si_sigval;
   } _rt;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __sigchld_clock_t si_utime;
     __sigchld_clock_t si_stime;
   } _sigchld;


 struct
   {
     void *si_addr;
   } _sigfault;


 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;


 struct
   {
     void *_call_addr;
     int _syscall;
     unsigned int _arch;
   } _sigsys;
      } _sifields;
  } siginfo_t ;
# 151 "/usr/include/bits/siginfo.h" 3 4
enum
{
  SI_ASYNCNL = -60,

  SI_TKILL = -6,

  SI_SIGIO,

  SI_ASYNCIO,

  SI_MESGQ,

  SI_TIMER,

  SI_QUEUE,

  SI_USER,

  SI_KERNEL = 0x80

};



enum
{
  ILL_ILLOPC = 1,

  ILL_ILLOPN,

  ILL_ILLADR,

  ILL_ILLTRP,

  ILL_PRVOPC,

  ILL_PRVREG,

  ILL_COPROC,

  ILL_BADSTK

};


enum
{
  FPE_INTDIV = 1,

  FPE_INTOVF,

  FPE_FLTDIV,

  FPE_FLTOVF,

  FPE_FLTUND,

  FPE_FLTRES,

  FPE_FLTINV,

  FPE_FLTSUB

};


enum
{
  SEGV_MAPERR = 1,

  SEGV_ACCERR

};


enum
{
  BUS_ADRALN = 1,

  BUS_ADRERR,

  BUS_OBJERR

};


enum
{
  TRAP_BRKPT = 1,

  TRAP_TRACE

};


enum
{
  CLD_EXITED = 1,

  CLD_KILLED,

  CLD_DUMPED,

  CLD_TRAPPED,

  CLD_STOPPED,

  CLD_CONTINUED

};


enum
{
  POLL_IN = 1,

  POLL_OUT,

  POLL_MSG,

  POLL_ERR,

  POLL_PRI,

  POLL_HUP

};
# 301 "/usr/include/bits/siginfo.h" 3 4
typedef struct sigevent
  {
    sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;

    union
      {
 int _pad[((64 / sizeof (int)) - 4)];



 __pid_t _tid;

 struct
   {
     void (*_function) (sigval_t);
     pthread_attr_t *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;






enum
{
  SIGEV_SIGNAL = 0,

  SIGEV_NONE,

  SIGEV_THREAD,


  SIGEV_THREAD_ID = 4

};
# 81 "/usr/include/signal.h" 2 3 4




typedef void (*__sighandler_t) (int);




extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
# 102 "/usr/include/signal.h" 3 4
extern __sighandler_t signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
# 127 "/usr/include/signal.h" 3 4
extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__ ));






extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__ ));




extern int raise (int __sig) __attribute__ ((__nothrow__ ));




extern __sighandler_t ssignal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
extern int gsignal (int __sig) __attribute__ ((__nothrow__ ));




extern void psignal (int __sig, const char *__s);




extern void psiginfo (const siginfo_t *__pinfo, const char *__s);
# 169 "/usr/include/signal.h" 3 4
extern int __sigpause (int __sig_or_mask, int __is_sig);
# 197 "/usr/include/signal.h" 3 4
extern int sigblock (int __mask) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));


extern int sigsetmask (int __mask) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));


extern int siggetmask (void) __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));
# 217 "/usr/include/signal.h" 3 4
typedef __sighandler_t sig_t;





extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int sigismember (const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 253 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigaction.h" 1 3 4
# 24 "/usr/include/bits/sigaction.h" 3 4
struct sigaction
  {


    union
      {

 __sighandler_t sa_handler;

 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;







    __sigset_t sa_mask;


    int sa_flags;


    void (*sa_restorer) (void);
  };
# 254 "/usr/include/signal.h" 2 3 4


extern int sigprocmask (int __how, const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__ ));






extern int sigsuspend (const sigset_t *__set) __attribute__ ((__nonnull__ (1)));


extern int sigaction (int __sig, const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__ ));


extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int sigwait (const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));






extern int sigwaitinfo (const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));






extern int sigtimedwait (const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));



extern int sigqueue (__pid_t __pid, int __sig, const union sigval __val)
     __attribute__ ((__nothrow__ ));
# 311 "/usr/include/signal.h" 3 4
extern const char *const _sys_siglist[65];
extern const char *const sys_siglist[65];


struct sigvec
  {
    __sighandler_t sv_handler;
    int sv_mask;

    int sv_flags;

  };
# 335 "/usr/include/signal.h" 3 4
extern int sigvec (int __sig, const struct sigvec *__vec,
     struct sigvec *__ovec) __attribute__ ((__nothrow__ ));




# 1 "/usr/include/bits/sigcontext.h" 1 3 4
# 29 "/usr/include/bits/sigcontext.h" 3 4
struct _fpx_sw_bytes
{
  __uint32_t magic1;
  __uint32_t extended_size;
  __uint64_t xstate_bv;
  __uint32_t xstate_size;
  __uint32_t padding[7];
};

struct _fpreg
{
  unsigned short significand[4];
  unsigned short exponent;
};

struct _fpxreg
{
  unsigned short significand[4];
  unsigned short exponent;
  unsigned short padding[3];
};

struct _xmmreg
{
  __uint32_t element[4];
};
# 121 "/usr/include/bits/sigcontext.h" 3 4
struct _fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _fpxreg _st[8];
  struct _xmmreg _xmm[16];
  __uint32_t padding[24];
};

struct sigcontext
{
  __uint64_t r8;
  __uint64_t r9;
  __uint64_t r10;
  __uint64_t r11;
  __uint64_t r12;
  __uint64_t r13;
  __uint64_t r14;
  __uint64_t r15;
  __uint64_t rdi;
  __uint64_t rsi;
  __uint64_t rbp;
  __uint64_t rbx;
  __uint64_t rdx;
  __uint64_t rax;
  __uint64_t rcx;
  __uint64_t rsp;
  __uint64_t rip;
  __uint64_t eflags;
  unsigned short cs;
  unsigned short gs;
  unsigned short fs;
  unsigned short __pad0;
  __uint64_t err;
  __uint64_t trapno;
  __uint64_t oldmask;
  __uint64_t cr2;
  __extension__ union
    {
      struct _fpstate * fpstate;
      __uint64_t __fpstate_word;
    };
  __uint64_t __reserved1 [8];
};



struct _xsave_hdr
{
  __uint64_t xstate_bv;
  __uint64_t reserved1[2];
  __uint64_t reserved2[5];
};

struct _ymmh_state
{
  __uint32_t ymmh_space[64];
};

struct _xstate
{
  struct _fpstate fpstate;
  struct _xsave_hdr xstate_hdr;
  struct _ymmh_state ymmh;
};
# 341 "/usr/include/signal.h" 2 3 4


extern int sigreturn (struct sigcontext *__scp) __attribute__ ((__nothrow__ ));







# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 351 "/usr/include/signal.h" 2 3 4




extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__ ));


# 1 "/usr/include/bits/sigstack.h" 1 3 4
# 25 "/usr/include/bits/sigstack.h" 3 4
struct sigstack
  {
    void *ss_sp;
    int ss_onstack;
  };



enum
{
  SS_ONSTACK = 1,

  SS_DISABLE

};
# 49 "/usr/include/bits/sigstack.h" 3 4
typedef struct sigaltstack
  {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
  } stack_t;
# 358 "/usr/include/signal.h" 2 3 4


# 1 "/usr/include/sys/ucontext.h" 1 3 4
# 22 "/usr/include/sys/ucontext.h" 3 4
# 1 "/usr/include/signal.h" 1 3 4
# 23 "/usr/include/sys/ucontext.h" 2 3 4








__extension__ typedef long long int greg_t;





typedef greg_t gregset_t[23];
# 92 "/usr/include/sys/ucontext.h" 3 4
struct _libc_fpxreg
{
  unsigned short int significand[4];
  unsigned short int exponent;
  unsigned short int padding[3];
};

struct _libc_xmmreg
{
  __uint32_t element[4];
};

struct _libc_fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _libc_fpxreg _st[8];
  struct _libc_xmmreg _xmm[16];
  __uint32_t padding[24];
};


typedef struct _libc_fpstate *fpregset_t;


typedef struct
  {
    gregset_t gregs;

    fpregset_t fpregs;
    __extension__ unsigned long long __reserved1 [8];
} mcontext_t;


typedef struct ucontext
  {
    unsigned long int uc_flags;
    struct ucontext *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    __sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
  } ucontext_t;
# 361 "/usr/include/signal.h" 2 3 4





extern int sigstack (struct sigstack *__ss, struct sigstack *__oss)
     __attribute__ ((__nothrow__ )) __attribute__ ((__deprecated__));



extern int sigaltstack (const struct sigaltstack *__restrict __ss,
   struct sigaltstack *__restrict __oss) __attribute__ ((__nothrow__ ));
# 396 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigthread.h" 1 3 4
# 30 "/usr/include/bits/sigthread.h" 3 4
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ ));


extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ ));
# 397 "/usr/include/signal.h" 2 3 4






extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ ));

extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ ));
# 31 "/usr/include/sys/wait.h" 2 3 4
# 100 "/usr/include/sys/wait.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 114 "/usr/include/sys/wait.h" 3 4
extern __pid_t wait (__WAIT_STATUS __stat_loc);
# 137 "/usr/include/sys/wait.h" 3 4
extern __pid_t waitpid (__pid_t __pid, int *__stat_loc, int __options);
# 147 "/usr/include/sys/wait.h" 3 4
# 1 "/usr/include/bits/siginfo.h" 1 3 4
# 24 "/usr/include/bits/siginfo.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 25 "/usr/include/bits/siginfo.h" 2 3 4
# 148 "/usr/include/sys/wait.h" 2 3 4
# 160 "/usr/include/sys/wait.h" 3 4
extern int waitid (idtype_t __idtype, __id_t __id, siginfo_t *__infop,
     int __options);





struct rusage;






extern __pid_t wait3 (__WAIT_STATUS __stat_loc, int __options,
        struct rusage * __usage) __attribute__ ((__nothrow__));




extern __pid_t wait4 (__pid_t __pid, __WAIT_STATUS __stat_loc, int __options,
        struct rusage *__usage) __attribute__ ((__nothrow__));
# 193 "../lib/system.h" 2
# 211 "../lib/system.h"
# 1 "/usr/include/pwd.h" 1 3 4
# 33 "/usr/include/pwd.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 34 "/usr/include/pwd.h" 2 3 4
# 50 "/usr/include/pwd.h" 3 4
struct passwd
{
  char *pw_name;
  char *pw_passwd;
  __uid_t pw_uid;
  __gid_t pw_gid;
  char *pw_gecos;
  char *pw_dir;
  char *pw_shell;
};
# 73 "/usr/include/pwd.h" 3 4
extern void setpwent (void);





extern void endpwent (void);





extern struct passwd *getpwent (void);
# 95 "/usr/include/pwd.h" 3 4
extern struct passwd *fgetpwent (FILE *__stream);







extern int putpwent (const struct passwd *__restrict __p,
       FILE *__restrict __f);






extern struct passwd *getpwuid (__uid_t __uid);





extern struct passwd *getpwnam (const char *__name);
# 140 "/usr/include/pwd.h" 3 4
extern int getpwent_r (struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result);


extern int getpwuid_r (__uid_t __uid,
         struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result);

extern int getpwnam_r (const char *__restrict __name,
         struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result);
# 164 "/usr/include/pwd.h" 3 4
extern int fgetpwent_r (FILE *__restrict __stream,
   struct passwd *__restrict __resultbuf,
   char *__restrict __buffer, size_t __buflen,
   struct passwd **__restrict __result);
# 212 "../lib/system.h" 2



# 1 "/usr/include/unistd.h" 1 3 4
# 202 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/bits/posix_opt.h" 1 3 4
# 203 "/usr/include/unistd.h" 2 3 4



# 1 "/usr/include/bits/environments.h" 1 3 4
# 22 "/usr/include/bits/environments.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/environments.h" 2 3 4
# 207 "/usr/include/unistd.h" 2 3 4
# 226 "/usr/include/unistd.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 227 "/usr/include/unistd.h" 2 3 4
# 255 "/usr/include/unistd.h" 3 4
typedef __useconds_t useconds_t;
# 267 "/usr/include/unistd.h" 3 4
typedef __intptr_t intptr_t;






typedef __socklen_t socklen_t;
# 287 "/usr/include/unistd.h" 3 4
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 304 "/usr/include/unistd.h" 3 4
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
# 334 "/usr/include/unistd.h" 3 4
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ ));
# 353 "/usr/include/unistd.h" 3 4
extern int close (int __fd);






extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;





extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
# 376 "/usr/include/unistd.h" 3 4
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;






extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) ;
# 417 "/usr/include/unistd.h" 3 4
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ )) ;
# 432 "/usr/include/unistd.h" 3 4
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ ));
# 444 "/usr/include/unistd.h" 3 4
extern unsigned int sleep (unsigned int __seconds);







extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ ));






extern int usleep (__useconds_t __useconds);
# 469 "/usr/include/unistd.h" 3 4
extern int pause (void);



extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ )) ;




extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;






extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;



extern int chdir (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern int fchdir (int __fd) __attribute__ ((__nothrow__ )) ;
# 511 "/usr/include/unistd.h" 3 4
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ )) ;
# 525 "/usr/include/unistd.h" 3 4
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;




extern int dup (int __fd) __attribute__ ((__nothrow__ )) ;


extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ ));
# 543 "/usr/include/unistd.h" 3 4
extern char **__environ;







extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));




extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
# 598 "/usr/include/unistd.h" 3 4
extern int nice (int __inc) __attribute__ ((__nothrow__ )) ;




extern void _exit (int __status) __attribute__ ((__noreturn__));






# 1 "/usr/include/bits/confname.h" 1 3 4
# 25 "/usr/include/bits/confname.h" 3 4
enum
  {
    _PC_LINK_MAX,

    _PC_MAX_CANON,

    _PC_MAX_INPUT,

    _PC_NAME_MAX,

    _PC_PATH_MAX,

    _PC_PIPE_BUF,

    _PC_CHOWN_RESTRICTED,

    _PC_NO_TRUNC,

    _PC_VDISABLE,

    _PC_SYNC_IO,

    _PC_ASYNC_IO,

    _PC_PRIO_IO,

    _PC_SOCK_MAXBUF,

    _PC_FILESIZEBITS,

    _PC_REC_INCR_XFER_SIZE,

    _PC_REC_MAX_XFER_SIZE,

    _PC_REC_MIN_XFER_SIZE,

    _PC_REC_XFER_ALIGN,

    _PC_ALLOC_SIZE_MIN,

    _PC_SYMLINK_MAX,

    _PC_2_SYMLINKS

  };


enum
  {
    _SC_ARG_MAX,

    _SC_CHILD_MAX,

    _SC_CLK_TCK,

    _SC_NGROUPS_MAX,

    _SC_OPEN_MAX,

    _SC_STREAM_MAX,

    _SC_TZNAME_MAX,

    _SC_JOB_CONTROL,

    _SC_SAVED_IDS,

    _SC_REALTIME_SIGNALS,

    _SC_PRIORITY_SCHEDULING,

    _SC_TIMERS,

    _SC_ASYNCHRONOUS_IO,

    _SC_PRIORITIZED_IO,

    _SC_SYNCHRONIZED_IO,

    _SC_FSYNC,

    _SC_MAPPED_FILES,

    _SC_MEMLOCK,

    _SC_MEMLOCK_RANGE,

    _SC_MEMORY_PROTECTION,

    _SC_MESSAGE_PASSING,

    _SC_SEMAPHORES,

    _SC_SHARED_MEMORY_OBJECTS,

    _SC_AIO_LISTIO_MAX,

    _SC_AIO_MAX,

    _SC_AIO_PRIO_DELTA_MAX,

    _SC_DELAYTIMER_MAX,

    _SC_MQ_OPEN_MAX,

    _SC_MQ_PRIO_MAX,

    _SC_VERSION,

    _SC_PAGESIZE,


    _SC_RTSIG_MAX,

    _SC_SEM_NSEMS_MAX,

    _SC_SEM_VALUE_MAX,

    _SC_SIGQUEUE_MAX,

    _SC_TIMER_MAX,




    _SC_BC_BASE_MAX,

    _SC_BC_DIM_MAX,

    _SC_BC_SCALE_MAX,

    _SC_BC_STRING_MAX,

    _SC_COLL_WEIGHTS_MAX,

    _SC_EQUIV_CLASS_MAX,

    _SC_EXPR_NEST_MAX,

    _SC_LINE_MAX,

    _SC_RE_DUP_MAX,

    _SC_CHARCLASS_NAME_MAX,


    _SC_2_VERSION,

    _SC_2_C_BIND,

    _SC_2_C_DEV,

    _SC_2_FORT_DEV,

    _SC_2_FORT_RUN,

    _SC_2_SW_DEV,

    _SC_2_LOCALEDEF,


    _SC_PII,

    _SC_PII_XTI,

    _SC_PII_SOCKET,

    _SC_PII_INTERNET,

    _SC_PII_OSI,

    _SC_POLL,

    _SC_SELECT,

    _SC_UIO_MAXIOV,

    _SC_IOV_MAX = _SC_UIO_MAXIOV,

    _SC_PII_INTERNET_STREAM,

    _SC_PII_INTERNET_DGRAM,

    _SC_PII_OSI_COTS,

    _SC_PII_OSI_CLTS,

    _SC_PII_OSI_M,

    _SC_T_IOV_MAX,



    _SC_THREADS,

    _SC_THREAD_SAFE_FUNCTIONS,

    _SC_GETGR_R_SIZE_MAX,

    _SC_GETPW_R_SIZE_MAX,

    _SC_LOGIN_NAME_MAX,

    _SC_TTY_NAME_MAX,

    _SC_THREAD_DESTRUCTOR_ITERATIONS,

    _SC_THREAD_KEYS_MAX,

    _SC_THREAD_STACK_MIN,

    _SC_THREAD_THREADS_MAX,

    _SC_THREAD_ATTR_STACKADDR,

    _SC_THREAD_ATTR_STACKSIZE,

    _SC_THREAD_PRIORITY_SCHEDULING,

    _SC_THREAD_PRIO_INHERIT,

    _SC_THREAD_PRIO_PROTECT,

    _SC_THREAD_PROCESS_SHARED,


    _SC_NPROCESSORS_CONF,

    _SC_NPROCESSORS_ONLN,

    _SC_PHYS_PAGES,

    _SC_AVPHYS_PAGES,

    _SC_ATEXIT_MAX,

    _SC_PASS_MAX,


    _SC_XOPEN_VERSION,

    _SC_XOPEN_XCU_VERSION,

    _SC_XOPEN_UNIX,

    _SC_XOPEN_CRYPT,

    _SC_XOPEN_ENH_I18N,

    _SC_XOPEN_SHM,


    _SC_2_CHAR_TERM,

    _SC_2_C_VERSION,

    _SC_2_UPE,


    _SC_XOPEN_XPG2,

    _SC_XOPEN_XPG3,

    _SC_XOPEN_XPG4,


    _SC_CHAR_BIT,

    _SC_CHAR_MAX,

    _SC_CHAR_MIN,

    _SC_INT_MAX,

    _SC_INT_MIN,

    _SC_LONG_BIT,

    _SC_WORD_BIT,

    _SC_MB_LEN_MAX,

    _SC_NZERO,

    _SC_SSIZE_MAX,

    _SC_SCHAR_MAX,

    _SC_SCHAR_MIN,

    _SC_SHRT_MAX,

    _SC_SHRT_MIN,

    _SC_UCHAR_MAX,

    _SC_UINT_MAX,

    _SC_ULONG_MAX,

    _SC_USHRT_MAX,


    _SC_NL_ARGMAX,

    _SC_NL_LANGMAX,

    _SC_NL_MSGMAX,

    _SC_NL_NMAX,

    _SC_NL_SETMAX,

    _SC_NL_TEXTMAX,


    _SC_XBS5_ILP32_OFF32,

    _SC_XBS5_ILP32_OFFBIG,

    _SC_XBS5_LP64_OFF64,

    _SC_XBS5_LPBIG_OFFBIG,


    _SC_XOPEN_LEGACY,

    _SC_XOPEN_REALTIME,

    _SC_XOPEN_REALTIME_THREADS,


    _SC_ADVISORY_INFO,

    _SC_BARRIERS,

    _SC_BASE,

    _SC_C_LANG_SUPPORT,

    _SC_C_LANG_SUPPORT_R,

    _SC_CLOCK_SELECTION,

    _SC_CPUTIME,

    _SC_THREAD_CPUTIME,

    _SC_DEVICE_IO,

    _SC_DEVICE_SPECIFIC,

    _SC_DEVICE_SPECIFIC_R,

    _SC_FD_MGMT,

    _SC_FIFO,

    _SC_PIPE,

    _SC_FILE_ATTRIBUTES,

    _SC_FILE_LOCKING,

    _SC_FILE_SYSTEM,

    _SC_MONOTONIC_CLOCK,

    _SC_MULTI_PROCESS,

    _SC_SINGLE_PROCESS,

    _SC_NETWORKING,

    _SC_READER_WRITER_LOCKS,

    _SC_SPIN_LOCKS,

    _SC_REGEXP,

    _SC_REGEX_VERSION,

    _SC_SHELL,

    _SC_SIGNALS,

    _SC_SPAWN,

    _SC_SPORADIC_SERVER,

    _SC_THREAD_SPORADIC_SERVER,

    _SC_SYSTEM_DATABASE,

    _SC_SYSTEM_DATABASE_R,

    _SC_TIMEOUTS,

    _SC_TYPED_MEMORY_OBJECTS,

    _SC_USER_GROUPS,

    _SC_USER_GROUPS_R,

    _SC_2_PBS,

    _SC_2_PBS_ACCOUNTING,

    _SC_2_PBS_LOCATE,

    _SC_2_PBS_MESSAGE,

    _SC_2_PBS_TRACK,

    _SC_SYMLOOP_MAX,

    _SC_STREAMS,

    _SC_2_PBS_CHECKPOINT,


    _SC_V6_ILP32_OFF32,

    _SC_V6_ILP32_OFFBIG,

    _SC_V6_LP64_OFF64,

    _SC_V6_LPBIG_OFFBIG,


    _SC_HOST_NAME_MAX,

    _SC_TRACE,

    _SC_TRACE_EVENT_FILTER,

    _SC_TRACE_INHERIT,

    _SC_TRACE_LOG,


    _SC_LEVEL1_ICACHE_SIZE,

    _SC_LEVEL1_ICACHE_ASSOC,

    _SC_LEVEL1_ICACHE_LINESIZE,

    _SC_LEVEL1_DCACHE_SIZE,

    _SC_LEVEL1_DCACHE_ASSOC,

    _SC_LEVEL1_DCACHE_LINESIZE,

    _SC_LEVEL2_CACHE_SIZE,

    _SC_LEVEL2_CACHE_ASSOC,

    _SC_LEVEL2_CACHE_LINESIZE,

    _SC_LEVEL3_CACHE_SIZE,

    _SC_LEVEL3_CACHE_ASSOC,

    _SC_LEVEL3_CACHE_LINESIZE,

    _SC_LEVEL4_CACHE_SIZE,

    _SC_LEVEL4_CACHE_ASSOC,

    _SC_LEVEL4_CACHE_LINESIZE,



    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

    _SC_RAW_SOCKETS,


    _SC_V7_ILP32_OFF32,

    _SC_V7_ILP32_OFFBIG,

    _SC_V7_LP64_OFF64,

    _SC_V7_LPBIG_OFFBIG,


    _SC_SS_REPL_MAX,


    _SC_TRACE_EVENT_NAME_MAX,

    _SC_TRACE_NAME_MAX,

    _SC_TRACE_SYS_MAX,

    _SC_TRACE_USER_EVENT_MAX,


    _SC_XOPEN_STREAMS,


    _SC_THREAD_ROBUST_PRIO_INHERIT,

    _SC_THREAD_ROBUST_PRIO_PROTECT

  };


enum
  {
    _CS_PATH,


    _CS_V6_WIDTH_RESTRICTED_ENVS,



    _CS_GNU_LIBC_VERSION,

    _CS_GNU_LIBPTHREAD_VERSION,


    _CS_V5_WIDTH_RESTRICTED_ENVS,



    _CS_V7_WIDTH_RESTRICTED_ENVS,



    _CS_LFS_CFLAGS = 1000,

    _CS_LFS_LDFLAGS,

    _CS_LFS_LIBS,

    _CS_LFS_LINTFLAGS,

    _CS_LFS64_CFLAGS,

    _CS_LFS64_LDFLAGS,

    _CS_LFS64_LIBS,

    _CS_LFS64_LINTFLAGS,


    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,

    _CS_XBS5_ILP32_OFF32_LDFLAGS,

    _CS_XBS5_ILP32_OFF32_LIBS,

    _CS_XBS5_ILP32_OFF32_LINTFLAGS,

    _CS_XBS5_ILP32_OFFBIG_CFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LIBS,

    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,

    _CS_XBS5_LP64_OFF64_CFLAGS,

    _CS_XBS5_LP64_OFF64_LDFLAGS,

    _CS_XBS5_LP64_OFF64_LIBS,

    _CS_XBS5_LP64_OFF64_LINTFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LIBS,

    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LIBS,

    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V6_LP64_OFF64_CFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LIBS,

    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LIBS,

    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V7_LP64_OFF64_CFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LIBS,

    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,


    _CS_V6_ENV,

    _CS_V7_ENV

  };
# 610 "/usr/include/unistd.h" 2 3 4


extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ ));


extern long int sysconf (int __name) __attribute__ ((__nothrow__ ));



extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ ));




extern __pid_t getpid (void) __attribute__ ((__nothrow__ ));


extern __pid_t getppid (void) __attribute__ ((__nothrow__ ));




extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ ));
# 646 "/usr/include/unistd.h" 3 4
extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ ));

extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ ));






extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ ));
# 672 "/usr/include/unistd.h" 3 4
extern int setpgrp (void) __attribute__ ((__nothrow__ ));
# 689 "/usr/include/unistd.h" 3 4
extern __pid_t setsid (void) __attribute__ ((__nothrow__ ));



extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ ));



extern __uid_t getuid (void) __attribute__ ((__nothrow__ ));


extern __uid_t geteuid (void) __attribute__ ((__nothrow__ ));


extern __gid_t getgid (void) __attribute__ ((__nothrow__ ));


extern __gid_t getegid (void) __attribute__ ((__nothrow__ ));




extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ )) ;
# 722 "/usr/include/unistd.h" 3 4
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ )) ;




extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ )) ;




extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ )) ;






extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ )) ;




extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ )) ;




extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ )) ;
# 778 "/usr/include/unistd.h" 3 4
extern __pid_t fork (void) __attribute__ ((__nothrow__));







extern __pid_t vfork (void) __attribute__ ((__nothrow__ ));





extern char *ttyname (int __fd) __attribute__ ((__nothrow__ ));



extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;



extern int isatty (int __fd) __attribute__ ((__nothrow__ ));





extern int ttyslot (void) __attribute__ ((__nothrow__ ));




extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;




extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4))) ;




extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;




extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;




extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 3))) ;


extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3))) ;



extern int unlink (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));



extern int rmdir (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ ));


extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ ));






extern char *getlogin (void);







extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));




extern int setlogin (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 893 "/usr/include/unistd.h" 3 4
# 1 "../lib/getopt.h" 1 3 4
# 36 "../lib/getopt.h" 3 4
extern char *optarg;
# 50 "../lib/getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 134 "../lib/getopt.h" 3 4
extern int getopt (int __argc, char *const *__argv, const char *__shortopts);
# 894 "/usr/include/unistd.h" 2 3 4







extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern int sethostid (long int __id) __attribute__ ((__nothrow__ )) ;





extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;





extern int vhangup (void) __attribute__ ((__nothrow__ ));


extern int revoke (const char *__file) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;







extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int acct (const char *__name) __attribute__ ((__nothrow__ ));



extern char *getusershell (void) __attribute__ ((__nothrow__ ));
extern void endusershell (void) __attribute__ ((__nothrow__ ));
extern void setusershell (void) __attribute__ ((__nothrow__ ));





extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ )) ;






extern int chroot (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;



extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));







extern int fsync (int __fd);
# 991 "/usr/include/unistd.h" 3 4
extern long int gethostid (void);


extern void sync (void) __attribute__ ((__nothrow__ ));





extern int getpagesize (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));




extern int getdtablesize (void) __attribute__ ((__nothrow__ ));
# 1015 "/usr/include/unistd.h" 3 4
extern int truncate (const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 1038 "/usr/include/unistd.h" 3 4
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ )) ;
# 1059 "/usr/include/unistd.h" 3 4
extern int brk (void *__addr) __attribute__ ((__nothrow__ )) ;





extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ ));
# 1080 "/usr/include/unistd.h" 3 4
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ ));
# 1103 "/usr/include/unistd.h" 3 4
extern int lockf (int __fd, int __cmd, __off_t __len) ;
# 1134 "/usr/include/unistd.h" 3 4
extern int fdatasync (int __fildes);
# 216 "../lib/system.h" 2
# 235 "../lib/system.h"
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
# 107 "/usr/include/sys/stat.h" 2 3 4
# 210 "/usr/include/sys/stat.h" 3 4
extern int stat (const char *__restrict __file,
   struct stat *__restrict __buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern int fstat (int __fd, struct stat *__buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 239 "/usr/include/sys/stat.h" 3 4
extern int fstatat (int __fd, const char *__restrict __file,
      struct stat *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
# 264 "/usr/include/sys/stat.h" 3 4
extern int lstat (const char *__restrict __file,
    struct stat *__restrict __buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
# 285 "/usr/include/sys/stat.h" 3 4
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
# 400 "/usr/include/sys/stat.h" 3 4
extern int __fxstat (int __ver, int __fildes, struct stat *__stat_buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3)));
extern int __xstat (int __ver, const char *__filename,
      struct stat *__stat_buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat (int __ver, const char *__filename,
       struct stat *__stat_buf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat (int __ver, int __fildes, const char *__filename,
         struct stat *__stat_buf, int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4)));
# 443 "/usr/include/sys/stat.h" 3 4
extern int __xmknod (int __ver, const char *__path, __mode_t __mode,
       __dev_t *__dev) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));

extern int __xmknodat (int __ver, int __fd, const char *__path,
         __mode_t __mode, __dev_t *__dev)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 5)));
# 236 "../lib/system.h" 2
# 320 "../lib/system.h"
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
# 321 "../lib/system.h" 2
# 402 "../lib/system.h"
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
# 403 "../lib/system.h" 2
# 1 "/usr/include/sys/time.h" 1 3 4
# 28 "/usr/include/sys/time.h" 3 4
# 1 "/usr/include/bits/time.h" 1 3 4
# 29 "/usr/include/sys/time.h" 2 3 4
# 56 "/usr/include/sys/time.h" 3 4
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };

typedef struct timezone *__restrict __timezone_ptr_t;
# 72 "/usr/include/sys/time.h" 3 4
extern int gettimeofday (struct timeval *__restrict __tv,
    __timezone_ptr_t __tz) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




extern int settimeofday (const struct timeval *__tv,
    const struct timezone *__tz)
     __attribute__ ((__nothrow__ ));





extern int adjtime (const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__ ));




enum __itimer_which
  {

    ITIMER_REAL = 0,


    ITIMER_VIRTUAL = 1,



    ITIMER_PROF = 2

  };



struct itimerval
  {

    struct timeval it_interval;

    struct timeval it_value;
  };






typedef int __itimer_which_t;




extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ ));




extern int setitimer (__itimer_which_t __which,
        const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ ));




extern int utimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern int lutimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int futimes (int __fd, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ ));
# 404 "../lib/system.h" 2
# 413 "../lib/system.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdbool.h" 1 3
# 414 "../lib/system.h" 2
# 430 "../lib/system.h"
# 1 "../lib/gettext.h" 1
# 26 "../lib/gettext.h"
# 1 "/usr/include/libintl.h" 1 3 4
# 39 "/usr/include/libintl.h" 3 4
extern char *gettext (const char *__msgid)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (1)));



extern char *dgettext (const char *__domainname, const char *__msgid)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2)));
extern char *__dgettext (const char *__domainname, const char *__msgid)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2)));



extern char *dcgettext (const char *__domainname,
   const char *__msgid, int __category)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2)));
extern char *__dcgettext (const char *__domainname,
     const char *__msgid, int __category)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2)));




extern char *ngettext (const char *__msgid1, const char *__msgid2,
         unsigned long int __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (1))) __attribute__ ((__format_arg__ (2)));



extern char *dngettext (const char *__domainname, const char *__msgid1,
   const char *__msgid2, unsigned long int __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2))) __attribute__ ((__format_arg__ (3)));



extern char *dcngettext (const char *__domainname, const char *__msgid1,
    const char *__msgid2, unsigned long int __n,
    int __category)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format_arg__ (2))) __attribute__ ((__format_arg__ (3)));





extern char *textdomain (const char *__domainname) __attribute__ ((__nothrow__ ));



extern char *bindtextdomain (const char *__domainname,
        const char *__dirname) __attribute__ ((__nothrow__ ));



extern char *bind_textdomain_codeset (const char *__domainname,
          const char *__codeset) __attribute__ ((__nothrow__ ));
# 27 "../lib/gettext.h" 2
# 431 "../lib/system.h" 2
# 440 "../lib/system.h"
# 1 "../lib/fnmatch.h" 1
# 62 "../lib/fnmatch.h"
extern int fnmatch (const char *__pattern, const char *__string, int __flags);
# 441 "../lib/system.h" 2
# 460 "../lib/system.h"
# 1 "../lib/xalloc.h" 1
# 42 "../lib/xalloc.h"
extern int xalloc_exit_failure;



extern void (*xalloc_fail_func) (void);




extern char *const xalloc_msg_memory_exhausted;





extern void xalloc_die (void) __attribute__ ((__noreturn__));

void *xmalloc (size_t n);
void *xcalloc (size_t n, size_t s);
void *xrealloc (void *p, size_t n);
char *xstrdup (const char *str);
char *xstrndup (const char *str, size_t n);
# 461 "../lib/system.h" 2
# 1 "../lib/error.h" 1
# 49 "../lib/error.h"
extern void error (int status, int errnum, const char *format, ...)
     __attribute__ ((__format__ (__printf__, 3, 4)));

extern void error_at_line (int status, int errnum, const char *fname,
      unsigned int lineno, const char *format, ...)
     __attribute__ ((__format__ (__printf__, 5, 6)));




extern void (*error_print_progname) (void);
# 68 "../lib/error.h"
extern unsigned int error_message_count;



extern int error_one_per_line;
# 462 "../lib/system.h" 2
# 29 "../lib/a2ps.h" 2
# 34 "parsessh.y" 2
# 1 "../lib/jobs.h" 1
# 35 "../lib/jobs.h"
# 1 "../lib/encoding.h" 1
# 34 "../lib/encoding.h"
# 1 "../lib/faces.h" 1
# 36 "../lib/faces.h"
struct a2ps_job;
# 76 "../lib/faces.h"
enum face_e {
  No_face = -1,
  First_face = 0,
  Plain = 0,
  Keyword = 1,
  Keyword_strong = 2,
  Label = 3,
  Label_strong = 4,
  String = 5,
  Symbol = 6,
  Error = 7,
  Comment = 8,
  Comment_strong = 9,
  Last_face = 9
};
# 101 "../lib/faces.h"
extern enum face_e base_faces [];

enum face_e string_to_face (const char * string);
const char * face_eo_ps (enum face_e face);
const char * face_to_string (enum face_e face);
void face_self_print (enum face_e face, FILE * stream);

void init_face_eo_font (struct a2ps_job * job);
void face_eo_font_free (char * face_eo_font [10]);
void check_face_eo_font (struct a2ps_job * job);
int face_eo_font_is_set (struct a2ps_job * job);
void face_set_font (struct a2ps_job * job, enum face_e face, const char * font_name);
# 35 "../lib/encoding.h" 2
# 1 "../lib/hashtab.h" 1
# 41 "../lib/hashtab.h"
typedef unsigned long (*hash_func_t) (void const *key);
typedef int (*hash_cmp_func_t) (void const *x, void const *y);
typedef int (*hash_select_func_t) (void const *item);
typedef void (*hash_map_func_t) (void const *item);
typedef void (*hash_maparg_func_t) (void const *item, void const * arg);

struct hash_table_s
{
  void **ht_vec;
  unsigned long ht_size;
  unsigned long ht_capacity;
  unsigned long ht_fill;
  unsigned long ht_collisions;
  unsigned long ht_lookups;
  unsigned int ht_rehashes;
  hash_func_t ht_hash_1;
  hash_func_t ht_hash_2;
  hash_cmp_func_t ht_compare;
};

typedef int (*qsort_cmp_t) (void const *, void const *);

void hash_init (struct hash_table_s *ht, unsigned long size, hash_func_t hash_1, hash_func_t hash_2, hash_cmp_func_t hash_cmp);

void hash_load (struct hash_table_s *ht, void *item_table, unsigned long cardinality, unsigned long size);

void **hash_find_slot (struct hash_table_s *ht, void const *key);
void *hash_find_item (struct hash_table_s *ht, void const *key);
void *hash_insert (struct hash_table_s *ht, void *item);
void *hash_insert_at (struct hash_table_s *ht, void *item, void const *slot);
void *hash_delete (struct hash_table_s *ht, void const *item);
void *hash_delete_at (struct hash_table_s *ht, void const *slot);
void hash_delete_items (struct hash_table_s *ht);
void hash_free_items (struct hash_table_s *ht, hash_map_func_t free_fn);
void hash_free (struct hash_table_s *ht, hash_map_func_t free_fn);
void hash_map (struct hash_table_s *ht, hash_map_func_t map);
void hash_maparg (struct hash_table_s *ht, hash_maparg_func_t map, void const *arg, qsort_cmp_t compare);

void hash_print_stats (struct hash_table_s *ht, FILE *out_FILE);
void **hash_dump (struct hash_table_s *ht, void **vector_0, qsort_cmp_t compare);
void **hash_dump_select (struct hash_table_s *ht, void **vector_0, hash_select_func_t select_fn, qsort_cmp_t compare);


extern void *hash_deleted_item;
# 36 "../lib/encoding.h" 2

struct a2ps_job;






unsigned int char_WX (struct a2ps_job * job, unsigned char c);
unsigned int string_WX (struct a2ps_job * job, unsigned char * string);





struct encoding;

const char * encoding_get_name (struct encoding * enc);
const char * encoding_get_key (struct encoding * enc);
void encoding_self_print (struct encoding * item, FILE * stream);

int encoding_char_exists (struct encoding * enc, enum face_e face, unsigned char c);

struct encoding *
get_encoding_by_alias (struct a2ps_job * job, char *string);


void set_encoding (struct a2ps_job * job, struct encoding * enc);





const char * encoding_resolve_font_substitute
 (struct a2ps_job * job, struct encoding * encoding, const char * font_name);






void encoding_build_faces_wx (struct a2ps_job * job, struct encoding * encoding);

void encoding_add_font_name_used (struct encoding * enc, const char * name);



void dump_encodings_setup (FILE * stream, struct a2ps_job * job);




void list_encodings_short (struct a2ps_job * job, FILE * stream);
void list_encodings_long (struct a2ps_job * job, FILE * stream);
void list_texinfo_encodings_long (struct a2ps_job * job, FILE * stream);





struct pair_htable * encodings_map_new (void);
void encodings_map_free (struct pair_htable * table);

struct hash_table_s * encodings_table_new (void);
void encodings_table_free (struct hash_table_s * table);

int load_main_encodings_map (struct a2ps_job * job);
# 36 "../lib/jobs.h" 2
# 1 "../lib/output.h" 1
# 45 "../lib/output.h"
struct output;
typedef void (*delayed_routine_t) (FILE * stream, void * arg);




struct output * output_new (const char * name);
void output_free (struct output * out);
void output_report (struct output * out, FILE * stream);


extern void output (struct output * out, const char *format, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));




void output_char (struct output * out, unsigned char c);
void output_delayed_int (struct output * out, int * ptr);
void output_delayed_string (struct output * out, unsigned char ** ptr);
void output_delayed_chunk (struct output * out, struct output * sub_out);


struct a2ps_job;
void output_file (struct output * out, struct a2ps_job * job, const char *name, const char *suffix);


void output_delayed_routine (struct output * out, delayed_routine_t fn, void * fn_arg);



void output_to_void (struct output * out, int forget);
int output_is_to_void (struct output * out);




void output_self_print (struct output * out, FILE * stream);




void undivert (struct a2ps_job * job);
void output_dump (struct output * out, FILE * stream);
# 37 "../lib/jobs.h" 2
# 1 "../lib/confg.h" 1
# 33 "../lib/confg.h"
# 1 "../config.h" 1
# 34 "../lib/confg.h" 2


struct a2ps_job;





typedef void (* config_hook) (const char * filename, int line, char * config_line);

extern config_hook delegation_hook;
extern config_hook toc_entry_hook;





int a2_read_config (struct a2ps_job * job, const char *path, const char *file);






void a2_read_sys_config (struct a2ps_job * job);
# 38 "../lib/jobs.h" 2
# 1 "../lib/media.h" 1
# 31 "../lib/media.h"
# 1 "../config.h" 1
# 32 "../lib/media.h" 2


struct a2ps_job;






struct medium
{
  char * name;
  int w;
  int h;
  int llx;
  int lly;
  int urx;
  int ury;
};


typedef enum
{
  portrait, landscape
} ORIENTATION;

struct hash_table_s * new_medium_table (void);

void free_medium_table (struct hash_table_s * table);

struct medium * a2ps_get_medium (struct a2ps_job * job, const char *string);


const char * a2ps_get_medium_name (struct a2ps_job * job, const char *string);


_Bool a2ps_medium_libpaper_p (struct a2ps_job * job, const char * name);


void add_medium (struct a2ps_job * job, const char * name, int w, int h, int llx, int lly, int urx, int ury);




void list_media_long (struct a2ps_job * job, FILE * stream);
void list_media_short (struct a2ps_job * job, FILE * stream);
# 39 "../lib/jobs.h" 2
# 1 "../lib/darray.h" 1
# 33 "../lib/darray.h"
enum da_growth
{
  da_steady,
  da_linear,
  da_geometrical
};

typedef void (*da_map_func_t) (void *);
typedef void (*da_maparg_func_t) (void *, void *);
typedef void (*da_print_func_t) (const void *, FILE * stream);
typedef int (*da_cmp_func_t) (const void * k1, const void * k2);
typedef int (*da_cmp_arg_func_t) (const void * k1, const void * k2, const void * arg);



struct darray
{
  const char * name;
  size_t size;
  size_t original_size;
  enum da_growth growth;
  size_t increment;
  size_t len;
  void * * content;
  da_print_func_t self_print;
  da_cmp_func_t cmp;
};

extern int da_exit_error;





struct darray *
da_new (const char * name, size_t size, enum da_growth growth, size_t increment, da_print_func_t self_print, da_cmp_func_t cmp);



void da_free_content (struct darray * arr, da_map_func_t free_func);
void da_free (struct darray * arr, da_map_func_t free_func);
void da_erase (struct darray * arr);
void da_print_stats (struct darray * arr, FILE * stream);
void da_resize (struct darray * arr, size_t size);
void da_grow (struct darray * arr);





struct darray * da_clone (struct darray * arr);




int da_is_full (struct darray * arr);
int da_is_sorted (struct darray * arr);



int da_equal (struct darray * ar1, struct darray * ar2);

int da_cmp_equal (struct darray * ar1, struct darray * ar2);
int da_where (struct darray * arr, const void * stuff);
int da_includes (struct darray * arr, const void * stuff);




void da_append (struct darray * arr, void * elem);
void da_insert_at (struct darray * arr, void * elem, size_t where);
void da_remove_at (struct darray * arr, size_t where, da_map_func_t free_func);

void da_concat (struct darray * arr, struct darray * arr2);
void da_prefix (struct darray * arr, struct darray * arr2);




void da_qsort (struct darray * arr);
void da_qsort_with_arg (struct darray * arr, da_cmp_arg_func_t cmp, const void * arg);


void da_self_print (struct darray * arr, FILE * stream);
void da_unique (struct darray * arr, da_map_func_t free_func);


enum da_include_policy {
  da_1_wins, da_2_wins
};



void da_merge (struct darray * a1, struct darray * a2, da_map_func_t free_func, enum da_include_policy policy);




void da_map (struct darray * arr, da_map_func_t func);
void da_maparg (struct darray * arr, da_maparg_func_t func, void * arg);





int da_str_cmp (const char * s1, const char * s2);
void da_str_print (const char * s1, FILE * stream);
void da_str_printnl (const char * s1, FILE * stream);
# 40 "../lib/jobs.h" 2
# 1 "../lib/gen.h" 1
# 32 "../lib/gen.h"
struct a2ps_job;

enum output_format {
  eps, ps
};

const char * output_format_to_key (enum output_format format);



void a2ps_print_char (struct a2ps_job * job, int c, enum face_e face);



void a2ps_print_string (struct a2ps_job * job, const unsigned char * string, enum face_e face);



void a2ps_print_buffer (struct a2ps_job * job, const unsigned char * buffer, size_t start, size_t end, enum face_e face);




void a2ps_open_output_session (struct a2ps_job * job);
void a2ps_close_output_session (struct a2ps_job * job);


void a2ps_open_input_session (struct a2ps_job * job, unsigned char * name);
void a2ps_close_input_session (struct a2ps_job * job);
# 41 "../lib/jobs.h" 2
# 1 "../lib/psstat.h" 1
# 42 "../lib/psstat.h"
typedef struct hash_table_s hash_table;



enum duplex_e
{
  simplex, duplex, tumble
};





struct ps_status
{

  unsigned int columnsperline;
  unsigned long wxperline;
  int linesperpage;
  float title_bar_height;
  int title_font_size;
  unsigned char * magic_number;
  unsigned char * page_label_format;

  struct encoding * opened_encoding;


  int page_are_ordered;

  hash_table * needed_resources;
  hash_table * supplied_resources;
  hash_table * colors;
  hash_table * pagedevice;
  hash_table * statusdict;
  struct output * setup;



  unsigned char ** page_label;
  int start_page;
  int start_line;
  int line_continued;
  int is_in_cut;
  enum face_e face;
  int face_declared;
  int nonprinting_chars;
  int chars;
  int line;
  unsigned int column;
  unsigned long wx;
};




struct ps_status * new_ps_status (void);
void ps_status_free (struct ps_status * status);
void initialize_ps_status (struct ps_status * status);







void output_pagedevice (struct a2ps_job * job);
void pagedevice_dump (FILE *stream, struct a2ps_job * job);
void dump_requirements (FILE * stream, struct a2ps_job * job);
void setpagedevice (struct a2ps_job * job, const char * key, const char * value);

void delpagedevice (struct a2ps_job * job, const char * key);

void list_pagedevice (struct a2ps_job * job, FILE * stream);




void output_statusdict (struct a2ps_job * job);
void setstatusdict (struct a2ps_job * job, const char * key, const char * value, int def);

void delstatusdict (struct a2ps_job * job, const char * key);

void list_statusdict (struct a2ps_job * job, FILE * stream);
# 42 "../lib/jobs.h" 2
# 1 "../lib/caret.h" 1
# 35 "../lib/caret.h"
struct a2ps_job;


enum unprintable_format {
  caret, space, question_mark, octal, hexa, Emacs
};

const char * unprintable_format_to_string
 (enum unprintable_format format);


int escape_unprintable (struct a2ps_job * job, int c, unsigned char * res);
# 43 "../lib/jobs.h" 2
# 1 "../lib/common.h" 1
# 43 "../lib/common.h"
struct a2ps_common_s
{
  char ** path;
};


void a2ps_common_reset (struct a2ps_common_s * common);


struct a2ps_common_s * a2ps_common_new (void);


void a2ps_common_free (struct a2ps_common_s * common);



void a2ps_common_finalize (struct a2ps_common_s * common, const char * home);
# 44 "../lib/jobs.h" 2
# 1 "../lib/printers.h" 1
# 45 "../lib/printers.h"
struct a2ps_job;
struct a2ps_printers_s;


void a2ps_printers_list_short (struct a2ps_job * job, FILE * stream);
void a2ps_printers_list_long (struct a2ps_job * job, FILE * stream);
void a2ps_ppd_list_short (struct a2ps_job * job, FILE * stream);
void a2ps_ppd_list_long (struct a2ps_job * job, FILE * stream);



void a2ps_open_output_stream (struct a2ps_job * job);
void a2ps_close_output_stream (struct a2ps_job * job);

unsigned char *a2ps_flag_destination_to_string
    (struct a2ps_job * job);
unsigned char *a2ps_destination_to_string
    (struct a2ps_job * job);


struct a2ps_printers_s *a2ps_printers_new
   (struct a2ps_common_s * common);


void a2ps_printers_free (struct a2ps_printers_s * printers);


void a2ps_printers_finalize (struct a2ps_printers_s * printers);


const char * a2ps_printers_default_ppdkey_get
   (struct a2ps_printers_s * printers);

void a2ps_printers_default_ppdkey_set
   (struct a2ps_printers_s * printers, const char * key);


const char * a2ps_printers_request_ppdkey_get
   (struct a2ps_printers_s * printers);

void a2ps_printers_request_ppdkey_set
   (struct a2ps_printers_s * printers, const char * key);


_Bool a2ps_printers_add
   (struct a2ps_printers_s * printers, const char * key, char * definition);


int a2ps_printers_font_known_p
   (struct a2ps_printers_s * printers, const char * name);






void a2ps_printers_flag_output_set
    (struct a2ps_printers_s * printers, const char * output_name, _Bool is_printer);

const char * a2ps_printers_flag_output_name_get
    (struct a2ps_printers_s * printers);
_Bool a2ps_printers_flag_output_is_printer_get
    (struct a2ps_printers_s * printers);
# 45 "../lib/jobs.h" 2
# 1 "../lib/backupfile.h" 1
# 23 "../lib/backupfile.h"
enum backup_type
{

  none,


  simple,



  numbered_existing,


  numbered
};







extern char const *simple_backup_suffix;
# 55 "../lib/backupfile.h"
char *find_backup_file_name (char const *, enum backup_type);
enum backup_type get_version (char const *context, char const *arg);
enum backup_type xget_version (char const *context, char const *arg);
void addext (char *, char const *, int);
# 46 "../lib/jobs.h" 2
# 1 "../lib/madir.h" 1
# 34 "../lib/madir.h"
typedef enum madir_e
{
  madir_rows, madir_columns
} madir_t;

madir_t madir_argmatch (const char * option, const char * arg);
const char * madir_to_string (madir_t madir);
# 47 "../lib/jobs.h" 2
# 1 "../lib/filalign.h" 1
# 35 "../lib/filalign.h"
typedef int file_align_t;
# 57 "../lib/filalign.h"
file_align_t file_align_argmatch
  (const char * option, const char * arg);

const char * file_align_to_string
  (file_align_t file_align);
# 48 "../lib/jobs.h" 2

struct stream;


typedef struct a2ps_job
{
  char ** argv;
  size_t argc;

  struct a2ps_common_s common;

  char * file_command;


  hash_table * media;
  struct pair_htable * user_options;


  struct tm run_tm;
  enum backup_type backup_type;
  int sheets;
  int pages;
  int lines_folded;
  int total_files;
  ORIENTATION orientation;
  enum duplex_e duplex;
  int columns;
  int rows;
  madir_t madir;

  int virtual;
  int copies;
  int margin;

  struct pair_htable * encodings_map;
  struct output * ps_encodings;
  int page_prefeed;


  char * face_eo_font [10];
  unsigned char * stdin_filename;




  struct a2ps_printers_s * printers;
  enum output_format output_format;
  struct stream * output_stream;

  _Bool folding;
  int numbering;

  enum unprintable_format unprintable_format;
  int interpret;
  int print_binaries;
  file_align_t file_align;
  int border;
  _Bool debug;
  char * prolog;
  struct medium * medium;
  char *medium_request;
  int tabsize;
  int lines_requested;
  int columns_requested;
  float fontsize;
  struct encoding * encoding;
  char * requested_encoding_name;



  struct encoding * requested_encoding;
  struct encoding * saved_encoding;
  struct hash_table_s * encodings;

  struct pair_htable * fonts_map;
  struct hash_table_s * font_infos;


  unsigned char * title;
  unsigned char * header;
  unsigned char * center_title;
  unsigned char * left_title;
  unsigned char * right_title;
  unsigned char * left_footer;
  unsigned char * footer;
  unsigned char * right_footer;
  unsigned char * water;


  unsigned char tag1[256], tag2[256], tag3[256], tag4[256];


  struct pair_htable * macro_meta_sequences;


  struct ps_status * status;


  struct output * divertion;


  char * tmp_filenames [10];


  struct page_range * page_range;


  struct darray * jobs;
} a2ps_job;



struct a2ps_job * a2ps_job_new (void);


void a2ps_job_finalize (struct a2ps_job * job);


void a2ps_job_free (struct a2ps_job * job);
# 175 "../lib/jobs.h"
void a2ps_job_unlink_tmpfiles (struct a2ps_job * job);
# 35 "parsessh.y" 2
# 1 "./ffaces.h" 1
# 47 "./ffaces.h"
enum fflag_e {
  ff_No_fflag = 0,


  ff_Invisible = 1 << 0,


  ff_Tag1 = 1 << 1,
  ff_Tag2 = 1 << 2,
  ff_Tag3 = 1 << 3,
  ff_Tag4 = 1 << 4,


  ff_Index1 = 1 << 5,
  ff_Index2 = 1 << 6,
  ff_Index3 = 1 << 7,
  ff_Index4 = 1 << 8,


  ff_Encoding = 1 << 9
};

void fflag_self_print (enum fflag_e flags, FILE * stream);





struct fface_s {
  enum face_e face;
  enum fflag_e flags;
};

void fface_self_print (struct fface_s face, FILE * stream);
# 120 "./ffaces.h"
extern struct fface_s String_fface;
extern struct fface_s Plain_fface;
extern struct fface_s Symbol_fface;
extern struct fface_s No_fface;
# 36 "parsessh.y" 2
# 1 "./ssheet.h" 1
# 37 "./ssheet.h"
# 1 "./regex.h" 1
# 44 "./regex.h"
typedef long int s_reg_t;
typedef unsigned long int active_reg_t;






typedef unsigned long int reg_syntax_t;
# 167 "./regex.h"
extern reg_syntax_t re_syntax_options;
# 283 "./regex.h"
typedef enum
{




  REG_NOERROR = 0,
  REG_NOMATCH,



  REG_BADPAT,
  REG_ECOLLATE,
  REG_ECTYPE,
  REG_EESCAPE,
  REG_ESUBREG,
  REG_EBRACK,
  REG_EPAREN,
  REG_EBRACE,
  REG_BADBR,
  REG_ERANGE,
  REG_ESPACE,
  REG_BADRPT,


  REG_EEND,
  REG_ESIZE,
  REG_ERPAREN
} reg_errcode_t;
# 323 "./regex.h"
struct re_pattern_buffer
{




  unsigned char *buffer;


  unsigned long int allocated;


  unsigned long int used;


  reg_syntax_t syntax;




  char *fastmap;





  char * translate;


  size_t re_nsub;






  unsigned can_be_null : 1;
# 368 "./regex.h"
  unsigned regs_allocated : 2;



  unsigned fastmap_accurate : 1;



  unsigned no_sub : 1;



  unsigned not_bol : 1;


  unsigned not_eol : 1;


  unsigned newline_anchor : 1;


};

typedef struct re_pattern_buffer regex_t;


typedef int regoff_t;




struct re_registers
{
  unsigned num_regs;
  regoff_t *start;
  regoff_t *end;
};
# 418 "./regex.h"
typedef struct
{
  regoff_t rm_so;
  regoff_t rm_eo;
} regmatch_t;
# 444 "./regex.h"
extern reg_syntax_t re_set_syntax (reg_syntax_t syntax);




extern const char *re_compile_pattern
  (const char *pattern, size_t length, struct re_pattern_buffer *buffer);






extern int re_compile_fastmap (struct re_pattern_buffer *buffer);







extern int re_search
  (struct re_pattern_buffer *buffer, const char *string, int length, int start, int range, struct re_registers *regs);





extern int re_search_2
  (struct re_pattern_buffer *buffer, const char *string1, int length1, const char *string2, int length2, int start, int range, struct re_registers *regs, int stop);






extern int re_match
  (struct re_pattern_buffer *buffer, const char *string, int length, int start, struct re_registers *regs);




extern int re_match_2
  (struct re_pattern_buffer *buffer, const char *string1, int length1, const char *string2, int length2, int start, struct re_registers *regs, int stop);
# 504 "./regex.h"
extern void re_set_registers
  (struct re_pattern_buffer *buffer, struct re_registers *regs, unsigned num_regs, regoff_t *starts, regoff_t *ends);
# 517 "./regex.h"
extern int regcomp (regex_t *__preg, const char *__pattern, int __cflags);


extern int regexec (const regex_t *__preg, const char *__string, size_t __nmatch, regmatch_t __pmatch[], int __eflags);



extern size_t regerror (int __errcode, const regex_t *__preg, char *__errbuf, size_t __errbuf_size);


extern void regfree (regex_t *__preg);
# 38 "./ssheet.h" 2

enum case_sensitiveness
{
  case_sensitive, case_insensitive, case_undefined
};





struct pattern
{
  char * pattern;
  size_t len;
};







struct faced_string
{
  unsigned char * string;
  int reg_ref;


  struct fface_s face;
};






struct rule
{
  unsigned char *word;
  struct re_pattern_buffer *regex;
  struct darray * rhs;
};

struct words
{

  struct darray * strings;
  struct darray * regexps;
  struct rule ** min [256];
  struct rule ** max [256];
};

struct sequence
{
  struct rule * open;
  struct fface_s face;
  struct words * exceptions;
  struct words * close;
} ;

struct style_sheet
{

  const char * key;


  const unsigned char * name;


  const unsigned char * author;
  int version[4];


  int requirement[4];


  const unsigned char * documentation;



  struct darray * ancestors;


  enum case_sensitiveness sensitiveness;




  unsigned char alpha1 [256];
  unsigned char alpha2 [256];


  struct words * keywords;




  struct words * operators;


  struct darray * sequences;
};
# 155 "./ssheet.h"
struct faced_string *
faced_string_new (unsigned char * string, int reg_ref, struct fface_s fface);




void style_sheet_set_version (struct style_sheet * sheet, const char * version_string);

int style_sheet_set_requirement (struct style_sheet * sheet, const char * version_string);





struct darray * rhs_new (void);
struct darray *
rhs_new_single (unsigned char * string, int reg_ref, struct fface_s fface);
void rhs_add (struct darray * dest, struct faced_string * str);
void rhs_self_print (struct darray * rhs, FILE * stream);




struct rule * rule_new (unsigned char * word, struct pattern * pattern, struct darray * destination, const char *filename, size_t line);



struct rule * keyword_rule_new (unsigned char * word, struct pattern * pattern, struct darray * destination, const char *filename, size_t line);







struct pattern *
new_pattern (char * pattern, size_t len);

struct sequence * sequence_new
    (struct rule * Open, struct fface_s in_face, struct words * Close, struct words * exceptions);



void free_sequence (struct sequence * sequence);
struct sequence * new_C_string_sequence (const char * delimitor);
void sequence_self_print (struct sequence * v, FILE * stream);





struct words *
words_new (const char * name_strings, const char * name_regexps, size_t size, size_t increment);

void words_free (struct words * words);
void words_add_string (struct words * words, struct rule * rule);
void words_add_regex (struct words * words, struct rule * rule);
void words_set_no_face (struct words * words, struct fface_s face);
void words_merge_rules_unique (struct words * words, struct words * new);





struct style_sheet * new_style_sheet (const unsigned char * name);
void style_sheet_finalize (struct style_sheet * sheet);
void style_sheet_self_print (struct style_sheet * sheet, FILE * stream);





struct hash_table_s * new_style_sheets (void);
struct style_sheet * get_style_sheet (const char * name);







void list_style_sheets_short (FILE * stream);
void list_style_sheets_long (FILE * strea);
void list_style_sheets_html (FILE * strea);
void list_style_sheets_texinfo (FILE * strea);
# 37 "parsessh.y" 2
# 1 "../lib/message.h" 1
# 23 "../lib/message.h"
extern unsigned int msg_verbosity;





int msg_verbosity_argmatch (const char *option, char *arg);
# 46 "../lib/message.h"
# 1 "../lib/msg.h" 1
# 47 "../lib/message.h" 2
# 38 "parsessh.y" 2
# 1 "../lib/routines.h" 1
# 31 "../lib/routines.h"
char *xgetcwd (void);




char *xgethostname (void);

char *stpcpy (char * dest, const char * src);
char *stpncpy (char * dest, const char * src, size_t n);
# 222 "../lib/routines.h"
void string_to_array (unsigned char arr[256], const unsigned char * string);
int is_strlower (const unsigned char * string);
unsigned char *strnlower (unsigned char * string, size_t len);
unsigned char *strlower (unsigned char * string);
unsigned char *strcpylc (unsigned char *dst, const unsigned char *src);

void ustrccat (unsigned char * string, unsigned char c);
int strcnt (unsigned char * s, unsigned char c);
char * strsub (char * dest, const char * string, int start, int length);



void streams_copy (FILE * in, FILE * out);


void stream_dump (FILE * stream, const char * filename);

void unlink2 (void* dummy, const char * filename);


FILE * xfopen (const char * filename, const char * rights, const char * format);


FILE * xrfopen (const char * filename);
FILE * xwfopen (const char * filename);


FILE * xpopen (const char * command, const char * rights, const char * format);


FILE * xrpopen (const char * command);
FILE * xwpopen (const char * command);
# 39 "parsessh.y" 2
# 1 "./yy2ssh.h" 1
# 40 "parsessh.y" 2
# 56 "parsessh.y"
extern int sshlineno;


extern FILE * sshin;
extern struct a2ps_job * job;
extern const char * sshfilename;


void ssherror (const char *msg);
static void yyprint ();


void sshlex_initialize (void);


extern int highlight_level;

int sshlex (void);
struct style_sheet * parse_style_sheet (const char * filename);


static struct style_sheet * parsed_style_sheet = ((void*)0);
# 100 "parsessh.y"
typedef union YYSTYPE
# 81 "parsessh.y"
{
  int integer;
  unsigned char * string;
  struct pattern * pattern;
  struct style_sheet * sheet;
  struct rule * rule;
  struct sequence * sequence;
  struct darray * array;
  struct words * words;
  struct faced_string * faced_string;
  enum face_e face;
  enum fflag_e fflags;
  struct fface_s fface;
  enum case_sensitiveness sensitiveness;
}
# 260 "parsessh.c"
 YYSTYPE;
# 273 "parsessh.c"








typedef unsigned char yytype_uint8;






typedef signed char yytype_int8;







typedef unsigned short int yytype_uint16;





typedef short int yytype_int16;
# 433 "parsessh.c"
union yyalloc
{
  yytype_int16 yyss;
  YYSTYPE yyvs;
  };
# 506 "parsessh.c"
static const yytype_uint8 yytranslate[] =
{
       0, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
      36, 37, 2, 38, 35, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 1, 2, 3, 4,
       5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
      15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
      25, 26, 27, 28, 29, 30, 31, 32, 33, 34
};




static const yytype_uint16 yyprhs[] =
{
       0, 0, 3, 5, 12, 13, 19, 24, 30, 35,
      39, 42, 45, 50, 56, 62, 65, 68, 71, 74,
      77, 81, 86, 92, 94, 97, 101, 105, 108, 114,
     116, 120, 123, 125, 128, 130, 133, 135, 137, 140,
     142, 144, 146, 150, 152, 154, 158, 160, 162, 166,
     170, 173, 175, 180, 186, 190, 192, 194, 198, 202,
     205, 207, 212, 218, 222, 224, 226, 230, 234, 237,
     239, 244, 250, 252, 256, 262, 269, 275, 281, 286,
     293, 299, 305, 310, 318, 326, 328, 330, 331, 333,
     335, 339, 340
};


static const yytype_int8 yyrhs[] =
{
      40, 0, -1, 41, -1, 3, 30, 4, 42, 5,
       3, -1, -1, 42, 20, 6, 58, 6, -1, 42,
       6, 58, 6, -1, 42, 20, 9, 61, 9, -1,
      42, 9, 61, 9, -1, 42, 20, 64, -1, 42,
      64, -1, 42, 48, -1, 42, 14, 7, 30, -1,
      42, 11, 13, 4, 30, -1, 42, 12, 13, 4,
      30, -1, 42, 50, -1, 42, 44, -1, 42, 46,
      -1, 42, 47, -1, 42, 43, -1, 25, 26, 30,
      -1, 25, 26, 24, 30, -1, 15, 4, 45, 5,
      15, -1, 30, -1, 45, 30, -1, 22, 23, 30,
      -1, 24, 4, 30, -1, 24, 30, -1, 27, 7,
      49, 5, 27, -1, 30, -1, 49, 35, 30, -1,
      17, 33, -1, 32, -1, 51, 32, -1, 53, -1,
      30, 55, -1, 30, -1, 55, -1, 34, 55, -1,
      34, -1, 31, -1, 53, -1, 54, 35, 53, -1,
      28, -1, 29, -1, 36, 56, 37, -1, 28, -1,
      29, -1, 56, 38, 28, -1, 56, 38, 29, -1,
      30, 52, -1, 30, -1, 36, 30, 54, 37, -1,
       8, 55, 7, 59, 5, -1, 7, 59, 5, -1,
      57, -1, 60, -1, 59, 35, 57, -1, 59, 35,
      60, -1, 51, 52, -1, 51, -1, 36, 51, 54,
      37, -1, 8, 55, 7, 62, 5, -1, 7, 62,
       5, -1, 57, -1, 63, -1, 62, 35, 57, -1,
      62, 35, 63, -1, 51, 52, -1, 51, -1, 36,
      51, 54, 37, -1, 10, 7, 65, 5, 10, -1,
      66, -1, 65, 35, 66, -1, 30, 31, 55, 67,
      68, -1, 30, 30, 55, 55, 67, 68, -1, 30,
      55, 55, 67, 68, -1, 30, 30, 55, 67, 68,
      -1, 30, 55, 67, 68, -1, 51, 30, 55, 55,
      67, 68, -1, 51, 55, 55, 67, 68, -1, 51,
      30, 55, 67, 68, -1, 51, 55, 67, 68, -1,
      36, 30, 54, 37, 55, 67, 68, -1, 36, 51,
      54, 37, 55, 67, 68, -1, 18, -1, 19, -1,
      -1, 57, -1, 63, -1, 21, 61, 21, -1, -1,
      16, 61, 16, -1
};


static const yytype_uint16 yyrline[] =
{
       0, 129, 129, 136, 145, 148, 157, 163, 172, 178,
     186, 191, 196, 204, 211, 218, 221, 224, 227, 230,
     245, 246, 249, 251, 252, 267, 270, 271, 276, 283,
     291, 298, 306, 310, 322, 330, 334, 338, 342, 346,
     350, 357, 363, 374, 379, 386, 396, 401, 406, 412,
     426, 431, 437, 449, 453, 460, 465, 470, 475, 487,
     492, 499, 509, 513, 520, 526, 532, 537, 549, 554,
     560, 570, 573, 579, 602, 610, 618, 626, 634, 642,
     650, 658, 666, 674, 681, 689, 693, 701, 709, 715,
     721, 730, 733
};





static const char *const yytname[] =
{
  "$end", "error", "$undefined", "tSTYLE", "tIS", "tEND", "tKEYWORDS",
  "tARE", "tIN", "tOPERATORS", "tSEQUENCES", "tFIRST", "tSECOND",
  "tALPHABET", "tALPHABETS", "tDOCUMENTATION", "tEXCEPTIONS", "tCASE",
  "tCSTRING", "tCCHAR", "tOPTIONAL", "tCLOSERS", "tWRITTEN", "tBY",
  "tVERSION", "tREQUIRES", "tA2PS", "tANCESTORS", "tFACE", "tFFLAGS",
  "tSTRING", "tLATEXSYMBOL", "tREGEX", "tSENSITIVENESS", "tBACK_REF",
  "','", "'('", "')'", "'+'", "$accept", "file", "style_sheet",
  "definition_list", "requirement", "documentation", "long_string",
  "authors", "version", "ancestors_def", "ancestors_list", "case_def",
  "regex", "rhs", "a_rhs", "rhs_list", "fface", "fface_sxp", "rule",
  "keywords_def", "keywords_rule_list", "keyword_regex", "operators_def",
  "operators_rule_list", "operator_regex", "sequence_def", "sequence_list",
  "sequence", "closers_opt", "exception_def_opt", 0
};





static const yytype_uint16 yytoknum[] =
{
       0, 256, 257, 258, 259, 260, 261, 262, 263, 264,
     265, 266, 267, 268, 269, 270, 271, 272, 273, 274,
     275, 276, 277, 278, 279, 280, 281, 282, 283, 284,
     285, 286, 287, 288, 289, 44, 40, 41, 43
};



static const yytype_uint8 sshr1[] =
{
       0, 39, 40, 41, 42, 42, 42, 42, 42, 42,
      42, 42, 42, 42, 42, 42, 42, 42, 42, 42,
      43, 43, 44, 45, 45, 46, 47, 47, 48, 49,
      49, 50, 51, 51, 52, 53, 53, 53, 53, 53,
      53, 54, 54, 55, 55, 55, 56, 56, 56, 56,
      57, 57, 57, 58, 58, 59, 59, 59, 59, 60,
      60, 60, 61, 61, 62, 62, 62, 62, 63, 63,
      63, 64, 65, 65, 66, 66, 66, 66, 66, 66,
      66, 66, 66, 66, 66, 66, 66, 67, 67, 67,
      67, 68, 68
};


static const yytype_uint8 sshr2[] =
{
       0, 2, 1, 6, 0, 5, 4, 5, 4, 3,
       2, 2, 4, 5, 5, 2, 2, 2, 2, 2,
       3, 4, 5, 1, 2, 3, 3, 2, 5, 1,
       3, 2, 1, 2, 1, 2, 1, 1, 2, 1,
       1, 1, 3, 1, 1, 3, 1, 1, 3, 3,
       2, 1, 4, 5, 3, 1, 1, 3, 3, 2,
       1, 4, 5, 3, 1, 1, 3, 3, 2, 1,
       4, 5, 1, 3, 5, 6, 5, 5, 4, 6,
       5, 5, 4, 7, 7, 1, 1, 0, 1, 1,
       3, 0, 3
};




static const yytype_uint8 yydefact[] =
{
       0, 0, 0, 2, 0, 1, 4, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 19, 16, 17, 18, 11, 15, 10, 3,
       0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
       0, 31, 0, 0, 9, 0, 0, 27, 0, 0,
      51, 32, 0, 60, 55, 0, 56, 43, 44, 0,
       0, 6, 0, 69, 64, 0, 65, 0, 8, 85,
      86, 0, 0, 0, 0, 72, 0, 0, 12, 23,
       0, 0, 0, 25, 26, 0, 20, 29, 0, 36,
      40, 39, 50, 34, 37, 0, 0, 33, 59, 54,
       0, 46, 47, 0, 0, 0, 68, 63, 0, 0,
       0, 0, 87, 0, 0, 0, 87, 0, 0, 13,
      14, 0, 24, 5, 7, 21, 0, 0, 35, 38,
      41, 0, 0, 57, 58, 45, 0, 0, 0, 66,
      67, 0, 87, 87, 0, 0, 87, 88, 89, 91,
       0, 0, 87, 87, 91, 71, 73, 22, 28, 30,
       0, 52, 61, 48, 49, 53, 70, 62, 87, 91,
      91, 0, 91, 0, 78, 0, 0, 87, 91, 91,
      82, 42, 91, 77, 74, 90, 76, 0, 87, 87,
      91, 81, 80, 75, 92, 91, 91, 79, 83, 84
};


static const yytype_int16 yydefgoto[] =
{
      -1, 2, 3, 7, 22, 23, 80, 24, 25, 26,
      88, 27, 63, 92, 130, 131, 94, 103, 147, 32,
      55, 56, 35, 65, 148, 28, 74, 75, 149, 174
};




static const yytype_int16 sshpact[] =
{
      11, -2, 31, -150, 39, -150, -150, 98, 66, 126,
     183, 56, 62, 65, 75, 91, 40, 175, 77, 7,
      80, 109, -150, -150, -150, -150, -150, -150, -150, -150,
      69, 60, 132, 94, 60, 133, 35, 131, 142, 140,
     167, -150, 126, 183, -150, 168, 169, -150, 8, 170,
     129, -150, 18, 120, -150, 1, -150, -150, -150, 154,
     189, -150, 18, 120, -150, 4, -150, 194, -150, -150,
    -150, 138, 34, 143, 10, -150, 172, 173, -150, -150,
       5, 198, 196, -150, -150, 176, -150, -150, 14, 60,
    -150, 60, -150, -150, -150, 129, 120, -150, -150, -150,
      69, -150, -150, 155, 69, 120, -150, -150, 94, 94,
      60, 60, 111, 129, 120, 60, 111, 197, 35, -150,
    -150, 146, -150, -150, -150, -150, 181, 179, -150, -150,
    -150, 92, 118, -150, -150, -150, 166, 21, 127, -150,
    -150, 22, 111, 38, 183, 148, 38, -150, -150, 195,
     151, 152, 111, 38, 195, -150, -150, -150, -150, -150,
     129, -150, -150, -150, -150, -150, -150, -150, 38, 195,
     195, 191, 195, 183, -150, 60, 60, 38, 195, 195,
    -150, -150, 195, -150, -150, -150, -150, 199, 38, 38,
     195, -150, -150, -150, -150, 195, 195, -150, -150, -150
};


static const yytype_int16 yypgoto[] =
{
    -150, -150, -150, -150, -150, -150, -150, -150, -150, -150,
    -150, -150, -28, -41, -46, 23, -31, -150, -17, 171,
     106, 114, -42, 107, -15, 200, -150, 100, -91, -149
};






static const yytype_uint8 sshyytable[] =
{
      60, 82, 53, 67, 93, 180, 99, 93, 73, 107,
     121, 46, 98, 54, 1, 117, 64, 93, 66, 126,
     183, 184, 106, 186, 96, 154, 165, 167, 4, 191,
     192, 5, 85, 193, 105, 122, 100, 47, 86, 108,
     112, 197, 116, 6, 114, 118, 198, 199, 95, 127,
      51, 169, 170, 69, 70, 172, 100, 108, 128, 144,
     129, 178, 179, 36, 113, 71, 51, 51, 50, 29,
      51, 72, 53, 41, 62, 37, 53, 182, 38, 142,
     143, 146, 39, 133, 152, 153, 190, 54, 57, 58,
      73, 139, 64, 140, 66, 40, 59, 195, 196, 50,
      45, 51, 171, 8, 9, 52, 48, 10, 11, 12,
      13, 168, 14, 15, 181, 16, 49, 105, 17, 132,
      18, 177, 19, 20, 50, 21, 51, 160, 138, 161,
      62, 187, 144, 30, 31, 76, 150, 151, 61, 57,
      58, 50, 68, 51, 188, 189, 77, 145, 57, 58,
      89, 90, 97, 160, 91, 162, 59, 57, 58, 89,
      90, 157, 160, 91, 166, 59, 57, 58, 110, 111,
      78, 57, 58, 115, 59, 97, 101, 102, 95, 59,
      51, 42, 101, 102, 43, 11, 160, 160, 175, 176,
      33, 34, 135, 136, 163, 164, 104, 79, 83, 84,
      87, 109, 119, 120, 123, 124, 125, 155, 158, 159,
     137, 173, 185, 81, 134, 194, 141, 44, 156
};

static const yytype_uint8 sshyycheck[] =
{
      31, 43, 30, 34, 50, 154, 5, 53, 36, 5,
       5, 4, 53, 30, 3, 5, 33, 63, 33, 5,
     169, 170, 63, 172, 52, 116, 5, 5, 30, 178,
     179, 0, 24, 182, 62, 30, 35, 30, 30, 35,
      71, 190, 73, 4, 72, 35, 195, 196, 30, 35,
      32, 142, 143, 18, 19, 146, 35, 35, 89, 21,
      91, 152, 153, 7, 30, 30, 32, 32, 30, 3,
      32, 36, 100, 33, 36, 13, 104, 168, 13, 110,
     111, 112, 7, 100, 115, 116, 177, 104, 28, 29,
     118, 108, 109, 108, 109, 4, 36, 188, 189, 30,
      23, 32, 144, 5, 6, 36, 26, 9, 10, 11,
      12, 142, 14, 15, 160, 17, 7, 145, 20, 96,
      22, 152, 24, 25, 30, 27, 32, 35, 105, 37,
      36, 173, 21, 7, 8, 4, 113, 114, 6, 28,
      29, 30, 9, 32, 175, 176, 4, 36, 28, 29,
      30, 31, 32, 35, 34, 37, 36, 28, 29, 30,
      31, 15, 35, 34, 37, 36, 28, 29, 30, 31,
      30, 28, 29, 30, 36, 32, 28, 29, 30, 36,
      32, 6, 28, 29, 9, 10, 35, 35, 37, 37,
       7, 8, 37, 38, 28, 29, 7, 30, 30, 30,
      30, 7, 30, 30, 6, 9, 30, 10, 27, 30,
     104, 16, 21, 42, 100, 16, 109, 17, 118
};



static const yytype_uint8 yystos[] =
{
       0, 3, 40, 41, 30, 0, 4, 42, 5, 6,
       9, 10, 11, 12, 14, 15, 17, 20, 22, 24,
      25, 27, 43, 44, 46, 47, 48, 50, 64, 3,
       7, 8, 58, 7, 8, 61, 7, 13, 13, 7,
       4, 33, 6, 9, 64, 23, 4, 30, 26, 7,
      30, 32, 36, 51, 57, 59, 60, 28, 29, 36,
      55, 6, 36, 51, 57, 62, 63, 55, 9, 18,
      19, 30, 36, 51, 65, 66, 4, 4, 30, 30,
      45, 58, 61, 30, 30, 24, 30, 30, 49, 30,
      31, 34, 52, 53, 55, 30, 51, 32, 52, 5,
      35, 28, 29, 56, 7, 51, 52, 5, 35, 7,
      30, 31, 55, 30, 51, 30, 55, 5, 35, 30,
      30, 5, 30, 6, 9, 30, 5, 35, 55, 55,
      53, 54, 54, 57, 60, 37, 38, 59, 54, 57,
      63, 62, 55, 55, 21, 36, 55, 57, 63, 67,
      54, 54, 55, 55, 67, 10, 66, 15, 27, 30,
      35, 37, 37, 28, 29, 5, 37, 5, 55, 67,
      67, 61, 67, 16, 68, 37, 37, 55, 67, 67,
      68, 53, 67, 68, 68, 21, 68, 61, 55, 55,
      67, 68, 68, 68, 16, 67, 67, 68, 68, 68
};
# 951 "parsessh.c"
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)







{
  if (!yyvaluep)
    return;

  if (yytype < 39)
    yyprint (yyoutput, yytoknum[yytype], *yyvaluep);



  switch (yytype)
    {
      default:
 break;
    }
}
# 983 "parsessh.c"
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)







{
  if (yytype < 39)
    fprintf (yyoutput, "token %s (", yytname[yytype]);
  else
    fprintf (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  fprintf (yyoutput, ")");
}
# 1009 "parsessh.c"
static void
yy_stack_print (yytype_int16 *bottom, yytype_int16 *top)






{
  fprintf (stderr, "Stack now");
  for (; bottom <= top; ++bottom)
    fprintf (stderr, " %d", *bottom);
  fprintf (stderr, "\n");
}
# 1037 "parsessh.c"
static void
yy_reduce_print (YYSTYPE *yyvsp, int sshyyrule)






{
  int yynrhs = sshr2[sshyyrule];
  int yyi;
  unsigned long int yylno = yyrline[sshyyrule];
  fprintf (stderr, "Reducing stack by rule %d (line %lu):\n",
      sshyyrule - 1, yylno);

  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      fprintf (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[sshyyrule] + yyi],
         &(yyvsp[(yyi + 1) - (yynrhs)])
                  );
      fprintf (stderr, "\n");
    }
}
# 1070 "parsessh.c"
int sshdebug;
# 1130 "parsessh.c"
static char *
yystpcpy (char *yydest, const char *yysrc)






{
  char *yyd = yydest;
  const char *sshs = yysrc;

  while ((*yyd++ = *sshs++) != '\0')
    continue;

  return yyd - 1;
}
# 1158 "parsessh.c"
static long unsigned int
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      long unsigned int yyn = 0;
      char const *yyp = yystr;

      for (;;)
 switch (*++yyp)
   {
   case '\'':
   case ',':
     goto do_not_strip_quotes;

   case '\\':
     if (*++yyp != '\\')
       goto do_not_strip_quotes;

   default:
     if (yyres)
       yyres[yyn] = *yyp;
     yyn++;
     break;

   case '"':
     if (yyres)
       yyres[yyn] = '\0';
     return yyn;
   }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return strlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# 1205 "parsessh.c"
static long unsigned int
yysyntax_error (char *yyresult, int sshstate, int sshchar)
{
  int yyn = sshpact[sshstate];

  if (! (-150 < yyn && yyn <= 218))
    return 0;
  else
    {
      int yytype = ((unsigned int) (sshchar) <= 289 ? yytranslate[sshchar] : 2);
      long unsigned int yysize0 = yytnamerr (0, yytname[yytype]);
      long unsigned int yysize = yysize0;
      long unsigned int yysize1;
      int yysize_overflow = 0;
      enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
      char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
      int yyx;
# 1232 "parsessh.c"
      char *yyfmt;
      char const *yyf;
      static char const yyunexpected[] = "syntax error, unexpected %s";
      static char const yyexpecting[] = ", expecting %s";
      static char const yyor[] = " or %s";
      char yyformat[sizeof yyunexpected
      + sizeof yyexpecting - 1
      + ((YYERROR_VERBOSE_ARGS_MAXIMUM - 2)
         * (sizeof yyor - 1))];
      char const *yyprefix = yyexpecting;



      int yyxbegin = yyn < 0 ? -yyn : 0;


      int yychecklim = 218 - yyn + 1;
      int yyxend = yychecklim < 39 ? yychecklim : 39;
      int yycount = 1;

      yyarg[0] = yytname[yytype];
      yyfmt = yystpcpy (yyformat, yyunexpected);

      for (yyx = yyxbegin; yyx < yyxend; ++yyx)
 if (sshyycheck[yyx + yyn] == yyx && yyx != 1)
   {
     if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
       {
  yycount = 1;
  yysize = yysize0;
  yyformat[sizeof yyunexpected - 1] = '\0';
  break;
       }
     yyarg[yycount++] = yytname[yyx];
     yysize1 = yysize + yytnamerr (0, yytname[yyx]);
     yysize_overflow |= (yysize1 < yysize);
     yysize = yysize1;
     yyfmt = yystpcpy (yyfmt, yyprefix);
     yyprefix = yyor;
   }

      yyf = yyformat;
      yysize1 = yysize + strlen (yyf);
      yysize_overflow |= (yysize1 < yysize);
      yysize = yysize1;

      if (yysize_overflow)
 return ((long unsigned int) -1);

      if (yyresult)
 {



   char *yyp = yyresult;
   int yyi = 0;
   while ((*yyp = *yyf) != '\0')
     {
       if (*yyp == '%' && yyf[1] == 's' && yyi < yycount)
  {
    yyp += yytnamerr (yyp, yyarg[yyi++]);
    yyf += 2;
  }
       else
  {
    yyp++;
    yyf++;
  }
     }
 }
      return yysize;
    }
}
# 1315 "parsessh.c"
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)







{
  ((void) (yyvaluep));

  if (!yymsg)
    yymsg = "Deleting";
  do { if (sshdebug) { fprintf (stderr, "%s ", yymsg); yy_symbol_print (stderr, yytype, yyvaluep); fprintf (stderr, "\n"); } } while ((0));

  switch (yytype)
    {

      default:
 break;
    }
}
# 1350 "parsessh.c"
int sshparse (void);
# 1359 "parsessh.c"
int sshchar;


YYSTYPE sshlval;


int sshnerrs;
# 1386 "parsessh.c"
int
sshparse (void)






{

  int sshstate;
  int yyn;
  int yyresult;

  int yyerrstatus;

  int yytoken = 0;


  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  long unsigned int yymsg_alloc = sizeof yymsgbuf;
# 1419 "parsessh.c"
  yytype_int16 yyssa[200];
  yytype_int16 *yyss = yyssa;
  yytype_int16 *yyssp;


  YYSTYPE yyvsa[200];
  YYSTYPE *yyvs = yyvsa;
  YYSTYPE *yyvsp;





  long unsigned int yystacksize = 200;



  YYSTYPE sshval;




  int sshyylen = 0;

  do { if (sshdebug) fprintf (stderr, "Starting parse\n"); } while ((0));

  sshstate = 0;
  yyerrstatus = 0;
  sshnerrs = 0;
  sshchar = (-2);






  yyssp = yyss;
  yyvsp = yyvs;

  goto yysetstate;




 yynewstate:


  yyssp++;

 yysetstate:
  *yyssp = sshstate;

  if (yyss + yystacksize - 1 <= yyssp)
    {

      long unsigned int yysize = yyssp - yyss + 1;
# 1503 "parsessh.c"
      if (10000 <= yystacksize)
 goto yyexhaustedlab;
      yystacksize *= 2;
      if (10000 < yystacksize)
 yystacksize = 10000;

      {
 yytype_int16 *yyss1 = yyss;
 union yyalloc *yyptr =
   (union yyalloc *) malloc (((yystacksize) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) + (sizeof (union yyalloc) - 1)));
 if (! yyptr)
   goto yyexhaustedlab;
 do { long unsigned int yynewbytes; __builtin_memcpy (&yyptr->yyss, yyss, (yysize) * sizeof (*(yyss))); yyss = &yyptr->yyss; yynewbytes = yystacksize * sizeof (*yyss) + (sizeof (union yyalloc) - 1); yyptr += yynewbytes / sizeof (*yyptr); } while ((0));
 do { long unsigned int yynewbytes; __builtin_memcpy (&yyptr->yyvs, yyvs, (yysize) * sizeof (*(yyvs))); yyvs = &yyptr->yyvs; yynewbytes = yystacksize * sizeof (*yyvs) + (sizeof (union yyalloc) - 1); yyptr += yynewbytes / sizeof (*yyptr); } while ((0));


 if (yyss1 != yyssa)
   free (yyss1);
      }



      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;


      do { if (sshdebug) fprintf (stderr, "Stack size increased to %lu\n", (unsigned long int) yystacksize); } while ((0));


      if (yyss + yystacksize - 1 <= yyssp)
 goto yyabortlab;
    }

  do { if (sshdebug) fprintf (stderr, "Entering state %d\n", sshstate); } while ((0));

  goto yybackup;




yybackup:





  yyn = sshpact[sshstate];
  if (yyn == -150)
    goto yydefault;




  if (sshchar == (-2))
    {
      do { if (sshdebug) fprintf (stderr, "Reading a token: "); } while ((0));
      sshchar = sshlex ();
    }

  if (sshchar <= 0)
    {
      sshchar = yytoken = 0;
      do { if (sshdebug) fprintf (stderr, "Now at end of input.\n"); } while ((0));
    }
  else
    {
      yytoken = ((unsigned int) (sshchar) <= 289 ? yytranslate[sshchar] : 2);
      do { if (sshdebug) { fprintf (stderr, "%s ", "Next token is"); yy_symbol_print (stderr, yytoken, &sshlval); fprintf (stderr, "\n"); } } while ((0));
    }



  yyn += yytoken;
  if (yyn < 0 || 218 < yyn || sshyycheck[yyn] != yytoken)
    goto yydefault;
  yyn = sshyytable[yyn];
  if (yyn <= 0)
    {
      if (yyn == 0 || yyn == -1)
 goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  if (yyn == 5)
    goto yyacceptlab;



  if (yyerrstatus)
    yyerrstatus--;


  do { if (sshdebug) { fprintf (stderr, "%s ", "Shifting"); yy_symbol_print (stderr, yytoken, &sshlval); fprintf (stderr, "\n"); } } while ((0));


  if (sshchar != 0)
    sshchar = (-2);

  sshstate = yyn;
  *++yyvsp = sshlval;

  goto yynewstate;





yydefault:
  yyn = yydefact[sshstate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;





yyreduce:

  sshyylen = sshr2[yyn];
# 1633 "parsessh.c"
  sshval = yyvsp[1-sshyylen];


  do { if (sshdebug) yy_reduce_print (yyvsp, yyn); } while ((0));
  switch (yyn)
    {
        case 2:
# 130 "parsessh.y"
 {
      parsed_style_sheet = (yyvsp[(1) - (1)].sheet);
    }
    break;

  case 3:
# 137 "parsessh.y"
 {
 (yyvsp[(4) - (6)].sheet)->name = (yyvsp[(2) - (6)].string);
 (yyvsp[(4) - (6)].sheet)->key = "<No key yet>";
 (sshval.sheet) = (yyvsp[(4) - (6)].sheet);
      }
    break;

  case 4:
# 145 "parsessh.y"
 {
   (sshval.sheet) = new_style_sheet ((const unsigned char *) "<no name>");
 }
    break;

  case 5:
# 149 "parsessh.y"
 {
   if (highlight_level == 2) {
     words_set_no_face ((yyvsp[(4) - (5)].words), Plain_fface);
     words_merge_rules_unique ((yyvsp[(1) - (5)].sheet)->keywords, (yyvsp[(4) - (5)].words));
   } else
     words_free ((yyvsp[(4) - (5)].words));
   (sshval.sheet) = (yyvsp[(1) - (5)].sheet);
 }
    break;

  case 6:
# 158 "parsessh.y"
 {
   words_set_no_face ((yyvsp[(3) - (4)].words), Plain_fface);
   words_merge_rules_unique ((yyvsp[(1) - (4)].sheet)->keywords, (yyvsp[(3) - (4)].words));
   (sshval.sheet) = (yyvsp[(1) - (4)].sheet);
 }
    break;

  case 7:
# 164 "parsessh.y"
 {
   if (highlight_level == 2) {
     words_set_no_face ((yyvsp[(4) - (5)].words), Plain_fface);
     words_merge_rules_unique ((yyvsp[(1) - (5)].sheet)->operators, (yyvsp[(4) - (5)].words));
   } else
     words_free ((yyvsp[(4) - (5)].words));
   (sshval.sheet) = (yyvsp[(1) - (5)].sheet);
 }
    break;

  case 8:
# 173 "parsessh.y"
 {
   words_set_no_face ((yyvsp[(3) - (4)].words), Plain_fface);
   words_merge_rules_unique ((yyvsp[(1) - (4)].sheet)->operators, (yyvsp[(3) - (4)].words));
   (sshval.sheet) = (yyvsp[(1) - (4)].sheet);
 }
    break;

  case 9:
# 178 "parsessh.y"
 {
   if (highlight_level == 2) {
     da_concat ((yyvsp[(1) - (3)].sheet)->sequences, (yyvsp[(3) - (3)].array));
     da_erase ((yyvsp[(3) - (3)].array));
   } else
     da_free ((yyvsp[(3) - (3)].array), (da_map_func_t) free_sequence);
   (sshval.sheet) = (yyvsp[(1) - (3)].sheet);
 }
    break;

  case 10:
# 186 "parsessh.y"
 {
   da_concat ((yyvsp[(1) - (2)].sheet)->sequences, (yyvsp[(2) - (2)].array));
   da_erase ((yyvsp[(2) - (2)].array));
   (sshval.sheet) = (yyvsp[(1) - (2)].sheet);
 }
    break;

  case 11:
# 191 "parsessh.y"
 {
   da_concat ((yyvsp[(1) - (2)].sheet)->ancestors, (yyvsp[(2) - (2)].array));
   da_erase ((yyvsp[(2) - (2)].array));
   (sshval.sheet) = (yyvsp[(1) - (2)].sheet);
 }
    break;

  case 12:
# 196 "parsessh.y"
 {
   string_to_array ((yyvsp[(1) - (4)].sheet)->alpha1, (yyvsp[(4) - (4)].string));
   string_to_array ((yyvsp[(1) - (4)].sheet)->alpha2, (yyvsp[(4) - (4)].string));

   free ((yyvsp[(4) - (4)].string));
   (yyvsp[(4) - (4)].string) = ((void*)0);
   (sshval.sheet) = (yyvsp[(1) - (4)].sheet);
 }
    break;

  case 13:
# 204 "parsessh.y"
 {
   string_to_array ((yyvsp[(1) - (5)].sheet)->alpha1, (yyvsp[(5) - (5)].string));

   free ((yyvsp[(5) - (5)].string));
   (yyvsp[(5) - (5)].string) = ((void*)0);
   (sshval.sheet) = (yyvsp[(1) - (5)].sheet);
 }
    break;

  case 14:
# 211 "parsessh.y"
 {
   string_to_array ((yyvsp[(1) - (5)].sheet)->alpha2, (yyvsp[(5) - (5)].string));

   free ((yyvsp[(5) - (5)].string));
   (yyvsp[(5) - (5)].string) = ((void*)0);
   (sshval.sheet) = (yyvsp[(1) - (5)].sheet);
 }
    break;

  case 15:
# 218 "parsessh.y"
 {
   (yyvsp[(1) - (2)].sheet)->sensitiveness = (yyvsp[(2) - (2)].sensitiveness);
 }
    break;

  case 16:
# 221 "parsessh.y"
 {
   (yyvsp[(1) - (2)].sheet)->documentation = (yyvsp[(2) - (2)].string);
 }
    break;

  case 17:
# 224 "parsessh.y"
 {
   (yyvsp[(1) - (2)].sheet)->author = (yyvsp[(2) - (2)].string);
 }
    break;

  case 18:
# 227 "parsessh.y"
 {
   style_sheet_set_version ((yyvsp[(1) - (2)].sheet), (const char *) (yyvsp[(2) - (2)].string));
 }
    break;

  case 19:
# 230 "parsessh.y"
 {



   if (!style_sheet_set_requirement ((yyvsp[(1) - (2)].sheet), (const char *) (yyvsp[(2) - (2)].string)))
     error (1, 0,
     gettext ("cannot process `%s' which requires a2ps version %s"),
     sshfilename, (yyvsp[(2) - (2)].string));
 }
    break;

  case 20:
# 245 "parsessh.y"
 { (sshval.string) = (yyvsp[(3) - (3)].string) ; }
    break;

  case 21:
# 246 "parsessh.y"
 { (sshval.string) = (yyvsp[(4) - (4)].string) ; }
    break;

  case 22:
# 249 "parsessh.y"
 { (sshval.string) = (yyvsp[(3) - (5)].string) ; }
    break;

  case 23:
# 251 "parsessh.y"
 { (sshval.string) = (yyvsp[(1) - (1)].string); }
    break;

  case 24:
# 253 "parsessh.y"
 {
   size_t len1;
   size_t len2;

   len1 = (strlen((const char *)((yyvsp[(1) - (2)].string))));
   (yyvsp[(1) - (2)].string)[len1] = '\n';
   len2 = (strlen((const char *)((yyvsp[(2) - (2)].string))));
   (sshval.string) = ((unsigned char *) xmalloc (sizeof (unsigned char) * (len1 + len2 + 2)));
   (stpcpy((char *)((stpncpy((char *)((sshval.string)), (const char *)((yyvsp[(1) - (2)].string)), (len1 + 1)))), (const char *)((yyvsp[(2) - (2)].string))));
   free ((yyvsp[(1) - (2)].string));
   free ((yyvsp[(2) - (2)].string));
 }
    break;

  case 25:
# 267 "parsessh.y"
 { (sshval.string) = (yyvsp[(3) - (3)].string) ; }
    break;

  case 26:
# 270 "parsessh.y"
 { (sshval.string) = (yyvsp[(3) - (3)].string) ; }
    break;

  case 27:
# 271 "parsessh.y"
 { (sshval.string) = (yyvsp[(2) - (2)].string) ; }
    break;

  case 28:
# 277 "parsessh.y"
 {

     (sshval.array) = (yyvsp[(3) - (5)].array);
 }
    break;

  case 29:
# 284 "parsessh.y"
 {

   (sshval.array) = da_new ("Ancestors tmp", 2,
         da_linear, 2,
         (da_print_func_t) da_str_print, ((void*)0));
   da_append ((sshval.array), (yyvsp[(1) - (1)].string));
 }
    break;

  case 30:
# 292 "parsessh.y"
 {
   da_append ((yyvsp[(1) - (3)].array), (yyvsp[(3) - (3)].string));
   (sshval.array) = (yyvsp[(1) - (3)].array);
 }
    break;

  case 31:
# 298 "parsessh.y"
 { (sshval.sensitiveness) = (yyvsp[(2) - (2)].sensitiveness) ; }
    break;

  case 32:
# 307 "parsessh.y"
 {
   (sshval.pattern) = (yyvsp[(1) - (1)].pattern);
 }
    break;

  case 33:
# 311 "parsessh.y"
 {

   (sshval.pattern) = (yyvsp[(1) - (2)].pattern);
   (sshval.pattern)->pattern = ((char *) xrealloc ((void *) ((sshval.pattern)->pattern), sizeof (char) * ((yyvsp[(1) - (2)].pattern)->len + (yyvsp[(2) - (2)].pattern)->len + 1)));
   strncpy ((sshval.pattern)->pattern + (sshval.pattern)->len, (yyvsp[(2) - (2)].pattern)->pattern, (yyvsp[(2) - (2)].pattern)->len);
   (sshval.pattern)->len += (yyvsp[(2) - (2)].pattern)->len;
   free ((yyvsp[(2) - (2)].pattern)->pattern);
 }
    break;

  case 34:
# 323 "parsessh.y"
 {
   (sshval.array) = rhs_new ();
   rhs_add ((sshval.array), (yyvsp[(1) - (1)].faced_string));
 }
    break;

  case 35:
# 331 "parsessh.y"
 {
   (sshval.faced_string) = faced_string_new ((yyvsp[(1) - (2)].string), 0, (yyvsp[(2) - (2)].fface));
 }
    break;

  case 36:
# 335 "parsessh.y"
 {
   (sshval.faced_string) = faced_string_new ((yyvsp[(1) - (1)].string), 0, No_fface);
 }
    break;

  case 37:
# 339 "parsessh.y"
 {
   (sshval.faced_string) = faced_string_new (((void*)0), 0, (yyvsp[(1) - (1)].fface));
 }
    break;

  case 38:
# 343 "parsessh.y"
 {
   (sshval.faced_string) = faced_string_new ((unsigned char *) ((void*)0), (yyvsp[(1) - (2)].integer), (yyvsp[(2) - (2)].fface));
 }
    break;

  case 39:
# 347 "parsessh.y"
 {
   (sshval.faced_string) = faced_string_new ((unsigned char *) ((void*)0), (yyvsp[(1) - (1)].integer), No_fface);
 }
    break;

  case 40:
# 351 "parsessh.y"
 {
   (sshval.faced_string) = faced_string_new ((yyvsp[(1) - (1)].string), 0, Symbol_fface);
 }
    break;

  case 41:
# 358 "parsessh.y"
 {
   (sshval.array) = rhs_new ();
   rhs_add ((sshval.array), (yyvsp[(1) - (1)].faced_string));
 }
    break;

  case 42:
# 364 "parsessh.y"
 {
   rhs_add ((yyvsp[(1) - (3)].array), (yyvsp[(3) - (3)].faced_string));
   (sshval.array) = (yyvsp[(1) - (3)].array);
 }
    break;

  case 43:
# 375 "parsessh.y"
 {
   (((sshval.fface)).face) = ((yyvsp[(1) - (1)].face));
   (((sshval.fface)).flags) = ff_No_fflag;
 }
    break;

  case 44:
# 380 "parsessh.y"
 {
   (((sshval.fface)).face) = (No_face);
   (((sshval.fface)).flags) = ((yyvsp[(1) - (1)].fflags));

   (((sshval.fface)).flags) = (((enum fflag_e) (((sshval.fface)).flags) | (ff_Invisible)));
 }
    break;

  case 45:
# 387 "parsessh.y"
 {
   (sshval.fface) = (yyvsp[(2) - (3)].fface);

   if ((((sshval.fface)).face) == No_face)
     (((sshval.fface)).flags) = (((enum fflag_e) (((sshval.fface)).flags) | (ff_Invisible)));
 }
    break;

  case 46:
# 397 "parsessh.y"
 {
   (((sshval.fface)).face) = ((yyvsp[(1) - (1)].face));
   (((sshval.fface)).flags) = ff_No_fflag;
 }
    break;

  case 47:
# 402 "parsessh.y"
 {
   (((sshval.fface)).face) = (No_face);
   (((sshval.fface)).flags) = ((yyvsp[(1) - (1)].fflags));
 }
    break;

  case 48:
# 407 "parsessh.y"
 {

   (sshval.fface) = (yyvsp[(1) - (3)].fface);
   (((sshval.fface)).face) = ((yyvsp[(3) - (3)].face));
 }
    break;

  case 49:
# 413 "parsessh.y"
 {
   (sshval.fface) = (yyvsp[(1) - (3)].fface);
   (((sshval.fface)).flags) = (((enum fflag_e) (((sshval.fface)).flags) | ((yyvsp[(3) - (3)].fflags))));
 }
    break;

  case 50:
# 427 "parsessh.y"
 {
   (sshval.rule) = rule_new ((yyvsp[(1) - (2)].string), ((void*)0), (yyvsp[(2) - (2)].array),
    sshfilename, sshlineno);
 }
    break;

  case 51:
# 432 "parsessh.y"
 {
   (sshval.rule) = rule_new ((yyvsp[(1) - (1)].string), ((void*)0),
    rhs_new_single ((unsigned char *) ((void*)0), 0, No_fface),
    sshfilename, sshlineno);
 }
    break;

  case 52:
# 438 "parsessh.y"
 {
   (sshval.rule) = rule_new ((yyvsp[(2) - (4)].string), ((void*)0), (yyvsp[(3) - (4)].array),
    sshfilename, sshlineno);
 }
    break;

  case 53:
# 449 "parsessh.y"
 {
   words_set_no_face ((yyvsp[(4) - (5)].words), (yyvsp[(2) - (5)].fface));
   (sshval.words) = (yyvsp[(4) - (5)].words);
 }
    break;

  case 54:
# 453 "parsessh.y"
 {

     (sshval.words) = (yyvsp[(2) - (3)].words);
 }
    break;

  case 55:
# 461 "parsessh.y"
 {
   (sshval.words) = words_new ("Keywords: Strings", "Keywords: Regexps", 100, 100);
   words_add_string ((sshval.words), (yyvsp[(1) - (1)].rule));
 }
    break;

  case 56:
# 466 "parsessh.y"
 {
   (sshval.words) = words_new ("Keywords: Strings", "Keywords: Regexps", 100, 100);
   words_add_regex ((sshval.words), (yyvsp[(1) - (1)].rule));
 }
    break;

  case 57:
# 471 "parsessh.y"
 {
   words_add_string ((yyvsp[(1) - (3)].words), (yyvsp[(3) - (3)].rule));
   (sshval.words) = (yyvsp[(1) - (3)].words);
 }
    break;

  case 58:
# 476 "parsessh.y"
 {
   words_add_regex ((yyvsp[(1) - (3)].words), (yyvsp[(3) - (3)].rule));
   (sshval.words) = (yyvsp[(1) - (3)].words);
 }
    break;

  case 59:
# 488 "parsessh.y"
 {
   (sshval.rule) = keyword_rule_new ((unsigned char *) ((void*)0), (yyvsp[(1) - (2)].pattern), (yyvsp[(2) - (2)].array),
     sshfilename, sshlineno);
 }
    break;

  case 60:
# 493 "parsessh.y"
 {
   (sshval.rule) = keyword_rule_new ((unsigned char *) ((void*)0), (yyvsp[(1) - (1)].pattern),
       rhs_new_single ((unsigned char *) ((void*)0), 0,
           No_fface),
     sshfilename, sshlineno);
 }
    break;

  case 61:
# 500 "parsessh.y"
 {
   (sshval.rule) = keyword_rule_new ((unsigned char *) ((void*)0), (yyvsp[(2) - (4)].pattern), (yyvsp[(3) - (4)].array),
     sshfilename, sshlineno);
 }
    break;

  case 62:
# 509 "parsessh.y"
 {
   words_set_no_face ((yyvsp[(4) - (5)].words), (yyvsp[(2) - (5)].fface));
   (sshval.words) = (yyvsp[(4) - (5)].words);
 }
    break;

  case 63:
# 513 "parsessh.y"
 {

     (sshval.words) = (yyvsp[(2) - (3)].words);
 }
    break;

  case 64:
# 521 "parsessh.y"
 {
   (sshval.words) = words_new ("Operators: Strings", "Operators: Regexps",
     100, 100);
   words_add_string ((sshval.words), (yyvsp[(1) - (1)].rule));
 }
    break;

  case 65:
# 527 "parsessh.y"
 {
   (sshval.words) = words_new ("Operators: Strings", "Operators: Regexps",
     100, 100);
   words_add_regex ((sshval.words), (yyvsp[(1) - (1)].rule));
 }
    break;

  case 66:
# 533 "parsessh.y"
 {
   words_add_string ((yyvsp[(1) - (3)].words), (yyvsp[(3) - (3)].rule));
   (sshval.words) = (yyvsp[(1) - (3)].words);
 }
    break;

  case 67:
# 538 "parsessh.y"
 {
   words_add_regex ((yyvsp[(1) - (3)].words), (yyvsp[(3) - (3)].rule));
   (sshval.words) = (yyvsp[(1) - (3)].words);
 }
    break;

  case 68:
# 550 "parsessh.y"
 {
   (sshval.rule) = rule_new ((unsigned char *) ((void*)0), (yyvsp[(1) - (2)].pattern), (yyvsp[(2) - (2)].array),
    sshfilename, sshlineno);
 }
    break;

  case 69:
# 555 "parsessh.y"
 {
   (sshval.rule) = rule_new ((unsigned char *) ((void*)0), (yyvsp[(1) - (1)].pattern),
      rhs_new_single ((unsigned char *) ((void*)0), 0, No_fface),
    sshfilename, sshlineno);
 }
    break;

  case 70:
# 561 "parsessh.y"
 {
   (sshval.rule) = rule_new ((unsigned char *) ((void*)0), (yyvsp[(2) - (4)].pattern), (yyvsp[(3) - (4)].array),
    sshfilename, sshlineno);
 }
    break;

  case 71:
# 570 "parsessh.y"
 { (sshval.array) = (yyvsp[(3) - (5)].array); }
    break;

  case 72:
# 573 "parsessh.y"
 {
   (sshval.array) = da_new ("Sequence tmp", 100,
         da_linear, 100,
         (da_print_func_t) sequence_self_print, ((void*)0));
   da_append ((sshval.array), (yyvsp[(1) - (1)].sequence));
 }
    break;

  case 73:
# 579 "parsessh.y"
 {
   da_append ((yyvsp[(1) - (3)].array), (yyvsp[(3) - (3)].sequence));
   (sshval.array) = (yyvsp[(1) - (3)].array);
 }
    break;

  case 74:
# 603 "parsessh.y"
 {
   struct rule * open_rule;
   open_rule = rule_new ((yyvsp[(1) - (5)].string), ((void*)0),
    rhs_new_single ((yyvsp[(2) - (5)].string), 0, Symbol_fface),
    sshfilename, sshlineno);
   (sshval.sequence) = sequence_new (open_rule, (yyvsp[(3) - (5)].fface), (yyvsp[(4) - (5)].words), (yyvsp[(5) - (5)].words));
 }
    break;

  case 75:
# 611 "parsessh.y"
 {
   struct rule * open_rule;
   open_rule = rule_new ((yyvsp[(1) - (6)].string), ((void*)0),
    rhs_new_single ((yyvsp[(2) - (6)].string), 0, (yyvsp[(3) - (6)].fface)),
    sshfilename, sshlineno);
   (sshval.sequence) = sequence_new (open_rule, (yyvsp[(4) - (6)].fface), (yyvsp[(5) - (6)].words), (yyvsp[(6) - (6)].words));
 }
    break;

  case 76:
# 619 "parsessh.y"
 {
   struct rule * open_rule;
   open_rule = rule_new ((yyvsp[(1) - (5)].string), ((void*)0),
    rhs_new_single ((unsigned char *) ((void*)0), 0, (yyvsp[(2) - (5)].fface)),
    sshfilename, sshlineno);
   (sshval.sequence) = sequence_new (open_rule, (yyvsp[(3) - (5)].fface), (yyvsp[(4) - (5)].words), (yyvsp[(5) - (5)].words));
 }
    break;

  case 77:
# 627 "parsessh.y"
 {
   struct rule * open_rule;
   open_rule = rule_new ((yyvsp[(1) - (5)].string), ((void*)0),
    rhs_new_single ((yyvsp[(2) - (5)].string), 0, (yyvsp[(3) - (5)].fface)),
    sshfilename, sshlineno);
   (sshval.sequence) = sequence_new (open_rule, (yyvsp[(3) - (5)].fface), (yyvsp[(4) - (5)].words), (yyvsp[(5) - (5)].words));
 }
    break;

  case 78:
# 635 "parsessh.y"
 {
   struct rule * open_rule;
   open_rule = rule_new ((yyvsp[(1) - (4)].string), ((void*)0),
    rhs_new_single ((unsigned char *) ((void*)0), 0, (yyvsp[(2) - (4)].fface)),
    sshfilename, sshlineno);
   (sshval.sequence) = sequence_new (open_rule, (yyvsp[(2) - (4)].fface), (yyvsp[(3) - (4)].words), (yyvsp[(4) - (4)].words));
 }
    break;

  case 79:
# 643 "parsessh.y"
 {
   struct rule * open_rule;
   open_rule = rule_new ((unsigned char *) ((void*)0), (yyvsp[(1) - (6)].pattern),
    rhs_new_single ((yyvsp[(2) - (6)].string), 0, (yyvsp[(3) - (6)].fface)),
    sshfilename, sshlineno);
   (sshval.sequence) = sequence_new (open_rule, (yyvsp[(4) - (6)].fface), (yyvsp[(5) - (6)].words), (yyvsp[(6) - (6)].words));
 }
    break;

  case 80:
# 651 "parsessh.y"
 {
   struct rule * open_rule;
   open_rule = rule_new ((unsigned char *) ((void*)0), (yyvsp[(1) - (5)].pattern),
    rhs_new_single ((unsigned char *) ((void*)0), 0, (yyvsp[(2) - (5)].fface)),
    sshfilename, sshlineno);
   (sshval.sequence) = sequence_new (open_rule, (yyvsp[(3) - (5)].fface), (yyvsp[(4) - (5)].words), (yyvsp[(5) - (5)].words));
 }
    break;

  case 81:
# 659 "parsessh.y"
 {
   struct rule * open_rule;
   open_rule = rule_new ((unsigned char *) ((void*)0), (yyvsp[(1) - (5)].pattern),
    rhs_new_single ((yyvsp[(2) - (5)].string), 0, (yyvsp[(3) - (5)].fface)),
    sshfilename, sshlineno);
   (sshval.sequence) = sequence_new (open_rule, (yyvsp[(3) - (5)].fface), (yyvsp[(4) - (5)].words), (yyvsp[(5) - (5)].words));
 }
    break;

  case 82:
# 667 "parsessh.y"
 {
   struct rule * open_rule;
   open_rule = rule_new ((unsigned char *) ((void*)0), (yyvsp[(1) - (4)].pattern),
    rhs_new_single ((unsigned char *) ((void*)0), 0, No_fface),
    sshfilename, sshlineno);
   (sshval.sequence) = sequence_new (open_rule, (yyvsp[(2) - (4)].fface), (yyvsp[(3) - (4)].words), (yyvsp[(4) - (4)].words));
 }
    break;

  case 83:
# 675 "parsessh.y"
 {
   struct rule * open_rule;
   open_rule = rule_new ((yyvsp[(2) - (7)].string), ((void*)0), (yyvsp[(3) - (7)].array),
    sshfilename, sshlineno);
   (sshval.sequence) = sequence_new (open_rule, (yyvsp[(5) - (7)].fface), (yyvsp[(6) - (7)].words), (yyvsp[(7) - (7)].words));
 }
    break;

  case 84:
# 682 "parsessh.y"
 {
   struct rule * open_rule;
   open_rule = rule_new ((unsigned char *) ((void*)0), (yyvsp[(2) - (7)].pattern), (yyvsp[(3) - (7)].array),
    sshfilename, sshlineno);
   (sshval.sequence) = sequence_new (open_rule, (yyvsp[(5) - (7)].fface), (yyvsp[(6) - (7)].words), (yyvsp[(7) - (7)].words));
 }
    break;

  case 85:
# 690 "parsessh.y"
 {
   (sshval.sequence) = new_C_string_sequence ("\"");
 }
    break;

  case 86:
# 694 "parsessh.y"
 {
   (sshval.sequence) = new_C_string_sequence ("\'");
 }
    break;

  case 87:
# 701 "parsessh.y"
 {

   (sshval.words) = words_new ("Closing: Strings", "Closing: Regexps", 2, 2);
   words_add_string ((sshval.words), rule_new (((unsigned char *) xstrdup((const char *)("\n"))), ((void*)0),
       rhs_new_single (((void*)0), 0,
         No_fface),
       sshfilename, sshlineno));
 }
    break;

  case 88:
# 710 "parsessh.y"
 {

   (sshval.words) = words_new ("Closing: Strings", "Closing: Regexps", 2, 2);
   words_add_string ((sshval.words), (yyvsp[(1) - (1)].rule));
 }
    break;

  case 89:
# 716 "parsessh.y"
 {

   (sshval.words) = words_new ("Closing: Strings", "Closing: Regexps", 2, 2);
   words_add_regex ((sshval.words), (yyvsp[(1) - (1)].rule));
 }
    break;

  case 90:
# 722 "parsessh.y"
 {

   (sshval.words) = (yyvsp[(2) - (3)].words);
 }
    break;

  case 91:
# 730 "parsessh.y"
 {
   (sshval.words) = words_new ("Exceptions: Strings", "Exceptions: Regexps", 1, 1);
 }
    break;

  case 92:
# 734 "parsessh.y"
 {
   (sshval.words) = (yyvsp[(2) - (3)].words);
 }
    break;
# 2423 "parsessh.c"
 default: break;
    }
  do { if (sshdebug) { fprintf (stderr, "%s ", "-> $$ ="); yy_symbol_print (stderr, sshr1[yyn], &sshval); fprintf (stderr, "\n"); } } while ((0));

  (yyvsp -= (sshyylen), yyssp -= (sshyylen));
  sshyylen = 0;
  do { if (sshdebug) yy_stack_print ((yyss), (yyssp)); } while ((0));

  *++yyvsp = sshval;






  yyn = sshr1[yyn];

  sshstate = yypgoto[yyn - 39] + *yyssp;
  if (0 <= sshstate && sshstate <= 218 && sshyycheck[sshstate] == *yyssp)
    sshstate = sshyytable[sshstate];
  else
    sshstate = yydefgoto[yyn - 39];

  goto yynewstate;





yyerrlab:

  if (!yyerrstatus)
    {
      ++sshnerrs;



      {
 long unsigned int yysize = yysyntax_error (0, sshstate, sshchar);
 if (yymsg_alloc < yysize && yymsg_alloc < ((long unsigned int) -1))
   {
     long unsigned int yyalloc = 2 * yysize;
     if (! (yysize <= yyalloc && yyalloc <= ((long unsigned int) -1)))
       yyalloc = ((long unsigned int) -1);
     if (yymsg != yymsgbuf)
       free (yymsg);
     yymsg = (char *) malloc (yyalloc);
     if (yymsg)
       yymsg_alloc = yyalloc;
     else
       {
  yymsg = yymsgbuf;
  yymsg_alloc = sizeof yymsgbuf;
       }
   }

 if (0 < yysize && yysize <= yymsg_alloc)
   {
     (void) yysyntax_error (yymsg, sshstate, sshchar);
     ssherror (yymsg);
   }
 else
   {
     ssherror ("syntax error");
     if (yysize != 0)
       goto yyexhaustedlab;
   }
      }

    }



  if (yyerrstatus == 3)
    {



      if (sshchar <= 0)
 {

   if (sshchar == 0)
     goto yyabortlab;
 }
      else
 {
   yydestruct ("Error: discarding",
        yytoken, &sshlval);
   sshchar = (-2);
 }
    }



  goto yyerrlab1;





yyerrorlab:




  if ( 0)
     goto yyerrorlab;



  (yyvsp -= (sshyylen), yyssp -= (sshyylen));
  sshyylen = 0;
  do { if (sshdebug) yy_stack_print ((yyss), (yyssp)); } while ((0));
  sshstate = *yyssp;
  goto yyerrlab1;





yyerrlab1:
  yyerrstatus = 3;

  for (;;)
    {
      yyn = sshpact[sshstate];
      if (yyn != -150)
 {
   yyn += 1;
   if (0 <= yyn && yyn <= 218 && sshyycheck[yyn] == 1)
     {
       yyn = sshyytable[yyn];
       if (0 < yyn)
  break;
     }
 }


      if (yyssp == yyss)
 goto yyabortlab;


      yydestruct ("Error: popping",
    yystos[sshstate], yyvsp);
      (yyvsp -= (1), yyssp -= (1));
      sshstate = *yyssp;
      do { if (sshdebug) yy_stack_print ((yyss), (yyssp)); } while ((0));
    }

  if (yyn == 5)
    goto yyacceptlab;

  *++yyvsp = sshlval;



  do { if (sshdebug) { fprintf (stderr, "%s ", "Shifting"); yy_symbol_print (stderr, yystos[yyn], yyvsp); fprintf (stderr, "\n"); } } while ((0));

  sshstate = yyn;
  goto yynewstate;





yyacceptlab:
  yyresult = 0;
  goto yyreturn;




yyabortlab:
  yyresult = 1;
  goto yyreturn;





yyexhaustedlab:
  ssherror ("memory exhausted");
  yyresult = 2;



yyreturn:
  if (sshchar != 0 && sshchar != (-2))
     yydestruct ("Cleanup: discarding lookahead",
   yytoken, &sshlval);


  (yyvsp -= (sshyylen), yyssp -= (sshyylen));
  do { if (sshdebug) yy_stack_print ((yyss), (yyssp)); } while ((0));
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
    yystos[*yyssp], yyvsp);
      (yyvsp -= (1), yyssp -= (1));
    }

  if (yyss != yyssa)
    free (yyss);


  if (yymsg != yymsgbuf)
    free (yymsg);


  return (yyresult);
}
# 738 "parsessh.y"


void
ssherror (const char *msg)
{
  error_at_line (1, 0, sshfilename, sshlineno, msg);
}




static void
yyprint (FILE *file, int type, YYSTYPE value)
{
  switch (type) {
  case 289:
    fprintf (file, " \\%d", value.integer);
    break;

  case 284:
    _IO_putc (' ', file);
    fflag_self_print (value.fflags, file);
    break;

  case 283:
    fprintf (file, " %s", face_to_string (value.face));
    break;

  case 287:
    fprintf (file, " /%s/", value.pattern->pattern);
    break;

  case 285:
    fprintf (file, " \"%s\"", value.string);
    break;
  }
}

struct style_sheet *
parse_style_sheet (const char * filename)
{
  int res;

  sshfilename = filename;
  sshlineno = 1;
  sshin = xrfopen (sshfilename);

  do { if ((((1 << 6) | (1 << 2) | (1 << 11)) & msg_verbosity)) fprintf (stderr, "Parsing file `%s'\n", sshfilename); } while (0);


  sshlex_initialize ();

  if ((((1 << 11)) & msg_verbosity))
    sshdebug = 1;
  res = sshparse ();

  if ((((1 << 2)) & msg_verbosity)) {
    fprintf (stderr, "---------- Right after parsing of %s\n",
      parsed_style_sheet->key);
    style_sheet_self_print (parsed_style_sheet, stderr);
    fprintf (stderr, "---------- End of after parsing of %s\n",
      parsed_style_sheet->key);
  }

  fclose (sshin);
  return parsed_style_sheet;
}
