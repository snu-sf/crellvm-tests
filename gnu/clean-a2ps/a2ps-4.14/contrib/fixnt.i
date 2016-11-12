# 1 "fixnt.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "fixnt.c" 2
# 3 "fixnt.c"
# 19 "fixnt.c"
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
# 20 "fixnt.c" 2
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
# 21 "fixnt.c" 2
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
# 22 "fixnt.c" 2
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
# 23 "fixnt.c" 2
# 42 "fixnt.c"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/inttypes.h" 1 3
# 26 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/inttypes.h" 3
# 1 "/usr/include/inttypes.h" 1 3 4
# 27 "/usr/include/inttypes.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdint.h" 1 3 4
# 63 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdint.h" 3 4
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
# 64 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdint.h" 2 3 4
# 28 "/usr/include/inttypes.h" 2 3 4






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
# 43 "fixnt.c" 2
typedef int8_t flex_int8_t;
typedef uint8_t flex_uint8_t;
typedef int16_t flex_int16_t;
typedef uint16_t flex_uint16_t;
typedef int32_t flex_int32_t;
typedef uint32_t flex_uint32_t;
# 151 "fixnt.c"
typedef struct yy_buffer_state *YY_BUFFER_STATE;


extern int yyleng;

extern FILE *yyin, *yyout;
# 187 "fixnt.c"
typedef unsigned int yy_size_t;




struct yy_buffer_state
 {
 FILE *yy_input_file;

 char *yy_ch_buf;
 char *yy_buf_pos;




 yy_size_t yy_buf_size;




 int yy_n_chars;





 int yy_is_our_buffer;






 int yy_is_interactive;





 int yy_at_bol;

    int yy_bs_lineno;
    int yy_bs_column;




 int yy_fill_buffer;

 int yy_buffer_status;
# 252 "fixnt.c"
 };



static size_t yy_buffer_stack_top = 0;
static size_t yy_buffer_stack_max = 0;
static YY_BUFFER_STATE * yy_buffer_stack = 0;
# 276 "fixnt.c"
static char yy_hold_char;
static int yy_n_chars;
int yyleng;


static char *yy_c_buf_p = (char *) 0;
static int yy_init = 0;
static int yy_start = 0;




static int yy_did_buffer_switch_on_eof;

void yyrestart (FILE *input_file );
void yy_switch_to_buffer (YY_BUFFER_STATE new_buffer );
YY_BUFFER_STATE yy_create_buffer (FILE *file,int size );
void yy_delete_buffer (YY_BUFFER_STATE b );
void yy_flush_buffer (YY_BUFFER_STATE b );
void yypush_buffer_state (YY_BUFFER_STATE new_buffer );
void yypop_buffer_state (void );

static void yyensure_buffer_stack (void );
static void yy_load_buffer_state (void );
static void yy_init_buffer (YY_BUFFER_STATE b,FILE *file );



YY_BUFFER_STATE yy_scan_buffer (char *base,yy_size_t size );
YY_BUFFER_STATE yy_scan_string (const char *yy_str );
YY_BUFFER_STATE yy_scan_bytes (const char *bytes,int len );

void *yyalloc (yy_size_t );
void *yyrealloc (void *,yy_size_t );
void yyfree (void * );
# 338 "fixnt.c"
typedef unsigned char YY_CHAR;

FILE *yyin = (FILE *) 0, *yyout = (FILE *) 0;

typedef int yy_state_type;

extern int yylineno;

int yylineno = 1;

extern char *yytext;


static yy_state_type yy_get_previous_state (void );
static yy_state_type yy_try_NUL_trans (yy_state_type current_state );
static int yy_get_next_buffer (void );
static void yy_fatal_error (const char msg[] );
# 370 "fixnt.c"
struct yy_trans_info
 {
 flex_int32_t yy_verify;
 flex_int32_t yy_nxt;
 };
static const flex_int16_t yy_accept[477] =
    { 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 26, 25, 25, 25, 2, 25, 25, 6,
       25, 25, 24, 25, 25, 25, 25, 25, 25, 25,
       25, 9, 25, 25, 16, 25, 0, 0, 2, 0,
        0, 6, 0, 0, 24, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 9, 0, 0, 16, 0,
        0, 1, 0, 1, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,

        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 23, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 5, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 13,

        0, 0, 6, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 12, 0, 0, 0,
        0, 0, 0, 0, 0, 10, 0, 0, 12, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 15, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 24, 0, 22, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 11, 0, 17,

        0, 0, 0, 0, 8, 0, 0, 0, 3, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 14, 0, 0, 0, 0, 0, 14,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 20, 0,
        0, 0, 0, 0, 0, 4, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 19, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,

        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 21,
        0, 0, 0, 0, 0, 7, 0, 0, 0, 0,
        0, 24, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 18, 0
    } ;

static const flex_int32_t yy_ec[256] =
    { 0,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 3, 4, 1, 1, 1, 5, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 6, 1, 7, 1,
        1, 1, 8, 1, 9, 1, 10, 11, 1, 1,
        1, 1, 1, 12, 13, 14, 15, 16, 17, 18,
       19, 1, 1, 1, 1, 1, 1, 20, 21, 22,
        1, 23, 24, 25, 1, 26, 27, 1, 1, 1,
        1, 1, 1, 1, 28, 1, 29, 30, 31, 32,

       33, 34, 35, 1, 36, 1, 1, 37, 38, 39,
       40, 41, 1, 42, 43, 44, 45, 46, 1, 47,
        1, 48, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,

        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1
    } ;

static const flex_int32_t yy_meta[49] =
    { 0,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1
    } ;

