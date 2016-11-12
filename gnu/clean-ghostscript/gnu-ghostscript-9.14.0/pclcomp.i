# 1 "./contrib/pcl3/src/pclcomp.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./contrib/pcl3/src/pclcomp.c" 2
# 21 "./contrib/pcl3/src/pclcomp.c"
static const char
  cm_id[] = "@(#)$Id: pclcomp.c,v 1.11 2000/10/07 17:51:57 Martin Rel $";
# 32 "./contrib/pcl3/src/pclcomp.c"
# 1 "./contrib/pcl3/src/pclgen.h" 1
# 26 "./contrib/pcl3/src/pclgen.h"
#pragma ident "@(#)$Id: pclgen.h,v 1.25 2001/08/18 17:41:29 Martin Rel $"





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
# 32 "./contrib/pcl3/src/pclgen.h" 2




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
# 33 "./contrib/pcl3/src/pclcomp.c" 2


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
# 36 "./contrib/pcl3/src/pclcomp.c" 2
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
# 37 "./contrib/pcl3/src/pclcomp.c" 2
# 81 "./contrib/pcl3/src/pclcomp.c"
static int compress_runlength(const pcl_Octet *in, int incount, pcl_Octet *out,
  int maxoutcount)
{
  int available = maxoutcount;




  while (incount > 0 && available > 1) {
    int count = 0;

    out++;
    *out = *in;
    do {
      in++; incount--; count++;
    } while (incount > 0 && *in == *out && count < 256);
    *(out - 1) = count - 1;
    out++; available -= 2;
  }

  if (incount > 0) return -1;
  return maxoutcount - available;
}
# 140 "./contrib/pcl3/src/pclcomp.c"
static int compress_tiff(const pcl_Octet *in, int incount, pcl_Octet *out,
  int maxoutcount)
{
  pcl_Octet
    last;
  const pcl_Octet
    *end = in + incount - 1;
  int
    available = maxoutcount,
    repeated,
    stored;

  state1:

    if (in == end) {

      if (available < 2) return -1;
      *out = 0; out++;
      *out = *in;
      available -= 2;
      goto finished;
    }
    last = *in; in++;


  state2:

    if (*in != last) {
      if (available < 3) return -1;
      out++; available--;
      stored = 0;
      goto state4;
    }
    if (available < 2) return -1;
    repeated = 2;


  state3:



    do {
      if (in == end) break;
      in++;
      if (*in != last) break;
      repeated++;
    } while (repeated < 128);


    *out = (256 + (-repeated + 1)); out++;
    *out = last; out++;
    available -= 2;


    if (*in != last) goto state1;
    if (in == end) goto finished;
    in++;
    goto state1;

  state4:






    do {
      *out = last; stored++; available--; out++;
      if (in == end) {
        *out = *in; stored++; available--;
        out[-stored] = stored - 1;
        goto finished;
      }
      if (available < 2) return -1;
      last = *in;
      in++;
    } while (*in != last && stored <= 126);

    if (*in == last) {
      if (stored < 126) goto state5;
      out[-stored-1] = stored - 1;
      repeated = 2;
      goto state3;
    }


    *out = last; stored++; available--; out++;
    out[-stored-1] = stored - 1;
    goto state1;

  state5:




    if (in == end) {
      *out = last; out++;
      *out = *in;
      stored += 2; available -= 2;
      out[-stored] = stored - 1;
      goto finished;
    }
    in++;
    if (*in == last) {
      out[-stored-1] = stored - 1;
      repeated = 3;
      goto state3;
    }
    if (available < 3) return -1;
    *out = last; stored++; available--; out++;
    goto state4;

  finished:
  return maxoutcount - available;
}
# 276 "./contrib/pcl3/src/pclcomp.c"
static int write_delta_replacement(pcl_Octet *out, int available, int reloffset,
  const pcl_Octet *in, int replace_count)
{
  int used;
  ((1 <= replace_count && replace_count <= 8) ? (void) (0) : __assert_fail ("1 <= replace_count && replace_count <= 8", "./contrib/pcl3/src/pclcomp.c", 280, __PRETTY_FUNCTION__));


  used = 1;
  if (available < used) return -1;
  *out = (replace_count - 1) << 5;
  if (reloffset < 31) {
    *out++ += reloffset;
  }
  else {

    *out++ += 31;
    reloffset -= 31;
    used += reloffset/255 + 1;
    if (available < used) return -1;
    while (reloffset >= 255) {
      *out++ = 255;
      reloffset -= 255;
    }
    *out++ = reloffset;
  }


  used += replace_count;
  if (available < used) return -1;
  while (replace_count > 0) {
    *out++ = *in++;
    replace_count--;
  }

  return used;
}
# 366 "./contrib/pcl3/src/pclcomp.c"
static int compress_delta(const pcl_Octet *in, int incount,
  const pcl_Octet *prev, int prevcount, pcl_Octet *out, int maxoutcount)
{
  int
    absoffset,
    mincount,
    opos,
    pos;



  if (maxoutcount == 0) {
    if (incount == prevcount &&
      (incount == 0 || memcmp(in, prev, incount) == 0)) return 0;


    return -1;
  }


  mincount = (incount < prevcount? incount: prevcount);
  pos = 0; opos = 0;
  absoffset = 0;



  while (pos < mincount) { if (in[pos] != prev[pos]) { int reloffset = pos - absoffset; absoffset = pos; do pos++; while (pos < mincount && pos < absoffset + 8 && in[pos] != prev[pos]); { int written; written = write_delta_replacement(out + opos, maxoutcount - opos, reloffset, in + absoffset, pos - absoffset); if (written < 0) return -1; opos += written; } absoffset = pos; } else pos++; };





  if (mincount < incount) {

    while (pos < incount) { if (in[pos] != 0) { int reloffset = pos - absoffset; absoffset = pos; do pos++; while (pos < incount && pos < absoffset + 8 && in[pos] != 0); { int written; written = write_delta_replacement(out + opos, maxoutcount - opos, reloffset, in + absoffset, pos - absoffset); if (written < 0) return -1; opos += written; } absoffset = pos; } else pos++; };
  }
  else {

    pcl_Octet zero_block[8] = {0, 0, 0, 0, 0, 0, 0, 0};
    while (pos < prevcount) { if (0 != prev[pos]) { int reloffset = pos - absoffset; absoffset = pos; do pos++; while (pos < prevcount && pos < absoffset + 8 && 0 != prev[pos]); { int written; written = write_delta_replacement(out + opos, maxoutcount - opos, reloffset, zero_block, pos - absoffset); if (written < 0) return -1; opos += written; } absoffset = pos; } else pos++; };
  }
  ((opos <= maxoutcount) ? (void) (0) : __assert_fail ("opos <= maxoutcount", "./contrib/pcl3/src/pclcomp.c", 407, __PRETTY_FUNCTION__));

  return opos;
}
# 424 "./contrib/pcl3/src/pclcomp.c"
static int write_crdr_header(pcl_bool compressed, pcl_Octet *out,
  int maxoutcount, int reloffset, int repcount)
{
  int
    maxvalue,
    shift,
    used = 1;


  if (maxoutcount < 1) return -1;
  if (compressed) *out = 0x80;
  else *out = 0;
  maxvalue = (compressed? 3: 15);
  shift = (compressed? 5: 3);
  if (reloffset < maxvalue) {
    *out += reloffset << shift;
    reloffset = -1;
  }
  else {
    *out += maxvalue << shift;
    reloffset -= maxvalue;
  }

  if (compressed) repcount -= 2;
  else repcount--;
  ((repcount >= 0) ? (void) (0) : __assert_fail ("repcount >= 0", "./contrib/pcl3/src/pclcomp.c", 449, __PRETTY_FUNCTION__));
  maxvalue = (compressed? 31: 7);
  if (repcount < maxvalue) {
    *out += repcount;
    repcount = -1;
  }
  else {
    *out += maxvalue;
    repcount -= maxvalue;
  }
  out++;


  while (reloffset >= 0) {
    if (used >= maxoutcount) return -1;
    *out++ = (reloffset >= 255? 255: reloffset);
    reloffset -= 255;
    used++;
  }


  while (repcount >= 0) {
    if (used >= maxoutcount) return -1;
    *out++ = (repcount >= 255? 255: repcount);
    repcount -= 255;
    used++;
  }

  return used;
}
# 492 "./contrib/pcl3/src/pclcomp.c"
static int write_crdr_uncompressed(pcl_Octet *out, int maxoutcount,
  int reloffset, const pcl_Octet *in, int repcount)
{
  int used = write_crdr_header(0, out, maxoutcount, reloffset, repcount);
  if (used < 0 || used + repcount > maxoutcount) return -1;

  out += used;
  if (in == ((void*)0)) memset(out, 0, repcount*sizeof(pcl_Octet));
  else memcpy(out, in, repcount*sizeof(pcl_Octet));

  return used + repcount;
}
# 514 "./contrib/pcl3/src/pclcomp.c"
static int write_crdr_compressed(pcl_Octet *out, int maxoutcount, int reloffset,
  pcl_Octet in, int repeat_count)
{
  int used = write_crdr_header(1, out, maxoutcount, reloffset, repeat_count);
  if (used < 0 || used >= maxoutcount) return -1;

  out += used;
  *out = in;

  return used + 1;
}
# 538 "./contrib/pcl3/src/pclcomp.c"
static int write_crdr_replacement(pcl_Octet *out, int maxoutcount,
  int reloffset, const pcl_Octet *in, int repcount)
{
  const pcl_Octet *final;
  int written = 0;


  if (in == ((void*)0)) {
    if (repcount == 1)
      return write_crdr_uncompressed(out, maxoutcount, reloffset, in, repcount);
    return write_crdr_compressed(out, maxoutcount, reloffset, 0, repcount);
  }



  final = in + repcount - 1;
  while (repcount > 0) {

    const pcl_Octet *bdup;
    bdup = in;
    while (bdup < final && *bdup != *(bdup + 1)) bdup++;



    if (in < bdup || bdup == final) {
      int incount = (bdup == final? repcount: bdup - in);
      int rc;
      rc = write_crdr_uncompressed(out + written, maxoutcount - written,
        reloffset, in, incount);
      if (rc < 0) return rc;
      written += rc;
      reloffset = 0;
      repcount -= incount;
      if (repcount > 0) in += incount;
    }





    if (bdup < final) {
      const pcl_Octet *edup = bdup + 1;
      int incount, rc;
      while (edup < final && *(edup + 1) == *bdup) edup++;
      incount = edup - bdup + 1;
      rc = write_crdr_compressed(out + written, maxoutcount - written,
        reloffset, *bdup, incount);
      if (rc < 0) return rc;
      written += rc;
      reloffset = 0;
      repcount -= incount;
      if (repcount > 0) in = edup + 1;
    }
  }

  return written;
}
# 639 "./contrib/pcl3/src/pclcomp.c"
static int compress_crdr(const pcl_Octet *in, int incount,
  const pcl_Octet *prev, int prevcount, pcl_Octet *out, int maxoutcount)
{
  int
    absoffset = 0,
    mincount = (incount < prevcount? incount: prevcount),
    opos = 0,
    pos = 0;



  if (maxoutcount == 0) {
    if (incount == prevcount &&
      (incount == 0 || memcmp(in, prev, incount) == 0)) return 0;
    return -1;
  }

  while (pos < mincount) { if (in[pos] == prev[pos]) pos++; else { int reloffset = pos - absoffset, written; absoffset = pos; do pos++; while (pos < mincount && in[pos] != prev[pos]); written = write_crdr_replacement(out + opos, maxoutcount - opos, reloffset, in + absoffset, pos - absoffset); if (written < 0) return written; absoffset = pos; opos += written; } };
  if (mincount < incount) {
    while (pos < incount) { if (in[pos] == 0) pos++; else { int reloffset = pos - absoffset, written; absoffset = pos; do pos++; while (pos < incount && in[pos] != 0); written = write_crdr_replacement(out + opos, maxoutcount - opos, reloffset, in + absoffset, pos - absoffset); if (written < 0) return written; absoffset = pos; opos += written; } };
  }
  else {
    while (pos < prevcount) { if (0 == prev[pos]) pos++; else { int reloffset = pos - absoffset, written; absoffset = pos; do pos++; while (pos < prevcount && 0 != prev[pos]); written = write_crdr_replacement(out + opos, maxoutcount - opos, reloffset, ((void*)0), pos - absoffset); if (written < 0) return written; absoffset = pos; opos += written; } };
  }

  return opos;
}
# 701 "./contrib/pcl3/src/pclcomp.c"
int pcl_compress(pcl_Compression method, const pcl_OctetString *in,
  const pcl_OctetString *prev, pcl_OctetString *out)
{
  int result = -1;


  (((in != ((void*)0) && ((in)->length == 0 || (in)->length > 0 && (in)->str != ((void*)0))) && (out != ((void*)0) && ((out)->length == 0 || (out)->length > 0 && (out)->str != ((void*)0))) && (method != pcl_cm_delta && method != pcl_cm_crdr || (prev != ((void*)0) && ((prev)->length == 0 || (prev)->length > 0 && (prev)->str != ((void*)0))))) ? (void) (0) : __assert_fail ("(in != ((void*)0) && ((in)->length == 0 || (in)->length > 0 && (in)->str != ((void*)0))) && (out != ((void*)0) && ((out)->length == 0 || (out)->length > 0 && (out)->str != ((void*)0))) && (method != pcl_cm_delta && method != pcl_cm_crdr || (prev != ((void*)0) && ((prev)->length == 0 || (prev)->length > 0 && (prev)->str != ((void*)0))))", "./contrib/pcl3/src/pclcomp.c", 708, __PRETTY_FUNCTION__));



  if (in->length == 0 && method != pcl_cm_delta && method != pcl_cm_crdr) {
    out->length = 0;
    return 0;
  }

  switch (method) {
  case pcl_cm_none:
    if (out->length <= in->length) {
      memcpy(out->str, in->str, in->length*sizeof(pcl_Octet));
      result = in->length;
    }
    break;
  case pcl_cm_rl:
    result = compress_runlength(in->str, in->length, out->str, out->length);
    break;
  case pcl_cm_tiff:
    result = compress_tiff(in->str, in->length, out->str, out->length);
    break;
  case pcl_cm_delta:
    result = compress_delta(in->str, in->length, prev->str, prev->length,
      out->str, out->length);
    break;
  case pcl_cm_crdr:
    result = compress_crdr(in->str, in->length, prev->str, prev->length,
      out->str, out->length);
    break;
  default:
    ((0) ? (void) (0) : __assert_fail ("0", "./contrib/pcl3/src/pclcomp.c", 738, __PRETTY_FUNCTION__));


  }


  if (result >= 0) {
    out->length = result;
    result = 0;
  }

  return result;
}
