# 1 "lexssh.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "lexssh.c" 2
# 2 "lexssh.c"
# 4 "lexssh.c"
# 20 "lexssh.c"
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
# 21 "lexssh.c" 2
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
# 22 "lexssh.c" 2
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
# 23 "lexssh.c" 2
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
# 24 "lexssh.c" 2
# 43 "lexssh.c"
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
# 44 "lexssh.c" 2
typedef int8_t flex_int8_t;
typedef uint8_t flex_uint8_t;
typedef int16_t flex_int16_t;
typedef uint16_t flex_uint16_t;
typedef int32_t flex_int32_t;
typedef uint32_t flex_uint32_t;
# 152 "lexssh.c"
typedef struct yy_buffer_state *YY_BUFFER_STATE;


extern int sshleng;

extern FILE *sshin, *sshout;
# 201 "lexssh.c"
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
# 266 "lexssh.c"
 };



static size_t yy_buffer_stack_top = 0;
static size_t yy_buffer_stack_max = 0;
static YY_BUFFER_STATE * yy_buffer_stack = 0;
# 290 "lexssh.c"
static char yy_hold_char;
static int yy_n_chars;
int sshleng;


static char *yy_c_buf_p = (char *) 0;
static int yy_init = 0;
static int yy_start = 0;




static int yy_did_buffer_switch_on_eof;

void sshrestart (FILE *input_file );
void ssh_switch_to_buffer (YY_BUFFER_STATE new_buffer );
YY_BUFFER_STATE ssh_create_buffer (FILE *file,int size );
void ssh_delete_buffer (YY_BUFFER_STATE b );
void ssh_flush_buffer (YY_BUFFER_STATE b );
void sshpush_buffer_state (YY_BUFFER_STATE new_buffer );
void sshpop_buffer_state (void );

static void sshensure_buffer_stack (void );
static void ssh_load_buffer_state (void );
static void ssh_init_buffer (YY_BUFFER_STATE b,FILE *file );



YY_BUFFER_STATE ssh_scan_buffer (char *base,yy_size_t size );
YY_BUFFER_STATE ssh_scan_string (const char *yy_str );
YY_BUFFER_STATE ssh_scan_bytes (const char *bytes,int len );

void *sshalloc (yy_size_t );
void *sshrealloc (void *,yy_size_t );
void sshfree (void * );
# 352 "lexssh.c"
typedef unsigned char YY_CHAR;

FILE *sshin = (FILE *) 0, *sshout = (FILE *) 0;

typedef int yy_state_type;

extern int sshlineno;

int sshlineno = 1;

extern char *sshtext;


static yy_state_type yy_get_previous_state (void );
static yy_state_type yy_try_NUL_trans (yy_state_type current_state );
static int yy_get_next_buffer (void );
static void yy_fatal_error (const char msg[] );
# 384 "lexssh.c"
struct yy_trans_info
 {
 flex_int32_t yy_verify;
 flex_int32_t yy_nxt;
 };
static const flex_int16_t yy_accept[901] =
    { 0,
        2, 2, 0, 0, 0, 0, 218, 185, 2, 2,
        3, 1, 186, 185, 4, 185, 185, 185, 185, 185,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,
      185, 185, 185, 185, 185, 185, 185, 201, 200, 187,
      217, 216, 215, 202, 217, 185, 2, 1, 185, 185,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,
      137, 185, 185, 185, 185, 185, 185, 185, 185, 185,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,

      185, 185, 185, 185, 185, 185, 185, 143, 185, 185,
      185, 185, 185, 185, 152, 154, 185, 185, 185, 185,
      185, 185, 185, 201, 199, 188, 190, 191, 192, 193,
      194, 195, 196, 197, 198, 199, 216, 214, 203, 205,
      206, 207, 208, 209, 210, 211, 212, 213, 214, 91,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,
      185, 94, 185, 185, 185, 185, 21, 22, 185, 185,
       24, 185, 95, 185, 185, 185, 185, 185, 185, 32,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,

      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,
      185, 185, 185, 185, 185, 185, 107, 185, 185, 185,
      185, 185, 185, 185, 50, 185, 185, 185, 51, 185,
      185, 185, 185, 185, 185, 53, 80, 185, 185, 185,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,
      185, 185, 185, 185, 185, 185, 96, 61, 185, 185,
      185, 185, 142, 185, 185, 185, 149, 185, 185, 185,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,
      188, 189, 203, 204, 185, 185, 185, 185, 185, 185,
      185, 185, 185, 185, 185, 185, 175, 176, 177, 178,

      185, 185, 11, 185, 185, 185, 16, 185, 185, 185,
      185, 185, 185, 185, 14, 33, 26, 185, 185, 28,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,
      100, 185, 185, 40, 185, 185, 185, 185, 101, 185,
      185, 86, 185, 185, 185, 185, 45, 185, 185, 185,
      185, 81, 185, 185, 134, 185, 185, 185, 185, 185,
      185, 185, 67, 185, 185, 87, 117, 185, 185, 185,
      185, 185, 185, 43, 185, 185, 62, 185, 185, 185,
      185, 185, 55, 185, 185, 64, 185, 185, 185, 130,
      185, 185, 57, 185, 185, 185, 185, 185, 185, 119,

      185, 185, 138, 185, 185, 144, 185, 185, 185, 185,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,
      185, 188, 189, 203, 204, 185, 185, 185, 185, 168,
      185, 185, 185, 169, 165, 185, 185, 185, 10, 185,
      185, 185, 185, 17, 185, 185, 185, 185, 185, 185,
      185, 185, 185, 185, 34, 185, 185, 185, 185, 39,
      185, 185, 116, 79, 185, 8, 185, 185, 185, 185,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 46,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,
      185, 185, 185, 185, 36, 185, 114, 185, 185, 185,

      185, 185, 185, 185, 185, 185, 185, 185, 185, 115,
      185, 185, 185, 185, 185, 185, 185, 185, 185, 185,
      185, 185, 185, 185, 63, 185, 185, 185, 185, 185,
      151, 185, 185, 185, 185, 185, 185, 185, 185, 162,
      185, 185, 146, 185, 185, 185, 179, 180, 181, 182,
      185, 185, 185, 171, 172, 9, 12, 185, 185, 15,
       19, 185, 185, 185, 31, 185, 185, 27, 25, 185,
      185, 93, 38, 109, 185, 185, 185, 185, 185, 41,
      185, 185, 185, 185, 88, 185, 185, 185, 44, 185,
       68, 48, 185, 185, 131, 90, 185, 185, 185, 110,

      185, 185, 60, 185, 98, 185, 185, 66, 185, 185,
      185, 135, 185, 185, 185, 56, 185, 185, 185, 185,
      185, 54, 82, 185, 185, 185, 185, 185, 185, 185,
       59, 185, 185, 185, 185, 118, 185, 185, 185, 185,
      185, 185, 185, 185, 185, 185, 157, 185, 185, 185,
      185, 185, 173, 185, 185, 166, 185, 185, 185, 20,
      185, 185, 185, 185, 185, 185, 89, 85, 185, 185,
      185, 185, 185, 185, 185, 6, 69, 5, 185, 49,
      126, 185, 185, 132, 108, 185, 185, 97, 185, 83,
      185, 133, 185, 136, 185, 185, 105, 185, 102, 185,

      185, 185, 185, 185, 185, 185, 47, 185, 185, 185,
      185, 185, 185, 145, 185, 185, 185, 185, 185, 185,
      185, 185, 185, 163, 164, 147, 185, 183, 185, 185,
      185, 185, 13, 185, 185, 23, 185, 122, 29, 185,
      185, 185, 185, 185, 185, 42, 185, 185, 185, 185,
       52, 84, 185, 185, 185, 185, 185, 185, 185, 185,
      185, 76, 58, 185, 185, 185, 185, 185, 185, 185,
      139, 185, 185, 185, 185, 155, 185, 160, 156, 185,
      185, 185, 184, 185, 185, 185, 185, 185, 185, 185,
       70, 185, 185, 185, 99, 185, 185, 185, 185, 185,

      127, 185, 185, 106, 7, 103, 185, 185, 185, 185,
      185, 185, 30, 18, 185, 140, 141, 185, 185, 185,
      159, 158, 161, 185, 185, 185, 124, 121, 185, 185,
      185, 128, 185, 78, 72, 75, 185, 185, 37, 185,
       73, 35, 129, 185, 185, 185, 185, 185, 185, 150,
      185, 185, 185, 185, 185, 123, 185, 185, 185, 104,
       77, 65, 185, 185, 185, 185, 185, 153, 185, 185,
      170, 185, 185, 71, 185, 185, 185, 111, 185, 185,
      185, 185, 185, 185, 185, 112, 185, 113, 148, 174,
      167, 185, 185, 185, 185, 120, 92, 74, 125, 0

    } ;

