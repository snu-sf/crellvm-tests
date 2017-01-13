# 1 "fli.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 317 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "fli.c" 2
# 26 "fli.c"
# 1 "../../config.h" 1
# 27 "fli.c" 2

# 1 "/usr/include/string.h" 1 3 4
# 25 "/usr/include/string.h" 3 4
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
# 26 "/usr/include/string.h" 2 3 4






# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 62 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
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
# 29 "fli.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 33 "/usr/include/stdio.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
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
# 30 "fli.c" 2

# 1 "./fli.h" 1
# 23 "./fli.h"
typedef struct _fli_header {
 unsigned long filesize;
 unsigned short magic;
 unsigned short frames;
 unsigned short width;
 unsigned short height;
 unsigned short depth;
 unsigned short flags;
 unsigned long speed;
 unsigned long created;
 unsigned long creator;
 unsigned long updated;
 unsigned short aspect_x, aspect_y;
 unsigned long oframe1, oframe2;
} s_fli_header;

typedef struct _fli_frame {
 unsigned long size;
 unsigned short magic;
 unsigned short chunks;
} s_fli_frame;

typedef struct _fli_chunk {
 unsigned long size;
 unsigned short magic;
 unsigned char *data;
} s_fli_chunk;
# 79 "./fli.h"
void fli_read_header(FILE *f, s_fli_header *fli_header);
void fli_read_frame(FILE *f, s_fli_header *fli_header, unsigned char *old_framebuf, unsigned char *old_cmap, unsigned char *framebuf, unsigned char *cmap);

void fli_read_color(FILE *f, s_fli_header *fli_header, unsigned char *old_cmap, unsigned char *cmap);
void fli_read_color_2(FILE *f, s_fli_header *fli_header, unsigned char *old_cmap, unsigned char *cmap);
void fli_read_black(FILE *f, s_fli_header *fli_header, unsigned char *framebuf);
void fli_read_brun(FILE *f, s_fli_header *fli_header, unsigned char *framebuf);
void fli_read_copy(FILE *f, s_fli_header *fli_header, unsigned char *framebuf);
void fli_read_lc(FILE *f, s_fli_header *fli_header, unsigned char *old_framebuf, unsigned char *framebuf);
void fli_read_lc_2(FILE *f, s_fli_header *fli_header, unsigned char *old_framebuf, unsigned char *framebuf);

void fli_write_header(FILE *f, s_fli_header *fli_header);
void fli_write_frame(FILE *f, s_fli_header *fli_header, unsigned char *old_framebuf, unsigned char *old_cmap, unsigned char *framebuf, unsigned char *cmap, unsigned short codec_mask);

int fli_write_color(FILE *f, s_fli_header *fli_header, unsigned char *old_cmap, unsigned char *cmap);
int fli_write_color_2(FILE *f, s_fli_header *fli_header, unsigned char *old_cmap, unsigned char *cmap);
void fli_write_black(FILE *f, s_fli_header *fli_header, unsigned char *framebuf);
void fli_write_brun(FILE *f, s_fli_header *fli_header, unsigned char *framebuf);
void fli_write_copy(FILE *f, s_fli_header *fli_header, unsigned char *framebuf);
void fli_write_lc(FILE *f, s_fli_header *fli_header, unsigned char *old_framebuf, unsigned char *framebuf);
void fli_write_lc_2(FILE *f, s_fli_header *fli_header, unsigned char *old_framebuf, unsigned char *framebuf);
# 32 "fli.c" 2




static unsigned char fli_read_char(FILE *f)
{
 unsigned char b;
 fread(&b,1,1,f);
 return b;
}

static unsigned short fli_read_short(FILE *f)
{
 unsigned char b[2];
 fread(&b,1,2,f);
 return (unsigned short)(b[1]<<8) | b[0];
}

static unsigned long fli_read_long(FILE *f)
{
 unsigned char b[4];
 fread(&b,1,4,f);
 return (unsigned long)(b[3]<<24) | (b[2]<<16) | (b[1]<<8) | b[0];
}

static void fli_write_char(FILE *f, unsigned char b)
{
 fwrite(&b,1,1,f);
}

static void fli_write_short(FILE *f, unsigned short w)
{
 unsigned char b[2];
 b[0]=w&255;
 b[1]=(w>>8)&255;
 fwrite(&b,1,2,f);
}

static void fli_write_long(FILE *f, unsigned long l)
{
 unsigned char b[4];
 b[0]=l&255;
 b[1]=(l>>8)&255;
 b[2]=(l>>16)&255;
 b[3]=(l>>24)&255;
 fwrite(&b,1,4,f);
}