static const flex_int16_t yy_base[516] =
    { 0,
        0, 0, 809, 0, 1, 2, 6, 27, 8, 11,
       12, 13, 813, 815, 808, 809, 815, 18, 808, 815,
       29, 807, 815, 33, 35, 7, 14, 21, 23, 48,
      806, 815, 19, 805, 815, 54, 804, 803, 815, 802,
      801, 815, 49, 800, 815, 53, 40, 25, 34, 41,
       59, 60, 62, 66, 799, 815, 67, 798, 815, 71,
      797, 815, 796, 815, 73, 74, 75, 76, 81, 77,
       82, 78, 84, 85, 91, 87, 88, 89, 92, 93,
       94, 98, 102, 103, 104, 105, 106, 108, 114, 116,
      121, 125, 134, 117, 122, 126, 128, 132, 137, 141,

      795, 142, 143, 146, 151, 152, 149, 158, 153, 154,
      159, 167, 160, 161, 164, 162, 794, 815, 166, 174,
      179, 171, 180, 169, 186, 184, 190, 189, 197, 200,
      201, 793, 204, 206, 205, 207, 209, 202, 212, 217,
      214, 215, 216, 218, 219, 220, 221, 792, 815, 228,
      229, 232, 237, 233, 238, 240, 242, 244, 245, 246,
      249, 251, 255, 257, 258, 259, 262, 265, 260, 266,
      268, 281, 282, 269, 270, 284, 272, 280, 288, 291,
      292, 791, 293, 790, 301, 295, 294, 300, 302, 304,
      306, 310, 312, 315, 317, 319, 320, 321, 789, 815,

      323, 788, 769, 325, 322, 324, 326, 327, 334, 335,
      339, 344, 340, 342, 343, 345, 347, 351, 763, 366,
      785, 355, 368, 371, 373, 369, 375, 376, 784, 384,
      783, 381, 386, 762, 385, 781, 815, 389, 388, 392,
      393, 387, 397, 403, 780, 815, 391, 779, 815, 400,
      778, 755, 420, 404, 396, 406, 405, 407, 408, 409,
      776, 775, 410, 411, 774, 815, 754, 413, 430, 412,
      440, 444, 445, 447, 414, 772, 751, 770, 766, 449,
      450, 739, 453, 454, 452, 767, 766, 457, 738, 761,
      763, 460, 720, 462, 463, 467, 761, 815, 760, 815,

      464, 726, 735, 757, 815, 465, 748, 468, 815, 469,
      470, 471, 473, 724, 714, 474, 747, 479, 476, 483,
      484, 730, 724, 485, 749, 487, 490, 493, 491, 725,
      714, 494, 501, 503, 747, 505, 506, 745, 710, 744,
      712, 514, 742, 815, 515, 520, 701, 709, 739, 815,
      705, 526, 524, 531, 706, 696, 701, 530, 535, 533,
      693, 733, 695, 542, 545, 517, 689, 730, 815, 729,
      544, 548, 549, 690, 727, 815, 558, 562, 686, 534,
      546, 694, 553, 563, 724, 568, 565, 723, 719, 569,
      570, 718, 571, 573, 697, 574, 575, 679, 577, 581,

      691, 578, 579, 683, 582, 584, 681, 585, 589, 684,
      591, 586, 674, 592, 593, 713, 580, 595, 712, 815,
      596, 598, 711, 600, 710, 815, 601, 603, 609, 709,
      708, 691, 668, 668, 662, 681, 678, 700, 660, 668,
      657, 655, 658, 655, 663, 693, 692, 671, 663, 656,
      657, 665, 662, 684, 644, 652, 641, 639, 642, 639,
      647, 677, 676, 672, 671, 650, 632, 644, 636, 634,
      637, 627, 666, 665, 815, 815, 665, 664, 663, 662,
      661, 660, 659, 658, 657, 656, 655, 654, 653, 652,
      651, 650, 649, 648, 646, 645, 644, 643, 642, 641,

      640, 637, 636, 633, 631, 630, 629, 628, 627, 624,
      619, 617, 611, 603, 0
    } ;

static const flex_int16_t yy_def[516] =
    { 0,
      477, 477, 477, 478, 479, 479, 480, 480, 481, 481,
      482, 482, 476, 476, 476, 483, 476, 483, 484, 476,
      484, 485, 476, 485, 485, 485, 485, 485, 485, 485,
      486, 476, 486, 487, 476, 487, 488, 483, 476, 489,
      484, 476, 484, 485, 476, 485, 485, 485, 485, 485,
      485, 485, 485, 485, 486, 476, 486, 487, 476, 487,
      488, 476, 489, 476, 484, 484, 484, 485, 485, 485,
      485, 485, 485, 485, 485, 485, 485, 486, 487, 487,
      484, 484, 484, 485, 485, 485, 485, 485, 485, 485,
      485, 485, 485, 486, 487, 487, 484, 484, 484, 485,

      490, 485, 485, 485, 485, 485, 485, 485, 485, 486,
      487, 487, 484, 484, 484, 485, 490, 476, 485, 485,
      485, 485, 485, 485, 485, 485, 486, 487, 487, 487,
      484, 491, 484, 485, 485, 485, 485, 485, 485, 485,
      485, 485, 486, 487, 487, 487, 484, 491, 476, 492,
      485, 485, 485, 485, 485, 485, 485, 485, 485, 485,
      486, 487, 487, 487, 487, 484, 492, 492, 485, 485,
      485, 485, 485, 485, 485, 485, 485, 485, 486, 487,
      487, 493, 487, 494, 492, 485, 485, 485, 485, 485,
      485, 485, 485, 485, 485, 486, 487, 487, 493, 476,

      487, 494, 476, 492, 485, 485, 485, 485, 485, 485,
      485, 485, 485, 485, 486, 487, 487, 487, 476, 492,
      495, 485, 485, 485, 485, 485, 485, 485, 496, 486,
      497, 487, 487, 476, 492, 495, 476, 485, 485, 485,
      485, 485, 485, 485, 496, 476, 486, 497, 476, 487,
      498, 476, 492, 485, 485, 485, 485, 485, 485, 485,
      499, 500, 486, 487, 498, 476, 476, 492, 485, 485,
      485, 485, 485, 485, 485, 499, 476, 500, 476, 486,
      487, 476, 492, 485, 485, 501, 502, 485, 476, 476,
      503, 487, 476, 504, 485, 485, 501, 476, 502, 476,

      485, 476, 476, 503, 476, 487, 476, 504, 476, 504,
      485, 485, 485, 476, 476, 487, 476, 504, 485, 485,
      485, 476, 476, 487, 476, 504, 485, 485, 485, 476,
      476, 487, 476, 504, 505, 485, 485, 476, 476, 506,
      476, 504, 505, 476, 485, 485, 476, 476, 506, 476,
      476, 504, 485, 485, 476, 476, 476, 504, 485, 485,
      476, 507, 476, 504, 485, 485, 476, 507, 476, 508,
      504, 485, 485, 476, 508, 476, 485, 485, 476, 485,
      485, 476, 485, 485, 509, 485, 485, 509, 476, 485,
      485, 476, 485, 485, 476, 485, 485, 476, 485, 485,

      476, 485, 485, 476, 485, 485, 476, 485, 485, 476,
      485, 485, 476, 485, 485, 510, 485, 485, 510, 476,
      485, 485, 511, 485, 511, 476, 485, 485, 485, 512,
      512, 476, 476, 476, 476, 476, 476, 476, 476, 476,
      476, 476, 476, 476, 476, 513, 513, 476, 476, 476,
      476, 476, 476, 476, 476, 476, 476, 476, 476, 476,
      476, 514, 514, 476, 476, 476, 476, 476, 476, 476,
      476, 476, 515, 515, 476, 0, 476, 476, 476, 476,
      476, 476, 476, 476, 476, 476, 476, 476, 476, 476,
      476, 476, 476, 476, 476, 476, 476, 476, 476, 476,

      476, 476, 476, 476, 476, 476, 476, 476, 476, 476,
      476, 476, 476, 476, 476
    } ;