static const flex_int32_t yy_ec[256] =
    { 0,
        1, 1, 1, 1, 1, 1, 1, 1, 2, 3,
        1, 2, 2, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 2, 1, 4, 5, 1, 1, 1, 1, 6,
        6, 1, 6, 6, 7, 1, 8, 9, 10, 11,
       12, 13, 9, 9, 9, 14, 14, 1, 1, 1,
        1, 1, 1, 1, 15, 16, 17, 18, 19, 20,
       21, 1, 22, 1, 23, 24, 25, 26, 27, 28,
        1, 29, 30, 31, 32, 1, 1, 33, 1, 34,
        1, 35, 1, 1, 36, 1, 37, 38, 39, 40,

       41, 42, 43, 44, 45, 1, 46, 47, 48, 49,
       50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
       60, 61, 1, 1, 1, 1, 1, 1, 1, 1,
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

static const flex_int32_t yy_meta[62] =
    { 0,
        1, 2, 3, 4, 2, 2, 1, 5, 6, 6,
        6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 7, 1, 6, 6, 6, 6,
        6, 6, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1
    } ;

static const flex_int16_t yy_base[913] =
    { 0,
        0, 0, 59, 61, 63, 64, 1012, 0, 66, 71,
     1013, 0, 1013, 1004, 1013, 63, 26, 961, 968, 971,
      960, 21, 969, 113, 164, 945, 40, 954, 29, 958,
       31, 961, 950, 959, 42, 958, 945, 0, 1013, 1013,
      209, 0, 1013, 1013, 260, 0, 87, 0, 990, 47,
      948, 956, 941, 51, 933, 954, 954, 937, 941, 945,
       93, 940, 945, 941, 43, 60, 947, 62, 946, 80,
      926, 925, 932, 132, 137, 934, 72, 927, 932, 935,
      136, 138, 151, 139, 151, 45, 156, 934, 69, 937,
      186, 917, 192, 157, 237, 193, 209, 199, 921, 163,

      173, 926, 929, 918, 917, 928, 925, 0, 911, 914,
      924, 922, 922, 907, 905, 0, 898, 190, 905, 228,
      896, 902, 909, 0, 1013, 283, 1013, 1013, 1013, 1013,
     1013, 1013, 1013, 1013, 1013, 0, 0, 1013, 294, 1013,
     1013, 1013, 1013, 1013, 1013, 1013, 1013, 1013, 0, 0,
      909, 897, 903, 900, 899, 907, 902, 888, 904, 899,
      898, 904, 276, 890, 885, 894, 891, 879, 882, 898,
      886, 0, 878, 881, 883, 888, 0, 0, 212, 884,
        0, 883, 0, 877, 883, 882, 868, 882, 155, 0,
      867, 267, 878, 869, 864, 871, 188, 867, 871, 862,

      858, 210, 862, 865, 218, 853, 859, 855, 852, 870,
      861, 855, 851, 855, 850, 864, 221, 845, 848, 167,
      857, 847, 268, 849, 0, 857, 842, 838, 0, 238,
      845, 846, 837, 836, 843, 0, 0, 266, 842, 272,
      845, 842, 837, 833, 839, 279, 844, 285, 824, 838,
      830, 840, 277, 823, 834, 834, 0, 0, 818, 818,
      827, 829, 0, 828, 814, 811, 0, 825, 811, 823,
      805, 809, 816, 804, 809, 804, 801, 809, 801, 799,
      330, 0, 335, 0, 816, 799, 810, 810, 796, 789,
      793, 796, 798, 795, 794, 792, 0, 0, 0, 0,

      797, 803, 0, 784, 789, 792, 0, 788, 798, 783,
      795, 777, 788, 791, 0, 0, 0, 785, 780, 0,
      772, 773, 780, 787, 772, 778, 774, 767, 782, 771,
        0, 764, 761, 0, 776, 776, 770, 752, 0, 756,
      762, 0, 760, 753, 762, 761, 0, 751, 751, 766,
      754, 0, 748, 745, 0, 762, 747, 759, 753, 750,
      739, 738, 0, 742, 744, 0, 755, 746, 749, 731,
      738, 730, 733, 0, 735, 286, 0, 737, 738, 735,
      734, 728, 0, 733, 728, 0, 735, 720, 729, 0,
      718, 731, 0, 275, 729, 729, 715, 722, 317, 0,

      723, 728, 0, 727, 709, 0, 721, 713, 709, 704,
      709, 707, 719, 705, 709, 704, 707, 710, 709, 704,
      693, 1013, 1013, 1013, 1013, 694, 701, 696, 699, 0,
      340, 698, 689, 705, 0, 697, 692, 701, 0, 700,
      699, 688, 697, 0, 696, 692, 203, 694, 677, 674,
      691, 690, 673, 678, 0, 680, 686, 681, 671, 0,
      679, 674, 0, 0, 664, 0, 664, 679, 665, 677,
      653, 665, 654, 655, 664, 661, 670, 651, 645, 0,
      667, 663, 655, 654, 646, 321, 649, 661, 280, 660,
      643, 641, 653, 648, 0, 651, 0, 636, 651, 642,

      641, 633, 636, 630, 647, 642, 641, 626, 639, 0,
      638, 641, 623, 635, 622, 627, 622, 622, 626, 310,
      629, 624, 316, 627, 0, 629, 611, 612, 623, 608,
        0, 608, 608, 605, 610, 605, 617, 601, 606, 0,
      604, 612, 0, 603, 596, 601, 0, 0, 0, 0,
      611, 608, 593, 0, 0, 0, 0, 593, 595, 0,
        0, 607, 590, 597, 0, 591, 603, 0, 0, 589,
      588, 0, 0, 0, 578, 581, 598, 578, 588, 0,
      583, 578, 576, 579, 0, 574, 578, 579, 0, 571,
        0, 0, 587, 582, 0, 0, 569, 576, 567, 0,

      570, 562, 0, 567, 0, 562, 578, 0, 564, 576,
      571, 0, 556, 557, 572, 0, 554, 552, 562, 550,
      562, 0, 0, 555, 552, 551, 546, 548, 561, 552,
        0, 553, 552, 553, 556, 0, 551, 541, 536, 540,
      543, 542, 546, 535, 547, 542, 0, 537, 542, 531,
      530, 535, 541, 533, 528, 538, 518, 519, 522, 0,
      517, 526, 519, 514, 508, 516, 0, 0, 521, 518,
      519, 521, 507, 518, 509, 0, 0, 0, 501, 0,
        0, 503, 512, 0, 0, 516, 504, 0, 505, 0,
      504, 0, 509, 0, 496, 492, 506, 509, 504, 494,

      506, 484, 492, 495, 479, 490, 0, 492, 488, 480,
      494, 478, 479, 0, 476, 480, 474, 474, 474, 479,
      471, 467, 482, 0, 0, 0, 468, 0, 480, 462,
      459, 460, 0, 453, 454, 0, 444, 0, 0, 449,
       27, 56, 136, 234, 244, 0, 284, 282, 291, 305,
        0, 0, 320, 309, 310, 319, 313, 311, 315, 320,
      322, 0, 0, 329, 324, 328, 325, 343, 344, 341,
      329, 330, 348, 337, 342, 0, 334, 0, 0, 348,
      336, 336, 0, 337, 343, 336, 337, 341, 347, 345,
        0, 344, 344, 343, 0, 347, 345, 349, 364, 347,

        0, 357, 353, 0, 0, 0, 368, 364, 361, 367,
      364, 359, 0, 0, 367, 0, 0, 361, 363, 361,
        0, 0, 0, 366, 367, 372, 0, 0, 385, 365,
      383, 0, 380, 0, 0, 0, 389, 372, 0, 370,
        0, 0, 0, 380, 387, 391, 391, 396, 389, 0,
      394, 386, 387, 395, 386, 0, 385, 386, 389, 0,
        0, 0, 399, 390, 392, 393, 397, 0, 399, 400,
        0, 397, 395, 0, 399, 398, 398, 0, 409, 407,
      414, 415, 409, 407, 411, 0, 417, 0, 0, 0,
        0, 405, 415, 407, 411, 0, 0, 0, 0, 1013,

      466, 473, 480, 487, 494, 500, 507, 513, 476, 477,
      478, 479
    } ;

static const flex_int16_t yy_def[913] =
    { 0,
      900, 1, 901, 901, 902, 902, 900, 903, 900, 900,
      900, 904, 900, 903, 900, 903, 903, 903, 903, 903,
      903, 903, 903, 900, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 905, 900, 900,
      906, 907, 900, 900, 908, 903, 900, 904, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,

      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 905, 900, 900, 900, 900, 900, 900,
      900, 900, 900, 900, 900, 909, 907, 900, 900, 900,
      900, 900, 900, 900, 900, 900, 900, 900, 910, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,

      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      900, 911, 900, 912, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,

      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,

      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 900, 900, 900, 900, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,

      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,

      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,

      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,

      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 903,
      903, 903, 903, 903, 903, 903, 903, 903, 903, 0,

      900, 900, 900, 900, 900, 900, 900, 900, 900, 900,
      900, 900
    } ;

static const flex_int16_t yy_nxt[1075] =
    { 0,
        8, 9, 10, 11, 12, 13, 14, 15, 8, 8,
        8, 8, 8, 8, 8, 8, 16, 8, 17, 8,
        8, 18, 19, 20, 8, 8, 8, 21, 8, 22,
       23, 8, 8, 8, 24, 8, 25, 26, 27, 28,
       29, 30, 8, 8, 31, 32, 8, 8, 8, 33,
        8, 8, 34, 35, 8, 8, 36, 37, 8, 8,
        8, 39, 40, 39, 40, 43, 43, 47, 47, 50,
       44, 44, 47, 47, 52, 58, 109, 112, 53, 115,
       59, 791, 120, 167, 116, 151, 110, 113, 47, 47,
      156, 212, 168, 41, 213, 41, 121, 45, 45, 792,

      152, 61, 61, 61, 61, 61, 61, 157, 187, 172,
      169, 173, 51, 46, 170, 188, 175, 217, 218, 46,
      176, 61, 61, 61, 61, 61, 61, 62, 63, 64,
       65, 66, 46, 67, 68, 69, 70, 71, 72, 73,
       74, 75, 76, 77, 78, 79, 80, 46, 46, 81,
       82, 83, 84, 85, 86, 87, 88, 89, 90, 91,
       92, 93, 94, 95, 46, 96, 97, 98, 99, 100,
      101, 102, 46, 103, 104, 180, 181, 183, 195, 204,
      184, 185, 192, 205, 193, 182, 194, 197, 206, 793,
      198, 322, 214, 196, 199, 200, 215, 201, 207, 254,

      202, 208, 209, 255, 230, 210, 203, 231, 323, 211,
      105, 232, 106, 256, 358, 359, 107, 126, 126, 126,
      126, 126, 220, 257, 221, 222, 223, 224, 226, 240,
      272, 241, 227, 242, 243, 249, 244, 245, 331, 563,
      332, 228, 250, 251, 273, 127, 128, 229, 129, 130,
      131, 252, 313, 246, 341, 564, 314, 132, 337, 247,
      338, 133, 354, 134, 248, 135, 275, 136, 139, 139,
      139, 139, 139, 233, 342, 355, 276, 234, 368, 277,
      235, 236, 369, 794, 237, 297, 298, 299, 300, 238,
      239, 281, 281, 281, 281, 281, 140, 141, 795, 142,

      143, 144, 283, 283, 283, 283, 283, 325, 145, 362,
      375, 378, 146, 397, 147, 376, 148, 326, 149, 363,
      379, 385, 388, 389, 601, 497, 386, 511, 796, 512,
      398, 797, 390, 602, 798, 391, 498, 392, 422, 422,
      422, 422, 422, 424, 424, 424, 424, 424, 517, 547,
      548, 549, 550, 630, 631, 518, 519, 597, 799, 634,
      800, 801, 802, 803, 804, 805, 806, 520, 635, 521,
      522, 523, 807, 598, 808, 809, 810, 811, 812, 813,
      814, 815, 816, 817, 818, 819, 820, 821, 822, 823,
      824, 825, 826, 827, 828, 829, 830, 831, 832, 833,

      834, 835, 836, 837, 838, 839, 840, 841, 842, 843,
      844, 845, 846, 847, 848, 849, 850, 851, 852, 853,
      854, 855, 856, 857, 858, 859, 860, 861, 862, 863,
      864, 865, 866, 867, 868, 869, 870, 871, 872, 873,
      874, 875, 876, 877, 878, 879, 880, 881, 882, 883,
      884, 885, 886, 887, 888, 889, 890, 891, 892, 893,
      894, 895, 896, 897, 898, 899, 38, 38, 38, 38,
       38, 38, 38, 42, 42, 42, 42, 42, 42, 42,
       46, 282, 284, 423, 425, 46, 46, 48, 48, 790,
       48, 48, 48, 48, 124, 124, 789, 788, 124, 124,

      125, 125, 787, 125, 125, 125, 125, 137, 137, 786,
      137, 785, 137, 138, 138, 784, 138, 138, 138, 138,
      783, 782, 781, 780, 779, 778, 777, 776, 775, 774,
      773, 772, 771, 770, 769, 768, 767, 766, 765, 764,
      763, 762, 761, 760, 759, 758, 757, 756, 755, 754,
      753, 752, 751, 750, 749, 748, 747, 746, 745, 744,
      743, 742, 741, 740, 739, 738, 737, 736, 735, 734,
      733, 732, 731, 730, 729, 728, 727, 726, 725, 724,
      723, 722, 721, 720, 719, 718, 717, 716, 715, 714,
      713, 712, 711, 710, 709, 708, 707, 706, 705, 704,

      703, 702, 701, 700, 699, 698, 697, 696, 695, 694,
      693, 692, 691, 690, 689, 688, 687, 686, 685, 684,
      683, 682, 681, 680, 679, 678, 677, 676, 675, 674,
      673, 672, 671, 670, 669, 668, 667, 666, 665, 664,
      663, 662, 661, 660, 659, 658, 657, 656, 655, 654,
      653, 652, 651, 650, 649, 648, 647, 646, 645, 644,
      643, 642, 641, 640, 639, 638, 637, 636, 633, 632,
      629, 628, 627, 626, 625, 624, 623, 622, 621, 620,
      619, 618, 617, 616, 615, 614, 613, 612, 611, 610,
      609, 608, 607, 606, 605, 604, 603, 600, 599, 596,

      595, 594, 593, 592, 591, 590, 589, 588, 587, 586,
      585, 584, 583, 582, 581, 580, 579, 578, 577, 576,
      575, 574, 573, 572, 571, 570, 569, 568, 567, 566,
      565, 562, 561, 560, 559, 558, 557, 556, 555, 554,
      553, 552, 551, 546, 545, 544, 543, 542, 541, 540,
      539, 538, 537, 536, 535, 534, 533, 532, 531, 530,
      529, 528, 527, 526, 525, 524, 516, 515, 514, 513,
      510, 509, 508, 507, 506, 505, 504, 503, 502, 501,
      500, 499, 496, 495, 494, 493, 492, 491, 490, 489,
      488, 487, 486, 485, 484, 483, 482, 481, 480, 479,

      478, 477, 476, 475, 474, 473, 472, 471, 470, 469,
      468, 467, 466, 465, 464, 463, 462, 461, 460, 459,
      458, 457, 456, 455, 454, 453, 452, 451, 450, 449,
      448, 447, 446, 445, 444, 443, 442, 441, 440, 439,
      438, 437, 436, 435, 434, 433, 432, 431, 430, 429,
      428, 427, 426, 421, 420, 419, 418, 417, 416, 415,
      414, 413, 412, 411, 410, 409, 408, 407, 406, 405,
      404, 403, 402, 401, 400, 399, 396, 395, 394, 393,
      387, 384, 383, 382, 381, 380, 377, 374, 373, 372,
      371, 370, 367, 366, 365, 364, 361, 360, 357, 356,

      353, 352, 351, 350, 349, 348, 347, 346, 345, 344,
      343, 340, 339, 336, 335, 334, 333, 330, 329, 328,
      327, 324, 321, 320, 319, 318, 317, 316, 315, 312,
      311, 310, 309, 308, 307, 306, 305, 304, 303, 302,
      301, 296, 295, 294, 293, 292, 291, 290, 289, 288,
      287, 286, 285, 280, 279, 278, 274, 271, 270, 269,
      268, 267, 266, 265, 264, 263, 262, 261, 260, 259,
      258, 253, 225, 219, 216, 191, 190, 189, 186, 179,
      178, 177, 174, 171, 166, 165, 164, 163, 162, 161,
      160, 159, 158, 155, 154, 153, 150, 123, 122, 119,

      118, 117, 114, 111, 108, 60, 57, 56, 55, 54,
       49, 900, 7, 900, 900, 900, 900, 900, 900, 900,
      900, 900, 900, 900, 900, 900, 900, 900, 900, 900,
      900, 900, 900, 900, 900, 900, 900, 900, 900, 900,
      900, 900, 900, 900, 900, 900, 900, 900, 900, 900,
      900, 900, 900, 900, 900, 900, 900, 900, 900, 900,
      900, 900, 900, 900, 900, 900, 900, 900, 900, 900,
      900, 900, 900, 900
    } ;

static const flex_int16_t yy_chk[1075] =
    { 0,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 3, 3, 4, 4, 5, 6, 9, 9, 16,
        5, 6, 10, 10, 17, 22, 27, 29, 17, 31,
       22, 741, 35, 65, 31, 50, 27, 29, 47, 47,
       54, 86, 65, 3, 86, 4, 35, 5, 6, 742,

       50, 61, 61, 61, 61, 61, 61, 54, 77, 68,
       66, 68, 16, 24, 66, 77, 70, 89, 89, 24,
       70, 24, 24, 24, 24, 24, 24, 24, 24, 24,
       24, 24, 24, 24, 24, 24, 24, 24, 24, 24,
       24, 24, 24, 24, 24, 24, 24, 24, 24, 24,
       24, 24, 24, 24, 24, 24, 24, 24, 24, 24,
       24, 24, 24, 24, 24, 24, 24, 24, 24, 24,
       24, 24, 24, 24, 25, 74, 74, 75, 82, 84,
       75, 75, 81, 84, 81, 74, 81, 83, 84, 743,
       83, 189, 87, 82, 83, 83, 87, 83, 85, 100,

       83, 85, 85, 100, 94, 85, 83, 94, 189, 85,
       25, 94, 25, 101, 220, 220, 25, 41, 41, 41,
       41, 41, 91, 101, 91, 91, 91, 91, 93, 96,
      118, 96, 93, 96, 96, 98, 96, 96, 197, 447,
      197, 93, 98, 98, 118, 41, 41, 93, 41, 41,
       41, 98, 179, 97, 205, 447, 179, 41, 202, 97,
      202, 41, 217, 41, 97, 41, 120, 41, 45, 45,
       45, 45, 45, 95, 205, 217, 120, 95, 230, 120,
       95, 95, 230, 744, 95, 163, 163, 163, 163, 95,
       95, 126, 126, 126, 126, 126, 45, 45, 745, 45,

       45, 45, 139, 139, 139, 139, 139, 192, 45, 223,
      238, 240, 45, 253, 45, 238, 45, 192, 45, 223,
      240, 246, 248, 248, 489, 376, 246, 394, 747, 394,
      253, 748, 248, 489, 749, 248, 376, 248, 281, 281,
      281, 281, 281, 283, 283, 283, 283, 283, 399, 431,
      431, 431, 431, 520, 520, 399, 399, 486, 750, 523,
      753, 754, 755, 756, 757, 758, 759, 399, 523, 399,
      399, 399, 760, 486, 761, 764, 765, 766, 767, 768,
      769, 770, 771, 772, 773, 774, 775, 777, 780, 781,
      782, 784, 785, 786, 787, 788, 789, 790, 792, 793,

      794, 796, 797, 798, 799, 800, 802, 803, 807, 808,
      809, 810, 811, 812, 815, 818, 819, 820, 824, 825,
      826, 829, 830, 831, 833, 837, 838, 840, 844, 845,
      846, 847, 848, 849, 851, 852, 853, 854, 855, 857,
      858, 859, 863, 864, 865, 866, 867, 869, 870, 872,
      873, 875, 876, 877, 879, 880, 881, 882, 883, 884,
      885, 887, 892, 893, 894, 895, 901, 901, 901, 901,
      901, 901, 901, 902, 902, 902, 902, 902, 902, 902,
      903, 909, 910, 911, 912, 903, 903, 904, 904, 740,
      904, 904, 904, 904, 905, 905, 737, 735, 905, 905,

      906, 906, 734, 906, 906, 906, 906, 907, 907, 732,
      907, 731, 907, 908, 908, 730, 908, 908, 908, 908,
      729, 727, 723, 722, 721, 720, 719, 718, 717, 716,
      715, 713, 712, 711, 710, 709, 708, 706, 705, 704,
      703, 702, 701, 700, 699, 698, 697, 696, 695, 693,
      691, 689, 687, 686, 683, 682, 679, 675, 674, 673,
      672, 671, 670, 669, 666, 665, 664, 663, 662, 661,
      659, 658, 657, 656, 655, 654, 653, 652, 651, 650,
      649, 648, 646, 645, 644, 643, 642, 641, 640, 639,
      638, 637, 635, 634, 633, 632, 630, 629, 628, 627,

      626, 625, 624, 621, 620, 619, 618, 617, 615, 614,
      613, 611, 610, 609, 607, 606, 604, 602, 601, 599,
      598, 597, 594, 593, 590, 588, 587, 586, 584, 583,
      582, 581, 579, 578, 577, 576, 575, 571, 570, 567,
      566, 564, 563, 562, 559, 558, 553, 552, 551, 546,
      545, 544, 542, 541, 539, 538, 537, 536, 535, 534,
      533, 532, 530, 529, 528, 527, 526, 524, 522, 521,
      519, 518, 517, 516, 515, 514, 513, 512, 511, 509,
      508, 507, 506, 505, 504, 503, 502, 501, 500, 499,
      498, 496, 494, 493, 492, 491, 490, 488, 487, 485,

      484, 483, 482, 481, 479, 478, 477, 476, 475, 474,
      473, 472, 471, 470, 469, 468, 467, 465, 462, 461,
      459, 458, 457, 456, 454, 453, 452, 451, 450, 449,
      448, 446, 445, 443, 442, 441, 440, 438, 437, 436,
      434, 433, 432, 429, 428, 427, 426, 421, 420, 419,
      418, 417, 416, 415, 414, 413, 412, 411, 410, 409,
      408, 407, 405, 404, 402, 401, 398, 397, 396, 395,
      392, 391, 389, 388, 387, 385, 384, 382, 381, 380,
      379, 378, 375, 373, 372, 371, 370, 369, 368, 367,
      365, 364, 362, 361, 360, 359, 358, 357, 356, 354,

      353, 351, 350, 349, 348, 346, 345, 344, 343, 341,
      340, 338, 337, 336, 335, 333, 332, 330, 329, 328,
      327, 326, 325, 324, 323, 322, 321, 319, 318, 314,
      313, 312, 311, 310, 309, 308, 306, 305, 304, 302,
      301, 296, 295, 294, 293, 292, 291, 290, 289, 288,
      287, 286, 285, 280, 279, 278, 277, 276, 275, 274,
      273, 272, 271, 270, 269, 268, 266, 265, 264, 262,
      261, 260, 259, 256, 255, 254, 252, 251, 250, 249,
      247, 245, 244, 243, 242, 241, 239, 235, 234, 233,
      232, 231, 228, 227, 226, 224, 222, 221, 219, 218,

      216, 215, 214, 213, 212, 211, 210, 209, 208, 207,
      206, 204, 203, 201, 200, 199, 198, 196, 195, 194,
      193, 191, 188, 187, 186, 185, 184, 182, 180, 176,
      175, 174, 173, 171, 170, 169, 168, 167, 166, 165,
      164, 162, 161, 160, 159, 158, 157, 156, 155, 154,
      153, 152, 151, 123, 122, 121, 119, 117, 115, 114,
      113, 112, 111, 110, 109, 107, 106, 105, 104, 103,
      102, 99, 92, 90, 88, 80, 79, 78, 76, 73,
       72, 71, 69, 67, 64, 63, 62, 60, 59, 58,
       57, 56, 55, 53, 52, 51, 49, 37, 36, 34,

       33, 32, 30, 28, 26, 23, 21, 20, 19, 18,
       14, 7, 900, 900, 900, 900, 900, 900, 900, 900,
      900, 900, 900, 900, 900, 900, 900, 900, 900, 900,
      900, 900, 900, 900, 900, 900, 900, 900, 900, 900,
      900, 900, 900, 900, 900, 900, 900, 900, 900, 900,
      900, 900, 900, 900, 900, 900, 900, 900, 900, 900,
      900, 900, 900, 900, 900, 900, 900, 900, 900, 900,
      900, 900, 900, 900
    } ;


static const flex_int32_t yy_rule_can_match_eol[218] =
    { 0,
0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, };

static yy_state_type yy_last_accepting_state;
static char *yy_last_accepting_cpos;

extern int ssh_flex_debug;
int ssh_flex_debug = 0;
# 1017 "lexssh.c"
char *sshtext;
# 1 "lexssh.l"
# 2 "lexssh.l"
# 33 "lexssh.l"
# 1 "./main.h" 1
# 35 "./main.h"
# 1 "../lib/system.h" 1
# 31 "../lib/system.h"
# 1 "../config.h" 1
# 32 "../lib/system.h" 2
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
# 36 "./main.h" 2
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
# 37 "./main.h" 2
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
# 38 "./main.h" 2
# 1 "../lib/message.h" 1
# 23 "../lib/message.h"
extern unsigned int msg_verbosity;





int msg_verbosity_argmatch (const char *option, char *arg);
# 46 "../lib/message.h"
# 1 "../lib/msg.h" 1
# 47 "../lib/message.h" 2
# 39 "./main.h" 2
# 1 "../lib/quotearg.h" 1
# 21 "../lib/quotearg.h"
enum quoting_style
  {
    literal_quoting_style,
    shell_quoting_style,
    shell_always_quoting_style,
    c_quoting_style,
    escape_quoting_style,
    locale_quoting_style
  };







extern char const *const quoting_style_args[];
extern enum quoting_style const quoting_style_vals[];

struct quoting_options;
# 56 "../lib/quotearg.h"
struct quoting_options *clone_quoting_options
   (struct quoting_options *o);


enum quoting_style get_quoting_style (struct quoting_options *o);



void set_quoting_style (struct quoting_options *o, enum quoting_style s);







int set_char_quoting (struct quoting_options *o, char c, int i);
# 82 "../lib/quotearg.h"
size_t quotearg_buffer (char *buffer, size_t buffersize, char const *arg, size_t argsize, struct quoting_options const *o);
# 91 "../lib/quotearg.h"
char *quotearg_n (unsigned int n, char const *arg);


char *quotearg (char const *arg);




char *quotearg_n_style (unsigned int n, enum quoting_style s, char const *arg);



char *quotearg_style (enum quoting_style s, char const *arg);


char *quotearg_char (char const *arg, char ch);


char *quotearg_colon (char const *arg);
# 40 "./main.h" 2

# 1 "../lib/jobs.h" 1
# 35 "../lib/jobs.h"
# 1 "../lib/encoding.h" 1
# 33 "../lib/encoding.h"
# 1 "../lib/a2ps.h" 1
# 34 "../lib/encoding.h" 2
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
# 42 "./main.h" 2
# 1 "../lib/fjobs.h" 1
# 28 "../lib/fjobs.h"
struct a2ps_job;




struct file_job
{
  unsigned char * name;




  char *delegation_tmpname;



  char *stdin_tmpname;

  const char * type;
  _Bool is_toc;

  struct tm mod_tm;
  _Bool printable;
  _Bool is_stdin;
  int first_sheet;
  int last_sheet;
  int first_page;
  int last_page;
  int pages;
  int sheets;
  int num;
  int top_line;
  int top_page;
  int lines;
};



struct file_job *
_a2ps_file_job_new (unsigned char * name, int num, struct tm * run_tm);

int file_name_cmp (struct file_job * f1, struct file_job * f2);

void file_job_synchronize_sheets (struct a2ps_job * job);
void file_job_synchronize_pages (struct a2ps_job * job);
void file_job_self_print (struct file_job * file, FILE * stream);
void file_job_unlink_tmpfile (struct file_job * file);
void file_job_free (struct file_job * file_job);
# 43 "./main.h" 2
# 1 "./generate.h" 1
# 29 "./generate.h"
void print (unsigned char * name, int * native_jobs, int * delegated_jobs);
void print_toc (const unsigned char * name, const unsigned char * value, int * native_jobs);


void msg_job_pages_printed (a2ps_job * job);
void msg_nothing_printed (void);

void guess (unsigned char * name);
# 44 "./main.h" 2
# 1 "../lib/psgen.h" 1
# 36 "../lib/psgen.h"
struct a2ps_job;
struct encoding;



void ps_print_char (struct a2ps_job * job, int c, enum face_e face);

void ps_print_string (struct a2ps_job * job, unsigned char * string, enum face_e face);

void ps_print_buffer (struct a2ps_job * job, const unsigned char * buffer, size_t start, size_t end, enum face_e face);




void ps_begin_file (struct a2ps_job * job);
void ps_end_file (struct a2ps_job * job);

void page_flush (struct a2ps_job * job);
void require_fresh_page (struct a2ps_job * job);





void ps_set_encoding (struct a2ps_job * job, struct encoding * encoding);

void ps_end_encoding (struct a2ps_job * job);
void ps_switch_encoding (struct a2ps_job * job, struct encoding * encoding);
# 45 "./main.h" 2
# 1 "./sshread.h" 1
# 32 "./sshread.h"
# 1 "./ssheet.h" 1
# 34 "./ssheet.h"
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
# 35 "./ssheet.h" 2


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
# 33 "./sshread.h" 2
# 1 "./buffer.h" 1
# 34 "./buffer.h"
# 1 "../lib/xobstack.h" 1
# 22 "../lib/xobstack.h"
# 1 "../lib/obstack.h" 1
# 142 "../lib/obstack.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 51 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3
typedef long int ptrdiff_t;
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
# 143 "../lib/obstack.h" 2
# 162 "../lib/obstack.h"
struct _obstack_chunk
{
  char *limit;
  struct _obstack_chunk *prev;
  char contents[4];
};

struct obstack
{
  long chunk_size;
  struct _obstack_chunk *chunk;
  char *object_base;
  char *next_free;
  char *chunk_limit;
  ptrdiff_t temp;
  int alignment_mask;




  struct _obstack_chunk *(*chunkfun) (void *, long);
  void (*freefun) (void *, struct _obstack_chunk *);
  void *extra_arg;





  unsigned use_extra_arg:1;
  unsigned maybe_empty_object:1;



  unsigned alloc_failed:1;


};




extern void _obstack_newchunk (struct obstack *, int);
extern void _obstack_free (struct obstack *, void *);
extern int _obstack_begin (struct obstack *, int, int,
       void *(*) (long), void (*) (void *));
extern int _obstack_begin_1 (struct obstack *, int, int,
        void *(*) (void *, long),
        void (*) (void *, void *), void *);
extern int _obstack_memory_used (struct obstack *);
# 224 "../lib/obstack.h"
void obstack_init (struct obstack *obstack);

void * obstack_alloc (struct obstack *obstack, int size);

void * obstack_copy (struct obstack *obstack, void *address, int size);
void * obstack_copy0 (struct obstack *obstack, void *address, int size);

void obstack_free (struct obstack *obstack, void *block);

void obstack_blank (struct obstack *obstack, int size);

void obstack_grow (struct obstack *obstack, void *data, int size);
void obstack_grow0 (struct obstack *obstack, void *data, int size);

void obstack_1grow (struct obstack *obstack, int data_char);
void obstack_ptr_grow (struct obstack *obstack, void *data);
void obstack_int_grow (struct obstack *obstack, int data);

void * obstack_finish (struct obstack *obstack);

int obstack_object_size (struct obstack *obstack);

int obstack_room (struct obstack *obstack);
void obstack_make_room (struct obstack *obstack, int size);
void obstack_1grow_fast (struct obstack *obstack, int data_char);
void obstack_ptr_grow_fast (struct obstack *obstack, void *data);
void obstack_int_grow_fast (struct obstack *obstack, int data);
void obstack_blank_fast (struct obstack *obstack, int size);

void * obstack_base (struct obstack *obstack);
void * obstack_next_free (struct obstack *obstack);
int obstack_alignment_mask (struct obstack *obstack);
int obstack_chunk_size (struct obstack *obstack);
int obstack_memory_used (struct obstack *obstack);
# 268 "../lib/obstack.h"
extern void (*obstack_alloc_failed_handler) (void);





extern int obstack_exit_failure;
# 23 "../lib/xobstack.h" 2
# 35 "./buffer.h" 2







enum eol_e
{
  eol_r,
  eol_n,
  eol_rn,
  eol_nr,
  eol_auto
};

const char * eol_to_string (enum eol_e eol);
enum eol_e option_string_to_eol (const char * option, const char * arg);
# 64 "./buffer.h"
typedef struct buffer_s
{
  const unsigned char * buf;
  size_t bufsize;
  size_t bufoffset;
  FILE * stream;
  _Bool pipe_p;

  unsigned char *content;
  enum eol_e eol;
  _Bool lower_case;
  unsigned char * value;
  size_t line;
  size_t allocsize;
  size_t len;
  size_t curr;
  struct obstack obstack;
} buffer_t;

void buffer_stream_set (buffer_t * buffer, FILE * stream, enum eol_e eol);


void buffer_pipe_set (buffer_t * buffer, FILE * stream, enum eol_e eol);


void buffer_string_set (buffer_t * buffer, const unsigned char * string, enum eol_e eol);


void buffer_buffer_set (buffer_t * buffer, const unsigned char * buf, size_t bufsize, enum eol_e eol);



void buffer_set_lower_case (buffer_t * buffer, _Bool lower_case);
void buffer_self_print (buffer_t * buffer, FILE * stream);

void buffer_release (buffer_t * buffer);

void buffer_get (buffer_t * buffer);

void buffer_sample_get (buffer_t * buffer, const char * filename);
void buffer_save (buffer_t * buffer, const char * filename);
# 34 "./sshread.h" 2
struct a2ps_job;



void ssh_print_postscript (struct a2ps_job * job, buffer_t * buffer, struct style_sheet * sheet);
# 46 "./main.h" 2
# 1 "./read.h" 1
# 34 "./read.h"
struct a2ps_job;

void plain_print_postscript (struct a2ps_job * job, buffer_t * buffer);
# 47 "./main.h" 2
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
# 48 "./main.h" 2
# 1 "./select.h" 1
# 38 "./select.h"
void set_requested_style (const char * arg);







struct darray * sheets_map_new (void);
void
sheets_map_add (const char *pattern, int on_file_verdict, _Bool insenstive, const char *key);





const char * get_command (const unsigned char * name_to_match, const unsigned char * name_to_file);


struct pattern_rule *
pattern_rule_new (const char *pattern, int on_file_verdict, _Bool insensitive_p, const char *command);




void
sheets_map_load (const char *filename);
# 49 "./main.h" 2
# 1 "./delegate.h" 1
# 39 "./delegate.h"
struct file_job;


struct delegation
  {
    char *name;
    char *contract;
    char *command;
  };

struct hash_table_s *delegation_table_new (void);
void delegation_table_free (struct hash_table_s * table);

void add_delegation (const char *filename, int line, char *contract_line);

struct delegation *get_subcontract (const char *src_type, const char *dest_type);

char *get_delegate_command (struct delegation * contract, struct file_job * file, int evaluate);



int subcontract (struct file_job * file, buffer_t * buffer, struct delegation * contractor);




void delegations_list_long (struct hash_table_s * contracts, FILE * stream);

void delegations_list_short (struct hash_table_s * contracts, FILE * stream);
# 50 "./main.h" 2


# 1 "../lib/metaseq.h" 1
# 36 "../lib/metaseq.h"
struct a2ps_job;
struct file_job;
struct pair_htable;



struct pair_htable * macro_meta_sequence_table_new (void);
void macro_meta_sequence_table_free (struct pair_htable * table);


_Bool macro_meta_sequence_add (struct a2ps_job * job, const char * key, const char * value);


void macro_meta_sequence_delete (struct a2ps_job * job, const char * key);

char * macro_meta_sequence_get (struct a2ps_job * job, const char * key);

void macro_meta_sequences_list_short (struct a2ps_job * job, FILE * stream);


void macro_meta_sequences_list_long (struct a2ps_job * job, FILE * stream);
# 65 "../lib/metaseq.h"
unsigned char * expand_user_string (struct a2ps_job * job, struct file_job * file, const unsigned char * context_name, const unsigned char * str);
# 53 "./main.h" 2



extern struct hash_table_s * files;


extern unsigned char * stdin_filename;

extern struct a2ps_job * job;


extern _Bool delegate_p;


extern int highlight_level;


extern char *style_request;


extern enum eol_e end_of_line;




extern char *sample_tmpname;
# 34 "lexssh.l" 2
# 1 "./yy2ssh.h" 1
# 35 "lexssh.l" 2
# 1 "./parsessh.h" 1
# 41 "./parsessh.h"
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
# 114 "./parsessh.h"
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
# 133 "parsessh.h"
 YYSTYPE;





extern YYSTYPE sshlval;
# 36 "lexssh.l" 2




extern int strip_level;



int sshlex (void);
void ssherror (const char *);


void sshlex_initialize (void);


static struct obstack string_stack;


const char * sshfilename;
# 1085 "lexssh.c"
# 1102 "lexssh.c"
static int yy_init_globals (void );
# 1112 "lexssh.c"
extern int sshwrap (void );



    static void yyunput (int c,char *buf_ptr );
# 1131 "lexssh.c"
static int input (void );
# 1211 "lexssh.c"
extern int sshlex (void);
# 1233 "lexssh.c"
int sshlex (void)
{
 register yy_state_type yy_current_state;
 register char *yy_cp, *yy_bp;
 register int yy_act;
# 78 "lexssh.l"
# 1243 "lexssh.c"

 if ( !(yy_init) )
  {
  (yy_init) = 1;





  if ( ! (yy_start) )
   (yy_start) = 1;

  if ( ! sshin )
   sshin = stdin;

  if ( ! sshout )
   sshout = stdout;

  if ( ! ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) ) {
   sshensure_buffer_stack ();
   (yy_buffer_stack)[(yy_buffer_stack_top)] =
    ssh_create_buffer(sshin,16384 );
  }

  ssh_load_buffer_state( );
  }

 while ( 1 )
  {
  yy_cp = (yy_c_buf_p);


  *yy_cp = (yy_hold_char);




  yy_bp = yy_cp;

  yy_current_state = (yy_start);
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
    if ( yy_current_state >= 901 )
     yy_c = yy_meta[(unsigned int) yy_c];
    }
   yy_current_state = yy_nxt[yy_base[yy_current_state] + (unsigned int) yy_c];
   ++yy_cp;
   }
  while ( yy_base[yy_current_state] != 1013 );