void fli_read_header(FILE *f, s_fli_header *fli_header)
{
 fli_header->filesize=fli_read_long(f);
 fli_header->magic=fli_read_short(f);
 fli_header->frames=fli_read_short(f);
 fli_header->width=fli_read_short(f);
 fli_header->height=fli_read_short(f);
 fli_header->depth=fli_read_short(f);
 fli_header->flags=fli_read_short(f);
 if (fli_header->magic == 0xAF11) {

  fli_header->speed=fli_read_short(f)*14;
 } else {
  if (fli_header->magic == 0xAF12) {

   fli_header->speed=fli_read_long(f);
  } else {
   fprintf(stderr, "error: magic number is wrong !\n");
   fli_header->magic = 0;
  }
 }

 if (fli_header->width == 0)
   fli_header->width = 320;

 if (fli_header->height == 0)
   fli_header->height = 200;
}

void fli_write_header(FILE *f, s_fli_header *fli_header)
{
 fli_header->filesize=ftell(f);
 fseek(f, 0, 0);
 fli_write_long(f, fli_header->filesize);
 fli_write_short(f, fli_header->magic);
 fli_write_short(f, fli_header->frames);
 fli_write_short(f, fli_header->width);
 fli_write_short(f, fli_header->height);
 fli_write_short(f, fli_header->depth);
 fli_write_short(f, fli_header->flags);
 if (fli_header->magic == 0xAF11) {

  fli_write_short(f, fli_header->speed / 14);
 } else {
  if (fli_header->magic == 0xAF12) {

   fli_write_long(f, fli_header->speed);
   fseek(f, 80, 0);
   fli_write_long(f, fli_header->oframe1);
   fli_write_long(f, fli_header->oframe2);
  } else {
   fprintf(stderr, "error: magic number in header is wrong !\n");
  }
 }
}

void fli_read_frame(FILE *f, s_fli_header *fli_header, unsigned char *old_framebuf, unsigned char *old_cmap, unsigned char *framebuf, unsigned char *cmap)
{
 s_fli_frame fli_frame;
 unsigned long framepos;
 int c;
 framepos=ftell(f);

 fli_frame.size=fli_read_long(f);
 fli_frame.magic=fli_read_short(f);
 fli_frame.chunks=fli_read_short(f);

 if (fli_frame.magic == 0xF1FA) {
  fseek(f, framepos+16, 0);
  for (c=0;c<fli_frame.chunks;c++) {
   s_fli_chunk chunk;
   unsigned long chunkpos;
   chunkpos = ftell(f);
   chunk.size=fli_read_long(f);
   chunk.magic=fli_read_short(f);
   switch (chunk.magic) {
    case 11: fli_read_color(f, fli_header, old_cmap, cmap); break;
    case 4: fli_read_color_2(f, fli_header, old_cmap, cmap); break;
    case 13: fli_read_black(f, fli_header, framebuf); break;
    case 15: fli_read_brun(f, fli_header, framebuf); break;
    case 16: fli_read_copy(f, fli_header, framebuf); break;
    case 12: fli_read_lc(f, fli_header, old_framebuf, framebuf); break;
    case 7: fli_read_lc_2(f, fli_header, old_framebuf, framebuf); break;
    case 18: break;
    default: break;
   }
   if (chunk.size & 1) chunk.size++;
   fseek(f,chunkpos+chunk.size,0);
  }
 }
 fseek(f, framepos+fli_frame.size, 0);
}

void fli_write_frame(FILE *f, s_fli_header *fli_header, unsigned char *old_framebuf, unsigned char *old_cmap, unsigned char *framebuf, unsigned char *cmap, unsigned short codec_mask)
{
 s_fli_frame fli_frame;
 unsigned long framepos, frameend;
 framepos=ftell(f);
 fseek(f, framepos+16, 0);

 switch (fli_header->frames) {
  case 0: fli_header->oframe1=framepos; break;
  case 1: fli_header->oframe2=framepos; break;
 }

 fli_frame.size=0;
 fli_frame.magic=0xF1FA;
 fli_frame.chunks=0;




 if (fli_header->magic == 0xAF11) {
  if (fli_write_color(f, fli_header, old_cmap, cmap)) fli_frame.chunks++;
 } else {
  if (fli_header->magic == 0xAF12) {
   if (fli_write_color_2(f, fli_header, old_cmap, cmap)) fli_frame.chunks++;
  } else {
   fprintf(stderr, "error: magic number in header is wrong !\n");
  }
 }
# 211 "fli.c"
 if (old_framebuf==((void*)0)) {
  fli_write_brun(f, fli_header, framebuf);
 } else {
  fli_write_lc(f, fli_header, old_framebuf, framebuf);
 }
 fli_frame.chunks++;

 frameend=ftell(f);
 fli_frame.size=frameend-framepos;
 fseek(f, framepos, 0);
 fli_write_long(f, fli_frame.size);
 fli_write_short(f, fli_frame.magic);
 fli_write_short(f, fli_frame.chunks);
 fseek(f, frameend, 0);
 fli_header->frames++;
}