static const flex_int16_t yy_nxt[864] =
    { 0,
      474, 17, 20, 20, 18, 21, 21, 23, 45, 32,
       24, 25, 32, 35, 35, 45, 36, 36, 26, 39,
       56, 40, 45, 27, 45, 28, 45, 29, 23, 30,
       42, 24, 25, 43, 45, 45, 45, 46, 50, 26,
       33, 45, 45, 33, 27, 52, 28, 47, 29, 45,
       42, 53, 48, 51, 45, 59, 49, 57, 60, 54,
       45, 45, 72, 45, 71, 65, 68, 45, 56, 69,
       66, 70, 59, 67, 42, 42, 42, 45, 45, 45,
       73, 75, 45, 45, 79, 45, 45, 80, 45, 45,
       56, 94, 45, 59, 59, 42, 76, 74, 78, 42,

       77, 85, 82, 42, 45, 45, 45, 45, 84, 45,
       83, 81, 88, 89, 91, 45, 86, 45, 56, 92,
       87, 101, 45, 59, 95, 97, 45, 59, 90, 42,
       93, 96, 98, 42, 102, 45, 109, 100, 42, 106,
      104, 107, 45, 45, 45, 99, 105, 45, 108, 103,
       45, 113, 45, 45, 45, 56, 111, 112, 110, 45,
       59, 42, 42, 45, 114, 42, 120, 45, 59, 121,
       45, 132, 45, 115, 119, 45, 116, 123, 122, 124,
       45, 45, 139, 125, 129, 45, 127, 45, 141, 130,
       59, 56, 131, 135, 128, 126, 133, 138, 59, 136,

      134, 59, 42, 45, 137, 42, 45, 45, 45, 154,
       45, 155, 140, 45, 150, 45, 45, 56, 45, 59,
       59, 59, 42, 151, 142, 143, 158, 144, 152, 42,
       45, 153, 146, 45, 45, 162, 145, 156, 45, 45,
      163, 45, 168, 45, 147, 45, 45, 45, 178, 160,
       56, 176, 59, 157, 161, 159, 59, 164, 59, 59,
       42, 45, 165, 42, 170, 166, 42, 45, 169, 45,
       45, 45, 171, 45, 175, 172, 168, 177, 174, 168,
      173, 45, 45, 45, 179, 45, 193, 181, 191, 56,
      180, 195, 59, 59, 59, 45, 45, 183, 186, 184,

      182, 45, 42, 45, 185, 45, 188, 45, 187, 189,
      190, 45, 192, 45, 194, 168, 45, 212, 45, 207,
       56, 59, 59, 45, 59, 45, 42, 45, 45, 197,
      210, 196, 221, 206, 198, 45, 45, 201, 205, 168,
       45, 45, 204, 45, 56, 45, 59, 208, 59, 209,
      223, 214, 59, 211, 215, 231, 45, 220, 213, 224,
      217, 48, 226, 216, 218, 49, 225, 42, 222, 45,
       45, 230, 45, 240, 45, 241, 45, 45, 227, 228,
      168, 233, 59, 229, 242, 56, 42, 59, 45, 45,
       45, 232, 56, 45, 45, 239, 238, 45, 45, 168,

      253, 59, 235, 255, 45, 45, 45, 45, 45, 45,
       45, 56, 59, 45, 42, 45, 243, 244, 251, 254,
      247, 42, 250, 256, 258, 283, 263, 168, 260, 261,
      264, 45, 257, 259, 168, 262, 269, 270, 271, 273,
      284, 45, 268, 281, 275, 45, 45, 285, 45, 272,
       56, 59, 274, 45, 42, 45, 295, 280, 45, 288,
      292, 59, 306, 309, 45, 45, 59, 168, 45, 309,
      309, 45, 45, 286, 45, 59, 310, 45, 287, 294,
      309, 291, 310, 310, 45, 45, 59, 286, 309, 301,
      287, 45, 45, 310, 45, 59, 311, 296, 316, 312,

      321, 310, 329, 333, 309, 313, 45, 45, 318, 319,
      328, 336, 320, 324, 327, 309, 45, 310, 45, 334,
      326, 45, 354, 332, 337, 45, 359, 309, 310, 352,
      341, 309, 45, 335, 45, 45, 45, 340, 345, 342,
      310, 365, 364, 309, 310, 309, 45, 45, 358, 45,
       45, 378, 346, 372, 45, 377, 310, 373, 310, 45,
      380, 353, 360, 45, 45, 383, 45, 381, 371, 45,
       45, 45, 45, 396, 45, 45, 45, 366, 45, 45,
       45, 45, 45, 45, 408, 45, 45, 45, 386, 384,
       45, 412, 45, 45, 45, 387, 45, 45, 390, 45,

      424, 45, 45, 463, 45, 399, 391, 394, 397, 403,
       45, 447, 393, 400, 411, 421, 409, 431, 405, 425,
      415, 402, 406, 414, 419, 418, 417, 388, 375, 368,
      349, 343, 427, 308, 423, 429, 304, 299, 422, 430,
      297, 278, 276, 265, 248, 245, 236, 428, 202, 199,
      167, 148, 117, 63, 61, 58, 55, 44, 41, 38,
       34, 31, 22, 19, 16, 14, 475, 475, 473, 472,
      471, 470, 469, 468, 467, 466, 465, 464, 464, 462,
      461, 460, 459, 458, 457, 456, 455, 454, 453, 452,
      451, 450, 449, 448, 448, 446, 445, 444, 443, 442,

      441, 440, 439, 438, 437, 436, 435, 434, 433, 432,
      432, 426, 426, 420, 420, 416, 413, 410, 407, 404,
      401, 398, 395, 392, 389, 389, 385, 382, 376, 379,
      376, 369, 374, 370, 369, 367, 363, 362, 361, 357,
      350, 356, 355, 344, 351, 350, 348, 347, 344, 339,
      338, 333, 331, 330, 325, 323, 322, 317, 305, 315,
      314, 300, 298, 307, 305, 303, 302, 300, 298, 293,
      290, 279, 289, 277, 282, 266, 279, 277, 267, 266,
      249, 246, 237, 252, 249, 246, 237, 234, 219, 203,
      200, 203, 200, 149, 149, 118, 118, 64, 62, 59,

       56, 45, 42, 64, 39, 62, 59, 56, 45, 42,
       39, 37, 476, 15, 13, 476, 476, 476, 476, 476,
      476, 476, 476, 476, 476, 476, 476, 476, 476, 476,
      476, 476, 476, 476, 476, 476, 476, 476, 476, 476,
      476, 476, 476, 476, 476, 476, 476, 476, 476, 476,
      476, 476, 476, 476, 476, 476, 476, 476, 476, 476,
      476, 476, 476
    } ;