yy_find_action:
  yy_act = yy_accept[yy_current_state];
  if ( yy_act == 0 )
   {
   yy_cp = (yy_last_accepting_cpos);
   yy_current_state = (yy_last_accepting_state);
   yy_act = yy_accept[yy_current_state];
   }

  (sshtext) = yy_bp; sshleng = (size_t) (yy_cp - yy_bp); (yy_hold_char) = *yy_cp; *yy_cp = '\0'; (yy_c_buf_p) = yy_cp;;

  if ( yy_act != 218 && yy_rule_can_match_eol[yy_act] )
   {
   int yyl;
   for ( yyl = 0; yyl < sshleng; ++yyl )
    if ( sshtext[yyl] == '\n' )

    sshlineno++;
;
   }

do_action:

  switch ( yy_act )
 {
   case 0:

   *yy_cp = (yy_hold_char);
   yy_cp = (yy_last_accepting_cpos);
   yy_current_state = (yy_last_accepting_state);
   goto yy_find_action;

case 1:
# 80 "lexssh.l"
{ ; }
 break;
case 2:
# 81 "lexssh.l"
{ ; }
 break;
case 3:
# 83 "lexssh.l"
{ (yy_start) = 1 + 2 * 1; }
 break;
case 4:
# 84 "lexssh.l"
{ (yy_start) = 1 + 2 * 2; }
 break;
case 5:
# 86 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\042") ; return 286 ;;
 break;
case 6:
# 87 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\044") ; return 286 ;;
 break;
case 7:
# 88 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\047") ; return 286 ;;
 break;
case 8:
# 89 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\100") ; return 286 ;;
 break;
case 9:
# 90 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\101") ; return 286 ;;
 break;
case 10:
# 91 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\102") ; return 286 ;;
 break;
case 11:
# 92 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\103") ; return 286 ;;
 break;
case 12:
# 93 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\104") ; return 286 ;;
 break;
case 13:
# 94 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\105") ; return 286 ;;
 break;
case 14:
# 95 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\106") ; return 286 ;;
 break;
case 15:
# 96 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\107") ; return 286 ;;
 break;
case 16:
# 97 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\110") ; return 286 ;;
 break;
case 17:
# 98 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\111") ; return 286 ;;
 break;
case 18:
# 99 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\112") ; return 286 ;;
 break;
case 19:
# 100 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\113") ; return 286 ;;
 break;
case 20:
# 101 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\114") ; return 286 ;;
 break;
case 21:
# 102 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\115") ; return 286 ;;
 break;
case 22:
# 103 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\116") ; return 286 ;;
 break;
case 23:
# 104 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\117") ; return 286 ;;
 break;
case 24:
# 105 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\120") ; return 286 ;;
 break;
case 25:
# 106 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\121") ; return 286 ;;
 break;
case 26:
# 107 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\122") ; return 286 ;;
 break;
case 27:
# 108 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\123") ; return 286 ;;
 break;
case 28:
# 109 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\124") ; return 286 ;;
 break;
case 29:
# 110 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\125") ; return 286 ;;
 break;
case 30:
# 111 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\126") ; return 286 ;;
 break;
case 31:
# 112 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\127") ; return 286 ;;
 break;
case 32:
# 113 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\130") ; return 286 ;;
 break;
case 33:
# 114 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\131") ; return 286 ;;
 break;
case 34:
# 115 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\132") ; return 286 ;;
 break;
case 35:
# 116 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\134") ; return 286 ;;
 break;
case 36:
# 117 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\136") ; return 286 ;;
 break;
case 37:
# 118 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\140") ; return 286 ;;
 break;
case 38:
# 119 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\141") ; return 286 ;;
 break;
case 39:
# 120 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\142") ; return 286 ;;
 break;
case 40:
# 121 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\143") ; return 286 ;;
 break;
case 41:
# 122 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\144") ; return 286 ;;
 break;
case 42:
# 123 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\145") ; return 286 ;;
 break;
case 43:
# 124 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\146") ; return 286 ;;
 break;
case 44:
# 125 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\147") ; return 286 ;;
 break;
case 45:
# 126 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\150") ; return 286 ;;
 break;
case 46:
# 127 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\151") ; return 286 ;;
 break;
case 47:
# 128 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\152") ; return 286 ;;
 break;
case 48:
# 129 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\153") ; return 286 ;;
 break;
case 49:
# 130 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\154") ; return 286 ;;
 break;
case 50:
# 131 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\155") ; return 286 ;;
 break;
case 51:
# 132 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\156") ; return 286 ;;
 break;
case 52:
# 133 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\157") ; return 286 ;;
 break;
case 53:
# 134 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\160") ; return 286 ;;
 break;
case 54:
# 135 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\161") ; return 286 ;;
 break;
case 55:
# 136 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\162") ; return 286 ;;
 break;
case 56:
# 137 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\163") ; return 286 ;;
 break;
case 57:
# 138 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\164") ; return 286 ;;
 break;
case 58:
# 139 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\165") ; return 286 ;;
 break;
case 59:
# 140 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\166") ; return 286 ;;
 break;
case 60:
# 141 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\167") ; return 286 ;;
 break;
case 61:
# 142 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\170") ; return 286 ;;
 break;
case 62:
# 143 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\171") ; return 286 ;;
 break;
case 63:
# 144 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\172") ; return 286 ;;
 break;
case 64:
# 145 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\176") ; return 286 ;;
 break;
case 65:
# 146 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\241") ; return 286 ;;
 break;
case 66:
# 147 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\242") ; return 286 ;;
 break;
case 67:
# 148 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\243") ; return 286 ;;
 break;
case 68:
# 149 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\245") ; return 286 ;;
 break;
case 69:
# 150 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\246") ; return 286 ;;
 break;
case 70:
# 151 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\247") ; return 286 ;;
 break;
case 71:
# 152 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\250") ; return 286 ;;
 break;
case 72:
# 153 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\251") ; return 286 ;;
 break;
case 73:
# 154 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\252") ; return 286 ;;
 break;
case 74:
# 155 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\253") ; return 286 ;;
 break;
case 75:
# 156 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\254") ; return 286 ;;
 break;
case 76:
# 157 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\255") ; return 286 ;;
 break;
case 77:
# 158 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\256") ; return 286 ;;
 break;
case 78:
# 159 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\257") ; return 286 ;;
 break;
case 79:
# 160 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\260") ; return 286 ;;
 break;
case 80:
# 161 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\261") ; return 286 ;;
 break;
case 81:
# 162 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\263") ; return 286 ;;
 break;
case 82:
# 163 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\264") ; return 286 ;;
 break;
case 83:
# 164 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\265") ; return 286 ;;
 break;
case 84:
# 165 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\266") ; return 286 ;;
 break;
case 85:
# 166 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\267") ; return 286 ;;
 break;
case 86:
# 167 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\270") ; return 286 ;;
 break;
case 87:
# 168 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\271") ; return 286 ;;
 break;
case 88:
# 169 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\272") ; return 286 ;;
 break;
case 89:
# 170 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\273") ; return 286 ;;
 break;
case 90:
# 171 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\274") ; return 286 ;;
 break;
case 91:
# 172 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\276") ; return 286 ;;
 break;
case 92:
# 173 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\277") ; return 286 ;;
 break;
case 93:
# 174 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\300") ; return 286 ;;
 break;
case 94:
# 175 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\301") ; return 286 ;;
 break;
case 95:
# 176 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\302") ; return 286 ;;
 break;
case 96:
# 177 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\303") ; return 286 ;;
 break;
case 97:
# 178 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\304") ; return 286 ;;
 break;
case 98:
# 179 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\305") ; return 286 ;;
 break;
case 99:
# 180 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\306") ; return 286 ;;
 break;
case 100:
# 181 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\307") ; return 286 ;;
 break;
case 101:
# 182 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\310") ; return 286 ;;
 break;
case 102:
# 183 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\311") ; return 286 ;;
 break;
case 103:
# 184 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\312") ; return 286 ;;
 break;
case 104:
# 185 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\313") ; return 286 ;;
 break;
case 105:
# 186 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\314") ; return 286 ;;
 break;
case 106:
# 187 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\315") ; return 286 ;;
 break;
case 107:
# 188 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\316") ; return 286 ;;
 break;
case 108:
# 189 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\317") ; return 286 ;;
 break;
case 109:
# 190 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\320") ; return 286 ;;
 break;
case 110:
# 191 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\321") ; return 286 ;;
 break;
case 111:
# 192 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\322") ; return 286 ;;
 break;
case 112:
# 193 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\324") ; return 286 ;;
 break;
case 113:
# 194 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\324") ; return 286 ;;
 break;
case 114:
# 195 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\325") ; return 286 ;;
 break;
case 115:
# 196 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\326") ; return 286 ;;
 break;
case 116:
# 197 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\327") ; return 286 ;;
 break;
case 117:
# 198 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\330") ; return 286 ;;
 break;
case 118:
# 199 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\331") ; return 286 ;;
 break;
case 119:
# 200 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\332") ; return 286 ;;
 break;
case 120:
# 201 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\333") ; return 286 ;;
 break;
case 121:
# 202 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\334") ; return 286 ;;
 break;
case 122:
# 203 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\335") ; return 286 ;;
 break;
case 123:
# 204 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\336") ; return 286 ;;
 break;
case 124:
# 205 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\337") ; return 286 ;;
 break;
case 125:
# 206 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\340") ; return 286 ;;
 break;
case 126:
# 207 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\341") ; return 286 ;;
 break;
case 127:
# 208 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\342") ; return 286 ;;
 break;
case 128:
# 209 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\342") ; return 286 ;;
 break;
case 129:
# 210 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\344") ; return 286 ;;
 break;
case 130:
# 211 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\345") ; return 286 ;;
 break;
case 131:
# 212 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\351") ; return 286 ;;
 break;
case 132:
# 213 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\353") ; return 286 ;;
 break;
case 133:
# 214 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\361") ; return 286 ;;
 break;
case 134:
# 215 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\362") ; return 286 ;;
 break;
case 135:
# 216 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\371") ; return 286 ;;
 break;
case 136:
# 217 "lexssh.l"
sshlval.string = (unsigned char *) xstrdup ("\373") ; return 286 ;;
 break;
case 137:
# 219 "lexssh.l"
{
  int value = sshtext[1] - '0';
  char *cursor = sshtext + 2;

  while (*cursor)
    value = 8 * value + *cursor++ - '0';
  sshlval.integer = value;
  return 289;
}
 break;
case 138:
# 229 "lexssh.l"
return 281;
 break;
case 139:
# 230 "lexssh.l"
return 268;
 break;
case 140:
# 231 "lexssh.l"
return 269;
 break;
case 141:
# 232 "lexssh.l"
return 282;
 break;
case 142:
# 233 "lexssh.l"
return 262;
 break;
case 143:
# 234 "lexssh.l"
return 278;
 break;
case 144:
# 235 "lexssh.l"
return 272;
 break;
case 145:
# 236 "lexssh.l"
return 276;
 break;
case 146:
# 237 "lexssh.l"
return 274;
 break;
case 147:
# 238 "lexssh.l"
return 273;
 break;
case 148:
# 239 "lexssh.l"
return 270;
 break;
case 149:
# 240 "lexssh.l"
return 260;
 break;
case 150:
# 241 "lexssh.l"
return 271;
 break;
case 151:
# 242 "lexssh.l"
return 266;
 break;
case 152:
# 243 "lexssh.l"
return 263;
 break;
case 153:
# 244 "lexssh.l"
{ sshlval.sensitiveness = case_insensitive ;
     return 288;
  }
 break;
case 154:
# 247 "lexssh.l"
return 259;
 break;
case 155:
# 248 "lexssh.l"
return 261;
 break;
case 156:
# 249 "lexssh.l"
return 280;
 break;
case 157:
# 250 "lexssh.l"
return 267;
 break;
case 158:
# 251 "lexssh.l"
{ sshlval.sensitiveness = case_sensitive ;
           return 288;
  }
 break;
case 159:
# 254 "lexssh.l"
return 264;
 break;
case 160:
# 255 "lexssh.l"
return 275;
 break;
case 161:
# 256 "lexssh.l"
return 265;
 break;
case 162:
# 257 "lexssh.l"
return 258;
 break;
case 163:
# 258 "lexssh.l"
return 279;
 break;
case 164:
# 259 "lexssh.l"
return 277;
 break;
case 165:
# 261 "lexssh.l"
{sshlval.face = Plain ; return 283 ;}
 break;
case 166:
# 262 "lexssh.l"
{sshlval.face = Keyword ; return 283 ;}
 break;
case 167:
# 263 "lexssh.l"
{sshlval.face = Keyword_strong ; return 283 ;}
 break;
case 168:
# 264 "lexssh.l"
{sshlval.face = Error ; return 283 ;}
 break;
case 169:
# 265 "lexssh.l"
{sshlval.face = Label ; return 283 ;}
 break;
case 170:
# 266 "lexssh.l"
{sshlval.face = Label_strong ; return 283 ;}
 break;
case 171:
# 267 "lexssh.l"
{sshlval.face = String ; return 283 ;}
 break;
case 172:
# 268 "lexssh.l"
{sshlval.face = Symbol ; return 283 ;}
 break;
case 173:
# 269 "lexssh.l"
{
    if ((strip_level == 1) || (strip_level == 3))
      {sshlval.fflags = ff_Invisible ; return 284 ;}
    else
      {sshlval.face = Comment ; return 283 ;}
  }
 break;
case 174:
# 275 "lexssh.l"
{
    if ((strip_level == 2) || (strip_level == 3))
      {sshlval.fflags = ff_Invisible ; return 284 ;}
    else
      {sshlval.face = Comment_strong ; return 283 ;}
  }
 break;
case 175:
# 282 "lexssh.l"
{sshlval.fflags = ff_Tag1 ; return 284 ;}
 break;
case 176:
# 283 "lexssh.l"
{sshlval.fflags = ff_Tag2 ; return 284 ;}
 break;
case 177:
# 284 "lexssh.l"
{sshlval.fflags = ff_Tag3 ; return 284 ;}
 break;
case 178:
# 285 "lexssh.l"
{sshlval.fflags = ff_Tag4 ; return 284 ;}
 break;
case 179:
# 286 "lexssh.l"
{sshlval.fflags = ff_Index1 ; return 284 ;}
 break;
case 180:
# 287 "lexssh.l"
{sshlval.fflags = ff_Index2 ; return 284 ;}
 break;
case 181:
# 288 "lexssh.l"
{sshlval.fflags = ff_Index3 ; return 284 ;}
 break;
case 182:
# 289 "lexssh.l"
{sshlval.fflags = ff_Index4 ; return 284 ;}
 break;
case 183:
# 290 "lexssh.l"
{sshlval.fflags = ff_Encoding ; return 284 ;}
 break;
case 184:
# 291 "lexssh.l"
{sshlval.fflags = ff_Invisible ; return 284 ;}
 break;
case 185:
# 293 "lexssh.l"
{ sshlval.string = ((unsigned char *) xstrdup((const char *)(sshtext)));
     return 285;
  }
 break;
case 186:
# 297 "lexssh.l"
{ return sshtext[0]; }
 break;

case 187:
# 300 "lexssh.l"
{
    unsigned char * string;

    __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\0'); (void) 0; });
    string = (unsigned char *) __extension__ ({ struct obstack *__o1 = (&string_stack); void *value; value = (void *) __o1->object_base; if (__o1->next_free == value) __o1->maybe_empty_object = 1; __o1->next_free = (((((__o1->next_free) - (char *) 0)+__o1->alignment_mask) & ~ (__o1->alignment_mask)) + (char *) 0); if (__o1->next_free - (char *)__o1->chunk > __o1->chunk_limit - (char *)__o1->chunk) __o1->next_free = __o1->chunk_limit; __o1->object_base = __o1->next_free; value; });

    __extension__ ({ struct obstack *__o = (&string_stack); void *__obj = (string); if (__obj > (void *)__o->chunk && __obj < (void *)__o->chunk_limit) __o->next_free = __o->object_base = __obj; else (obstack_free) (__o, __obj); });

    (yy_start) = 1 + 2 * 0;
    sshlval.string = ((unsigned char *) xstrdup((const char *)(string)));
    return 285;
  }
 break;
case 188:
# 313 "lexssh.l"
{
    int value = sshtext[1] - '0';
    char *cursor = sshtext + 2;

    while (*cursor)
      value = 8 * value + *cursor++ - '0';
    __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = (value); (void) 0; });
  }
 break;