void fli_read_color(FILE *f, s_fli_header *fli_header, unsigned char *old_cmap, unsigned char *cmap)
{
 unsigned short num_packets, cnt_packets, col_pos;
 col_pos=0;
 num_packets=fli_read_short(f);
 for (cnt_packets=num_packets; cnt_packets>0; cnt_packets--) {
  unsigned short skip_col, num_col, col_cnt;
  skip_col=fli_read_char(f);
  num_col=fli_read_char(f);
  if (num_col==0) {
   for (col_pos=0; col_pos<768; col_pos++) {
    cmap[col_pos]=fli_read_char(f)<<2;
   }
   return;
  }
  for (col_cnt=skip_col; (col_cnt>0) && (col_pos<768); col_cnt--) {
   cmap[col_pos]=old_cmap[col_pos];col_pos++;
   cmap[col_pos]=old_cmap[col_pos];col_pos++;
   cmap[col_pos]=old_cmap[col_pos];col_pos++;
  }
  for (col_cnt=num_col; (col_cnt>0) && (col_pos<768); col_cnt--) {
   cmap[col_pos++]=fli_read_char(f)<<2;
   cmap[col_pos++]=fli_read_char(f)<<2;
   cmap[col_pos++]=fli_read_char(f)<<2;
  }
 }
}

int fli_write_color(FILE *f, s_fli_header *fli_header, unsigned char *old_cmap, unsigned char *cmap)
{
 unsigned long chunkpos;
 unsigned short num_packets;
 s_fli_chunk chunk;
 chunkpos=ftell(f);
 fseek(f, chunkpos+8, 0);
 num_packets=0;
 if (old_cmap==((void*)0)) {
  unsigned short col_pos;
  num_packets=1;
  fli_write_char(f, 0);
  fli_write_char(f, 0);
  for (col_pos=0; col_pos<768; col_pos++) {
   fli_write_char(f, cmap[col_pos]>>2);
  }
 } else {
  unsigned short cnt_skip, cnt_col, col_pos, col_start;
  col_pos=0;
  do {
   cnt_skip=0;
   while ((col_pos<256) && (old_cmap[col_pos*3+0]==cmap[col_pos*3+0]) && (old_cmap[col_pos*3+1]==cmap[col_pos*3+1]) && (old_cmap[col_pos*3+2]==cmap[col_pos*3+2])) {
    cnt_skip++; col_pos++;
   }
   col_start=col_pos*3;
   cnt_col=0;
   while ((col_pos<256) && !((old_cmap[col_pos*3+0]==cmap[col_pos*3+0]) && (old_cmap[col_pos*3+1]==cmap[col_pos*3+1]) && (old_cmap[col_pos*3+2]==cmap[col_pos*3+2]))) {
    cnt_col++; col_pos++;
   }
   if (cnt_col>0) {
    num_packets++;
    fli_write_char(f, cnt_skip & 255);
    fli_write_char(f, cnt_col & 255);
    while (cnt_col>0) {
     fli_write_char(f, cmap[col_start++]>>2);
     fli_write_char(f, cmap[col_start++]>>2);
     fli_write_char(f, cmap[col_start++]>>2);
     cnt_col--;
    }
   }
  } while (col_pos<256);
 }

 if (num_packets>0) {
  chunk.size=ftell(f)-chunkpos;
  chunk.magic=11;

  fseek(f, chunkpos, 0);
  fli_write_long(f, chunk.size);
  fli_write_short(f, chunk.magic);
  fli_write_short(f, num_packets);

  if (chunk.size & 1) chunk.size++;
  fseek(f,chunkpos+chunk.size,0);
  return 1;
 }
 fseek(f,chunkpos, 0);
 return 0;
}