static const flex_int16_t yy_chk[864] =
    { 0,
      515, 4, 5, 6, 4, 5, 6, 7, 26, 9,
        7, 7, 10, 11, 12, 27, 11, 12, 7, 18,
       33, 18, 28, 7, 29, 7, 48, 7, 8, 8,
       21, 8, 8, 21, 24, 49, 25, 24, 26, 8,
        9, 47, 50, 10, 8, 28, 8, 25, 8, 30,
       43, 29, 25, 27, 46, 36, 25, 33, 36, 30,
       51, 52, 49, 53, 48, 43, 46, 54, 57, 46,
       43, 47, 60, 43, 65, 66, 67, 68, 70, 72,
       50, 52, 69, 71, 60, 73, 74, 60, 76, 77,
       78, 78, 75, 79, 80, 81, 53, 51, 57, 82,

       54, 69, 66, 83, 84, 85, 86, 87, 68, 88,
       67, 65, 72, 73, 75, 89, 70, 90, 94, 76,
       71, 85, 91, 95, 79, 81, 92, 96, 74, 97,
       77, 80, 82, 98, 86, 93, 93, 84, 99, 90,
       88, 91, 100, 102, 103, 83, 89, 104, 92, 87,
      107, 97, 105, 106, 109, 110, 95, 96, 94, 108,
      111, 113, 114, 116, 98, 115, 103, 119, 112, 104,
      124, 114, 122, 99, 102, 120, 100, 106, 105, 107,
      121, 123, 123, 108, 112, 126, 110, 125, 125, 112,
      128, 127, 113, 119, 111, 109, 115, 122, 129, 120,

      116, 130, 131, 138, 121, 133, 135, 134, 136, 136,
      137, 137, 124, 139, 133, 141, 142, 143, 140, 144,
      145, 146, 147, 134, 126, 127, 140, 128, 134, 150,
      151, 135, 130, 152, 154, 144, 129, 138, 153, 155,
      144, 156, 150, 157, 131, 158, 159, 160, 160, 142,
      161, 158, 162, 139, 143, 141, 163, 145, 164, 165,
      166, 169, 146, 167, 152, 147, 168, 170, 151, 171,
      174, 175, 153, 177, 157, 154, 167, 159, 156, 168,
      155, 178, 172, 173, 161, 176, 176, 163, 174, 179,
      162, 178, 180, 181, 183, 187, 186, 165, 169, 166,

      164, 188, 185, 189, 168, 190, 171, 191, 170, 172,
      173, 192, 175, 193, 177, 185, 194, 193, 195, 188,
      196, 197, 198, 205, 201, 206, 204, 207, 208, 180,
      191, 179, 205, 187, 181, 209, 210, 183, 186, 204,
      211, 213, 185, 214, 215, 212, 216, 189, 217, 190,
      207, 195, 218, 192, 196, 216, 222, 204, 194, 208,
      198, 212, 210, 197, 201, 212, 209, 220, 206, 223,
      226, 215, 224, 224, 225, 225, 227, 228, 211, 213,
      220, 218, 232, 214, 226, 230, 235, 233, 242, 239,
      238, 217, 247, 240, 241, 223, 222, 255, 243, 235,

      235, 250, 220, 239, 244, 254, 257, 256, 258, 259,
      260, 263, 264, 270, 268, 275, 227, 228, 233, 238,
      230, 253, 232, 240, 241, 268, 247, 268, 242, 243,
      250, 269, 240, 241, 253, 244, 254, 255, 256, 258,
      269, 271, 253, 264, 260, 272, 273, 270, 274, 257,
      280, 281, 259, 285, 283, 284, 284, 263, 288, 275,
      281, 292, 292, 294, 295, 301, 306, 283, 296, 308,
      310, 311, 312, 271, 313, 316, 294, 319, 273, 283,
      318, 280, 308, 310, 320, 321, 324, 272, 326, 288,
      274, 327, 329, 318, 328, 332, 295, 285, 306, 296,

      313, 326, 321, 333, 334, 301, 336, 337, 310, 311,
      320, 328, 312, 316, 319, 342, 345, 334, 366, 326,
      318, 346, 346, 324, 329, 353, 353, 352, 342, 342,
      333, 358, 354, 327, 360, 380, 359, 332, 336, 334,
      352, 359, 358, 364, 358, 371, 365, 381, 352, 372,
      373, 373, 337, 365, 383, 372, 364, 366, 371, 377,
      377, 345, 354, 378, 384, 380, 387, 378, 364, 386,
      390, 391, 393, 393, 394, 396, 397, 360, 399, 402,
      403, 417, 400, 405, 405, 406, 408, 412, 383, 381,
      409, 409, 411, 414, 415, 384, 418, 421, 386, 422,

      422, 424, 427, 514, 428, 396, 387, 391, 394, 400,
      429, 513, 390, 397, 408, 417, 406, 512, 402, 511,
      412, 399, 403, 411, 510, 415, 414, 509, 508, 507,
      506, 505, 424, 504, 421, 428, 503, 502, 418, 429,
      501, 500, 499, 498, 497, 496, 495, 427, 494, 493,
      492, 491, 490, 489, 488, 487, 486, 485, 484, 483,
      482, 481, 480, 479, 478, 477, 474, 473, 472, 471,
      470, 469, 468, 467, 466, 465, 464, 463, 462, 461,
      460, 459, 458, 457, 456, 455, 454, 453, 452, 451,
      450, 449, 448, 447, 446, 445, 444, 443, 442, 441,

      440, 439, 438, 437, 436, 435, 434, 433, 432, 431,
      430, 425, 423, 419, 416, 413, 410, 407, 404, 401,
      398, 395, 392, 389, 388, 385, 382, 379, 375, 374,
      370, 368, 367, 363, 362, 361, 357, 356, 355, 351,
      349, 348, 347, 343, 341, 340, 339, 338, 335, 331,
      330, 325, 323, 322, 317, 315, 314, 307, 304, 303,
      302, 299, 297, 293, 291, 290, 289, 287, 286, 282,
      279, 278, 277, 276, 267, 265, 262, 261, 252, 251,
      248, 245, 236, 234, 231, 229, 221, 219, 203, 202,
      199, 184, 182, 148, 132, 117, 101, 63, 61, 58,

       55, 44, 41, 40, 38, 37, 34, 31, 22, 19,
       16, 15, 13, 3, 476, 476, 476, 476, 476, 476,
      476, 476, 476, 476, 476, 476, 476, 476, 476, 476,
      476, 476, 476, 476, 476, 476, 476, 476, 476, 476,
      476, 476, 476, 476, 476, 476, 476, 476, 476, 476,
      476, 476, 476, 476, 476, 476, 476, 476, 476, 476,
      476, 476, 476
    } ;

static yy_state_type yy_last_accepting_state;
static char *yy_last_accepting_cpos;

extern int yy_flex_debug;
int yy_flex_debug = 0;
# 805 "fixnt.c"
char *yytext;
# 1 "fixnt.l"
# 3 "fixnt.l"
# 41 "fixnt.l"
# 1 "../config.h" 1
# 42 "fixnt.l" 2








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
# 274 "/usr/include/unistd.h" 3 4
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
# 51 "fixnt.l" 2
# 84 "fixnt.l"
void reassemble (FILE*,FILE*,FILE*,char*,char*,char*);
static int first_time = 1;
FILE *font;
FILE *adobe;
FILE *body;
int ifpagesv = 0;
int ifcorel = 0;
int ifendsetup = 0;
int pid;
char fontfname[255];
char adobefname[255];
char bodyfname[255];