case 189:
# 322 "lexssh.l"
{
    int value = 0;
    char *cursor = sshtext + 2;

    while (*cursor)
      if (*cursor >= 'a' && *cursor <= 'f')
 value = 16 * value + *cursor++ - 'a' + 10;
      else if (*cursor >= 'A' && *cursor <= 'F')
 value = 16 * value + *cursor++ - 'A' + 10;
      else
 value = 16 * value + *cursor++ - '0';
    __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = (value); (void) 0; });
  }
 break;
case 190:
# 336 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\007'); (void) 0; }); }
 break;
case 191:
# 337 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\b'); (void) 0; }); }
 break;
case 192:
# 338 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = (127); (void) 0; }); }
 break;
case 193:
# 339 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = (27); (void) 0; }); }
 break;
case 194:
# 340 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\f'); (void) 0; }); }
 break;
case 195:
# 341 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\n'); (void) 0; }); }
 break;
case 196:
# 342 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\r'); (void) 0; }); }
 break;
case 197:
# 343 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\t'); (void) 0; }); }
 break;
case 198:
# 344 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\v'); (void) 0; }); }
 break;
case 199:
# 345 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = (sshtext[1]); (void) 0; }); }
 break;
case 200:
# 347 "lexssh.l"
{
    ssherror (gettext ("end-of-line in string constant"));
  }
 break;