void fli_read_color_2(FILE *f, s_fli_header *fli_header, unsigned char *old_cmap, unsigned char *cmap)
{
 unsigned short num_packets, cnt_packets, col_pos;
 num_packets=fli_read_short(f);
 col_pos=0;
 for (cnt_packets=num_packets; cnt_packets>0; cnt_packets--) {
  unsigned short skip_col, num_col, col_cnt;
  skip_col=fli_read_char(f);
  num_col=fli_read_char(f);
  if (num_col == 0) {
   for (col_pos=0; col_pos<768; col_pos++) {
    cmap[col_pos]=fli_read_char(f);
   }
   return;
  }
  for (col_cnt=skip_col; (col_cnt>0) && (col_pos<768); col_cnt--) {
   cmap[col_pos]=old_cmap[col_pos];col_pos++;
   cmap[col_pos]=old_cmap[col_pos];col_pos++;
   cmap[col_pos]=old_cmap[col_pos];col_pos++;
  }
  for (col_cnt=num_col; (col_cnt>0) && (col_pos<768); col_cnt--) {
   cmap[col_pos++]=fli_read_char(f);
   cmap[col_pos++]=fli_read_char(f);
   cmap[col_pos++]=fli_read_char(f);
  }
 }
}

int fli_write_color_2(FILE *f, s_fli_header *fli_header, unsigned char *old_cmap, unsigned char *cmap)
{
 unsigned long chunkpos;
 unsigned short num_packets;
 s_fli_chunk chunk;
 chunkpos=ftell(f);
 fseek(f, chunkpos+8, 0);
 num_packets=0;
 if (old_cmap==((void*)0)) {
  unsigned short col_pos;
  num_packets=1;
  fli_write_char(f, 0);
  fli_write_char(f, 0);
  for (col_pos=0; col_pos<768; col_pos++) {
   fli_write_char(f, cmap[col_pos]);
  }
 } else {
  unsigned short cnt_skip, cnt_col, col_pos, col_start;
  col_pos=0;
  do {
   cnt_skip=0;
   while ((col_pos<256) && (old_cmap[col_pos*3+0]==cmap[col_pos*3+0]) && (old_cmap[col_pos*3+1]==cmap[col_pos*3+1]) && (old_cmap[col_pos*3+2]==cmap[col_pos*3+2])) {
    cnt_skip++; col_pos++;
   }
   col_start=col_pos*3;
   cnt_col=0;
   while ((col_pos<256) && !((old_cmap[col_pos*3+0]==cmap[col_pos*3+0]) && (old_cmap[col_pos*3+1]==cmap[col_pos*3+1]) && (old_cmap[col_pos*3+2]==cmap[col_pos*3+2]))) {
    cnt_col++; col_pos++;
   }
   if (cnt_col>0) {
    num_packets++;
    fli_write_char(f, cnt_skip);
    fli_write_char(f, cnt_col);
    while (cnt_col>0) {
     fli_write_char(f, cmap[col_start++]);
     fli_write_char(f, cmap[col_start++]);
     fli_write_char(f, cmap[col_start++]);
     cnt_col--;
    }
   }
  } while (col_pos<256);
 }

 if (num_packets>0) {
  chunk.size=ftell(f)-chunkpos;
  chunk.magic=4;

  fseek(f, chunkpos, 0);
  fli_write_long(f, chunk.size);
  fli_write_short(f, chunk.magic);
  fli_write_short(f, num_packets);

  if (chunk.size & 1) chunk.size++;
  fseek(f,chunkpos+chunk.size,0);
  return 1;
 }
 fseek(f,chunkpos, 0);
 return 0;
}




void fli_read_black(FILE *f, s_fli_header *fli_header, unsigned char *framebuf)
{
 memset(framebuf, 0, fli_header->width * fli_header->height);
}

void fli_write_black(FILE *f, s_fli_header *fli_header, unsigned char *framebuf)
{
 s_fli_chunk chunk;

 chunk.size=6;
 chunk.magic=13;

 fli_write_long(f, chunk.size);
 fli_write_short(f, chunk.magic);
}




void fli_read_copy(FILE *f, s_fli_header *fli_header, unsigned char *framebuf)
{
 fread(framebuf, fli_header->width, fli_header->height, f);
}

void fli_write_copy(FILE *f, s_fli_header *fli_header, unsigned char *framebuf)
{

 unsigned long chunkpos;
 s_fli_chunk chunk;
 chunkpos=ftell(f);
 fseek(f, chunkpos+6, 0);
 fwrite(framebuf, fli_header->width, fli_header->height, f);
 chunk.size=ftell(f)-chunkpos;
 chunk.magic=16;

 fseek(f, chunkpos, 0);
 fli_write_long(f, chunk.size);
 fli_write_short(f, chunk.magic);

 if (chunk.size & 1) chunk.size++;
 fseek(f,chunkpos+chunk.size,0);
}