const char *tmpdir;
# 908 "fixnt.c"
# 928 "fixnt.c"
static int yy_init_globals (void );
# 938 "fixnt.c"
extern int yywrap (void );



    static void yyunput (int c,char *buf_ptr );
# 957 "fixnt.c"
static int input (void );
# 1037 "fixnt.c"
extern int yylex (void);
# 1062 "fixnt.c"
int yylex (void)
{
 register yy_state_type yy_current_state;
 register char *yy_cp, *yy_bp;
 register int yy_act;
# 105 "fixnt.l"



  if(first_time){
    (yy_start) = 1 + 2 * 1;
    first_time = 0;
  }
# 1079 "fixnt.c"

 if ( !(yy_init) )
  {
  (yy_init) = 1;





  if ( ! (yy_start) )
   (yy_start) = 1;

  if ( ! yyin )
   yyin = stdin;

  if ( ! yyout )
   yyout = stdout;

  if ( ! ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) ) {
   yyensure_buffer_stack ();
   (yy_buffer_stack)[(yy_buffer_stack_top)] =
    yy_create_buffer(yyin,16384 );
  }

  yy_load_buffer_state( );
  }

 while ( 1 )
  {
  yy_cp = (yy_c_buf_p);


  *yy_cp = (yy_hold_char);




  yy_bp = yy_cp;

  yy_current_state = (yy_start);
  yy_current_state += ((yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol);
yy_match:
  do
   {
   register YY_CHAR yy_c = yy_ec[((unsigned int) (unsigned char) *yy_cp)];
   if ( yy_accept[yy_current_state] )
    {
    (yy_last_accepting_state) = yy_current_state;
    (yy_last_accepting_cpos) = yy_cp;
    }
   while ( yy_chk[yy_base[yy_current_state] + yy_c] != yy_current_state )
    {
    yy_current_state = (int) yy_def[yy_current_state];
    if ( yy_current_state >= 477 )
     yy_c = yy_meta[(unsigned int) yy_c];
    }
   yy_current_state = yy_nxt[yy_base[yy_current_state] + (unsigned int) yy_c];
   ++yy_cp;
   }
  while ( yy_base[yy_current_state] != 815 );

yy_find_action:
  yy_act = yy_accept[yy_current_state];
  if ( yy_act == 0 )
   {
   yy_cp = (yy_last_accepting_cpos);
   yy_current_state = (yy_last_accepting_state);
   yy_act = yy_accept[yy_current_state];
   }

  (yytext) = yy_bp; yyleng = (size_t) (yy_cp - yy_bp); (yy_hold_char) = *yy_cp; *yy_cp = '\0'; (yy_c_buf_p) = yy_cp;;

do_action:

  switch ( yy_act )
 {
   case 0:

   *yy_cp = (yy_hold_char);
   yy_cp = (yy_last_accepting_cpos);
   yy_current_state = (yy_last_accepting_state);
   goto yy_find_action;

case 1:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 114 "fixnt.l"
{
      (void) fwrite( yytext, yyleng, 1, yyout );
      (yy_start) = 1 + 2 * 2;
}
 break;
case 2:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 119 "fixnt.l"
{
}
 break;
case 3:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 122 "fixnt.l"
{
  ifcorel = 1;
  (void) fwrite( yytext, yyleng, 1, yyout );
}
 break;
case 4:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 127 "fixnt.l"
{
  fprintf(yyout,"NTPSOct95 begin\n");
  ifendsetup = 1;
}
 break;
case 5:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 132 "fixnt.l"
{
  sprintf(bodyfname, "%s/fixnt_Body_%d", tmpdir, pid);
  body = fopen(bodyfname,"w+");
  fprintf(body,"%s",yytext);
  (yy_start) = 1 + 2 * 3;
}
 break;
case 6:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 139 "fixnt.l"
{
                 fprintf(yyout,"%s",yytext);
}
 break;
case 7:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 143 "fixnt.l"
{
  sprintf(adobefname, "%s/fixnt_Adobe_%d", tmpdir, pid);
  adobe = fopen(adobefname,"w+");
  fprintf(adobe,"%s",yytext);
  (yy_start) = 1 + 2 * 4;
}
 break;
case 8:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 150 "fixnt.l"
{
  fprintf(adobe,"%s",yytext);
  (yy_start) = 1 + 2 * 3;
}
 break;
case 9:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 155 "fixnt.l"
{
  fprintf(adobe,"%s",yytext);
}
 break;
case 10:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 160 "fixnt.l"
{ ;

  if( ifcorel == 1 ){
    fprintf(body," @gs @gr\n");
  } else {
    fprintf(body,"%s",yytext);
  }
}
 break;
case 11:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 169 "fixnt.l"
{ ;

  sprintf(fontfname, "%s/fixnt_Font_%d", tmpdir, pid);
  font = fopen(fontfname,"w+");
  fprintf(font,"%s",yytext);
  (yy_start) = 1 + 2 * 5;
}
 break;
case 12:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 177 "fixnt.l"
{
  fprintf(font,"%s",yytext);
  (yy_start) = 1 + 2 * 5;
}
 break;
case 13:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 182 "fixnt.l"
{
  fprintf(font,"%s",yytext);
  (yy_start) = 1 + 2 * 3;
}
 break;
case 14:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 187 "fixnt.l"
{ ;

 fprintf(font,"%s",yytext);
 (yy_start) = 1 + 2 * 5;
}
 break;
case 15:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 193 "fixnt.l"
{ ;

 fprintf(font,"%s",yytext);
 (yy_start) = 1 + 2 * 3;
}
 break;
case 16:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 199 "fixnt.l"
{
  fprintf(font,"%s",yytext);
}
 break;
case 17:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 203 "fixnt.l"
{ ;
  ifpagesv = 1;
}
 break;
case 18:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 207 "fixnt.l"
{
  fprintf(body,"%%%%Trailer\nAdobe_WinNT_Driver_Gfx dup /terminate get exec\nPageSV restore\nFontSV restore\n");
}
 break;
case 19:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 211 "fixnt.l"
{ ;

  fprintf(body,"PageSV restore\nFontSV restore\n");
}
 break;
case 20:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 216 "fixnt.l"
{ ;

  fprintf(body,"%%%%Trailer\nPageSV restore\n");
}
 break;
case 21:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 222 "fixnt.l"
{ ;

  fprintf(body,"%%%%Trailer\nPageSV restore\nFontSV restore\n");
}
 break;
case 22:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 228 "fixnt.l"
{ ;

}
 break;
case 23:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 233 "fixnt.l"
{ ;


 fprintf(body,"%s",yytext);
 return 0;
}
 break;
case (26 + 3 + 1):
# 240 "fixnt.l"
{ ;






 return 0;
}
 break;
case 24:

if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 250 "fixnt.l"
{
  fprintf(body,"%s",yytext);
}
 break;
case 25:
if ( yyleng > 0 ) (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (yytext[yyleng - 1] == '\n');
# 254 "fixnt.l"
(void) fwrite( yytext, yyleng, 1, yyout );
 break;
# 1402 "fixnt.c"
case (26 + 0 + 1):
case (26 + 1 + 1):
case (26 + 2 + 1):
case (26 + 4 + 1):
case (26 + 5 + 1):
 return 0;

 case 26:
  {

  int yy_amount_of_matched_text = (int) (yy_cp - (yytext)) - 1;


  *yy_cp = (yy_hold_char);


  if ( (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buffer_status == 0 )
   {
# 1429 "fixnt.c"
   (yy_n_chars) = (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_n_chars;
   (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_input_file = yyin;
   (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buffer_status = 1;
   }
# 1441 "fixnt.c"
  if ( (yy_c_buf_p) <= &(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[(yy_n_chars)] )
   {
   yy_state_type yy_next_state;

   (yy_c_buf_p) = (yytext) + yy_amount_of_matched_text;

   yy_current_state = yy_get_previous_state( );
# 1458 "fixnt.c"
   yy_next_state = yy_try_NUL_trans( yy_current_state );

   yy_bp = (yytext) + 0;

   if ( yy_next_state )
    {

    yy_cp = ++(yy_c_buf_p);
    yy_current_state = yy_next_state;
    goto yy_match;
    }

   else
    {
    yy_cp = (yy_c_buf_p);
    goto yy_find_action;
    }
   }

  else switch ( yy_get_next_buffer( ) )
   {
   case 1:
    {
    (yy_did_buffer_switch_on_eof) = 0;

    if ( yywrap( ) )
     {
# 1494 "fixnt.c"
     (yy_c_buf_p) = (yytext) + 0;

     yy_act = (26 + (((yy_start) - 1) / 2) + 1);
     goto do_action;
     }

    else
     {
     if ( ! (yy_did_buffer_switch_on_eof) )
      yyrestart(yyin );
     }
    break;
    }

   case 0:
    (yy_c_buf_p) =
     (yytext) + yy_amount_of_matched_text;

    yy_current_state = yy_get_previous_state( );

    yy_cp = (yy_c_buf_p);
    yy_bp = (yytext) + 0;
    goto yy_match;

   case 2:
    (yy_c_buf_p) =
    &(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[(yy_n_chars)];

    yy_current_state = yy_get_previous_state( );

    yy_cp = (yy_c_buf_p);
    yy_bp = (yytext) + 0;
    goto yy_find_action;
   }
  break;
  }

 default:
  yy_fatal_error( "fatal flex scanner internal error--no action found" );

 }
  }
}
# 1545 "fixnt.c"
static int yy_get_next_buffer (void)
{
     register char *dest = (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf;
 register char *source = (yytext);
 register int number_to_move, i;
 int ret_val;

 if ( (yy_c_buf_p) > &(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[(yy_n_chars) + 1] )
  yy_fatal_error( "fatal flex scanner internal error--end of buffer missed" );


 if ( (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_fill_buffer == 0 )
  {
  if ( (yy_c_buf_p) - (yytext) - 0 == 1 )
   {



   return 1;
   }

  else
   {



   return 2;
   }
  }




 number_to_move = (int) ((yy_c_buf_p) - (yytext)) - 1;

 for ( i = 0; i < number_to_move; ++i )
  *(dest++) = *(source++);

 if ( (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buffer_status == 2 )



  (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_n_chars = (yy_n_chars) = 0;

 else
  {
   int num_to_read =
   (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buf_size - number_to_move - 1;

  while ( num_to_read <= 0 )
   {


   YY_BUFFER_STATE b = ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0));

   int yy_c_buf_p_offset =
    (int) ((yy_c_buf_p) - b->yy_ch_buf);

   if ( b->yy_is_our_buffer )
    {
    int new_size = b->yy_buf_size * 2;

    if ( new_size <= 0 )
     b->yy_buf_size += b->yy_buf_size / 8;
    else
     b->yy_buf_size *= 2;

    b->yy_ch_buf = (char *)

     yyrealloc((void *) b->yy_ch_buf,b->yy_buf_size + 2 );
    }
   else

    b->yy_ch_buf = 0;

   if ( ! b->yy_ch_buf )
    yy_fatal_error( "fatal error - scanner input buffer overflow" );


   (yy_c_buf_p) = &b->yy_ch_buf[yy_c_buf_p_offset];

   num_to_read = (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buf_size -
      number_to_move - 1;

   }

  if ( num_to_read > 8192 )
   num_to_read = 8192;


  if ( (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_is_interactive ) { int c = '*'; size_t n; for ( n = 0; n < (size_t) num_to_read && (c = _IO_getc (yyin)) != (-1) && c != '\n'; ++n ) (&(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[number_to_move])[n] = (char) c; if ( c == '\n' ) (&(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[number_to_move])[n++] = (char) c; if ( c == (-1) && ferror( yyin ) ) yy_fatal_error( "input in flex scanner failed" ); (yy_n_chars) = n; } else { (*__errno_location ())=0; while ( ((yy_n_chars) = fread((&(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[number_to_move]), 1, (size_t) num_to_read, yyin))==0 && ferror(yyin)) { if( (*__errno_location ()) != 4) { yy_fatal_error( "input in flex scanner failed" ); break; } (*__errno_location ())=0; clearerr(yyin); } };


  (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_n_chars = (yy_n_chars);
  }

 if ( (yy_n_chars) == 0 )
  {
  if ( number_to_move == 0 )
   {
   ret_val = 1;
   yyrestart(yyin );
   }

  else
   {
   ret_val = 2;
   (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buffer_status =
    2;
   }
  }

 else
  ret_val = 0;

 (yy_n_chars) += number_to_move;
 (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[(yy_n_chars)] = 0;
 (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[(yy_n_chars) + 1] = 0;

 (yytext) = &(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[0];

 return ret_val;
}



    static yy_state_type yy_get_previous_state (void)
{
 register yy_state_type yy_current_state;
 register char *yy_cp;

 yy_current_state = (yy_start);
 yy_current_state += ((yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol);

 for ( yy_cp = (yytext) + 0; yy_cp < (yy_c_buf_p); ++yy_cp )
  {
  register YY_CHAR yy_c = (*yy_cp ? yy_ec[((unsigned int) (unsigned char) *yy_cp)] : 1);
  if ( yy_accept[yy_current_state] )
   {
   (yy_last_accepting_state) = yy_current_state;
   (yy_last_accepting_cpos) = yy_cp;
   }
  while ( yy_chk[yy_base[yy_current_state] + yy_c] != yy_current_state )
   {
   yy_current_state = (int) yy_def[yy_current_state];
   if ( yy_current_state >= 477 )
    yy_c = yy_meta[(unsigned int) yy_c];
   }
  yy_current_state = yy_nxt[yy_base[yy_current_state] + (unsigned int) yy_c];
  }

 return yy_current_state;
}






    static yy_state_type yy_try_NUL_trans (yy_state_type yy_current_state )
{
 register int yy_is_jam;
     register char *yy_cp = (yy_c_buf_p);

 register YY_CHAR yy_c = 1;
 if ( yy_accept[yy_current_state] )
  {
  (yy_last_accepting_state) = yy_current_state;
  (yy_last_accepting_cpos) = yy_cp;
  }
 while ( yy_chk[yy_base[yy_current_state] + yy_c] != yy_current_state )
  {
  yy_current_state = (int) yy_def[yy_current_state];
  if ( yy_current_state >= 477 )
   yy_c = yy_meta[(unsigned int) yy_c];
  }
 yy_current_state = yy_nxt[yy_base[yy_current_state] + (unsigned int) yy_c];
 yy_is_jam = (yy_current_state == 476);

 return yy_is_jam ? 0 : yy_current_state;
}

    static void yyunput (int c, register char * yy_bp )
{
 register char *yy_cp;

    yy_cp = (yy_c_buf_p);


 *yy_cp = (yy_hold_char);

 if ( yy_cp < (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf + 2 )
  {

  register int number_to_move = (yy_n_chars) + 2;
  register char *dest = &(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[
     (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buf_size + 2];
  register char *source =
    &(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[number_to_move];

  while ( source > (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf )
   *--dest = *--source;

  yy_cp += (int) (dest - source);
  yy_bp += (int) (dest - source);
  (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_n_chars =
   (yy_n_chars) = (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buf_size;

  if ( yy_cp < (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf + 2 )
   yy_fatal_error( "flex scanner push-back overflow" );
  }

 *--yy_cp = (char) c;

 (yytext) = yy_bp;
 (yy_hold_char) = *yy_cp;
 (yy_c_buf_p) = yy_cp;
}





    static int input (void)


{
 int c;

 *(yy_c_buf_p) = (yy_hold_char);

 if ( *(yy_c_buf_p) == 0 )
  {




  if ( (yy_c_buf_p) < &(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[(yy_n_chars)] )

   *(yy_c_buf_p) = '\0';

  else
   {
   int offset = (yy_c_buf_p) - (yytext);
   ++(yy_c_buf_p);

   switch ( yy_get_next_buffer( ) )
    {
    case 2:
# 1805 "fixnt.c"
     yyrestart(yyin );



    case 1:
     {
     if ( yywrap( ) )
      return (-1);

     if ( ! (yy_did_buffer_switch_on_eof) )
      yyrestart(yyin );



     return input();

     }

    case 0:
     (yy_c_buf_p) = (yytext) + offset;
     break;
    }
   }
  }

 c = *(unsigned char *) (yy_c_buf_p);
 *(yy_c_buf_p) = '\0';
 (yy_hold_char) = *++(yy_c_buf_p);

 (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_at_bol = (c == '\n');

 return c;
}







    void yyrestart (FILE * input_file )
{

 if ( ! ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) ){
        yyensure_buffer_stack ();
  (yy_buffer_stack)[(yy_buffer_stack_top)] =
            yy_create_buffer(yyin,16384 );
 }

 yy_init_buffer(( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)),input_file );
 yy_load_buffer_state( );
}





    void yy_switch_to_buffer (YY_BUFFER_STATE new_buffer )
{






 yyensure_buffer_stack ();
 if ( ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) == new_buffer )
  return;

 if ( ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) )
  {

  *(yy_c_buf_p) = (yy_hold_char);
  (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buf_pos = (yy_c_buf_p);
  (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_n_chars = (yy_n_chars);
  }

 (yy_buffer_stack)[(yy_buffer_stack_top)] = new_buffer;
 yy_load_buffer_state( );






 (yy_did_buffer_switch_on_eof) = 1;
}

static void yy_load_buffer_state (void)
{
     (yy_n_chars) = (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_n_chars;
 (yytext) = (yy_c_buf_p) = (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buf_pos;
 yyin = (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_input_file;
 (yy_hold_char) = *(yy_c_buf_p);
}







    YY_BUFFER_STATE yy_create_buffer (FILE * file, int size )
{
 YY_BUFFER_STATE b;

 b = (YY_BUFFER_STATE) yyalloc(sizeof( struct yy_buffer_state ) );
 if ( ! b )
  yy_fatal_error( "out of dynamic memory in yy_create_buffer()" );

 b->yy_buf_size = size;




 b->yy_ch_buf = (char *) yyalloc(b->yy_buf_size + 2 );
 if ( ! b->yy_ch_buf )
  yy_fatal_error( "out of dynamic memory in yy_create_buffer()" );

 b->yy_is_our_buffer = 1;

 yy_init_buffer(b,file );

 return b;
}





    void yy_delete_buffer (YY_BUFFER_STATE b )
{

 if ( ! b )
  return;

 if ( b == ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) )
  (yy_buffer_stack)[(yy_buffer_stack_top)] = (YY_BUFFER_STATE) 0;

 if ( b->yy_is_our_buffer )
  yyfree((void *) b->yy_ch_buf );

 yyfree((void *) b );
}


extern int isatty (int );






    static void yy_init_buffer (YY_BUFFER_STATE b, FILE * file )

{
 int oerrno = (*__errno_location ());

 yy_flush_buffer(b );

 b->yy_input_file = file;
 b->yy_fill_buffer = 1;





    if (b != ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0))){
        b->yy_bs_lineno = 1;
        b->yy_bs_column = 0;
    }

        b->yy_is_interactive = file ? (isatty( fileno(file) ) > 0) : 0;

 (*__errno_location ()) = oerrno;
}





    void yy_flush_buffer (YY_BUFFER_STATE b )
{
     if ( ! b )
  return;

 b->yy_n_chars = 0;





 b->yy_ch_buf[0] = 0;
 b->yy_ch_buf[1] = 0;

 b->yy_buf_pos = &b->yy_ch_buf[0];

 b->yy_at_bol = 1;
 b->yy_buffer_status = 0;

 if ( b == ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) )
  yy_load_buffer_state( );
}







void yypush_buffer_state (YY_BUFFER_STATE new_buffer )
{
     if (new_buffer == ((void*)0))
  return;

 yyensure_buffer_stack();


 if ( ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) )
  {

  *(yy_c_buf_p) = (yy_hold_char);
  (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buf_pos = (yy_c_buf_p);
  (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_n_chars = (yy_n_chars);
  }


 if (( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)))
  (yy_buffer_stack_top)++;
 (yy_buffer_stack)[(yy_buffer_stack_top)] = new_buffer;


 yy_load_buffer_state( );
 (yy_did_buffer_switch_on_eof) = 1;
}





void yypop_buffer_state (void)
{
     if (!( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)))
  return;

 yy_delete_buffer(( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) );
 (yy_buffer_stack)[(yy_buffer_stack_top)] = ((void*)0);
 if ((yy_buffer_stack_top) > 0)
  --(yy_buffer_stack_top);

 if (( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0))) {
  yy_load_buffer_state( );
  (yy_did_buffer_switch_on_eof) = 1;
 }
}




static void yyensure_buffer_stack (void)
{
 int num_to_alloc;

 if (!(yy_buffer_stack)) {





  num_to_alloc = 1;
  (yy_buffer_stack) = (struct yy_buffer_state**)yyalloc
        (num_to_alloc * sizeof(struct yy_buffer_state*)
        );

  memset((yy_buffer_stack), 0, num_to_alloc * sizeof(struct yy_buffer_state*));

  (yy_buffer_stack_max) = num_to_alloc;
  (yy_buffer_stack_top) = 0;
  return;
 }

 if ((yy_buffer_stack_top) >= ((yy_buffer_stack_max)) - 1){


  int grow_size = 8 ;

  num_to_alloc = (yy_buffer_stack_max) + grow_size;
  (yy_buffer_stack) = (struct yy_buffer_state**)yyrealloc
        ((yy_buffer_stack),
        num_to_alloc * sizeof(struct yy_buffer_state*)
        );


  memset((yy_buffer_stack) + (yy_buffer_stack_max), 0, grow_size * sizeof(struct yy_buffer_state*));
  (yy_buffer_stack_max) = num_to_alloc;
 }
}







YY_BUFFER_STATE yy_scan_buffer (char * base, yy_size_t size )
{
 YY_BUFFER_STATE b;

 if ( size < 2 ||
      base[size-2] != 0 ||
      base[size-1] != 0 )

  return 0;

 b = (YY_BUFFER_STATE) yyalloc(sizeof( struct yy_buffer_state ) );
 if ( ! b )
  yy_fatal_error( "out of dynamic memory in yy_scan_buffer()" );

 b->yy_buf_size = size - 2;
 b->yy_buf_pos = b->yy_ch_buf = base;
 b->yy_is_our_buffer = 0;
 b->yy_input_file = 0;
 b->yy_n_chars = b->yy_buf_size;
 b->yy_is_interactive = 0;
 b->yy_at_bol = 1;
 b->yy_fill_buffer = 0;
 b->yy_buffer_status = 0;

 yy_switch_to_buffer(b );

 return b;
}
# 2146 "fixnt.c"
YY_BUFFER_STATE yy_scan_string (const char * yystr )
{

 return yy_scan_bytes(yystr,strlen(yystr) );
}
# 2159 "fixnt.c"
YY_BUFFER_STATE yy_scan_bytes (const char * yybytes, int _yybytes_len )
{
 YY_BUFFER_STATE b;
 char *buf;
 yy_size_t n;
 int i;


 n = _yybytes_len + 2;
 buf = (char *) yyalloc(n );
 if ( ! buf )
  yy_fatal_error( "out of dynamic memory in yy_scan_bytes()" );

 for ( i = 0; i < _yybytes_len; ++i )
  buf[i] = yybytes[i];

 buf[_yybytes_len] = buf[_yybytes_len+1] = 0;

 b = yy_scan_buffer(buf,n );
 if ( ! b )
  yy_fatal_error( "bad buffer in yy_scan_bytes()" );




 b->yy_is_our_buffer = 1;

 return b;
}





static void yy_fatal_error (const char* msg )
{
     (void) fprintf( stderr, "%s\n", msg );
 exit( 2 );
}
# 2221 "fixnt.c"
int yyget_lineno (void)
{

    return yylineno;
}




FILE *yyget_in (void)
{
        return yyin;
}




FILE *yyget_out (void)
{
        return yyout;
}




int yyget_leng (void)
{
        return yyleng;
}





char *yyget_text (void)
{
        return yytext;
}





void yyset_lineno (int line_number )
{

    yylineno = line_number;
}







void yyset_in (FILE * in_str )
{
        yyin = in_str ;
}

void yyset_out (FILE * out_str )
{
        yyout = out_str ;
}

int yyget_debug (void)
{
        return yy_flex_debug;
}

void yyset_debug (int bdebug )
{
        yy_flex_debug = bdebug ;
}

static int yy_init_globals (void)
{




    (yy_buffer_stack) = 0;
    (yy_buffer_stack_top) = 0;
    (yy_buffer_stack_max) = 0;
    (yy_c_buf_p) = (char *) 0;
    (yy_init) = 0;
    (yy_start) = 0;






    yyin = (FILE *) 0;
    yyout = (FILE *) 0;





    return 0;
}


int yylex_destroy (void)
{


 while(( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0))){
  yy_delete_buffer(( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) );
  (yy_buffer_stack)[(yy_buffer_stack_top)] = ((void*)0);
  yypop_buffer_state();
 }


 yyfree((yy_buffer_stack) );
 (yy_buffer_stack) = ((void*)0);



    yy_init_globals( );

    return 0;
}
# 2370 "fixnt.c"
void *yyalloc (yy_size_t size )
{
 return (void *) malloc( size );
}

void *yyrealloc (void * ptr, yy_size_t size )
{







 return (void *) realloc( (char *) ptr, size );
}

void yyfree (void * ptr )
{
 free( (char *) ptr );
}
# 254 "fixnt.l"


int
yywrap ()
{
  return 1;
}

int
main ()
{



  if (!(tmpdir = getenv("TMPDIR")))
    tmpdir = "/tmp";

  pid = (int) getpid ();
  yylex();

  reassemble(adobe, font, body, adobefname, fontfname, bodyfname);

  return 0;
}

void
reassemble (adobe, font, body, adobefname, fontfname, bodyfname)
  FILE* adobe;
  FILE* font;
  FILE* body;
  char *adobefname;
  char *fontfname;
  char *bodyfname;
{
  int xx;


  if( adobe != ((void*)0) ){
    rewind(adobe);
    while( (xx = _IO_getc (adobe)) != (-1) ){
      _IO_putc (xx, yyout);
    }
    fclose(adobe);
    remove(adobefname);
  }

  if( font != ((void*)0)){
    rewind(font);
    while( (xx = _IO_getc (font)) != (-1) ){
      _IO_putc (xx, yyout);
    }
    fclose(font);
    remove(fontfname);
  }

  if( ifendsetup == 1){
    fprintf(yyout,"%%%%EndSetup:\n");
  }

  if( body != ((void*)0)){
    rewind(body);
    if(ifpagesv == 1)
      fprintf(yyout,"NTPSOct95 /PageSV save put\n");
    while( (xx = _IO_getc (body)) != (-1) ){
      _IO_putc (xx, yyout);
    }
    fclose(body);
    remove(bodyfname);
  }
  return;
}