case 201:
# 351 "lexssh.l"
{
    __extension__ ({ struct obstack *__o = (&string_stack); int __len = (sshleng); if (__o->next_free + __len > __o->chunk_limit) _obstack_newchunk (__o, __len); memcpy ((__o->next_free), ((char *) (sshtext)), (__len)); __o->next_free += __len; (void) 0; });
  }
 break;


case 202:
# 357 "lexssh.l"
{
    char * pattern;
    int pattern_len;


    __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\0'); (void) 0; });
    pattern_len = __extension__ ({ struct obstack *__o = (&string_stack); (unsigned) (__o->next_free - __o->object_base); });
    pattern = (char *) __extension__ ({ struct obstack *__o1 = (&string_stack); void *value; value = (void *) __o1->object_base; if (__o1->next_free == value) __o1->maybe_empty_object = 1; __o1->next_free = (((((__o1->next_free) - (char *) 0)+__o1->alignment_mask) & ~ (__o1->alignment_mask)) + (char *) 0); if (__o1->next_free - (char *)__o1->chunk > __o1->chunk_limit - (char *)__o1->chunk) __o1->next_free = __o1->chunk_limit; __o1->object_base = __o1->next_free; value; });
    __extension__ ({ struct obstack *__o = (&string_stack); void *__obj = (pattern); if (__obj > (void *)__o->chunk && __obj < (void *)__o->chunk_limit) __o->next_free = __o->object_base = __obj; else (obstack_free) (__o, __obj); });

    sshlval.pattern = ((struct pattern *) xmalloc (sizeof (struct pattern) * (1)));



    sshlval.pattern->len = pattern_len - 1;
    sshlval.pattern->pattern = ((char *) xmalloc (sizeof (char) * (pattern_len)));
    memcpy (sshlval.pattern->pattern, pattern, pattern_len);

    (yy_start) = 1 + 2 * 0;
    return 287;
  }
 break;