void fli_read_brun(FILE *f, s_fli_header *fli_header, unsigned char *framebuf)
{
 unsigned short yc;
 unsigned char *pos;
 for (yc=0; yc < fli_header->height; yc++) {
  unsigned short xc, pc, pcnt;
  pc=fli_read_char(f);
  xc=0;
  pos=framebuf+(fli_header->width * yc);
  for (pcnt=pc; pcnt>0; pcnt--) {
   unsigned short ps;
   ps=fli_read_char(f);
   if (ps & 0x80) {
    unsigned short len;
    for (len=-(signed char)ps; len>0; len--) {
     pos[xc++]=fli_read_char(f);
    }
   } else {
    unsigned char val;
    val=fli_read_char(f);
    memset(&(pos[xc]), val, ps);
    xc+=ps;
   }
  }
 }
}

void fli_write_brun(FILE *f, s_fli_header *fli_header, unsigned char *framebuf)
{
 unsigned long chunkpos;
 s_fli_chunk chunk;
 unsigned short yc;
 unsigned char *linebuf;

 chunkpos=ftell(f);
 fseek(f, chunkpos+6, 0);

 for (yc=0; yc < fli_header->height; yc++) {
  unsigned short xc, t1, pc, tc;
  unsigned long linepos, lineend, bc;
  linepos=ftell(f); bc=0;
  fseek(f, 1, 1);
  linebuf=framebuf + (yc*fli_header->width);
  xc=0; tc=0; t1=0;
  while (xc < fli_header->width) {
   pc=1;
   while ((pc<120) && ((xc+pc)<fli_header->width) && (linebuf[xc+pc] == linebuf[xc])) {
    pc++;
   }
   if (pc>2) {
    if (tc>0) {
     bc++;
     fli_write_char(f, (tc-1)^0xFF);
     fwrite(linebuf+t1, 1, tc, f);
     tc=0;
    }
    bc++;
    fli_write_char(f, pc);
    fli_write_char(f, linebuf[xc]);
    t1=xc+pc;
   } else {
    tc+=pc;
    if (tc>120) {
     bc++;
     fli_write_char(f, (tc-1)^0xFF);
     fwrite(linebuf+t1, 1, tc, f);
     tc=0;
     t1=xc+pc;
    }
   }
   xc+=pc;
  }
  if (tc>0) {
   bc++;
   fli_write_char(f, (tc-1)^0xFF);
   fwrite(linebuf+t1, 1, tc, f);
   tc=0;
  }
  lineend=ftell(f);
  fseek(f, linepos, 0);
  fli_write_char(f, bc);
  fseek(f, lineend, 0);
 }

 chunk.size=ftell(f)-chunkpos;
 chunk.magic=15;

 fseek(f, chunkpos, 0);
 fli_write_long(f, chunk.size);
 fli_write_short(f, chunk.magic);

 if (chunk.size & 1) chunk.size++;
 fseek(f,chunkpos+chunk.size,0);
}







void fli_read_lc(FILE *f, s_fli_header *fli_header, unsigned char *old_framebuf, unsigned char *framebuf)
{
 unsigned short yc, firstline, numline;
 unsigned char *pos;
 memcpy(framebuf, old_framebuf, fli_header->width * fli_header->height);
 firstline = fli_read_short(f);
 numline = fli_read_short(f);
 for (yc=0; yc < numline; yc++) {
  unsigned short xc, pc, pcnt;
  pc=fli_read_char(f);
  xc=0;
  pos=framebuf+(fli_header->width * (firstline+yc));
  for (pcnt=pc; pcnt>0; pcnt--) {
   unsigned short ps,skip;
   skip=fli_read_char(f);
   ps=fli_read_char(f);
   xc+=skip;
   if (ps & 0x80) {
    unsigned char val;
    ps=-(signed char)ps;
    val=fli_read_char(f);
    memset(&(pos[xc]), val, ps);
    xc+=ps;
   } else {
    fread(&(pos[xc]), ps, 1, f);
    xc+=ps;
   }
  }
 }
}

void fli_write_lc(FILE *f, s_fli_header *fli_header, unsigned char *old_framebuf, unsigned char *framebuf)
{
 unsigned long chunkpos;
 s_fli_chunk chunk;
 unsigned short yc, firstline, numline, lastline;
 unsigned char *linebuf, *old_linebuf;

 chunkpos=ftell(f);
 fseek(f, chunkpos+6, 0);


 firstline=0;
 while ((memcmp(old_framebuf+(firstline*fli_header->width), framebuf+(firstline*fli_header->width), fli_header->width)==0) && (firstline<fli_header->height)) firstline++;


 if (firstline<fli_header->height) {
  lastline=fli_header->height-1;
  while ((memcmp(old_framebuf+(lastline*fli_header->width), framebuf+(lastline*fli_header->width), fli_header->width)==0) && (lastline>firstline)) lastline--;
  numline=(lastline-firstline)+1;
 } else {
  numline=0;
 }
 if (numline==0) firstline=0;

 fli_write_short(f, firstline);
 fli_write_short(f, numline);

 for (yc=0; yc < numline; yc++) {
  unsigned short xc, sc, cc, tc;
  unsigned long linepos, lineend, bc;
  linepos=ftell(f); bc=0;
  fseek(f, 1, 1);

  linebuf=framebuf + ((firstline+yc)*fli_header->width);
  old_linebuf=old_framebuf + ((firstline+yc)*fli_header->width);
  xc=0;
  while (xc < fli_header->width) {
   sc=0;
   while ((linebuf[xc]==old_linebuf[xc]) && (xc<fli_header->width) && (sc<255)) {
    xc++; sc++;
   }
   fli_write_char(f, sc);
   cc=1;
   while ((linebuf[xc]==linebuf[xc+cc]) && ((xc+cc)<fli_header->width) && (cc<120)) {
    cc++;
   }
   if (cc>2) {
    bc++;
    fli_write_char(f, (cc-1)^0xFF);
    fli_write_char(f, linebuf[xc]);
    xc+=cc;
   } else {
    tc=0;
    do {
     sc=0;
     while ((linebuf[tc+xc+sc]==old_linebuf[tc+xc+sc]) && ((tc+xc+sc)<fli_header->width) && (sc<5)) {
      sc++;
     }
     cc=1;
     while ((linebuf[tc+xc]==linebuf[tc+xc+cc]) && ((tc+xc+cc)<fli_header->width) && (cc<10)) {
      cc++;
     }
     tc++;
    } while ((tc<120) && (cc<9) && (sc<4) && ((xc+tc)<fli_header->width));
    bc++;
    fli_write_char(f, tc);
    fwrite(linebuf+xc, tc, 1, f);
    xc+=tc;
   }
  }
  lineend=ftell(f);
  fseek(f, linepos, 0);
  fli_write_char(f, bc);
  fseek(f, lineend, 0);
 }

 chunk.size=ftell(f)-chunkpos;
 chunk.magic=12;

 fseek(f, chunkpos, 0);
 fli_write_long(f, chunk.size);
 fli_write_short(f, chunk.magic);

 if (chunk.size & 1) chunk.size++;
 fseek(f,chunkpos+chunk.size,0);
}







void fli_read_lc_2(FILE *f, s_fli_header *fli_header, unsigned char *old_framebuf, unsigned char *framebuf)
{
 unsigned short yc, lc, numline;
 unsigned char *pos;
 memcpy(framebuf, old_framebuf, fli_header->width * fli_header->height);
 yc=0;
 numline = fli_read_short(f);
 for (lc=0; lc < numline; lc++) {
  unsigned short xc, pc, pcnt, lpf, lpn;
  pc=fli_read_short(f);
  lpf=0; lpn=0;
  while (pc & 0x8000) {
   if (pc & 0x4000) {
    yc+=-(signed short)pc;
   } else {
    lpf=1;lpn=pc&0xFF;
   }
   pc=fli_read_short(f);
  }
  xc=0;
  pos=framebuf+(fli_header->width * yc);
  for (pcnt=pc; pcnt>0; pcnt--) {
   unsigned short ps,skip;
   skip=fli_read_char(f);
   ps=fli_read_char(f);
   xc+=skip;
   if (ps & 0x80) {
    unsigned char v1,v2;
    ps=-(signed char)ps;
    v1=fli_read_char(f);
    v2=fli_read_char(f);
    while (ps>0) {
     pos[xc++]=v1;
     pos[xc++]=v2;
     ps--;
    }
   } else {
    fread(&(pos[xc]), ps, 2, f);
    xc+=ps << 1;
   }
  }
  if (lpf) pos[xc]=lpn;
  yc++;
 }
}