case 203:
# 379 "lexssh.l"
{
    int value = sshtext[1] - '0';
    char *cursor = sshtext + 2;

    while (*cursor)
      value = 8 * value + *cursor++ - '0';
    __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = (value); (void) 0; });
  }
 break;
case 204:
# 388 "lexssh.l"
{
    int value = 0;
    char *cursor = sshtext + 2;

    while (*cursor)
      if (*cursor >= 'a' && *cursor <= 'f')
 value = 16 * value + *cursor++ - 'a' + 10;
      else if (*cursor >= 'A' && *cursor <= 'F')
 value = 16 * value + *cursor++ - 'A' + 10;
      else
 value = 16 * value + *cursor++ - '0';
    __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = (value); (void) 0; });
  }
 break;
case 205:
# 402 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\007'); (void) 0; }); }
 break;
case 206:
# 403 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\b'); (void) 0; }); }
 break;
case 207:
# 404 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = (127); (void) 0; }); }
 break;
case 208:
# 405 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = (27); (void) 0; }); }
 break;
case 209:
# 406 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\f'); (void) 0; }); }
 break;
case 210:
# 407 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\n'); (void) 0; }); }
 break;
case 211:
# 408 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\r'); (void) 0; }); }
 break;
case 212:
# 409 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\t'); (void) 0; }); }
 break;
case 213:
# 410 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = ('\v'); (void) 0; }); }
 break;
case 214:
# 411 "lexssh.l"
{ __extension__ ({ struct obstack *__o = (&string_stack); if (__o->next_free + 1 > __o->chunk_limit) _obstack_newchunk (__o, 1); *(__o->next_free)++ = (sshtext[1]); (void) 0; }); }
 break;
case 215:
# 413 "lexssh.l"
{
    error_at_line (1, 0, sshfilename, sshlineno,
     gettext ("end of line inside a %s"), "\"..\"");
  }
 break;
case 216:
# 418 "lexssh.l"
{
    __extension__ ({ struct obstack *__o = (&string_stack); int __len = (sshleng); if (__o->next_free + __len > __o->chunk_limit) _obstack_newchunk (__o, __len); memcpy ((__o->next_free), ((char *) (sshtext)), (__len)); __o->next_free += __len; (void) 0; });
  }
 break;

case 217:
# 423 "lexssh.l"
(void) fwrite( sshtext, sshleng, 1, sshout );
 break;
# 2530 "lexssh.c"
case (218 + 0 + 1):
case (218 + 1 + 1):
case (218 + 2 + 1):
 return 0;

 case 218:
  {

  int yy_amount_of_matched_text = (int) (yy_cp - (sshtext)) - 1;


  *yy_cp = (yy_hold_char);


  if ( (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buffer_status == 0 )
   {
# 2555 "lexssh.c"
   (yy_n_chars) = (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_n_chars;
   (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_input_file = sshin;
   (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buffer_status = 1;
   }
# 2567 "lexssh.c"
  if ( (yy_c_buf_p) <= &(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[(yy_n_chars)] )
   {
   yy_state_type yy_next_state;

   (yy_c_buf_p) = (sshtext) + yy_amount_of_matched_text;

   yy_current_state = yy_get_previous_state( );
# 2584 "lexssh.c"
   yy_next_state = yy_try_NUL_trans( yy_current_state );

   yy_bp = (sshtext) + 0;

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

    if ( sshwrap( ) )
     {
# 2620 "lexssh.c"
     (yy_c_buf_p) = (sshtext) + 0;

     yy_act = (218 + (((yy_start) - 1) / 2) + 1);
     goto do_action;
     }

    else
     {
     if ( ! (yy_did_buffer_switch_on_eof) )
      sshrestart(sshin );
     }
    break;
    }

   case 0:
    (yy_c_buf_p) =
     (sshtext) + yy_amount_of_matched_text;

    yy_current_state = yy_get_previous_state( );

    yy_cp = (yy_c_buf_p);
    yy_bp = (sshtext) + 0;
    goto yy_match;

   case 2:
    (yy_c_buf_p) =
    &(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[(yy_n_chars)];

    yy_current_state = yy_get_previous_state( );

    yy_cp = (yy_c_buf_p);
    yy_bp = (sshtext) + 0;
    goto yy_find_action;
   }
  break;
  }

 default:
  yy_fatal_error( "fatal flex scanner internal error--no action found" );

 }
  }
}
# 2671 "lexssh.c"
static int yy_get_next_buffer (void)
{
     register char *dest = (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf;
 register char *source = (sshtext);
 register int number_to_move, i;
 int ret_val;

 if ( (yy_c_buf_p) > &(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[(yy_n_chars) + 1] )
  yy_fatal_error( "fatal flex scanner internal error--end of buffer missed" );


 if ( (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_fill_buffer == 0 )
  {
  if ( (yy_c_buf_p) - (sshtext) - 0 == 1 )
   {



   return 1;
   }

  else
   {



   return 2;
   }
  }




 number_to_move = (int) ((yy_c_buf_p) - (sshtext)) - 1;

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

     sshrealloc((void *) b->yy_ch_buf,b->yy_buf_size + 2 );
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


  if ( (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_is_interactive ) { int c = '*'; size_t n; for ( n = 0; n < (size_t) num_to_read && (c = _IO_getc (sshin)) != (-1) && c != '\n'; ++n ) (&(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[number_to_move])[n] = (char) c; if ( c == '\n' ) (&(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[number_to_move])[n++] = (char) c; if ( c == (-1) && ferror( sshin ) ) yy_fatal_error( "input in flex scanner failed" ); (yy_n_chars) = n; } else { (*__errno_location ())=0; while ( ((yy_n_chars) = fread((&(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[number_to_move]), 1, (size_t) num_to_read, sshin))==0 && ferror(sshin)) { if( (*__errno_location ()) != 4) { yy_fatal_error( "input in flex scanner failed" ); break; } (*__errno_location ())=0; clearerr(sshin); } };


  (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_n_chars = (yy_n_chars);
  }

 if ( (yy_n_chars) == 0 )
  {
  if ( number_to_move == 0 )
   {
   ret_val = 1;
   sshrestart(sshin );
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

 (sshtext) = &(yy_buffer_stack)[(yy_buffer_stack_top)]->yy_ch_buf[0];

 return ret_val;
}



    static yy_state_type yy_get_previous_state (void)
{
 register yy_state_type yy_current_state;
 register char *yy_cp;

 yy_current_state = (yy_start);

 for ( yy_cp = (sshtext) + 0; yy_cp < (yy_c_buf_p); ++yy_cp )
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
   if ( yy_current_state >= 901 )
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
  if ( yy_current_state >= 901 )
   yy_c = yy_meta[(unsigned int) yy_c];
  }
 yy_current_state = yy_nxt[yy_base[yy_current_state] + (unsigned int) yy_c];
 yy_is_jam = (yy_current_state == 900);

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

    if ( c == '\n' ){
        --sshlineno;
    }

 (sshtext) = yy_bp;
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
   int offset = (yy_c_buf_p) - (sshtext);
   ++(yy_c_buf_p);

   switch ( yy_get_next_buffer( ) )
    {
    case 2:
# 2934 "lexssh.c"
     sshrestart(sshin );



    case 1:
     {
     if ( sshwrap( ) )
      return (-1);

     if ( ! (yy_did_buffer_switch_on_eof) )
      sshrestart(sshin );



     return input();

     }

    case 0:
     (yy_c_buf_p) = (sshtext) + offset;
     break;
    }
   }
  }

 c = *(unsigned char *) (yy_c_buf_p);
 *(yy_c_buf_p) = '\0';
 (yy_hold_char) = *++(yy_c_buf_p);

 if ( c == '\n' )

    sshlineno++;
;

 return c;
}







    void sshrestart (FILE * input_file )
{

 if ( ! ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) ){
        sshensure_buffer_stack ();
  (yy_buffer_stack)[(yy_buffer_stack_top)] =
            ssh_create_buffer(sshin,16384 );
 }

 ssh_init_buffer(( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)),input_file );
 ssh_load_buffer_state( );
}





    void ssh_switch_to_buffer (YY_BUFFER_STATE new_buffer )
{






 sshensure_buffer_stack ();
 if ( ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) == new_buffer )
  return;

 if ( ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) )
  {

  *(yy_c_buf_p) = (yy_hold_char);
  (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buf_pos = (yy_c_buf_p);
  (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_n_chars = (yy_n_chars);
  }

 (yy_buffer_stack)[(yy_buffer_stack_top)] = new_buffer;
 ssh_load_buffer_state( );






 (yy_did_buffer_switch_on_eof) = 1;
}

static void ssh_load_buffer_state (void)
{
     (yy_n_chars) = (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_n_chars;
 (sshtext) = (yy_c_buf_p) = (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buf_pos;
 sshin = (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_input_file;
 (yy_hold_char) = *(yy_c_buf_p);
}







    YY_BUFFER_STATE ssh_create_buffer (FILE * file, int size )
{
 YY_BUFFER_STATE b;

 b = (YY_BUFFER_STATE) sshalloc(sizeof( struct yy_buffer_state ) );
 if ( ! b )
  yy_fatal_error( "out of dynamic memory in ssh_create_buffer()" );

 b->yy_buf_size = size;




 b->yy_ch_buf = (char *) sshalloc(b->yy_buf_size + 2 );
 if ( ! b->yy_ch_buf )
  yy_fatal_error( "out of dynamic memory in ssh_create_buffer()" );

 b->yy_is_our_buffer = 1;

 ssh_init_buffer(b,file );

 return b;
}





    void ssh_delete_buffer (YY_BUFFER_STATE b )
{

 if ( ! b )
  return;

 if ( b == ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) )
  (yy_buffer_stack)[(yy_buffer_stack_top)] = (YY_BUFFER_STATE) 0;

 if ( b->yy_is_our_buffer )
  sshfree((void *) b->yy_ch_buf );

 sshfree((void *) b );
}


extern int isatty (int );






    static void ssh_init_buffer (YY_BUFFER_STATE b, FILE * file )

{
 int oerrno = (*__errno_location ());

 ssh_flush_buffer(b );

 b->yy_input_file = file;
 b->yy_fill_buffer = 1;





    if (b != ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0))){
        b->yy_bs_lineno = 1;
        b->yy_bs_column = 0;
    }

        b->yy_is_interactive = file ? (isatty( fileno(file) ) > 0) : 0;

 (*__errno_location ()) = oerrno;
}





    void ssh_flush_buffer (YY_BUFFER_STATE b )
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
  ssh_load_buffer_state( );
}







void sshpush_buffer_state (YY_BUFFER_STATE new_buffer )
{
     if (new_buffer == ((void*)0))
  return;

 sshensure_buffer_stack();


 if ( ( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) )
  {

  *(yy_c_buf_p) = (yy_hold_char);
  (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_buf_pos = (yy_c_buf_p);
  (yy_buffer_stack)[(yy_buffer_stack_top)]->yy_n_chars = (yy_n_chars);
  }


 if (( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)))
  (yy_buffer_stack_top)++;
 (yy_buffer_stack)[(yy_buffer_stack_top)] = new_buffer;


 ssh_load_buffer_state( );
 (yy_did_buffer_switch_on_eof) = 1;
}





void sshpop_buffer_state (void)
{
     if (!( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)))
  return;

 ssh_delete_buffer(( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) );
 (yy_buffer_stack)[(yy_buffer_stack_top)] = ((void*)0);
 if ((yy_buffer_stack_top) > 0)
  --(yy_buffer_stack_top);

 if (( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0))) {
  ssh_load_buffer_state( );
  (yy_did_buffer_switch_on_eof) = 1;
 }
}




static void sshensure_buffer_stack (void)
{
 int num_to_alloc;

 if (!(yy_buffer_stack)) {





  num_to_alloc = 1;
  (yy_buffer_stack) = (struct yy_buffer_state**)sshalloc
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
  (yy_buffer_stack) = (struct yy_buffer_state**)sshrealloc
        ((yy_buffer_stack),
        num_to_alloc * sizeof(struct yy_buffer_state*)
        );


  memset((yy_buffer_stack) + (yy_buffer_stack_max), 0, grow_size * sizeof(struct yy_buffer_state*));
  (yy_buffer_stack_max) = num_to_alloc;
 }
}







YY_BUFFER_STATE ssh_scan_buffer (char * base, yy_size_t size )
{
 YY_BUFFER_STATE b;

 if ( size < 2 ||
      base[size-2] != 0 ||
      base[size-1] != 0 )

  return 0;

 b = (YY_BUFFER_STATE) sshalloc(sizeof( struct yy_buffer_state ) );
 if ( ! b )
  yy_fatal_error( "out of dynamic memory in ssh_scan_buffer()" );

 b->yy_buf_size = size - 2;
 b->yy_buf_pos = b->yy_ch_buf = base;
 b->yy_is_our_buffer = 0;
 b->yy_input_file = 0;
 b->yy_n_chars = b->yy_buf_size;
 b->yy_is_interactive = 0;
 b->yy_at_bol = 1;
 b->yy_fill_buffer = 0;
 b->yy_buffer_status = 0;

 ssh_switch_to_buffer(b );

 return b;
}
# 3278 "lexssh.c"
YY_BUFFER_STATE ssh_scan_string (const char * yystr )
{

 return ssh_scan_bytes(yystr,strlen(yystr) );
}
# 3291 "lexssh.c"
YY_BUFFER_STATE ssh_scan_bytes (const char * yybytes, int _yybytes_len )
{
 YY_BUFFER_STATE b;
 char *buf;
 yy_size_t n;
 int i;


 n = _yybytes_len + 2;
 buf = (char *) sshalloc(n );
 if ( ! buf )
  yy_fatal_error( "out of dynamic memory in ssh_scan_bytes()" );

 for ( i = 0; i < _yybytes_len; ++i )
  buf[i] = yybytes[i];

 buf[_yybytes_len] = buf[_yybytes_len+1] = 0;

 b = ssh_scan_buffer(buf,n );
 if ( ! b )
  yy_fatal_error( "bad buffer in ssh_scan_bytes()" );




 b->yy_is_our_buffer = 1;

 return b;
}





static void yy_fatal_error (const char* msg )
{
     (void) fprintf( stderr, "%s\n", msg );
 exit( 2 );
}
# 3353 "lexssh.c"
int sshget_lineno (void)
{

    return sshlineno;
}




FILE *sshget_in (void)
{
        return sshin;
}




FILE *sshget_out (void)
{
        return sshout;
}




int sshget_leng (void)
{
        return sshleng;
}





char *sshget_text (void)
{
        return sshtext;
}





void sshset_lineno (int line_number )
{

    sshlineno = line_number;
}







void sshset_in (FILE * in_str )
{
        sshin = in_str ;
}

void sshset_out (FILE * out_str )
{
        sshout = out_str ;
}

int sshget_debug (void)
{
        return ssh_flex_debug;
}

void sshset_debug (int bdebug )
{
        ssh_flex_debug = bdebug ;
}

static int yy_init_globals (void)
{





    sshlineno = 1;

    (yy_buffer_stack) = 0;
    (yy_buffer_stack_top) = 0;
    (yy_buffer_stack_max) = 0;
    (yy_c_buf_p) = (char *) 0;
    (yy_init) = 0;
    (yy_start) = 0;






    sshin = (FILE *) 0;
    sshout = (FILE *) 0;





    return 0;
}


int sshlex_destroy (void)
{


 while(( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0))){
  ssh_delete_buffer(( (yy_buffer_stack) ? (yy_buffer_stack)[(yy_buffer_stack_top)] : ((void*)0)) );
  (yy_buffer_stack)[(yy_buffer_stack_top)] = ((void*)0);
  sshpop_buffer_state();
 }


 sshfree((yy_buffer_stack) );
 (yy_buffer_stack) = ((void*)0);



    yy_init_globals( );

    return 0;
}
# 3505 "lexssh.c"
void *sshalloc (yy_size_t size )
{
 return (void *) malloc( size );
}

void *sshrealloc (void * ptr, yy_size_t size )
{







 return (void *) realloc( (char *) ptr, size );
}

void sshfree (void * ptr )
{
 free( (char *) ptr );
}
# 423 "lexssh.l"



int
sshwrap (void)
{
  return 1;
}




void
sshlex_initialize (void)
{
  static int first_time = 1;
  if (first_time)
    {
      first_time = 0;
      _obstack_begin ((&string_stack), 0, 0, (void *(*) (long)) xmalloc, (void (*) (void *)) free);
    }
}
