# 1 "gimpoperationtilesink.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 317 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "gimpoperationtilesink.c" 2
# 21 "gimpoperationtilesink.c"
# 1 "../../config.h" 1
# 22 "gimpoperationtilesink.c" 2

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
# 24 "gimpoperationtilesink.c" 2


# 1 "/usr/include/gegl-0.2/gegl.h" 1
# 22 "/usr/include/gegl-0.2/gegl.h"
# 1 "/usr/include/glib-2.0/glib-object.h" 1
# 23 "/usr/include/glib-2.0/glib-object.h"
# 1 "/usr/include/glib-2.0/gobject/gbinding.h" 1
# 28 "/usr/include/glib-2.0/gobject/gbinding.h"
# 1 "/usr/include/glib-2.0/glib.h" 1
# 30 "/usr/include/glib-2.0/glib.h"
# 1 "/usr/include/glib-2.0/glib/galloca.h" 1
# 32 "/usr/include/glib-2.0/glib/galloca.h"
# 1 "/usr/include/glib-2.0/glib/gtypes.h" 1
# 32 "/usr/include/glib-2.0/glib/gtypes.h"
# 1 "/usr/lib64/glib-2.0/include/glibconfig.h" 1








# 1 "/usr/include/glib-2.0/glib/gmacros.h" 1
# 38 "/usr/include/glib-2.0/glib/gmacros.h"
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
# 39 "/usr/include/glib-2.0/glib/gmacros.h" 2
# 10 "/usr/lib64/glib-2.0/include/glibconfig.h" 2

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
# 12 "/usr/lib64/glib-2.0/include/glibconfig.h" 2
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/float.h" 1 3
# 13 "/usr/lib64/glib-2.0/include/glibconfig.h" 2
# 37 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef signed char gint8;
typedef unsigned char guint8;
typedef signed short gint16;
typedef unsigned short guint16;



typedef signed int gint32;
typedef unsigned int guint32;





typedef signed long gint64;
typedef unsigned long guint64;
# 65 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef signed long gssize;
typedef unsigned long gsize;
# 76 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef gint64 goffset;
# 91 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef signed long gintptr;
typedef unsigned long guintptr;
# 193 "/usr/lib64/glib-2.0/include/glibconfig.h"
typedef int GPid;
# 33 "/usr/include/glib-2.0/glib/gtypes.h" 2

# 1 "/usr/include/glib-2.0/glib/gversionmacros.h" 1
# 35 "/usr/include/glib-2.0/glib/gtypes.h" 2
# 1 "/usr/include/time.h" 1 3 4
# 37 "/usr/include/time.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
# 42 "/usr/include/time.h" 2 3 4
# 55 "/usr/include/time.h" 3 4
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
# 56 "/usr/include/time.h" 2 3 4



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
# 36 "/usr/include/glib-2.0/glib/gtypes.h" 2
# 46 "/usr/include/glib-2.0/glib/gtypes.h"
typedef char gchar;
typedef short gshort;
typedef long glong;
typedef int gint;
typedef gint gboolean;

typedef unsigned char guchar;
typedef unsigned short gushort;
typedef unsigned long gulong;
typedef unsigned int guint;

typedef float gfloat;
typedef double gdouble;
# 77 "/usr/include/glib-2.0/glib/gtypes.h"
typedef void* gpointer;
typedef const void *gconstpointer;

typedef gint (*GCompareFunc) (gconstpointer a,
                                                 gconstpointer b);
typedef gint (*GCompareDataFunc) (gconstpointer a,
                                                 gconstpointer b,
       gpointer user_data);
typedef gboolean (*GEqualFunc) (gconstpointer a,
                                                 gconstpointer b);
typedef void (*GDestroyNotify) (gpointer data);
typedef void (*GFunc) (gpointer data,
                                                 gpointer user_data);
typedef guint (*GHashFunc) (gconstpointer key);
typedef void (*GHFunc) (gpointer key,
                                                 gpointer value,
                                                 gpointer user_data);
# 103 "/usr/include/glib-2.0/glib/gtypes.h"
typedef void (*GFreeFunc) (gpointer data);
# 117 "/usr/include/glib-2.0/glib/gtypes.h"
typedef const gchar * (*GTranslateFunc) (const gchar *str,
       gpointer data);
# 399 "/usr/include/glib-2.0/glib/gtypes.h"
typedef union _GDoubleIEEE754 GDoubleIEEE754;
typedef union _GFloatIEEE754 GFloatIEEE754;





union _GFloatIEEE754
{
  gfloat v_float;
  struct {
    guint mantissa : 23;
    guint biased_exponent : 8;
    guint sign : 1;
  } mpn;
};
union _GDoubleIEEE754
{
  gdouble v_double;
  struct {
    guint mantissa_low : 32;
    guint mantissa_high : 20;
    guint biased_exponent : 11;
    guint sign : 1;
  } mpn;
};
# 449 "/usr/include/glib-2.0/glib/gtypes.h"
typedef struct _GTimeVal GTimeVal;

struct _GTimeVal
{
  glong tv_sec;
  glong tv_usec;
};
# 33 "/usr/include/glib-2.0/glib/galloca.h" 2
# 31 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/garray.h" 1
# 36 "/usr/include/glib-2.0/glib/garray.h"
typedef struct _GBytes GBytes;
typedef struct _GArray GArray;
typedef struct _GByteArray GByteArray;
typedef struct _GPtrArray GPtrArray;

struct _GArray
{
  gchar *data;
  guint len;
};

struct _GByteArray
{
  guint8 *data;
  guint len;
};

struct _GPtrArray
{
  gpointer *pdata;
  guint len;
};
# 69 "/usr/include/glib-2.0/glib/garray.h"
extern
GArray* g_array_new (gboolean zero_terminated,
       gboolean clear_,
       guint element_size);
extern
GArray* g_array_sized_new (gboolean zero_terminated,
       gboolean clear_,
       guint element_size,
       guint reserved_size);
extern
gchar* g_array_free (GArray *array,
       gboolean free_segment);
extern
GArray *g_array_ref (GArray *array);
extern
void g_array_unref (GArray *array);
extern
guint g_array_get_element_size (GArray *array);
extern
GArray* g_array_append_vals (GArray *array,
       gconstpointer data,
       guint len);
extern
GArray* g_array_prepend_vals (GArray *array,
       gconstpointer data,
       guint len);
extern
GArray* g_array_insert_vals (GArray *array,
       guint index_,
       gconstpointer data,
       guint len);
extern
GArray* g_array_set_size (GArray *array,
       guint length);
extern
GArray* g_array_remove_index (GArray *array,
       guint index_);
extern
GArray* g_array_remove_index_fast (GArray *array,
       guint index_);
extern
GArray* g_array_remove_range (GArray *array,
       guint index_,
       guint length);
extern
void g_array_sort (GArray *array,
       GCompareFunc compare_func);
extern
void g_array_sort_with_data (GArray *array,
       GCompareDataFunc compare_func,
       gpointer user_data);
extern
void g_array_set_clear_func (GArray *array,
                                   GDestroyNotify clear_func);






extern
GPtrArray* g_ptr_array_new (void);
extern
GPtrArray* g_ptr_array_new_with_free_func (GDestroyNotify element_free_func);
extern
GPtrArray* g_ptr_array_sized_new (guint reserved_size);
extern
GPtrArray* g_ptr_array_new_full (guint reserved_size,
        GDestroyNotify element_free_func);
extern
gpointer* g_ptr_array_free (GPtrArray *array,
        gboolean free_seg);
extern
GPtrArray* g_ptr_array_ref (GPtrArray *array);
extern
void g_ptr_array_unref (GPtrArray *array);
extern
void g_ptr_array_set_free_func (GPtrArray *array,
                                           GDestroyNotify element_free_func);
extern
void g_ptr_array_set_size (GPtrArray *array,
        gint length);
extern
gpointer g_ptr_array_remove_index (GPtrArray *array,
        guint index_);
extern
gpointer g_ptr_array_remove_index_fast (GPtrArray *array,
        guint index_);
extern
gboolean g_ptr_array_remove (GPtrArray *array,
        gpointer data);
extern
gboolean g_ptr_array_remove_fast (GPtrArray *array,
        gpointer data);
extern
GPtrArray *g_ptr_array_remove_range (GPtrArray *array,
        guint index_,
        guint length);
extern
void g_ptr_array_add (GPtrArray *array,
        gpointer data);
extern
void g_ptr_array_insert (GPtrArray *array,
                                           gint index_,
                                           gpointer data);
extern
void g_ptr_array_sort (GPtrArray *array,
        GCompareFunc compare_func);
extern
void g_ptr_array_sort_with_data (GPtrArray *array,
        GCompareDataFunc compare_func,
        gpointer user_data);
extern
void g_ptr_array_foreach (GPtrArray *array,
        GFunc func,
        gpointer user_data);






extern
GByteArray* g_byte_array_new (void);
extern
GByteArray* g_byte_array_new_take (guint8 *data,
                                            gsize len);
extern
GByteArray* g_byte_array_sized_new (guint reserved_size);
extern
guint8* g_byte_array_free (GByteArray *array,
         gboolean free_segment);
extern
GBytes* g_byte_array_free_to_bytes (GByteArray *array);
extern
GByteArray *g_byte_array_ref (GByteArray *array);
extern
void g_byte_array_unref (GByteArray *array);
extern
GByteArray* g_byte_array_append (GByteArray *array,
         const guint8 *data,
         guint len);
extern
GByteArray* g_byte_array_prepend (GByteArray *array,
         const guint8 *data,
         guint len);
extern
GByteArray* g_byte_array_set_size (GByteArray *array,
         guint length);
extern
GByteArray* g_byte_array_remove_index (GByteArray *array,
         guint index_);
extern
GByteArray* g_byte_array_remove_index_fast (GByteArray *array,
         guint index_);
extern
GByteArray* g_byte_array_remove_range (GByteArray *array,
         guint index_,
         guint length);
extern
void g_byte_array_sort (GByteArray *array,
         GCompareFunc compare_func);
extern
void g_byte_array_sort_with_data (GByteArray *array,
         GCompareDataFunc compare_func,
         gpointer user_data);
# 32 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gasyncqueue.h" 1
# 32 "/usr/include/glib-2.0/glib/gasyncqueue.h"
# 1 "/usr/include/glib-2.0/glib/gthread.h" 1
# 32 "/usr/include/glib-2.0/glib/gthread.h"
# 1 "/usr/include/glib-2.0/glib/gatomic.h" 1
# 31 "/usr/include/glib-2.0/glib/gatomic.h"
extern
gint g_atomic_int_get (const volatile gint *atomic);
extern
void g_atomic_int_set (volatile gint *atomic,
                                                               gint newval);
extern
void g_atomic_int_inc (volatile gint *atomic);
extern
gboolean g_atomic_int_dec_and_test (volatile gint *atomic);
extern
gboolean g_atomic_int_compare_and_exchange (volatile gint *atomic,
                                                               gint oldval,
                                                               gint newval);
extern
gint g_atomic_int_add (volatile gint *atomic,
                                                               gint val);
extern
guint g_atomic_int_and (volatile guint *atomic,
                                                               guint val);
extern
guint g_atomic_int_or (volatile guint *atomic,
                                                               guint val);
extern
guint g_atomic_int_xor (volatile guint *atomic,
                                                               guint val);

extern
gpointer g_atomic_pointer_get (const volatile void *atomic);
extern
void g_atomic_pointer_set (volatile void *atomic,
                                                               gpointer newval);
extern
gboolean g_atomic_pointer_compare_and_exchange (volatile void *atomic,
                                                               gpointer oldval,
                                                               gpointer newval);
extern
gssize g_atomic_pointer_add (volatile void *atomic,
                                                               gssize val);
extern
gsize g_atomic_pointer_and (volatile void *atomic,
                                                               gsize val);
extern
gsize g_atomic_pointer_or (volatile void *atomic,
                                                               gsize val);
extern
gsize g_atomic_pointer_xor (volatile void *atomic,
                                                               gsize val);

__attribute__((__deprecated__)) extern
gint g_atomic_int_exchange_and_add (volatile gint *atomic,
                                                               gint val);
# 33 "/usr/include/glib-2.0/glib/gthread.h" 2
# 1 "/usr/include/glib-2.0/glib/gerror.h" 1
# 27 "/usr/include/glib-2.0/glib/gerror.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 1 3
# 30 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 3
typedef __builtin_va_list va_list;
# 50 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h" 3
typedef __builtin_va_list __gnuc_va_list;
# 28 "/usr/include/glib-2.0/glib/gerror.h" 2

# 1 "/usr/include/glib-2.0/glib/gquark.h" 1
# 36 "/usr/include/glib-2.0/glib/gquark.h"
typedef guint32 GQuark;



extern
GQuark g_quark_try_string (const gchar *string);
extern
GQuark g_quark_from_static_string (const gchar *string);
extern
GQuark g_quark_from_string (const gchar *string);
extern
const gchar * g_quark_to_string (GQuark quark) __attribute__((__const__));
# 61 "/usr/include/glib-2.0/glib/gquark.h"
extern
const gchar * g_intern_string (const gchar *string);
extern
const gchar * g_intern_static_string (const gchar *string);
# 30 "/usr/include/glib-2.0/glib/gerror.h" 2
# 42 "/usr/include/glib-2.0/glib/gerror.h"
typedef struct _GError GError;

struct _GError
{
  GQuark domain;
  gint code;
  gchar *message;
};

extern
GError* g_error_new (GQuark domain,
                                gint code,
                                const gchar *format,
                                ...) __attribute__((__format__ (__printf__, 3, 4)));

extern
GError* g_error_new_literal (GQuark domain,
                                gint code,
                                const gchar *message);
extern
GError* g_error_new_valist (GQuark domain,
                                gint code,
                                const gchar *format,
                                va_list args) __attribute__((__format__ (__printf__, 3, 0)));

extern
void g_error_free (GError *error);
extern
GError* g_error_copy (const GError *error);

extern
gboolean g_error_matches (const GError *error,
                                GQuark domain,
                                gint code);




extern
void g_set_error (GError **err,
                                GQuark domain,
                                gint code,
                                const gchar *format,
                                ...) __attribute__((__format__ (__printf__, 4, 5)));

extern
void g_set_error_literal (GError **err,
                                GQuark domain,
                                gint code,
                                const gchar *message);



extern
void g_propagate_error (GError **dest,
    GError *src);


extern
void g_clear_error (GError **err);


extern
void g_prefix_error (GError **err,
                                       const gchar *format,
                                       ...) __attribute__((__format__ (__printf__, 2, 3)));


extern
void g_propagate_prefixed_error (GError **dest,
                                       GError *src,
                                       const gchar *format,
                                       ...) __attribute__((__format__ (__printf__, 3, 4)));
# 34 "/usr/include/glib-2.0/glib/gthread.h" 2




extern
GQuark g_thread_error_quark (void);

typedef enum
{
  G_THREAD_ERROR_AGAIN
} GThreadError;

typedef gpointer (*GThreadFunc) (gpointer data);

typedef struct _GThread GThread;

typedef union _GMutex GMutex;
typedef struct _GRecMutex GRecMutex;
typedef struct _GRWLock GRWLock;
typedef struct _GCond GCond;
typedef struct _GPrivate GPrivate;
typedef struct _GOnce GOnce;

union _GMutex
{

  gpointer p;
  guint i[2];
};

struct _GRWLock
{

  gpointer p;
  guint i[2];
};

struct _GCond
{

  gpointer p;
  guint i[2];
};

struct _GRecMutex
{

  gpointer p;
  guint i[2];
};


struct _GPrivate
{

  gpointer p;
  GDestroyNotify notify;
  gpointer future[2];
};

typedef enum
{
  G_ONCE_STATUS_NOTCALLED,
  G_ONCE_STATUS_PROGRESS,
  G_ONCE_STATUS_READY
} GOnceStatus;


struct _GOnce
{
  volatile GOnceStatus status;
  volatile gpointer retval;
};
# 139 "/usr/include/glib-2.0/glib/gthread.h"
extern
GThread * g_thread_ref (GThread *thread);
extern
void g_thread_unref (GThread *thread);
extern
GThread * g_thread_new (const gchar *name,
                                                 GThreadFunc func,
                                                 gpointer data);
extern
GThread * g_thread_try_new (const gchar *name,
                                                 GThreadFunc func,
                                                 gpointer data,
                                                 GError **error);
extern
GThread * g_thread_self (void);
extern
void g_thread_exit (gpointer retval);
extern
gpointer g_thread_join (GThread *thread);
extern
void g_thread_yield (void);


extern
void g_mutex_init (GMutex *mutex);
extern
void g_mutex_clear (GMutex *mutex);
extern
void g_mutex_lock (GMutex *mutex);
extern
gboolean g_mutex_trylock (GMutex *mutex);
extern
void g_mutex_unlock (GMutex *mutex);

extern
void g_rw_lock_init (GRWLock *rw_lock);
extern
void g_rw_lock_clear (GRWLock *rw_lock);
extern
void g_rw_lock_writer_lock (GRWLock *rw_lock);
extern
gboolean g_rw_lock_writer_trylock (GRWLock *rw_lock);
extern
void g_rw_lock_writer_unlock (GRWLock *rw_lock);
extern
void g_rw_lock_reader_lock (GRWLock *rw_lock);
extern
gboolean g_rw_lock_reader_trylock (GRWLock *rw_lock);
extern
void g_rw_lock_reader_unlock (GRWLock *rw_lock);

extern
void g_rec_mutex_init (GRecMutex *rec_mutex);
extern
void g_rec_mutex_clear (GRecMutex *rec_mutex);
extern
void g_rec_mutex_lock (GRecMutex *rec_mutex);
extern
gboolean g_rec_mutex_trylock (GRecMutex *rec_mutex);
extern
void g_rec_mutex_unlock (GRecMutex *rec_mutex);

extern
void g_cond_init (GCond *cond);
extern
void g_cond_clear (GCond *cond);
extern
void g_cond_wait (GCond *cond,
                                                 GMutex *mutex);
extern
void g_cond_signal (GCond *cond);
extern
void g_cond_broadcast (GCond *cond);
extern
gboolean g_cond_wait_until (GCond *cond,
                                                 GMutex *mutex,
                                                 gint64 end_time);

extern
gpointer g_private_get (GPrivate *key);
extern
void g_private_set (GPrivate *key,
                                                 gpointer value);
extern
void g_private_replace (GPrivate *key,
                                                 gpointer value);

extern
gpointer g_once_impl (GOnce *once,
                                                 GThreadFunc func,
                                                 gpointer arg);
extern
gboolean g_once_init_enter (volatile void *location);
extern
void g_once_init_leave (volatile void *location,
                                                 gsize result);
# 266 "/usr/include/glib-2.0/glib/gthread.h"
extern
guint g_get_num_processors (void);
# 33 "/usr/include/glib-2.0/glib/gasyncqueue.h" 2



typedef struct _GAsyncQueue GAsyncQueue;

extern
GAsyncQueue *g_async_queue_new (void);
extern
GAsyncQueue *g_async_queue_new_full (GDestroyNotify item_free_func);
extern
void g_async_queue_lock (GAsyncQueue *queue);
extern
void g_async_queue_unlock (GAsyncQueue *queue);
extern
GAsyncQueue *g_async_queue_ref (GAsyncQueue *queue);
extern
void g_async_queue_unref (GAsyncQueue *queue);

__attribute__((__deprecated__)) extern
void g_async_queue_ref_unlocked (GAsyncQueue *queue);

__attribute__((__deprecated__)) extern
void g_async_queue_unref_and_unlock (GAsyncQueue *queue);

extern
void g_async_queue_push (GAsyncQueue *queue,
                                                 gpointer data);
extern
void g_async_queue_push_unlocked (GAsyncQueue *queue,
                                                 gpointer data);
extern
void g_async_queue_push_sorted (GAsyncQueue *queue,
                                                 gpointer data,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);
extern
void g_async_queue_push_sorted_unlocked (GAsyncQueue *queue,
                                                 gpointer data,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);
extern
gpointer g_async_queue_pop (GAsyncQueue *queue);
extern
gpointer g_async_queue_pop_unlocked (GAsyncQueue *queue);
extern
gpointer g_async_queue_try_pop (GAsyncQueue *queue);
extern
gpointer g_async_queue_try_pop_unlocked (GAsyncQueue *queue);
extern
gpointer g_async_queue_timeout_pop (GAsyncQueue *queue,
                                                 guint64 timeout);
extern
gpointer g_async_queue_timeout_pop_unlocked (GAsyncQueue *queue,
                                                 guint64 timeout);
extern
gint g_async_queue_length (GAsyncQueue *queue);
extern
gint g_async_queue_length_unlocked (GAsyncQueue *queue);
extern
void g_async_queue_sort (GAsyncQueue *queue,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);
extern
void g_async_queue_sort_unlocked (GAsyncQueue *queue,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);

__attribute__((__deprecated__)) extern
gpointer g_async_queue_timed_pop (GAsyncQueue *queue,
                                                 GTimeVal *end_time);
__attribute__((__deprecated__)) extern
gpointer g_async_queue_timed_pop_unlocked (GAsyncQueue *queue,
                                                 GTimeVal *end_time);
# 33 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gbacktrace.h" 1
# 33 "/usr/include/glib-2.0/glib/gbacktrace.h"
# 1 "/usr/include/signal.h" 1 3 4
# 32 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/sigset.h" 1 3 4
# 23 "/usr/include/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 103 "/usr/include/bits/sigset.h" 3 4
extern int __sigismember (const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);
# 33 "/usr/include/signal.h" 2 3 4







typedef __sig_atomic_t sig_atomic_t;
# 49 "/usr/include/signal.h" 3 4
typedef __sigset_t sigset_t;








# 1 "/usr/include/bits/signum.h" 1 3 4
# 58 "/usr/include/signal.h" 2 3 4
# 67 "/usr/include/signal.h" 3 4
typedef __uid_t uid_t;
# 80 "/usr/include/signal.h" 3 4
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
# 297 "/usr/include/bits/siginfo.h" 3 4
typedef union pthread_attr_t pthread_attr_t;



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
# 395 "/usr/include/signal.h" 3 4
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
# 396 "/usr/include/signal.h" 2 3 4
# 1 "/usr/include/bits/sigthread.h" 1 3 4
# 30 "/usr/include/bits/sigthread.h" 3 4
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ ));


extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ ));
# 397 "/usr/include/signal.h" 2 3 4






extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ ));

extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ ));
# 34 "/usr/include/glib-2.0/glib/gbacktrace.h" 2



extern
void g_on_error_query (const gchar *prg_name);
extern
void g_on_error_stack_trace (const gchar *prg_name);
# 35 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gbase64.h" 1
# 30 "/usr/include/glib-2.0/glib/gbase64.h"
extern
gsize g_base64_encode_step (const guchar *in,
                                 gsize len,
                                 gboolean break_lines,
                                 gchar *out,
                                 gint *state,
                                 gint *save);
extern
gsize g_base64_encode_close (gboolean break_lines,
                                 gchar *out,
                                 gint *state,
                                 gint *save);
extern
gchar* g_base64_encode (const guchar *data,
                                 gsize len) __attribute__((__malloc__));
extern
gsize g_base64_decode_step (const gchar *in,
                                 gsize len,
                                 guchar *out,
                                 gint *state,
                                 guint *save);
extern
guchar *g_base64_decode (const gchar *text,
                                 gsize *out_len) __attribute__((__malloc__));
extern
guchar *g_base64_decode_inplace (gchar *text,
                                 gsize *out_len);
# 36 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gbitlock.h" 1
# 32 "/usr/include/glib-2.0/glib/gbitlock.h"
extern
void g_bit_lock (volatile gint *address,
                                           gint lock_bit);
extern
gboolean g_bit_trylock (volatile gint *address,
                                           gint lock_bit);
extern
void g_bit_unlock (volatile gint *address,
                                           gint lock_bit);

extern
void g_pointer_bit_lock (volatile void *address,
                                           gint lock_bit);
extern
gboolean g_pointer_bit_trylock (volatile void *address,
                                           gint lock_bit);
extern
void g_pointer_bit_unlock (volatile void *address,
                                           gint lock_bit);
# 37 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gbookmarkfile.h" 1
# 57 "/usr/include/glib-2.0/glib/gbookmarkfile.h"
typedef enum
{
  G_BOOKMARK_FILE_ERROR_INVALID_URI,
  G_BOOKMARK_FILE_ERROR_INVALID_VALUE,
  G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED,
  G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND,
  G_BOOKMARK_FILE_ERROR_READ,
  G_BOOKMARK_FILE_ERROR_UNKNOWN_ENCODING,
  G_BOOKMARK_FILE_ERROR_WRITE,
  G_BOOKMARK_FILE_ERROR_FILE_NOT_FOUND
} GBookmarkFileError;

extern
GQuark g_bookmark_file_error_quark (void);







typedef struct _GBookmarkFile GBookmarkFile;

extern
GBookmarkFile *g_bookmark_file_new (void);
extern
void g_bookmark_file_free (GBookmarkFile *bookmark);

extern
gboolean g_bookmark_file_load_from_file (GBookmarkFile *bookmark,
          const gchar *filename,
          GError **error);
extern
gboolean g_bookmark_file_load_from_data (GBookmarkFile *bookmark,
          const gchar *data,
          gsize length,
          GError **error);
extern
gboolean g_bookmark_file_load_from_data_dirs (GBookmarkFile *bookmark,
          const gchar *file,
          gchar **full_path,
          GError **error);
extern
gchar * g_bookmark_file_to_data (GBookmarkFile *bookmark,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
gboolean g_bookmark_file_to_file (GBookmarkFile *bookmark,
          const gchar *filename,
          GError **error);

extern
void g_bookmark_file_set_title (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *title);
extern
gchar * g_bookmark_file_get_title (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error) __attribute__((__malloc__));
extern
void g_bookmark_file_set_description (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *description);
extern
gchar * g_bookmark_file_get_description (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error) __attribute__((__malloc__));
extern
void g_bookmark_file_set_mime_type (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *mime_type);
extern
gchar * g_bookmark_file_get_mime_type (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error) __attribute__((__malloc__));
extern
void g_bookmark_file_set_groups (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar **groups,
          gsize length);
extern
void g_bookmark_file_add_group (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *group);
extern
gboolean g_bookmark_file_has_group (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *group,
          GError **error);
extern
gchar ** g_bookmark_file_get_groups (GBookmarkFile *bookmark,
          const gchar *uri,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_bookmark_file_add_application (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          const gchar *exec);
extern
gboolean g_bookmark_file_has_application (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          GError **error);
extern
gchar ** g_bookmark_file_get_applications (GBookmarkFile *bookmark,
          const gchar *uri,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
gboolean g_bookmark_file_set_app_info (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          const gchar *exec,
          gint count,
          time_t stamp,
          GError **error);
extern
gboolean g_bookmark_file_get_app_info (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          gchar **exec,
          guint *count,
          time_t *stamp,
          GError **error);
extern
void g_bookmark_file_set_is_private (GBookmarkFile *bookmark,
          const gchar *uri,
          gboolean is_private);
extern
gboolean g_bookmark_file_get_is_private (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
void g_bookmark_file_set_icon (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *href,
          const gchar *mime_type);
extern
gboolean g_bookmark_file_get_icon (GBookmarkFile *bookmark,
          const gchar *uri,
          gchar **href,
          gchar **mime_type,
          GError **error);
extern
void g_bookmark_file_set_added (GBookmarkFile *bookmark,
          const gchar *uri,
          time_t added);
extern
time_t g_bookmark_file_get_added (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
void g_bookmark_file_set_modified (GBookmarkFile *bookmark,
          const gchar *uri,
          time_t modified);
extern
time_t g_bookmark_file_get_modified (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
void g_bookmark_file_set_visited (GBookmarkFile *bookmark,
          const gchar *uri,
          time_t visited);
extern
time_t g_bookmark_file_get_visited (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
gboolean g_bookmark_file_has_item (GBookmarkFile *bookmark,
          const gchar *uri);
extern
gint g_bookmark_file_get_size (GBookmarkFile *bookmark);
extern
gchar ** g_bookmark_file_get_uris (GBookmarkFile *bookmark,
          gsize *length) __attribute__((__malloc__));
extern
gboolean g_bookmark_file_remove_group (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *group,
          GError **error);
extern
gboolean g_bookmark_file_remove_application (GBookmarkFile *bookmark,
          const gchar *uri,
          const gchar *name,
          GError **error);
extern
gboolean g_bookmark_file_remove_item (GBookmarkFile *bookmark,
          const gchar *uri,
          GError **error);
extern
gboolean g_bookmark_file_move_item (GBookmarkFile *bookmark,
          const gchar *old_uri,
          const gchar *new_uri,
          GError **error);
# 38 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gbytes.h" 1
# 34 "/usr/include/glib-2.0/glib/gbytes.h"
extern
GBytes * g_bytes_new (gconstpointer data,
                                                 gsize size);

extern
GBytes * g_bytes_new_take (gpointer data,
                                                 gsize size);

extern
GBytes * g_bytes_new_static (gconstpointer data,
                                                 gsize size);

extern
GBytes * g_bytes_new_with_free_func (gconstpointer data,
                                                 gsize size,
                                                 GDestroyNotify free_func,
                                                 gpointer user_data);

extern
GBytes * g_bytes_new_from_bytes (GBytes *bytes,
                                                 gsize offset,
                                                 gsize length);

extern
gconstpointer g_bytes_get_data (GBytes *bytes,
                                                 gsize *size);

extern
gsize g_bytes_get_size (GBytes *bytes);

extern
GBytes * g_bytes_ref (GBytes *bytes);

extern
void g_bytes_unref (GBytes *bytes);

extern
gpointer g_bytes_unref_to_data (GBytes *bytes,
                                                 gsize *size);

extern
GByteArray * g_bytes_unref_to_array (GBytes *bytes);

extern
guint g_bytes_hash (gconstpointer bytes);

extern
gboolean g_bytes_equal (gconstpointer bytes1,
                                                 gconstpointer bytes2);

extern
gint g_bytes_compare (gconstpointer bytes1,
                                                 gconstpointer bytes2);
# 39 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gcharset.h" 1
# 31 "/usr/include/glib-2.0/glib/gcharset.h"
extern
gboolean g_get_charset (const char **charset);
extern
gchar * g_get_codeset (void);

extern
const gchar * const * g_get_language_names (void);
extern
gchar ** g_get_locale_variants (const gchar *locale);
# 40 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gchecksum.h" 1
# 46 "/usr/include/glib-2.0/glib/gchecksum.h"
typedef enum {
  G_CHECKSUM_MD5,
  G_CHECKSUM_SHA1,
  G_CHECKSUM_SHA256,
  G_CHECKSUM_SHA512
} GChecksumType;
# 62 "/usr/include/glib-2.0/glib/gchecksum.h"
typedef struct _GChecksum GChecksum;

extern
gssize g_checksum_type_get_length (GChecksumType checksum_type);

extern
GChecksum * g_checksum_new (GChecksumType checksum_type);
extern
void g_checksum_reset (GChecksum *checksum);
extern
GChecksum * g_checksum_copy (const GChecksum *checksum);
extern
void g_checksum_free (GChecksum *checksum);
extern
void g_checksum_update (GChecksum *checksum,
                                                     const guchar *data,
                                                     gssize length);
extern
const gchar * g_checksum_get_string (GChecksum *checksum);
extern
void g_checksum_get_digest (GChecksum *checksum,
                                                     guint8 *buffer,
                                                     gsize *digest_len);

extern
gchar *g_compute_checksum_for_data (GChecksumType checksum_type,
                                                     const guchar *data,
                                                     gsize length);
extern
gchar *g_compute_checksum_for_string (GChecksumType checksum_type,
                                                     const gchar *str,
                                                     gssize length);

extern
gchar *g_compute_checksum_for_bytes (GChecksumType checksum_type,
                                                     GBytes *data);
# 41 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gconvert.h" 1
# 49 "/usr/include/glib-2.0/glib/gconvert.h"
typedef enum
{
  G_CONVERT_ERROR_NO_CONVERSION,
  G_CONVERT_ERROR_ILLEGAL_SEQUENCE,
  G_CONVERT_ERROR_FAILED,
  G_CONVERT_ERROR_PARTIAL_INPUT,
  G_CONVERT_ERROR_BAD_URI,
  G_CONVERT_ERROR_NOT_ABSOLUTE_PATH,
  G_CONVERT_ERROR_NO_MEMORY
} GConvertError;
# 68 "/usr/include/glib-2.0/glib/gconvert.h"
extern
GQuark g_convert_error_quark (void);







typedef struct _GIConv *GIConv;

extern
GIConv g_iconv_open (const gchar *to_codeset,
         const gchar *from_codeset);
extern
gsize g_iconv (GIConv converter,
         gchar **inbuf,
         gsize *inbytes_left,
         gchar **outbuf,
         gsize *outbytes_left);
extern
gint g_iconv_close (GIConv converter);


extern
gchar* g_convert (const gchar *str,
    gssize len,
    const gchar *to_codeset,
    const gchar *from_codeset,
    gsize *bytes_read,
    gsize *bytes_written,
    GError **error) __attribute__((__malloc__));
extern
gchar* g_convert_with_iconv (const gchar *str,
    gssize len,
    GIConv converter,
    gsize *bytes_read,
    gsize *bytes_written,
    GError **error) __attribute__((__malloc__));
extern
gchar* g_convert_with_fallback (const gchar *str,
    gssize len,
    const gchar *to_codeset,
    const gchar *from_codeset,
    const gchar *fallback,
    gsize *bytes_read,
    gsize *bytes_written,
    GError **error) __attribute__((__malloc__));




extern
gchar* g_locale_to_utf8 (const gchar *opsysstring,
      gssize len,
      gsize *bytes_read,
      gsize *bytes_written,
      GError **error) __attribute__((__malloc__));
extern
gchar* g_locale_from_utf8 (const gchar *utf8string,
      gssize len,
      gsize *bytes_read,
      gsize *bytes_written,
      GError **error) __attribute__((__malloc__));




extern
gchar* g_filename_to_utf8 (const gchar *opsysstring,
        gssize len,
        gsize *bytes_read,
        gsize *bytes_written,
        GError **error) __attribute__((__malloc__));
extern
gchar* g_filename_from_utf8 (const gchar *utf8string,
        gssize len,
        gsize *bytes_read,
        gsize *bytes_written,
        GError **error) __attribute__((__malloc__));

extern
gchar *g_filename_from_uri (const gchar *uri,
       gchar **hostname,
       GError **error) __attribute__((__malloc__));

extern
gchar *g_filename_to_uri (const gchar *filename,
       const gchar *hostname,
       GError **error) __attribute__((__malloc__));
extern
gchar *g_filename_display_name (const gchar *filename) __attribute__((__malloc__));
extern
gboolean g_get_filename_charsets (const gchar ***charsets);

extern
gchar *g_filename_display_basename (const gchar *filename) __attribute__((__malloc__));

extern
gchar **g_uri_list_extract_uris (const gchar *uri_list) __attribute__((__malloc__));
# 42 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gdataset.h" 1
# 36 "/usr/include/glib-2.0/glib/gdataset.h"
typedef struct _GData GData;

typedef void (*GDataForeachFunc) (GQuark key_id,
                                                 gpointer data,
                                                 gpointer user_data);



extern
void g_datalist_init (GData **datalist);
extern
void g_datalist_clear (GData **datalist);
extern
gpointer g_datalist_id_get_data (GData **datalist,
      GQuark key_id);
extern
void g_datalist_id_set_data_full (GData **datalist,
      GQuark key_id,
      gpointer data,
      GDestroyNotify destroy_func);

typedef gpointer (*GDuplicateFunc) (gpointer data, gpointer user_data);

extern
gpointer g_datalist_id_dup_data (GData **datalist,
                                         GQuark key_id,
                                         GDuplicateFunc dup_func,
      gpointer user_data);
extern
gboolean g_datalist_id_replace_data (GData **datalist,
                                         GQuark key_id,
                                         gpointer oldval,
                                         gpointer newval,
                                         GDestroyNotify destroy,
      GDestroyNotify *old_destroy);

extern
gpointer g_datalist_id_remove_no_notify (GData **datalist,
      GQuark key_id);
extern
void g_datalist_foreach (GData **datalist,
      GDataForeachFunc func,
      gpointer user_data);
# 89 "/usr/include/glib-2.0/glib/gdataset.h"
extern
void g_datalist_set_flags (GData **datalist,
      guint flags);
extern
void g_datalist_unset_flags (GData **datalist,
      guint flags);
extern
guint g_datalist_get_flags (GData **datalist);
# 113 "/usr/include/glib-2.0/glib/gdataset.h"
extern
void g_dataset_destroy (gconstpointer dataset_location);
extern
gpointer g_dataset_id_get_data (gconstpointer dataset_location,
                                         GQuark key_id);
extern
gpointer g_datalist_get_data (GData **datalist,
       const gchar *key);
extern
void g_dataset_id_set_data_full (gconstpointer dataset_location,
                                         GQuark key_id,
                                         gpointer data,
                                         GDestroyNotify destroy_func);
extern
gpointer g_dataset_id_remove_no_notify (gconstpointer dataset_location,
                                         GQuark key_id);
extern
void g_dataset_foreach (gconstpointer dataset_location,
                                         GDataForeachFunc func,
                                         gpointer user_data);
# 43 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gdate.h" 1
# 48 "/usr/include/glib-2.0/glib/gdate.h"
typedef gint32 GTime;
typedef guint16 GDateYear;
typedef guint8 GDateDay;
typedef struct _GDate GDate;


typedef enum
{
  G_DATE_DAY = 0,
  G_DATE_MONTH = 1,
  G_DATE_YEAR = 2
} GDateDMY;


typedef enum
{
  G_DATE_BAD_WEEKDAY = 0,
  G_DATE_MONDAY = 1,
  G_DATE_TUESDAY = 2,
  G_DATE_WEDNESDAY = 3,
  G_DATE_THURSDAY = 4,
  G_DATE_FRIDAY = 5,
  G_DATE_SATURDAY = 6,
  G_DATE_SUNDAY = 7
} GDateWeekday;
typedef enum
{
  G_DATE_BAD_MONTH = 0,
  G_DATE_JANUARY = 1,
  G_DATE_FEBRUARY = 2,
  G_DATE_MARCH = 3,
  G_DATE_APRIL = 4,
  G_DATE_MAY = 5,
  G_DATE_JUNE = 6,
  G_DATE_JULY = 7,
  G_DATE_AUGUST = 8,
  G_DATE_SEPTEMBER = 9,
  G_DATE_OCTOBER = 10,
  G_DATE_NOVEMBER = 11,
  G_DATE_DECEMBER = 12
} GDateMonth;
# 99 "/usr/include/glib-2.0/glib/gdate.h"
struct _GDate
{
  guint julian_days : 32;





  guint julian : 1;
  guint dmy : 1;


  guint day : 6;
  guint month : 4;
  guint year : 16;
};





extern
GDate* g_date_new (void);
extern
GDate* g_date_new_dmy (GDateDay day,
                                           GDateMonth month,
                                           GDateYear year);
extern
GDate* g_date_new_julian (guint32 julian_day);
extern
void g_date_free (GDate *date);






extern
gboolean g_date_valid (const GDate *date);
extern
gboolean g_date_valid_day (GDateDay day) __attribute__((__const__));
extern
gboolean g_date_valid_month (GDateMonth month) __attribute__((__const__));
extern
gboolean g_date_valid_year (GDateYear year) __attribute__((__const__));
extern
gboolean g_date_valid_weekday (GDateWeekday weekday) __attribute__((__const__));
extern
gboolean g_date_valid_julian (guint32 julian_date) __attribute__((__const__));
extern
gboolean g_date_valid_dmy (GDateDay day,
                                           GDateMonth month,
                                           GDateYear year) __attribute__((__const__));

extern
GDateWeekday g_date_get_weekday (const GDate *date);
extern
GDateMonth g_date_get_month (const GDate *date);
extern
GDateYear g_date_get_year (const GDate *date);
extern
GDateDay g_date_get_day (const GDate *date);
extern
guint32 g_date_get_julian (const GDate *date);
extern
guint g_date_get_day_of_year (const GDate *date);






extern
guint g_date_get_monday_week_of_year (const GDate *date);
extern
guint g_date_get_sunday_week_of_year (const GDate *date);
extern
guint g_date_get_iso8601_week_of_year (const GDate *date);





extern
void g_date_clear (GDate *date,
                                           guint n_dates);





extern
void g_date_set_parse (GDate *date,
                                           const gchar *str);
extern
void g_date_set_time_t (GDate *date,
        time_t timet);
extern
void g_date_set_time_val (GDate *date,
        GTimeVal *timeval);

__attribute__((__deprecated__)) extern
void g_date_set_time (GDate *date,
                                           GTime time_);

extern
void g_date_set_month (GDate *date,
                                           GDateMonth month);
extern
void g_date_set_day (GDate *date,
                                           GDateDay day);
extern
void g_date_set_year (GDate *date,
                                           GDateYear year);
extern
void g_date_set_dmy (GDate *date,
                                           GDateDay day,
                                           GDateMonth month,
                                           GDateYear y);
extern
void g_date_set_julian (GDate *date,
                                           guint32 julian_date);
extern
gboolean g_date_is_first_of_month (const GDate *date);
extern
gboolean g_date_is_last_of_month (const GDate *date);


extern
void g_date_add_days (GDate *date,
                                           guint n_days);
extern
void g_date_subtract_days (GDate *date,
                                           guint n_days);


extern
void g_date_add_months (GDate *date,
                                           guint n_months);
extern
void g_date_subtract_months (GDate *date,
                                           guint n_months);


extern
void g_date_add_years (GDate *date,
                                           guint n_years);
extern
void g_date_subtract_years (GDate *date,
                                           guint n_years);
extern
gboolean g_date_is_leap_year (GDateYear year) __attribute__((__const__));
extern
guint8 g_date_get_days_in_month (GDateMonth month,
                                           GDateYear year) __attribute__((__const__));
extern
guint8 g_date_get_monday_weeks_in_year (GDateYear year) __attribute__((__const__));
extern
guint8 g_date_get_sunday_weeks_in_year (GDateYear year) __attribute__((__const__));



extern
gint g_date_days_between (const GDate *date1,
        const GDate *date2);


extern
gint g_date_compare (const GDate *lhs,
                                           const GDate *rhs);
extern
void g_date_to_struct_tm (const GDate *date,
                                           struct tm *tm);

extern
void g_date_clamp (GDate *date,
        const GDate *min_date,
        const GDate *max_date);


extern
void g_date_order (GDate *date1, GDate *date2);




extern
gsize g_date_strftime (gchar *s,
                                           gsize slen,
                                           const gchar *format,
                                           const GDate *date);
# 44 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gdatetime.h" 1
# 33 "/usr/include/glib-2.0/glib/gdatetime.h"
# 1 "/usr/include/glib-2.0/glib/gtimezone.h" 1
# 31 "/usr/include/glib-2.0/glib/gtimezone.h"
typedef struct _GTimeZone GTimeZone;
# 48 "/usr/include/glib-2.0/glib/gtimezone.h"
typedef enum
{
  G_TIME_TYPE_STANDARD,
  G_TIME_TYPE_DAYLIGHT,
  G_TIME_TYPE_UNIVERSAL
} GTimeType;

extern
GTimeZone * g_time_zone_new (const gchar *identifier);
extern
GTimeZone * g_time_zone_new_utc (void);
extern
GTimeZone * g_time_zone_new_local (void);

extern
GTimeZone * g_time_zone_ref (GTimeZone *tz);
extern
void g_time_zone_unref (GTimeZone *tz);

extern
gint g_time_zone_find_interval (GTimeZone *tz,
                                                                         GTimeType type,
                                                                         gint64 time_);

extern
gint g_time_zone_adjust_time (GTimeZone *tz,
                                                                         GTimeType type,
                                                                         gint64 *time_);

extern
const gchar * g_time_zone_get_abbreviation (GTimeZone *tz,
                                                                         gint interval);
extern
gint32 g_time_zone_get_offset (GTimeZone *tz,
                                                                         gint interval);
extern
gboolean g_time_zone_is_dst (GTimeZone *tz,
                                                                         gint interval);
# 34 "/usr/include/glib-2.0/glib/gdatetime.h" 2
# 89 "/usr/include/glib-2.0/glib/gdatetime.h"
typedef gint64 GTimeSpan;
# 99 "/usr/include/glib-2.0/glib/gdatetime.h"
typedef struct _GDateTime GDateTime;

extern
void g_date_time_unref (GDateTime *datetime);
extern
GDateTime * g_date_time_ref (GDateTime *datetime);

extern
GDateTime * g_date_time_new_now (GTimeZone *tz);
extern
GDateTime * g_date_time_new_now_local (void);
extern
GDateTime * g_date_time_new_now_utc (void);

extern
GDateTime * g_date_time_new_from_unix_local (gint64 t);
extern
GDateTime * g_date_time_new_from_unix_utc (gint64 t);

extern
GDateTime * g_date_time_new_from_timeval_local (const GTimeVal *tv);
extern
GDateTime * g_date_time_new_from_timeval_utc (const GTimeVal *tv);

extern
GDateTime * g_date_time_new (GTimeZone *tz,
                                                                         gint year,
                                                                         gint month,
                                                                         gint day,
                                                                         gint hour,
                                                                         gint minute,
                                                                         gdouble seconds);
extern
GDateTime * g_date_time_new_local (gint year,
                                                                         gint month,
                                                                         gint day,
                                                                         gint hour,
                                                                         gint minute,
                                                                         gdouble seconds);
extern
GDateTime * g_date_time_new_utc (gint year,
                                                                         gint month,
                                                                         gint day,
                                                                         gint hour,
                                                                         gint minute,
                                                                         gdouble seconds);

extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add (GDateTime *datetime,
                                                                         GTimeSpan timespan);

extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_years (GDateTime *datetime,
                                                                         gint years);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_months (GDateTime *datetime,
                                                                         gint months);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_weeks (GDateTime *datetime,
                                                                         gint weeks);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_days (GDateTime *datetime,
                                                                         gint days);

extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_hours (GDateTime *datetime,
                                                                         gint hours);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_minutes (GDateTime *datetime,
                                                                         gint minutes);
extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_seconds (GDateTime *datetime,
                                                                         gdouble seconds);

extern
__attribute__((warn_unused_result))
GDateTime * g_date_time_add_full (GDateTime *datetime,
                                                                         gint years,
                                                                         gint months,
                                                                         gint days,
                                                                         gint hours,
                                                                         gint minutes,
                                                                         gdouble seconds);

extern
gint g_date_time_compare (gconstpointer dt1,
                                                                         gconstpointer dt2);
extern
GTimeSpan g_date_time_difference (GDateTime *end,
                                                                         GDateTime *begin);
extern
guint g_date_time_hash (gconstpointer datetime);
extern
gboolean g_date_time_equal (gconstpointer dt1,
                                                                         gconstpointer dt2);

extern
void g_date_time_get_ymd (GDateTime *datetime,
                                                                         gint *year,
                                                                         gint *month,
                                                                         gint *day);

extern
gint g_date_time_get_year (GDateTime *datetime);
extern
gint g_date_time_get_month (GDateTime *datetime);
extern
gint g_date_time_get_day_of_month (GDateTime *datetime);

extern
gint g_date_time_get_week_numbering_year (GDateTime *datetime);
extern
gint g_date_time_get_week_of_year (GDateTime *datetime);
extern
gint g_date_time_get_day_of_week (GDateTime *datetime);

extern
gint g_date_time_get_day_of_year (GDateTime *datetime);

extern
gint g_date_time_get_hour (GDateTime *datetime);
extern
gint g_date_time_get_minute (GDateTime *datetime);
extern
gint g_date_time_get_second (GDateTime *datetime);
extern
gint g_date_time_get_microsecond (GDateTime *datetime);
extern
gdouble g_date_time_get_seconds (GDateTime *datetime);

extern
gint64 g_date_time_to_unix (GDateTime *datetime);
extern
gboolean g_date_time_to_timeval (GDateTime *datetime,
                                                                         GTimeVal *tv);

extern
GTimeSpan g_date_time_get_utc_offset (GDateTime *datetime);
extern
const gchar * g_date_time_get_timezone_abbreviation (GDateTime *datetime);
extern
gboolean g_date_time_is_daylight_savings (GDateTime *datetime);

extern
GDateTime * g_date_time_to_timezone (GDateTime *datetime,
                                                                         GTimeZone *tz);
extern
GDateTime * g_date_time_to_local (GDateTime *datetime);
extern
GDateTime * g_date_time_to_utc (GDateTime *datetime);

extern
gchar * g_date_time_format (GDateTime *datetime,
                                                                         const gchar *format) __attribute__((__malloc__));
# 45 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gdir.h" 1
# 32 "/usr/include/glib-2.0/glib/gdir.h"
# 1 "/usr/include/dirent.h" 1 3 4
# 62 "/usr/include/dirent.h" 3 4
# 1 "/usr/include/bits/dirent.h" 1 3 4
# 22 "/usr/include/bits/dirent.h" 3 4
struct dirent
  {

    __ino_t d_ino;
    __off_t d_off;




    unsigned short int d_reclen;
    unsigned char d_type;
    char d_name[256];
  };
# 63 "/usr/include/dirent.h" 2 3 4
# 98 "/usr/include/dirent.h" 3 4
enum
  {
    DT_UNKNOWN = 0,

    DT_FIFO = 1,

    DT_CHR = 2,

    DT_DIR = 4,

    DT_BLK = 6,

    DT_REG = 8,

    DT_LNK = 10,

    DT_SOCK = 12,

    DT_WHT = 14

  };
# 128 "/usr/include/dirent.h" 3 4
typedef struct __dirstream DIR;






extern DIR *opendir (const char *__name) __attribute__ ((__nonnull__ (1)));






extern DIR *fdopendir (int __fd);







extern int closedir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
# 163 "/usr/include/dirent.h" 3 4
extern struct dirent *readdir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
# 184 "/usr/include/dirent.h" 3 4
extern int readdir_r (DIR *__restrict __dirp,
        struct dirent *__restrict __entry,
        struct dirent **__restrict __result)
     __attribute__ ((__nonnull__ (1, 2, 3)));
# 209 "/usr/include/dirent.h" 3 4
extern void rewinddir (DIR *__dirp) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern void seekdir (DIR *__dirp, long int __pos) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern long int telldir (DIR *__dirp) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int dirfd (DIR *__dirp) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 245 "/usr/include/dirent.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 246 "/usr/include/dirent.h" 2 3 4
# 255 "/usr/include/dirent.h" 3 4
extern int scandir (const char *__restrict __dir,
      struct dirent ***__restrict __namelist,
      int (*__selector) (const struct dirent *),
      int (*__cmp) (const struct dirent **,
      const struct dirent **))
     __attribute__ ((__nonnull__ (1, 2)));
# 325 "/usr/include/dirent.h" 3 4
extern int alphasort (const struct dirent **__e1,
        const struct dirent **__e2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 353 "/usr/include/dirent.h" 3 4
extern __ssize_t getdirentries (int __fd, char *__restrict __buf,
    size_t __nbytes,
    __off_t *__restrict __basep)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));
# 33 "/usr/include/glib-2.0/glib/gdir.h" 2




typedef struct _GDir GDir;

extern
GDir * g_dir_open (const gchar *path,
            guint flags,
            GError **error);
extern
const gchar * g_dir_read_name (GDir *dir);
extern
void g_dir_rewind (GDir *dir);
extern
void g_dir_close (GDir *dir);
# 46 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/genviron.h" 1
# 36 "/usr/include/glib-2.0/glib/genviron.h"
extern
const gchar * g_getenv (const gchar *variable);
extern
gboolean g_setenv (const gchar *variable,
                                  const gchar *value,
                                  gboolean overwrite);
extern
void g_unsetenv (const gchar *variable);
extern
gchar ** g_listenv (void);

extern
gchar ** g_get_environ (void);
extern
const gchar * g_environ_getenv (gchar **envp,
                                  const gchar *variable);
extern
gchar ** g_environ_setenv (gchar **envp,
                                  const gchar *variable,
                                  const gchar *value,
                                  gboolean overwrite) __attribute__((warn_unused_result));
extern
gchar ** g_environ_unsetenv (gchar **envp,
                                  const gchar *variable) __attribute__((warn_unused_result));
# 47 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gfileutils.h" 1
# 33 "/usr/include/glib-2.0/glib/gfileutils.h"
typedef enum
{
  G_FILE_ERROR_EXIST,
  G_FILE_ERROR_ISDIR,
  G_FILE_ERROR_ACCES,
  G_FILE_ERROR_NAMETOOLONG,
  G_FILE_ERROR_NOENT,
  G_FILE_ERROR_NOTDIR,
  G_FILE_ERROR_NXIO,
  G_FILE_ERROR_NODEV,
  G_FILE_ERROR_ROFS,
  G_FILE_ERROR_TXTBSY,
  G_FILE_ERROR_FAULT,
  G_FILE_ERROR_LOOP,
  G_FILE_ERROR_NOSPC,
  G_FILE_ERROR_NOMEM,
  G_FILE_ERROR_MFILE,
  G_FILE_ERROR_NFILE,
  G_FILE_ERROR_BADF,
  G_FILE_ERROR_INVAL,
  G_FILE_ERROR_PIPE,
  G_FILE_ERROR_AGAIN,
  G_FILE_ERROR_INTR,
  G_FILE_ERROR_IO,
  G_FILE_ERROR_PERM,
  G_FILE_ERROR_NOSYS,
  G_FILE_ERROR_FAILED
} GFileError;





typedef enum
{
  G_FILE_TEST_IS_REGULAR = 1 << 0,
  G_FILE_TEST_IS_SYMLINK = 1 << 1,
  G_FILE_TEST_IS_DIR = 1 << 2,
  G_FILE_TEST_IS_EXECUTABLE = 1 << 3,
  G_FILE_TEST_EXISTS = 1 << 4
} GFileTest;

extern
GQuark g_file_error_quark (void);

extern
GFileError g_file_error_from_errno (gint err_no);

extern
gboolean g_file_test (const gchar *filename,
                              GFileTest test);
extern
gboolean g_file_get_contents (const gchar *filename,
                              gchar **contents,
                              gsize *length,
                              GError **error);
extern
gboolean g_file_set_contents (const gchar *filename,
                              const gchar *contents,
                              gssize length,
                              GError **error);
extern
gchar *g_file_read_link (const gchar *filename,
                              GError **error);


extern
gchar *g_mkdtemp (gchar *tmpl);
extern
gchar *g_mkdtemp_full (gchar *tmpl,
                               gint mode);


extern
gint g_mkstemp (gchar *tmpl);
extern
gint g_mkstemp_full (gchar *tmpl,
                               gint flags,
                               gint mode);


extern
gint g_file_open_tmp (const gchar *tmpl,
                               gchar **name_used,
                               GError **error);
extern
gchar *g_dir_make_tmp (const gchar *tmpl,
                               GError **error);

extern
gchar *g_build_path (const gchar *separator,
                               const gchar *first_element,
                               ...) __attribute__((__malloc__)) __attribute__((__sentinel__));
extern
gchar *g_build_pathv (const gchar *separator,
                               gchar **args) __attribute__((__malloc__));

extern
gchar *g_build_filename (const gchar *first_element,
                               ...) __attribute__((__malloc__)) __attribute__((__sentinel__));
extern
gchar *g_build_filenamev (gchar **args) __attribute__((__malloc__));

extern
gint g_mkdir_with_parents (const gchar *pathname,
                               gint mode);
# 162 "/usr/include/glib-2.0/glib/gfileutils.h"
extern
gboolean g_path_is_absolute (const gchar *file_name);
extern
const gchar *g_path_skip_root (const gchar *file_name);

__attribute__((__deprecated__)) extern
const gchar *g_basename (const gchar *file_name);




extern
gchar *g_get_current_dir (void);
extern
gchar *g_path_get_basename (const gchar *file_name) __attribute__((__malloc__));
extern
gchar *g_path_get_dirname (const gchar *file_name) __attribute__((__malloc__));
# 49 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ggettext.h" 1
# 36 "/usr/include/glib-2.0/glib/ggettext.h"
extern
const gchar *g_strip_context (const gchar *msgid,
                              const gchar *msgval) __attribute__((__format_arg__ (1)));

extern
const gchar *g_dgettext (const gchar *domain,
                              const gchar *msgid) __attribute__((__format_arg__ (2)));
extern
const gchar *g_dcgettext (const gchar *domain,
                              const gchar *msgid,
                              gint category) __attribute__((__format_arg__ (2)));
extern
const gchar *g_dngettext (const gchar *domain,
                              const gchar *msgid,
                              const gchar *msgid_plural,
                              gulong n) __attribute__((__format_arg__ (3)));
extern
const gchar *g_dpgettext (const gchar *domain,
                              const gchar *msgctxtid,
                              gsize msgidoffset) __attribute__((__format_arg__ (2)));
extern
const gchar *g_dpgettext2 (const gchar *domain,
                              const gchar *context,
                              const gchar *msgid) __attribute__((__format_arg__ (3)));
# 50 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ghash.h" 1
# 33 "/usr/include/glib-2.0/glib/ghash.h"
# 1 "/usr/include/glib-2.0/glib/glist.h" 1
# 32 "/usr/include/glib-2.0/glib/glist.h"
# 1 "/usr/include/glib-2.0/glib/gmem.h" 1
# 49 "/usr/include/glib-2.0/glib/gmem.h"
typedef struct _GMemVTable GMemVTable;
# 68 "/usr/include/glib-2.0/glib/gmem.h"
extern
void g_free (gpointer mem);

extern
void g_clear_pointer (gpointer *pp,
                           GDestroyNotify destroy);

extern
gpointer g_malloc (gsize n_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_malloc0 (gsize n_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_realloc (gpointer mem,
      gsize n_bytes) __attribute__((warn_unused_result));
extern
gpointer g_try_malloc (gsize n_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_try_malloc0 (gsize n_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_try_realloc (gpointer mem,
      gsize n_bytes) __attribute__((warn_unused_result));

extern
gpointer g_malloc_n (gsize n_blocks,
      gsize n_block_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_malloc0_n (gsize n_blocks,
      gsize n_block_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_realloc_n (gpointer mem,
      gsize n_blocks,
      gsize n_block_bytes) __attribute__((warn_unused_result));
extern
gpointer g_try_malloc_n (gsize n_blocks,
      gsize n_block_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_try_malloc0_n (gsize n_blocks,
      gsize n_block_bytes) __attribute__((__malloc__)) ;
extern
gpointer g_try_realloc_n (gpointer mem,
      gsize n_blocks,
      gsize n_block_bytes) __attribute__((warn_unused_result));
# 271 "/usr/include/glib-2.0/glib/gmem.h"
struct _GMemVTable {
  gpointer (*malloc) (gsize n_bytes);
  gpointer (*realloc) (gpointer mem,
      gsize n_bytes);
  void (*free) (gpointer mem);

  gpointer (*calloc) (gsize n_blocks,
      gsize n_block_bytes);
  gpointer (*try_malloc) (gsize n_bytes);
  gpointer (*try_realloc) (gpointer mem,
      gsize n_bytes);
};
extern
void g_mem_set_vtable (GMemVTable *vtable);
extern
gboolean g_mem_is_system_malloc (void);

extern gboolean g_mem_gc_friendly;



extern GMemVTable *glib_mem_profiler_table;
extern
void g_mem_profile (void);
# 33 "/usr/include/glib-2.0/glib/glist.h" 2
# 1 "/usr/include/glib-2.0/glib/gnode.h" 1
# 36 "/usr/include/glib-2.0/glib/gnode.h"
typedef struct _GNode GNode;


typedef enum
{
  G_TRAVERSE_LEAVES = 1 << 0,
  G_TRAVERSE_NON_LEAVES = 1 << 1,
  G_TRAVERSE_ALL = G_TRAVERSE_LEAVES | G_TRAVERSE_NON_LEAVES,
  G_TRAVERSE_MASK = 0x03,
  G_TRAVERSE_LEAFS = G_TRAVERSE_LEAVES,
  G_TRAVERSE_NON_LEAFS = G_TRAVERSE_NON_LEAVES
} GTraverseFlags;


typedef enum
{
  G_IN_ORDER,
  G_PRE_ORDER,
  G_POST_ORDER,
  G_LEVEL_ORDER
} GTraverseType;

typedef gboolean (*GNodeTraverseFunc) (GNode *node,
       gpointer data);
typedef void (*GNodeForeachFunc) (GNode *node,
       gpointer data);
# 75 "/usr/include/glib-2.0/glib/gnode.h"
typedef gpointer (*GCopyFunc) (gconstpointer src,
                                                 gpointer data);



struct _GNode
{
  gpointer data;
  GNode *next;
  GNode *prev;
  GNode *parent;
  GNode *children;
};
# 113 "/usr/include/glib-2.0/glib/gnode.h"
extern
GNode* g_node_new (gpointer data);
extern
void g_node_destroy (GNode *root);
extern
void g_node_unlink (GNode *node);
extern
GNode* g_node_copy_deep (GNode *node,
     GCopyFunc copy_func,
     gpointer data);
extern
GNode* g_node_copy (GNode *node);
extern
GNode* g_node_insert (GNode *parent,
     gint position,
     GNode *node);
extern
GNode* g_node_insert_before (GNode *parent,
     GNode *sibling,
     GNode *node);
extern
GNode* g_node_insert_after (GNode *parent,
     GNode *sibling,
     GNode *node);
extern
GNode* g_node_prepend (GNode *parent,
     GNode *node);
extern
guint g_node_n_nodes (GNode *root,
     GTraverseFlags flags);
extern
GNode* g_node_get_root (GNode *node);
extern
gboolean g_node_is_ancestor (GNode *node,
     GNode *descendant);
extern
guint g_node_depth (GNode *node);
extern
GNode* g_node_find (GNode *root,
     GTraverseType order,
     GTraverseFlags flags,
     gpointer data);
# 238 "/usr/include/glib-2.0/glib/gnode.h"
extern
void g_node_traverse (GNode *root,
     GTraverseType order,
     GTraverseFlags flags,
     gint max_depth,
     GNodeTraverseFunc func,
     gpointer data);






extern
guint g_node_max_height (GNode *root);

extern
void g_node_children_foreach (GNode *node,
      GTraverseFlags flags,
      GNodeForeachFunc func,
      gpointer data);
extern
void g_node_reverse_children (GNode *node);
extern
guint g_node_n_children (GNode *node);
extern
GNode* g_node_nth_child (GNode *node,
      guint n);
extern
GNode* g_node_last_child (GNode *node);
extern
GNode* g_node_find_child (GNode *node,
      GTraverseFlags flags,
      gpointer data);
extern
gint g_node_child_position (GNode *node,
      GNode *child);
extern
gint g_node_child_index (GNode *node,
      gpointer data);

extern
GNode* g_node_first_sibling (GNode *node);
extern
GNode* g_node_last_sibling (GNode *node);
# 34 "/usr/include/glib-2.0/glib/glist.h" 2



typedef struct _GList GList;

struct _GList
{
  gpointer data;
  GList *next;
  GList *prev;
};



extern
GList* g_list_alloc (void) __attribute__((warn_unused_result));
extern
void g_list_free (GList *list);
extern
void g_list_free_1 (GList *list);

extern
void g_list_free_full (GList *list,
      GDestroyNotify free_func);
extern
GList* g_list_append (GList *list,
      gpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_prepend (GList *list,
      gpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_insert (GList *list,
      gpointer data,
      gint position) __attribute__((warn_unused_result));
extern
GList* g_list_insert_sorted (GList *list,
      gpointer data,
      GCompareFunc func) __attribute__((warn_unused_result));
extern
GList* g_list_insert_sorted_with_data (GList *list,
      gpointer data,
      GCompareDataFunc func,
      gpointer user_data) __attribute__((warn_unused_result));
extern
GList* g_list_insert_before (GList *list,
      GList *sibling,
      gpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_concat (GList *list1,
      GList *list2) __attribute__((warn_unused_result));
extern
GList* g_list_remove (GList *list,
      gconstpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_remove_all (GList *list,
      gconstpointer data) __attribute__((warn_unused_result));
extern
GList* g_list_remove_link (GList *list,
      GList *llink) __attribute__((warn_unused_result));
extern
GList* g_list_delete_link (GList *list,
      GList *link_) __attribute__((warn_unused_result));
extern
GList* g_list_reverse (GList *list) __attribute__((warn_unused_result));
extern
GList* g_list_copy (GList *list) __attribute__((warn_unused_result));

extern
GList* g_list_copy_deep (GList *list,
      GCopyFunc func,
      gpointer user_data) __attribute__((warn_unused_result));

extern
GList* g_list_nth (GList *list,
      guint n);
extern
GList* g_list_nth_prev (GList *list,
      guint n);
extern
GList* g_list_find (GList *list,
      gconstpointer data);
extern
GList* g_list_find_custom (GList *list,
      gconstpointer data,
      GCompareFunc func);
extern
gint g_list_position (GList *list,
      GList *llink);
extern
gint g_list_index (GList *list,
      gconstpointer data);
extern
GList* g_list_last (GList *list);
extern
GList* g_list_first (GList *list);
extern
guint g_list_length (GList *list);
extern
void g_list_foreach (GList *list,
      GFunc func,
      gpointer user_data);
extern
GList* g_list_sort (GList *list,
      GCompareFunc compare_func) __attribute__((warn_unused_result));
extern
GList* g_list_sort_with_data (GList *list,
      GCompareDataFunc compare_func,
      gpointer user_data) __attribute__((warn_unused_result));
extern
gpointer g_list_nth_data (GList *list,
      guint n);
# 34 "/usr/include/glib-2.0/glib/ghash.h" 2



typedef struct _GHashTable GHashTable;

typedef gboolean (*GHRFunc) (gpointer key,
                               gpointer value,
                               gpointer user_data);

typedef struct _GHashTableIter GHashTableIter;

struct _GHashTableIter
{

  gpointer dummy1;
  gpointer dummy2;
  gpointer dummy3;
  int dummy4;
  gboolean dummy5;
  gpointer dummy6;
};

extern
GHashTable* g_hash_table_new (GHashFunc hash_func,
                                            GEqualFunc key_equal_func);
extern
GHashTable* g_hash_table_new_full (GHashFunc hash_func,
                                            GEqualFunc key_equal_func,
                                            GDestroyNotify key_destroy_func,
                                            GDestroyNotify value_destroy_func);
extern
void g_hash_table_destroy (GHashTable *hash_table);
extern
gboolean g_hash_table_insert (GHashTable *hash_table,
                                            gpointer key,
                                            gpointer value);
extern
gboolean g_hash_table_replace (GHashTable *hash_table,
                                            gpointer key,
                                            gpointer value);
extern
gboolean g_hash_table_add (GHashTable *hash_table,
                                            gpointer key);
extern
gboolean g_hash_table_remove (GHashTable *hash_table,
                                            gconstpointer key);
extern
void g_hash_table_remove_all (GHashTable *hash_table);
extern
gboolean g_hash_table_steal (GHashTable *hash_table,
                                            gconstpointer key);
extern
void g_hash_table_steal_all (GHashTable *hash_table);
extern
gpointer g_hash_table_lookup (GHashTable *hash_table,
                                            gconstpointer key);
extern
gboolean g_hash_table_contains (GHashTable *hash_table,
                                            gconstpointer key);
extern
gboolean g_hash_table_lookup_extended (GHashTable *hash_table,
                                            gconstpointer lookup_key,
                                            gpointer *orig_key,
                                            gpointer *value);
extern
void g_hash_table_foreach (GHashTable *hash_table,
                                            GHFunc func,
                                            gpointer user_data);
extern
gpointer g_hash_table_find (GHashTable *hash_table,
                                            GHRFunc predicate,
                                            gpointer user_data);
extern
guint g_hash_table_foreach_remove (GHashTable *hash_table,
                                            GHRFunc func,
                                            gpointer user_data);
extern
guint g_hash_table_foreach_steal (GHashTable *hash_table,
                                            GHRFunc func,
                                            gpointer user_data);
extern
guint g_hash_table_size (GHashTable *hash_table);
extern
GList * g_hash_table_get_keys (GHashTable *hash_table);
extern
GList * g_hash_table_get_values (GHashTable *hash_table);
extern
gpointer * g_hash_table_get_keys_as_array (GHashTable *hash_table,
                                            guint *length);

extern
void g_hash_table_iter_init (GHashTableIter *iter,
                                            GHashTable *hash_table);
extern
gboolean g_hash_table_iter_next (GHashTableIter *iter,
                                            gpointer *key,
                                            gpointer *value);
extern
GHashTable* g_hash_table_iter_get_hash_table (GHashTableIter *iter);
extern
void g_hash_table_iter_remove (GHashTableIter *iter);
extern
void g_hash_table_iter_replace (GHashTableIter *iter,
                                            gpointer value);
extern
void g_hash_table_iter_steal (GHashTableIter *iter);

extern
GHashTable* g_hash_table_ref (GHashTable *hash_table);
extern
void g_hash_table_unref (GHashTable *hash_table);
# 153 "/usr/include/glib-2.0/glib/ghash.h"
extern
gboolean g_str_equal (gconstpointer v1,
                         gconstpointer v2);
extern
guint g_str_hash (gconstpointer v);

extern
gboolean g_int_equal (gconstpointer v1,
                         gconstpointer v2);
extern
guint g_int_hash (gconstpointer v);

extern
gboolean g_int64_equal (gconstpointer v1,
                         gconstpointer v2);
extern
guint g_int64_hash (gconstpointer v);

extern
gboolean g_double_equal (gconstpointer v1,
                         gconstpointer v2);
extern
guint g_double_hash (gconstpointer v);

extern
guint g_direct_hash (gconstpointer v) __attribute__((__const__));
extern
gboolean g_direct_equal (gconstpointer v1,
                         gconstpointer v2) __attribute__((__const__));
# 51 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ghmac.h" 1
# 40 "/usr/include/glib-2.0/glib/ghmac.h"
typedef struct _GHmac GHmac;

extern
GHmac * g_hmac_new (GChecksumType digest_type,
                                                     const guchar *key,
                                                     gsize key_len);
extern
GHmac * g_hmac_copy (const GHmac *hmac);
extern
GHmac * g_hmac_ref (GHmac *hmac);
extern
void g_hmac_unref (GHmac *hmac);
extern
void g_hmac_update (GHmac *hmac,
                                                     const guchar *data,
                                                     gssize length);
extern
const gchar * g_hmac_get_string (GHmac *hmac);
extern
void g_hmac_get_digest (GHmac *hmac,
                                                     guint8 *buffer,
                                                     gsize *digest_len);

extern
gchar *g_compute_hmac_for_data (GChecksumType digest_type,
                                                     const guchar *key,
                                                     gsize key_len,
                                                     const guchar *data,
                                                     gsize length);
extern
gchar *g_compute_hmac_for_string (GChecksumType digest_type,
                                                     const guchar *key,
                                                     gsize key_len,
                                                     const gchar *str,
                                                     gssize length);
# 52 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ghook.h" 1
# 38 "/usr/include/glib-2.0/glib/ghook.h"
typedef struct _GHook GHook;
typedef struct _GHookList GHookList;

typedef gint (*GHookCompareFunc) (GHook *new_hook,
       GHook *sibling);
typedef gboolean (*GHookFindFunc) (GHook *hook,
       gpointer data);
typedef void (*GHookMarshaller) (GHook *hook,
       gpointer marshal_data);
typedef gboolean (*GHookCheckMarshaller) (GHook *hook,
       gpointer marshal_data);
typedef void (*GHookFunc) (gpointer data);
typedef gboolean (*GHookCheckFunc) (gpointer data);
typedef void (*GHookFinalizeFunc) (GHookList *hook_list,
       GHook *hook);
typedef enum
{
  G_HOOK_FLAG_ACTIVE = 1 << 0,
  G_HOOK_FLAG_IN_CALL = 1 << 1,
  G_HOOK_FLAG_MASK = 0x0f
} GHookFlagMask;




struct _GHookList
{
  gulong seq_id;
  guint hook_size : 16;
  guint is_setup : 1;
  GHook *hooks;
  gpointer dummy3;
  GHookFinalizeFunc finalize_hook;
  gpointer dummy[2];
};
struct _GHook
{
  gpointer data;
  GHook *next;
  GHook *prev;
  guint ref_count;
  gulong hook_id;
  guint flags;
  gpointer func;
  GDestroyNotify destroy;
};
# 104 "/usr/include/glib-2.0/glib/ghook.h"
extern
void g_hook_list_init (GHookList *hook_list,
      guint hook_size);
extern
void g_hook_list_clear (GHookList *hook_list);
extern
GHook* g_hook_alloc (GHookList *hook_list);
extern
void g_hook_free (GHookList *hook_list,
      GHook *hook);
extern
GHook * g_hook_ref (GHookList *hook_list,
      GHook *hook);
extern
void g_hook_unref (GHookList *hook_list,
      GHook *hook);
extern
gboolean g_hook_destroy (GHookList *hook_list,
      gulong hook_id);
extern
void g_hook_destroy_link (GHookList *hook_list,
      GHook *hook);
extern
void g_hook_prepend (GHookList *hook_list,
      GHook *hook);
extern
void g_hook_insert_before (GHookList *hook_list,
      GHook *sibling,
      GHook *hook);
extern
void g_hook_insert_sorted (GHookList *hook_list,
      GHook *hook,
      GHookCompareFunc func);
extern
GHook* g_hook_get (GHookList *hook_list,
      gulong hook_id);
extern
GHook* g_hook_find (GHookList *hook_list,
      gboolean need_valids,
      GHookFindFunc func,
      gpointer data);
extern
GHook* g_hook_find_data (GHookList *hook_list,
      gboolean need_valids,
      gpointer data);
extern
GHook* g_hook_find_func (GHookList *hook_list,
      gboolean need_valids,
      gpointer func);
extern
GHook* g_hook_find_func_data (GHookList *hook_list,
      gboolean need_valids,
      gpointer func,
      gpointer data);

extern
GHook* g_hook_first_valid (GHookList *hook_list,
      gboolean may_be_in_call);



extern
GHook* g_hook_next_valid (GHookList *hook_list,
      GHook *hook,
      gboolean may_be_in_call);

extern
gint g_hook_compare_ids (GHook *new_hook,
      GHook *sibling);





extern
void g_hook_list_invoke (GHookList *hook_list,
      gboolean may_recurse);



extern
void g_hook_list_invoke_check (GHookList *hook_list,
      gboolean may_recurse);


extern
void g_hook_list_marshal (GHookList *hook_list,
      gboolean may_recurse,
      GHookMarshaller marshaller,
      gpointer marshal_data);
extern
void g_hook_list_marshal_check (GHookList *hook_list,
      gboolean may_recurse,
      GHookCheckMarshaller marshaller,
      gpointer marshal_data);
# 53 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/ghostutils.h" 1
# 29 "/usr/include/glib-2.0/glib/ghostutils.h"
extern
gboolean g_hostname_is_non_ascii (const gchar *hostname);
extern
gboolean g_hostname_is_ascii_encoded (const gchar *hostname);
extern
gboolean g_hostname_is_ip_address (const gchar *hostname);

extern
gchar *g_hostname_to_ascii (const gchar *hostname);
extern
gchar *g_hostname_to_unicode (const gchar *hostname);
# 54 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/giochannel.h" 1
# 33 "/usr/include/glib-2.0/glib/giochannel.h"
# 1 "/usr/include/glib-2.0/glib/gmain.h" 1
# 25 "/usr/include/glib-2.0/glib/gmain.h"
# 1 "/usr/include/glib-2.0/glib/gpoll.h" 1
# 58 "/usr/include/glib-2.0/glib/gpoll.h"
typedef struct _GPollFD GPollFD;
# 73 "/usr/include/glib-2.0/glib/gpoll.h"
typedef gint (*GPollFunc) (GPollFD *ufds,
                                 guint nfsd,
                                 gint timeout_);
# 90 "/usr/include/glib-2.0/glib/gpoll.h"
struct _GPollFD
{





  gint fd;

  gushort events;
  gushort revents;
};
# 119 "/usr/include/glib-2.0/glib/gpoll.h"
extern
gint
g_poll (GPollFD *fds,
 guint nfds,
 gint timeout);
# 26 "/usr/include/glib-2.0/glib/gmain.h" 2
# 1 "/usr/include/glib-2.0/glib/gslist.h" 1
# 37 "/usr/include/glib-2.0/glib/gslist.h"
typedef struct _GSList GSList;

struct _GSList
{
  gpointer data;
  GSList *next;
};



extern
GSList* g_slist_alloc (void) __attribute__((warn_unused_result));
extern
void g_slist_free (GSList *list);
extern
void g_slist_free_1 (GSList *list);

extern
void g_slist_free_full (GSList *list,
       GDestroyNotify free_func);
extern
GSList* g_slist_append (GSList *list,
       gpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_prepend (GSList *list,
       gpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_insert (GSList *list,
       gpointer data,
       gint position) __attribute__((warn_unused_result));
extern
GSList* g_slist_insert_sorted (GSList *list,
       gpointer data,
       GCompareFunc func) __attribute__((warn_unused_result));
extern
GSList* g_slist_insert_sorted_with_data (GSList *list,
       gpointer data,
       GCompareDataFunc func,
       gpointer user_data) __attribute__((warn_unused_result));
extern
GSList* g_slist_insert_before (GSList *slist,
       GSList *sibling,
       gpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_concat (GSList *list1,
       GSList *list2) __attribute__((warn_unused_result));
extern
GSList* g_slist_remove (GSList *list,
       gconstpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_remove_all (GSList *list,
       gconstpointer data) __attribute__((warn_unused_result));
extern
GSList* g_slist_remove_link (GSList *list,
       GSList *link_) __attribute__((warn_unused_result));
extern
GSList* g_slist_delete_link (GSList *list,
       GSList *link_) __attribute__((warn_unused_result));
extern
GSList* g_slist_reverse (GSList *list) __attribute__((warn_unused_result));
extern
GSList* g_slist_copy (GSList *list) __attribute__((warn_unused_result));

extern
GSList* g_slist_copy_deep (GSList *list,
       GCopyFunc func,
       gpointer user_data) __attribute__((warn_unused_result));
extern
GSList* g_slist_nth (GSList *list,
       guint n);
extern
GSList* g_slist_find (GSList *list,
       gconstpointer data);
extern
GSList* g_slist_find_custom (GSList *list,
       gconstpointer data,
       GCompareFunc func);
extern
gint g_slist_position (GSList *list,
       GSList *llink);
extern
gint g_slist_index (GSList *list,
       gconstpointer data);
extern
GSList* g_slist_last (GSList *list);
extern
guint g_slist_length (GSList *list);
extern
void g_slist_foreach (GSList *list,
       GFunc func,
       gpointer user_data);
extern
GSList* g_slist_sort (GSList *list,
       GCompareFunc compare_func) __attribute__((warn_unused_result));
extern
GSList* g_slist_sort_with_data (GSList *list,
       GCompareDataFunc compare_func,
       gpointer user_data) __attribute__((warn_unused_result));
extern
gpointer g_slist_nth_data (GSList *list,
       guint n);
# 27 "/usr/include/glib-2.0/glib/gmain.h" 2




typedef enum
{
  G_IO_IN =1,
  G_IO_OUT =4,
  G_IO_PRI =2,
  G_IO_ERR =8,
  G_IO_HUP =16,
  G_IO_NVAL =32
} GIOCondition;
# 48 "/usr/include/glib-2.0/glib/gmain.h"
typedef struct _GMainContext GMainContext;







typedef struct _GMainLoop GMainLoop;







typedef struct _GSource GSource;
typedef struct _GSourcePrivate GSourcePrivate;
# 77 "/usr/include/glib-2.0/glib/gmain.h"
typedef struct _GSourceCallbackFuncs GSourceCallbackFuncs;
# 128 "/usr/include/glib-2.0/glib/gmain.h"
typedef struct _GSourceFuncs GSourceFuncs;
# 153 "/usr/include/glib-2.0/glib/gmain.h"
typedef gboolean (*GSourceFunc) (gpointer user_data);
# 166 "/usr/include/glib-2.0/glib/gmain.h"
typedef void (*GChildWatchFunc) (GPid pid,
                                       gint status,
                                       gpointer user_data);
struct _GSource
{

  gpointer callback_data;
  GSourceCallbackFuncs *callback_funcs;

  const GSourceFuncs *source_funcs;
  guint ref_count;

  GMainContext *context;

  gint priority;
  guint flags;
  guint source_id;

  GSList *poll_fds;

  GSource *prev;
  GSource *next;

  char *name;

  GSourcePrivate *priv;
};

struct _GSourceCallbackFuncs
{
  void (*ref) (gpointer cb_data);
  void (*unref) (gpointer cb_data);
  void (*get) (gpointer cb_data,
                 GSource *source,
                 GSourceFunc *func,
                 gpointer *data);
};







typedef void (*GSourceDummyMarshal) (void);

struct _GSourceFuncs
{
  gboolean (*prepare) (GSource *source,
                        gint *timeout_);
  gboolean (*check) (GSource *source);
  gboolean (*dispatch) (GSource *source,
                        GSourceFunc callback,
                        gpointer user_data);
  void (*finalize) (GSource *source);



  GSourceFunc closure_callback;
  GSourceDummyMarshal closure_marshal;
};
# 303 "/usr/include/glib-2.0/glib/gmain.h"
extern
GMainContext *g_main_context_new (void);
extern
GMainContext *g_main_context_ref (GMainContext *context);
extern
void g_main_context_unref (GMainContext *context);
extern
GMainContext *g_main_context_default (void);

extern
gboolean g_main_context_iteration (GMainContext *context,
                                        gboolean may_block);
extern
gboolean g_main_context_pending (GMainContext *context);



extern
GSource *g_main_context_find_source_by_id (GMainContext *context,
                                                             guint source_id);
extern
GSource *g_main_context_find_source_by_user_data (GMainContext *context,
                                                             gpointer user_data);
extern
GSource *g_main_context_find_source_by_funcs_user_data (GMainContext *context,
                                                             GSourceFuncs *funcs,
                                                             gpointer user_data);



extern
void g_main_context_wakeup (GMainContext *context);
extern
gboolean g_main_context_acquire (GMainContext *context);
extern
void g_main_context_release (GMainContext *context);
extern
gboolean g_main_context_is_owner (GMainContext *context);
extern
gboolean g_main_context_wait (GMainContext *context,
                                 GCond *cond,
                                 GMutex *mutex);

extern
gboolean g_main_context_prepare (GMainContext *context,
                                  gint *priority);
extern
gint g_main_context_query (GMainContext *context,
                                  gint max_priority,
                                  gint *timeout_,
                                  GPollFD *fds,
                                  gint n_fds);
extern
gint g_main_context_check (GMainContext *context,
                                  gint max_priority,
                                  GPollFD *fds,
                                  gint n_fds);
extern
void g_main_context_dispatch (GMainContext *context);

extern
void g_main_context_set_poll_func (GMainContext *context,
                                       GPollFunc func);
extern
GPollFunc g_main_context_get_poll_func (GMainContext *context);



extern
void g_main_context_add_poll (GMainContext *context,
                                     GPollFD *fd,
                                     gint priority);
extern
void g_main_context_remove_poll (GMainContext *context,
                                     GPollFD *fd);

extern
gint g_main_depth (void);
extern
GSource *g_main_current_source (void);



extern
void g_main_context_push_thread_default (GMainContext *context);
extern
void g_main_context_pop_thread_default (GMainContext *context);
extern
GMainContext *g_main_context_get_thread_default (void);
extern
GMainContext *g_main_context_ref_thread_default (void);



extern
GMainLoop *g_main_loop_new (GMainContext *context,
                                   gboolean is_running);
extern
void g_main_loop_run (GMainLoop *loop);
extern
void g_main_loop_quit (GMainLoop *loop);
extern
GMainLoop *g_main_loop_ref (GMainLoop *loop);
extern
void g_main_loop_unref (GMainLoop *loop);
extern
gboolean g_main_loop_is_running (GMainLoop *loop);
extern
GMainContext *g_main_loop_get_context (GMainLoop *loop);



extern
GSource *g_source_new (GSourceFuncs *source_funcs,
                                   guint struct_size);
extern
GSource *g_source_ref (GSource *source);
extern
void g_source_unref (GSource *source);

extern
guint g_source_attach (GSource *source,
                                   GMainContext *context);
extern
void g_source_destroy (GSource *source);

extern
void g_source_set_priority (GSource *source,
                                   gint priority);
extern
gint g_source_get_priority (GSource *source);
extern
void g_source_set_can_recurse (GSource *source,
                                   gboolean can_recurse);
extern
gboolean g_source_get_can_recurse (GSource *source);
extern
guint g_source_get_id (GSource *source);

extern
GMainContext *g_source_get_context (GSource *source);

extern
void g_source_set_callback (GSource *source,
                                   GSourceFunc func,
                                   gpointer data,
                                   GDestroyNotify notify);

extern
void g_source_set_funcs (GSource *source,
                                   GSourceFuncs *funcs);
extern
gboolean g_source_is_destroyed (GSource *source);

extern
void g_source_set_name (GSource *source,
                                              const char *name);
extern
const char * g_source_get_name (GSource *source);
extern
void g_source_set_name_by_id (guint tag,
                                              const char *name);

extern
void g_source_set_ready_time (GSource *source,
                                              gint64 ready_time);
extern
gint64 g_source_get_ready_time (GSource *source);


extern
gpointer g_source_add_unix_fd (GSource *source,
                                              gint fd,
                                              GIOCondition events);
extern
void g_source_modify_unix_fd (GSource *source,
                                              gpointer tag,
                                              GIOCondition new_events);
extern
void g_source_remove_unix_fd (GSource *source,
                                              gpointer tag);
extern
GIOCondition g_source_query_unix_fd (GSource *source,
                                              gpointer tag);



extern
void g_source_set_callback_indirect (GSource *source,
                                     gpointer callback_data,
                                     GSourceCallbackFuncs *callback_funcs);

extern
void g_source_add_poll (GSource *source,
           GPollFD *fd);
extern
void g_source_remove_poll (GSource *source,
           GPollFD *fd);

extern
void g_source_add_child_source (GSource *source,
           GSource *child_source);
extern
void g_source_remove_child_source (GSource *source,
           GSource *child_source);

__attribute__((__deprecated__)) extern
void g_source_get_current_time (GSource *source,
                                    GTimeVal *timeval);

extern
gint64 g_source_get_time (GSource *source);







extern
GSource *g_idle_source_new (void);
extern
GSource *g_child_watch_source_new (GPid pid);
extern
GSource *g_timeout_source_new (guint interval);
extern
GSource *g_timeout_source_new_seconds (guint interval);



extern
void g_get_current_time (GTimeVal *result);
extern
gint64 g_get_monotonic_time (void);
extern
gint64 g_get_real_time (void);



extern
gboolean g_source_remove (guint tag);
extern
gboolean g_source_remove_by_user_data (gpointer user_data);
extern
gboolean g_source_remove_by_funcs_user_data (GSourceFuncs *funcs,
                                              gpointer user_data);


extern
guint g_timeout_add_full (gint priority,
                                     guint interval,
                                     GSourceFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
guint g_timeout_add (guint interval,
                                     GSourceFunc function,
                                     gpointer data);
extern
guint g_timeout_add_seconds_full (gint priority,
                                     guint interval,
                                     GSourceFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
guint g_timeout_add_seconds (guint interval,
                                     GSourceFunc function,
                                     gpointer data);
extern
guint g_child_watch_add_full (gint priority,
                                     GPid pid,
                                     GChildWatchFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
guint g_child_watch_add (GPid pid,
                                     GChildWatchFunc function,
                                     gpointer data);
extern
guint g_idle_add (GSourceFunc function,
                                     gpointer data);
extern
guint g_idle_add_full (gint priority,
                                     GSourceFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
gboolean g_idle_remove_by_data (gpointer data);

extern
void g_main_context_invoke_full (GMainContext *context,
                                     gint priority,
                                     GSourceFunc function,
                                     gpointer data,
                                     GDestroyNotify notify);
extern
void g_main_context_invoke (GMainContext *context,
                                     GSourceFunc function,
                                     gpointer data);


extern GSourceFuncs g_timeout_funcs;
extern GSourceFuncs g_child_watch_funcs;
extern GSourceFuncs g_idle_funcs;

extern GSourceFuncs g_unix_signal_funcs;
extern GSourceFuncs g_unix_fd_source_funcs;
# 34 "/usr/include/glib-2.0/glib/giochannel.h" 2
# 1 "/usr/include/glib-2.0/glib/gstring.h" 1
# 33 "/usr/include/glib-2.0/glib/gstring.h"
# 1 "/usr/include/glib-2.0/glib/gunicode.h" 1
# 60 "/usr/include/glib-2.0/glib/gunicode.h"
typedef guint32 gunichar;
# 78 "/usr/include/glib-2.0/glib/gunicode.h"
typedef guint16 gunichar2;
# 117 "/usr/include/glib-2.0/glib/gunicode.h"
typedef enum
{
  G_UNICODE_CONTROL,
  G_UNICODE_FORMAT,
  G_UNICODE_UNASSIGNED,
  G_UNICODE_PRIVATE_USE,
  G_UNICODE_SURROGATE,
  G_UNICODE_LOWERCASE_LETTER,
  G_UNICODE_MODIFIER_LETTER,
  G_UNICODE_OTHER_LETTER,
  G_UNICODE_TITLECASE_LETTER,
  G_UNICODE_UPPERCASE_LETTER,
  G_UNICODE_SPACING_MARK,
  G_UNICODE_ENCLOSING_MARK,
  G_UNICODE_NON_SPACING_MARK,
  G_UNICODE_DECIMAL_NUMBER,
  G_UNICODE_LETTER_NUMBER,
  G_UNICODE_OTHER_NUMBER,
  G_UNICODE_CONNECT_PUNCTUATION,
  G_UNICODE_DASH_PUNCTUATION,
  G_UNICODE_CLOSE_PUNCTUATION,
  G_UNICODE_FINAL_PUNCTUATION,
  G_UNICODE_INITIAL_PUNCTUATION,
  G_UNICODE_OTHER_PUNCTUATION,
  G_UNICODE_OPEN_PUNCTUATION,
  G_UNICODE_CURRENCY_SYMBOL,
  G_UNICODE_MODIFIER_SYMBOL,
  G_UNICODE_MATH_SYMBOL,
  G_UNICODE_OTHER_SYMBOL,
  G_UNICODE_LINE_SEPARATOR,
  G_UNICODE_PARAGRAPH_SEPARATOR,
  G_UNICODE_SPACE_SEPARATOR
} GUnicodeType;
# 212 "/usr/include/glib-2.0/glib/gunicode.h"
typedef enum
{
  G_UNICODE_BREAK_MANDATORY,
  G_UNICODE_BREAK_CARRIAGE_RETURN,
  G_UNICODE_BREAK_LINE_FEED,
  G_UNICODE_BREAK_COMBINING_MARK,
  G_UNICODE_BREAK_SURROGATE,
  G_UNICODE_BREAK_ZERO_WIDTH_SPACE,
  G_UNICODE_BREAK_INSEPARABLE,
  G_UNICODE_BREAK_NON_BREAKING_GLUE,
  G_UNICODE_BREAK_CONTINGENT,
  G_UNICODE_BREAK_SPACE,
  G_UNICODE_BREAK_AFTER,
  G_UNICODE_BREAK_BEFORE,
  G_UNICODE_BREAK_BEFORE_AND_AFTER,
  G_UNICODE_BREAK_HYPHEN,
  G_UNICODE_BREAK_NON_STARTER,
  G_UNICODE_BREAK_OPEN_PUNCTUATION,
  G_UNICODE_BREAK_CLOSE_PUNCTUATION,
  G_UNICODE_BREAK_QUOTATION,
  G_UNICODE_BREAK_EXCLAMATION,
  G_UNICODE_BREAK_IDEOGRAPHIC,
  G_UNICODE_BREAK_NUMERIC,
  G_UNICODE_BREAK_INFIX_SEPARATOR,
  G_UNICODE_BREAK_SYMBOL,
  G_UNICODE_BREAK_ALPHABETIC,
  G_UNICODE_BREAK_PREFIX,
  G_UNICODE_BREAK_POSTFIX,
  G_UNICODE_BREAK_COMPLEX_CONTEXT,
  G_UNICODE_BREAK_AMBIGUOUS,
  G_UNICODE_BREAK_UNKNOWN,
  G_UNICODE_BREAK_NEXT_LINE,
  G_UNICODE_BREAK_WORD_JOINER,
  G_UNICODE_BREAK_HANGUL_L_JAMO,
  G_UNICODE_BREAK_HANGUL_V_JAMO,
  G_UNICODE_BREAK_HANGUL_T_JAMO,
  G_UNICODE_BREAK_HANGUL_LV_SYLLABLE,
  G_UNICODE_BREAK_HANGUL_LVT_SYLLABLE,
  G_UNICODE_BREAK_CLOSE_PARANTHESIS,
  G_UNICODE_BREAK_CONDITIONAL_JAPANESE_STARTER,
  G_UNICODE_BREAK_HEBREW_LETTER,
  G_UNICODE_BREAK_REGIONAL_INDICATOR
} GUnicodeBreakType;
# 409 "/usr/include/glib-2.0/glib/gunicode.h"
typedef enum
{
  G_UNICODE_SCRIPT_INVALID_CODE = -1,
  G_UNICODE_SCRIPT_COMMON = 0,
  G_UNICODE_SCRIPT_INHERITED,
  G_UNICODE_SCRIPT_ARABIC,
  G_UNICODE_SCRIPT_ARMENIAN,
  G_UNICODE_SCRIPT_BENGALI,
  G_UNICODE_SCRIPT_BOPOMOFO,
  G_UNICODE_SCRIPT_CHEROKEE,
  G_UNICODE_SCRIPT_COPTIC,
  G_UNICODE_SCRIPT_CYRILLIC,
  G_UNICODE_SCRIPT_DESERET,
  G_UNICODE_SCRIPT_DEVANAGARI,
  G_UNICODE_SCRIPT_ETHIOPIC,
  G_UNICODE_SCRIPT_GEORGIAN,
  G_UNICODE_SCRIPT_GOTHIC,
  G_UNICODE_SCRIPT_GREEK,
  G_UNICODE_SCRIPT_GUJARATI,
  G_UNICODE_SCRIPT_GURMUKHI,
  G_UNICODE_SCRIPT_HAN,
  G_UNICODE_SCRIPT_HANGUL,
  G_UNICODE_SCRIPT_HEBREW,
  G_UNICODE_SCRIPT_HIRAGANA,
  G_UNICODE_SCRIPT_KANNADA,
  G_UNICODE_SCRIPT_KATAKANA,
  G_UNICODE_SCRIPT_KHMER,
  G_UNICODE_SCRIPT_LAO,
  G_UNICODE_SCRIPT_LATIN,
  G_UNICODE_SCRIPT_MALAYALAM,
  G_UNICODE_SCRIPT_MONGOLIAN,
  G_UNICODE_SCRIPT_MYANMAR,
  G_UNICODE_SCRIPT_OGHAM,
  G_UNICODE_SCRIPT_OLD_ITALIC,
  G_UNICODE_SCRIPT_ORIYA,
  G_UNICODE_SCRIPT_RUNIC,
  G_UNICODE_SCRIPT_SINHALA,
  G_UNICODE_SCRIPT_SYRIAC,
  G_UNICODE_SCRIPT_TAMIL,
  G_UNICODE_SCRIPT_TELUGU,
  G_UNICODE_SCRIPT_THAANA,
  G_UNICODE_SCRIPT_THAI,
  G_UNICODE_SCRIPT_TIBETAN,
  G_UNICODE_SCRIPT_CANADIAN_ABORIGINAL,
  G_UNICODE_SCRIPT_YI,
  G_UNICODE_SCRIPT_TAGALOG,
  G_UNICODE_SCRIPT_HANUNOO,
  G_UNICODE_SCRIPT_BUHID,
  G_UNICODE_SCRIPT_TAGBANWA,


  G_UNICODE_SCRIPT_BRAILLE,
  G_UNICODE_SCRIPT_CYPRIOT,
  G_UNICODE_SCRIPT_LIMBU,
  G_UNICODE_SCRIPT_OSMANYA,
  G_UNICODE_SCRIPT_SHAVIAN,
  G_UNICODE_SCRIPT_LINEAR_B,
  G_UNICODE_SCRIPT_TAI_LE,
  G_UNICODE_SCRIPT_UGARITIC,


  G_UNICODE_SCRIPT_NEW_TAI_LUE,
  G_UNICODE_SCRIPT_BUGINESE,
  G_UNICODE_SCRIPT_GLAGOLITIC,
  G_UNICODE_SCRIPT_TIFINAGH,
  G_UNICODE_SCRIPT_SYLOTI_NAGRI,
  G_UNICODE_SCRIPT_OLD_PERSIAN,
  G_UNICODE_SCRIPT_KHAROSHTHI,


  G_UNICODE_SCRIPT_UNKNOWN,
  G_UNICODE_SCRIPT_BALINESE,
  G_UNICODE_SCRIPT_CUNEIFORM,
  G_UNICODE_SCRIPT_PHOENICIAN,
  G_UNICODE_SCRIPT_PHAGS_PA,
  G_UNICODE_SCRIPT_NKO,


  G_UNICODE_SCRIPT_KAYAH_LI,
  G_UNICODE_SCRIPT_LEPCHA,
  G_UNICODE_SCRIPT_REJANG,
  G_UNICODE_SCRIPT_SUNDANESE,
  G_UNICODE_SCRIPT_SAURASHTRA,
  G_UNICODE_SCRIPT_CHAM,
  G_UNICODE_SCRIPT_OL_CHIKI,
  G_UNICODE_SCRIPT_VAI,
  G_UNICODE_SCRIPT_CARIAN,
  G_UNICODE_SCRIPT_LYCIAN,
  G_UNICODE_SCRIPT_LYDIAN,


  G_UNICODE_SCRIPT_AVESTAN,
  G_UNICODE_SCRIPT_BAMUM,
  G_UNICODE_SCRIPT_EGYPTIAN_HIEROGLYPHS,
  G_UNICODE_SCRIPT_IMPERIAL_ARAMAIC,
  G_UNICODE_SCRIPT_INSCRIPTIONAL_PAHLAVI,
  G_UNICODE_SCRIPT_INSCRIPTIONAL_PARTHIAN,
  G_UNICODE_SCRIPT_JAVANESE,
  G_UNICODE_SCRIPT_KAITHI,
  G_UNICODE_SCRIPT_LISU,
  G_UNICODE_SCRIPT_MEETEI_MAYEK,
  G_UNICODE_SCRIPT_OLD_SOUTH_ARABIAN,
  G_UNICODE_SCRIPT_OLD_TURKIC,
  G_UNICODE_SCRIPT_SAMARITAN,
  G_UNICODE_SCRIPT_TAI_THAM,
  G_UNICODE_SCRIPT_TAI_VIET,


  G_UNICODE_SCRIPT_BATAK,
  G_UNICODE_SCRIPT_BRAHMI,
  G_UNICODE_SCRIPT_MANDAIC,


  G_UNICODE_SCRIPT_CHAKMA,
  G_UNICODE_SCRIPT_MEROITIC_CURSIVE,
  G_UNICODE_SCRIPT_MEROITIC_HIEROGLYPHS,
  G_UNICODE_SCRIPT_MIAO,
  G_UNICODE_SCRIPT_SHARADA,
  G_UNICODE_SCRIPT_SORA_SOMPENG,
  G_UNICODE_SCRIPT_TAKRI,


  G_UNICODE_SCRIPT_BASSA_VAH,
  G_UNICODE_SCRIPT_CAUCASIAN_ALBANIAN,
  G_UNICODE_SCRIPT_DUPLOYAN,
  G_UNICODE_SCRIPT_ELBASAN,
  G_UNICODE_SCRIPT_GRANTHA,
  G_UNICODE_SCRIPT_KHOJKI,
  G_UNICODE_SCRIPT_KHUDAWADI,
  G_UNICODE_SCRIPT_LINEAR_A,
  G_UNICODE_SCRIPT_MAHAJANI,
  G_UNICODE_SCRIPT_MANICHAEAN,
  G_UNICODE_SCRIPT_MENDE_KIKAKUI,
  G_UNICODE_SCRIPT_MODI,
  G_UNICODE_SCRIPT_MRO,
  G_UNICODE_SCRIPT_NABATAEAN,
  G_UNICODE_SCRIPT_OLD_NORTH_ARABIAN,
  G_UNICODE_SCRIPT_OLD_PERMIC,
  G_UNICODE_SCRIPT_PAHAWH_HMONG,
  G_UNICODE_SCRIPT_PALMYRENE,
  G_UNICODE_SCRIPT_PAU_CIN_HAU,
  G_UNICODE_SCRIPT_PSALTER_PAHLAVI,
  G_UNICODE_SCRIPT_SIDDHAM,
  G_UNICODE_SCRIPT_TIRHUTA,
  G_UNICODE_SCRIPT_WARANG_CITI
} GUnicodeScript;

extern
guint32 g_unicode_script_to_iso15924 (GUnicodeScript script);
extern
GUnicodeScript g_unicode_script_from_iso15924 (guint32 iso15924);



extern
gboolean g_unichar_isalnum (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isalpha (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_iscntrl (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isdigit (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isgraph (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_islower (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isprint (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_ispunct (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isspace (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isupper (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isxdigit (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_istitle (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_isdefined (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_iswide (gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_iswide_cjk(gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_iszerowidth(gunichar c) __attribute__((__const__));
extern
gboolean g_unichar_ismark (gunichar c) __attribute__((__const__));



extern
gunichar g_unichar_toupper (gunichar c) __attribute__((__const__));
extern
gunichar g_unichar_tolower (gunichar c) __attribute__((__const__));
extern
gunichar g_unichar_totitle (gunichar c) __attribute__((__const__));



extern
gint g_unichar_digit_value (gunichar c) __attribute__((__const__));

extern
gint g_unichar_xdigit_value (gunichar c) __attribute__((__const__));


extern
GUnicodeType g_unichar_type (gunichar c) __attribute__((__const__));


extern
GUnicodeBreakType g_unichar_break_type (gunichar c) __attribute__((__const__));


extern
gint g_unichar_combining_class (gunichar uc) __attribute__((__const__));

extern
gboolean g_unichar_get_mirror_char (gunichar ch,
                                    gunichar *mirrored_ch);

extern
GUnicodeScript g_unichar_get_script (gunichar ch) __attribute__((__const__));


extern
gboolean g_unichar_validate (gunichar ch) __attribute__((__const__));


extern
gboolean g_unichar_compose (gunichar a,
                            gunichar b,
                            gunichar *ch);
extern
gboolean g_unichar_decompose (gunichar ch,
                              gunichar *a,
                              gunichar *b);

extern
gsize g_unichar_fully_decompose (gunichar ch,
                                 gboolean compat,
                                 gunichar *result,
                                 gsize result_len);
# 669 "/usr/include/glib-2.0/glib/gunicode.h"
extern
void g_unicode_canonical_ordering (gunichar *string,
                                   gsize len);


__attribute__((__deprecated__)) extern
gunichar *g_unicode_canonical_decomposition (gunichar ch,
                                             gsize *result_len) __attribute__((__malloc__));



extern const gchar * const g_utf8_skip;
# 695 "/usr/include/glib-2.0/glib/gunicode.h"
extern
gunichar g_utf8_get_char (const gchar *p) __attribute__((__pure__));
extern
gunichar g_utf8_get_char_validated (const gchar *p,
                                    gssize max_len) __attribute__((__pure__));

extern
gchar* g_utf8_offset_to_pointer (const gchar *str,
                                   glong offset) __attribute__((__pure__));
extern
glong g_utf8_pointer_to_offset (const gchar *str,
                                   const gchar *pos) __attribute__((__pure__));
extern
gchar* g_utf8_prev_char (const gchar *p) __attribute__((__pure__));
extern
gchar* g_utf8_find_next_char (const gchar *p,
                                   const gchar *end) __attribute__((__pure__));
extern
gchar* g_utf8_find_prev_char (const gchar *str,
                                   const gchar *p) __attribute__((__pure__));

extern
glong g_utf8_strlen (const gchar *p,
                                   gssize max) __attribute__((__pure__));

extern
gchar *g_utf8_substring (const gchar *str,
                                   glong start_pos,
                                   glong end_pos) __attribute__((__malloc__));

extern
gchar *g_utf8_strncpy (gchar *dest,
                                   const gchar *src,
                                   gsize n);



extern
gchar* g_utf8_strchr (const gchar *p,
                       gssize len,
                       gunichar c);
extern
gchar* g_utf8_strrchr (const gchar *p,
                       gssize len,
                       gunichar c);
extern
gchar* g_utf8_strreverse (const gchar *str,
                          gssize len);

extern
gunichar2 *g_utf8_to_utf16 (const gchar *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gunichar * g_utf8_to_ucs4 (const gchar *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gunichar * g_utf8_to_ucs4_fast (const gchar *str,
                                glong len,
                                glong *items_written) __attribute__((__malloc__));
extern
gunichar * g_utf16_to_ucs4 (const gunichar2 *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gchar* g_utf16_to_utf8 (const gunichar2 *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gunichar2 *g_ucs4_to_utf16 (const gunichar *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));
extern
gchar* g_ucs4_to_utf8 (const gunichar *str,
                                glong len,
                                glong *items_read,
                                glong *items_written,
                                GError **error) __attribute__((__malloc__));

extern
gint g_unichar_to_utf8 (gunichar c,
                             gchar *outbuf);

extern
gboolean g_utf8_validate (const gchar *str,
                          gssize max_len,
                          const gchar **end);

extern
gchar *g_utf8_strup (const gchar *str,
                       gssize len) __attribute__((__malloc__));
extern
gchar *g_utf8_strdown (const gchar *str,
                       gssize len) __attribute__((__malloc__));
extern
gchar *g_utf8_casefold (const gchar *str,
                        gssize len) __attribute__((__malloc__));
# 828 "/usr/include/glib-2.0/glib/gunicode.h"
typedef enum {
  G_NORMALIZE_DEFAULT,
  G_NORMALIZE_NFD = G_NORMALIZE_DEFAULT,
  G_NORMALIZE_DEFAULT_COMPOSE,
  G_NORMALIZE_NFC = G_NORMALIZE_DEFAULT_COMPOSE,
  G_NORMALIZE_ALL,
  G_NORMALIZE_NFKD = G_NORMALIZE_ALL,
  G_NORMALIZE_ALL_COMPOSE,
  G_NORMALIZE_NFKC = G_NORMALIZE_ALL_COMPOSE
} GNormalizeMode;

extern
gchar *g_utf8_normalize (const gchar *str,
                         gssize len,
                         GNormalizeMode mode) __attribute__((__malloc__));

extern
gint g_utf8_collate (const gchar *str1,
                           const gchar *str2) __attribute__((__pure__));
extern
gchar *g_utf8_collate_key (const gchar *str,
                           gssize len) __attribute__((__malloc__));
extern
gchar *g_utf8_collate_key_for_filename (const gchar *str,
                                        gssize len) __attribute__((__malloc__));



gchar *_g_utf8_make_valid (const gchar *name);
# 34 "/usr/include/glib-2.0/glib/gstring.h" 2

# 1 "/usr/include/glib-2.0/glib/gutils.h" 1
# 85 "/usr/include/glib-2.0/glib/gutils.h"
extern
const gchar * g_get_user_name (void);
extern
const gchar * g_get_real_name (void);
extern
const gchar * g_get_home_dir (void);
extern
const gchar * g_get_tmp_dir (void);
extern
const gchar * g_get_host_name (void);
extern
const gchar * g_get_prgname (void);
extern
void g_set_prgname (const gchar *prgname);
extern
const gchar * g_get_application_name (void);
extern
void g_set_application_name (const gchar *application_name);

extern
void g_reload_user_special_dirs_cache (void);
extern
const gchar * g_get_user_data_dir (void);
extern
const gchar * g_get_user_config_dir (void);
extern
const gchar * g_get_user_cache_dir (void);
extern
const gchar * const * g_get_system_data_dirs (void);
# 134 "/usr/include/glib-2.0/glib/gutils.h"
extern
const gchar * const * g_get_system_config_dirs (void);

extern
const gchar * g_get_user_runtime_dir (void);
# 162 "/usr/include/glib-2.0/glib/gutils.h"
typedef enum {
  G_USER_DIRECTORY_DESKTOP,
  G_USER_DIRECTORY_DOCUMENTS,
  G_USER_DIRECTORY_DOWNLOAD,
  G_USER_DIRECTORY_MUSIC,
  G_USER_DIRECTORY_PICTURES,
  G_USER_DIRECTORY_PUBLIC_SHARE,
  G_USER_DIRECTORY_TEMPLATES,
  G_USER_DIRECTORY_VIDEOS,

  G_USER_N_DIRECTORIES
} GUserDirectory;

extern
const gchar * g_get_user_special_dir (GUserDirectory directory);
# 186 "/usr/include/glib-2.0/glib/gutils.h"
typedef struct _GDebugKey GDebugKey;
struct _GDebugKey
{
  const gchar *key;
  guint value;
};



extern
guint g_parse_debug_string (const gchar *string,
         const GDebugKey *keys,
         guint nkeys);

extern
gint g_snprintf (gchar *string,
         gulong n,
         gchar const *format,
         ...) __attribute__((__format__ (__printf__, 3, 4)));
extern
gint g_vsnprintf (gchar *string,
         gulong n,
         gchar const *format,
         va_list args)
         __attribute__((__format__ (__printf__, 3, 0)));

extern
void g_nullify_pointer (gpointer *nullify_location);

typedef enum
{
  G_FORMAT_SIZE_DEFAULT = 0,
  G_FORMAT_SIZE_LONG_FORMAT = 1 << 0,
  G_FORMAT_SIZE_IEC_UNITS = 1 << 1
} GFormatSizeFlags;

extern
gchar *g_format_size_full (guint64 size,
                             GFormatSizeFlags flags);
extern
gchar *g_format_size (guint64 size);

__attribute__((__deprecated__)) extern
gchar *g_format_size_for_display (goffset size);
# 239 "/usr/include/glib-2.0/glib/gutils.h"
typedef void (*GVoidFunc) (void);

__attribute__((__deprecated__)) extern
void g_atexit (GVoidFunc func);
# 261 "/usr/include/glib-2.0/glib/gutils.h"
extern
gchar* g_find_program_in_path (const gchar *program);



static __inline __attribute__ ((unused)) gint g_bit_nth_lsf (gulong mask,
           gint nth_bit) __attribute__((__const__));
static __inline __attribute__ ((unused)) gint g_bit_nth_msf (gulong mask,
           gint nth_bit) __attribute__((__const__));
static __inline __attribute__ ((unused)) guint g_bit_storage (gulong number) __attribute__((__const__));




static __inline __attribute__ ((unused)) gint
g_bit_nth_lsf (gulong mask,
        gint nth_bit)
{
  if ((nth_bit < -1))
    nth_bit = -1;
  while (nth_bit < ((8 * 8) - 1))
    {
      nth_bit++;
      if (mask & (1UL << nth_bit))
 return nth_bit;
    }
  return -1;
}
static __inline __attribute__ ((unused)) gint
g_bit_nth_msf (gulong mask,
        gint nth_bit)
{
  if (nth_bit < 0 || (nth_bit > 8 * 8))
    nth_bit = 8 * 8;
  while (nth_bit > 0)
    {
      nth_bit--;
      if (mask & (1UL << nth_bit))
 return nth_bit;
    }
  return -1;
}
static __inline __attribute__ ((unused)) guint
g_bit_storage (gulong number)
{




  guint n_bits = 0;

  do
    {
      n_bits++;
      number >>= 1;
    }
  while (number);
  return n_bits;

}
# 36 "/usr/include/glib-2.0/glib/gstring.h" 2



typedef struct _GString GString;

struct _GString
{
  gchar *str;
  gsize len;
  gsize allocated_len;
};

extern
GString* g_string_new (const gchar *init);
extern
GString* g_string_new_len (const gchar *init,
                                         gssize len);
extern
GString* g_string_sized_new (gsize dfl_size);
extern
gchar* g_string_free (GString *string,
                                         gboolean free_segment);
extern
GBytes* g_string_free_to_bytes (GString *string);
extern
gboolean g_string_equal (const GString *v,
                                         const GString *v2);
extern
guint g_string_hash (const GString *str);
extern
GString* g_string_assign (GString *string,
                                         const gchar *rval);
extern
GString* g_string_truncate (GString *string,
                                         gsize len);
extern
GString* g_string_set_size (GString *string,
                                         gsize len);
extern
GString* g_string_insert_len (GString *string,
                                         gssize pos,
                                         const gchar *val,
                                         gssize len);
extern
GString* g_string_append (GString *string,
                                         const gchar *val);
extern
GString* g_string_append_len (GString *string,
                                         const gchar *val,
                                         gssize len);
extern
GString* g_string_append_c (GString *string,
                                         gchar c);
extern
GString* g_string_append_unichar (GString *string,
                                         gunichar wc);
extern
GString* g_string_prepend (GString *string,
                                         const gchar *val);
extern
GString* g_string_prepend_c (GString *string,
                                         gchar c);
extern
GString* g_string_prepend_unichar (GString *string,
                                         gunichar wc);
extern
GString* g_string_prepend_len (GString *string,
                                         const gchar *val,
                                         gssize len);
extern
GString* g_string_insert (GString *string,
                                         gssize pos,
                                         const gchar *val);
extern
GString* g_string_insert_c (GString *string,
                                         gssize pos,
                                         gchar c);
extern
GString* g_string_insert_unichar (GString *string,
                                         gssize pos,
                                         gunichar wc);
extern
GString* g_string_overwrite (GString *string,
                                         gsize pos,
                                         const gchar *val);
extern
GString* g_string_overwrite_len (GString *string,
                                         gsize pos,
                                         const gchar *val,
                                         gssize len);
extern
GString* g_string_erase (GString *string,
                                         gssize pos,
                                         gssize len);
extern
GString* g_string_ascii_down (GString *string);
extern
GString* g_string_ascii_up (GString *string);
extern
void g_string_vprintf (GString *string,
                                         const gchar *format,
                                         va_list args)
                                         __attribute__((__format__ (__printf__, 2, 0)));
extern
void g_string_printf (GString *string,
                                         const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 2, 3)));
extern
void g_string_append_vprintf (GString *string,
                                         const gchar *format,
                                         va_list args)
                                         __attribute__((__format__ (__printf__, 2, 0)));
extern
void g_string_append_printf (GString *string,
                                         const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 2, 3)));
extern
GString* g_string_append_uri_escaped (GString *string,
                                          const gchar *unescaped,
                                          const gchar *reserved_chars_allowed,
                                          gboolean allow_utf8);



static inline GString*
g_string_append_c_inline (GString *gstring,
                          gchar c)
{
  if (gstring->len + 1 < gstring->allocated_len)
    {
      gstring->str[gstring->len++] = c;
      gstring->str[gstring->len] = 0;
    }
  else
    g_string_insert_c (gstring, -1, c);
  return gstring;
}




__attribute__((__deprecated__)) extern
GString *g_string_down (GString *string);
__attribute__((__deprecated__)) extern
GString *g_string_up (GString *string);
# 35 "/usr/include/glib-2.0/glib/giochannel.h" 2






typedef struct _GIOChannel GIOChannel;
typedef struct _GIOFuncs GIOFuncs;

typedef enum
{
  G_IO_ERROR_NONE,
  G_IO_ERROR_AGAIN,
  G_IO_ERROR_INVAL,
  G_IO_ERROR_UNKNOWN
} GIOError;



typedef enum
{

  G_IO_CHANNEL_ERROR_FBIG,
  G_IO_CHANNEL_ERROR_INVAL,
  G_IO_CHANNEL_ERROR_IO,
  G_IO_CHANNEL_ERROR_ISDIR,
  G_IO_CHANNEL_ERROR_NOSPC,
  G_IO_CHANNEL_ERROR_NXIO,
  G_IO_CHANNEL_ERROR_OVERFLOW,
  G_IO_CHANNEL_ERROR_PIPE,

  G_IO_CHANNEL_ERROR_FAILED
} GIOChannelError;

typedef enum
{
  G_IO_STATUS_ERROR,
  G_IO_STATUS_NORMAL,
  G_IO_STATUS_EOF,
  G_IO_STATUS_AGAIN
} GIOStatus;

typedef enum
{
  G_SEEK_CUR,
  G_SEEK_SET,
  G_SEEK_END
} GSeekType;

typedef enum
{
  G_IO_FLAG_APPEND = 1 << 0,
  G_IO_FLAG_NONBLOCK = 1 << 1,
  G_IO_FLAG_IS_READABLE = 1 << 2,
  G_IO_FLAG_IS_WRITABLE = 1 << 3,
  G_IO_FLAG_IS_WRITEABLE = 1 << 3,
  G_IO_FLAG_IS_SEEKABLE = 1 << 4,
  G_IO_FLAG_MASK = (1 << 5) - 1,
  G_IO_FLAG_GET_MASK = G_IO_FLAG_MASK,
  G_IO_FLAG_SET_MASK = G_IO_FLAG_APPEND | G_IO_FLAG_NONBLOCK
} GIOFlags;

struct _GIOChannel
{

  gint ref_count;
  GIOFuncs *funcs;

  gchar *encoding;
  GIConv read_cd;
  GIConv write_cd;
  gchar *line_term;
  guint line_term_len;

  gsize buf_size;
  GString *read_buf;
  GString *encoded_read_buf;
  GString *write_buf;
  gchar partial_write_buf[6];



  guint use_buffer : 1;
  guint do_encode : 1;
  guint close_on_unref : 1;
  guint is_readable : 1;
  guint is_writeable : 1;
  guint is_seekable : 1;

  gpointer reserved1;
  gpointer reserved2;
};

typedef gboolean (*GIOFunc) (GIOChannel *source,
        GIOCondition condition,
        gpointer data);
struct _GIOFuncs
{
  GIOStatus (*io_read) (GIOChannel *channel,
             gchar *buf,
      gsize count,
      gsize *bytes_read,
      GError **err);
  GIOStatus (*io_write) (GIOChannel *channel,
      const gchar *buf,
      gsize count,
      gsize *bytes_written,
      GError **err);
  GIOStatus (*io_seek) (GIOChannel *channel,
      gint64 offset,
      GSeekType type,
      GError **err);
  GIOStatus (*io_close) (GIOChannel *channel,
      GError **err);
  GSource* (*io_create_watch) (GIOChannel *channel,
      GIOCondition condition);
  void (*io_free) (GIOChannel *channel);
  GIOStatus (*io_set_flags) (GIOChannel *channel,
                                  GIOFlags flags,
      GError **err);
  GIOFlags (*io_get_flags) (GIOChannel *channel);
};

extern
void g_io_channel_init (GIOChannel *channel);
extern
GIOChannel *g_io_channel_ref (GIOChannel *channel);
extern
void g_io_channel_unref (GIOChannel *channel);

__attribute__((__deprecated__)) extern
GIOError g_io_channel_read (GIOChannel *channel,
                                 gchar *buf,
                                 gsize count,
                                 gsize *bytes_read);

__attribute__((__deprecated__)) extern
GIOError g_io_channel_write (GIOChannel *channel,
                                 const gchar *buf,
                                 gsize count,
                                 gsize *bytes_written);

__attribute__((__deprecated__)) extern
GIOError g_io_channel_seek (GIOChannel *channel,
                                 gint64 offset,
                                 GSeekType type);

__attribute__((__deprecated__)) extern
void g_io_channel_close (GIOChannel *channel);

extern
GIOStatus g_io_channel_shutdown (GIOChannel *channel,
     gboolean flush,
     GError **err);
extern
guint g_io_add_watch_full (GIOChannel *channel,
     gint priority,
     GIOCondition condition,
     GIOFunc func,
     gpointer user_data,
     GDestroyNotify notify);
extern
GSource * g_io_create_watch (GIOChannel *channel,
     GIOCondition condition);
extern
guint g_io_add_watch (GIOChannel *channel,
     GIOCondition condition,
     GIOFunc func,
     gpointer user_data);




extern
void g_io_channel_set_buffer_size (GIOChannel *channel,
        gsize size);
extern
gsize g_io_channel_get_buffer_size (GIOChannel *channel);
extern
GIOCondition g_io_channel_get_buffer_condition (GIOChannel *channel);
extern
GIOStatus g_io_channel_set_flags (GIOChannel *channel,
        GIOFlags flags,
        GError **error);
extern
GIOFlags g_io_channel_get_flags (GIOChannel *channel);
extern
void g_io_channel_set_line_term (GIOChannel *channel,
        const gchar *line_term,
        gint length);
extern
const gchar * g_io_channel_get_line_term (GIOChannel *channel,
        gint *length);
extern
void g_io_channel_set_buffered (GIOChannel *channel,
        gboolean buffered);
extern
gboolean g_io_channel_get_buffered (GIOChannel *channel);
extern
GIOStatus g_io_channel_set_encoding (GIOChannel *channel,
        const gchar *encoding,
        GError **error);
extern
const gchar * g_io_channel_get_encoding (GIOChannel *channel);
extern
void g_io_channel_set_close_on_unref (GIOChannel *channel,
        gboolean do_close);
extern
gboolean g_io_channel_get_close_on_unref (GIOChannel *channel);


extern
GIOStatus g_io_channel_flush (GIOChannel *channel,
        GError **error);
extern
GIOStatus g_io_channel_read_line (GIOChannel *channel,
        gchar **str_return,
        gsize *length,
        gsize *terminator_pos,
        GError **error);
extern
GIOStatus g_io_channel_read_line_string (GIOChannel *channel,
        GString *buffer,
        gsize *terminator_pos,
        GError **error);
extern
GIOStatus g_io_channel_read_to_end (GIOChannel *channel,
        gchar **str_return,
        gsize *length,
        GError **error);
extern
GIOStatus g_io_channel_read_chars (GIOChannel *channel,
        gchar *buf,
        gsize count,
        gsize *bytes_read,
        GError **error);
extern
GIOStatus g_io_channel_read_unichar (GIOChannel *channel,
        gunichar *thechar,
        GError **error);
extern
GIOStatus g_io_channel_write_chars (GIOChannel *channel,
        const gchar *buf,
        gssize count,
        gsize *bytes_written,
        GError **error);
extern
GIOStatus g_io_channel_write_unichar (GIOChannel *channel,
        gunichar thechar,
        GError **error);
extern
GIOStatus g_io_channel_seek_position (GIOChannel *channel,
        gint64 offset,
        GSeekType type,
        GError **error);
extern
GIOChannel* g_io_channel_new_file (const gchar *filename,
        const gchar *mode,
        GError **error);



extern
GQuark g_io_channel_error_quark (void);
extern
GIOChannelError g_io_channel_error_from_errno (gint en);
# 320 "/usr/include/glib-2.0/glib/giochannel.h"
extern
GIOChannel* g_io_channel_unix_new (int fd);
extern
gint g_io_channel_unix_get_fd (GIOChannel *channel);



extern GSourceFuncs g_io_watch_funcs;
# 55 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gkeyfile.h" 1
# 33 "/usr/include/glib-2.0/glib/gkeyfile.h"
typedef enum
{
  G_KEY_FILE_ERROR_UNKNOWN_ENCODING,
  G_KEY_FILE_ERROR_PARSE,
  G_KEY_FILE_ERROR_NOT_FOUND,
  G_KEY_FILE_ERROR_KEY_NOT_FOUND,
  G_KEY_FILE_ERROR_GROUP_NOT_FOUND,
  G_KEY_FILE_ERROR_INVALID_VALUE
} GKeyFileError;



extern
GQuark g_key_file_error_quark (void);

typedef struct _GKeyFile GKeyFile;

typedef enum
{
  G_KEY_FILE_NONE = 0,
  G_KEY_FILE_KEEP_COMMENTS = 1 << 0,
  G_KEY_FILE_KEEP_TRANSLATIONS = 1 << 1
} GKeyFileFlags;

extern
GKeyFile *g_key_file_new (void);
extern
GKeyFile *g_key_file_ref (GKeyFile *key_file);
extern
void g_key_file_unref (GKeyFile *key_file);
extern
void g_key_file_free (GKeyFile *key_file);
extern
void g_key_file_set_list_separator (GKeyFile *key_file,
          gchar separator);
extern
gboolean g_key_file_load_from_file (GKeyFile *key_file,
          const gchar *file,
          GKeyFileFlags flags,
          GError **error);
extern
gboolean g_key_file_load_from_data (GKeyFile *key_file,
          const gchar *data,
          gsize length,
          GKeyFileFlags flags,
          GError **error);
extern
gboolean g_key_file_load_from_dirs (GKeyFile *key_file,
          const gchar *file,
          const gchar **search_dirs,
          gchar **full_path,
          GKeyFileFlags flags,
          GError **error);
extern
gboolean g_key_file_load_from_data_dirs (GKeyFile *key_file,
          const gchar *file,
          gchar **full_path,
          GKeyFileFlags flags,
          GError **error);
extern
gchar *g_key_file_to_data (GKeyFile *key_file,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
gboolean g_key_file_save_to_file (GKeyFile *key_file,
                                             const gchar *filename,
                                             GError **error);
extern
gchar *g_key_file_get_start_group (GKeyFile *key_file) __attribute__((__malloc__));
extern
gchar **g_key_file_get_groups (GKeyFile *key_file,
          gsize *length) __attribute__((__malloc__));
extern
gchar **g_key_file_get_keys (GKeyFile *key_file,
          const gchar *group_name,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
gboolean g_key_file_has_group (GKeyFile *key_file,
          const gchar *group_name);
extern
gboolean g_key_file_has_key (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
gchar *g_key_file_get_value (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_value (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *value);
extern
gchar *g_key_file_get_string (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_string (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *string);
extern
gchar *g_key_file_get_locale_string (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *locale,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_locale_string (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *locale,
          const gchar *string);
extern
gboolean g_key_file_get_boolean (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
void g_key_file_set_boolean (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gboolean value);
extern
gint g_key_file_get_integer (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
void g_key_file_set_integer (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gint value);
extern
gint64 g_key_file_get_int64 (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
void g_key_file_set_int64 (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gint64 value);
extern
guint64 g_key_file_get_uint64 (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
void g_key_file_set_uint64 (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          guint64 value);
extern
gdouble g_key_file_get_double (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             GError **error);
extern
void g_key_file_set_double (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             gdouble value);
extern
gchar **g_key_file_get_string_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_string_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar * const list[],
          gsize length);
extern
gchar **g_key_file_get_locale_string_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *locale,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_locale_string_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          const gchar *locale,
          const gchar * const list[],
          gsize length);
extern
gboolean *g_key_file_get_boolean_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_boolean_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gboolean list[],
          gsize length);
extern
gint *g_key_file_get_integer_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gsize *length,
          GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_double_list (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             gdouble list[],
                                             gsize length);
extern
gdouble *g_key_file_get_double_list (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             gsize *length,
                                             GError **error) __attribute__((__malloc__));
extern
void g_key_file_set_integer_list (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          gint list[],
          gsize length);
extern
gboolean g_key_file_set_comment (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             const gchar *comment,
                                             GError **error);
extern
gchar *g_key_file_get_comment (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
                                             GError **error) __attribute__((__malloc__));

extern
gboolean g_key_file_remove_comment (GKeyFile *key_file,
                                             const gchar *group_name,
                                             const gchar *key,
          GError **error);
extern
gboolean g_key_file_remove_key (GKeyFile *key_file,
          const gchar *group_name,
          const gchar *key,
          GError **error);
extern
gboolean g_key_file_remove_group (GKeyFile *key_file,
          const gchar *group_name,
          GError **error);
# 56 "/usr/include/glib-2.0/glib.h" 2



# 1 "/usr/include/glib-2.0/glib/gmappedfile.h" 1
# 32 "/usr/include/glib-2.0/glib/gmappedfile.h"
typedef struct _GMappedFile GMappedFile;

extern
GMappedFile *g_mapped_file_new (const gchar *filename,
             gboolean writable,
             GError **error) __attribute__((__malloc__));
extern
GMappedFile *g_mapped_file_new_from_fd (gint fd,
      gboolean writable,
      GError **error) __attribute__((__malloc__));
extern
gsize g_mapped_file_get_length (GMappedFile *file);
extern
gchar *g_mapped_file_get_contents (GMappedFile *file);
extern
GBytes * g_mapped_file_get_bytes (GMappedFile *file);
extern
GMappedFile *g_mapped_file_ref (GMappedFile *file);
extern
void g_mapped_file_unref (GMappedFile *file);

__attribute__((__deprecated__)) extern
void g_mapped_file_free (GMappedFile *file);
# 60 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gmarkup.h" 1
# 50 "/usr/include/glib-2.0/glib/gmarkup.h"
typedef enum
{
  G_MARKUP_ERROR_BAD_UTF8,
  G_MARKUP_ERROR_EMPTY,
  G_MARKUP_ERROR_PARSE,



  G_MARKUP_ERROR_UNKNOWN_ELEMENT,
  G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE,
  G_MARKUP_ERROR_INVALID_CONTENT,
  G_MARKUP_ERROR_MISSING_ATTRIBUTE
} GMarkupError;
# 73 "/usr/include/glib-2.0/glib/gmarkup.h"
extern
GQuark g_markup_error_quark (void);
# 96 "/usr/include/glib-2.0/glib/gmarkup.h"
typedef enum
{
  G_MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG = 1 << 0,
  G_MARKUP_TREAT_CDATA_AS_TEXT = 1 << 1,
  G_MARKUP_PREFIX_ERROR_POSITION = 1 << 2,
  G_MARKUP_IGNORE_QUALIFIED = 1 << 3
} GMarkupParseFlags;
# 113 "/usr/include/glib-2.0/glib/gmarkup.h"
typedef struct _GMarkupParseContext GMarkupParseContext;
typedef struct _GMarkupParser GMarkupParser;
# 144 "/usr/include/glib-2.0/glib/gmarkup.h"
struct _GMarkupParser
{

  void (*start_element) (GMarkupParseContext *context,
                          const gchar *element_name,
                          const gchar **attribute_names,
                          const gchar **attribute_values,
                          gpointer user_data,
                          GError **error);


  void (*end_element) (GMarkupParseContext *context,
                          const gchar *element_name,
                          gpointer user_data,
                          GError **error);



  void (*text) (GMarkupParseContext *context,
                          const gchar *text,
                          gsize text_len,
                          gpointer user_data,
                          GError **error);






  void (*passthrough) (GMarkupParseContext *context,
                          const gchar *passthrough_text,
                          gsize text_len,
                          gpointer user_data,
                          GError **error);




  void (*error) (GMarkupParseContext *context,
                          GError *error,
                          gpointer user_data);
};

extern
GMarkupParseContext *g_markup_parse_context_new (const GMarkupParser *parser,
                                                   GMarkupParseFlags flags,
                                                   gpointer user_data,
                                                   GDestroyNotify user_data_dnotify);
extern
GMarkupParseContext *g_markup_parse_context_ref (GMarkupParseContext *context);
extern
void g_markup_parse_context_unref (GMarkupParseContext *context);
extern
void g_markup_parse_context_free (GMarkupParseContext *context);
extern
gboolean g_markup_parse_context_parse (GMarkupParseContext *context,
                                                   const gchar *text,
                                                   gssize text_len,
                                                   GError **error);
extern
void g_markup_parse_context_push (GMarkupParseContext *context,
                                                   const GMarkupParser *parser,
                                                   gpointer user_data);
extern
gpointer g_markup_parse_context_pop (GMarkupParseContext *context);

extern
gboolean g_markup_parse_context_end_parse (GMarkupParseContext *context,
                                                       GError **error);
extern
const gchar * g_markup_parse_context_get_element (GMarkupParseContext *context);
extern
const GSList * g_markup_parse_context_get_element_stack (GMarkupParseContext *context);


extern
void g_markup_parse_context_get_position (GMarkupParseContext *context,
                                                          gint *line_number,
                                                          gint *char_number);
extern
gpointer g_markup_parse_context_get_user_data (GMarkupParseContext *context);


extern
gchar* g_markup_escape_text (const gchar *text,
                             gssize length);

extern
gchar *g_markup_printf_escaped (const char *format,
    ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
gchar *g_markup_vprintf_escaped (const char *format,
     va_list args) __attribute__((__format__ (__printf__, 1, 0)));

typedef enum
{
  G_MARKUP_COLLECT_INVALID,
  G_MARKUP_COLLECT_STRING,
  G_MARKUP_COLLECT_STRDUP,
  G_MARKUP_COLLECT_BOOLEAN,
  G_MARKUP_COLLECT_TRISTATE,

  G_MARKUP_COLLECT_OPTIONAL = (1 << 16)
} GMarkupCollectType;



extern
gboolean g_markup_collect_attributes (const gchar *element_name,
                                        const gchar **attribute_names,
                                        const gchar **attribute_values,
                                        GError **error,
                                        GMarkupCollectType first_type,
                                        const gchar *first_attr,
                                        ...);
# 61 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gmessages.h" 1
# 40 "/usr/include/glib-2.0/glib/gmessages.h" 3






extern
gsize g_printf_string_upper_bound (const gchar* format,
         va_list args) __attribute__((__format__ (__printf__, 1, 0)));
# 57 "/usr/include/glib-2.0/glib/gmessages.h" 3
typedef enum
{

  G_LOG_FLAG_RECURSION = 1 << 0,
  G_LOG_FLAG_FATAL = 1 << 1,


  G_LOG_LEVEL_ERROR = 1 << 2,
  G_LOG_LEVEL_CRITICAL = 1 << 3,
  G_LOG_LEVEL_WARNING = 1 << 4,
  G_LOG_LEVEL_MESSAGE = 1 << 5,
  G_LOG_LEVEL_INFO = 1 << 6,
  G_LOG_LEVEL_DEBUG = 1 << 7,

  G_LOG_LEVEL_MASK = ~(G_LOG_FLAG_RECURSION | G_LOG_FLAG_FATAL)
} GLogLevelFlags;




typedef void (*GLogFunc) (const gchar *log_domain,
                                                 GLogLevelFlags log_level,
                                                 const gchar *message,
                                                 gpointer user_data);



extern
guint g_log_set_handler (const gchar *log_domain,
                                         GLogLevelFlags log_levels,
                                         GLogFunc log_func,
                                         gpointer user_data);
extern
void g_log_remove_handler (const gchar *log_domain,
                                         guint handler_id);
extern
void g_log_default_handler (const gchar *log_domain,
                                         GLogLevelFlags log_level,
                                         const gchar *message,
                                         gpointer unused_data);
extern
GLogFunc g_log_set_default_handler (GLogFunc log_func,
        gpointer user_data);
extern
void g_log (const gchar *log_domain,
                                         GLogLevelFlags log_level,
                                         const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 3, 4)));
extern
void g_logv (const gchar *log_domain,
                                         GLogLevelFlags log_level,
                                         const gchar *format,
                                         va_list args) __attribute__((__format__ (__printf__, 3, 0)));
extern
GLogLevelFlags g_log_set_fatal_mask (const gchar *log_domain,
                                         GLogLevelFlags fatal_mask);
extern
GLogLevelFlags g_log_set_always_fatal (GLogLevelFlags fatal_mask);


void _g_log_fallback_handler (const gchar *log_domain,
       GLogLevelFlags log_level,
       const gchar *message,
       gpointer unused_data);


extern
void g_return_if_fail_warning (const char *log_domain,
          const char *pretty_function,
          const char *expression) __attribute__((analyzer_noreturn));
extern
void g_warn_message (const char *domain,
                               const char *file,
                               int line,
                               const char *func,
                               const char *warnexpr) __attribute__((analyzer_noreturn));
__attribute__((__deprecated__)) extern
void g_assert_warning (const char *log_domain,
          const char *file,
          const int line,
                 const char *pretty_function,
                 const char *expression) __attribute__((__noreturn__));
# 195 "/usr/include/glib-2.0/glib/gmessages.h" 3
static void g_error (const gchar *format, ...) __attribute__((analyzer_noreturn));
static void g_critical (const gchar *format, ...) __attribute__((analyzer_noreturn));

static void
g_error (const gchar *format,
         ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv ("Gimp-GEGL", G_LOG_LEVEL_ERROR, format, args);
  __builtin_va_end(args);

  for(;;) ;
}
static void
g_message (const gchar *format,
           ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv ("Gimp-GEGL", G_LOG_LEVEL_MESSAGE, format, args);
  __builtin_va_end(args);
}
static void
g_critical (const gchar *format,
            ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv ("Gimp-GEGL", G_LOG_LEVEL_CRITICAL, format, args);
  __builtin_va_end(args);
}
static void
g_warning (const gchar *format,
           ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv ("Gimp-GEGL", G_LOG_LEVEL_WARNING, format, args);
  __builtin_va_end(args);
}
static void
g_info (const gchar *format,
        ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv ("Gimp-GEGL", G_LOG_LEVEL_INFO, format, args);
  __builtin_va_end(args);
}
static void
g_debug (const gchar *format,
         ...)
{
  va_list args;
  __builtin_va_start(args, format);
  g_logv ("Gimp-GEGL", G_LOG_LEVEL_DEBUG, format, args);
  __builtin_va_end(args);
}
# 263 "/usr/include/glib-2.0/glib/gmessages.h" 3
typedef void (*GPrintFunc) (const gchar *string);
extern
void g_print (const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
GPrintFunc g_set_print_handler (GPrintFunc func);
extern
void g_printerr (const gchar *format,
                                         ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
GPrintFunc g_set_printerr_handler (GPrintFunc func);
# 63 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/goption.h" 1
# 38 "/usr/include/glib-2.0/glib/goption.h"
typedef struct _GOptionContext GOptionContext;
# 51 "/usr/include/glib-2.0/glib/goption.h"
typedef struct _GOptionGroup GOptionGroup;
typedef struct _GOptionEntry GOptionEntry;
# 81 "/usr/include/glib-2.0/glib/goption.h"
typedef enum
{
  G_OPTION_FLAG_NONE = 0,
  G_OPTION_FLAG_HIDDEN = 1 << 0,
  G_OPTION_FLAG_IN_MAIN = 1 << 1,
  G_OPTION_FLAG_REVERSE = 1 << 2,
  G_OPTION_FLAG_NO_ARG = 1 << 3,
  G_OPTION_FLAG_FILENAME = 1 << 4,
  G_OPTION_FLAG_OPTIONAL_ARG = 1 << 5,
  G_OPTION_FLAG_NOALIAS = 1 << 6
} GOptionFlags;
# 118 "/usr/include/glib-2.0/glib/goption.h"
typedef enum
{
  G_OPTION_ARG_NONE,
  G_OPTION_ARG_STRING,
  G_OPTION_ARG_INT,
  G_OPTION_ARG_CALLBACK,
  G_OPTION_ARG_FILENAME,
  G_OPTION_ARG_STRING_ARRAY,
  G_OPTION_ARG_FILENAME_ARRAY,
  G_OPTION_ARG_DOUBLE,
  G_OPTION_ARG_INT64
} GOptionArg;
# 148 "/usr/include/glib-2.0/glib/goption.h"
typedef gboolean (*GOptionArgFunc) (const gchar *option_name,
        const gchar *value,
        gpointer data,
        GError **error);
# 166 "/usr/include/glib-2.0/glib/goption.h"
typedef gboolean (*GOptionParseFunc) (GOptionContext *context,
          GOptionGroup *group,
          gpointer data,
          GError **error);
# 181 "/usr/include/glib-2.0/glib/goption.h"
typedef void (*GOptionErrorFunc) (GOptionContext *context,
      GOptionGroup *group,
      gpointer data,
      GError **error);
# 205 "/usr/include/glib-2.0/glib/goption.h"
typedef enum
{
  G_OPTION_ERROR_UNKNOWN_OPTION,
  G_OPTION_ERROR_BAD_VALUE,
  G_OPTION_ERROR_FAILED
} GOptionError;

extern
GQuark g_option_error_quark (void);
# 257 "/usr/include/glib-2.0/glib/goption.h"
struct _GOptionEntry
{
  const gchar *long_name;
  gchar short_name;
  gint flags;

  GOptionArg arg;
  gpointer arg_data;

  const gchar *description;
  const gchar *arg_description;
};
# 288 "/usr/include/glib-2.0/glib/goption.h"
extern
GOptionContext *g_option_context_new (const gchar *parameter_string);
extern
void g_option_context_set_summary (GOptionContext *context,
                                                   const gchar *summary);
extern
const gchar * g_option_context_get_summary (GOptionContext *context);
extern
void g_option_context_set_description (GOptionContext *context,
                                                   const gchar *description);
extern
const gchar * g_option_context_get_description (GOptionContext *context);
extern
void g_option_context_free (GOptionContext *context);
extern
void g_option_context_set_help_enabled (GOptionContext *context,
         gboolean help_enabled);
extern
gboolean g_option_context_get_help_enabled (GOptionContext *context);
extern
void g_option_context_set_ignore_unknown_options (GOptionContext *context,
            gboolean ignore_unknown);
extern
gboolean g_option_context_get_ignore_unknown_options (GOptionContext *context);

extern
void g_option_context_add_main_entries (GOptionContext *context,
         const GOptionEntry *entries,
         const gchar *translation_domain);
extern
gboolean g_option_context_parse (GOptionContext *context,
         gint *argc,
         gchar ***argv,
         GError **error);
extern
gboolean g_option_context_parse_strv (GOptionContext *context,
                                                   gchar ***arguments,
                                                   GError **error);
extern
void g_option_context_set_translate_func (GOptionContext *context,
           GTranslateFunc func,
           gpointer data,
           GDestroyNotify destroy_notify);
extern
void g_option_context_set_translation_domain (GOptionContext *context,
        const gchar *domain);

extern
void g_option_context_add_group (GOptionContext *context,
       GOptionGroup *group);
extern
void g_option_context_set_main_group (GOptionContext *context,
            GOptionGroup *group);
extern
GOptionGroup *g_option_context_get_main_group (GOptionContext *context);
extern
gchar *g_option_context_get_help (GOptionContext *context,
                                               gboolean main_help,
                                               GOptionGroup *group);

extern
GOptionGroup *g_option_group_new (const gchar *name,
           const gchar *description,
           const gchar *help_description,
           gpointer user_data,
           GDestroyNotify destroy);
extern
void g_option_group_set_parse_hooks (GOptionGroup *group,
           GOptionParseFunc pre_parse_func,
           GOptionParseFunc post_parse_func);
extern
void g_option_group_set_error_hook (GOptionGroup *group,
           GOptionErrorFunc error_func);
extern
void g_option_group_free (GOptionGroup *group);
extern
void g_option_group_add_entries (GOptionGroup *group,
           const GOptionEntry *entries);
extern
void g_option_group_set_translate_func (GOptionGroup *group,
           GTranslateFunc func,
           gpointer data,
           GDestroyNotify destroy_notify);
extern
void g_option_group_set_translation_domain (GOptionGroup *group,
           const gchar *domain);
# 65 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gpattern.h" 1
# 30 "/usr/include/glib-2.0/glib/gpattern.h"
typedef struct _GPatternSpec GPatternSpec;

extern
GPatternSpec* g_pattern_spec_new (const gchar *pattern);
extern
void g_pattern_spec_free (GPatternSpec *pspec);
extern
gboolean g_pattern_spec_equal (GPatternSpec *pspec1,
     GPatternSpec *pspec2);
extern
gboolean g_pattern_match (GPatternSpec *pspec,
     guint string_length,
     const gchar *string,
     const gchar *string_reversed);
extern
gboolean g_pattern_match_string (GPatternSpec *pspec,
     const gchar *string);
extern
gboolean g_pattern_match_simple (const gchar *pattern,
     const gchar *string);
# 66 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gprimes.h" 1
# 45 "/usr/include/glib-2.0/glib/gprimes.h"
extern
guint g_spaced_primes_closest (guint num) __attribute__((__const__));
# 68 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gqsort.h" 1
# 36 "/usr/include/glib-2.0/glib/gqsort.h"
extern
void g_qsort_with_data (gconstpointer pbase,
   gint total_elems,
   gsize size,
   GCompareDataFunc compare_func,
   gpointer user_data);
# 69 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gqueue.h" 1
# 36 "/usr/include/glib-2.0/glib/gqueue.h"
typedef struct _GQueue GQueue;
# 47 "/usr/include/glib-2.0/glib/gqueue.h"
struct _GQueue
{
  GList *head;
  GList *tail;
  guint length;
};
# 72 "/usr/include/glib-2.0/glib/gqueue.h"
extern
GQueue* g_queue_new (void);
extern
void g_queue_free (GQueue *queue);
extern
void g_queue_free_full (GQueue *queue,
    GDestroyNotify free_func);
extern
void g_queue_init (GQueue *queue);
extern
void g_queue_clear (GQueue *queue);
extern
gboolean g_queue_is_empty (GQueue *queue);
extern
guint g_queue_get_length (GQueue *queue);
extern
void g_queue_reverse (GQueue *queue);
extern
GQueue * g_queue_copy (GQueue *queue);
extern
void g_queue_foreach (GQueue *queue,
                                 GFunc func,
                                 gpointer user_data);
extern
GList * g_queue_find (GQueue *queue,
                                 gconstpointer data);
extern
GList * g_queue_find_custom (GQueue *queue,
                                 gconstpointer data,
                                 GCompareFunc func);
extern
void g_queue_sort (GQueue *queue,
                                 GCompareDataFunc compare_func,
                                 gpointer user_data);

extern
void g_queue_push_head (GQueue *queue,
                                 gpointer data);
extern
void g_queue_push_tail (GQueue *queue,
                                 gpointer data);
extern
void g_queue_push_nth (GQueue *queue,
                                 gpointer data,
                                 gint n);
extern
gpointer g_queue_pop_head (GQueue *queue);
extern
gpointer g_queue_pop_tail (GQueue *queue);
extern
gpointer g_queue_pop_nth (GQueue *queue,
                                 guint n);
extern
gpointer g_queue_peek_head (GQueue *queue);
extern
gpointer g_queue_peek_tail (GQueue *queue);
extern
gpointer g_queue_peek_nth (GQueue *queue,
                                 guint n);
extern
gint g_queue_index (GQueue *queue,
                                 gconstpointer data);
extern
gboolean g_queue_remove (GQueue *queue,
                                 gconstpointer data);
extern
guint g_queue_remove_all (GQueue *queue,
                                 gconstpointer data);
extern
void g_queue_insert_before (GQueue *queue,
                                 GList *sibling,
                                 gpointer data);
extern
void g_queue_insert_after (GQueue *queue,
                                 GList *sibling,
                                 gpointer data);
extern
void g_queue_insert_sorted (GQueue *queue,
                                 gpointer data,
                                 GCompareDataFunc func,
                                 gpointer user_data);

extern
void g_queue_push_head_link (GQueue *queue,
                                 GList *link_);
extern
void g_queue_push_tail_link (GQueue *queue,
                                 GList *link_);
extern
void g_queue_push_nth_link (GQueue *queue,
                                 gint n,
                                 GList *link_);
extern
GList* g_queue_pop_head_link (GQueue *queue);
extern
GList* g_queue_pop_tail_link (GQueue *queue);
extern
GList* g_queue_pop_nth_link (GQueue *queue,
                                 guint n);
extern
GList* g_queue_peek_head_link (GQueue *queue);
extern
GList* g_queue_peek_tail_link (GQueue *queue);
extern
GList* g_queue_peek_nth_link (GQueue *queue,
                                 guint n);
extern
gint g_queue_link_index (GQueue *queue,
                                 GList *link_);
extern
void g_queue_unlink (GQueue *queue,
                                 GList *link_);
extern
void g_queue_delete_link (GQueue *queue,
                                 GList *link_);
# 71 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/grand.h" 1
# 36 "/usr/include/glib-2.0/glib/grand.h"
typedef struct _GRand GRand;
# 47 "/usr/include/glib-2.0/glib/grand.h"
extern
GRand* g_rand_new_with_seed (guint32 seed);
extern
GRand* g_rand_new_with_seed_array (const guint32 *seed,
        guint seed_length);
extern
GRand* g_rand_new (void);
extern
void g_rand_free (GRand *rand_);
extern
GRand* g_rand_copy (GRand *rand_);
extern
void g_rand_set_seed (GRand *rand_,
          guint32 seed);
extern
void g_rand_set_seed_array (GRand *rand_,
          const guint32 *seed,
          guint seed_length);



extern
guint32 g_rand_int (GRand *rand_);
extern
gint32 g_rand_int_range (GRand *rand_,
          gint32 begin,
          gint32 end);
extern
gdouble g_rand_double (GRand *rand_);
extern
gdouble g_rand_double_range (GRand *rand_,
          gdouble begin,
          gdouble end);
extern
void g_random_set_seed (guint32 seed);



extern
guint32 g_random_int (void);
extern
gint32 g_random_int_range (gint32 begin,
          gint32 end);
extern
gdouble g_random_double (void);
extern
gdouble g_random_double_range (gdouble begin,
          gdouble end);
# 72 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gregex.h" 1
# 141 "/usr/include/glib-2.0/glib/gregex.h"
typedef enum
{
  G_REGEX_ERROR_COMPILE,
  G_REGEX_ERROR_OPTIMIZE,
  G_REGEX_ERROR_REPLACE,
  G_REGEX_ERROR_MATCH,
  G_REGEX_ERROR_INTERNAL,


  G_REGEX_ERROR_STRAY_BACKSLASH = 101,
  G_REGEX_ERROR_MISSING_CONTROL_CHAR = 102,
  G_REGEX_ERROR_UNRECOGNIZED_ESCAPE = 103,
  G_REGEX_ERROR_QUANTIFIERS_OUT_OF_ORDER = 104,
  G_REGEX_ERROR_QUANTIFIER_TOO_BIG = 105,
  G_REGEX_ERROR_UNTERMINATED_CHARACTER_CLASS = 106,
  G_REGEX_ERROR_INVALID_ESCAPE_IN_CHARACTER_CLASS = 107,
  G_REGEX_ERROR_RANGE_OUT_OF_ORDER = 108,
  G_REGEX_ERROR_NOTHING_TO_REPEAT = 109,
  G_REGEX_ERROR_UNRECOGNIZED_CHARACTER = 112,
  G_REGEX_ERROR_POSIX_NAMED_CLASS_OUTSIDE_CLASS = 113,
  G_REGEX_ERROR_UNMATCHED_PARENTHESIS = 114,
  G_REGEX_ERROR_INEXISTENT_SUBPATTERN_REFERENCE = 115,
  G_REGEX_ERROR_UNTERMINATED_COMMENT = 118,
  G_REGEX_ERROR_EXPRESSION_TOO_LARGE = 120,
  G_REGEX_ERROR_MEMORY_ERROR = 121,
  G_REGEX_ERROR_VARIABLE_LENGTH_LOOKBEHIND = 125,
  G_REGEX_ERROR_MALFORMED_CONDITION = 126,
  G_REGEX_ERROR_TOO_MANY_CONDITIONAL_BRANCHES = 127,
  G_REGEX_ERROR_ASSERTION_EXPECTED = 128,
  G_REGEX_ERROR_UNKNOWN_POSIX_CLASS_NAME = 130,
  G_REGEX_ERROR_POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED = 131,
  G_REGEX_ERROR_HEX_CODE_TOO_LARGE = 134,
  G_REGEX_ERROR_INVALID_CONDITION = 135,
  G_REGEX_ERROR_SINGLE_BYTE_MATCH_IN_LOOKBEHIND = 136,
  G_REGEX_ERROR_INFINITE_LOOP = 140,
  G_REGEX_ERROR_MISSING_SUBPATTERN_NAME_TERMINATOR = 142,
  G_REGEX_ERROR_DUPLICATE_SUBPATTERN_NAME = 143,
  G_REGEX_ERROR_MALFORMED_PROPERTY = 146,
  G_REGEX_ERROR_UNKNOWN_PROPERTY = 147,
  G_REGEX_ERROR_SUBPATTERN_NAME_TOO_LONG = 148,
  G_REGEX_ERROR_TOO_MANY_SUBPATTERNS = 149,
  G_REGEX_ERROR_INVALID_OCTAL_VALUE = 151,
  G_REGEX_ERROR_TOO_MANY_BRANCHES_IN_DEFINE = 154,
  G_REGEX_ERROR_DEFINE_REPETION = 155,
  G_REGEX_ERROR_INCONSISTENT_NEWLINE_OPTIONS = 156,
  G_REGEX_ERROR_MISSING_BACK_REFERENCE = 157,
  G_REGEX_ERROR_INVALID_RELATIVE_REFERENCE = 158,
  G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN = 159,
  G_REGEX_ERROR_UNKNOWN_BACKTRACKING_CONTROL_VERB = 160,
  G_REGEX_ERROR_NUMBER_TOO_BIG = 161,
  G_REGEX_ERROR_MISSING_SUBPATTERN_NAME = 162,
  G_REGEX_ERROR_MISSING_DIGIT = 163,
  G_REGEX_ERROR_INVALID_DATA_CHARACTER = 164,
  G_REGEX_ERROR_EXTRA_SUBPATTERN_NAME = 165,
  G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED = 166,
  G_REGEX_ERROR_INVALID_CONTROL_CHAR = 168,
  G_REGEX_ERROR_MISSING_NAME = 169,
  G_REGEX_ERROR_NOT_SUPPORTED_IN_CLASS = 171,
  G_REGEX_ERROR_TOO_MANY_FORWARD_REFERENCES = 172,
  G_REGEX_ERROR_NAME_TOO_LONG = 175,
  G_REGEX_ERROR_CHARACTER_VALUE_TOO_LARGE = 176
} GRegexError;
# 215 "/usr/include/glib-2.0/glib/gregex.h"
extern
GQuark g_regex_error_quark (void);
# 297 "/usr/include/glib-2.0/glib/gregex.h"
typedef enum
{
  G_REGEX_CASELESS = 1 << 0,
  G_REGEX_MULTILINE = 1 << 1,
  G_REGEX_DOTALL = 1 << 2,
  G_REGEX_EXTENDED = 1 << 3,
  G_REGEX_ANCHORED = 1 << 4,
  G_REGEX_DOLLAR_ENDONLY = 1 << 5,
  G_REGEX_UNGREEDY = 1 << 9,
  G_REGEX_RAW = 1 << 11,
  G_REGEX_NO_AUTO_CAPTURE = 1 << 12,
  G_REGEX_OPTIMIZE = 1 << 13,
  G_REGEX_FIRSTLINE = 1 << 18,
  G_REGEX_DUPNAMES = 1 << 19,
  G_REGEX_NEWLINE_CR = 1 << 20,
  G_REGEX_NEWLINE_LF = 1 << 21,
  G_REGEX_NEWLINE_CRLF = G_REGEX_NEWLINE_CR | G_REGEX_NEWLINE_LF,
  G_REGEX_NEWLINE_ANYCRLF = G_REGEX_NEWLINE_CR | 1 << 22,
  G_REGEX_BSR_ANYCRLF = 1 << 23,
  G_REGEX_JAVASCRIPT_COMPAT = 1 << 25
} GRegexCompileFlags;
# 387 "/usr/include/glib-2.0/glib/gregex.h"
typedef enum
{
  G_REGEX_MATCH_ANCHORED = 1 << 4,
  G_REGEX_MATCH_NOTBOL = 1 << 7,
  G_REGEX_MATCH_NOTEOL = 1 << 8,
  G_REGEX_MATCH_NOTEMPTY = 1 << 10,
  G_REGEX_MATCH_PARTIAL = 1 << 15,
  G_REGEX_MATCH_NEWLINE_CR = 1 << 20,
  G_REGEX_MATCH_NEWLINE_LF = 1 << 21,
  G_REGEX_MATCH_NEWLINE_CRLF = G_REGEX_MATCH_NEWLINE_CR | G_REGEX_MATCH_NEWLINE_LF,
  G_REGEX_MATCH_NEWLINE_ANY = 1 << 22,
  G_REGEX_MATCH_NEWLINE_ANYCRLF = G_REGEX_MATCH_NEWLINE_CR | G_REGEX_MATCH_NEWLINE_ANY,
  G_REGEX_MATCH_BSR_ANYCRLF = 1 << 23,
  G_REGEX_MATCH_BSR_ANY = 1 << 24,
  G_REGEX_MATCH_PARTIAL_SOFT = G_REGEX_MATCH_PARTIAL,
  G_REGEX_MATCH_PARTIAL_HARD = 1 << 27,
  G_REGEX_MATCH_NOTEMPTY_ATSTART = 1 << 28
} GRegexMatchFlags;
# 414 "/usr/include/glib-2.0/glib/gregex.h"
typedef struct _GRegex GRegex;
# 423 "/usr/include/glib-2.0/glib/gregex.h"
typedef struct _GMatchInfo GMatchInfo;
# 442 "/usr/include/glib-2.0/glib/gregex.h"
typedef gboolean (*GRegexEvalCallback) (const GMatchInfo *match_info,
       GString *result,
       gpointer user_data);


extern
GRegex *g_regex_new (const gchar *pattern,
       GRegexCompileFlags compile_options,
       GRegexMatchFlags match_options,
       GError **error);
extern
GRegex *g_regex_ref (GRegex *regex);
extern
void g_regex_unref (GRegex *regex);
extern
const gchar *g_regex_get_pattern (const GRegex *regex);
extern
gint g_regex_get_max_backref (const GRegex *regex);
extern
gint g_regex_get_capture_count (const GRegex *regex);
extern
gboolean g_regex_get_has_cr_or_lf (const GRegex *regex);
extern
gint g_regex_get_max_lookbehind (const GRegex *regex);
extern
gint g_regex_get_string_number (const GRegex *regex,
       const gchar *name);
extern
gchar *g_regex_escape_string (const gchar *string,
       gint length);
extern
gchar *g_regex_escape_nul (const gchar *string,
       gint length);

extern
GRegexCompileFlags g_regex_get_compile_flags (const GRegex *regex);
extern
GRegexMatchFlags g_regex_get_match_flags (const GRegex *regex);


extern
gboolean g_regex_match_simple (const gchar *pattern,
       const gchar *string,
       GRegexCompileFlags compile_options,
       GRegexMatchFlags match_options);
extern
gboolean g_regex_match (const GRegex *regex,
       const gchar *string,
       GRegexMatchFlags match_options,
       GMatchInfo **match_info);
extern
gboolean g_regex_match_full (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       GRegexMatchFlags match_options,
       GMatchInfo **match_info,
       GError **error);
extern
gboolean g_regex_match_all (const GRegex *regex,
       const gchar *string,
       GRegexMatchFlags match_options,
       GMatchInfo **match_info);
extern
gboolean g_regex_match_all_full (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       GRegexMatchFlags match_options,
       GMatchInfo **match_info,
       GError **error);


extern
gchar **g_regex_split_simple (const gchar *pattern,
       const gchar *string,
       GRegexCompileFlags compile_options,
       GRegexMatchFlags match_options);
extern
gchar **g_regex_split (const GRegex *regex,
       const gchar *string,
       GRegexMatchFlags match_options);
extern
gchar **g_regex_split_full (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       GRegexMatchFlags match_options,
       gint max_tokens,
       GError **error);


extern
gchar *g_regex_replace (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       const gchar *replacement,
       GRegexMatchFlags match_options,
       GError **error);
extern
gchar *g_regex_replace_literal (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       const gchar *replacement,
       GRegexMatchFlags match_options,
       GError **error);
extern
gchar *g_regex_replace_eval (const GRegex *regex,
       const gchar *string,
       gssize string_len,
       gint start_position,
       GRegexMatchFlags match_options,
       GRegexEvalCallback eval,
       gpointer user_data,
       GError **error);
extern
gboolean g_regex_check_replacement (const gchar *replacement,
       gboolean *has_references,
       GError **error);


extern
GRegex *g_match_info_get_regex (const GMatchInfo *match_info);
extern
const gchar *g_match_info_get_string (const GMatchInfo *match_info);

extern
GMatchInfo *g_match_info_ref (GMatchInfo *match_info);
extern
void g_match_info_unref (GMatchInfo *match_info);
extern
void g_match_info_free (GMatchInfo *match_info);
extern
gboolean g_match_info_next (GMatchInfo *match_info,
       GError **error);
extern
gboolean g_match_info_matches (const GMatchInfo *match_info);
extern
gint g_match_info_get_match_count (const GMatchInfo *match_info);
extern
gboolean g_match_info_is_partial_match (const GMatchInfo *match_info);
extern
gchar *g_match_info_expand_references(const GMatchInfo *match_info,
       const gchar *string_to_expand,
       GError **error);
extern
gchar *g_match_info_fetch (const GMatchInfo *match_info,
       gint match_num);
extern
gboolean g_match_info_fetch_pos (const GMatchInfo *match_info,
       gint match_num,
       gint *start_pos,
       gint *end_pos);
extern
gchar *g_match_info_fetch_named (const GMatchInfo *match_info,
       const gchar *name);
extern
gboolean g_match_info_fetch_named_pos (const GMatchInfo *match_info,
       const gchar *name,
       gint *start_pos,
       gint *end_pos);
extern
gchar **g_match_info_fetch_all (const GMatchInfo *match_info);
# 73 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gscanner.h" 1
# 37 "/usr/include/glib-2.0/glib/gscanner.h"
typedef struct _GScanner GScanner;
typedef struct _GScannerConfig GScannerConfig;
typedef union _GTokenValue GTokenValue;

typedef void (*GScannerMsgFunc) (GScanner *scanner,
       gchar *message,
       gboolean error);
# 62 "/usr/include/glib-2.0/glib/gscanner.h"
typedef enum
{
  G_ERR_UNKNOWN,
  G_ERR_UNEXP_EOF,
  G_ERR_UNEXP_EOF_IN_STRING,
  G_ERR_UNEXP_EOF_IN_COMMENT,
  G_ERR_NON_DIGIT_IN_CONST,
  G_ERR_DIGIT_RADIX,
  G_ERR_FLOAT_RADIX,
  G_ERR_FLOAT_MALFORMED
} GErrorType;


typedef enum
{
  G_TOKEN_EOF = 0,

  G_TOKEN_LEFT_PAREN = '(',
  G_TOKEN_RIGHT_PAREN = ')',
  G_TOKEN_LEFT_CURLY = '{',
  G_TOKEN_RIGHT_CURLY = '}',
  G_TOKEN_LEFT_BRACE = '[',
  G_TOKEN_RIGHT_BRACE = ']',
  G_TOKEN_EQUAL_SIGN = '=',
  G_TOKEN_COMMA = ',',

  G_TOKEN_NONE = 256,

  G_TOKEN_ERROR,

  G_TOKEN_CHAR,
  G_TOKEN_BINARY,
  G_TOKEN_OCTAL,
  G_TOKEN_INT,
  G_TOKEN_HEX,
  G_TOKEN_FLOAT,
  G_TOKEN_STRING,

  G_TOKEN_SYMBOL,
  G_TOKEN_IDENTIFIER,
  G_TOKEN_IDENTIFIER_NULL,

  G_TOKEN_COMMENT_SINGLE,
  G_TOKEN_COMMENT_MULTI,


  G_TOKEN_LAST
} GTokenType;

union _GTokenValue
{
  gpointer v_symbol;
  gchar *v_identifier;
  gulong v_binary;
  gulong v_octal;
  gulong v_int;
  guint64 v_int64;
  gdouble v_float;
  gulong v_hex;
  gchar *v_string;
  gchar *v_comment;
  guchar v_char;
  guint v_error;
};

struct _GScannerConfig
{


  gchar *cset_skip_characters;
  gchar *cset_identifier_first;
  gchar *cset_identifier_nth;
  gchar *cpair_comment_single;



  guint case_sensitive : 1;




  guint skip_comment_multi : 1;
  guint skip_comment_single : 1;
  guint scan_comment_multi : 1;
  guint scan_identifier : 1;
  guint scan_identifier_1char : 1;
  guint scan_identifier_NULL : 1;
  guint scan_symbols : 1;
  guint scan_binary : 1;
  guint scan_octal : 1;
  guint scan_float : 1;
  guint scan_hex : 1;
  guint scan_hex_dollar : 1;
  guint scan_string_sq : 1;
  guint scan_string_dq : 1;
  guint numbers_2_int : 1;
  guint int_2_float : 1;
  guint identifier_2_string : 1;
  guint char_2_token : 1;
  guint symbol_2_token : 1;
  guint scope_0_fallback : 1;
  guint store_int64 : 1;


  guint padding_dummy;
};

struct _GScanner
{

  gpointer user_data;
  guint max_parse_errors;


  guint parse_errors;


  const gchar *input_name;


  GData *qdata;


  GScannerConfig *config;


  GTokenType token;
  GTokenValue value;
  guint line;
  guint position;


  GTokenType next_token;
  GTokenValue next_value;
  guint next_line;
  guint next_position;



  GHashTable *symbol_table;
  gint input_fd;
  const gchar *text;
  const gchar *text_end;
  gchar *buffer;
  guint scope_id;



  GScannerMsgFunc msg_handler;
};

extern
GScanner* g_scanner_new (const GScannerConfig *config_templ);
extern
void g_scanner_destroy (GScanner *scanner);
extern
void g_scanner_input_file (GScanner *scanner,
       gint input_fd);
extern
void g_scanner_sync_file_offset (GScanner *scanner);
extern
void g_scanner_input_text (GScanner *scanner,
       const gchar *text,
       guint text_len);
extern
GTokenType g_scanner_get_next_token (GScanner *scanner);
extern
GTokenType g_scanner_peek_next_token (GScanner *scanner);
extern
GTokenType g_scanner_cur_token (GScanner *scanner);
extern
GTokenValue g_scanner_cur_value (GScanner *scanner);
extern
guint g_scanner_cur_line (GScanner *scanner);
extern
guint g_scanner_cur_position (GScanner *scanner);
extern
gboolean g_scanner_eof (GScanner *scanner);
extern
guint g_scanner_set_scope (GScanner *scanner,
       guint scope_id);
extern
void g_scanner_scope_add_symbol (GScanner *scanner,
       guint scope_id,
       const gchar *symbol,
       gpointer value);
extern
void g_scanner_scope_remove_symbol (GScanner *scanner,
       guint scope_id,
       const gchar *symbol);
extern
gpointer g_scanner_scope_lookup_symbol (GScanner *scanner,
       guint scope_id,
       const gchar *symbol);
extern
void g_scanner_scope_foreach_symbol (GScanner *scanner,
       guint scope_id,
       GHFunc func,
       gpointer user_data);
extern
gpointer g_scanner_lookup_symbol (GScanner *scanner,
       const gchar *symbol);
extern
void g_scanner_unexp_token (GScanner *scanner,
       GTokenType expected_token,
       const gchar *identifier_spec,
       const gchar *symbol_spec,
       const gchar *symbol_name,
       const gchar *message,
       gint is_error);
extern
void g_scanner_error (GScanner *scanner,
       const gchar *format,
       ...) __attribute__((__format__ (__printf__, 2, 3)));
extern
void g_scanner_warn (GScanner *scanner,
       const gchar *format,
       ...) __attribute__((__format__ (__printf__, 2, 3)));
# 74 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gsequence.h" 1
# 30 "/usr/include/glib-2.0/glib/gsequence.h"
typedef struct _GSequence GSequence;
typedef struct _GSequenceNode GSequenceIter;

typedef gint (* GSequenceIterCompareFunc) (GSequenceIter *a,
                                           GSequenceIter *b,
                                           gpointer data);



extern
GSequence * g_sequence_new (GDestroyNotify data_destroy);
extern
void g_sequence_free (GSequence *seq);
extern
gint g_sequence_get_length (GSequence *seq);
extern
void g_sequence_foreach (GSequence *seq,
                                              GFunc func,
                                              gpointer user_data);
extern
void g_sequence_foreach_range (GSequenceIter *begin,
                                              GSequenceIter *end,
                                              GFunc func,
                                              gpointer user_data);
extern
void g_sequence_sort (GSequence *seq,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
void g_sequence_sort_iter (GSequence *seq,
                                              GSequenceIterCompareFunc cmp_func,
                                              gpointer cmp_data);



extern
GSequenceIter *g_sequence_get_begin_iter (GSequence *seq);
extern
GSequenceIter *g_sequence_get_end_iter (GSequence *seq);
extern
GSequenceIter *g_sequence_get_iter_at_pos (GSequence *seq,
                                              gint pos);
extern
GSequenceIter *g_sequence_append (GSequence *seq,
                                              gpointer data);
extern
GSequenceIter *g_sequence_prepend (GSequence *seq,
                                              gpointer data);
extern
GSequenceIter *g_sequence_insert_before (GSequenceIter *iter,
                                              gpointer data);
extern
void g_sequence_move (GSequenceIter *src,
                                              GSequenceIter *dest);
extern
void g_sequence_swap (GSequenceIter *a,
                                              GSequenceIter *b);
extern
GSequenceIter *g_sequence_insert_sorted (GSequence *seq,
                                              gpointer data,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
GSequenceIter *g_sequence_insert_sorted_iter (GSequence *seq,
                                              gpointer data,
                                              GSequenceIterCompareFunc iter_cmp,
                                              gpointer cmp_data);
extern
void g_sequence_sort_changed (GSequenceIter *iter,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
void g_sequence_sort_changed_iter (GSequenceIter *iter,
                                              GSequenceIterCompareFunc iter_cmp,
                                              gpointer cmp_data);
extern
void g_sequence_remove (GSequenceIter *iter);
extern
void g_sequence_remove_range (GSequenceIter *begin,
                                              GSequenceIter *end);
extern
void g_sequence_move_range (GSequenceIter *dest,
                                              GSequenceIter *begin,
                                              GSequenceIter *end);
extern
GSequenceIter *g_sequence_search (GSequence *seq,
                                              gpointer data,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
GSequenceIter *g_sequence_search_iter (GSequence *seq,
                                              gpointer data,
                                              GSequenceIterCompareFunc iter_cmp,
                                              gpointer cmp_data);
extern
GSequenceIter *g_sequence_lookup (GSequence *seq,
                                              gpointer data,
                                              GCompareDataFunc cmp_func,
                                              gpointer cmp_data);
extern
GSequenceIter *g_sequence_lookup_iter (GSequence *seq,
                                              gpointer data,
                                              GSequenceIterCompareFunc iter_cmp,
                                              gpointer cmp_data);



extern
gpointer g_sequence_get (GSequenceIter *iter);
extern
void g_sequence_set (GSequenceIter *iter,
                                              gpointer data);


extern
gboolean g_sequence_iter_is_begin (GSequenceIter *iter);
extern
gboolean g_sequence_iter_is_end (GSequenceIter *iter);
extern
GSequenceIter *g_sequence_iter_next (GSequenceIter *iter);
extern
GSequenceIter *g_sequence_iter_prev (GSequenceIter *iter);
extern
gint g_sequence_iter_get_position (GSequenceIter *iter);
extern
GSequenceIter *g_sequence_iter_move (GSequenceIter *iter,
                                              gint delta);
extern
GSequence * g_sequence_iter_get_sequence (GSequenceIter *iter);



extern
gint g_sequence_iter_compare (GSequenceIter *a,
                                              GSequenceIter *b);
extern
GSequenceIter *g_sequence_range_get_midpoint (GSequenceIter *begin,
                                              GSequenceIter *end);
# 75 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gshell.h" 1
# 34 "/usr/include/glib-2.0/glib/gshell.h"
typedef enum
{

  G_SHELL_ERROR_BAD_QUOTING,

  G_SHELL_ERROR_EMPTY_STRING,
  G_SHELL_ERROR_FAILED
} GShellError;

extern
GQuark g_shell_error_quark (void);

extern
gchar* g_shell_quote (const gchar *unquoted_string);
extern
gchar* g_shell_unquote (const gchar *quoted_string,
                             GError **error);
extern
gboolean g_shell_parse_argv (const gchar *command_line,
                             gint *argcp,
                             gchar ***argvp,
                             GError **error);
# 76 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gslice.h" 1
# 31 "/usr/include/glib-2.0/glib/gslice.h"
extern
gpointer g_slice_alloc (gsize block_size) __attribute__((__malloc__)) ;
extern
gpointer g_slice_alloc0 (gsize block_size) __attribute__((__malloc__)) ;
extern
gpointer g_slice_copy (gsize block_size,
                                         gconstpointer mem_block) __attribute__((__malloc__)) ;
extern
void g_slice_free1 (gsize block_size,
      gpointer mem_block);
extern
void g_slice_free_chain_with_offset (gsize block_size,
      gpointer mem_chain,
      gsize next_offset);
# 76 "/usr/include/glib-2.0/glib/gslice.h"
typedef enum {
  G_SLICE_CONFIG_ALWAYS_MALLOC = 1,
  G_SLICE_CONFIG_BYPASS_MAGAZINES,
  G_SLICE_CONFIG_WORKING_SET_MSECS,
  G_SLICE_CONFIG_COLOR_INCREMENT,
  G_SLICE_CONFIG_CHUNK_SIZES,
  G_SLICE_CONFIG_CONTENTION_COUNTER
} GSliceConfig;

__attribute__((__deprecated__)) extern
void g_slice_set_config (GSliceConfig ckey, gint64 value);
__attribute__((__deprecated__)) extern
gint64 g_slice_get_config (GSliceConfig ckey);
__attribute__((__deprecated__)) extern
gint64* g_slice_get_config_state (GSliceConfig ckey, gint64 address, guint *n_values);
# 77 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gspawn.h" 1
# 70 "/usr/include/glib-2.0/glib/gspawn.h"
typedef enum
{
  G_SPAWN_ERROR_FORK,
  G_SPAWN_ERROR_READ,
  G_SPAWN_ERROR_CHDIR,
  G_SPAWN_ERROR_ACCES,
  G_SPAWN_ERROR_PERM,
  G_SPAWN_ERROR_TOO_BIG,

  G_SPAWN_ERROR_2BIG = G_SPAWN_ERROR_TOO_BIG,

  G_SPAWN_ERROR_NOEXEC,
  G_SPAWN_ERROR_NAMETOOLONG,
  G_SPAWN_ERROR_NOENT,
  G_SPAWN_ERROR_NOMEM,
  G_SPAWN_ERROR_NOTDIR,
  G_SPAWN_ERROR_LOOP,
  G_SPAWN_ERROR_TXTBUSY,
  G_SPAWN_ERROR_IO,
  G_SPAWN_ERROR_NFILE,
  G_SPAWN_ERROR_MFILE,
  G_SPAWN_ERROR_INVAL,
  G_SPAWN_ERROR_ISDIR,
  G_SPAWN_ERROR_LIBBAD,
  G_SPAWN_ERROR_FAILED


} GSpawnError;
# 142 "/usr/include/glib-2.0/glib/gspawn.h"
typedef void (* GSpawnChildSetupFunc) (gpointer user_data);
# 172 "/usr/include/glib-2.0/glib/gspawn.h"
typedef enum
{
  G_SPAWN_DEFAULT = 0,
  G_SPAWN_LEAVE_DESCRIPTORS_OPEN = 1 << 0,
  G_SPAWN_DO_NOT_REAP_CHILD = 1 << 1,

  G_SPAWN_SEARCH_PATH = 1 << 2,

  G_SPAWN_STDOUT_TO_DEV_NULL = 1 << 3,
  G_SPAWN_STDERR_TO_DEV_NULL = 1 << 4,
  G_SPAWN_CHILD_INHERITS_STDIN = 1 << 5,
  G_SPAWN_FILE_AND_ARGV_ZERO = 1 << 6,
  G_SPAWN_SEARCH_PATH_FROM_ENVP = 1 << 7,
  G_SPAWN_CLOEXEC_PIPES = 1 << 8
} GSpawnFlags;

extern
GQuark g_spawn_error_quark (void);
extern
GQuark g_spawn_exit_error_quark (void);

extern
gboolean g_spawn_async (const gchar *working_directory,
                        gchar **argv,
                        gchar **envp,
                        GSpawnFlags flags,
                        GSpawnChildSetupFunc child_setup,
                        gpointer user_data,
                        GPid *child_pid,
                        GError **error);





extern
gboolean g_spawn_async_with_pipes (const gchar *working_directory,
                                   gchar **argv,
                                   gchar **envp,
                                   GSpawnFlags flags,
                                   GSpawnChildSetupFunc child_setup,
                                   gpointer user_data,
                                   GPid *child_pid,
                                   gint *standard_input,
                                   gint *standard_output,
                                   gint *standard_error,
                                   GError **error);






extern
gboolean g_spawn_sync (const gchar *working_directory,
                               gchar **argv,
                               gchar **envp,
                               GSpawnFlags flags,
                               GSpawnChildSetupFunc child_setup,
                               gpointer user_data,
                               gchar **standard_output,
                               gchar **standard_error,
                               gint *exit_status,
                               GError **error);

extern
gboolean g_spawn_command_line_sync (const gchar *command_line,
                                     gchar **standard_output,
                                     gchar **standard_error,
                                     gint *exit_status,
                                     GError **error);
extern
gboolean g_spawn_command_line_async (const gchar *command_line,
                                     GError **error);

extern
gboolean g_spawn_check_exit_status (gint exit_status,
        GError **error);

extern
void g_spawn_close_pid (GPid pid);
# 79 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gstrfuncs.h" 1
# 39 "/usr/include/glib-2.0/glib/gstrfuncs.h"
typedef enum {
  G_ASCII_ALNUM = 1 << 0,
  G_ASCII_ALPHA = 1 << 1,
  G_ASCII_CNTRL = 1 << 2,
  G_ASCII_DIGIT = 1 << 3,
  G_ASCII_GRAPH = 1 << 4,
  G_ASCII_LOWER = 1 << 5,
  G_ASCII_PRINT = 1 << 6,
  G_ASCII_PUNCT = 1 << 7,
  G_ASCII_SPACE = 1 << 8,
  G_ASCII_UPPER = 1 << 9,
  G_ASCII_XDIGIT = 1 << 10
} GAsciiType;

extern const guint16 * const g_ascii_table;
# 88 "/usr/include/glib-2.0/glib/gstrfuncs.h"
extern
gchar g_ascii_tolower (gchar c) __attribute__((__const__));
extern
gchar g_ascii_toupper (gchar c) __attribute__((__const__));

extern
gint g_ascii_digit_value (gchar c) __attribute__((__const__));
extern
gint g_ascii_xdigit_value (gchar c) __attribute__((__const__));





extern
gchar* g_strdelimit (gchar *string,
     const gchar *delimiters,
     gchar new_delimiter);
extern
gchar* g_strcanon (gchar *string,
     const gchar *valid_chars,
     gchar substitutor);
extern
const gchar * g_strerror (gint errnum) __attribute__((__const__));
extern
const gchar * g_strsignal (gint signum) __attribute__((__const__));
extern
gchar * g_strreverse (gchar *string);
extern
gsize g_strlcpy (gchar *dest,
     const gchar *src,
     gsize dest_size);
extern
gsize g_strlcat (gchar *dest,
     const gchar *src,
     gsize dest_size);
extern
gchar * g_strstr_len (const gchar *haystack,
     gssize haystack_len,
     const gchar *needle);
extern
gchar * g_strrstr (const gchar *haystack,
     const gchar *needle);
extern
gchar * g_strrstr_len (const gchar *haystack,
     gssize haystack_len,
     const gchar *needle);

extern
gboolean g_str_has_suffix (const gchar *str,
     const gchar *suffix);
extern
gboolean g_str_has_prefix (const gchar *str,
     const gchar *prefix);



extern
gdouble g_strtod (const gchar *nptr,
     gchar **endptr);
extern
gdouble g_ascii_strtod (const gchar *nptr,
     gchar **endptr);
extern
guint64 g_ascii_strtoull (const gchar *nptr,
     gchar **endptr,
     guint base);
extern
gint64 g_ascii_strtoll (const gchar *nptr,
     gchar **endptr,
     guint base);




extern
gchar * g_ascii_dtostr (gchar *buffer,
     gint buf_len,
     gdouble d);
extern
gchar * g_ascii_formatd (gchar *buffer,
     gint buf_len,
     const gchar *format,
     gdouble d);


extern
gchar* g_strchug (gchar *string);

extern
gchar* g_strchomp (gchar *string);



extern
gint g_ascii_strcasecmp (const gchar *s1,
        const gchar *s2);
extern
gint g_ascii_strncasecmp (const gchar *s1,
        const gchar *s2,
        gsize n);
extern
gchar* g_ascii_strdown (const gchar *str,
        gssize len) __attribute__((__malloc__));
extern
gchar* g_ascii_strup (const gchar *str,
        gssize len) __attribute__((__malloc__));

extern
gboolean g_str_is_ascii (const gchar *str);

__attribute__((__deprecated__)) extern
gint g_strcasecmp (const gchar *s1,
                                        const gchar *s2);
__attribute__((__deprecated__)) extern
gint g_strncasecmp (const gchar *s1,
                                        const gchar *s2,
                                        guint n);
__attribute__((__deprecated__)) extern
gchar* g_strdown (gchar *string);
__attribute__((__deprecated__)) extern
gchar* g_strup (gchar *string);





extern
gchar* g_strdup (const gchar *str) __attribute__((__malloc__));
extern
gchar* g_strdup_printf (const gchar *format,
     ...) __attribute__((__format__ (__printf__, 1, 2))) __attribute__((__malloc__));
extern
gchar* g_strdup_vprintf (const gchar *format,
     va_list args) __attribute__((__format__ (__printf__, 1, 0))) __attribute__((__malloc__));
extern
gchar* g_strndup (const gchar *str,
     gsize n) __attribute__((__malloc__));
extern
gchar* g_strnfill (gsize length,
     gchar fill_char) __attribute__((__malloc__));
extern
gchar* g_strconcat (const gchar *string1,
     ...) __attribute__((__malloc__)) __attribute__((__sentinel__));
extern
gchar* g_strjoin (const gchar *separator,
     ...) __attribute__((__malloc__)) __attribute__((__sentinel__));





extern
gchar* g_strcompress (const gchar *source) __attribute__((__malloc__));
# 251 "/usr/include/glib-2.0/glib/gstrfuncs.h"
extern
gchar* g_strescape (const gchar *source,
     const gchar *exceptions) __attribute__((__malloc__));

extern
gpointer g_memdup (gconstpointer mem,
     guint byte_size) __attribute__((__malloc__)) ;
# 268 "/usr/include/glib-2.0/glib/gstrfuncs.h"
extern
gchar** g_strsplit (const gchar *string,
     const gchar *delimiter,
     gint max_tokens) __attribute__((__malloc__));
extern
gchar ** g_strsplit_set (const gchar *string,
     const gchar *delimiters,
     gint max_tokens) __attribute__((__malloc__));
extern
gchar* g_strjoinv (const gchar *separator,
     gchar **str_array) __attribute__((__malloc__));
extern
void g_strfreev (gchar **str_array);
extern
gchar** g_strdupv (gchar **str_array) __attribute__((__malloc__));
extern
guint g_strv_length (gchar **str_array);

extern
gchar* g_stpcpy (gchar *dest,
                                        const char *src);

extern
gchar * g_str_to_ascii (const gchar *str,
                                                                         const gchar *from_locale);

extern
gchar ** g_str_tokenize_and_fold (const gchar *string,
                                                                         const gchar *translit_locale,
                                                                         gchar ***ascii_alternates);

extern
gboolean g_str_match_string (const gchar *search_term,
                                                                         const gchar *potential_hit,
                                                                         gboolean accept_alternates);
# 80 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gstringchunk.h" 1
# 36 "/usr/include/glib-2.0/glib/gstringchunk.h"
typedef struct _GStringChunk GStringChunk;

extern
GStringChunk* g_string_chunk_new (gsize size);
extern
void g_string_chunk_free (GStringChunk *chunk);
extern
void g_string_chunk_clear (GStringChunk *chunk);
extern
gchar* g_string_chunk_insert (GStringChunk *chunk,
                                           const gchar *string);
extern
gchar* g_string_chunk_insert_len (GStringChunk *chunk,
                                           const gchar *string,
                                           gssize len);
extern
gchar* g_string_chunk_insert_const (GStringChunk *chunk,
                                           const gchar *string);
# 82 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gtestutils.h" 1
# 33 "/usr/include/glib-2.0/glib/gtestutils.h"
typedef struct GTestCase GTestCase;
typedef struct GTestSuite GTestSuite;
typedef void (*GTestFunc) (void);
typedef void (*GTestDataFunc) (gconstpointer user_data);
typedef void (*GTestFixtureFunc) (gpointer fixture,
                                  gconstpointer user_data);
# 112 "/usr/include/glib-2.0/glib/gtestutils.h"
extern
int g_strcmp0 (const char *str1,
                                         const char *str2);


extern
void g_test_minimized_result (double minimized_quantity,
                                         const char *format,
                                         ...) __attribute__((__format__ (__printf__, 2, 3)));
extern
void g_test_maximized_result (double maximized_quantity,
                                         const char *format,
                                         ...) __attribute__((__format__ (__printf__, 2, 3)));


extern
void g_test_init (int *argc,
                                         char ***argv,
                                         ...) __attribute__((__sentinel__));
# 140 "/usr/include/glib-2.0/glib/gtestutils.h"
extern
gboolean g_test_subprocess (void);


extern
int g_test_run (void);

extern
void g_test_add_func (const char *testpath,
                                         GTestFunc test_func);

extern
void g_test_add_data_func (const char *testpath,
                                         gconstpointer test_data,
                                         GTestDataFunc test_func);

extern
void g_test_add_data_func_full (const char *testpath,
                                         gpointer test_data,
                                         GTestDataFunc test_func,
                                         GDestroyNotify data_free_func);


extern
void g_test_fail (void);
extern
void g_test_incomplete (const gchar *msg);
extern
void g_test_skip (const gchar *msg);
extern
gboolean g_test_failed (void);
extern
void g_test_set_nonfatal_assertions (void);
# 188 "/usr/include/glib-2.0/glib/gtestutils.h"
extern
void g_test_message (const char *format,
                                         ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
void g_test_bug_base (const char *uri_pattern);
extern
void g_test_bug (const char *bug_uri_snippet);

extern
void g_test_timer_start (void);
extern
double g_test_timer_elapsed (void);
extern
double g_test_timer_last (void);


extern
void g_test_queue_free (gpointer gfree_pointer);
extern
void g_test_queue_destroy (GDestroyNotify destroy_func,
                                         gpointer destroy_data);


typedef enum {
  G_TEST_TRAP_SILENCE_STDOUT = 1 << 7,
  G_TEST_TRAP_SILENCE_STDERR = 1 << 8,
  G_TEST_TRAP_INHERIT_STDIN = 1 << 9
} GTestTrapFlags;

__attribute__((__deprecated__)) extern
gboolean g_test_trap_fork (guint64 usec_timeout,
                                         GTestTrapFlags test_trap_flags);

typedef enum {
  G_TEST_SUBPROCESS_INHERIT_STDIN = 1 << 0,
  G_TEST_SUBPROCESS_INHERIT_STDOUT = 1 << 1,
  G_TEST_SUBPROCESS_INHERIT_STDERR = 1 << 2
} GTestSubprocessFlags;

extern
void g_test_trap_subprocess (const char *test_path,
                                         guint64 usec_timeout,
                                         GTestSubprocessFlags test_flags);

extern
gboolean g_test_trap_has_passed (void);
extern
gboolean g_test_trap_reached_timeout (void);
# 245 "/usr/include/glib-2.0/glib/gtestutils.h"
extern
gint32 g_test_rand_int (void);
extern
gint32 g_test_rand_int_range (gint32 begin,
                                         gint32 end);
extern
double g_test_rand_double (void);
extern
double g_test_rand_double_range (double range_start,
                                         double range_end);


extern
GTestCase* g_test_create_case (const char *test_name,
                                         gsize data_size,
                                         gconstpointer test_data,
                                         GTestFixtureFunc data_setup,
                                         GTestFixtureFunc data_test,
                                         GTestFixtureFunc data_teardown);
extern
GTestSuite* g_test_create_suite (const char *suite_name);
extern
GTestSuite* g_test_get_root (void);
extern
void g_test_suite_add (GTestSuite *suite,
                                         GTestCase *test_case);
extern
void g_test_suite_add_suite (GTestSuite *suite,
                                         GTestSuite *nestedsuite);
extern
int g_test_run_suite (GTestSuite *suite);


extern
void g_test_trap_assertions (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         guint64 assertion_flags,
                                         const char *pattern);
extern
void g_assertion_message (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *message);
extern
void g_assertion_message_expr (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *expr) __attribute__((__noreturn__));
extern
void g_assertion_message_cmpstr (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *expr,
                                         const char *arg1,
                                         const char *cmp,
                                         const char *arg2);
extern
void g_assertion_message_cmpnum (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *expr,
                                         long double arg1,
                                         const char *cmp,
                                         long double arg2,
                                         char numtype);
extern
void g_assertion_message_error (const char *domain,
                                         const char *file,
                                         int line,
                                         const char *func,
                                         const char *expr,
                                         const GError *error,
                                         GQuark error_domain,
                                         int error_code);
extern
void g_test_add_vtable (const char *testpath,
                                         gsize data_size,
                                         gconstpointer test_data,
                                         GTestFixtureFunc data_setup,
                                         GTestFixtureFunc data_test,
                                         GTestFixtureFunc data_teardown);
typedef struct {
  gboolean test_initialized;
  gboolean test_quick;
  gboolean test_perf;
  gboolean test_verbose;
  gboolean test_quiet;
  gboolean test_undefined;
} GTestConfig;
extern const GTestConfig * const g_test_config_vars;


typedef enum {
  G_TEST_LOG_NONE,
  G_TEST_LOG_ERROR,
  G_TEST_LOG_START_BINARY,
  G_TEST_LOG_LIST_CASE,
  G_TEST_LOG_SKIP_CASE,
  G_TEST_LOG_START_CASE,
  G_TEST_LOG_STOP_CASE,
  G_TEST_LOG_MIN_RESULT,
  G_TEST_LOG_MAX_RESULT,
  G_TEST_LOG_MESSAGE,
  G_TEST_LOG_START_SUITE,
  G_TEST_LOG_STOP_SUITE
} GTestLogType;

typedef struct {
  GTestLogType log_type;
  guint n_strings;
  gchar **strings;
  guint n_nums;
  long double *nums;
} GTestLogMsg;
typedef struct {

  GString *data;
  GSList *msgs;
} GTestLogBuffer;

extern
const char* g_test_log_type_name (GTestLogType log_type);
extern
GTestLogBuffer* g_test_log_buffer_new (void);
extern
void g_test_log_buffer_free (GTestLogBuffer *tbuffer);
extern
void g_test_log_buffer_push (GTestLogBuffer *tbuffer,
                                         guint n_bytes,
                                         const guint8 *bytes);
extern
GTestLogMsg* g_test_log_buffer_pop (GTestLogBuffer *tbuffer);
extern
void g_test_log_msg_free (GTestLogMsg *tmsg);
# 399 "/usr/include/glib-2.0/glib/gtestutils.h"
typedef gboolean (*GTestLogFatalFunc) (const gchar *log_domain,
                                                 GLogLevelFlags log_level,
                                                 const gchar *message,
                                                 gpointer user_data);
extern
void
g_test_log_set_fatal_handler (GTestLogFatalFunc log_func,
                                         gpointer user_data);

extern
void g_test_expect_message (const gchar *log_domain,
                                                  GLogLevelFlags log_level,
                                                  const gchar *pattern);
extern
void g_test_assert_expected_messages_internal (const char *domain,
                                                  const char *file,
                                                  int line,
                                                  const char *func);

typedef enum
{
  G_TEST_DIST,
  G_TEST_BUILT
} GTestFileType;

extern
gchar * g_test_build_filename (GTestFileType file_type,
                                                  const gchar *first_path,
                                                  ...) __attribute__((__sentinel__));
extern
const gchar *g_test_get_dir (GTestFileType file_type);
extern
const gchar *g_test_get_filename (GTestFileType file_type,
                                                  const gchar *first_path,
                                                  ...) __attribute__((__sentinel__));
# 83 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gthreadpool.h" 1
# 36 "/usr/include/glib-2.0/glib/gthreadpool.h"
typedef struct _GThreadPool GThreadPool;




struct _GThreadPool
{
  GFunc func;
  gpointer user_data;
  gboolean exclusive;
};

extern
GThreadPool * g_thread_pool_new (GFunc func,
                                                 gpointer user_data,
                                                 gint max_threads,
                                                 gboolean exclusive,
                                                 GError **error);
extern
void g_thread_pool_free (GThreadPool *pool,
                                                 gboolean immediate,
                                                 gboolean wait_);
extern
gboolean g_thread_pool_push (GThreadPool *pool,
                                                 gpointer data,
                                                 GError **error);
extern
guint g_thread_pool_unprocessed (GThreadPool *pool);
extern
void g_thread_pool_set_sort_function (GThreadPool *pool,
                                                 GCompareDataFunc func,
                                                 gpointer user_data);
extern
gboolean g_thread_pool_set_max_threads (GThreadPool *pool,
                                                 gint max_threads,
                                                 GError **error);
extern
gint g_thread_pool_get_max_threads (GThreadPool *pool);
extern
guint g_thread_pool_get_num_threads (GThreadPool *pool);

extern
void g_thread_pool_set_max_unused_threads (gint max_threads);
extern
gint g_thread_pool_get_max_unused_threads (void);
extern
guint g_thread_pool_get_num_unused_threads (void);
extern
void g_thread_pool_stop_unused_threads (void);
extern
void g_thread_pool_set_max_idle_time (guint interval);
extern
guint g_thread_pool_get_max_idle_time (void);
# 85 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gtimer.h" 1
# 40 "/usr/include/glib-2.0/glib/gtimer.h"
typedef struct _GTimer GTimer;



extern
GTimer* g_timer_new (void);
extern
void g_timer_destroy (GTimer *timer);
extern
void g_timer_start (GTimer *timer);
extern
void g_timer_stop (GTimer *timer);
extern
void g_timer_reset (GTimer *timer);
extern
void g_timer_continue (GTimer *timer);
extern
gdouble g_timer_elapsed (GTimer *timer,
      gulong *microseconds);

extern
void g_usleep (gulong microseconds);

extern
void g_time_val_add (GTimeVal *time_,
                                  glong microseconds);
extern
gboolean g_time_val_from_iso8601 (const gchar *iso_date,
      GTimeVal *time_);
extern
gchar* g_time_val_to_iso8601 (GTimeVal *time_) __attribute__((__malloc__));
# 86 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gtrashstack.h" 1
# 36 "/usr/include/glib-2.0/glib/gtrashstack.h"
typedef struct _GTrashStack GTrashStack;
struct _GTrashStack
{
  GTrashStack *next;
};

static __inline __attribute__ ((unused)) void g_trash_stack_push (GTrashStack **stack_p,
                                              gpointer data_p);
static __inline __attribute__ ((unused)) gpointer g_trash_stack_pop (GTrashStack **stack_p);
static __inline __attribute__ ((unused)) gpointer g_trash_stack_peek (GTrashStack **stack_p);
static __inline __attribute__ ((unused)) guint g_trash_stack_height (GTrashStack **stack_p);



static __inline __attribute__ ((unused)) void
g_trash_stack_push (GTrashStack **stack_p,
                    gpointer data_p)
{
  GTrashStack *data = (GTrashStack *) data_p;

  data->next = *stack_p;
  *stack_p = data;
}
static __inline __attribute__ ((unused)) gpointer
g_trash_stack_pop (GTrashStack **stack_p)
{
  GTrashStack *data;

  data = *stack_p;
  if (data)
    {
      *stack_p = data->next;



      data->next = ((void*)0);
    }

  return data;
}
static __inline __attribute__ ((unused)) gpointer
g_trash_stack_peek (GTrashStack **stack_p)
{
  GTrashStack *data;

  data = *stack_p;

  return data;
}
static __inline __attribute__ ((unused)) guint
g_trash_stack_height (GTrashStack **stack_p)
{
  GTrashStack *data;
  guint i = 0;

  for (data = *stack_p; data; data = data->next)
    i++;

  return i;
}
# 88 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gtree.h" 1
# 36 "/usr/include/glib-2.0/glib/gtree.h"
typedef struct _GTree GTree;

typedef gboolean (*GTraverseFunc) (gpointer key,
                                   gpointer value,
                                   gpointer data);



extern
GTree* g_tree_new (GCompareFunc key_compare_func);
extern
GTree* g_tree_new_with_data (GCompareDataFunc key_compare_func,
                                 gpointer key_compare_data);
extern
GTree* g_tree_new_full (GCompareDataFunc key_compare_func,
                                 gpointer key_compare_data,
                                 GDestroyNotify key_destroy_func,
                                 GDestroyNotify value_destroy_func);
extern
GTree* g_tree_ref (GTree *tree);
extern
void g_tree_unref (GTree *tree);
extern
void g_tree_destroy (GTree *tree);
extern
void g_tree_insert (GTree *tree,
                                 gpointer key,
                                 gpointer value);
extern
void g_tree_replace (GTree *tree,
                                 gpointer key,
                                 gpointer value);
extern
gboolean g_tree_remove (GTree *tree,
                                 gconstpointer key);
extern
gboolean g_tree_steal (GTree *tree,
                                 gconstpointer key);
extern
gpointer g_tree_lookup (GTree *tree,
                                 gconstpointer key);
extern
gboolean g_tree_lookup_extended (GTree *tree,
                                 gconstpointer lookup_key,
                                 gpointer *orig_key,
                                 gpointer *value);
extern
void g_tree_foreach (GTree *tree,
                                 GTraverseFunc func,
                                 gpointer user_data);

__attribute__((__deprecated__)) extern
void g_tree_traverse (GTree *tree,
                                 GTraverseFunc traverse_func,
                                 GTraverseType traverse_type,
                                 gpointer user_data);

extern
gpointer g_tree_search (GTree *tree,
                                 GCompareFunc search_func,
                                 gconstpointer user_data);
extern
gint g_tree_height (GTree *tree);
extern
gint g_tree_nnodes (GTree *tree);
# 89 "/usr/include/glib-2.0/glib.h" 2


# 1 "/usr/include/glib-2.0/glib/gurifuncs.h" 1
# 67 "/usr/include/glib-2.0/glib/gurifuncs.h"
extern
char * g_uri_unescape_string (const char *escaped_string,
          const char *illegal_characters);
extern
char * g_uri_unescape_segment (const char *escaped_string,
          const char *escaped_string_end,
          const char *illegal_characters);
extern
char * g_uri_parse_scheme (const char *uri);
extern
char * g_uri_escape_string (const char *unescaped,
          const char *reserved_chars_allowed,
          gboolean allow_utf8);
# 92 "/usr/include/glib-2.0/glib.h" 2

# 1 "/usr/include/glib-2.0/glib/gvarianttype.h" 1
# 42 "/usr/include/glib-2.0/glib/gvarianttype.h"
typedef struct _GVariantType GVariantType;
# 295 "/usr/include/glib-2.0/glib/gvarianttype.h"
extern
gboolean g_variant_type_string_is_valid (const gchar *type_string);
extern
gboolean g_variant_type_string_scan (const gchar *string,
                                                                         const gchar *limit,
                                                                         const gchar **endptr);


extern
void g_variant_type_free (GVariantType *type);
extern
GVariantType * g_variant_type_copy (const GVariantType *type);
extern
GVariantType * g_variant_type_new (const gchar *type_string);


extern
gsize g_variant_type_get_string_length (const GVariantType *type);
extern
const gchar * g_variant_type_peek_string (const GVariantType *type);
extern
gchar * g_variant_type_dup_string (const GVariantType *type);


extern
gboolean g_variant_type_is_definite (const GVariantType *type);
extern
gboolean g_variant_type_is_container (const GVariantType *type);
extern
gboolean g_variant_type_is_basic (const GVariantType *type);
extern
gboolean g_variant_type_is_maybe (const GVariantType *type);
extern
gboolean g_variant_type_is_array (const GVariantType *type);
extern
gboolean g_variant_type_is_tuple (const GVariantType *type);
extern
gboolean g_variant_type_is_dict_entry (const GVariantType *type);
extern
gboolean g_variant_type_is_variant (const GVariantType *type);


extern
guint g_variant_type_hash (gconstpointer type);
extern
gboolean g_variant_type_equal (gconstpointer type1,
                                                                         gconstpointer type2);


extern
gboolean g_variant_type_is_subtype_of (const GVariantType *type,
                                                                         const GVariantType *supertype);


extern
const GVariantType * g_variant_type_element (const GVariantType *type);
extern
const GVariantType * g_variant_type_first (const GVariantType *type);
extern
const GVariantType * g_variant_type_next (const GVariantType *type);
extern
gsize g_variant_type_n_items (const GVariantType *type);
extern
const GVariantType * g_variant_type_key (const GVariantType *type);
extern
const GVariantType * g_variant_type_value (const GVariantType *type);


extern
GVariantType * g_variant_type_new_array (const GVariantType *element);
extern
GVariantType * g_variant_type_new_maybe (const GVariantType *element);
extern
GVariantType * g_variant_type_new_tuple (const GVariantType * const *items,
                                                                         gint length);
extern
GVariantType * g_variant_type_new_dict_entry (const GVariantType *key,
                                                                         const GVariantType *value);


extern
const GVariantType * g_variant_type_checked_ (const gchar *);
# 94 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gvariant.h" 1
# 34 "/usr/include/glib-2.0/glib/gvariant.h"
typedef struct _GVariant GVariant;

typedef enum
{
  G_VARIANT_CLASS_BOOLEAN = 'b',
  G_VARIANT_CLASS_BYTE = 'y',
  G_VARIANT_CLASS_INT16 = 'n',
  G_VARIANT_CLASS_UINT16 = 'q',
  G_VARIANT_CLASS_INT32 = 'i',
  G_VARIANT_CLASS_UINT32 = 'u',
  G_VARIANT_CLASS_INT64 = 'x',
  G_VARIANT_CLASS_UINT64 = 't',
  G_VARIANT_CLASS_HANDLE = 'h',
  G_VARIANT_CLASS_DOUBLE = 'd',
  G_VARIANT_CLASS_STRING = 's',
  G_VARIANT_CLASS_OBJECT_PATH = 'o',
  G_VARIANT_CLASS_SIGNATURE = 'g',
  G_VARIANT_CLASS_VARIANT = 'v',
  G_VARIANT_CLASS_MAYBE = 'm',
  G_VARIANT_CLASS_ARRAY = 'a',
  G_VARIANT_CLASS_TUPLE = '(',
  G_VARIANT_CLASS_DICT_ENTRY = '{'
} GVariantClass;

extern
void g_variant_unref (GVariant *value);
extern
GVariant * g_variant_ref (GVariant *value);
extern
GVariant * g_variant_ref_sink (GVariant *value);
extern
gboolean g_variant_is_floating (GVariant *value);
extern
GVariant * g_variant_take_ref (GVariant *value);

extern
const GVariantType * g_variant_get_type (GVariant *value);
extern
const gchar * g_variant_get_type_string (GVariant *value);
extern
gboolean g_variant_is_of_type (GVariant *value,
                                                                         const GVariantType *type);
extern
gboolean g_variant_is_container (GVariant *value);
extern
GVariantClass g_variant_classify (GVariant *value);
extern
GVariant * g_variant_new_boolean (gboolean value);
extern
GVariant * g_variant_new_byte (guchar value);
extern
GVariant * g_variant_new_int16 (gint16 value);
extern
GVariant * g_variant_new_uint16 (guint16 value);
extern
GVariant * g_variant_new_int32 (gint32 value);
extern
GVariant * g_variant_new_uint32 (guint32 value);
extern
GVariant * g_variant_new_int64 (gint64 value);
extern
GVariant * g_variant_new_uint64 (guint64 value);
extern
GVariant * g_variant_new_handle (gint32 value);
extern
GVariant * g_variant_new_double (gdouble value);
extern
GVariant * g_variant_new_string (const gchar *string);
extern
GVariant * g_variant_new_take_string (gchar *string);
extern
GVariant * g_variant_new_printf (const gchar *format_string,
                                                                         ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
GVariant * g_variant_new_object_path (const gchar *object_path);
extern
gboolean g_variant_is_object_path (const gchar *string);
extern
GVariant * g_variant_new_signature (const gchar *signature);
extern
gboolean g_variant_is_signature (const gchar *string);
extern
GVariant * g_variant_new_variant (GVariant *value);
extern
GVariant * g_variant_new_strv (const gchar * const *strv,
                                                                         gssize length);
extern
GVariant * g_variant_new_objv (const gchar * const *strv,
                                                                         gssize length);
extern
GVariant * g_variant_new_bytestring (const gchar *string);
extern
GVariant * g_variant_new_bytestring_array (const gchar * const *strv,
                                                                         gssize length);
extern
GVariant * g_variant_new_fixed_array (const GVariantType *element_type,
                                                                         gconstpointer elements,
                                                                         gsize n_elements,
                                                                         gsize element_size);
extern
gboolean g_variant_get_boolean (GVariant *value);
extern
guchar g_variant_get_byte (GVariant *value);
extern
gint16 g_variant_get_int16 (GVariant *value);
extern
guint16 g_variant_get_uint16 (GVariant *value);
extern
gint32 g_variant_get_int32 (GVariant *value);
extern
guint32 g_variant_get_uint32 (GVariant *value);
extern
gint64 g_variant_get_int64 (GVariant *value);
extern
guint64 g_variant_get_uint64 (GVariant *value);
extern
gint32 g_variant_get_handle (GVariant *value);
extern
gdouble g_variant_get_double (GVariant *value);
extern
GVariant * g_variant_get_variant (GVariant *value);
extern
const gchar * g_variant_get_string (GVariant *value,
                                                                         gsize *length);
extern
gchar * g_variant_dup_string (GVariant *value,
                                                                         gsize *length);
extern
const gchar ** g_variant_get_strv (GVariant *value,
                                                                         gsize *length);
extern
gchar ** g_variant_dup_strv (GVariant *value,
                                                                         gsize *length);
extern
const gchar ** g_variant_get_objv (GVariant *value,
                                                                         gsize *length);
extern
gchar ** g_variant_dup_objv (GVariant *value,
                                                                         gsize *length);
extern
const gchar * g_variant_get_bytestring (GVariant *value);
extern
gchar * g_variant_dup_bytestring (GVariant *value,
                                                                         gsize *length);
extern
const gchar ** g_variant_get_bytestring_array (GVariant *value,
                                                                         gsize *length);
extern
gchar ** g_variant_dup_bytestring_array (GVariant *value,
                                                                         gsize *length);

extern
GVariant * g_variant_new_maybe (const GVariantType *child_type,
                                                                         GVariant *child);
extern
GVariant * g_variant_new_array (const GVariantType *child_type,
                                                                         GVariant * const *children,
                                                                         gsize n_children);
extern
GVariant * g_variant_new_tuple (GVariant * const *children,
                                                                         gsize n_children);
extern
GVariant * g_variant_new_dict_entry (GVariant *key,
                                                                         GVariant *value);

extern
GVariant * g_variant_get_maybe (GVariant *value);
extern
gsize g_variant_n_children (GVariant *value);
extern
void g_variant_get_child (GVariant *value,
                                                                         gsize index_,
                                                                         const gchar *format_string,
                                                                         ...);
extern
GVariant * g_variant_get_child_value (GVariant *value,
                                                                         gsize index_);
extern
gboolean g_variant_lookup (GVariant *dictionary,
                                                                         const gchar *key,
                                                                         const gchar *format_string,
                                                                         ...);
extern
GVariant * g_variant_lookup_value (GVariant *dictionary,
                                                                         const gchar *key,
                                                                         const GVariantType *expected_type);
extern
gconstpointer g_variant_get_fixed_array (GVariant *value,
                                                                         gsize *n_elements,
                                                                         gsize element_size);

extern
gsize g_variant_get_size (GVariant *value);
extern
gconstpointer g_variant_get_data (GVariant *value);
extern
GBytes * g_variant_get_data_as_bytes (GVariant *value);
extern
void g_variant_store (GVariant *value,
                                                                         gpointer data);

extern
gchar * g_variant_print (GVariant *value,
                                                                         gboolean type_annotate);
extern
GString * g_variant_print_string (GVariant *value,
                                                                         GString *string,
                                                                         gboolean type_annotate);

extern
guint g_variant_hash (gconstpointer value);
extern
gboolean g_variant_equal (gconstpointer one,
                                                                         gconstpointer two);

extern
GVariant * g_variant_get_normal_form (GVariant *value);
extern
gboolean g_variant_is_normal_form (GVariant *value);
extern
GVariant * g_variant_byteswap (GVariant *value);

extern
GVariant * g_variant_new_from_bytes (const GVariantType *type,
                                                                         GBytes *bytes,
                                                                         gboolean trusted);
extern
GVariant * g_variant_new_from_data (const GVariantType *type,
                                                                         gconstpointer data,
                                                                         gsize size,
                                                                         gboolean trusted,
                                                                         GDestroyNotify notify,
                                                                         gpointer user_data);

typedef struct _GVariantIter GVariantIter;
struct _GVariantIter {

  gsize x[16];
};

extern
GVariantIter * g_variant_iter_new (GVariant *value);
extern
gsize g_variant_iter_init (GVariantIter *iter,
                                                                         GVariant *value);
extern
GVariantIter * g_variant_iter_copy (GVariantIter *iter);
extern
gsize g_variant_iter_n_children (GVariantIter *iter);
extern
void g_variant_iter_free (GVariantIter *iter);
extern
GVariant * g_variant_iter_next_value (GVariantIter *iter);
extern
gboolean g_variant_iter_next (GVariantIter *iter,
                                                                         const gchar *format_string,
                                                                         ...);
extern
gboolean g_variant_iter_loop (GVariantIter *iter,
                                                                         const gchar *format_string,
                                                                         ...);


typedef struct _GVariantBuilder GVariantBuilder;
struct _GVariantBuilder {

  gsize x[16];
};

typedef enum
{
  G_VARIANT_PARSE_ERROR_FAILED,
  G_VARIANT_PARSE_ERROR_BASIC_TYPE_EXPECTED,
  G_VARIANT_PARSE_ERROR_CANNOT_INFER_TYPE,
  G_VARIANT_PARSE_ERROR_DEFINITE_TYPE_EXPECTED,
  G_VARIANT_PARSE_ERROR_INPUT_NOT_AT_END,
  G_VARIANT_PARSE_ERROR_INVALID_CHARACTER,
  G_VARIANT_PARSE_ERROR_INVALID_FORMAT_STRING,
  G_VARIANT_PARSE_ERROR_INVALID_OBJECT_PATH,
  G_VARIANT_PARSE_ERROR_INVALID_SIGNATURE,
  G_VARIANT_PARSE_ERROR_INVALID_TYPE_STRING,
  G_VARIANT_PARSE_ERROR_NO_COMMON_TYPE,
  G_VARIANT_PARSE_ERROR_NUMBER_OUT_OF_RANGE,
  G_VARIANT_PARSE_ERROR_NUMBER_TOO_BIG,
  G_VARIANT_PARSE_ERROR_TYPE_ERROR,
  G_VARIANT_PARSE_ERROR_UNEXPECTED_TOKEN,
  G_VARIANT_PARSE_ERROR_UNKNOWN_KEYWORD,
  G_VARIANT_PARSE_ERROR_UNTERMINATED_STRING_CONSTANT,
  G_VARIANT_PARSE_ERROR_VALUE_EXPECTED
} GVariantParseError;


__attribute__((__deprecated__)) extern
GQuark g_variant_parser_get_error_quark (void);

extern
GQuark g_variant_parse_error_quark (void);

extern
GVariantBuilder * g_variant_builder_new (const GVariantType *type);
extern
void g_variant_builder_unref (GVariantBuilder *builder);
extern
GVariantBuilder * g_variant_builder_ref (GVariantBuilder *builder);
extern
void g_variant_builder_init (GVariantBuilder *builder,
                                                                         const GVariantType *type);
extern
GVariant * g_variant_builder_end (GVariantBuilder *builder);
extern
void g_variant_builder_clear (GVariantBuilder *builder);
extern
void g_variant_builder_open (GVariantBuilder *builder,
                                                                         const GVariantType *type);
extern
void g_variant_builder_close (GVariantBuilder *builder);
extern
void g_variant_builder_add_value (GVariantBuilder *builder,
                                                                         GVariant *value);
extern
void g_variant_builder_add (GVariantBuilder *builder,
                                                                         const gchar *format_string,
                                                                         ...);
extern
void g_variant_builder_add_parsed (GVariantBuilder *builder,
                                                                         const gchar *format,
                                                                         ...);

extern
GVariant * g_variant_new (const gchar *format_string,
                                                                         ...);
extern
void g_variant_get (GVariant *value,
                                                                         const gchar *format_string,
                                                                         ...);
extern
GVariant * g_variant_new_va (const gchar *format_string,
                                                                         const gchar **endptr,
                                                                         va_list *app);
extern
void g_variant_get_va (GVariant *value,
                                                                         const gchar *format_string,
                                                                         const gchar **endptr,
                                                                         va_list *app);
extern
gboolean g_variant_check_format_string (GVariant *value,
                                                                         const gchar *format_string,
                                                                         gboolean copy_only);

extern
GVariant * g_variant_parse (const GVariantType *type,
                                                                         const gchar *text,
                                                                         const gchar *limit,
                                                                         const gchar **endptr,
                                                                         GError **error);
extern
GVariant * g_variant_new_parsed (const gchar *format,
                                                                         ...);
extern
GVariant * g_variant_new_parsed_va (const gchar *format,
                                                                         va_list *app);

extern
gchar * g_variant_parse_error_print_context (GError *error,
                                                                         const gchar *source_str);

extern
gint g_variant_compare (gconstpointer one,
                                                                         gconstpointer two);

typedef struct _GVariantDict GVariantDict;
struct _GVariantDict {

  gsize x[16];
};

extern
GVariantDict * g_variant_dict_new (GVariant *from_asv);

extern
void g_variant_dict_init (GVariantDict *dict,
                                                                         GVariant *from_asv);

extern
gboolean g_variant_dict_lookup (GVariantDict *dict,
                                                                         const gchar *key,
                                                                         const gchar *format_string,
                                                                         ...);
extern
GVariant * g_variant_dict_lookup_value (GVariantDict *dict,
                                                                         const gchar *key,
                                                                         const GVariantType *expected_type);
extern
gboolean g_variant_dict_contains (GVariantDict *dict,
                                                                         const gchar *key);
extern
void g_variant_dict_insert (GVariantDict *dict,
                                                                         const gchar *key,
                                                                         const gchar *format_string,
                                                                         ...);
extern
void g_variant_dict_insert_value (GVariantDict *dict,
                                                                         const gchar *key,
                                                                         GVariant *value);
extern
gboolean g_variant_dict_remove (GVariantDict *dict,
                                                                         const gchar *key);
extern
void g_variant_dict_clear (GVariantDict *dict);
extern
GVariant * g_variant_dict_end (GVariantDict *dict);
extern
GVariantDict * g_variant_dict_ref (GVariantDict *dict);
extern
void g_variant_dict_unref (GVariantDict *dict);
# 95 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/gversion.h" 1
# 36 "/usr/include/glib-2.0/glib/gversion.h"
extern const guint glib_major_version;
extern const guint glib_minor_version;
extern const guint glib_micro_version;
extern const guint glib_interface_age;
extern const guint glib_binary_age;

extern
const gchar * glib_check_version (guint required_major,
                                  guint required_minor,
                                  guint required_micro);
# 96 "/usr/include/glib-2.0/glib.h" 2






# 1 "/usr/include/glib-2.0/glib/deprecated/gallocator.h" 1
# 27 "/usr/include/glib-2.0/glib/deprecated/gallocator.h"
typedef struct _GAllocator GAllocator;
typedef struct _GMemChunk GMemChunk;
# 42 "/usr/include/glib-2.0/glib/deprecated/gallocator.h"
__attribute__((__deprecated__)) extern
GMemChunk * g_mem_chunk_new (const gchar *name,
                                         gint atom_size,
                                         gsize area_size,
                                         gint type);
__attribute__((__deprecated__)) extern
void g_mem_chunk_destroy (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
gpointer g_mem_chunk_alloc (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
gpointer g_mem_chunk_alloc0 (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
void g_mem_chunk_free (GMemChunk *mem_chunk,
                                         gpointer mem);
__attribute__((__deprecated__)) extern
void g_mem_chunk_clean (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
void g_mem_chunk_reset (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
void g_mem_chunk_print (GMemChunk *mem_chunk);
__attribute__((__deprecated__)) extern
void g_mem_chunk_info (void);
__attribute__((__deprecated__)) extern
void g_blow_chunks (void);


__attribute__((__deprecated__)) extern
GAllocator * g_allocator_new (const gchar *name,
                                         guint n_preallocs);
__attribute__((__deprecated__)) extern
void g_allocator_free (GAllocator *allocator);
__attribute__((__deprecated__)) extern
void g_list_push_allocator (GAllocator *allocator);
__attribute__((__deprecated__)) extern
void g_list_pop_allocator (void);
__attribute__((__deprecated__)) extern
void g_slist_push_allocator (GAllocator *allocator);
__attribute__((__deprecated__)) extern
void g_slist_pop_allocator (void);
__attribute__((__deprecated__)) extern
void g_node_push_allocator (GAllocator *allocator);
__attribute__((__deprecated__)) extern
void g_node_pop_allocator (void);
# 103 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/gcache.h" 1
# 38 "/usr/include/glib-2.0/glib/deprecated/gcache.h"
typedef struct _GCache GCache;

typedef gpointer (*GCacheNewFunc) (gpointer key);
typedef gpointer (*GCacheDupFunc) (gpointer value);
typedef void (*GCacheDestroyFunc) (gpointer value);



__attribute__((__deprecated__)) extern
GCache* g_cache_new (GCacheNewFunc value_new_func,
                                GCacheDestroyFunc value_destroy_func,
                                GCacheDupFunc key_dup_func,
                                GCacheDestroyFunc key_destroy_func,
                                GHashFunc hash_key_func,
                                GHashFunc hash_value_func,
                                GEqualFunc key_equal_func);
__attribute__((__deprecated__)) extern
void g_cache_destroy (GCache *cache);
__attribute__((__deprecated__)) extern
gpointer g_cache_insert (GCache *cache,
                                gpointer key);
__attribute__((__deprecated__)) extern
void g_cache_remove (GCache *cache,
                                gconstpointer value);
__attribute__((__deprecated__)) extern
void g_cache_key_foreach (GCache *cache,
                                GHFunc func,
                                gpointer user_data);
__attribute__((__deprecated__)) extern
void g_cache_value_foreach (GCache *cache,
                                GHFunc func,
                                gpointer user_data);
# 104 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/gcompletion.h" 1
# 36 "/usr/include/glib-2.0/glib/deprecated/gcompletion.h"
typedef struct _GCompletion GCompletion;

typedef gchar* (*GCompletionFunc) (gpointer);




typedef gint (*GCompletionStrncmpFunc) (const gchar *s1,
                                        const gchar *s2,
                                        gsize n);

struct _GCompletion
{
  GList* items;
  GCompletionFunc func;

  gchar* prefix;
  GList* cache;
  GCompletionStrncmpFunc strncmp_func;
};

__attribute__((__deprecated__)) extern
GCompletion* g_completion_new (GCompletionFunc func);
__attribute__((__deprecated__)) extern
void g_completion_add_items (GCompletion* cmp,
                                         GList* items);
__attribute__((__deprecated__)) extern
void g_completion_remove_items (GCompletion* cmp,
                                         GList* items);
__attribute__((__deprecated__)) extern
void g_completion_clear_items (GCompletion* cmp);
__attribute__((__deprecated__)) extern
GList* g_completion_complete (GCompletion* cmp,
                                         const gchar* prefix,
                                         gchar** new_prefix);
__attribute__((__deprecated__)) extern
GList* g_completion_complete_utf8 (GCompletion *cmp,
                                         const gchar* prefix,
                                         gchar** new_prefix);
__attribute__((__deprecated__)) extern
void g_completion_set_compare (GCompletion *cmp,
                                         GCompletionStrncmpFunc strncmp_func);
__attribute__((__deprecated__)) extern
void g_completion_free (GCompletion* cmp);
# 105 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/gmain.h" 1
# 106 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/grel.h" 1
# 36 "/usr/include/glib-2.0/glib/deprecated/grel.h"
typedef struct _GRelation GRelation;
typedef struct _GTuples GTuples;

struct _GTuples
{
  guint len;
};
# 67 "/usr/include/glib-2.0/glib/deprecated/grel.h"
__attribute__((__deprecated__)) extern
GRelation* g_relation_new (gint fields);
__attribute__((__deprecated__)) extern
void g_relation_destroy (GRelation *relation);
__attribute__((__deprecated__)) extern
void g_relation_index (GRelation *relation,
                               gint field,
                               GHashFunc hash_func,
                               GEqualFunc key_equal_func);
__attribute__((__deprecated__)) extern
void g_relation_insert (GRelation *relation,
                               ...);
__attribute__((__deprecated__)) extern
gint g_relation_delete (GRelation *relation,
                               gconstpointer key,
                               gint field);
__attribute__((__deprecated__)) extern
GTuples* g_relation_select (GRelation *relation,
                               gconstpointer key,
                               gint field);
__attribute__((__deprecated__)) extern
gint g_relation_count (GRelation *relation,
                               gconstpointer key,
                               gint field);
__attribute__((__deprecated__)) extern
gboolean g_relation_exists (GRelation *relation,
                               ...);
__attribute__((__deprecated__)) extern
void g_relation_print (GRelation *relation);
__attribute__((__deprecated__)) extern
void g_tuples_destroy (GTuples *tuples);
__attribute__((__deprecated__)) extern
gpointer g_tuples_index (GTuples *tuples,
                               gint index_,
                               gint field);
# 107 "/usr/include/glib-2.0/glib.h" 2
# 1 "/usr/include/glib-2.0/glib/deprecated/gthread.h" 1
# 38 "/usr/include/glib-2.0/glib/deprecated/gthread.h"
typedef enum
{
  G_THREAD_PRIORITY_LOW,
  G_THREAD_PRIORITY_NORMAL,
  G_THREAD_PRIORITY_HIGH,
  G_THREAD_PRIORITY_URGENT
} GThreadPriority;



struct _GThread
{

  GThreadFunc func;
  gpointer data;
  gboolean joinable;
  GThreadPriority priority;
};



typedef struct _GThreadFunctions GThreadFunctions;
struct _GThreadFunctions
{
  GMutex* (*mutex_new) (void);
  void (*mutex_lock) (GMutex *mutex);
  gboolean (*mutex_trylock) (GMutex *mutex);
  void (*mutex_unlock) (GMutex *mutex);
  void (*mutex_free) (GMutex *mutex);
  GCond* (*cond_new) (void);
  void (*cond_signal) (GCond *cond);
  void (*cond_broadcast) (GCond *cond);
  void (*cond_wait) (GCond *cond,
                                   GMutex *mutex);
  gboolean (*cond_timed_wait) (GCond *cond,
                                   GMutex *mutex,
                                   GTimeVal *end_time);
  void (*cond_free) (GCond *cond);
  GPrivate* (*private_new) (GDestroyNotify destructor);
  gpointer (*private_get) (GPrivate *private_key);
  void (*private_set) (GPrivate *private_key,
                                   gpointer data);
  void (*thread_create) (GThreadFunc func,
                                   gpointer data,
                                   gulong stack_size,
                                   gboolean joinable,
                                   gboolean bound,
                                   GThreadPriority priority,
                                   gpointer thread,
                                   GError **error);
  void (*thread_yield) (void);
  void (*thread_join) (gpointer thread);
  void (*thread_exit) (void);
  void (*thread_set_priority)(gpointer thread,
                                   GThreadPriority priority);
  void (*thread_self) (gpointer thread);
  gboolean (*thread_equal) (gpointer thread1,
                                   gpointer thread2);
};

extern GThreadFunctions g_thread_functions_for_glib_use;
extern gboolean g_thread_use_default_impl;

extern guint64 (*g_thread_gettime) (void);

__attribute__((__deprecated__)) extern
GThread *g_thread_create (GThreadFunc func,
                                gpointer data,
                                gboolean joinable,
                                GError **error);

__attribute__((__deprecated__)) extern
GThread *g_thread_create_full (GThreadFunc func,
                                gpointer data,
                                gulong stack_size,
                                gboolean joinable,
                                gboolean bound,
                                GThreadPriority priority,
                                GError **error);

__attribute__((__deprecated__)) extern
void g_thread_set_priority (GThread *thread,
                                GThreadPriority priority);

__attribute__((__deprecated__)) extern
void g_thread_foreach (GFunc thread_func,
                                gpointer user_data);



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
# 86 "/usr/include/sys/types.h" 3 4
typedef __off_t off_t;
# 104 "/usr/include/sys/types.h" 3 4
typedef __id_t id_t;




typedef __ssize_t ssize_t;





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
# 34 "/usr/include/sys/select.h" 2 3 4
# 45 "/usr/include/sys/select.h" 3 4
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
# 128 "/usr/include/glib-2.0/glib/deprecated/gthread.h" 2
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
# 129 "/usr/include/glib-2.0/glib/deprecated/gthread.h" 2




typedef struct
{
  GMutex *mutex;


  pthread_mutex_t unused;

} GStaticMutex;
# 149 "/usr/include/glib-2.0/glib/deprecated/gthread.h"
__attribute__((__deprecated__)) extern
void g_static_mutex_init (GStaticMutex *mutex);
__attribute__((__deprecated__)) extern
void g_static_mutex_free (GStaticMutex *mutex);
__attribute__((__deprecated__)) extern
GMutex *g_static_mutex_get_mutex_impl (GStaticMutex *mutex);

typedef struct _GStaticRecMutex GStaticRecMutex;
struct _GStaticRecMutex
{

  GStaticMutex mutex;
  guint depth;


  union {



    pthread_t owner;

    gdouble dummy;
  } unused;
};


__attribute__((__deprecated__)) extern
void g_static_rec_mutex_init (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
void g_static_rec_mutex_lock (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
gboolean g_static_rec_mutex_trylock (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
void g_static_rec_mutex_unlock (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
void g_static_rec_mutex_lock_full (GStaticRecMutex *mutex,
                                         guint depth);

__attribute__((__deprecated__)) extern
guint g_static_rec_mutex_unlock_full (GStaticRecMutex *mutex);

__attribute__((__deprecated__)) extern
void g_static_rec_mutex_free (GStaticRecMutex *mutex);

typedef struct _GStaticRWLock GStaticRWLock;
struct _GStaticRWLock
{

  GStaticMutex mutex;
  GCond *read_cond;
  GCond *write_cond;
  guint read_counter;
  gboolean have_writer;
  guint want_to_read;
  guint want_to_write;
};



__attribute__((__deprecated__)) extern
void g_static_rw_lock_init (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_reader_lock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
gboolean g_static_rw_lock_reader_trylock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_reader_unlock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_writer_lock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
gboolean g_static_rw_lock_writer_trylock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_writer_unlock (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
void g_static_rw_lock_free (GStaticRWLock *lock);

__attribute__((__deprecated__)) extern
GPrivate * g_private_new (GDestroyNotify notify);

typedef struct _GStaticPrivate GStaticPrivate;
struct _GStaticPrivate
{

  guint index;
};


__attribute__((__deprecated__)) extern
void g_static_private_init (GStaticPrivate *private_key);

__attribute__((__deprecated__)) extern
gpointer g_static_private_get (GStaticPrivate *private_key);

__attribute__((__deprecated__)) extern
void g_static_private_set (GStaticPrivate *private_key,
                                          gpointer data,
                                          GDestroyNotify notify);

__attribute__((__deprecated__)) extern
void g_static_private_free (GStaticPrivate *private_key);

__attribute__((__deprecated__)) extern
gboolean g_once_init_enter_impl (volatile gsize *location);

__attribute__((__deprecated__)) extern
void g_thread_init (gpointer vtable);
__attribute__((__deprecated__)) extern
void g_thread_init_with_errorcheck_mutexes (gpointer vtable);

__attribute__((__deprecated__)) extern
gboolean g_thread_get_initialized (void);

extern gboolean g_threads_got_initialized;



__attribute__((__deprecated__)) extern
GMutex * g_mutex_new (void);
__attribute__((__deprecated__)) extern
void g_mutex_free (GMutex *mutex);
__attribute__((__deprecated__)) extern
GCond * g_cond_new (void);
__attribute__((__deprecated__)) extern
void g_cond_free (GCond *cond);
__attribute__((__deprecated__)) extern
gboolean g_cond_timed_wait (GCond *cond,
                                         GMutex *mutex,
                                         GTimeVal *timeval);
# 108 "/usr/include/glib-2.0/glib.h" 2
# 29 "/usr/include/glib-2.0/gobject/gbinding.h" 2
# 1 "/usr/include/glib-2.0/gobject/gobject.h" 1
# 24 "/usr/include/glib-2.0/gobject/gobject.h"
# 1 "/usr/include/glib-2.0/gobject/gtype.h" 1
# 382 "/usr/include/glib-2.0/gobject/gtype.h"
typedef gsize GType;



typedef struct _GValue GValue;
typedef union _GTypeCValue GTypeCValue;
typedef struct _GTypePlugin GTypePlugin;
typedef struct _GTypeClass GTypeClass;
typedef struct _GTypeInterface GTypeInterface;
typedef struct _GTypeInstance GTypeInstance;
typedef struct _GTypeInfo GTypeInfo;
typedef struct _GTypeFundamentalInfo GTypeFundamentalInfo;
typedef struct _GInterfaceInfo GInterfaceInfo;
typedef struct _GTypeValueTable GTypeValueTable;
typedef struct _GTypeQuery GTypeQuery;
# 406 "/usr/include/glib-2.0/gobject/gtype.h"
struct _GTypeClass
{

  GType g_type;
};





struct _GTypeInstance
{

  GTypeClass *g_class;
};





struct _GTypeInterface
{

  GType g_type;
  GType g_instance_type;
};
# 442 "/usr/include/glib-2.0/gobject/gtype.h"
struct _GTypeQuery
{
  GType type;
  const gchar *type_name;
  guint class_size;
  guint instance_size;
};
# 668 "/usr/include/glib-2.0/gobject/gtype.h"
typedef enum
{
  G_TYPE_DEBUG_NONE = 0,
  G_TYPE_DEBUG_OBJECTS = 1 << 0,
  G_TYPE_DEBUG_SIGNALS = 1 << 1,
  G_TYPE_DEBUG_MASK = 0x03
} GTypeDebugFlags;



__attribute__((__deprecated__)) extern
void g_type_init (void);
__attribute__((__deprecated__)) extern
void g_type_init_with_debug_flags (GTypeDebugFlags debug_flags);
extern
const gchar * g_type_name (GType type);
extern
GQuark g_type_qname (GType type);
extern
GType g_type_from_name (const gchar *name);
extern
GType g_type_parent (GType type);
extern
guint g_type_depth (GType type);
extern
GType g_type_next_base (GType leaf_type,
            GType root_type);
extern
gboolean g_type_is_a (GType type,
            GType is_a_type);
extern
gpointer g_type_class_ref (GType type);
extern
gpointer g_type_class_peek (GType type);
extern
gpointer g_type_class_peek_static (GType type);
extern
void g_type_class_unref (gpointer g_class);
extern
gpointer g_type_class_peek_parent (gpointer g_class);
extern
gpointer g_type_interface_peek (gpointer instance_class,
            GType iface_type);
extern
gpointer g_type_interface_peek_parent (gpointer g_iface);

extern
gpointer g_type_default_interface_ref (GType g_type);
extern
gpointer g_type_default_interface_peek (GType g_type);
extern
void g_type_default_interface_unref (gpointer g_iface);


extern
GType* g_type_children (GType type,
            guint *n_children);
extern
GType* g_type_interfaces (GType type,
            guint *n_interfaces);


extern
void g_type_set_qdata (GType type,
            GQuark quark,
            gpointer data);
extern
gpointer g_type_get_qdata (GType type,
            GQuark quark);
extern
void g_type_query (GType type,
            GTypeQuery *query);
# 756 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GBaseInitFunc) (gpointer g_class);
# 767 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GBaseFinalizeFunc) (gpointer g_class);
# 869 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GClassInitFunc) (gpointer g_class,
           gpointer class_data);
# 884 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GClassFinalizeFunc) (gpointer g_class,
           gpointer class_data);
# 903 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GInstanceInitFunc) (GTypeInstance *instance,
           gpointer g_class);
# 917 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GInterfaceInitFunc) (gpointer g_iface,
           gpointer iface_data);
# 928 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GInterfaceFinalizeFunc) (gpointer g_iface,
           gpointer iface_data);
# 948 "/usr/include/glib-2.0/gobject/gtype.h"
typedef gboolean (*GTypeClassCacheFunc) (gpointer cache_data,
           GTypeClass *g_class);
# 960 "/usr/include/glib-2.0/gobject/gtype.h"
typedef void (*GTypeInterfaceCheckFunc) (gpointer check_data,
           gpointer g_iface);
# 972 "/usr/include/glib-2.0/gobject/gtype.h"
typedef enum
{
  G_TYPE_FLAG_CLASSED = (1 << 0),
  G_TYPE_FLAG_INSTANTIATABLE = (1 << 1),
  G_TYPE_FLAG_DERIVABLE = (1 << 2),
  G_TYPE_FLAG_DEEP_DERIVABLE = (1 << 3)
} GTypeFundamentalFlags;
# 989 "/usr/include/glib-2.0/gobject/gtype.h"
typedef enum
{
  G_TYPE_FLAG_ABSTRACT = (1 << 4),
  G_TYPE_FLAG_VALUE_ABSTRACT = (1 << 5)
} GTypeFlags;
# 1025 "/usr/include/glib-2.0/gobject/gtype.h"
struct _GTypeInfo
{

  guint16 class_size;

  GBaseInitFunc base_init;
  GBaseFinalizeFunc base_finalize;


  GClassInitFunc class_init;
  GClassFinalizeFunc class_finalize;
  gconstpointer class_data;


  guint16 instance_size;
  guint16 n_preallocs;
  GInstanceInitFunc instance_init;


  const GTypeValueTable *value_table;
};







struct _GTypeFundamentalInfo
{
  GTypeFundamentalFlags type_flags;
};
# 1066 "/usr/include/glib-2.0/gobject/gtype.h"
struct _GInterfaceInfo
{
  GInterfaceInitFunc interface_init;
  GInterfaceFinalizeFunc interface_finalize;
  gpointer interface_data;
};
# 1232 "/usr/include/glib-2.0/gobject/gtype.h"
struct _GTypeValueTable
{
  void (*value_init) (GValue *value);
  void (*value_free) (GValue *value);
  void (*value_copy) (const GValue *src_value,
      GValue *dest_value);

  gpointer (*value_peek_pointer) (const GValue *value);
  const gchar *collect_format;
  gchar* (*collect_value) (GValue *value,
      guint n_collect_values,
      GTypeCValue *collect_values,
      guint collect_flags);
  const gchar *lcopy_format;
  gchar* (*lcopy_value) (const GValue *value,
      guint n_collect_values,
      GTypeCValue *collect_values,
      guint collect_flags);
};
extern
GType g_type_register_static (GType parent_type,
      const gchar *type_name,
      const GTypeInfo *info,
      GTypeFlags flags);
extern
GType g_type_register_static_simple (GType parent_type,
      const gchar *type_name,
      guint class_size,
      GClassInitFunc class_init,
      guint instance_size,
      GInstanceInitFunc instance_init,
      GTypeFlags flags);

extern
GType g_type_register_dynamic (GType parent_type,
      const gchar *type_name,
      GTypePlugin *plugin,
      GTypeFlags flags);
extern
GType g_type_register_fundamental (GType type_id,
      const gchar *type_name,
      const GTypeInfo *info,
      const GTypeFundamentalInfo *finfo,
      GTypeFlags flags);
extern
void g_type_add_interface_static (GType instance_type,
      GType interface_type,
      const GInterfaceInfo *info);
extern
void g_type_add_interface_dynamic (GType instance_type,
      GType interface_type,
      GTypePlugin *plugin);
extern
void g_type_interface_add_prerequisite (GType interface_type,
      GType prerequisite_type);
extern
GType*g_type_interface_prerequisites (GType interface_type,
      guint *n_prerequisites);
extern
void g_type_class_add_private (gpointer g_class,
                                         gsize private_size);
extern
gint g_type_add_instance_private (GType class_type,
                                         gsize private_size);
extern
gpointer g_type_instance_get_private (GTypeInstance *instance,
                                         GType private_type);
extern
void g_type_class_adjust_private_offset (gpointer g_class,
                                             gint *private_size_or_offset);

extern
void g_type_add_class_private (GType class_type,
      gsize private_size);
extern
gpointer g_type_class_get_private (GTypeClass *klass,
      GType private_type);
extern
gint g_type_class_get_instance_private_offset (gpointer g_class);

extern
void g_type_ensure (GType type);
extern
guint g_type_get_type_registration_serial (void);
# 1859 "/usr/include/glib-2.0/gobject/gtype.h"
extern
GTypePlugin* g_type_get_plugin (GType type);
extern
GTypePlugin* g_type_interface_get_plugin (GType instance_type,
       GType interface_type);
extern
GType g_type_fundamental_next (void);
extern
GType g_type_fundamental (GType type_id);
extern
GTypeInstance* g_type_create_instance (GType type);
extern
void g_type_free_instance (GTypeInstance *instance);

extern
void g_type_add_class_cache_func (gpointer cache_data,
       GTypeClassCacheFunc cache_func);
extern
void g_type_remove_class_cache_func (gpointer cache_data,
       GTypeClassCacheFunc cache_func);
extern
void g_type_class_unref_uncached (gpointer g_class);

extern
void g_type_add_interface_check (gpointer check_data,
       GTypeInterfaceCheckFunc check_func);
extern
void g_type_remove_interface_check (gpointer check_data,
       GTypeInterfaceCheckFunc check_func);

extern
GTypeValueTable* g_type_value_table_peek (GType type);



extern
gboolean g_type_check_instance (GTypeInstance *instance) __attribute__((__pure__));
extern
GTypeInstance* g_type_check_instance_cast (GTypeInstance *instance,
       GType iface_type);
extern
gboolean g_type_check_instance_is_a (GTypeInstance *instance,
       GType iface_type) __attribute__((__pure__));
extern
gboolean g_type_check_instance_is_fundamentally_a (GTypeInstance *instance,
                                                           GType fundamental_type) __attribute__((__pure__));
extern
GTypeClass* g_type_check_class_cast (GTypeClass *g_class,
       GType is_a_type);
extern
gboolean g_type_check_class_is_a (GTypeClass *g_class,
       GType is_a_type) __attribute__((__pure__));
extern
gboolean g_type_check_is_value_type (GType type) __attribute__((__const__));
extern
gboolean g_type_check_value (GValue *value) __attribute__((__pure__));
extern
gboolean g_type_check_value_holds (GValue *value,
       GType type) __attribute__((__pure__));
extern
gboolean g_type_test_flags (GType type,
       guint flags) __attribute__((__const__));



extern
const gchar * g_type_name_from_instance (GTypeInstance *instance);
extern
const gchar * g_type_name_from_class (GTypeClass *g_class);
# 25 "/usr/include/glib-2.0/gobject/gobject.h" 2
# 1 "/usr/include/glib-2.0/gobject/gvalue.h" 1
# 92 "/usr/include/glib-2.0/gobject/gvalue.h"
typedef void (*GValueTransform) (const GValue *src_value,
     GValue *dest_value);
# 106 "/usr/include/glib-2.0/gobject/gvalue.h"
struct _GValue
{

  GType g_type;


  union {
    gint v_int;
    guint v_uint;
    glong v_long;
    gulong v_ulong;
    gint64 v_int64;
    guint64 v_uint64;
    gfloat v_float;
    gdouble v_double;
    gpointer v_pointer;
  } data[2];
};



extern
GValue* g_value_init (GValue *value,
      GType g_type);
extern
void g_value_copy (const GValue *src_value,
      GValue *dest_value);
extern
GValue* g_value_reset (GValue *value);
extern
void g_value_unset (GValue *value);
extern
void g_value_set_instance (GValue *value,
      gpointer instance);
extern
void g_value_init_from_instance (GValue *value,
                                              gpointer instance);



extern
gboolean g_value_fits_pointer (const GValue *value);
extern
gpointer g_value_peek_pointer (const GValue *value);



extern
gboolean g_value_type_compatible (GType src_type,
      GType dest_type);
extern
gboolean g_value_type_transformable (GType src_type,
      GType dest_type);
extern
gboolean g_value_transform (const GValue *src_value,
      GValue *dest_value);
extern
void g_value_register_transform_func (GType src_type,
      GType dest_type,
      GValueTransform transform_func);
# 26 "/usr/include/glib-2.0/gobject/gobject.h" 2
# 1 "/usr/include/glib-2.0/gobject/gparam.h" 1
# 150 "/usr/include/glib-2.0/gobject/gparam.h"
typedef enum
{
  G_PARAM_READABLE = 1 << 0,
  G_PARAM_WRITABLE = 1 << 1,
  G_PARAM_READWRITE = (G_PARAM_READABLE | G_PARAM_WRITABLE),
  G_PARAM_CONSTRUCT = 1 << 2,
  G_PARAM_CONSTRUCT_ONLY = 1 << 3,
  G_PARAM_LAX_VALIDATION = 1 << 4,
  G_PARAM_STATIC_NAME = 1 << 5,

  G_PARAM_PRIVATE = G_PARAM_STATIC_NAME,

  G_PARAM_STATIC_NICK = 1 << 6,
  G_PARAM_STATIC_BLURB = 1 << 7,

  G_PARAM_EXPLICIT_NOTIFY = 1 << 30,
  G_PARAM_DEPRECATED = 1 << 31
} GParamFlags;
# 192 "/usr/include/glib-2.0/gobject/gparam.h"
typedef struct _GParamSpec GParamSpec;
typedef struct _GParamSpecClass GParamSpecClass;
typedef struct _GParameter GParameter;
typedef struct _GParamSpecPool GParamSpecPool;
# 207 "/usr/include/glib-2.0/gobject/gparam.h"
struct _GParamSpec
{
  GTypeInstance g_type_instance;

  const gchar *name;
  GParamFlags flags;
  GType value_type;
  GType owner_type;


  gchar *_nick;
  gchar *_blurb;
  GData *qdata;
  guint ref_count;
  guint param_id;
};
# 242 "/usr/include/glib-2.0/gobject/gparam.h"
struct _GParamSpecClass
{
  GTypeClass g_type_class;

  GType value_type;

  void (*finalize) (GParamSpec *pspec);


  void (*value_set_default) (GParamSpec *pspec,
      GValue *value);
  gboolean (*value_validate) (GParamSpec *pspec,
      GValue *value);
  gint (*values_cmp) (GParamSpec *pspec,
      const GValue *value1,
      const GValue *value2);

  gpointer dummy[4];
};
# 269 "/usr/include/glib-2.0/gobject/gparam.h"
struct _GParameter
{
  const gchar *name;
  GValue value;
};



extern
GParamSpec* g_param_spec_ref (GParamSpec *pspec);
extern
void g_param_spec_unref (GParamSpec *pspec);
extern
void g_param_spec_sink (GParamSpec *pspec);
extern
GParamSpec* g_param_spec_ref_sink (GParamSpec *pspec);
extern
gpointer g_param_spec_get_qdata (GParamSpec *pspec,
       GQuark quark);
extern
void g_param_spec_set_qdata (GParamSpec *pspec,
       GQuark quark,
       gpointer data);
extern
void g_param_spec_set_qdata_full (GParamSpec *pspec,
       GQuark quark,
       gpointer data,
       GDestroyNotify destroy);
extern
gpointer g_param_spec_steal_qdata (GParamSpec *pspec,
       GQuark quark);
extern
GParamSpec* g_param_spec_get_redirect_target (GParamSpec *pspec);

extern
void g_param_value_set_default (GParamSpec *pspec,
       GValue *value);
extern
gboolean g_param_value_defaults (GParamSpec *pspec,
       GValue *value);
extern
gboolean g_param_value_validate (GParamSpec *pspec,
       GValue *value);
extern
gboolean g_param_value_convert (GParamSpec *pspec,
       const GValue *src_value,
       GValue *dest_value,
       gboolean strict_validation);
extern
gint g_param_values_cmp (GParamSpec *pspec,
       const GValue *value1,
       const GValue *value2);
extern
const gchar * g_param_spec_get_name (GParamSpec *pspec);
extern
const gchar * g_param_spec_get_nick (GParamSpec *pspec);
extern
const gchar * g_param_spec_get_blurb (GParamSpec *pspec);
extern
void g_value_set_param (GValue *value,
       GParamSpec *param);
extern
GParamSpec* g_value_get_param (const GValue *value);
extern
GParamSpec* g_value_dup_param (const GValue *value);


extern
void g_value_take_param (GValue *value,
              GParamSpec *param);
__attribute__((__deprecated__)) extern
void g_value_set_param_take_ownership (GValue *value,
                                                 GParamSpec *param);
extern
const GValue * g_param_spec_get_default_value (GParamSpec *param);


typedef struct _GParamSpecTypeInfo GParamSpecTypeInfo;
# 371 "/usr/include/glib-2.0/gobject/gparam.h"
struct _GParamSpecTypeInfo
{

  guint16 instance_size;
  guint16 n_preallocs;
  void (*instance_init) (GParamSpec *pspec);


  GType value_type;
  void (*finalize) (GParamSpec *pspec);
  void (*value_set_default) (GParamSpec *pspec,
      GValue *value);
  gboolean (*value_validate) (GParamSpec *pspec,
      GValue *value);
  gint (*values_cmp) (GParamSpec *pspec,
      const GValue *value1,
      const GValue *value2);
};
extern
GType g_param_type_register_static (const gchar *name,
      const GParamSpecTypeInfo *pspec_info);


GType _g_param_type_register_static_constant (const gchar *name,
            const GParamSpecTypeInfo *pspec_info,
            GType opt_type);



extern
gpointer g_param_spec_internal (GType param_type,
       const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GParamFlags flags);
extern
GParamSpecPool* g_param_spec_pool_new (gboolean type_prefixing);
extern
void g_param_spec_pool_insert (GParamSpecPool *pool,
       GParamSpec *pspec,
       GType owner_type);
extern
void g_param_spec_pool_remove (GParamSpecPool *pool,
       GParamSpec *pspec);
extern
GParamSpec* g_param_spec_pool_lookup (GParamSpecPool *pool,
       const gchar *param_name,
       GType owner_type,
       gboolean walk_ancestors);
extern
GList* g_param_spec_pool_list_owned (GParamSpecPool *pool,
       GType owner_type);
extern
GParamSpec** g_param_spec_pool_list (GParamSpecPool *pool,
       GType owner_type,
       guint *n_pspecs_p);
# 27 "/usr/include/glib-2.0/gobject/gobject.h" 2
# 1 "/usr/include/glib-2.0/gobject/gclosure.h" 1
# 74 "/usr/include/glib-2.0/gobject/gclosure.h"
typedef struct _GClosure GClosure;
typedef struct _GClosureNotifyData GClosureNotifyData;
# 86 "/usr/include/glib-2.0/gobject/gclosure.h"
typedef void (*GCallback) (void);
# 95 "/usr/include/glib-2.0/gobject/gclosure.h"
typedef void (*GClosureNotify) (gpointer data,
      GClosure *closure);
# 115 "/usr/include/glib-2.0/gobject/gclosure.h"
typedef void (*GClosureMarshal) (GClosure *closure,
      GValue *return_value,
      guint n_param_values,
      const GValue *param_values,
      gpointer invocation_hint,
      gpointer marshal_data);

typedef void (* GVaClosureMarshal) (GClosure *closure,
        GValue *return_value,
        gpointer instance,
        va_list args,
        gpointer marshal_data,
        int n_params,
        GType *param_types);
# 137 "/usr/include/glib-2.0/gobject/gclosure.h"
typedef struct _GCClosure GCClosure;



struct _GClosureNotifyData
{
  gpointer data;
  GClosureNotify notify;
};
# 155 "/usr/include/glib-2.0/gobject/gclosure.h"
struct _GClosure
{

  volatile guint ref_count : 15;


  volatile guint meta_marshal_nouse : 1;
  volatile guint n_guards : 1;
  volatile guint n_fnotifiers : 2;
  volatile guint n_inotifiers : 8;
  volatile guint in_inotify : 1;
  volatile guint floating : 1;

  volatile guint derivative_flag : 1;

  volatile guint in_marshal : 1;
  volatile guint is_invalid : 1;

                  void (*marshal) (GClosure *closure,
         GValue *return_value,
         guint n_param_values,
         const GValue *param_values,
         gpointer invocation_hint,
         gpointer marshal_data);
                    gpointer data;

                  GClosureNotifyData *notifiers;
# 193 "/usr/include/glib-2.0/gobject/gclosure.h"
};


struct _GCClosure
{
  GClosure closure;
  gpointer callback;
};



extern
GClosure* g_cclosure_new (GCallback callback_func,
       gpointer user_data,
       GClosureNotify destroy_data);
extern
GClosure* g_cclosure_new_swap (GCallback callback_func,
       gpointer user_data,
       GClosureNotify destroy_data);
extern
GClosure* g_signal_type_cclosure_new (GType itype,
       guint struct_offset);



extern
GClosure* g_closure_ref (GClosure *closure);
extern
void g_closure_sink (GClosure *closure);
extern
void g_closure_unref (GClosure *closure);

extern
GClosure* g_closure_new_simple (guint sizeof_closure,
       gpointer data);
extern
void g_closure_add_finalize_notifier (GClosure *closure,
       gpointer notify_data,
       GClosureNotify notify_func);
extern
void g_closure_remove_finalize_notifier (GClosure *closure,
       gpointer notify_data,
       GClosureNotify notify_func);
extern
void g_closure_add_invalidate_notifier (GClosure *closure,
       gpointer notify_data,
       GClosureNotify notify_func);
extern
void g_closure_remove_invalidate_notifier (GClosure *closure,
       gpointer notify_data,
       GClosureNotify notify_func);
extern
void g_closure_add_marshal_guards (GClosure *closure,
       gpointer pre_marshal_data,
       GClosureNotify pre_marshal_notify,
       gpointer post_marshal_data,
       GClosureNotify post_marshal_notify);
extern
void g_closure_set_marshal (GClosure *closure,
       GClosureMarshal marshal);
extern
void g_closure_set_meta_marshal (GClosure *closure,
       gpointer marshal_data,
       GClosureMarshal meta_marshal);
extern
void g_closure_invalidate (GClosure *closure);
extern
void g_closure_invoke (GClosure *closure,
       GValue *return_value,
       guint n_param_values,
       const GValue *param_values,
       gpointer invocation_hint);
# 277 "/usr/include/glib-2.0/gobject/gclosure.h"
extern
void g_cclosure_marshal_generic (GClosure *closure,
                                 GValue *return_gvalue,
                                 guint n_param_values,
                                 const GValue *param_values,
                                 gpointer invocation_hint,
                                 gpointer marshal_data);

extern
void g_cclosure_marshal_generic_va (GClosure *closure,
        GValue *return_value,
        gpointer instance,
        va_list args_list,
        gpointer marshal_data,
        int n_params,
        GType *param_types);
# 28 "/usr/include/glib-2.0/gobject/gobject.h" 2
# 1 "/usr/include/glib-2.0/gobject/gsignal.h" 1
# 27 "/usr/include/glib-2.0/gobject/gsignal.h"
# 1 "/usr/include/glib-2.0/gobject/gmarshal.h" 1







extern
void g_cclosure_marshal_VOID__VOID (GClosure *closure,
                                    GValue *return_value,
                                    guint n_param_values,
                                    const GValue *param_values,
                                    gpointer invocation_hint,
                                    gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__VOIDv (GClosure *closure,
                                     GValue *return_value,
                                     gpointer instance,
                                     va_list args,
                                     gpointer marshal_data,
                                     int n_params,
                                     GType *param_types);


extern
void g_cclosure_marshal_VOID__BOOLEAN (GClosure *closure,
                                       GValue *return_value,
                                       guint n_param_values,
                                       const GValue *param_values,
                                       gpointer invocation_hint,
                                       gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__BOOLEANv (GClosure *closure,
                                        GValue *return_value,
                                        gpointer instance,
                                        va_list args,
                                        gpointer marshal_data,
                                        int n_params,
                                        GType *param_types);


extern
void g_cclosure_marshal_VOID__CHAR (GClosure *closure,
                                    GValue *return_value,
                                    guint n_param_values,
                                    const GValue *param_values,
                                    gpointer invocation_hint,
                                    gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__CHARv (GClosure *closure,
                                     GValue *return_value,
                                     gpointer instance,
                                     va_list args,
                                     gpointer marshal_data,
                                     int n_params,
                                     GType *param_types);


extern
void g_cclosure_marshal_VOID__UCHAR (GClosure *closure,
                                     GValue *return_value,
                                     guint n_param_values,
                                     const GValue *param_values,
                                     gpointer invocation_hint,
                                     gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__UCHARv (GClosure *closure,
                                      GValue *return_value,
                                      gpointer instance,
                                      va_list args,
                                      gpointer marshal_data,
                                      int n_params,
                                      GType *param_types);


extern
void g_cclosure_marshal_VOID__INT (GClosure *closure,
                                   GValue *return_value,
                                   guint n_param_values,
                                   const GValue *param_values,
                                   gpointer invocation_hint,
                                   gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__INTv (GClosure *closure,
                                    GValue *return_value,
                                    gpointer instance,
                                    va_list args,
                                    gpointer marshal_data,
                                    int n_params,
                                    GType *param_types);


extern
void g_cclosure_marshal_VOID__UINT (GClosure *closure,
                                    GValue *return_value,
                                    guint n_param_values,
                                    const GValue *param_values,
                                    gpointer invocation_hint,
                                    gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__UINTv (GClosure *closure,
                                     GValue *return_value,
                                     gpointer instance,
                                     va_list args,
                                     gpointer marshal_data,
                                     int n_params,
                                     GType *param_types);


extern
void g_cclosure_marshal_VOID__LONG (GClosure *closure,
                                    GValue *return_value,
                                    guint n_param_values,
                                    const GValue *param_values,
                                    gpointer invocation_hint,
                                    gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__LONGv (GClosure *closure,
                                     GValue *return_value,
                                     gpointer instance,
                                     va_list args,
                                     gpointer marshal_data,
                                     int n_params,
                                     GType *param_types);


extern
void g_cclosure_marshal_VOID__ULONG (GClosure *closure,
                                     GValue *return_value,
                                     guint n_param_values,
                                     const GValue *param_values,
                                     gpointer invocation_hint,
                                     gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__ULONGv (GClosure *closure,
                                      GValue *return_value,
                                      gpointer instance,
                                      va_list args,
                                      gpointer marshal_data,
                                      int n_params,
                                      GType *param_types);


extern
void g_cclosure_marshal_VOID__ENUM (GClosure *closure,
                                    GValue *return_value,
                                    guint n_param_values,
                                    const GValue *param_values,
                                    gpointer invocation_hint,
                                    gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__ENUMv (GClosure *closure,
                                     GValue *return_value,
                                     gpointer instance,
                                     va_list args,
                                     gpointer marshal_data,
                                     int n_params,
                                     GType *param_types);


extern
void g_cclosure_marshal_VOID__FLAGS (GClosure *closure,
                                     GValue *return_value,
                                     guint n_param_values,
                                     const GValue *param_values,
                                     gpointer invocation_hint,
                                     gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__FLAGSv (GClosure *closure,
                                      GValue *return_value,
                                      gpointer instance,
                                      va_list args,
                                      gpointer marshal_data,
                                      int n_params,
                                      GType *param_types);


extern
void g_cclosure_marshal_VOID__FLOAT (GClosure *closure,
                                     GValue *return_value,
                                     guint n_param_values,
                                     const GValue *param_values,
                                     gpointer invocation_hint,
                                     gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__FLOATv (GClosure *closure,
                                      GValue *return_value,
                                      gpointer instance,
                                      va_list args,
                                      gpointer marshal_data,
                                      int n_params,
                                      GType *param_types);


extern
void g_cclosure_marshal_VOID__DOUBLE (GClosure *closure,
                                      GValue *return_value,
                                      guint n_param_values,
                                      const GValue *param_values,
                                      gpointer invocation_hint,
                                      gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__DOUBLEv (GClosure *closure,
                                       GValue *return_value,
                                       gpointer instance,
                                       va_list args,
                                       gpointer marshal_data,
                                       int n_params,
                                       GType *param_types);


extern
void g_cclosure_marshal_VOID__STRING (GClosure *closure,
                                      GValue *return_value,
                                      guint n_param_values,
                                      const GValue *param_values,
                                      gpointer invocation_hint,
                                      gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__STRINGv (GClosure *closure,
                                       GValue *return_value,
                                       gpointer instance,
                                       va_list args,
                                       gpointer marshal_data,
                                       int n_params,
                                       GType *param_types);


extern
void g_cclosure_marshal_VOID__PARAM (GClosure *closure,
                                     GValue *return_value,
                                     guint n_param_values,
                                     const GValue *param_values,
                                     gpointer invocation_hint,
                                     gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__PARAMv (GClosure *closure,
                                      GValue *return_value,
                                      gpointer instance,
                                      va_list args,
                                      gpointer marshal_data,
                                      int n_params,
                                      GType *param_types);


extern
void g_cclosure_marshal_VOID__BOXED (GClosure *closure,
                                     GValue *return_value,
                                     guint n_param_values,
                                     const GValue *param_values,
                                     gpointer invocation_hint,
                                     gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__BOXEDv (GClosure *closure,
                                      GValue *return_value,
                                      gpointer instance,
                                      va_list args,
                                      gpointer marshal_data,
                                      int n_params,
                                      GType *param_types);


extern
void g_cclosure_marshal_VOID__POINTER (GClosure *closure,
                                       GValue *return_value,
                                       guint n_param_values,
                                       const GValue *param_values,
                                       gpointer invocation_hint,
                                       gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__POINTERv (GClosure *closure,
                                        GValue *return_value,
                                        gpointer instance,
                                        va_list args,
                                        gpointer marshal_data,
                                        int n_params,
                                        GType *param_types);


extern
void g_cclosure_marshal_VOID__OBJECT (GClosure *closure,
                                      GValue *return_value,
                                      guint n_param_values,
                                      const GValue *param_values,
                                      gpointer invocation_hint,
                                      gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__OBJECTv (GClosure *closure,
                                       GValue *return_value,
                                       gpointer instance,
                                       va_list args,
                                       gpointer marshal_data,
                                       int n_params,
                                       GType *param_types);


extern
void g_cclosure_marshal_VOID__VARIANT (GClosure *closure,
                                       GValue *return_value,
                                       guint n_param_values,
                                       const GValue *param_values,
                                       gpointer invocation_hint,
                                       gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__VARIANTv (GClosure *closure,
                                        GValue *return_value,
                                        gpointer instance,
                                        va_list args,
                                        gpointer marshal_data,
                                        int n_params,
                                        GType *param_types);


extern
void g_cclosure_marshal_VOID__UINT_POINTER (GClosure *closure,
                                            GValue *return_value,
                                            guint n_param_values,
                                            const GValue *param_values,
                                            gpointer invocation_hint,
                                            gpointer marshal_data);
extern
void g_cclosure_marshal_VOID__UINT_POINTERv (GClosure *closure,
                                             GValue *return_value,
                                             gpointer instance,
                                             va_list args,
                                             gpointer marshal_data,
                                             int n_params,
                                             GType *param_types);


extern
void g_cclosure_marshal_BOOLEAN__FLAGS (GClosure *closure,
                                        GValue *return_value,
                                        guint n_param_values,
                                        const GValue *param_values,
                                        gpointer invocation_hint,
                                        gpointer marshal_data);
extern
void g_cclosure_marshal_BOOLEAN__FLAGSv (GClosure *closure,
                                         GValue *return_value,
                                         gpointer instance,
                                         va_list args,
                                         gpointer marshal_data,
                                         int n_params,
                                         GType *param_types);



extern
void g_cclosure_marshal_STRING__OBJECT_POINTER (GClosure *closure,
                                                GValue *return_value,
                                                guint n_param_values,
                                                const GValue *param_values,
                                                gpointer invocation_hint,
                                                gpointer marshal_data);
extern
void g_cclosure_marshal_STRING__OBJECT_POINTERv (GClosure *closure,
                                                 GValue *return_value,
                                                 gpointer instance,
                                                 va_list args,
                                                 gpointer marshal_data,
                                                 int n_params,
                                                 GType *param_types);


extern
void g_cclosure_marshal_BOOLEAN__BOXED_BOXED (GClosure *closure,
                                              GValue *return_value,
                                              guint n_param_values,
                                              const GValue *param_values,
                                              gpointer invocation_hint,
                                              gpointer marshal_data);
extern
void g_cclosure_marshal_BOOLEAN__BOXED_BOXEDv (GClosure *closure,
                                               GValue *return_value,
                                               gpointer instance,
                                               va_list args,
                                               gpointer marshal_data,
                                               int n_params,
                                               GType *param_types);
# 28 "/usr/include/glib-2.0/gobject/gsignal.h" 2




typedef struct _GSignalQuery GSignalQuery;
typedef struct _GSignalInvocationHint GSignalInvocationHint;
# 43 "/usr/include/glib-2.0/gobject/gsignal.h"
typedef GClosureMarshal GSignalCMarshaller;







typedef GVaClosureMarshal GSignalCVaMarshaller;
# 70 "/usr/include/glib-2.0/gobject/gsignal.h"
typedef gboolean (*GSignalEmissionHook) (GSignalInvocationHint *ihint,
      guint n_param_values,
      const GValue *param_values,
      gpointer data);
# 93 "/usr/include/glib-2.0/gobject/gsignal.h"
typedef gboolean (*GSignalAccumulator) (GSignalInvocationHint *ihint,
      GValue *return_accu,
      const GValue *handler_return,
      gpointer data);
# 127 "/usr/include/glib-2.0/gobject/gsignal.h"
typedef enum
{
  G_SIGNAL_RUN_FIRST = 1 << 0,
  G_SIGNAL_RUN_LAST = 1 << 1,
  G_SIGNAL_RUN_CLEANUP = 1 << 2,
  G_SIGNAL_NO_RECURSE = 1 << 3,
  G_SIGNAL_DETAILED = 1 << 4,
  G_SIGNAL_ACTION = 1 << 5,
  G_SIGNAL_NO_HOOKS = 1 << 6,
  G_SIGNAL_MUST_COLLECT = 1 << 7,
  G_SIGNAL_DEPRECATED = 1 << 8
} GSignalFlags;
# 155 "/usr/include/glib-2.0/gobject/gsignal.h"
typedef enum
{
  G_CONNECT_AFTER = 1 << 0,
  G_CONNECT_SWAPPED = 1 << 1
} GConnectFlags;
# 173 "/usr/include/glib-2.0/gobject/gsignal.h"
typedef enum
{
  G_SIGNAL_MATCH_ID = 1 << 0,
  G_SIGNAL_MATCH_DETAIL = 1 << 1,
  G_SIGNAL_MATCH_CLOSURE = 1 << 2,
  G_SIGNAL_MATCH_FUNC = 1 << 3,
  G_SIGNAL_MATCH_DATA = 1 << 4,
  G_SIGNAL_MATCH_UNBLOCKED = 1 << 5
} GSignalMatchType;
# 223 "/usr/include/glib-2.0/gobject/gsignal.h"
struct _GSignalInvocationHint
{
  guint signal_id;
  GQuark detail;
  GSignalFlags run_type;
};
# 249 "/usr/include/glib-2.0/gobject/gsignal.h"
struct _GSignalQuery
{
  guint signal_id;
  const gchar *signal_name;
  GType itype;
  GSignalFlags signal_flags;
  GType return_type;
  guint n_params;
  const GType *param_types;
};



extern
guint g_signal_newv (const gchar *signal_name,
          GType itype,
          GSignalFlags signal_flags,
          GClosure *class_closure,
          GSignalAccumulator accumulator,
          gpointer accu_data,
          GSignalCMarshaller c_marshaller,
          GType return_type,
          guint n_params,
          GType *param_types);
extern
guint g_signal_new_valist (const gchar *signal_name,
          GType itype,
          GSignalFlags signal_flags,
          GClosure *class_closure,
          GSignalAccumulator accumulator,
          gpointer accu_data,
          GSignalCMarshaller c_marshaller,
          GType return_type,
          guint n_params,
          va_list args);
extern
guint g_signal_new (const gchar *signal_name,
          GType itype,
          GSignalFlags signal_flags,
          guint class_offset,
          GSignalAccumulator accumulator,
          gpointer accu_data,
          GSignalCMarshaller c_marshaller,
          GType return_type,
          guint n_params,
          ...);
extern
guint g_signal_new_class_handler (const gchar *signal_name,
                                             GType itype,
                                             GSignalFlags signal_flags,
                                             GCallback class_handler,
                                             GSignalAccumulator accumulator,
                                             gpointer accu_data,
                                             GSignalCMarshaller c_marshaller,
                                             GType return_type,
                                             guint n_params,
                                             ...);
extern
void g_signal_set_va_marshaller (guint signal_id,
          GType instance_type,
          GSignalCVaMarshaller va_marshaller);

extern
void g_signal_emitv (const GValue *instance_and_params,
          guint signal_id,
          GQuark detail,
          GValue *return_value);
extern
void g_signal_emit_valist (gpointer instance,
          guint signal_id,
          GQuark detail,
          va_list var_args);
extern
void g_signal_emit (gpointer instance,
          guint signal_id,
          GQuark detail,
          ...);
extern
void g_signal_emit_by_name (gpointer instance,
          const gchar *detailed_signal,
          ...);
extern
guint g_signal_lookup (const gchar *name,
          GType itype);
extern
const gchar * g_signal_name (guint signal_id);
extern
void g_signal_query (guint signal_id,
          GSignalQuery *query);
extern
guint* g_signal_list_ids (GType itype,
          guint *n_ids);
extern
gboolean g_signal_parse_name (const gchar *detailed_signal,
          GType itype,
          guint *signal_id_p,
          GQuark *detail_p,
          gboolean force_detail_quark);
extern
GSignalInvocationHint* g_signal_get_invocation_hint (gpointer instance);



extern
void g_signal_stop_emission (gpointer instance,
          guint signal_id,
          GQuark detail);
extern
void g_signal_stop_emission_by_name (gpointer instance,
          const gchar *detailed_signal);
extern
gulong g_signal_add_emission_hook (guint signal_id,
          GQuark detail,
          GSignalEmissionHook hook_func,
          gpointer hook_data,
          GDestroyNotify data_destroy);
extern
void g_signal_remove_emission_hook (guint signal_id,
          gulong hook_id);



extern
gboolean g_signal_has_handler_pending (gpointer instance,
            guint signal_id,
            GQuark detail,
            gboolean may_be_blocked);
extern
gulong g_signal_connect_closure_by_id (gpointer instance,
            guint signal_id,
            GQuark detail,
            GClosure *closure,
            gboolean after);
extern
gulong g_signal_connect_closure (gpointer instance,
            const gchar *detailed_signal,
            GClosure *closure,
            gboolean after);
extern
gulong g_signal_connect_data (gpointer instance,
            const gchar *detailed_signal,
            GCallback c_handler,
            gpointer data,
            GClosureNotify destroy_data,
            GConnectFlags connect_flags);
extern
void g_signal_handler_block (gpointer instance,
            gulong handler_id);
extern
void g_signal_handler_unblock (gpointer instance,
            gulong handler_id);
extern
void g_signal_handler_disconnect (gpointer instance,
            gulong handler_id);
extern
gboolean g_signal_handler_is_connected (gpointer instance,
            gulong handler_id);
extern
gulong g_signal_handler_find (gpointer instance,
            GSignalMatchType mask,
            guint signal_id,
            GQuark detail,
            GClosure *closure,
            gpointer func,
            gpointer data);
extern
guint g_signal_handlers_block_matched (gpointer instance,
            GSignalMatchType mask,
            guint signal_id,
            GQuark detail,
            GClosure *closure,
            gpointer func,
            gpointer data);
extern
guint g_signal_handlers_unblock_matched (gpointer instance,
            GSignalMatchType mask,
            guint signal_id,
            GQuark detail,
            GClosure *closure,
            gpointer func,
            gpointer data);
extern
guint g_signal_handlers_disconnect_matched (gpointer instance,
            GSignalMatchType mask,
            guint signal_id,
            GQuark detail,
            GClosure *closure,
            gpointer func,
            gpointer data);



extern
void g_signal_override_class_closure (guint signal_id,
                                               GType instance_type,
                                               GClosure *class_closure);
extern
void g_signal_override_class_handler (const gchar *signal_name,
                                               GType instance_type,
                                               GCallback class_handler);
extern
void g_signal_chain_from_overridden (const GValue *instance_and_params,
                                               GValue *return_value);
extern
void g_signal_chain_from_overridden_handler (gpointer instance,
                                               ...);
# 585 "/usr/include/glib-2.0/gobject/gsignal.h"
extern
gboolean g_signal_accumulator_true_handled (GSignalInvocationHint *ihint,
         GValue *return_accu,
         const GValue *handler_return,
         gpointer dummy);

extern
gboolean g_signal_accumulator_first_wins (GSignalInvocationHint *ihint,
                                            GValue *return_accu,
                                            const GValue *handler_return,
                                            gpointer dummy);


extern
void g_signal_handlers_destroy (gpointer instance);
void _g_signals_destroy (GType itype);
# 29 "/usr/include/glib-2.0/gobject/gobject.h" 2
# 1 "/usr/include/glib-2.0/gobject/gboxed.h" 1
# 27 "/usr/include/glib-2.0/gobject/gboxed.h"
# 1 "/usr/include/glib-2.0/gobject/glib-types.h" 1
# 291 "/usr/include/glib-2.0/gobject/glib-types.h"
extern
GType g_date_get_type (void) __attribute__((__const__));
extern
GType g_strv_get_type (void) __attribute__((__const__));
extern
GType g_gstring_get_type (void) __attribute__((__const__));
extern
GType g_hash_table_get_type (void) __attribute__((__const__));
extern
GType g_array_get_type (void) __attribute__((__const__));
extern
GType g_byte_array_get_type (void) __attribute__((__const__));
extern
GType g_ptr_array_get_type (void) __attribute__((__const__));
extern
GType g_bytes_get_type (void) __attribute__((__const__));
extern
GType g_variant_type_get_gtype (void) __attribute__((__const__));
extern
GType g_regex_get_type (void) __attribute__((__const__));
extern
GType g_match_info_get_type (void) __attribute__((__const__));
extern
GType g_error_get_type (void) __attribute__((__const__));
extern
GType g_date_time_get_type (void) __attribute__((__const__));
extern
GType g_time_zone_get_type (void) __attribute__((__const__));
extern
GType g_io_channel_get_type (void) __attribute__((__const__));
extern
GType g_io_condition_get_type (void) __attribute__((__const__));
extern
GType g_variant_builder_get_type (void) __attribute__((__const__));
extern
GType g_variant_dict_get_type (void) __attribute__((__const__));
extern
GType g_key_file_get_type (void) __attribute__((__const__));
extern
GType g_main_loop_get_type (void) __attribute__((__const__));
extern
GType g_main_context_get_type (void) __attribute__((__const__));
extern
GType g_source_get_type (void) __attribute__((__const__));
extern
GType g_pollfd_get_type (void) __attribute__((__const__));
extern
GType g_thread_get_type (void) __attribute__((__const__));
extern
GType g_checksum_get_type (void) __attribute__((__const__));
extern
GType g_markup_parse_context_get_type (void) __attribute__((__const__));
extern
GType g_mapped_file_get_type (void) __attribute__((__const__));

__attribute__((__deprecated__)) extern
GType g_variant_get_gtype (void) __attribute__((__const__));






typedef gchar** GStrv;
# 28 "/usr/include/glib-2.0/gobject/gboxed.h" 2
# 56 "/usr/include/glib-2.0/gobject/gboxed.h"
typedef gpointer (*GBoxedCopyFunc) (gpointer boxed);
# 65 "/usr/include/glib-2.0/gobject/gboxed.h"
typedef void (*GBoxedFreeFunc) (gpointer boxed);



extern
gpointer g_boxed_copy (GType boxed_type,
                                           gconstpointer src_boxed);
extern
void g_boxed_free (GType boxed_type,
                                           gpointer boxed);
extern
void g_value_set_boxed (GValue *value,
                                           gconstpointer v_boxed);
extern
void g_value_set_static_boxed (GValue *value,
                                           gconstpointer v_boxed);
extern
void g_value_take_boxed (GValue *value,
                                           gconstpointer v_boxed);
__attribute__((__deprecated__)) extern
void g_value_set_boxed_take_ownership (GValue *value,
                                           gconstpointer v_boxed);
extern
gpointer g_value_get_boxed (const GValue *value);
extern
gpointer g_value_dup_boxed (const GValue *value);



extern
GType g_boxed_type_register_static (const gchar *name,
                                           GBoxedCopyFunc boxed_copy,
                                           GBoxedFreeFunc boxed_free);
# 115 "/usr/include/glib-2.0/gobject/gboxed.h"
extern
GType g_closure_get_type (void) __attribute__((__const__));
extern
GType g_value_get_type (void) __attribute__((__const__));
# 30 "/usr/include/glib-2.0/gobject/gobject.h" 2
# 187 "/usr/include/glib-2.0/gobject/gobject.h"
typedef struct _GObject GObject;
typedef struct _GObjectClass GObjectClass;
typedef struct _GObject GInitiallyUnowned;
typedef struct _GObjectClass GInitiallyUnownedClass;
typedef struct _GObjectConstructParam GObjectConstructParam;
# 202 "/usr/include/glib-2.0/gobject/gobject.h"
typedef void (*GObjectGetPropertyFunc) (GObject *object,
                                         guint property_id,
                                         GValue *value,
                                         GParamSpec *pspec);
# 216 "/usr/include/glib-2.0/gobject/gobject.h"
typedef void (*GObjectSetPropertyFunc) (GObject *object,
                                         guint property_id,
                                         const GValue *value,
                                         GParamSpec *pspec);






typedef void (*GObjectFinalizeFunc) (GObject *object);
# 237 "/usr/include/glib-2.0/gobject/gobject.h"
typedef void (*GWeakNotify) (gpointer data,
      GObject *where_the_object_was);






struct _GObject
{
  GTypeInstance g_type_instance;


  volatile guint ref_count;
  GData *qdata;
};
# 316 "/usr/include/glib-2.0/gobject/gobject.h"
struct _GObjectClass
{
  GTypeClass g_type_class;


  GSList *construct_properties;



  GObject* (*constructor) (GType type,
                                 guint n_construct_properties,
                                 GObjectConstructParam *construct_properties);

  void (*set_property) (GObject *object,
                                         guint property_id,
                                         const GValue *value,
                                         GParamSpec *pspec);
  void (*get_property) (GObject *object,
                                         guint property_id,
                                         GValue *value,
                                         GParamSpec *pspec);
  void (*dispose) (GObject *object);
  void (*finalize) (GObject *object);

  void (*dispatch_properties_changed) (GObject *object,
          guint n_pspecs,
          GParamSpec **pspecs);

  void (*notify) (GObject *object,
      GParamSpec *pspec);


  void (*constructed) (GObject *object);


  gsize flags;


  gpointer pdummy[6];
};
# 365 "/usr/include/glib-2.0/gobject/gobject.h"
struct _GObjectConstructParam
{
  GParamSpec *pspec;
  GValue *value;
};
# 386 "/usr/include/glib-2.0/gobject/gobject.h"
extern
GType g_initially_unowned_get_type (void);
extern
void g_object_class_install_property (GObjectClass *oclass,
            guint property_id,
            GParamSpec *pspec);
extern
GParamSpec* g_object_class_find_property (GObjectClass *oclass,
            const gchar *property_name);
extern
GParamSpec**g_object_class_list_properties (GObjectClass *oclass,
            guint *n_properties);
extern
void g_object_class_override_property (GObjectClass *oclass,
            guint property_id,
            const gchar *name);
extern
void g_object_class_install_properties (GObjectClass *oclass,
                                               guint n_pspecs,
                                               GParamSpec **pspecs);

extern
void g_object_interface_install_property (gpointer g_iface,
       GParamSpec *pspec);
extern
GParamSpec* g_object_interface_find_property (gpointer g_iface,
       const gchar *property_name);
extern
GParamSpec**g_object_interface_list_properties (gpointer g_iface,
       guint *n_properties_p);

extern
GType g_object_get_type (void) __attribute__((__const__));
extern
gpointer g_object_new (GType object_type,
            const gchar *first_property_name,
            ...);
extern
gpointer g_object_newv (GType object_type,
            guint n_parameters,
            GParameter *parameters);
extern
GObject* g_object_new_valist (GType object_type,
            const gchar *first_property_name,
            va_list var_args);
extern
void g_object_set (gpointer object,
            const gchar *first_property_name,
            ...) __attribute__((__sentinel__));
extern
void g_object_get (gpointer object,
            const gchar *first_property_name,
            ...) __attribute__((__sentinel__));
extern
gpointer g_object_connect (gpointer object,
            const gchar *signal_spec,
            ...) __attribute__((__sentinel__));
extern
void g_object_disconnect (gpointer object,
            const gchar *signal_spec,
            ...) __attribute__((__sentinel__));
extern
void g_object_set_valist (GObject *object,
            const gchar *first_property_name,
            va_list var_args);
extern
void g_object_get_valist (GObject *object,
            const gchar *first_property_name,
            va_list var_args);
extern
void g_object_set_property (GObject *object,
            const gchar *property_name,
            const GValue *value);
extern
void g_object_get_property (GObject *object,
            const gchar *property_name,
            GValue *value);
extern
void g_object_freeze_notify (GObject *object);
extern
void g_object_notify (GObject *object,
            const gchar *property_name);
extern
void g_object_notify_by_pspec (GObject *object,
            GParamSpec *pspec);
extern
void g_object_thaw_notify (GObject *object);
extern
gboolean g_object_is_floating (gpointer object);
extern
gpointer g_object_ref_sink (gpointer object);
extern
gpointer g_object_ref (gpointer object);
extern
void g_object_unref (gpointer object);
extern
void g_object_weak_ref (GObject *object,
            GWeakNotify notify,
            gpointer data);
extern
void g_object_weak_unref (GObject *object,
            GWeakNotify notify,
            gpointer data);
extern
void g_object_add_weak_pointer (GObject *object,
                                               gpointer *weak_pointer_location);
extern
void g_object_remove_weak_pointer (GObject *object,
                                               gpointer *weak_pointer_location);
# 508 "/usr/include/glib-2.0/gobject/gobject.h"
typedef void (*GToggleNotify) (gpointer data,
          GObject *object,
          gboolean is_last_ref);

extern
void g_object_add_toggle_ref (GObject *object,
     GToggleNotify notify,
     gpointer data);
extern
void g_object_remove_toggle_ref (GObject *object,
     GToggleNotify notify,
     gpointer data);

extern
gpointer g_object_get_qdata (GObject *object,
            GQuark quark);
extern
void g_object_set_qdata (GObject *object,
            GQuark quark,
            gpointer data);
extern
void g_object_set_qdata_full (GObject *object,
            GQuark quark,
            gpointer data,
            GDestroyNotify destroy);
extern
gpointer g_object_steal_qdata (GObject *object,
            GQuark quark);

extern
gpointer g_object_dup_qdata (GObject *object,
                                               GQuark quark,
                                               GDuplicateFunc dup_func,
            gpointer user_data);
extern
gboolean g_object_replace_qdata (GObject *object,
                                               GQuark quark,
                                               gpointer oldval,
                                               gpointer newval,
                                               GDestroyNotify destroy,
            GDestroyNotify *old_destroy);

extern
gpointer g_object_get_data (GObject *object,
            const gchar *key);
extern
void g_object_set_data (GObject *object,
            const gchar *key,
            gpointer data);
extern
void g_object_set_data_full (GObject *object,
            const gchar *key,
            gpointer data,
            GDestroyNotify destroy);
extern
gpointer g_object_steal_data (GObject *object,
            const gchar *key);

extern
gpointer g_object_dup_data (GObject *object,
                                               const gchar *key,
                                               GDuplicateFunc dup_func,
            gpointer user_data);
extern
gboolean g_object_replace_data (GObject *object,
                                               const gchar *key,
                                               gpointer oldval,
                                               gpointer newval,
                                               GDestroyNotify destroy,
            GDestroyNotify *old_destroy);


extern
void g_object_watch_closure (GObject *object,
            GClosure *closure);
extern
GClosure* g_cclosure_new_object (GCallback callback_func,
            GObject *object);
extern
GClosure* g_cclosure_new_object_swap (GCallback callback_func,
            GObject *object);
extern
GClosure* g_closure_new_object (guint sizeof_closure,
            GObject *object);
extern
void g_value_set_object (GValue *value,
            gpointer v_object);
extern
gpointer g_value_get_object (const GValue *value);
extern
gpointer g_value_dup_object (const GValue *value);
extern
gulong g_signal_connect_object (gpointer instance,
            const gchar *detailed_signal,
            GCallback c_handler,
            gpointer gobject,
            GConnectFlags connect_flags);


extern
void g_object_force_floating (GObject *object);
extern
void g_object_run_dispose (GObject *object);


extern
void g_value_take_object (GValue *value,
            gpointer v_object);
__attribute__((__deprecated__)) extern
void g_value_set_object_take_ownership (GValue *value,
                                               gpointer v_object);

__attribute__((__deprecated__)) extern
gsize g_object_compat_control (gsize what,
            gpointer data);
# 650 "/usr/include/glib-2.0/gobject/gobject.h"
extern
void g_clear_object (volatile GObject **object_ptr);


typedef struct {

    union { gpointer p; } priv;
} GWeakRef;

extern
void g_weak_ref_init (GWeakRef *weak_ref,
                                gpointer object);
extern
void g_weak_ref_clear (GWeakRef *weak_ref);
extern
gpointer g_weak_ref_get (GWeakRef *weak_ref);
extern
void g_weak_ref_set (GWeakRef *weak_ref,
                                gpointer object);
# 30 "/usr/include/glib-2.0/gobject/gbinding.h" 2
# 47 "/usr/include/glib-2.0/gobject/gbinding.h"
typedef struct _GBinding GBinding;
# 68 "/usr/include/glib-2.0/gobject/gbinding.h"
typedef gboolean (* GBindingTransformFunc) (GBinding *binding,
                                            const GValue *from_value,
                                            GValue *to_value,
                                            gpointer user_data);
# 96 "/usr/include/glib-2.0/gobject/gbinding.h"
typedef enum {
  G_BINDING_DEFAULT = 0,

  G_BINDING_BIDIRECTIONAL = 1 << 0,
  G_BINDING_SYNC_CREATE = 1 << 1,
  G_BINDING_INVERT_BOOLEAN = 1 << 2
} GBindingFlags;

extern
GType g_binding_flags_get_type (void) __attribute__((__const__));
extern
GType g_binding_get_type (void) __attribute__((__const__));

extern
GBindingFlags g_binding_get_flags (GBinding *binding);
extern
GObject * g_binding_get_source (GBinding *binding);
extern
GObject * g_binding_get_target (GBinding *binding);
extern
const gchar * g_binding_get_source_property (GBinding *binding);
extern
const gchar * g_binding_get_target_property (GBinding *binding);
extern
void g_binding_unbind (GBinding *binding);

extern
GBinding *g_object_bind_property (gpointer source,
                                                const gchar *source_property,
                                                gpointer target,
                                                const gchar *target_property,
                                                GBindingFlags flags);
extern
GBinding *g_object_bind_property_full (gpointer source,
                                                const gchar *source_property,
                                                gpointer target,
                                                const gchar *target_property,
                                                GBindingFlags flags,
                                                GBindingTransformFunc transform_to,
                                                GBindingTransformFunc transform_from,
                                                gpointer user_data,
                                                GDestroyNotify notify);
extern
GBinding *g_object_bind_property_with_closures (gpointer source,
                                                const gchar *source_property,
                                                gpointer target,
                                                const gchar *target_property,
                                                GBindingFlags flags,
                                                GClosure *transform_to,
                                                GClosure *transform_from);
# 24 "/usr/include/glib-2.0/glib-object.h" 2

# 1 "/usr/include/glib-2.0/gobject/genums.h" 1
# 138 "/usr/include/glib-2.0/gobject/genums.h"
typedef struct _GEnumClass GEnumClass;
typedef struct _GFlagsClass GFlagsClass;
typedef struct _GEnumValue GEnumValue;
typedef struct _GFlagsValue GFlagsValue;
# 155 "/usr/include/glib-2.0/gobject/genums.h"
struct _GEnumClass
{
  GTypeClass g_type_class;


  gint minimum;
  gint maximum;
  guint n_values;
  GEnumValue *values;
};
# 176 "/usr/include/glib-2.0/gobject/genums.h"
struct _GFlagsClass
{
  GTypeClass g_type_class;


  guint mask;
  guint n_values;
  GFlagsValue *values;
};
# 194 "/usr/include/glib-2.0/gobject/genums.h"
struct _GEnumValue
{
  gint value;
  const gchar *value_name;
  const gchar *value_nick;
};
# 209 "/usr/include/glib-2.0/gobject/genums.h"
struct _GFlagsValue
{
  guint value;
  const gchar *value_name;
  const gchar *value_nick;
};



extern
GEnumValue* g_enum_get_value (GEnumClass *enum_class,
       gint value);
extern
GEnumValue* g_enum_get_value_by_name (GEnumClass *enum_class,
       const gchar *name);
extern
GEnumValue* g_enum_get_value_by_nick (GEnumClass *enum_class,
       const gchar *nick);
extern
GFlagsValue* g_flags_get_first_value (GFlagsClass *flags_class,
       guint value);
extern
GFlagsValue* g_flags_get_value_by_name (GFlagsClass *flags_class,
       const gchar *name);
extern
GFlagsValue* g_flags_get_value_by_nick (GFlagsClass *flags_class,
       const gchar *nick);
extern
void g_value_set_enum (GValue *value,
       gint v_enum);
extern
gint g_value_get_enum (const GValue *value);
extern
void g_value_set_flags (GValue *value,
       guint v_flags);
extern
guint g_value_get_flags (const GValue *value);







extern
GType g_enum_register_static (const gchar *name,
        const GEnumValue *const_static_values);
extern
GType g_flags_register_static (const gchar *name,
        const GFlagsValue *const_static_values);



extern
void g_enum_complete_type_info (GType g_enum_type,
        GTypeInfo *info,
        const GEnumValue *const_values);
extern
void g_flags_complete_type_info (GType g_flags_type,
        GTypeInfo *info,
        const GFlagsValue *const_values);
# 26 "/usr/include/glib-2.0/glib-object.h" 2


# 1 "/usr/include/glib-2.0/gobject/gparamspecs.h" 1
# 586 "/usr/include/glib-2.0/gobject/gparamspecs.h"
typedef struct _GParamSpecChar GParamSpecChar;
typedef struct _GParamSpecUChar GParamSpecUChar;
typedef struct _GParamSpecBoolean GParamSpecBoolean;
typedef struct _GParamSpecInt GParamSpecInt;
typedef struct _GParamSpecUInt GParamSpecUInt;
typedef struct _GParamSpecLong GParamSpecLong;
typedef struct _GParamSpecULong GParamSpecULong;
typedef struct _GParamSpecInt64 GParamSpecInt64;
typedef struct _GParamSpecUInt64 GParamSpecUInt64;
typedef struct _GParamSpecUnichar GParamSpecUnichar;
typedef struct _GParamSpecEnum GParamSpecEnum;
typedef struct _GParamSpecFlags GParamSpecFlags;
typedef struct _GParamSpecFloat GParamSpecFloat;
typedef struct _GParamSpecDouble GParamSpecDouble;
typedef struct _GParamSpecString GParamSpecString;
typedef struct _GParamSpecParam GParamSpecParam;
typedef struct _GParamSpecBoxed GParamSpecBoxed;
typedef struct _GParamSpecPointer GParamSpecPointer;
typedef struct _GParamSpecValueArray GParamSpecValueArray;
typedef struct _GParamSpecObject GParamSpecObject;
typedef struct _GParamSpecOverride GParamSpecOverride;
typedef struct _GParamSpecGType GParamSpecGType;
typedef struct _GParamSpecVariant GParamSpecVariant;
# 619 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecChar
{
  GParamSpec parent_instance;

  gint8 minimum;
  gint8 maximum;
  gint8 default_value;
};
# 636 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecUChar
{
  GParamSpec parent_instance;

  guint8 minimum;
  guint8 maximum;
  guint8 default_value;
};







struct _GParamSpecBoolean
{
  GParamSpec parent_instance;

  gboolean default_value;
};
# 666 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecInt
{
  GParamSpec parent_instance;

  gint minimum;
  gint maximum;
  gint default_value;
};
# 683 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecUInt
{
  GParamSpec parent_instance;

  guint minimum;
  guint maximum;
  guint default_value;
};
# 700 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecLong
{
  GParamSpec parent_instance;

  glong minimum;
  glong maximum;
  glong default_value;
};
# 717 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecULong
{
  GParamSpec parent_instance;

  gulong minimum;
  gulong maximum;
  gulong default_value;
};
# 734 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecInt64
{
  GParamSpec parent_instance;

  gint64 minimum;
  gint64 maximum;
  gint64 default_value;
};
# 751 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecUInt64
{
  GParamSpec parent_instance;

  guint64 minimum;
  guint64 maximum;
  guint64 default_value;
};







struct _GParamSpecUnichar
{
  GParamSpec parent_instance;

  gunichar default_value;
};
# 781 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecEnum
{
  GParamSpec parent_instance;

  GEnumClass *enum_class;
  gint default_value;
};
# 797 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecFlags
{
  GParamSpec parent_instance;

  GFlagsClass *flags_class;
  guint default_value;
};
# 815 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecFloat
{
  GParamSpec parent_instance;

  gfloat minimum;
  gfloat maximum;
  gfloat default_value;
  gfloat epsilon;
};
# 835 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecDouble
{
  GParamSpec parent_instance;

  gdouble minimum;
  gdouble maximum;
  gdouble default_value;
  gdouble epsilon;
};
# 857 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecString
{
  GParamSpec parent_instance;

  gchar *default_value;
  gchar *cset_first;
  gchar *cset_nth;
  gchar substitutor;
  guint null_fold_if_empty : 1;
  guint ensure_non_null : 1;
};







struct _GParamSpecParam
{
  GParamSpec parent_instance;
};






struct _GParamSpecBoxed
{
  GParamSpec parent_instance;
};






struct _GParamSpecPointer
{
  GParamSpec parent_instance;
};
# 907 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecValueArray
{
  GParamSpec parent_instance;
  GParamSpec *element_spec;
  guint fixed_n_elements;
};






struct _GParamSpecObject
{
  GParamSpec parent_instance;
};
# 937 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecOverride
{

  GParamSpec parent_instance;
  GParamSpec *overridden;
};
# 952 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecGType
{
  GParamSpec parent_instance;
  GType is_a_type;
};
# 967 "/usr/include/glib-2.0/gobject/gparamspecs.h"
struct _GParamSpecVariant
{
  GParamSpec parent_instance;
  GVariantType *type;
  GVariant *default_value;


  gpointer padding[4];
};


extern
GParamSpec* g_param_spec_char (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       gint8 minimum,
       gint8 maximum,
       gint8 default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_uchar (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       guint8 minimum,
       guint8 maximum,
       guint8 default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_boolean (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       gboolean default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_int (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       gint minimum,
       gint maximum,
       gint default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_uint (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       guint minimum,
       guint maximum,
       guint default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_long (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       glong minimum,
       glong maximum,
       glong default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_ulong (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       gulong minimum,
       gulong maximum,
       gulong default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_int64 (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       gint64 minimum,
       gint64 maximum,
       gint64 default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_uint64 (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       guint64 minimum,
       guint64 maximum,
       guint64 default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_unichar (const gchar *name,
              const gchar *nick,
              const gchar *blurb,
              gunichar default_value,
              GParamFlags flags);
extern
GParamSpec* g_param_spec_enum (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GType enum_type,
       gint default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_flags (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GType flags_type,
       guint default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_float (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       gfloat minimum,
       gfloat maximum,
       gfloat default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_double (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       gdouble minimum,
       gdouble maximum,
       gdouble default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_string (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       const gchar *default_value,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_param (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GType param_type,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_boxed (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GType boxed_type,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_pointer (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_value_array (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GParamSpec *element_spec,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_object (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GType object_type,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_override (const gchar *name,
       GParamSpec *overridden);
extern
GParamSpec* g_param_spec_gtype (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       GType is_a_type,
       GParamFlags flags);
extern
GParamSpec* g_param_spec_variant (const gchar *name,
       const gchar *nick,
       const gchar *blurb,
       const GVariantType *type,
       GVariant *default_value,
       GParamFlags flags);
# 1160 "/usr/include/glib-2.0/gobject/gparamspecs.h"
extern GType *g_param_spec_types;
# 29 "/usr/include/glib-2.0/glib-object.h" 2

# 1 "/usr/include/glib-2.0/gobject/gsourceclosure.h" 1
# 29 "/usr/include/glib-2.0/gobject/gsourceclosure.h"
extern
void g_source_set_closure (GSource *source,
      GClosure *closure);

extern
void g_source_set_dummy_callback (GSource *source);
# 31 "/usr/include/glib-2.0/glib-object.h" 2

# 1 "/usr/include/glib-2.0/gobject/gtypemodule.h" 1
# 29 "/usr/include/glib-2.0/gobject/gtypemodule.h"
typedef struct _GTypeModule GTypeModule;
typedef struct _GTypeModuleClass GTypeModuleClass;
# 46 "/usr/include/glib-2.0/gobject/gtypemodule.h"
struct _GTypeModule
{
  GObject parent_instance;

  guint use_count;
  GSList *type_infos;
  GSList *interface_infos;


  gchar *name;
};
# 68 "/usr/include/glib-2.0/gobject/gtypemodule.h"
struct _GTypeModuleClass
{
  GObjectClass parent_class;


  gboolean (* load) (GTypeModule *module);
  void (* unload) (GTypeModule *module);



  void (*reserved1) (void);
  void (*reserved2) (void);
  void (*reserved3) (void);
  void (*reserved4) (void);
};
# 247 "/usr/include/glib-2.0/gobject/gtypemodule.h"
extern
GType g_type_module_get_type (void) __attribute__((__const__));
extern
gboolean g_type_module_use (GTypeModule *module);
extern
void g_type_module_unuse (GTypeModule *module);
extern
void g_type_module_set_name (GTypeModule *module,
                                       const gchar *name);
extern
GType g_type_module_register_type (GTypeModule *module,
                                       GType parent_type,
                                       const gchar *type_name,
                                       const GTypeInfo *type_info,
                                       GTypeFlags flags);
extern
void g_type_module_add_interface (GTypeModule *module,
                                       GType instance_type,
                                       GType interface_type,
                                       const GInterfaceInfo *interface_info);
extern
GType g_type_module_register_enum (GTypeModule *module,
                                       const gchar *name,
                                       const GEnumValue *const_static_values);
extern
GType g_type_module_register_flags (GTypeModule *module,
                                       const gchar *name,
                                       const GFlagsValue *const_static_values);
# 33 "/usr/include/glib-2.0/glib-object.h" 2
# 1 "/usr/include/glib-2.0/gobject/gtypeplugin.h" 1
# 38 "/usr/include/glib-2.0/gobject/gtypeplugin.h"
typedef struct _GTypePluginClass GTypePluginClass;







typedef void (*GTypePluginUse) (GTypePlugin *plugin);






typedef void (*GTypePluginUnuse) (GTypePlugin *plugin);
# 63 "/usr/include/glib-2.0/gobject/gtypeplugin.h"
typedef void (*GTypePluginCompleteTypeInfo) (GTypePlugin *plugin,
         GType g_type,
         GTypeInfo *info,
         GTypeValueTable *value_table);
# 77 "/usr/include/glib-2.0/gobject/gtypeplugin.h"
typedef void (*GTypePluginCompleteInterfaceInfo) (GTypePlugin *plugin,
         GType instance_type,
         GType interface_type,
         GInterfaceInfo *info);
# 101 "/usr/include/glib-2.0/gobject/gtypeplugin.h"
struct _GTypePluginClass
{

  GTypeInterface base_iface;


  GTypePluginUse use_plugin;
  GTypePluginUnuse unuse_plugin;
  GTypePluginCompleteTypeInfo complete_type_info;
  GTypePluginCompleteInterfaceInfo complete_interface_info;
};



extern
GType g_type_plugin_get_type (void) __attribute__((__const__));
extern
void g_type_plugin_use (GTypePlugin *plugin);
extern
void g_type_plugin_unuse (GTypePlugin *plugin);
extern
void g_type_plugin_complete_type_info (GTypePlugin *plugin,
       GType g_type,
       GTypeInfo *info,
       GTypeValueTable *value_table);
extern
void g_type_plugin_complete_interface_info (GTypePlugin *plugin,
       GType instance_type,
       GType interface_type,
       GInterfaceInfo *info);
# 34 "/usr/include/glib-2.0/glib-object.h" 2

# 1 "/usr/include/glib-2.0/gobject/gvaluearray.h" 1
# 41 "/usr/include/glib-2.0/gobject/gvaluearray.h"
typedef struct _GValueArray GValueArray;







struct _GValueArray
{
  guint n_values;
  GValue *values;


  guint n_prealloced;
};


__attribute__((__deprecated__)) extern
GType g_value_array_get_type (void) __attribute__((__const__));

__attribute__((__deprecated__)) extern
GValue* g_value_array_get_nth (GValueArray *value_array,
           guint index_);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_new (guint n_prealloced);

__attribute__((__deprecated__)) extern
void g_value_array_free (GValueArray *value_array);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_copy (const GValueArray *value_array);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_prepend (GValueArray *value_array,
           const GValue *value);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_append (GValueArray *value_array,
           const GValue *value);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_insert (GValueArray *value_array,
           guint index_,
           const GValue *value);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_remove (GValueArray *value_array,
           guint index_);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_sort (GValueArray *value_array,
           GCompareFunc compare_func);

__attribute__((__deprecated__)) extern
GValueArray* g_value_array_sort_with_data (GValueArray *value_array,
           GCompareDataFunc compare_func,
           gpointer user_data);
# 36 "/usr/include/glib-2.0/glib-object.h" 2
# 1 "/usr/include/glib-2.0/gobject/gvaluetypes.h" 1
# 178 "/usr/include/glib-2.0/gobject/gvaluetypes.h"
__attribute__((__deprecated__)) extern
void g_value_set_char (GValue *value,
                                                 gchar v_char);
__attribute__((__deprecated__)) extern
gchar g_value_get_char (const GValue *value);
extern
void g_value_set_schar (GValue *value,
       gint8 v_char);
extern
gint8 g_value_get_schar (const GValue *value);
extern
void g_value_set_uchar (GValue *value,
       guchar v_uchar);
extern
guchar g_value_get_uchar (const GValue *value);
extern
void g_value_set_boolean (GValue *value,
       gboolean v_boolean);
extern
gboolean g_value_get_boolean (const GValue *value);
extern
void g_value_set_int (GValue *value,
       gint v_int);
extern
gint g_value_get_int (const GValue *value);
extern
void g_value_set_uint (GValue *value,
       guint v_uint);
extern
guint g_value_get_uint (const GValue *value);
extern
void g_value_set_long (GValue *value,
       glong v_long);
extern
glong g_value_get_long (const GValue *value);
extern
void g_value_set_ulong (GValue *value,
       gulong v_ulong);
extern
gulong g_value_get_ulong (const GValue *value);
extern
void g_value_set_int64 (GValue *value,
       gint64 v_int64);
extern
gint64 g_value_get_int64 (const GValue *value);
extern
void g_value_set_uint64 (GValue *value,
       guint64 v_uint64);
extern
guint64 g_value_get_uint64 (const GValue *value);
extern
void g_value_set_float (GValue *value,
       gfloat v_float);
extern
gfloat g_value_get_float (const GValue *value);
extern
void g_value_set_double (GValue *value,
       gdouble v_double);
extern
gdouble g_value_get_double (const GValue *value);
extern
void g_value_set_string (GValue *value,
       const gchar *v_string);
extern
void g_value_set_static_string (GValue *value,
       const gchar *v_string);
extern
const gchar * g_value_get_string (const GValue *value);
extern
gchar* g_value_dup_string (const GValue *value);
extern
void g_value_set_pointer (GValue *value,
       gpointer v_pointer);
extern
gpointer g_value_get_pointer (const GValue *value);
extern
GType g_gtype_get_type (void);
extern
void g_value_set_gtype (GValue *value,
       GType v_gtype);
extern
GType g_value_get_gtype (const GValue *value);
extern
void g_value_set_variant (GValue *value,
       GVariant *variant);
extern
void g_value_take_variant (GValue *value,
       GVariant *variant);
extern
GVariant* g_value_get_variant (const GValue *value);
extern
GVariant* g_value_dup_variant (const GValue *value);



extern
GType g_pointer_type_register_static (const gchar *name);


extern
gchar* g_strdup_value_contents (const GValue *value);


extern
void g_value_take_string (GValue *value,
       gchar *v_string);
__attribute__((__deprecated__)) extern
void g_value_set_string_take_ownership (GValue *value,
                                                 gchar *v_string);
# 295 "/usr/include/glib-2.0/gobject/gvaluetypes.h"
typedef gchar* gchararray;
# 37 "/usr/include/glib-2.0/glib-object.h" 2
# 23 "/usr/include/gegl-0.2/gegl.h" 2
# 1 "/usr/include/babl-0.1/babl/babl.h" 1
# 27 "/usr/include/babl-0.1/babl/babl.h"
# 1 "/usr/include/babl-0.1/babl/babl-macros.h" 1
# 28 "/usr/include/babl-0.1/babl/babl.h" 2
# 1 "/usr/include/babl-0.1/babl/babl-types.h" 1
# 31 "/usr/include/babl-0.1/babl/babl-types.h"
typedef union _Babl Babl;




typedef long (*BablFuncLinear) (const char *src,
                                   char *dst,
                                   long n,
                                   void *user_data);


typedef long (*BablFuncPlanar) (int src_bands,
                                   const char *src[],
                                   int src_pitch[],
                                   int dst_bands,
                                   char *dst[],
                                   int dst_pitch[],
                                   long n,
                                   void *user_data);
# 29 "/usr/include/babl-0.1/babl/babl.h" 2
# 1 "/usr/include/babl-0.1/babl/babl-version.h" 1
# 40 "/usr/include/babl-0.1/babl/babl-version.h"
void babl_get_version (int *major,
                         int *minor,
                         int *micro);
# 30 "/usr/include/babl-0.1/babl/babl.h" 2






void babl_init (void);





void babl_exit (void);





const Babl * babl_type (const char *name);






const Babl * babl_sampling (int horizontal,
                             int vertical);





const Babl * babl_component (const char *name);





const Babl * babl_model (const char *name);





const Babl * babl_format (const char *name);





const Babl * babl_fish (const void *source_format,
                             const void *destination_format);




long babl_process (const Babl *babl_fish,
                             const void *source,
                             void *destination,
                             long n);





const char * babl_get_name (const Babl *babl);




int babl_format_has_alpha (const Babl *format);




int babl_format_get_bytes_per_pixel (const Babl *format);




int babl_format_get_n_components (const Babl *format);





const Babl * babl_format_get_type (const Babl *format,
                                                int component_index);
# 131 "/usr/include/babl-0.1/babl/babl.h"
const Babl * babl_type_new (void *first_arg,
                            ...) __attribute__((__sentinel__));







const Babl * babl_component_new (void *first_arg,
                                  ...) __attribute__((__sentinel__));
# 152 "/usr/include/babl-0.1/babl/babl.h"
const Babl * babl_model_new (void *first_arg,
                            ...) __attribute__((__sentinel__));
# 172 "/usr/include/babl-0.1/babl/babl.h"
const Babl * babl_format_new (const void *first_arg,
                              ...) __attribute__((__sentinel__));







const Babl *
babl_format_n (const Babl *type,
               int components);




int babl_format_is_format_n (const Babl *format);
# 200 "/usr/include/babl-0.1/babl/babl.h"
const Babl * babl_conversion_new (const void *first_arg,
                                  ...) __attribute__((__sentinel__));
# 211 "/usr/include/babl-0.1/babl/babl.h"
const Babl *babl_new_palette (const char *name,
                              const Babl **format_u8,
                              const Babl **format_u8_with_alpha);




int babl_format_is_palette (const Babl *format);





void babl_palette_set_palette (const Babl *babl,
                                const Babl *format,
                                void *data,
                                int count);





void babl_palette_reset (const Babl *babl);
# 243 "/usr/include/babl-0.1/babl/babl.h"
void babl_set_user_data (const Babl *babl, void *data);




void * babl_get_user_data (const Babl *babl);
# 24 "/usr/include/gegl-0.2/gegl.h" 2

# 1 "/usr/include/gegl-0.2/gegl-types.h" 1
# 23 "/usr/include/gegl-0.2/gegl-types.h"
# 1 "/usr/include/gegl-0.2/gegl-enums.h" 1
# 34 "/usr/include/gegl-0.2/gegl-enums.h"
typedef enum {
  GEGL_SAMPLER_NEAREST = 0,
  GEGL_SAMPLER_LINEAR,
  GEGL_SAMPLER_CUBIC,
  GEGL_SAMPLER_LOHALO
} GeglSamplerType;
GType gegl_sampler_type_get_type (void) __attribute__((__const__));


typedef enum {
  GEGL_ABYSS_NONE
} GeglAbyssPolicy;
GType gegl_abyss_policy_get_type (void) __attribute__((__const__));






typedef enum {
  GEGl_RIPPLE_WAVE_TYPE_SINE,
  GEGl_RIPPLE_WAVE_TYPE_SAWTOOTH
} GeglRippleWaveType;
GType gegl_ripple_wave_type_get_type (void) __attribute__((__const__));


typedef enum
{
  GEGL_WARP_BEHAVIOR_MOVE,
  GEGL_WARP_BEHAVIOR_GROW,
  GEGL_WARP_BEHAVIOR_SHRINK,
  GEGL_WARP_BEHAVIOR_SWIRL_CW,
  GEGL_WARP_BEHAVIOR_SWIRL_CCW,
  GEGL_WARP_BEHAVIOR_ERASE,
  GEGL_WARP_BEHAVIOR_SMOOTH
} GeglWarpBehavior;
GType gegl_warp_behavior_get_type (void) __attribute__((__const__));
# 24 "/usr/include/gegl-0.2/gegl-types.h" 2





typedef enum
{
  GEGL_PARAM_PAD_OUTPUT = 1 << (8),
  GEGL_PARAM_PAD_INPUT = 1 << ((8) + 1)
} GeglPadType;

typedef enum
{
  GEGL_BLIT_DEFAULT = 0,
  GEGL_BLIT_CACHE = 1 << 0,
  GEGL_BLIT_DIRTY = 1 << 1
} GeglBlitFlags;

typedef struct _GeglConfig GeglConfig;
typedef struct _GeglCurve GeglCurve;
typedef struct _GeglPath GeglPath;
typedef struct _GeglColor GeglColor;

typedef struct _GeglRectangle
{
  gint x;
  gint y;
  gint width;
  gint height;
} GeglRectangle;
GType gegl_rectangle_get_type (void) __attribute__((__const__));





typedef struct _GeglNode GeglNode;
GType gegl_node_get_type (void) __attribute__((__const__));




typedef struct _GeglProcessor GeglProcessor;
GType gegl_processor_get_type (void) __attribute__((__const__));
# 26 "/usr/include/gegl-0.2/gegl.h" 2

# 1 "/usr/include/gegl-0.2/gegl-buffer.h" 1
# 24 "/usr/include/gegl-0.2/gegl-buffer.h"
# 1 "/usr/include/gegl-0.2/gegl-matrix.h" 1
# 13 "/usr/include/gegl-0.2/gegl-matrix.h"
typedef struct {
    gdouble coeff[2][2];
} GeglMatrix2;
# 25 "/usr/include/gegl-0.2/gegl-matrix.h"
typedef struct {
    gdouble coeff[3][3];
} GeglMatrix3;
# 38 "/usr/include/gegl-0.2/gegl-matrix.h"
GType gegl_matrix3_get_type (void) __attribute__((__const__));






GeglMatrix3 * gegl_matrix3_new (void);







void gegl_matrix3_identity (GeglMatrix3 *matrix);
# 64 "/usr/include/gegl-0.2/gegl-matrix.h"
gboolean gegl_matrix3_equal (GeglMatrix3 *matrix1,
                                         GeglMatrix3 *matrix2);
# 75 "/usr/include/gegl-0.2/gegl-matrix.h"
gboolean gegl_matrix3_is_identity (GeglMatrix3 *matrix);
# 85 "/usr/include/gegl-0.2/gegl-matrix.h"
gboolean gegl_matrix3_is_scale (GeglMatrix3 *matrix);
# 95 "/usr/include/gegl-0.2/gegl-matrix.h"
gboolean gegl_matrix3_is_translate (GeglMatrix3 *matrix);
# 104 "/usr/include/gegl-0.2/gegl-matrix.h"
void gegl_matrix3_copy_into (GeglMatrix3 *dst,
                              GeglMatrix3 *src);







GeglMatrix3 * gegl_matrix3_copy (GeglMatrix3 *matrix);







gdouble gegl_matrix3_determinant (GeglMatrix3 *matrix);







void gegl_matrix3_invert (GeglMatrix3 *matrix);
# 139 "/usr/include/gegl-0.2/gegl-matrix.h"
void gegl_matrix3_multiply (GeglMatrix3 *left,
                                         GeglMatrix3 *right,
                                         GeglMatrix3 *product);
# 152 "/usr/include/gegl-0.2/gegl-matrix.h"
void gegl_matrix3_originate (GeglMatrix3 *matrix,
                                         gdouble x,
                                         gdouble y);
# 167 "/usr/include/gegl-0.2/gegl-matrix.h"
void gegl_matrix3_transform_point (GeglMatrix3 *matrix,
                                         gdouble *x,
                                         gdouble *y);
# 179 "/usr/include/gegl-0.2/gegl-matrix.h"
void gegl_matrix3_parse_string (GeglMatrix3 *matrix,
                                         const gchar *string);
# 191 "/usr/include/gegl-0.2/gegl-matrix.h"
gchar * gegl_matrix3_to_string (GeglMatrix3 *matrix);
# 25 "/usr/include/gegl-0.2/gegl-buffer.h" 2








typedef struct _GeglBuffer GeglBuffer;
typedef struct _GeglSampler GeglSampler;
# 48 "/usr/include/gegl-0.2/gegl-buffer.h"
GType gegl_buffer_get_type (void) __attribute__((__const__));
# 61 "/usr/include/gegl-0.2/gegl-buffer.h"
GeglBuffer * gegl_buffer_new (const GeglRectangle *extent,
                                               const Babl *format);
# 77 "/usr/include/gegl-0.2/gegl-buffer.h"
GeglBuffer * gegl_buffer_new_for_backend (const GeglRectangle *extent,
                                               void *backend);
# 90 "/usr/include/gegl-0.2/gegl-buffer.h"
GeglBuffer * gegl_buffer_open (const gchar *path);
# 101 "/usr/include/gegl-0.2/gegl-buffer.h"
void gegl_buffer_save (GeglBuffer *buffer,
                                               const gchar *path,
                                               const GeglRectangle *roi);
# 115 "/usr/include/gegl-0.2/gegl-buffer.h"
GeglBuffer * gegl_buffer_load (const gchar *path);
# 124 "/usr/include/gegl-0.2/gegl-buffer.h"
void gegl_buffer_flush (GeglBuffer *buffer);
# 134 "/usr/include/gegl-0.2/gegl-buffer.h"
GeglBuffer * gegl_buffer_create_sub_buffer (GeglBuffer *buffer,
                                               const GeglRectangle *extent);
# 145 "/usr/include/gegl-0.2/gegl-buffer.h"
const GeglRectangle * gegl_buffer_get_extent (GeglBuffer *buffer);
# 159 "/usr/include/gegl-0.2/gegl-buffer.h"
gboolean gegl_buffer_set_extent (GeglBuffer *buffer,
                                               const GeglRectangle *extent);
# 228 "/usr/include/gegl-0.2/gegl-buffer.h"
void gegl_buffer_get (GeglBuffer *buffer,
                                               const GeglRectangle *rect,
                                               gdouble scale,
                                               const Babl *format,
                                               gpointer dest,
                                               gint rowstride,
                                               GeglAbyssPolicy repeat_mode);
# 251 "/usr/include/gegl-0.2/gegl-buffer.h"
void gegl_buffer_set (GeglBuffer *buffer,
                                               const GeglRectangle *rect,
                                               gint scale_level,
                                               const Babl *format,
                                               const void *src,
                                               gint rowstride);
# 267 "/usr/include/gegl-0.2/gegl-buffer.h"
void gegl_buffer_set_color (GeglBuffer *buffer,
                                               const GeglRectangle *rect,
                                               GeglColor *color);
# 282 "/usr/include/gegl-0.2/gegl-buffer.h"
void gegl_buffer_set_pattern (GeglBuffer *buffer,
                                               const GeglRectangle *rect,
                                               GeglBuffer *pattern,
                                               gdouble x_offset,
                                               gdouble y_offset);
# 300 "/usr/include/gegl-0.2/gegl-buffer.h"
const Babl * gegl_buffer_get_format (GeglBuffer *buffer);
# 316 "/usr/include/gegl-0.2/gegl-buffer.h"
const Babl * gegl_buffer_set_format (GeglBuffer *buffer,
                                               const Babl *format);
# 327 "/usr/include/gegl-0.2/gegl-buffer.h"
void gegl_buffer_clear (GeglBuffer *buffer,
                                               const GeglRectangle *roi);
# 345 "/usr/include/gegl-0.2/gegl-buffer.h"
void gegl_buffer_copy (GeglBuffer *src,
                                               const GeglRectangle *src_rect,
                                               GeglBuffer *dst,
                                               const GeglRectangle *dst_rect);
# 359 "/usr/include/gegl-0.2/gegl-buffer.h"
GeglBuffer * gegl_buffer_dup (GeglBuffer *buffer);
# 381 "/usr/include/gegl-0.2/gegl-buffer.h"
void gegl_buffer_sample (GeglBuffer *buffer,
                                               gdouble x,
                                               gdouble y,
                                               GeglMatrix2 *scale,
                                               gpointer dest,
                                               const Babl *format,
                                               GeglSamplerType sampler_type,
                                               GeglAbyssPolicy repeat_mode);
# 402 "/usr/include/gegl-0.2/gegl-buffer.h"
void gegl_buffer_sample_cleanup (GeglBuffer *buffer);
# 413 "/usr/include/gegl-0.2/gegl-buffer.h"
GeglSamplerType gegl_sampler_type_from_string (const gchar *string);
# 426 "/usr/include/gegl-0.2/gegl-buffer.h"
GeglSampler * gegl_buffer_sampler_new (GeglBuffer *buffer,
                                               const Babl *format,
                                               GeglSamplerType sampler_type);
# 442 "/usr/include/gegl-0.2/gegl-buffer.h"
void gegl_sampler_get (GeglSampler *sampler,
                                               gdouble x,
                                               gdouble y,
                                               GeglMatrix2 *scale,
                                               void *output,
                                               GeglAbyssPolicy repeat_mode);







const GeglRectangle * gegl_sampler_get_context_rect (GeglSampler *sampler);
# 468 "/usr/include/gegl-0.2/gegl-buffer.h"
GeglBuffer * gegl_buffer_linear_new (const GeglRectangle *extent,
                                               const Babl *format);
# 489 "/usr/include/gegl-0.2/gegl-buffer.h"
GeglBuffer * gegl_buffer_linear_new_from_data (const gpointer data,
                                               const Babl *format,
                                               const GeglRectangle *extent,
                                               gint rowstride,
                                               GDestroyNotify destroy_fn,
                                               gpointer destroy_fn_data);
# 509 "/usr/include/gegl-0.2/gegl-buffer.h"
gpointer * gegl_buffer_linear_open (GeglBuffer *buffer,
                                               const GeglRectangle *extent,
                                               gint *rowstride,
                                               const Babl *format);
# 524 "/usr/include/gegl-0.2/gegl-buffer.h"
void gegl_buffer_linear_close (GeglBuffer *buffer,
                                               gpointer linear);
# 535 "/usr/include/gegl-0.2/gegl-buffer.h"
const GeglRectangle * gegl_buffer_get_abyss (GeglBuffer *buffer);


# 1 "/usr/include/gegl-0.2/gegl-buffer-iterator.h" 1
# 23 "/usr/include/gegl-0.2/gegl-buffer-iterator.h"
# 1 "/usr/include/gegl-0.2/gegl-buffer.h" 1
# 24 "/usr/include/gegl-0.2/gegl-buffer-iterator.h" 2







typedef struct GeglBufferIterator
{
  gint length;
  gpointer data[6];
  GeglRectangle roi[6];
  gint level;
} GeglBufferIterator;
# 57 "/usr/include/gegl-0.2/gegl-buffer-iterator.h"
GeglBufferIterator * gegl_buffer_iterator_new (GeglBuffer *buffer,
                                                const GeglRectangle *roi,
                                                gint level,
                                                const Babl *format,
                                                guint flags,
                                                GeglAbyssPolicy abyss_policy);
# 81 "/usr/include/gegl-0.2/gegl-buffer-iterator.h"
gint gegl_buffer_iterator_add (GeglBufferIterator *iterator,
                                                GeglBuffer *buffer,
                                                const GeglRectangle *roi,
                                                gint level,
                                                const Babl *format,
                                                guint flags,
                                                GeglAbyssPolicy abyss_policy);
# 96 "/usr/include/gegl-0.2/gegl-buffer-iterator.h"
void gegl_buffer_iterator_stop (GeglBufferIterator *iterator);
# 110 "/usr/include/gegl-0.2/gegl-buffer-iterator.h"
gboolean gegl_buffer_iterator_next (GeglBufferIterator *iterator);
# 538 "/usr/include/gegl-0.2/gegl-buffer.h" 2
# 28 "/usr/include/gegl-0.2/gegl.h" 2
# 1 "/usr/include/gegl-0.2/gegl-color.h" 1
# 33 "/usr/include/gegl-0.2/gegl-color.h"
typedef struct _GeglColorClass GeglColorClass;
typedef struct _GeglColorPrivate GeglColorPrivate;

struct _GeglColor
{
  GObject parent_instance;
  GeglColorPrivate *priv;
};

struct _GeglColorClass
{
  GObjectClass parent_class;
};

GType gegl_color_get_type (void) __attribute__((__const__));
# 66 "/usr/include/gegl-0.2/gegl-color.h"
GeglColor * gegl_color_new (const gchar *string);
# 79 "/usr/include/gegl-0.2/gegl-color.h"
void gegl_color_get_rgba (GeglColor *color,
                                                gdouble *red,
                                                gdouble *green,
                                                gdouble *blue,
                                                gdouble *alpha);
# 95 "/usr/include/gegl-0.2/gegl-color.h"
void gegl_color_set_rgba (GeglColor *color,
                                                gdouble red,
                                                gdouble green,
                                                gdouble blue,
                                                gdouble alpha);
# 108 "/usr/include/gegl-0.2/gegl-color.h"
void gegl_color_set_pixel (GeglColor *color,
                                                const Babl *format,
                                                const void *pixel);
# 119 "/usr/include/gegl-0.2/gegl-color.h"
void gegl_color_get_pixel (GeglColor *color,
                                                const Babl *format,
                                                void *pixel);







GType gegl_param_color_get_type (void) __attribute__((__const__));

GParamSpec * gegl_param_spec_color (const gchar *name,
                                                const gchar *nick,
                                                const gchar *blurb,
                                                GeglColor *default_color,
                                                GParamFlags flags);

GParamSpec * gegl_param_spec_color_from_string (const gchar *name,
                                                const gchar *nick,
                                                const gchar *blurb,
                                                const gchar *default_color_string,
                                                GParamFlags flags);
# 29 "/usr/include/gegl-0.2/gegl.h" 2
# 1 "/usr/include/gegl-0.2/gegl-curve.h" 1
# 41 "/usr/include/gegl-0.2/gegl-curve.h"
typedef struct _GeglCurveClass GeglCurveClass;

struct _GeglCurve
{
  GObject parent_instance;
};

struct _GeglCurveClass
{
  GObjectClass parent_class;
};

GType gegl_curve_get_type (void) __attribute__((__const__));
# 65 "/usr/include/gegl-0.2/gegl-curve.h"
GeglCurve * gegl_curve_new (gdouble y_min,
                                        gdouble y_max);
# 78 "/usr/include/gegl-0.2/gegl-curve.h"
void gegl_curve_get_y_bounds (GeglCurve *curve,
                                        gdouble *min_y,
                                        gdouble *max_y);
# 91 "/usr/include/gegl-0.2/gegl-curve.h"
guint gegl_curve_add_point (GeglCurve *curve,
                                        gdouble x,
                                        gdouble y);
# 104 "/usr/include/gegl-0.2/gegl-curve.h"
void gegl_curve_get_point (GeglCurve *curve,
                                        guint index,
                                        gdouble *x,
                                        gdouble *y);
# 118 "/usr/include/gegl-0.2/gegl-curve.h"
void gegl_curve_set_point (GeglCurve *curve,
                                        guint index,
                                        gdouble x,
                                        gdouble y);
# 131 "/usr/include/gegl-0.2/gegl-curve.h"
guint gegl_curve_num_points (GeglCurve *curve);
# 141 "/usr/include/gegl-0.2/gegl-curve.h"
gdouble gegl_curve_calc_value (GeglCurve *curve,
                                        gdouble x);
# 155 "/usr/include/gegl-0.2/gegl-curve.h"
void gegl_curve_calc_values (GeglCurve *curve,
                                        gdouble x_min,
                                        gdouble x_max,
                                        guint num_samples,
                                        gdouble *xs,
                                        gdouble *ys);







GeglCurve * gegl_curve_default_curve (void) __attribute__((__const__));

GType gegl_param_curve_get_type (void) __attribute__((__const__));

GParamSpec * gegl_param_spec_curve (const gchar *name,
                                        const gchar *nick,
                                        const gchar *blurb,
                                        GeglCurve *default_curve,
                                        GParamFlags flags);
# 30 "/usr/include/gegl-0.2/gegl.h" 2
# 1 "/usr/include/gegl-0.2/gegl-path.h" 1
# 43 "/usr/include/gegl-0.2/gegl-path.h"
typedef struct _GeglPathClass GeglPathClass;

struct _GeglPath
{
  GObject parent_instance;
};

GType gegl_path_get_type (void) __attribute__((__const__));
# 81 "/usr/include/gegl-0.2/gegl-path.h"
typedef struct GeglPathPoint
{
  gfloat x;
  gfloat y;
} GeglPathPoint;

typedef struct GeglPathItem
{
  gchar type;
  GeglPathPoint point[4];


} GeglPathItem;
# 103 "/usr/include/gegl-0.2/gegl-path.h"
GeglPath * gegl_path_new (void);
# 115 "/usr/include/gegl-0.2/gegl-path.h"
GeglPath * gegl_path_new_from_string(const gchar *instructions);
# 125 "/usr/include/gegl-0.2/gegl-path.h"
gboolean gegl_path_is_empty (GeglPath *path);
# 135 "/usr/include/gegl-0.2/gegl-path.h"
gint gegl_path_get_n_nodes (GeglPath *path);
# 145 "/usr/include/gegl-0.2/gegl-path.h"
gdouble gegl_path_get_length (GeglPath *path);
# 157 "/usr/include/gegl-0.2/gegl-path.h"
gboolean gegl_path_get_node (GeglPath *path,
                                               gint index,
                                               GeglPathItem *node);
# 170 "/usr/include/gegl-0.2/gegl-path.h"
gchar * gegl_path_to_string (GeglPath *path);
# 183 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_set_matrix (GeglPath *path,
                                               GeglMatrix3 *matrix);
# 193 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_get_matrix (GeglPath *path,
                                               GeglMatrix3 *matrix);
# 210 "/usr/include/gegl-0.2/gegl-path.h"
gdouble gegl_path_closest_point (GeglPath *path,
                                               gdouble x,
                                               gdouble y,
                                               gdouble *on_path_x,
                                               gdouble *on_path_y,
                                               gint *node_pos_before);
# 227 "/usr/include/gegl-0.2/gegl-path.h"
gboolean gegl_path_calc (GeglPath *path,
                                               gdouble pos,
                                               gdouble *x,
                                               gdouble *y);
# 242 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_calc_values (GeglPath *path,
                                               guint num_samples,
                                               gdouble *xs,
                                               gdouble *ys);
# 257 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_get_bounds (GeglPath *self,
                                               gdouble *min_x,
                                               gdouble *max_x,
                                               gdouble *min_y,
                                               gdouble *max_y);






typedef void ( *GeglNodeFunction ) ( const GeglPathItem *node,
                                      gpointer user_data );
# 282 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_foreach (GeglPath *path,
                                               GeglNodeFunction each_item,
                                               gpointer user_data);
# 295 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_foreach_flat (GeglPath *path,
                                               GeglNodeFunction each_item,
                                               gpointer user_data);
# 306 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_clear (GeglPath *path);
# 317 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_insert_node (GeglPath *path,
                                               gint pos,
                                               const GeglPathItem *node);
# 328 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_replace_node (GeglPath *path,
                                               gint pos,
                                               const GeglPathItem *node);







void gegl_path_remove_node (GeglPath *path,
                                               gint pos);
# 349 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_parse_string (GeglPath *path,
                                               const gchar *instructions);
# 361 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_append (GeglPath *path,
                                                            ...);
# 371 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_freeze (GeglPath *path);







void gegl_path_thaw (GeglPath *path);



GParamSpec * gegl_param_spec_path (const gchar *name,
                                               const gchar *nick,
                                               const gchar *blurb,
                                               GeglPath *default_path,
                                               GParamFlags flags);



GType gegl_param_path_get_type (void) __attribute__((__const__));
# 403 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_add_type (gchar type,
                                               gint items,
                                               const gchar *description);







typedef struct GeglPathList
{
  struct GeglPathList *next;
  GeglPathItem d;
} GeglPathList;
# 427 "/usr/include/gegl-0.2/gegl-path.h"
GeglPathList * gegl_path_list_append (GeglPathList *head, ...);







GeglPathList * gegl_path_list_destroy (GeglPathList *path);







typedef GeglPathList *(*GeglFlattenerFunc) (GeglPathList *original);
# 454 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_add_flattener (GeglFlattenerFunc func);
# 463 "/usr/include/gegl-0.2/gegl-path.h"
GeglPathList * gegl_path_get_path (GeglPath *path);







GeglPathList * gegl_path_get_flat_path (GeglPath *path);
# 486 "/usr/include/gegl-0.2/gegl-path.h"
void gegl_path_point_lerp (GeglPathPoint *dest,
                                               GeglPathPoint *a,
                                               GeglPathPoint *b,
                                               gfloat t);
# 498 "/usr/include/gegl-0.2/gegl-path.h"
gdouble gegl_path_point_dist (GeglPathPoint *a,
                                               GeglPathPoint *b);
# 31 "/usr/include/gegl-0.2/gegl.h" 2

# 1 "/usr/include/gegl-0.2/gegl-version.h" 1
# 49 "/usr/include/gegl-0.2/gegl-version.h"
void gegl_get_version (int *major,
                                          int *minor,
                                          int *micro);
# 33 "/usr/include/gegl-0.2/gegl.h" 2
# 98 "/usr/include/gegl-0.2/gegl.h"
void gegl_init (gint *argc,
                                          gchar ***argv);
# 108 "/usr/include/gegl-0.2/gegl.h"
GOptionGroup * gegl_get_option_group (void);
# 117 "/usr/include/gegl-0.2/gegl.h"
void gegl_exit (void);
# 146 "/usr/include/gegl-0.2/gegl.h"
gchar **gegl_list_operations (guint *n_operations_p);
# 157 "/usr/include/gegl-0.2/gegl.h"
GParamSpec** gegl_operation_list_properties (const gchar *operation_type,
                                             guint *n_properties_p);
# 199 "/usr/include/gegl-0.2/gegl.h"
GeglNode * gegl_node_new (void);
# 222 "/usr/include/gegl-0.2/gegl.h"
GeglNode * gegl_node_new_child (GeglNode *parent,
                                          const gchar *first_property_name,
                                          ...) __attribute__((__sentinel__));
# 250 "/usr/include/gegl-0.2/gegl.h"
gboolean gegl_node_connect_from (GeglNode *sink,
                                          const gchar *input_pad_name,
                                          GeglNode *source,
                                          const gchar *output_pad_name);
# 266 "/usr/include/gegl-0.2/gegl.h"
gboolean gegl_node_connect_to (GeglNode *source,
                                          const gchar *output_pad_name,
                                          GeglNode *sink,
                                          const gchar *input_pad_name);
# 280 "/usr/include/gegl-0.2/gegl.h"
void gegl_node_link (GeglNode *source,
                                          GeglNode *sink);
# 292 "/usr/include/gegl-0.2/gegl.h"
void gegl_node_link_many (GeglNode *source,
                                          GeglNode *first_sink,
                                          ...) __attribute__((__sentinel__));
# 305 "/usr/include/gegl-0.2/gegl.h"
gboolean gegl_node_disconnect (GeglNode *node,
                                          const gchar *input_pad);
# 337 "/usr/include/gegl-0.2/gegl.h"
void gegl_node_set (GeglNode *node,
                                          const gchar *first_property_name,
                                          ...) __attribute__((__sentinel__));
# 350 "/usr/include/gegl-0.2/gegl.h"
void gegl_node_set_valist (GeglNode *node,
                                          const gchar *first_property_name,
                                          va_list args);
# 369 "/usr/include/gegl-0.2/gegl.h"
void gegl_node_get (GeglNode *node,
                                          const gchar *first_property_name,
                                          ...) __attribute__((__sentinel__));
# 382 "/usr/include/gegl-0.2/gegl.h"
void gegl_node_get_valist (GeglNode *node,
                                          const gchar *first_property_name,
                                          va_list args);
# 418 "/usr/include/gegl-0.2/gegl.h"
void gegl_node_blit (GeglNode *node,
                                          gdouble scale,
                                          const GeglRectangle *roi,
                                          const Babl *format,
                                          gpointer destination_buf,
                                          gint rowstride,
                                          GeglBlitFlags flags);
# 463 "/usr/include/gegl-0.2/gegl.h"
void gegl_node_process (GeglNode *sink_node);
# 484 "/usr/include/gegl-0.2/gegl.h"
GeglNode * gegl_node_add_child (GeglNode *graph,
                                             GeglNode *child);
# 498 "/usr/include/gegl-0.2/gegl.h"
GeglNode * gegl_node_remove_child (GeglNode *graph,
                                             GeglNode *child);
# 509 "/usr/include/gegl-0.2/gegl.h"
GeglNode * gegl_node_get_parent (GeglNode *node);
# 537 "/usr/include/gegl-0.2/gegl.h"
GeglNode * gegl_node_detect (GeglNode *node,
                                          gint x,
                                          gint y);
# 549 "/usr/include/gegl-0.2/gegl.h"
GParamSpec * gegl_node_find_property (GeglNode *node,
                                          const gchar *property_name);
# 561 "/usr/include/gegl-0.2/gegl.h"
GeglRectangle gegl_node_get_bounding_box (GeglNode *node);
# 571 "/usr/include/gegl-0.2/gegl.h"
GSList * gegl_node_get_children (GeglNode *node);
# 587 "/usr/include/gegl-0.2/gegl.h"
gint gegl_node_get_consumers (GeglNode *node,
                                          const gchar *output_pad,
                                          GeglNode ***nodes,
                                          const gchar ***pads);
# 603 "/usr/include/gegl-0.2/gegl.h"
GeglNode * gegl_node_get_input_proxy (GeglNode *node,
                                          const gchar *pad_name);
# 614 "/usr/include/gegl-0.2/gegl.h"
const gchar * gegl_node_get_operation (const GeglNode *node);
# 627 "/usr/include/gegl-0.2/gegl.h"
GeglNode * gegl_node_get_output_proxy (GeglNode *node,
                                          const gchar *pad_name);
# 640 "/usr/include/gegl-0.2/gegl.h"
GeglNode * gegl_node_get_producer (GeglNode *node,
                                          gchar *input_pad_name,
                                          gchar **output_pad_name);
# 651 "/usr/include/gegl-0.2/gegl.h"
gboolean gegl_node_has_pad (GeglNode *node,
                                          const gchar *pad_name);
# 681 "/usr/include/gegl-0.2/gegl.h"
GeglNode * gegl_node_create_child (GeglNode *parent,
                                          const gchar *operation);
# 695 "/usr/include/gegl-0.2/gegl.h"
void gegl_node_get_property (GeglNode *node,
                                          const gchar *property_name,
                                          GValue *value);
# 708 "/usr/include/gegl-0.2/gegl.h"
void gegl_node_set_property (GeglNode *node,
                                          const gchar *property_name,
                                          const GValue *value);
# 730 "/usr/include/gegl-0.2/gegl.h"
GeglNode * gegl_node_new_from_xml (const gchar *xmldata,
                                          const gchar *path_root);
# 743 "/usr/include/gegl-0.2/gegl.h"
GeglNode * gegl_node_new_from_file (const gchar *path);
# 757 "/usr/include/gegl-0.2/gegl.h"
gchar * gegl_node_to_xml (GeglNode *node,
                                          const gchar *path_root);
# 777 "/usr/include/gegl-0.2/gegl.h"
GeglProcessor *gegl_node_new_processor (GeglNode *node,
                                             const GeglRectangle *rectangle);
# 788 "/usr/include/gegl-0.2/gegl.h"
void gegl_processor_set_rectangle (GeglProcessor *processor,
                                             const GeglRectangle *rectangle);
# 809 "/usr/include/gegl-0.2/gegl.h"
gboolean gegl_processor_work (GeglProcessor *processor,
                                             gdouble *progress);
# 829 "/usr/include/gegl-0.2/gegl.h"
GeglConfig * gegl_config (void);



void gegl_apply_op (GeglBuffer *buffer,
                            const gchar *operation_name,
                            ...) __attribute__((__sentinel__));

GeglBuffer *gegl_filter_op (GeglBuffer *source_buffer,
                            const gchar *operation_name,
                            ...) __attribute__((__sentinel__));

void gegl_render_op (GeglBuffer *source_buffer,
                            GeglBuffer *target_buffer,
                            const gchar *operation_name,
                            ...) __attribute__((__sentinel__));


void gegl_apply_op_valist (GeglBuffer *buffer,
                                  const gchar *operation_name,
                                  va_list var_args);

GeglBuffer *gegl_filter_op_valist (GeglBuffer *source_buffer,
                                   const gchar *operation_name,
                                   va_list var_args);

void gegl_render_op_valist (GeglBuffer *source_buffer,
                                   GeglBuffer *target_buffer,
                                   const gchar *operation_name,
                                   va_list var_args);
# 881 "/usr/include/gegl-0.2/gegl.h"
GeglNode *gegl_node (const gchar *op_type,
                     const gchar *first_property_name,
                     ...);
# 899 "/usr/include/gegl-0.2/gegl.h"
GeglNode *gegl_graph (GeglNode *node);
# 27 "gimpoperationtilesink.c" 2


# 1 "./gimp-gegl-types.h" 1
# 23 "./gimp-gegl-types.h"
# 1 "../../app/core/core-types.h" 1
# 22 "../../app/core/core-types.h"
# 1 "../../libgimpmodule/gimpmoduletypes.h" 1
# 36 "../../libgimpmodule/gimpmoduletypes.h"
typedef struct _GimpModule GimpModule;
typedef struct _GimpModuleInfo GimpModuleInfo;
typedef struct _GimpModuleDB GimpModuleDB;
# 23 "../../app/core/core-types.h" 2
# 1 "../../libgimpthumb/gimpthumb-types.h" 1
# 29 "../../libgimpthumb/gimpthumb-types.h"
# 1 "../../libgimpthumb/gimpthumb-enums.h" 1
# 51 "../../libgimpthumb/gimpthumb-enums.h"
GType gimp_thumb_file_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_THUMB_FILE_TYPE_NONE,
  GIMP_THUMB_FILE_TYPE_REGULAR,
  GIMP_THUMB_FILE_TYPE_FOLDER,
  GIMP_THUMB_FILE_TYPE_SPECIAL
} GimpThumbFileType;
# 74 "../../libgimpthumb/gimpthumb-enums.h"
GType gimp_thumb_size_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_THUMB_SIZE_FAIL = 0,
  GIMP_THUMB_SIZE_NORMAL = 128,
  GIMP_THUMB_SIZE_LARGE = 256
} GimpThumbSize;
# 100 "../../libgimpthumb/gimpthumb-enums.h"
GType gimp_thumb_state_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_THUMB_STATE_UNKNOWN,
  GIMP_THUMB_STATE_REMOTE,
  GIMP_THUMB_STATE_FOLDER,
  GIMP_THUMB_STATE_SPECIAL,
  GIMP_THUMB_STATE_NOT_FOUND,
  GIMP_THUMB_STATE_EXISTS,
  GIMP_THUMB_STATE_OLD,
  GIMP_THUMB_STATE_FAILED,
  GIMP_THUMB_STATE_OK
} GimpThumbState;
# 30 "../../libgimpthumb/gimpthumb-types.h" 2



typedef struct _GimpThumbnail GimpThumbnail;
# 24 "../../app/core/core-types.h" 2
# 1 "../../libgimpmath/gimpmathtypes.h" 1
# 26 "../../libgimpmath/gimpmathtypes.h"
typedef struct _GimpMatrix2 GimpMatrix2;
typedef struct _GimpMatrix3 GimpMatrix3;
typedef struct _GimpMatrix4 GimpMatrix4;







struct _GimpMatrix2
{
  gdouble coeff[2][2];
};







struct _GimpMatrix3
{
  gdouble coeff[3][3];
};







struct _GimpMatrix4
{
  gdouble coeff[4][4];
};


typedef struct _GimpVector2 GimpVector2;
typedef struct _GimpVector3 GimpVector3;
typedef struct _GimpVector4 GimpVector4;
# 75 "../../libgimpmath/gimpmathtypes.h"
struct _GimpVector2
{
  gdouble x, y;
};
# 88 "../../libgimpmath/gimpmathtypes.h"
struct _GimpVector3
{
  gdouble x, y, z;
};
# 102 "../../libgimpmath/gimpmathtypes.h"
struct _GimpVector4
{
  gdouble x, y, z, w;
};
# 25 "../../app/core/core-types.h" 2

# 1 "../../app/base/base-types.h" 1
# 22 "../../app/base/base-types.h"
# 1 "../../libgimpbase/gimpbasetypes.h" 1
# 23 "../../libgimpbase/gimpbasetypes.h"
# 1 "../../libgimpcolor/gimpcolortypes.h" 1
# 27 "../../libgimpcolor/gimpcolortypes.h"
typedef struct _GimpColorManaged GimpColorManaged;





typedef struct _GimpRGB GimpRGB;
typedef struct _GimpHSV GimpHSV;
typedef struct _GimpHSL GimpHSL;
typedef struct _GimpCMYK GimpCMYK;
# 48 "../../libgimpcolor/gimpcolortypes.h"
struct _GimpRGB
{
  gdouble r, g, b, a;
};
# 63 "../../libgimpcolor/gimpcolortypes.h"
struct _GimpHSV
{
  gdouble h, s, v, a;
};
# 78 "../../libgimpcolor/gimpcolortypes.h"
struct _GimpHSL
{
  gdouble h, s, l, a;
};
# 96 "../../libgimpcolor/gimpcolortypes.h"
struct _GimpCMYK
{
  gdouble c, m, y, k, a;
};


typedef void (* GimpRenderFunc) (gdouble x,
                                   gdouble y,
                                   GimpRGB *color,
                                   gpointer data);
typedef void (* GimpPutPixelFunc) (gint x,
                                   gint y,
                                   GimpRGB *color,
                                   gpointer data);
typedef void (* GimpProgressFunc) (gint min,
                                   gint max,
                                   gint current,
                                   gpointer data);
# 24 "../../libgimpbase/gimpbasetypes.h" 2


# 1 "../../libgimpbase/gimpbaseenums.h" 1
# 39 "../../libgimpbase/gimpbaseenums.h"
GType gimp_add_mask_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_ADD_WHITE_MASK,
  GIMP_ADD_BLACK_MASK,
  GIMP_ADD_ALPHA_MASK,
  GIMP_ADD_ALPHA_TRANSFER_MASK,
  GIMP_ADD_SELECTION_MASK,
  GIMP_ADD_COPY_MASK,
  GIMP_ADD_CHANNEL_MASK
} GimpAddMaskType;




GType gimp_blend_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_FG_BG_RGB_MODE,
  GIMP_FG_BG_HSV_MODE,
  GIMP_FG_TRANSPARENT_MODE,
  GIMP_CUSTOM_MODE
} GimpBlendMode;




GType gimp_bucket_fill_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_FG_BUCKET_FILL,
  GIMP_BG_BUCKET_FILL,
  GIMP_PATTERN_BUCKET_FILL
} GimpBucketFillMode;




GType gimp_channel_ops_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CHANNEL_OP_ADD,
  GIMP_CHANNEL_OP_SUBTRACT,
  GIMP_CHANNEL_OP_REPLACE,
  GIMP_CHANNEL_OP_INTERSECT
} GimpChannelOps;




GType gimp_channel_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_RED_CHANNEL,
  GIMP_GREEN_CHANNEL,
  GIMP_BLUE_CHANNEL,
  GIMP_GRAY_CHANNEL,
  GIMP_INDEXED_CHANNEL,
  GIMP_ALPHA_CHANNEL
} GimpChannelType;




GType gimp_check_size_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CHECK_SIZE_SMALL_CHECKS = 0,
  GIMP_CHECK_SIZE_MEDIUM_CHECKS = 1,
  GIMP_CHECK_SIZE_LARGE_CHECKS = 2
} GimpCheckSize;




GType gimp_check_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CHECK_TYPE_LIGHT_CHECKS = 0,
  GIMP_CHECK_TYPE_GRAY_CHECKS = 1,
  GIMP_CHECK_TYPE_DARK_CHECKS = 2,
  GIMP_CHECK_TYPE_WHITE_ONLY = 3,
  GIMP_CHECK_TYPE_GRAY_ONLY = 4,
  GIMP_CHECK_TYPE_BLACK_ONLY = 5
} GimpCheckType;




GType gimp_clone_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_IMAGE_CLONE,
  GIMP_PATTERN_CLONE
} GimpCloneType;




GType gimp_desaturate_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_DESATURATE_LIGHTNESS,
  GIMP_DESATURATE_LUMINOSITY,
  GIMP_DESATURATE_AVERAGE
} GimpDesaturateMode;




GType gimp_dodge_burn_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_DODGE,
  GIMP_BURN
} GimpDodgeBurnType;




GType gimp_foreground_extract_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_FOREGROUND_EXTRACT_SIOX
} GimpForegroundExtractMode;




GType gimp_gradient_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_GRADIENT_LINEAR,
  GIMP_GRADIENT_BILINEAR,
  GIMP_GRADIENT_RADIAL,
  GIMP_GRADIENT_SQUARE,
  GIMP_GRADIENT_CONICAL_SYMMETRIC,
  GIMP_GRADIENT_CONICAL_ASYMMETRIC,
  GIMP_GRADIENT_SHAPEBURST_ANGULAR,
  GIMP_GRADIENT_SHAPEBURST_SPHERICAL,
  GIMP_GRADIENT_SHAPEBURST_DIMPLED,
  GIMP_GRADIENT_SPIRAL_CLOCKWISE,
  GIMP_GRADIENT_SPIRAL_ANTICLOCKWISE
} GimpGradientType;




GType gimp_grid_style_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_GRID_DOTS,
  GIMP_GRID_INTERSECTIONS,
  GIMP_GRID_ON_OFF_DASH,
  GIMP_GRID_DOUBLE_DASH,
  GIMP_GRID_SOLID
} GimpGridStyle;




GType gimp_icon_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_ICON_TYPE_STOCK_ID,
  GIMP_ICON_TYPE_INLINE_PIXBUF,
  GIMP_ICON_TYPE_IMAGE_FILE
} GimpIconType;




GType gimp_image_base_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_RGB,
  GIMP_GRAY,
  GIMP_INDEXED
} GimpImageBaseType;




GType gimp_image_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_RGB_IMAGE,
  GIMP_RGBA_IMAGE,
  GIMP_GRAY_IMAGE,
  GIMP_GRAYA_IMAGE,
  GIMP_INDEXED_IMAGE,
  GIMP_INDEXEDA_IMAGE
} GimpImageType;




GType gimp_interpolation_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_INTERPOLATION_NONE,
  GIMP_INTERPOLATION_LINEAR,
  GIMP_INTERPOLATION_CUBIC,
  GIMP_INTERPOLATION_LANCZOS
} GimpInterpolationType;




GType gimp_paint_application_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PAINT_CONSTANT,
  GIMP_PAINT_INCREMENTAL
} GimpPaintApplicationMode;




GType gimp_repeat_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_REPEAT_NONE,
  GIMP_REPEAT_SAWTOOTH,
  GIMP_REPEAT_TRIANGULAR
} GimpRepeatMode;




GType gimp_run_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_RUN_INTERACTIVE,
  GIMP_RUN_NONINTERACTIVE,
  GIMP_RUN_WITH_LAST_VALS
} GimpRunMode;




GType gimp_size_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PIXELS,
  GIMP_POINTS
} GimpSizeType;




GType gimp_transfer_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_SHADOWS,
  GIMP_MIDTONES,
  GIMP_HIGHLIGHTS
} GimpTransferMode;




GType gimp_transform_direction_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_TRANSFORM_FORWARD,
  GIMP_TRANSFORM_BACKWARD
} GimpTransformDirection;




GType gimp_transform_resize_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_TRANSFORM_RESIZE_ADJUST = 0,
  GIMP_TRANSFORM_RESIZE_CLIP = 1,
  GIMP_TRANSFORM_RESIZE_CROP,
  GIMP_TRANSFORM_RESIZE_CROP_WITH_ASPECT
} GimpTransformResize;


typedef enum
{
  GIMP_UNIT_PIXEL = 0,

  GIMP_UNIT_INCH = 1,
  GIMP_UNIT_MM = 2,
  GIMP_UNIT_POINT = 3,
  GIMP_UNIT_PICA = 4,

  GIMP_UNIT_END = 5,

  GIMP_UNIT_PERCENT = 65536
} GimpUnit;




GType gimp_pdb_arg_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PDB_INT32,
  GIMP_PDB_INT16,
  GIMP_PDB_INT8,
  GIMP_PDB_FLOAT,
  GIMP_PDB_STRING,
  GIMP_PDB_INT32ARRAY,
  GIMP_PDB_INT16ARRAY,
  GIMP_PDB_INT8ARRAY,
  GIMP_PDB_FLOATARRAY,
  GIMP_PDB_STRINGARRAY,
  GIMP_PDB_COLOR,
  GIMP_PDB_ITEM,
  GIMP_PDB_DISPLAY,
  GIMP_PDB_IMAGE,
  GIMP_PDB_LAYER,
  GIMP_PDB_CHANNEL,
  GIMP_PDB_DRAWABLE,
  GIMP_PDB_SELECTION,
  GIMP_PDB_COLORARRAY,
  GIMP_PDB_VECTORS,
  GIMP_PDB_PARASITE,
  GIMP_PDB_STATUS,
  GIMP_PDB_END,


  GIMP_PDB_PATH = GIMP_PDB_VECTORS,
  GIMP_PDB_BOUNDARY = GIMP_PDB_COLORARRAY,
  GIMP_PDB_REGION = GIMP_PDB_ITEM
} GimpPDBArgType;




GType gimp_pdb_error_handler_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PDB_ERROR_HANDLER_INTERNAL,
  GIMP_PDB_ERROR_HANDLER_PLUGIN
} GimpPDBErrorHandler;




GType gimp_pdb_proc_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_INTERNAL,
  GIMP_PLUGIN,
  GIMP_EXTENSION,
  GIMP_TEMPORARY
} GimpPDBProcType;




GType gimp_pdb_status_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PDB_EXECUTION_ERROR,
  GIMP_PDB_CALLING_ERROR,
  GIMP_PDB_PASS_THROUGH,
  GIMP_PDB_SUCCESS,
  GIMP_PDB_CANCEL
} GimpPDBStatusType;




GType gimp_message_handler_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_MESSAGE_BOX,
  GIMP_CONSOLE,
  GIMP_ERROR_CONSOLE
} GimpMessageHandlerType;




GType gimp_stack_trace_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_STACK_TRACE_NEVER,
  GIMP_STACK_TRACE_QUERY,
  GIMP_STACK_TRACE_ALWAYS
} GimpStackTraceMode;




GType gimp_progress_command_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PROGRESS_COMMAND_START,
  GIMP_PROGRESS_COMMAND_END,
  GIMP_PROGRESS_COMMAND_SET_TEXT,
  GIMP_PROGRESS_COMMAND_SET_VALUE,
  GIMP_PROGRESS_COMMAND_PULSE,
  GIMP_PROGRESS_COMMAND_GET_WINDOW
} GimpProgressCommand;




GType gimp_text_direction_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_TEXT_DIRECTION_LTR,
  GIMP_TEXT_DIRECTION_RTL
} GimpTextDirection;




GType gimp_text_hint_style_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_TEXT_HINT_STYLE_NONE,
  GIMP_TEXT_HINT_STYLE_SLIGHT,
  GIMP_TEXT_HINT_STYLE_MEDIUM,
  GIMP_TEXT_HINT_STYLE_FULL
} GimpTextHintStyle;




GType gimp_text_justification_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_TEXT_JUSTIFY_LEFT,
  GIMP_TEXT_JUSTIFY_RIGHT,
  GIMP_TEXT_JUSTIFY_CENTER,
  GIMP_TEXT_JUSTIFY_FILL
} GimpTextJustification;
# 532 "../../libgimpbase/gimpbaseenums.h"
GType gimp_vectors_stroke_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_VECTORS_STROKE_TYPE_BEZIER
} GimpVectorsStrokeType;
# 27 "../../libgimpbase/gimpbasetypes.h" 2
# 1 "../../libgimpbase/gimpparam.h" 1
# 28 "../../libgimpbase/gimpbasetypes.h" 2







typedef struct _GimpParasite GimpParasite;
typedef struct _GimpDatafileData GimpDatafileData;
typedef struct _GimpEnumDesc GimpEnumDesc;
typedef struct _GimpFlagsDesc GimpFlagsDesc;


typedef void (* GimpDatafileLoaderFunc) (const GimpDatafileData *file_data,
                                         gpointer user_data);
# 54 "../../libgimpbase/gimpbasetypes.h"
struct _GimpEnumDesc
{
  gint value;
  const gchar *value_desc;
  const gchar *value_help;
};
# 70 "../../libgimpbase/gimpbasetypes.h"
struct _GimpFlagsDesc
{
  guint value;
  const gchar *value_desc;
  const gchar *value_help;
};


void gimp_type_set_translation_domain (GType type,
                                                         const gchar *domain);
const gchar * gimp_type_get_translation_domain (GType type);

void gimp_type_set_translation_context (GType type,
                                                         const gchar *context);
const gchar * gimp_type_get_translation_context (GType type);

void gimp_enum_set_value_descriptions (GType enum_type,
                                                         const GimpEnumDesc *descriptions);
const GimpEnumDesc * gimp_enum_get_value_descriptions (GType enum_type);

void gimp_flags_set_value_descriptions (GType flags_type,
                                                         const GimpFlagsDesc *descriptions);
const GimpFlagsDesc * gimp_flags_get_value_descriptions (GType flags_type);
# 23 "../../app/base/base-types.h" 2



# 1 "../../app/paint-funcs/paint-funcs-types.h" 1
# 22 "../../app/paint-funcs/paint-funcs-types.h"
# 1 "../../app/base/base-types.h" 1
# 23 "../../app/paint-funcs/paint-funcs-types.h" 2
# 35 "../../app/paint-funcs/paint-funcs-types.h"
typedef enum
{
  INITIAL_CHANNEL_MASK = 0,
  INITIAL_CHANNEL_SELECTION,
  INITIAL_INDEXED,
  INITIAL_INDEXED_ALPHA,
  INITIAL_INTENSITY,
  INITIAL_INTENSITY_ALPHA
} InitialMode;





typedef enum
{
  NO_COMBINATION = 0,
  COMBINE_INDEXED_INDEXED,
  COMBINE_INDEXED_INDEXED_A,
  COMBINE_INDEXED_A_INDEXED_A,
  COMBINE_INTEN_A_INDEXED,
  COMBINE_INTEN_A_INDEXED_A,
  COMBINE_INTEN_A_CHANNEL_MASK,
  COMBINE_INTEN_A_CHANNEL_SELECTION,
  COMBINE_INTEN_INTEN,
  COMBINE_INTEN_INTEN_A,
  COMBINE_INTEN_A_INTEN,
  COMBINE_INTEN_A_INTEN_A,


  BEHIND_INTEN,
  BEHIND_INDEXED,
  REPLACE_INTEN,
  REPLACE_INDEXED,
  ERASE_INTEN,
  ERASE_INDEXED,
  ANTI_ERASE_INTEN,
  ANTI_ERASE_INDEXED,
  COLOR_ERASE_INTEN
} CombinationMode;
# 27 "../../app/base/base-types.h" 2

# 1 "../../app/base/base-enums.h" 1
# 39 "../../app/base/base-enums.h"
GType gimp_curve_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CURVE_SMOOTH,
  GIMP_CURVE_FREE
} GimpCurveType;




GType gimp_histogram_channel_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_HISTOGRAM_VALUE = 0,
  GIMP_HISTOGRAM_RED = 1,
  GIMP_HISTOGRAM_GREEN = 2,
  GIMP_HISTOGRAM_BLUE = 3,
  GIMP_HISTOGRAM_ALPHA = 4,
  GIMP_HISTOGRAM_RGB = 5
} GimpHistogramChannel;




GType gimp_layer_mode_effects_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_NORMAL_MODE,
  GIMP_DISSOLVE_MODE,
  GIMP_BEHIND_MODE,
  GIMP_MULTIPLY_MODE,
  GIMP_SCREEN_MODE,
  GIMP_OVERLAY_MODE,
  GIMP_DIFFERENCE_MODE,
  GIMP_ADDITION_MODE,
  GIMP_SUBTRACT_MODE,
  GIMP_DARKEN_ONLY_MODE,
  GIMP_LIGHTEN_ONLY_MODE,
  GIMP_HUE_MODE,
  GIMP_SATURATION_MODE,
  GIMP_COLOR_MODE,
  GIMP_VALUE_MODE,
  GIMP_DIVIDE_MODE,
  GIMP_DODGE_MODE,
  GIMP_BURN_MODE,
  GIMP_HARDLIGHT_MODE,
  GIMP_SOFTLIGHT_MODE,
  GIMP_GRAIN_EXTRACT_MODE,
  GIMP_GRAIN_MERGE_MODE,
  GIMP_COLOR_ERASE_MODE,
  GIMP_ERASE_MODE,
  GIMP_REPLACE_MODE,
  GIMP_ANTI_ERASE_MODE
} GimpLayerModeEffects;




GType gimp_hue_range_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_ALL_HUES,
  GIMP_RED_HUES,
  GIMP_YELLOW_HUES,
  GIMP_GREEN_HUES,
  GIMP_CYAN_HUES,
  GIMP_BLUE_HUES,
  GIMP_MAGENTA_HUES
} GimpHueRange;






typedef enum
{
  GIMP_NORMAL_CONVOL,
  GIMP_ABSOLUTE_CONVOL,
  GIMP_NEGATIVE_CONVOL
} GimpConvolutionType;

typedef enum
{
  SIOX_REFINEMENT_NO_CHANGE = 0,
  SIOX_REFINEMENT_ADD_FOREGROUND = (1 << 0),
  SIOX_REFINEMENT_ADD_BACKGROUND = (1 << 1),
  SIOX_REFINEMENT_CHANGE_SENSITIVITY = (1 << 2),
  SIOX_REFINEMENT_CHANGE_SMOOTHNESS = (1 << 3),
  SIOX_REFINEMENT_CHANGE_MULTIBLOB = (1 << 4),
  SIOX_REFINEMENT_RECALCULATE = 0xFF
} SioxRefinementType;
# 29 "../../app/base/base-types.h" 2

# 1 "../../app/config/config-types.h" 1
# 25 "../../app/config/config-types.h"
# 1 "../../libgimpconfig/gimpconfigtypes.h" 1
# 29 "../../libgimpconfig/gimpconfigtypes.h"
typedef struct _GimpConfig GimpConfig;
typedef struct _GimpConfigWriter GimpConfigWriter;
typedef gchar * GimpConfigPath;



# 1 "../../libgimpconfig/gimpcolorconfig-enums.h" 1
# 28 "../../libgimpconfig/gimpcolorconfig-enums.h"
GType gimp_color_management_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_COLOR_MANAGEMENT_OFF,
  GIMP_COLOR_MANAGEMENT_DISPLAY,
  GIMP_COLOR_MANAGEMENT_SOFTPROOF
} GimpColorManagementMode;





GType gimp_color_rendering_intent_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_COLOR_RENDERING_INTENT_PERCEPTUAL,
  GIMP_COLOR_RENDERING_INTENT_RELATIVE_COLORIMETRIC,
  GIMP_COLOR_RENDERING_INTENT_SATURATION,
  GIMP_COLOR_RENDERING_INTENT_ABSOLUTE_COLORIMETRIC
} GimpColorRenderingIntent;
# 35 "../../libgimpconfig/gimpconfigtypes.h" 2

typedef struct _GimpColorConfig GimpColorConfig;
# 26 "../../app/config/config-types.h" 2

# 1 "../../app/config/config-enums.h" 1
# 24 "../../app/config/config-enums.h"
GType gimp_cursor_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CURSOR_MODE_TOOL_ICON,
  GIMP_CURSOR_MODE_TOOL_CROSSHAIR,
  GIMP_CURSOR_MODE_CROSSHAIR
} GimpCursorMode;




GType gimp_canvas_padding_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CANVAS_PADDING_MODE_DEFAULT,
  GIMP_CANVAS_PADDING_MODE_LIGHT_CHECK,
  GIMP_CANVAS_PADDING_MODE_DARK_CHECK,
  GIMP_CANVAS_PADDING_MODE_CUSTOM,
  GIMP_CANVAS_PADDING_MODE_RESET = -1
} GimpCanvasPaddingMode;




GType gimp_space_bar_action_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_SPACE_BAR_ACTION_NONE,
  GIMP_SPACE_BAR_ACTION_PAN,
  GIMP_SPACE_BAR_ACTION_MOVE
} GimpSpaceBarAction;




GType gimp_zoom_quality_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_ZOOM_QUALITY_LOW,
  GIMP_ZOOM_QUALITY_HIGH
} GimpZoomQuality;




GType gimp_help_browser_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_HELP_BROWSER_GIMP,
  GIMP_HELP_BROWSER_WEB_BROWSER
} GimpHelpBrowserType;




GType gimp_window_hint_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_WINDOW_HINT_NORMAL,
  GIMP_WINDOW_HINT_UTILITY,
  GIMP_WINDOW_HINT_KEEP_ABOVE
} GimpWindowHint;




GType gimp_cursor_format_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CURSOR_FORMAT_BITMAP,
  GIMP_CURSOR_FORMAT_PIXBUF
} GimpCursorFormat;




GType gimp_handedness_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_HANDEDNESS_LEFT,
  GIMP_HANDEDNESS_RIGHT
} GimpHandedness;
# 28 "../../app/config/config-types.h" 2






typedef struct _GimpBaseConfig GimpBaseConfig;
typedef struct _GimpCoreConfig GimpCoreConfig;
typedef struct _GimpDisplayConfig GimpDisplayConfig;
typedef struct _GimpGuiConfig GimpGuiConfig;
typedef struct _GimpPluginConfig GimpPluginConfig;
typedef struct _GimpRc GimpRc;

typedef struct _GimpXmlParser GimpXmlParser;

typedef struct _GimpDisplayOptions GimpDisplayOptions;


typedef struct _GimpGrid GimpGrid;
typedef struct _GimpTemplate GimpTemplate;
# 31 "../../app/base/base-types.h" 2
# 50 "../../app/base/base-types.h"
typedef struct _BoundSeg BoundSeg;

typedef struct _GimpHistogram GimpHistogram;
typedef struct _GimpLut GimpLut;

typedef struct _ColorBalance ColorBalance;
typedef struct _Colorize Colorize;
typedef struct _Curves Curves;
typedef struct _HueSaturation HueSaturation;
typedef struct _Levels Levels;
typedef struct _Threshold Threshold;

typedef struct _PixelRegionIterator PixelRegionIterator;
typedef struct _PixelRegion PixelRegion;
typedef struct _PixelRegionHolder PixelRegionHolder;

typedef struct _PixelSurround PixelSurround;

typedef struct _SioxState SioxState;

typedef struct _TempBuf TempBuf;

typedef struct _Tile Tile;
typedef struct _TileManager TileManager;
typedef struct _TilePyramid TilePyramid;




typedef void (* TileValidateProc) (TileManager *tm,
                                     Tile *tile,
                                     gpointer user_data);
typedef void (* PixelProcessorFunc) (void);
# 27 "../../app/core/core-types.h" 2

# 1 "../../app/core/core-enums.h" 1
# 41 "../../app/core/core-enums.h"
GType gimp_container_policy_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CONTAINER_POLICY_STRONG,
  GIMP_CONTAINER_POLICY_WEAK
} GimpContainerPolicy;




GType gimp_convert_dither_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_NO_DITHER,
  GIMP_FS_DITHER,
  GIMP_FSLOWBLEED_DITHER,
  GIMP_FIXED_DITHER,
  GIMP_NODESTRUCT_DITHER
} GimpConvertDitherType;




GType gimp_convert_palette_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_MAKE_PALETTE,
  GIMP_REUSE_PALETTE,
  GIMP_WEB_PALETTE,
  GIMP_MONO_PALETTE,
  GIMP_CUSTOM_PALETTE
} GimpConvertPaletteType;




GType gimp_gravity_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_GRAVITY_NONE,
  GIMP_GRAVITY_NORTH_WEST,
  GIMP_GRAVITY_NORTH,
  GIMP_GRAVITY_NORTH_EAST,
  GIMP_GRAVITY_WEST,
  GIMP_GRAVITY_CENTER,
  GIMP_GRAVITY_EAST,
  GIMP_GRAVITY_SOUTH_WEST,
  GIMP_GRAVITY_SOUTH,
  GIMP_GRAVITY_SOUTH_EAST
} GimpGravityType;




GType gimp_alignment_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_ALIGN_LEFT,
  GIMP_ALIGN_HCENTER,
  GIMP_ALIGN_RIGHT,
  GIMP_ALIGN_TOP,
  GIMP_ALIGN_VCENTER,
  GIMP_ALIGN_BOTTOM,
  GIMP_ARRANGE_LEFT,
  GIMP_ARRANGE_HCENTER,
  GIMP_ARRANGE_RIGHT,
  GIMP_ARRANGE_TOP,
  GIMP_ARRANGE_VCENTER,
  GIMP_ARRANGE_BOTTOM
} GimpAlignmentType;




GType gimp_align_reference_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_ALIGN_REFERENCE_FIRST,
  GIMP_ALIGN_REFERENCE_IMAGE,
  GIMP_ALIGN_REFERENCE_SELECTION,
  GIMP_ALIGN_REFERENCE_ACTIVE_LAYER,
  GIMP_ALIGN_REFERENCE_ACTIVE_CHANNEL,
  GIMP_ALIGN_REFERENCE_ACTIVE_PATH
} GimpAlignReferenceType;




GType gimp_fill_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_FOREGROUND_FILL,
  GIMP_BACKGROUND_FILL,
  GIMP_WHITE_FILL,
  GIMP_TRANSPARENT_FILL,
  GIMP_PATTERN_FILL,
  GIMP_NO_FILL
} GimpFillType;




GType gimp_fill_style_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_FILL_STYLE_SOLID,
  GIMP_FILL_STYLE_PATTERN
} GimpFillStyle;




GType gimp_stroke_method_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_STROKE_METHOD_LIBART,
  GIMP_STROKE_METHOD_PAINT_CORE
} GimpStrokeMethod;




GType gimp_join_style_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_JOIN_MITER,
  GIMP_JOIN_ROUND,
  GIMP_JOIN_BEVEL
} GimpJoinStyle;




GType gimp_cap_style_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CAP_BUTT,
  GIMP_CAP_ROUND,
  GIMP_CAP_SQUARE
} GimpCapStyle;




GType gimp_dash_preset_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_DASH_CUSTOM,
  GIMP_DASH_LINE,
  GIMP_DASH_LONG_DASH,
  GIMP_DASH_MEDIUM_DASH,
  GIMP_DASH_SHORT_DASH,
  GIMP_DASH_SPARSE_DOTS,
  GIMP_DASH_NORMAL_DOTS,
  GIMP_DASH_DENSE_DOTS,
  GIMP_DASH_STIPPLES,
  GIMP_DASH_DASH_DOT,
  GIMP_DASH_DASH_DOT_DOT
} GimpDashPreset;




GType gimp_brush_generated_shape_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_BRUSH_GENERATED_CIRCLE,
  GIMP_BRUSH_GENERATED_SQUARE,
  GIMP_BRUSH_GENERATED_DIAMOND
} GimpBrushGeneratedShape;




GType gimp_orientation_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_ORIENTATION_HORIZONTAL,
  GIMP_ORIENTATION_VERTICAL,
  GIMP_ORIENTATION_UNKNOWN
} GimpOrientationType;




GType gimp_item_set_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_ITEM_SET_NONE,
  GIMP_ITEM_SET_ALL,
  GIMP_ITEM_SET_IMAGE_SIZED,
  GIMP_ITEM_SET_VISIBLE,
  GIMP_ITEM_SET_LINKED
} GimpItemSet;




GType gimp_rotation_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_ROTATE_90,
  GIMP_ROTATE_180,
  GIMP_ROTATE_270
} GimpRotationType;




GType gimp_view_size_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_VIEW_SIZE_TINY = 12,
  GIMP_VIEW_SIZE_EXTRA_SMALL = 16,
  GIMP_VIEW_SIZE_SMALL = 24,
  GIMP_VIEW_SIZE_MEDIUM = 32,
  GIMP_VIEW_SIZE_LARGE = 48,
  GIMP_VIEW_SIZE_EXTRA_LARGE = 64,
  GIMP_VIEW_SIZE_HUGE = 96,
  GIMP_VIEW_SIZE_ENORMOUS = 128,
  GIMP_VIEW_SIZE_GIGANTIC = 192
} GimpViewSize;




GType gimp_view_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_VIEW_TYPE_LIST,
  GIMP_VIEW_TYPE_GRID
} GimpViewType;




GType gimp_thumbnail_size_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_THUMBNAIL_SIZE_NONE = 0,
  GIMP_THUMBNAIL_SIZE_NORMAL = 128,
  GIMP_THUMBNAIL_SIZE_LARGE = 256
} GimpThumbnailSize;




GType gimp_undo_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_UNDO_MODE_UNDO,
  GIMP_UNDO_MODE_REDO
} GimpUndoMode;




GType gimp_undo_event_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_UNDO_EVENT_UNDO_PUSHED,
  GIMP_UNDO_EVENT_UNDO_EXPIRED,
  GIMP_UNDO_EVENT_REDO_EXPIRED,
  GIMP_UNDO_EVENT_UNDO,
  GIMP_UNDO_EVENT_REDO,
  GIMP_UNDO_EVENT_UNDO_FREE,
  GIMP_UNDO_EVENT_UNDO_FREEZE,
  GIMP_UNDO_EVENT_UNDO_THAW
} GimpUndoEvent;




GType gimp_undo_type_get_type (void) __attribute__((__const__));

typedef enum
{



  GIMP_UNDO_GROUP_NONE = 0,

  GIMP_UNDO_GROUP_FIRST = GIMP_UNDO_GROUP_NONE,

  GIMP_UNDO_GROUP_IMAGE_SCALE,
  GIMP_UNDO_GROUP_IMAGE_RESIZE,
  GIMP_UNDO_GROUP_IMAGE_FLIP,
  GIMP_UNDO_GROUP_IMAGE_ROTATE,
  GIMP_UNDO_GROUP_IMAGE_CROP,
  GIMP_UNDO_GROUP_IMAGE_CONVERT,
  GIMP_UNDO_GROUP_IMAGE_ITEM_REMOVE,
  GIMP_UNDO_GROUP_IMAGE_LAYERS_MERGE,
  GIMP_UNDO_GROUP_IMAGE_VECTORS_MERGE,
  GIMP_UNDO_GROUP_IMAGE_QUICK_MASK,
  GIMP_UNDO_GROUP_IMAGE_GRID,
  GIMP_UNDO_GROUP_GUIDE,
  GIMP_UNDO_GROUP_SAMPLE_POINT,
  GIMP_UNDO_GROUP_DRAWABLE,
  GIMP_UNDO_GROUP_DRAWABLE_MOD,
  GIMP_UNDO_GROUP_MASK,
  GIMP_UNDO_GROUP_ITEM_VISIBILITY,
  GIMP_UNDO_GROUP_ITEM_LINKED,
  GIMP_UNDO_GROUP_ITEM_PROPERTIES,
  GIMP_UNDO_GROUP_ITEM_DISPLACE,
  GIMP_UNDO_GROUP_ITEM_SCALE,
  GIMP_UNDO_GROUP_ITEM_RESIZE,
  GIMP_UNDO_GROUP_LAYER_ADD,
  GIMP_UNDO_GROUP_LAYER_ADD_MASK,
  GIMP_UNDO_GROUP_LAYER_APPLY_MASK,
  GIMP_UNDO_GROUP_FS_TO_LAYER,
  GIMP_UNDO_GROUP_FS_FLOAT,
  GIMP_UNDO_GROUP_FS_ANCHOR,
  GIMP_UNDO_GROUP_EDIT_PASTE,
  GIMP_UNDO_GROUP_EDIT_CUT,
  GIMP_UNDO_GROUP_TEXT,
  GIMP_UNDO_GROUP_TRANSFORM,
  GIMP_UNDO_GROUP_PAINT,
  GIMP_UNDO_GROUP_PARASITE_ATTACH,
  GIMP_UNDO_GROUP_PARASITE_REMOVE,
  GIMP_UNDO_GROUP_VECTORS_IMPORT,
  GIMP_UNDO_GROUP_MISC,

  GIMP_UNDO_GROUP_LAST = GIMP_UNDO_GROUP_MISC,



  GIMP_UNDO_IMAGE_TYPE,
  GIMP_UNDO_IMAGE_SIZE,
  GIMP_UNDO_IMAGE_RESOLUTION,
  GIMP_UNDO_IMAGE_GRID,
  GIMP_UNDO_IMAGE_COLORMAP,
  GIMP_UNDO_GUIDE,
  GIMP_UNDO_SAMPLE_POINT,
  GIMP_UNDO_DRAWABLE,
  GIMP_UNDO_DRAWABLE_MOD,
  GIMP_UNDO_MASK,
  GIMP_UNDO_ITEM_REORDER,
  GIMP_UNDO_ITEM_RENAME,
  GIMP_UNDO_ITEM_DISPLACE,
  GIMP_UNDO_ITEM_VISIBILITY,
  GIMP_UNDO_ITEM_LINKED,
  GIMP_UNDO_LAYER_ADD,
  GIMP_UNDO_LAYER_REMOVE,
  GIMP_UNDO_LAYER_MODE,
  GIMP_UNDO_LAYER_OPACITY,
  GIMP_UNDO_LAYER_LOCK_ALPHA,
  GIMP_UNDO_GROUP_LAYER_SUSPEND,
  GIMP_UNDO_GROUP_LAYER_RESUME,
  GIMP_UNDO_GROUP_LAYER_CONVERT,
  GIMP_UNDO_TEXT_LAYER,
  GIMP_UNDO_TEXT_LAYER_MODIFIED,
  GIMP_UNDO_LAYER_MASK_ADD,
  GIMP_UNDO_LAYER_MASK_REMOVE,
  GIMP_UNDO_LAYER_MASK_APPLY,
  GIMP_UNDO_LAYER_MASK_SHOW,
  GIMP_UNDO_CHANNEL_ADD,
  GIMP_UNDO_CHANNEL_REMOVE,
  GIMP_UNDO_CHANNEL_COLOR,
  GIMP_UNDO_VECTORS_ADD,
  GIMP_UNDO_VECTORS_REMOVE,
  GIMP_UNDO_VECTORS_MOD,
  GIMP_UNDO_FS_TO_LAYER,
  GIMP_UNDO_TRANSFORM,
  GIMP_UNDO_PAINT,
  GIMP_UNDO_INK,
  GIMP_UNDO_FOREGROUND_SELECT,
  GIMP_UNDO_PARASITE_ATTACH,
  GIMP_UNDO_PARASITE_REMOVE,

  GIMP_UNDO_CANT
} GimpUndoType;




GType gimp_dirty_mask_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_DIRTY_NONE = 0,

  GIMP_DIRTY_IMAGE = 1 << 0,
  GIMP_DIRTY_IMAGE_SIZE = 1 << 1,
  GIMP_DIRTY_IMAGE_META = 1 << 2,
  GIMP_DIRTY_IMAGE_STRUCTURE = 1 << 3,
  GIMP_DIRTY_ITEM = 1 << 4,
  GIMP_DIRTY_ITEM_META = 1 << 5,
  GIMP_DIRTY_DRAWABLE = 1 << 6,
  GIMP_DIRTY_VECTORS = 1 << 7,
  GIMP_DIRTY_SELECTION = 1 << 8,
  GIMP_DIRTY_ACTIVE_DRAWABLE = 1 << 9,

  GIMP_DIRTY_ALL = 0xffff
} GimpDirtyMask;




GType gimp_offset_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_OFFSET_BACKGROUND,
  GIMP_OFFSET_TRANSPARENT
} GimpOffsetType;




GType gimp_gradient_color_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_GRADIENT_COLOR_FIXED,
  GIMP_GRADIENT_COLOR_FOREGROUND,
  GIMP_GRADIENT_COLOR_FOREGROUND_TRANSPARENT,
  GIMP_GRADIENT_COLOR_BACKGROUND,
  GIMP_GRADIENT_COLOR_BACKGROUND_TRANSPARENT
} GimpGradientColor;




GType gimp_gradient_segment_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_GRADIENT_SEGMENT_LINEAR,
  GIMP_GRADIENT_SEGMENT_CURVED,
  GIMP_GRADIENT_SEGMENT_SINE,
  GIMP_GRADIENT_SEGMENT_SPHERE_INCREASING,
  GIMP_GRADIENT_SEGMENT_SPHERE_DECREASING
} GimpGradientSegmentType;




GType gimp_gradient_segment_color_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_GRADIENT_SEGMENT_RGB,
  GIMP_GRADIENT_SEGMENT_HSV_CCW,
  GIMP_GRADIENT_SEGMENT_HSV_CW
} GimpGradientSegmentColor;




GType gimp_mask_apply_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_MASK_APPLY,
  GIMP_MASK_DISCARD
} GimpMaskApplyMode;




GType gimp_merge_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_EXPAND_AS_NECESSARY,
  GIMP_CLIP_TO_IMAGE,
  GIMP_CLIP_TO_BOTTOM_LAYER,
  GIMP_FLATTEN_IMAGE
} GimpMergeType;




GType gimp_select_criterion_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_SELECT_CRITERION_COMPOSITE,
  GIMP_SELECT_CRITERION_R,
  GIMP_SELECT_CRITERION_G,
  GIMP_SELECT_CRITERION_B,
  GIMP_SELECT_CRITERION_H,
  GIMP_SELECT_CRITERION_S,
  GIMP_SELECT_CRITERION_V
} GimpSelectCriterion;




GType gimp_message_severity_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_MESSAGE_INFO,
  GIMP_MESSAGE_WARNING,
  GIMP_MESSAGE_ERROR
} GimpMessageSeverity;




GType gimp_color_profile_policy_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_COLOR_PROFILE_POLICY_ASK,
  GIMP_COLOR_PROFILE_POLICY_KEEP,
  GIMP_COLOR_PROFILE_POLICY_CONVERT
} GimpColorProfilePolicy;




GType gimp_dynamics_output_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_DYNAMICS_OUTPUT_OPACITY,
  GIMP_DYNAMICS_OUTPUT_SIZE,
  GIMP_DYNAMICS_OUTPUT_ANGLE,
  GIMP_DYNAMICS_OUTPUT_COLOR,
  GIMP_DYNAMICS_OUTPUT_HARDNESS,
  GIMP_DYNAMICS_OUTPUT_FORCE,
  GIMP_DYNAMICS_OUTPUT_ASPECT_RATIO,
  GIMP_DYNAMICS_OUTPUT_SPACING,
  GIMP_DYNAMICS_OUTPUT_RATE,
  GIMP_DYNAMICS_OUTPUT_FLOW,
  GIMP_DYNAMICS_OUTPUT_JITTER,
} GimpDynamicsOutputType;







typedef enum
{
  GIMP_CONTEXT_FIRST_PROP = 2,

  GIMP_CONTEXT_PROP_IMAGE = GIMP_CONTEXT_FIRST_PROP,
  GIMP_CONTEXT_PROP_DISPLAY = 3,
  GIMP_CONTEXT_PROP_TOOL = 4,
  GIMP_CONTEXT_PROP_PAINT_INFO = 5,
  GIMP_CONTEXT_PROP_FOREGROUND = 6,
  GIMP_CONTEXT_PROP_BACKGROUND = 7,
  GIMP_CONTEXT_PROP_OPACITY = 8,
  GIMP_CONTEXT_PROP_PAINT_MODE = 9,
  GIMP_CONTEXT_PROP_BRUSH = 10,
  GIMP_CONTEXT_PROP_DYNAMICS = 11,
  GIMP_CONTEXT_PROP_PATTERN = 12,
  GIMP_CONTEXT_PROP_GRADIENT = 13,
  GIMP_CONTEXT_PROP_PALETTE = 14,
  GIMP_CONTEXT_PROP_TOOL_PRESET = 15,
  GIMP_CONTEXT_PROP_FONT = 16,
  GIMP_CONTEXT_PROP_BUFFER = 17,
  GIMP_CONTEXT_PROP_IMAGEFILE = 18,
  GIMP_CONTEXT_PROP_TEMPLATE = 19,

  GIMP_CONTEXT_LAST_PROP = GIMP_CONTEXT_PROP_TEMPLATE
} GimpContextPropType;


typedef enum
{
  GIMP_CONTEXT_IMAGE_MASK = 1 << 2,
  GIMP_CONTEXT_DISPLAY_MASK = 1 << 3,
  GIMP_CONTEXT_TOOL_MASK = 1 << 4,
  GIMP_CONTEXT_PAINT_INFO_MASK = 1 << 5,
  GIMP_CONTEXT_FOREGROUND_MASK = 1 << 6,
  GIMP_CONTEXT_BACKGROUND_MASK = 1 << 7,
  GIMP_CONTEXT_OPACITY_MASK = 1 << 8,
  GIMP_CONTEXT_PAINT_MODE_MASK = 1 << 9,
  GIMP_CONTEXT_BRUSH_MASK = 1 << 10,
  GIMP_CONTEXT_DYNAMICS_MASK = 1 << 11,
  GIMP_CONTEXT_PATTERN_MASK = 1 << 12,
  GIMP_CONTEXT_GRADIENT_MASK = 1 << 13,
  GIMP_CONTEXT_PALETTE_MASK = 1 << 14,
  GIMP_CONTEXT_TOOL_PRESET_MASK = 1 << 15,
  GIMP_CONTEXT_FONT_MASK = 1 << 16,
  GIMP_CONTEXT_BUFFER_MASK = 1 << 17,
  GIMP_CONTEXT_IMAGEFILE_MASK = 1 << 18,
  GIMP_CONTEXT_TEMPLATE_MASK = 1 << 19,


  GIMP_CONTEXT_PAINT_PROPS_MASK = (GIMP_CONTEXT_FOREGROUND_MASK |
                                   GIMP_CONTEXT_BACKGROUND_MASK |
                                   GIMP_CONTEXT_OPACITY_MASK |
                                   GIMP_CONTEXT_PAINT_MODE_MASK |
                                   GIMP_CONTEXT_BRUSH_MASK |
                                   GIMP_CONTEXT_DYNAMICS_MASK |
                                   GIMP_CONTEXT_PATTERN_MASK |
                                   GIMP_CONTEXT_GRADIENT_MASK),
  GIMP_CONTEXT_ALL_PROPS_MASK = (GIMP_CONTEXT_IMAGE_MASK |
                                   GIMP_CONTEXT_DISPLAY_MASK |
                                   GIMP_CONTEXT_TOOL_MASK |
                                   GIMP_CONTEXT_PAINT_INFO_MASK |
                                   GIMP_CONTEXT_PALETTE_MASK |
                                   GIMP_CONTEXT_FONT_MASK |
                                   GIMP_CONTEXT_BUFFER_MASK |
                                   GIMP_CONTEXT_IMAGEFILE_MASK |
                                   GIMP_CONTEXT_TEMPLATE_MASK |
                                   GIMP_CONTEXT_PAINT_PROPS_MASK)
} GimpContextPropMask;


typedef enum
{
  GIMP_IMAGE_SCALE_OK,
  GIMP_IMAGE_SCALE_TOO_SMALL,
  GIMP_IMAGE_SCALE_TOO_BIG
} GimpImageScaleCheckType;


typedef enum
{
  GIMP_ITEM_TYPE_LAYERS = 1 << 0,
  GIMP_ITEM_TYPE_CHANNELS = 1 << 1,
  GIMP_ITEM_TYPE_VECTORS = 1 << 2,

  GIMP_ITEM_TYPE_ALL = (GIMP_ITEM_TYPE_LAYERS |
                             GIMP_ITEM_TYPE_CHANNELS |
                             GIMP_ITEM_TYPE_VECTORS)
} GimpItemTypeMask;
# 29 "../../app/core/core-types.h" 2
# 60 "../../app/core/core-types.h"
typedef struct _GimpObject GimpObject;
typedef struct _GimpViewable GimpViewable;
typedef struct _GimpItem GimpItem;

typedef struct _Gimp Gimp;
typedef struct _GimpImage GimpImage;




typedef struct _GimpContainer GimpContainer;
typedef struct _GimpList GimpList;
typedef struct _GimpDocumentList GimpDocumentList;
typedef struct _GimpDrawableStack GimpDrawableStack;
typedef struct _GimpFilteredContainer GimpFilteredContainer;
typedef struct _GimpItemStack GimpItemStack;
typedef struct _GimpTaggedContainer GimpTaggedContainer;




typedef struct _GimpItemTree GimpItemTree;




typedef struct _GimpContext GimpContext;
typedef struct _GimpFillOptions GimpFillOptions;
typedef struct _GimpStrokeOptions GimpStrokeOptions;
typedef struct _GimpToolOptions GimpToolOptions;




typedef struct _GimpPaintInfo GimpPaintInfo;
typedef struct _GimpToolInfo GimpToolInfo;




typedef struct _GimpDataFactory GimpDataFactory;
typedef struct _GimpData GimpData;
typedef struct _GimpBrush GimpBrush;
typedef struct _GimpBrushCache GimpBrushCache;
typedef struct _GimpBrushClipboard GimpBrushClipboard;
typedef struct _GimpBrushGenerated GimpBrushGenerated;
typedef struct _GimpBrushPipe GimpBrushPipe;
typedef struct _GimpCurve GimpCurve;
typedef struct _GimpDynamics GimpDynamics;
typedef struct _GimpDynamicsOutput GimpDynamicsOutput;
typedef struct _GimpGradient GimpGradient;
typedef struct _GimpPalette GimpPalette;
typedef struct _GimpPattern GimpPattern;
typedef struct _GimpPatternClipboard GimpPatternClipboard;
typedef struct _GimpToolPreset GimpToolPreset;
typedef struct _GimpTagCache GimpTagCache;




typedef struct _GimpDrawable GimpDrawable;
typedef struct _GimpChannel GimpChannel;
typedef struct _GimpLayerMask GimpLayerMask;
typedef struct _GimpSelection GimpSelection;
typedef struct _GimpLayer GimpLayer;
typedef struct _GimpGroupLayer GimpGroupLayer;




typedef struct _GimpUndo GimpUndo;
typedef struct _GimpImageUndo GimpImageUndo;
typedef struct _GimpItemUndo GimpItemUndo;
typedef struct _GimpItemPropUndo GimpItemPropUndo;
typedef struct _GimpChannelUndo GimpChannelUndo;
typedef struct _GimpChannelPropUndo GimpChannelPropUndo;
typedef struct _GimpDrawableUndo GimpDrawableUndo;
typedef struct _GimpDrawableModUndo GimpDrawableModUndo;
typedef struct _GimpLayerMaskUndo GimpLayerMaskUndo;
typedef struct _GimpLayerMaskPropUndo GimpLayerMaskPropUndo;
typedef struct _GimpLayerUndo GimpLayerUndo;
typedef struct _GimpLayerPropUndo GimpLayerPropUndo;
typedef struct _GimpGroupLayerUndo GimpGroupLayerUndo;
typedef struct _GimpMaskUndo GimpMaskUndo;
typedef struct _GimpGuideUndo GimpGuideUndo;
typedef struct _GimpSamplePointUndo GimpSamplePointUndo;
typedef struct _GimpFloatingSelUndo GimpFloatingSelUndo;
typedef struct _GimpUndoStack GimpUndoStack;
typedef struct _GimpUndoAccumulator GimpUndoAccumulator;




typedef struct _GimpBuffer GimpBuffer;
typedef struct _GimpEnvironTable GimpEnvironTable;
typedef struct _GimpGuide GimpGuide;
typedef struct _GimpIdTable GimpIdTable;
typedef struct _GimpImageMap GimpImageMap;
typedef struct _GimpImageMapConfig GimpImageMapConfig;
typedef struct _GimpImagefile GimpImagefile;
typedef struct _GimpInterpreterDB GimpInterpreterDB;
typedef struct _GimpParasiteList GimpParasiteList;
typedef struct _GimpPdbProgress GimpPdbProgress;
typedef struct _GimpProjection GimpProjection;
typedef struct _GimpSubProgress GimpSubProgress;
typedef struct _GimpTag GimpTag;
typedef struct _GimpTreeHandler GimpTreeHandler;




typedef struct _GimpPickable GimpPickable;
typedef struct _GimpProgress GimpProgress;
typedef struct _GimpProjectable GimpProjectable;
typedef struct _GimpTagged GimpTagged;




typedef struct _GimpArea GimpArea;
typedef struct _GimpCoords GimpCoords;
typedef struct _GimpGradientSegment GimpGradientSegment;
typedef struct _GimpPaletteEntry GimpPaletteEntry;
typedef struct _GimpSamplePoint GimpSamplePoint;
typedef struct _GimpScanConvert GimpScanConvert;
typedef guint32 GimpTattoo;
# 201 "../../app/core/core-types.h"
typedef void * GimpBezierDesc;





typedef void (* GimpInitStatusFunc) (const gchar *text1,
                                            const gchar *text2,
                                            gdouble percentage);

typedef gboolean (* GimpObjectFilterFunc) (const GimpObject *object,
                                            gpointer user_data);

typedef gint64 (* GimpMemsizeFunc) (gpointer instance,
                                            gint64 *gui_size);

typedef void (* GimpImageMapApplyFunc) (gpointer apply_data,
                                            PixelRegion *srcPR,
                                            PixelRegion *destPR);




struct _GimpCoords
{
  gdouble x;
  gdouble y;
  gdouble pressure;
  gdouble xtilt;
  gdouble ytilt;
  gdouble wheel;
  gdouble velocity;
  gdouble direction;
};



# 1 "../../app/gegl/gimp-gegl-types.h" 1
# 238 "../../app/core/core-types.h" 2
# 1 "../../app/paint/paint-types.h" 1
# 22 "../../app/paint/paint-types.h"
# 1 "../../app/core/core-types.h" 1
# 23 "../../app/paint/paint-types.h" 2
# 1 "../../app/paint/paint-enums.h" 1
# 39 "../../app/paint/paint-enums.h"
GType gimp_brush_application_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_BRUSH_HARD,
  GIMP_BRUSH_SOFT,
  GIMP_BRUSH_PRESSURE
} GimpBrushApplicationMode;




GType gimp_perspective_clone_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PERSPECTIVE_CLONE_MODE_ADJUST,
  GIMP_PERSPECTIVE_CLONE_MODE_PAINT
} GimpPerspectiveCloneMode;




GType gimp_source_align_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_SOURCE_ALIGN_NO,
  GIMP_SOURCE_ALIGN_YES,
  GIMP_SOURCE_ALIGN_REGISTERED,
  GIMP_SOURCE_ALIGN_FIXED
} GimpSourceAlignMode;




GType gimp_convolve_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_BLUR_CONVOLVE,
  GIMP_SHARPEN_CONVOLVE,
  GIMP_CUSTOM_CONVOLVE
} GimpConvolveType;




GType gimp_ink_blob_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_INK_BLOB_TYPE_CIRCLE,
  GIMP_INK_BLOB_TYPE_SQUARE,
  GIMP_INK_BLOB_TYPE_DIAMOND
} GimpInkBlobType;






typedef enum
{
  GIMP_PAINT_STATE_INIT,
  GIMP_PAINT_STATE_MOTION,
  GIMP_PAINT_STATE_FINISH
} GimpPaintState;
# 24 "../../app/paint/paint-types.h" 2




typedef struct _GimpPaintCore GimpPaintCore;
typedef struct _GimpBrushCore GimpBrushCore;
typedef struct _GimpSourceCore GimpSourceCore;

typedef struct _GimpAirbrush GimpAirbrush;
typedef struct _GimpClone GimpClone;
typedef struct _GimpConvolve GimpConvolve;
typedef struct _GimpDodgeBurn GimpDodgeBurn;
typedef struct _GimpEraser GimpEraser;
typedef struct _GimpHeal GimpHeal;
typedef struct _GimpInk GimpInk;
typedef struct _GimpPaintbrush GimpPaintbrush;
typedef struct _GimpPencil GimpPencil;
typedef struct _GimpPerspectiveClone GimpPerspectiveClone;
typedef struct _GimpSmudge GimpSmudge;




typedef struct _GimpPaintOptions GimpPaintOptions;
typedef struct _GimpSourceOptions GimpSourceOptions;

typedef struct _GimpAirbrushOptions GimpAirbrushOptions;
typedef struct _GimpCloneOptions GimpCloneOptions;
typedef struct _GimpConvolveOptions GimpConvolveOptions;
typedef struct _GimpDodgeBurnOptions GimpDodgeBurnOptions;
typedef struct _GimpEraserOptions GimpEraserOptions;
typedef struct _GimpInkOptions GimpInkOptions;
typedef struct _GimpPencilOptions GimpPencilOptions;
typedef struct _GimpPerspectiveCloneOptions GimpPerspectiveCloneOptions;
typedef struct _GimpSmudgeOptions GimpSmudgeOptions;




typedef struct _GimpPaintCoreUndo GimpPaintCoreUndo;
typedef struct _GimpInkUndo GimpInkUndo;




typedef void (* GimpPaintRegisterCallback) (Gimp *gimp,
                                            GType paint_type,
                                            GType paint_options_type,
                                            const gchar *identifier,
                                            const gchar *blurb,
                                            const gchar *stock_id);

typedef void (* GimpPaintRegisterFunc) (Gimp *gimp,
                                            GimpPaintRegisterCallback callback);
# 239 "../../app/core/core-types.h" 2
# 1 "../../app/text/text-types.h" 1
# 24 "../../app/text/text-types.h"
# 1 "../../app/core/core-types.h" 1
# 25 "../../app/text/text-types.h" 2

# 1 "../../app/text/text-enums.h" 1
# 24 "../../app/text/text-enums.h"
GType gimp_text_box_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_TEXT_BOX_DYNAMIC,
  GIMP_TEXT_BOX_FIXED
} GimpTextBoxMode;




GType gimp_text_outline_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_TEXT_OUTLINE_NONE,
  GIMP_TEXT_OUTLINE_STROKE_ONLY,
  GIMP_TEXT_OUTLINE_STROKE_FILL
} GimpTextOutline;
# 27 "../../app/text/text-types.h" 2


typedef struct _GimpFont GimpFont;
typedef struct _GimpFontList GimpFontList;
typedef struct _GimpText GimpText;
typedef struct _GimpTextLayer GimpTextLayer;
typedef struct _GimpTextLayout GimpTextLayout;
typedef struct _GimpTextUndo GimpTextUndo;
# 240 "../../app/core/core-types.h" 2
# 1 "../../app/vectors/vectors-types.h" 1
# 25 "../../app/vectors/vectors-types.h"
# 1 "../../app/core/core-types.h" 1
# 26 "../../app/vectors/vectors-types.h" 2

# 1 "../../app/vectors/vectors-enums.h" 1
# 24 "../../app/vectors/vectors-enums.h"
typedef enum
{
  GIMP_ANCHOR_ANCHOR,
  GIMP_ANCHOR_CONTROL
} GimpAnchorType;

typedef enum
{
  GIMP_ANCHOR_FEATURE_NONE,
  GIMP_ANCHOR_FEATURE_EDGE,
  GIMP_ANCHOR_FEATURE_ALIGNED,
  GIMP_ANCHOR_FEATURE_SYMMETRIC
} GimpAnchorFeatureType;

typedef enum
{
  EXTEND_SIMPLE,
  EXTEND_EDITABLE
} GimpVectorExtendMode;
# 28 "../../app/vectors/vectors-types.h" 2


typedef struct _GimpAnchor GimpAnchor;

typedef struct _GimpVectors GimpVectors;
typedef struct _GimpVectorsUndo GimpVectorsUndo;
typedef struct _GimpVectorsModUndo GimpVectorsModUndo;
typedef struct _GimpVectorsPropUndo GimpVectorsPropUndo;
typedef struct _GimpStroke GimpStroke;
typedef struct _GimpBezierStroke GimpBezierStroke;
# 241 "../../app/core/core-types.h" 2
# 1 "../../app/pdb/pdb-types.h" 1
# 22 "../../app/pdb/pdb-types.h"
# 1 "../../app/core/core-types.h" 1
# 23 "../../app/pdb/pdb-types.h" 2


typedef struct _GimpPDB GimpPDB;
typedef struct _GimpProcedure GimpProcedure;
typedef struct _GimpPlugInProcedure GimpPlugInProcedure;
typedef struct _GimpTemporaryProcedure GimpTemporaryProcedure;


typedef enum
{
  GIMP_PDB_COMPAT_OFF,
  GIMP_PDB_COMPAT_ON,
  GIMP_PDB_COMPAT_WARN
} GimpPDBCompatMode;
# 242 "../../app/core/core-types.h" 2
# 1 "../../app/plug-in/plug-in-types.h" 1
# 22 "../../app/plug-in/plug-in-types.h"
# 1 "../../app/core/core-types.h" 1
# 23 "../../app/plug-in/plug-in-types.h" 2

# 1 "../../app/plug-in/plug-in-enums.h" 1
# 24 "../../app/plug-in/plug-in-enums.h"
GType gimp_plug_in_image_type_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PLUG_IN_RGB_IMAGE = 1 << 0,
  GIMP_PLUG_IN_GRAY_IMAGE = 1 << 1,
  GIMP_PLUG_IN_INDEXED_IMAGE = 1 << 2,
  GIMP_PLUG_IN_RGBA_IMAGE = 1 << 3,
  GIMP_PLUG_IN_GRAYA_IMAGE = 1 << 4,
  GIMP_PLUG_IN_INDEXEDA_IMAGE = 1 << 5
} GimpPlugInImageType;




GType gimp_plug_in_call_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_PLUG_IN_CALL_NONE,
  GIMP_PLUG_IN_CALL_RUN,
  GIMP_PLUG_IN_CALL_QUERY,
  GIMP_PLUG_IN_CALL_INIT
} GimpPlugInCallMode;
# 25 "../../app/plug-in/plug-in-types.h" 2


typedef struct _GimpPlugIn GimpPlugIn;
typedef struct _GimpPlugInDebug GimpPlugInDebug;
typedef struct _GimpPlugInDef GimpPlugInDef;
typedef struct _GimpPlugInManager GimpPlugInManager;
typedef struct _GimpPlugInMenuBranch GimpPlugInMenuBranch;
typedef struct _GimpPlugInProcFrame GimpPlugInProcFrame;
typedef struct _GimpPlugInShm GimpPlugInShm;
# 243 "../../app/core/core-types.h" 2
# 24 "../../app/gegl/gimp-gegl-types.h" 2

# 1 "../../app/gegl/gimp-gegl-enums.h" 1
# 26 "../../app/gegl/gimp-gegl-enums.h"
GType gimp_cage_mode_get_type (void) __attribute__((__const__));

typedef enum
{
  GIMP_CAGE_MODE_CAGE_CHANGE,
  GIMP_CAGE_MODE_DEFORM
} GimpCageMode;
# 26 "../../app/gegl/gimp-gegl-types.h" 2




typedef struct _GimpOperationTileSink GimpOperationTileSink;
typedef struct _GimpOperationTileSource GimpOperationTileSource;

typedef struct _GimpOperationCageCoefCalc GimpOperationCageCoefCalc;
typedef struct _GimpOperationCageTransform GimpOperationCageTransform;

typedef struct _GimpOperationPointFilter GimpOperationPointFilter;
typedef struct _GimpOperationBrightnessContrast GimpOperationBrightnessContrast;
typedef struct _GimpOperationColorBalance GimpOperationColorBalance;
typedef struct _GimpOperationColorize GimpOperationColorize;
typedef struct _GimpOperationCurves GimpOperationCurves;
typedef struct _GimpOperationDesaturate GimpOperationDesaturate;
typedef struct _GimpOperationHueSaturation GimpOperationHueSaturation;
typedef struct _GimpOperationLevels GimpOperationLevels;
typedef struct _GimpOperationPosterize GimpOperationPosterize;
typedef struct _GimpOperationThreshold GimpOperationThreshold;

typedef struct _GimpOperationPointLayerMode GimpOperationPointLayerMode;
typedef struct _GimpOperationDissolveMode GimpOperationDissolveMode;
typedef struct _GimpOperationBehindMode GimpOperationBehindMode;
typedef struct _GimpOperationMultiplyMode GimpOperationMultiplyMode;
typedef struct _GimpOperationScreenMode GimpOperationScreenMode;
typedef struct _GimpOperationOverlayMode GimpOperationOverlayMode;
typedef struct _GimpOperationDifferenceMode GimpOperationDifferenceMode;
typedef struct _GimpOperationAdditionMode GimpOperationAdditionMode;
typedef struct _GimpOperationSubtractMode GimpOperationSubtractMode;
typedef struct _GimpOperationDarkenOnlyMode GimpOperationDarkenOnlyMode;
typedef struct _GimpOperationLightenOnlyMode GimpOperationLightenOnlyMode;
typedef struct _GimpOperationHueMode GimpOperationHueMode;
typedef struct _GimpOperationSaturationMode GimpOperationSaturationMode;
typedef struct _GimpOperationColorMode GimpOperationColorMode;
typedef struct _GimpOperationValueMode GimpOperationValueMode;
typedef struct _GimpOperationDivideMode GimpOperationDivideMode;
typedef struct _GimpOperationDodgeMode GimpOperationDodgeMode;
typedef struct _GimpOperationBurnMode GimpOperationBurnMode;
typedef struct _GimpOperationHardlightMode GimpOperationHardlightMode;
typedef struct _GimpOperationSoftlightMode GimpOperationSoftlightMode;
typedef struct _GimpOperationGrainExtractMode GimpOperationGrainExtractMode;
typedef struct _GimpOperationGrainMergeMode GimpOperationGrainMergeMode;
typedef struct _GimpOperationColorEraseMode GimpOperationColorEraseMode;
typedef struct _GimpOperationEraseMode GimpOperationEraseMode;
typedef struct _GimpOperationReplaceMode GimpOperationReplaceMode;
typedef struct _GimpOperationAntiEraseMode GimpOperationAntiEraseMode;




typedef struct _GimpBrightnessContrastConfig GimpBrightnessContrastConfig;
typedef struct _GimpCageConfig GimpCageConfig;
typedef struct _GimpColorBalanceConfig GimpColorBalanceConfig;
typedef struct _GimpColorizeConfig GimpColorizeConfig;
typedef struct _GimpCurvesConfig GimpCurvesConfig;
typedef struct _GimpDesaturateConfig GimpDesaturateConfig;
typedef struct _GimpHueSaturationConfig GimpHueSaturationConfig;
typedef struct _GimpLevelsConfig GimpLevelsConfig;
typedef struct _GimpPosterizeConfig GimpPosterizeConfig;
typedef struct _GimpThresholdConfig GimpThresholdConfig;




typedef struct _GimpTileBackendTileManager GimpTileBackendTileManager;




typedef struct _GimpCagePoint GimpCagePoint;
# 30 "gimpoperationtilesink.c" 2


# 1 "../../app/base/tile-manager.h" 1
# 25 "../../app/base/tile-manager.h"
GType gimp_tile_manager_get_type (void) __attribute__((__const__));






TileManager * tile_manager_new (gint width,
                                              gint height,
                                              gint bpp);



TileManager * tile_manager_ref (TileManager *tm);
void tile_manager_unref (TileManager *tm);



TileManager * tile_manager_duplicate (TileManager *tm);






void tile_manager_set_validate_proc (TileManager *tm,
                                              TileValidateProc proc,
                                              gpointer user_data);



Tile * tile_manager_get_tile (TileManager *tm,
                                              gint xpixel,
                                              gint ypixel,
                                              gboolean wantread,
                                              gboolean wantwrite);



Tile * tile_manager_get (TileManager *tm,
                                              gint tile_num,
                                              gboolean wantread,
                                              gboolean wantwrite);

Tile * tile_manager_get_at (TileManager *tm,
                                              gint tile_col,
                                              gint tile_row,
                                              gboolean wantread,
                                              gboolean wantwrite);

void tile_manager_map_tile (TileManager *tm,
                                              gint xpixel,
                                              gint ypixel,
                                              Tile *srctile);

void tile_manager_map (TileManager *tm,
                                              gint tile_num,
                                              Tile *srctile);



void tile_manager_validate_tile (TileManager *tm,
                                              Tile *tile);

void tile_manager_invalidate_area (TileManager *tm,
                                              gint x,
                                              gint y,
                                              gint w,
                                              gint h);

gint tile_manager_width (const TileManager *tm);
gint tile_manager_height (const TileManager *tm);
gint tile_manager_bpp (const TileManager *tm);

gint64 tile_manager_get_memsize (const TileManager *tm,
                                              gboolean sparse);

void tile_manager_get_tile_coordinates (TileManager *tm,
                                                 Tile *tile,
                                                 gint *x,
                                                 gint *y);
void tile_manager_get_tile_col_row (TileManager *tm,
                                                 Tile *tile,
                                                 gint *tile_col,
                                                 gint *tile_row);

void tile_manager_map_over_tile (TileManager *tm,
                                                 Tile *tile,
                                                 Tile *srctile);

void tile_manager_read_pixel_data (TileManager *tm,
                                                 gint x1,
                                                 gint y1,
                                                 gint x2,
                                                 gint y2,
                                                 guchar *buffer,
                                                 guint stride);

void tile_manager_write_pixel_data (TileManager *tm,
                                                 gint x1,
                                                 gint y1,
                                                 gint x2,
                                                 gint y2,
                                                 const guchar *buffer,
                                                 guint stride);




void tile_manager_read_pixel_data_1 (TileManager *tm,
                                                 gint x,
                                                 gint y,
                                                 guchar *buffer);

void tile_manager_write_pixel_data_1 (TileManager *tm,
                                                 gint x,
                                                 gint y,
                                                 const guchar *buffer);
# 33 "gimpoperationtilesink.c" 2
# 1 "../../app/base/pixel-region.h" 1
# 22 "../../app/base/pixel-region.h"
struct _PixelRegion
{
  guchar *data;
  TileManager *tiles;
  Tile *curtile;
  gint offx;
  gint offy;
  gint rowstride;
  gint x;
  gint y;
  gint w;
  gint h;
  gint bytes;
  gboolean dirty;
  gint process_count;
};

struct _PixelRegionHolder
{
  PixelRegion *PR;
  guchar *original_data;
  gint startx;
  gint starty;
  gint count;
};

struct _PixelRegionIterator
{
  GSList *pixel_regions;
  gint region_width;
  gint region_height;
  gint portion_width;
  gint portion_height;
  gint process_count;
};




void pixel_region_init (PixelRegion *PR,
                                     TileManager *tiles,
                                     gint x,
                                     gint y,
                                     gint w,
                                     gint h,
                                     gboolean dirty);
void pixel_region_init_temp_buf (PixelRegion *PR,
                                     TempBuf *temp_buf,
                                     gint x,
                                     gint y,
                                     gint w,
                                     gint h);
void pixel_region_init_data (PixelRegion *PR,
                                     guchar *data,
                                     gint bytes,
                                     gint rowstride,
                                     gint x,
                                     gint y,
                                     gint w,
                                     gint h);
void pixel_region_resize (PixelRegion *PR,
                                     gint x,
                                     gint y,
                                     gint w,
                                     gint h);
void pixel_region_get_row (PixelRegion *PR,
                                     gint x,
                                     gint y,
                                     gint w,
                                     guchar *data,
                                     gint subsample);
void pixel_region_set_row (PixelRegion *PR,
                                     gint x,
                                     gint y,
                                     gint w,
                                     const guchar *data);
void pixel_region_get_col (PixelRegion *PR,
                                     gint x,
                                     gint y,
                                     gint h,
                                     guchar *data,
                                     gint subsample);
void pixel_region_set_col (PixelRegion *PR,
                                     gint x,
                                     gint y,
                                     gint h,
                                     const guchar *data);
gboolean pixel_region_has_alpha (PixelRegion *PR);

PixelRegionIterator * pixel_regions_register (gint num_regions,
                                                  ...);
PixelRegionIterator * pixel_regions_process (PixelRegionIterator *PRI);
void pixel_regions_process_stop (PixelRegionIterator *PRI);
# 34 "gimpoperationtilesink.c" 2

# 1 "./gimp-gegl-utils.h" 1
# 25 "./gimp-gegl-utils.h"
const Babl * gimp_bpp_to_babl_format (guint bpp,
                                                 gboolean linear) __attribute__((__const__));

TileManager * gimp_buffer_to_tiles (GeglBuffer *buffer);

const gchar * gimp_layer_mode_to_gegl_operation (GimpLayerModeEffects mode) __attribute__((__const__));
const gchar * gimp_interpolation_to_gegl_filter (GimpInterpolationType interpolation) __attribute__((__const__));
# 36 "gimpoperationtilesink.c" 2
# 1 "./gimpoperationtilesink.h" 1
# 24 "./gimpoperationtilesink.h"
# 1 "/usr/include/gegl-0.2/gegl-plugin.h" 1
# 24 "/usr/include/gegl-0.2/gegl-plugin.h"
# 1 "../../config.h" 1
# 25 "/usr/include/gegl-0.2/gegl-plugin.h" 2
# 34 "/usr/include/gegl-0.2/gegl-plugin.h"
typedef struct _GeglOperation GeglOperation;
typedef struct _GeglOperationContext GeglOperationContext;
typedef struct _GeglPad GeglPad;
typedef struct _GeglConnection GeglConnection;



# 1 "/usr/include/gegl-0.2/gegl-utils.h" 1
# 51 "/usr/include/gegl-0.2/gegl-utils.h"
void gegl_rectangle_set (GeglRectangle *rectangle,
                                          gint x,
                                          gint y,
                                          guint width,
                                          guint height);
# 66 "/usr/include/gegl-0.2/gegl-utils.h"
gboolean gegl_rectangle_equal (const GeglRectangle *rectangle1,
                                          const GeglRectangle *rectangle2);
# 81 "/usr/include/gegl-0.2/gegl-utils.h"
gboolean gegl_rectangle_equal_coords (const GeglRectangle *rectangle,
                                          gint x,
                                          gint y,
                                          gint width,
                                          gint height);
# 95 "/usr/include/gegl-0.2/gegl-utils.h"
gboolean gegl_rectangle_is_empty (const GeglRectangle *rectangle);
# 105 "/usr/include/gegl-0.2/gegl-utils.h"
void gegl_rectangle_copy (GeglRectangle *destination,
                                          const GeglRectangle *source);
# 117 "/usr/include/gegl-0.2/gegl-utils.h"
void gegl_rectangle_bounding_box (GeglRectangle *destination,
                                          const GeglRectangle *source1,
                                          const GeglRectangle *source2);
# 133 "/usr/include/gegl-0.2/gegl-utils.h"
gboolean gegl_rectangle_intersect (GeglRectangle *dest,
                                          const GeglRectangle *src1,
                                          const GeglRectangle *src2);
# 146 "/usr/include/gegl-0.2/gegl-utils.h"
gboolean gegl_rectangle_contains (const GeglRectangle *parent,
                                          const GeglRectangle *child);






GeglRectangle gegl_rectangle_infinite_plane (void);
# 163 "/usr/include/gegl-0.2/gegl-utils.h"
gboolean gegl_rectangle_is_infinite_plane (const GeglRectangle *rectangle);







void gegl_rectangle_dump (const GeglRectangle *rectangle);
# 189 "/usr/include/gegl-0.2/gegl-utils.h"
gpointer gegl_malloc (gsize n_bytes);







void gegl_free (gpointer mem);
# 208 "/usr/include/gegl-0.2/gegl-utils.h"
inline gint _gegl_float_epsilon_zero (float value);
gint _gegl_float_epsilon_equal (float v1,
                                       float v2);
# 41 "/usr/include/gegl-0.2/gegl-plugin.h" 2

# 1 "/usr/include/gegl-0.2/gegl-paramspecs.h" 1
# 35 "/usr/include/gegl-0.2/gegl-paramspecs.h"
typedef struct _GeglParamSpecString GeglParamSpecString;
typedef struct _GeglParamSpecDouble GeglParamSpecDouble;
typedef struct _GeglParamSpecInt GeglParamSpecInt;
# 51 "/usr/include/gegl-0.2/gegl-paramspecs.h"
struct _GeglParamSpecDouble
{
  GParamSpecDouble parent_instance;
  gdouble ui_minimum;
  gdouble ui_maximum;
  gdouble ui_gamma;





};

GType gegl_param_double_get_type (void) __attribute__((__const__));

GParamSpec * gegl_param_spec_double (const gchar *name,
                                     const gchar *nick,
                                     const gchar *blurb,
                                     gdouble minimum,
                                     gdouble maximum,
                                     gdouble default_value,
                                     gdouble ui_minimum,
                                     gdouble ui_maximum,
                                     gdouble ui_gamma,
                                     GParamFlags flags);
# 87 "/usr/include/gegl-0.2/gegl-paramspecs.h"
struct _GeglParamSpecInt
{
  GParamSpecInt parent_instance;
  gint ui_minimum;
  gint ui_maximum;
  gdouble ui_gamma;
};

GType gegl_param_int_get_type (void) __attribute__((__const__));

GParamSpec * gegl_param_spec_int (const gchar *name,
                                  const gchar *nick,
                                  const gchar *blurb,
                                  gint minimum,
                                  gint maximum,
                                  gint default_value,
                                  gint ui_minimum,
                                  gint ui_maximum,
                                  gdouble ui_gamma,
                                  GParamFlags flags);
# 117 "/usr/include/gegl-0.2/gegl-paramspecs.h"
struct _GeglParamSpecString
{
  GParamSpecString parent_instance;

  guint no_validate : 1;
  guint null_ok : 1;
};

GType gegl_param_string_get_type (void) __attribute__((__const__));

GParamSpec * gegl_param_spec_string (const gchar *name,
                                         const gchar *nick,
                                         const gchar *blurb,
                                         gboolean no_validate,
                                         gboolean null_ok,
                                         const gchar *default_value,
                                         GParamFlags flags);
# 144 "/usr/include/gegl-0.2/gegl-paramspecs.h"
typedef struct _GeglParamSpecFilePath GeglParamSpecFilePath;

struct _GeglParamSpecFilePath
{
  GParamSpecString parent_instance;

  guint no_validate : 1;
  guint null_ok : 1;
};

GType gegl_param_file_path_get_type (void) __attribute__((__const__));

GParamSpec * gegl_param_spec_file_path (const gchar *name,
                                        const gchar *nick,
                                        const gchar *blurb,
                                        gboolean no_validate,
                                        gboolean null_ok,
                                        const gchar *default_value,
                                        GParamFlags flags);
# 173 "/usr/include/gegl-0.2/gegl-paramspecs.h"
typedef struct _GeglParamSpecMultiline GeglParamSpecMultiline;

struct _GeglParamSpecMultiline
{
  GParamSpecString parent_instance;

  guint no_validate : 1;
  guint null_ok : 1;
};

GType gegl_param_multiline_get_type (void) __attribute__((__const__));

GParamSpec * gegl_param_spec_multiline (const gchar *name,
                                   const gchar *nick,
                                   const gchar *blurb,
                                   const gchar *default_value,
                                   GParamFlags flags);
# 202 "/usr/include/gegl-0.2/gegl-paramspecs.h"
typedef struct _GeglParamSpecEnum GeglParamSpecEnum;

struct _GeglParamSpecEnum
{
  GParamSpecEnum parent_instance;

  GSList *excluded_values;
};

GType gegl_param_enum_get_type (void) __attribute__((__const__));

GParamSpec * gegl_param_spec_enum (const gchar *name,
                                           const gchar *nick,
                                           const gchar *blurb,
                                           GType enum_type,
                                           gint default_value,
                                           GParamFlags flags);

void gegl_param_spec_enum_exclude_value (GeglParamSpecEnum *espec,
                                           gint value);
# 43 "/usr/include/gegl-0.2/gegl-plugin.h" 2
# 1 "/usr/include/glib-2.0/gmodule.h" 1
# 42 "/usr/include/glib-2.0/gmodule.h"
typedef enum
{
  G_MODULE_BIND_LAZY = 1 << 0,
  G_MODULE_BIND_LOCAL = 1 << 1,
  G_MODULE_BIND_MASK = 0x03
} GModuleFlags;

typedef struct _GModule GModule;
typedef const gchar* (*GModuleCheckInit) (GModule *module);
typedef void (*GModuleUnload) (GModule *module);


extern
gboolean g_module_supported (void) __attribute__((__const__));


extern
GModule* g_module_open (const gchar *file_name,
           GModuleFlags flags);


extern
gboolean g_module_close (GModule *module);


extern
void g_module_make_resident (GModule *module);


extern
const gchar * g_module_error (void);


extern
gboolean g_module_symbol (GModule *module,
           const gchar *symbol_name,
           gpointer *symbol);


extern
const gchar * g_module_name (GModule *module);
# 95 "/usr/include/glib-2.0/gmodule.h"
extern
gchar* g_module_build_path (const gchar *directory,
           const gchar *module_name);
# 44 "/usr/include/gegl-0.2/gegl-plugin.h" 2

typedef struct _GeglModule GeglModule;
typedef struct _GeglModuleInfo GeglModuleInfo;
typedef struct _GeglModuleDB GeglModuleDB;
# 65 "/usr/include/gegl-0.2/gegl-plugin.h"
struct _GeglModuleInfo
{
  guint32 abi_version;
};

GType gegl_module_register_type (GTypeModule *module,
                                 GType parent_type,
                                 const gchar *type_name,
                                 const GTypeInfo *type_info,
                                 GTypeFlags flags);

gint gegl_operation_context_get_level (GeglOperationContext *self);
GeglBuffer *gegl_operation_context_get_source (GeglOperationContext *self,
                                                   const gchar *padname);
GeglBuffer *gegl_operation_context_get_target (GeglOperationContext *self,
                                                   const gchar *padname);
void gegl_operation_context_set_object (GeglOperationContext *context,
                                                   const gchar *padname,
                                                   GObject *data);
void gegl_operation_context_take_object(GeglOperationContext *context,
                                                   const gchar *padname,
                                                   GObject *data);
GObject *gegl_operation_context_get_object (GeglOperationContext *context,
                                                   const gchar *padname);

void gegl_extension_handler_register (const gchar *extension,
                                                    const gchar *handler);
void gegl_extension_handler_register_saver
                                                   (const gchar *extension,
                                                    const gchar *handler);
const gchar * gegl_extension_handler_get (const gchar *extension);
const gchar * gegl_extension_handler_get_saver (const gchar *extension);
# 127 "/usr/include/gegl-0.2/gegl-plugin.h"
typedef struct
{
  GObject parent_instance;
  void (* get) (GeglSampler *self,
                gdouble x,
                gdouble y,
                GeglMatrix2 *scale,
                void *output);
} SamplerMock;








# 1 "/usr/include/gegl-0.2/operation/gegl-operation.h" 1
# 38 "/usr/include/gegl-0.2/operation/gegl-operation.h"
typedef struct _GeglOperationClass GeglOperationClass;

struct _GeglOperation
{
  GObject parent_instance;


  GeglNode *node;

};
# 68 "/usr/include/gegl-0.2/operation/gegl-operation.h"
struct _GeglOperationClass
{
  GObjectClass parent_class;

  const gchar *name;


  const gchar *compat_name;

  GHashTable *keys;

  guint no_cache :1;
  guint opencl_support:1;
  guint64 bit_pad:62;




  void (*attach) (GeglOperation *operation);





  void (*prepare) (GeglOperation *operation);



  GeglRectangle (*get_bounding_box) (GeglOperation *operation);





  GeglRectangle (*get_invalidated_by_change) (GeglOperation *operation,
                                              const gchar *input_pad,
                                              const GeglRectangle *input_roi);





  GeglRectangle (*get_required_for_output) (GeglOperation *operation,
                                              const gchar *input_pad,
                                              const GeglRectangle *output_roi);






  GeglRectangle (*get_cached_region) (GeglOperation *operation,
                                              const GeglRectangle *output_roi);





  gboolean (*process) (GeglOperation *operation,
                                              GeglOperationContext *context,
                                              const gchar *output_pad,
                                              const GeglRectangle *roi,
                                              gint level);
# 139 "/usr/include/gegl-0.2/operation/gegl-operation.h"
  GeglNode* (*detect) (GeglOperation *operation,
                                              gint x,
                                              gint y);
  gpointer pad[10];
};



GType gegl_operation_get_type (void) __attribute__((__const__));

GeglRectangle gegl_operation_get_invalidated_by_change
                                             (GeglOperation *operation,
                                              const gchar *input_pad,
                                              const GeglRectangle *roi);
GeglRectangle gegl_operation_get_bounding_box (GeglOperation *operation);


GeglRectangle * gegl_operation_source_get_bounding_box
                                             (GeglOperation *operation,
                                              const gchar *pad_name);


GeglRectangle gegl_operation_get_cached_region
                                             (GeglOperation *operation,
                                              const GeglRectangle *roi);

GeglRectangle gegl_operation_get_required_for_output
                                             (GeglOperation *operation,
                                              const gchar *input_pad,
                                              const GeglRectangle *roi);

GeglNode *gegl_operation_detect (GeglOperation *operation,
                                              gint x,
                                              gint y);






void gegl_operation_attach (GeglOperation *operation,
                                              GeglNode *node);
void gegl_operation_prepare (GeglOperation *operation);
gboolean gegl_operation_process (GeglOperation *operation,
                                              GeglOperationContext *context,
                                              const gchar *output_pad,
                                              const GeglRectangle *roi,
                                              gint level);






void gegl_operation_create_pad (GeglOperation *operation,
                                              GParamSpec *param_spec);




void gegl_operation_set_format (GeglOperation *operation,
                                              const gchar *pad_name,
                                              const Babl *format);


const Babl * gegl_operation_get_format (GeglOperation *operation,
                                              const gchar *pad_name);

const gchar * gegl_operation_get_name (GeglOperation *operation);



GeglNode * gegl_operation_get_source_node (GeglOperation *operation,
                                                const gchar *pad_name);

GParamSpec ** gegl_operation_list_properties (const gchar *operation_type,
                                                guint *n_properties_p);


void gegl_operation_class_set_key (GeglOperationClass *klass,
                                                const gchar *key_name,
                                                const gchar *key_value);

const gchar * gegl_operation_class_get_key (GeglOperationClass *operation_class,
                                                const gchar *key_name);

void gegl_operation_class_set_keys (GeglOperationClass *klass,
                                                const gchar *key_name,
                                                ...);

gchar ** gegl_operation_list_keys (const gchar *operation_type,
                                                guint *n_keys);

void gegl_operation_set_key (const gchar *operation_type,
                                                const gchar *key_name,
                                                const gchar *key_value);

const gchar * gegl_operation_get_key (const gchar *operation_type,
                                                 const gchar *key_name);







void gegl_operation_invalidate (GeglOperation *operation,
                                          const GeglRectangle *roi,
                                          gboolean clear_cache);



gboolean gegl_operation_calc_need_rects (GeglOperation *operation,
                                              gpointer context_id);
void gegl_operation_path_prop_changed (GeglPath *path,
                                              GeglOperation *operation);
# 144 "/usr/include/gegl-0.2/gegl-plugin.h" 2
# 1 "/usr/include/gegl-0.2/operation/gegl-operation-filter.h" 1
# 37 "/usr/include/gegl-0.2/operation/gegl-operation-filter.h"
typedef struct _GeglOperationFilter GeglOperationFilter;
struct _GeglOperationFilter
{
  GeglOperation parent_instance;
};

typedef struct _GeglOperationFilterClass GeglOperationFilterClass;
struct _GeglOperationFilterClass
{
  GeglOperationClass parent_class;

  gboolean (* process) (GeglOperation *self,
                        GeglBuffer *input,
                        GeglBuffer *output,
                        const GeglRectangle *roi,
                        gint level);
  gpointer pad[4];
};

GType gegl_operation_filter_get_type (void) __attribute__((__const__));
# 145 "/usr/include/gegl-0.2/gegl-plugin.h" 2
# 1 "/usr/include/gegl-0.2/operation/gegl-operation-area-filter.h" 1
# 39 "/usr/include/gegl-0.2/operation/gegl-operation-area-filter.h"
typedef struct _GeglOperationAreaFilter GeglOperationAreaFilter;
struct _GeglOperationAreaFilter
{
  GeglOperationFilter parent_instance;

  gint left;
  gint right;
  gint top;
  gint bottom;
};

typedef struct _GeglOperationAreaFilterClass GeglOperationAreaFilterClass;
struct _GeglOperationAreaFilterClass
{
  GeglOperationFilterClass parent_class;
  gpointer pad[4];
};

GType gegl_operation_area_filter_get_type (void) __attribute__((__const__));
# 146 "/usr/include/gegl-0.2/gegl-plugin.h" 2
# 1 "/usr/include/gegl-0.2/operation/gegl-operation-point-filter.h" 1
# 31 "/usr/include/gegl-0.2/operation/gegl-operation-point-filter.h"
# 1 "/usr/include/gegl-0.2/opencl/gegl-cl.h" 1



# 1 "/usr/include/gegl-0.2/opencl/gegl-cl-types.h" 1





# 1 "/usr/include/gegl-0.2/opencl/cl.h" 1
# 32 "/usr/include/gegl-0.2/opencl/cl.h"
# 1 "/usr/include/gegl-0.2/opencl/cl_platform.h" 1
# 155 "/usr/include/gegl-0.2/opencl/cl_platform.h"
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
# 156 "/usr/include/gegl-0.2/opencl/cl_platform.h" 2


typedef int8_t cl_char;
typedef uint8_t cl_uchar;
typedef int16_t cl_short __attribute__((aligned(2)));
typedef uint16_t cl_ushort __attribute__((aligned(2)));
typedef int32_t cl_int __attribute__((aligned(4)));
typedef uint32_t cl_uint __attribute__((aligned(4)));
typedef int64_t cl_long __attribute__((aligned(8)));
typedef uint64_t cl_ulong __attribute__((aligned(8)));

typedef uint16_t cl_half __attribute__((aligned(2)));
typedef float cl_float __attribute__((aligned(4)));
typedef double cl_double __attribute__((aligned(8)));
# 253 "/usr/include/gegl-0.2/opencl/cl_platform.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3
# 254 "/usr/include/gegl-0.2/opencl/cl_platform.h" 2


typedef unsigned int cl_GLuint;
typedef int cl_GLint;
typedef unsigned int cl_GLenum;
# 299 "/usr/include/gegl-0.2/opencl/cl_platform.h"
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/xmmintrin.h" 1 3
# 31 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/xmmintrin.h" 3
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/mmintrin.h" 1 3
# 31 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/mmintrin.h" 3
typedef long long __m64 __attribute__((__vector_size__(8)));

typedef int __v2si __attribute__((__vector_size__(8)));
typedef short __v4hi __attribute__((__vector_size__(8)));
typedef char __v8qi __attribute__((__vector_size__(8)));




static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_empty(void)
{
    __builtin_ia32_emms();
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cvtsi32_si64(int __i)
{
    return (__m64)__builtin_ia32_vec_init_v2si(__i, 0);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_cvtsi64_si32(__m64 __m)
{
    return __builtin_ia32_vec_ext_v2si((__v2si)__m, 0);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cvtsi64_m64(long long __i)
{
    return (__m64)__i;
}

static __inline__ long long __attribute__((__always_inline__, __nodebug__))
_mm_cvtm64_si64(__m64 __m)
{
    return (long long)__m;
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_packs_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_packsswb((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_packs_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_packssdw((__v2si)__m1, (__v2si)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_packs_pu16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_packuswb((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_unpackhi_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_punpckhbw((__v8qi)__m1, (__v8qi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_unpackhi_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_punpckhwd((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_unpackhi_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_punpckhdq((__v2si)__m1, (__v2si)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_unpacklo_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_punpcklbw((__v8qi)__m1, (__v8qi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_unpacklo_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_punpcklwd((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_unpacklo_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_punpckldq((__v2si)__m1, (__v2si)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_add_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_paddb((__v8qi)__m1, (__v8qi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_add_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_paddw((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_add_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_paddd((__v2si)__m1, (__v2si)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_adds_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_paddsb((__v8qi)__m1, (__v8qi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_adds_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_paddsw((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_adds_pu8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_paddusb((__v8qi)__m1, (__v8qi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_adds_pu16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_paddusw((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_sub_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_psubb((__v8qi)__m1, (__v8qi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_sub_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_psubw((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_sub_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_psubd((__v2si)__m1, (__v2si)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_subs_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_psubsb((__v8qi)__m1, (__v8qi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_subs_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_psubsw((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_subs_pu8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_psubusb((__v8qi)__m1, (__v8qi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_subs_pu16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_psubusw((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_madd_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pmaddwd((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_mulhi_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pmulhw((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_mullo_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pmullw((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_sll_pi16(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_psllw((__v4hi)__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_slli_pi16(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_psllwi((__v4hi)__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_sll_pi32(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_pslld((__v2si)__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_slli_pi32(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_pslldi((__v2si)__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_sll_si64(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_psllq(__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_slli_si64(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_psllqi(__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_sra_pi16(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_psraw((__v4hi)__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_srai_pi16(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_psrawi((__v4hi)__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_sra_pi32(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_psrad((__v2si)__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_srai_pi32(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_psradi((__v2si)__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_srl_pi16(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_psrlw((__v4hi)__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_srli_pi16(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_psrlwi((__v4hi)__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_srl_pi32(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_psrld((__v2si)__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_srli_pi32(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_psrldi((__v2si)__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_srl_si64(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_psrlq(__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_srli_si64(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_psrlqi(__m, __count);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_and_si64(__m64 __m1, __m64 __m2)
{
    return __builtin_ia32_pand(__m1, __m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_andnot_si64(__m64 __m1, __m64 __m2)
{
    return __builtin_ia32_pandn(__m1, __m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_or_si64(__m64 __m1, __m64 __m2)
{
    return __builtin_ia32_por(__m1, __m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_xor_si64(__m64 __m1, __m64 __m2)
{
    return __builtin_ia32_pxor(__m1, __m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cmpeq_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pcmpeqb((__v8qi)__m1, (__v8qi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cmpeq_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pcmpeqw((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cmpeq_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pcmpeqd((__v2si)__m1, (__v2si)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cmpgt_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pcmpgtb((__v8qi)__m1, (__v8qi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cmpgt_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pcmpgtw((__v4hi)__m1, (__v4hi)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cmpgt_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pcmpgtd((__v2si)__m1, (__v2si)__m2);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_setzero_si64(void)
{
    return (__m64){ 0LL };
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_set_pi32(int __i1, int __i0)
{
    return (__m64)__builtin_ia32_vec_init_v2si(__i0, __i1);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_set_pi16(short __s3, short __s2, short __s1, short __s0)
{
    return (__m64)__builtin_ia32_vec_init_v4hi(__s0, __s1, __s2, __s3);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_set_pi8(char __b7, char __b6, char __b5, char __b4, char __b3, char __b2,
            char __b1, char __b0)
{
    return (__m64)__builtin_ia32_vec_init_v8qi(__b0, __b1, __b2, __b3,
                                               __b4, __b5, __b6, __b7);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_set1_pi32(int __i)
{
    return _mm_set_pi32(__i, __i);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_set1_pi16(short __w)
{
    return _mm_set_pi16(__w, __w, __w, __w);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_set1_pi8(char __b)
{
    return _mm_set_pi8(__b, __b, __b, __b, __b, __b, __b, __b);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_setr_pi32(int __i0, int __i1)
{
    return _mm_set_pi32(__i1, __i0);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_setr_pi16(short __w0, short __w1, short __w2, short __w3)
{
    return _mm_set_pi16(__w3, __w2, __w1, __w0);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_setr_pi8(char __b0, char __b1, char __b2, char __b3, char __b4, char __b5,
             char __b6, char __b7)
{
    return _mm_set_pi8(__b7, __b6, __b5, __b4, __b3, __b2, __b1, __b0);
}
# 32 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/xmmintrin.h" 2 3

typedef int __v4si __attribute__((__vector_size__(16)));
typedef float __v4sf __attribute__((__vector_size__(16)));
typedef float __m128 __attribute__((__vector_size__(16)));





# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/mm_malloc.h" 1 3
# 27 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/mm_malloc.h" 3
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
# 28 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/mm_malloc.h" 2 3





extern int posix_memalign(void **__memptr, size_t __alignment, size_t __size);
# 44 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/mm_malloc.h" 3
static __inline__ void *__attribute__((__always_inline__, __nodebug__,
                                       __malloc__))
_mm_malloc(size_t __size, size_t __align)
{
  if (__align == 1) {
    return malloc(__size);
  }

  if (!(__align & (__align - 1)) && __align < sizeof(void *))
    __align = sizeof(void *);

  void *__mallocedMemory;





  if (posix_memalign(&__mallocedMemory, __align, __size))
    return 0;


  return __mallocedMemory;
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_free(void *__p)
{
  free(__p);
}
# 41 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/xmmintrin.h" 2 3





static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_add_ss(__m128 __a, __m128 __b)
{
  __a[0] += __b[0];
  return __a;
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_add_ps(__m128 __a, __m128 __b)
{
  return __a + __b;
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_sub_ss(__m128 __a, __m128 __b)
{
  __a[0] -= __b[0];
  return __a;
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_sub_ps(__m128 __a, __m128 __b)
{
  return __a - __b;
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_mul_ss(__m128 __a, __m128 __b)
{
  __a[0] *= __b[0];
  return __a;
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_mul_ps(__m128 __a, __m128 __b)
{
  return __a * __b;
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_div_ss(__m128 __a, __m128 __b)
{
  __a[0] /= __b[0];
  return __a;
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_div_ps(__m128 __a, __m128 __b)
{
  return __a / __b;
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_sqrt_ss(__m128 __a)
{
  __m128 __c = __builtin_ia32_sqrtss(__a);
  return (__m128) { __c[0], __a[1], __a[2], __a[3] };
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_sqrt_ps(__m128 __a)
{
  return __builtin_ia32_sqrtps(__a);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_rcp_ss(__m128 __a)
{
  __m128 __c = __builtin_ia32_rcpss(__a);
  return (__m128) { __c[0], __a[1], __a[2], __a[3] };
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_rcp_ps(__m128 __a)
{
  return __builtin_ia32_rcpps(__a);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_rsqrt_ss(__m128 __a)
{
  __m128 __c = __builtin_ia32_rsqrtss(__a);
  return (__m128) { __c[0], __a[1], __a[2], __a[3] };
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_rsqrt_ps(__m128 __a)
{
  return __builtin_ia32_rsqrtps(__a);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_min_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_minss(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_min_ps(__m128 __a, __m128 __b)
{
  return __builtin_ia32_minps(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_max_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_maxss(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_max_ps(__m128 __a, __m128 __b)
{
  return __builtin_ia32_maxps(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_and_ps(__m128 __a, __m128 __b)
{
  return (__m128)((__v4si)__a & (__v4si)__b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_andnot_ps(__m128 __a, __m128 __b)
{
  return (__m128)(~(__v4si)__a & (__v4si)__b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_or_ps(__m128 __a, __m128 __b)
{
  return (__m128)((__v4si)__a | (__v4si)__b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_xor_ps(__m128 __a, __m128 __b)
{
  return (__m128)((__v4si)__a ^ (__v4si)__b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpeq_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpeqss(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpeq_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpeqps(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmplt_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpltss(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmplt_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpltps(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmple_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpless(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmple_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpleps(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpgt_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_shufflevector(__a,
                                         __builtin_ia32_cmpltss(__b, __a),
                                         4, 1, 2, 3);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpgt_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpltps(__b, __a);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpge_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_shufflevector(__a,
                                         __builtin_ia32_cmpless(__b, __a),
                                         4, 1, 2, 3);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpge_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpleps(__b, __a);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpneq_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpneqss(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpneq_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpneqps(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpnlt_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnltss(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpnlt_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnltps(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpnle_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnless(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpnle_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnleps(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpngt_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_shufflevector(__a,
                                         __builtin_ia32_cmpnltss(__b, __a),
                                         4, 1, 2, 3);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpngt_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnltps(__b, __a);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpnge_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_shufflevector(__a,
                                         __builtin_ia32_cmpnless(__b, __a),
                                         4, 1, 2, 3);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpnge_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnleps(__b, __a);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpord_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpordss(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpord_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpordps(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpunord_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpunordss(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cmpunord_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpunordps(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_comieq_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comieq(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_comilt_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comilt(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_comile_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comile(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_comigt_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comigt(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_comige_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comige(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_comineq_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comineq(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_ucomieq_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomieq(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_ucomilt_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomilt(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_ucomile_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomile(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_ucomigt_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomigt(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_ucomige_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomige(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_ucomineq_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomineq(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_cvtss_si32(__m128 __a)
{
  return __builtin_ia32_cvtss2si(__a);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_cvt_ss2si(__m128 __a)
{
  return _mm_cvtss_si32(__a);
}



static __inline__ long long __attribute__((__always_inline__, __nodebug__))
_mm_cvtss_si64(__m128 __a)
{
  return __builtin_ia32_cvtss2si64(__a);
}



static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cvtps_pi32(__m128 __a)
{
  return (__m64)__builtin_ia32_cvtps2pi(__a);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cvt_ps2pi(__m128 __a)
{
  return _mm_cvtps_pi32(__a);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_cvttss_si32(__m128 __a)
{
  return __a[0];
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_cvtt_ss2si(__m128 __a)
{
  return _mm_cvttss_si32(__a);
}

static __inline__ long long __attribute__((__always_inline__, __nodebug__))
_mm_cvttss_si64(__m128 __a)
{
  return __a[0];
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cvttps_pi32(__m128 __a)
{
  return (__m64)__builtin_ia32_cvttps2pi(__a);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cvtt_ps2pi(__m128 __a)
{
  return _mm_cvttps_pi32(__a);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cvtsi32_ss(__m128 __a, int __b)
{
  __a[0] = __b;
  return __a;
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cvt_si2ss(__m128 __a, int __b)
{
  return _mm_cvtsi32_ss(__a, __b);
}



static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cvtsi64_ss(__m128 __a, long long __b)
{
  __a[0] = __b;
  return __a;
}



static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cvtpi32_ps(__m128 __a, __m64 __b)
{
  return __builtin_ia32_cvtpi2ps(__a, (__v2si)__b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cvt_pi2ps(__m128 __a, __m64 __b)
{
  return _mm_cvtpi32_ps(__a, __b);
}

static __inline__ float __attribute__((__always_inline__, __nodebug__))
_mm_cvtss_f32(__m128 __a)
{
  return __a[0];
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_loadh_pi(__m128 __a, const __m64 *__p)
{
  typedef float __mm_loadh_pi_v2f32 __attribute__((__vector_size__(8)));
  struct __mm_loadh_pi_struct {
    __mm_loadh_pi_v2f32 __u;
  } __attribute__((__packed__, __may_alias__));
  __mm_loadh_pi_v2f32 __b = ((struct __mm_loadh_pi_struct*)__p)->__u;
  __m128 __bb = __builtin_shufflevector(__b, __b, 0, 1, 0, 1);
  return __builtin_shufflevector(__a, __bb, 0, 1, 4, 5);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_loadl_pi(__m128 __a, const __m64 *__p)
{
  typedef float __mm_loadl_pi_v2f32 __attribute__((__vector_size__(8)));
  struct __mm_loadl_pi_struct {
    __mm_loadl_pi_v2f32 __u;
  } __attribute__((__packed__, __may_alias__));
  __mm_loadl_pi_v2f32 __b = ((struct __mm_loadl_pi_struct*)__p)->__u;
  __m128 __bb = __builtin_shufflevector(__b, __b, 0, 1, 0, 1);
  return __builtin_shufflevector(__a, __bb, 4, 5, 2, 3);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_load_ss(const float *__p)
{
  struct __mm_load_ss_struct {
    float __u;
  } __attribute__((__packed__, __may_alias__));
  float __u = ((struct __mm_load_ss_struct*)__p)->__u;
  return (__m128){ __u, 0, 0, 0 };
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_load1_ps(const float *__p)
{
  struct __mm_load1_ps_struct {
    float __u;
  } __attribute__((__packed__, __may_alias__));
  float __u = ((struct __mm_load1_ps_struct*)__p)->__u;
  return (__m128){ __u, __u, __u, __u };
}



static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_load_ps(const float *__p)
{
  return *(__m128*)__p;
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_loadu_ps(const float *__p)
{
  struct __loadu_ps {
    __m128 __v;
  } __attribute__((__packed__, __may_alias__));
  return ((struct __loadu_ps*)__p)->__v;
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_loadr_ps(const float *__p)
{
  __m128 __a = _mm_load_ps(__p);
  return __builtin_shufflevector(__a, __a, 3, 2, 1, 0);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_set_ss(float __w)
{
  return (__m128){ __w, 0, 0, 0 };
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_set1_ps(float __w)
{
  return (__m128){ __w, __w, __w, __w };
}


static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_set_ps1(float __w)
{
    return _mm_set1_ps(__w);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_set_ps(float __z, float __y, float __x, float __w)
{
  return (__m128){ __w, __x, __y, __z };
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_setr_ps(float __z, float __y, float __x, float __w)
{
  return (__m128){ __z, __y, __x, __w };
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_setzero_ps(void)
{
  return (__m128){ 0, 0, 0, 0 };
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_storeh_pi(__m64 *__p, __m128 __a)
{
  __builtin_ia32_storehps((__v2si *)__p, __a);
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_storel_pi(__m64 *__p, __m128 __a)
{
  __builtin_ia32_storelps((__v2si *)__p, __a);
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_store_ss(float *__p, __m128 __a)
{
  struct __mm_store_ss_struct {
    float __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_store_ss_struct*)__p)->__u = __a[0];
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_storeu_ps(float *__p, __m128 __a)
{
  __builtin_ia32_storeups(__p, __a);
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_store1_ps(float *__p, __m128 __a)
{
  __a = __builtin_shufflevector(__a, __a, 0, 0, 0, 0);
  _mm_storeu_ps(__p, __a);
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_store_ps1(float *__p, __m128 __a)
{
    return _mm_store1_ps(__p, __a);
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_store_ps(float *__p, __m128 __a)
{
  *(__m128 *)__p = __a;
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_storer_ps(float *__p, __m128 __a)
{
  __a = __builtin_shufflevector(__a, __a, 3, 2, 1, 0);
  _mm_store_ps(__p, __a);
}
# 685 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/xmmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_stream_pi(__m64 *__p, __m64 __a)
{
  __builtin_ia32_movntq(__p, __a);
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_stream_ps(float *__p, __m128 __a)
{
  __builtin_ia32_movntps(__p, __a);
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_sfence(void)
{
  __builtin_ia32_sfence();
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_extract_pi16(__m64 __a, int __n)
{
  __v4hi __b = (__v4hi)__a;
  return (unsigned short)__b[__n & 3];
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_insert_pi16(__m64 __a, int __d, int __n)
{
   __v4hi __b = (__v4hi)__a;
   __b[__n & 3] = __d;
   return (__m64)__b;
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_max_pi16(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_pmaxsw((__v4hi)__a, (__v4hi)__b);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_max_pu8(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_pmaxub((__v8qi)__a, (__v8qi)__b);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_min_pi16(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_pminsw((__v4hi)__a, (__v4hi)__b);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_min_pu8(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_pminub((__v8qi)__a, (__v8qi)__b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_movemask_pi8(__m64 __a)
{
  return __builtin_ia32_pmovmskb((__v8qi)__a);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_mulhi_pu16(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_pmulhuw((__v4hi)__a, (__v4hi)__b);
}





static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_maskmove_si64(__m64 __d, __m64 __n, char *__p)
{
  __builtin_ia32_maskmovq((__v8qi)__d, (__v8qi)__n, __p);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_avg_pu8(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_pavgb((__v8qi)__a, (__v8qi)__b);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_avg_pu16(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_pavgw((__v4hi)__a, (__v4hi)__b);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_sad_pu8(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_psadbw((__v8qi)__a, (__v8qi)__b);
}

static __inline__ unsigned int __attribute__((__always_inline__, __nodebug__))
_mm_getcsr(void)
{
  return __builtin_ia32_stmxcsr();
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_setcsr(unsigned int __i)
{
  __builtin_ia32_ldmxcsr(__i);
}
# 802 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_unpackhi_ps(__m128 __a, __m128 __b)
{
  return __builtin_shufflevector(__a, __b, 2, 6, 3, 7);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_unpacklo_ps(__m128 __a, __m128 __b)
{
  return __builtin_shufflevector(__a, __b, 0, 4, 1, 5);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_move_ss(__m128 __a, __m128 __b)
{
  return __builtin_shufflevector(__a, __b, 4, 1, 2, 3);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_movehl_ps(__m128 __a, __m128 __b)
{
  return __builtin_shufflevector(__a, __b, 6, 7, 2, 3);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_movelh_ps(__m128 __a, __m128 __b)
{
  return __builtin_shufflevector(__a, __b, 0, 1, 4, 5);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cvtpi16_ps(__m64 __a)
{
  __m64 __b, __c;
  __m128 __r;

  __b = _mm_setzero_si64();
  __b = _mm_cmpgt_pi16(__b, __a);
  __c = _mm_unpackhi_pi16(__a, __b);
  __r = _mm_setzero_ps();
  __r = _mm_cvtpi32_ps(__r, __c);
  __r = _mm_movelh_ps(__r, __r);
  __c = _mm_unpacklo_pi16(__a, __b);
  __r = _mm_cvtpi32_ps(__r, __c);

  return __r;
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cvtpu16_ps(__m64 __a)
{
  __m64 __b, __c;
  __m128 __r;

  __b = _mm_setzero_si64();
  __c = _mm_unpackhi_pi16(__a, __b);
  __r = _mm_setzero_ps();
  __r = _mm_cvtpi32_ps(__r, __c);
  __r = _mm_movelh_ps(__r, __r);
  __c = _mm_unpacklo_pi16(__a, __b);
  __r = _mm_cvtpi32_ps(__r, __c);

  return __r;
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cvtpi8_ps(__m64 __a)
{
  __m64 __b;

  __b = _mm_setzero_si64();
  __b = _mm_cmpgt_pi8(__b, __a);
  __b = _mm_unpacklo_pi8(__a, __b);

  return _mm_cvtpi16_ps(__b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cvtpu8_ps(__m64 __a)
{
  __m64 __b;

  __b = _mm_setzero_si64();
  __b = _mm_unpacklo_pi8(__a, __b);

  return _mm_cvtpi16_ps(__b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cvtpi32x2_ps(__m64 __a, __m64 __b)
{
  __m128 __c;

  __c = _mm_setzero_ps();
  __c = _mm_cvtpi32_ps(__c, __b);
  __c = _mm_movelh_ps(__c, __c);

  return _mm_cvtpi32_ps(__c, __a);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cvtps_pi16(__m128 __a)
{
  __m64 __b, __c;

  __b = _mm_cvtps_pi32(__a);
  __a = _mm_movehl_ps(__a, __a);
  __c = _mm_cvtps_pi32(__a);

  return _mm_packs_pi32(__b, __c);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cvtps_pi8(__m128 __a)
{
  __m64 __b, __c;

  __b = _mm_cvtps_pi16(__a);
  __c = _mm_setzero_si64();

  return _mm_packs_pi16(__b, __c);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_movemask_ps(__m128 __a)
{
  return __builtin_ia32_movmskps(__a);
}
# 1003 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/xmmintrin.h" 3
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/emmintrin.h" 1 3
# 31 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/emmintrin.h" 3
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/xmmintrin.h" 1 3
# 32 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/emmintrin.h" 2 3

typedef double __m128d __attribute__((__vector_size__(16)));
typedef long long __m128i __attribute__((__vector_size__(16)));


typedef double __v2df __attribute__ ((__vector_size__ (16)));
typedef long long __v2di __attribute__ ((__vector_size__ (16)));
typedef short __v8hi __attribute__((__vector_size__(16)));
typedef char __v16qi __attribute__((__vector_size__(16)));




static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_add_sd(__m128d __a, __m128d __b)
{
  __a[0] += __b[0];
  return __a;
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_add_pd(__m128d __a, __m128d __b)
{
  return __a + __b;
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_sub_sd(__m128d __a, __m128d __b)
{
  __a[0] -= __b[0];
  return __a;
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_sub_pd(__m128d __a, __m128d __b)
{
  return __a - __b;
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_mul_sd(__m128d __a, __m128d __b)
{
  __a[0] *= __b[0];
  return __a;
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_mul_pd(__m128d __a, __m128d __b)
{
  return __a * __b;
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_div_sd(__m128d __a, __m128d __b)
{
  __a[0] /= __b[0];
  return __a;
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_div_pd(__m128d __a, __m128d __b)
{
  return __a / __b;
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_sqrt_sd(__m128d __a, __m128d __b)
{
  __m128d __c = __builtin_ia32_sqrtsd(__b);
  return (__m128d) { __c[0], __a[1] };
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_sqrt_pd(__m128d __a)
{
  return __builtin_ia32_sqrtpd(__a);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_min_sd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_minsd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_min_pd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_minpd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_max_sd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_maxsd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_max_pd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_maxpd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_and_pd(__m128d __a, __m128d __b)
{
  return (__m128d)((__v4si)__a & (__v4si)__b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_andnot_pd(__m128d __a, __m128d __b)
{
  return (__m128d)(~(__v4si)__a & (__v4si)__b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_or_pd(__m128d __a, __m128d __b)
{
  return (__m128d)((__v4si)__a | (__v4si)__b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_xor_pd(__m128d __a, __m128d __b)
{
  return (__m128d)((__v4si)__a ^ (__v4si)__b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpeq_pd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpeqpd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmplt_pd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpltpd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmple_pd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmplepd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpgt_pd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpltpd(__b, __a);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpge_pd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmplepd(__b, __a);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpord_pd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpordpd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpunord_pd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpunordpd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpneq_pd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpneqpd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpnlt_pd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpnltpd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpnle_pd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpnlepd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpngt_pd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpnltpd(__b, __a);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpnge_pd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpnlepd(__b, __a);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpeq_sd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpeqsd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmplt_sd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpltsd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmple_sd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmplesd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpgt_sd(__m128d __a, __m128d __b)
{
  __m128d __c = __builtin_ia32_cmpltsd(__b, __a);
  return (__m128d) { __c[0], __a[1] };
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpge_sd(__m128d __a, __m128d __b)
{
  __m128d __c = __builtin_ia32_cmplesd(__b, __a);
  return (__m128d) { __c[0], __a[1] };
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpord_sd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpordsd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpunord_sd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpunordsd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpneq_sd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpneqsd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpnlt_sd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpnltsd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpnle_sd(__m128d __a, __m128d __b)
{
  return (__m128d)__builtin_ia32_cmpnlesd(__a, __b);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpngt_sd(__m128d __a, __m128d __b)
{
  __m128d __c = __builtin_ia32_cmpnltsd(__b, __a);
  return (__m128d) { __c[0], __a[1] };
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cmpnge_sd(__m128d __a, __m128d __b)
{
  __m128d __c = __builtin_ia32_cmpnlesd(__b, __a);
  return (__m128d) { __c[0], __a[1] };
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_comieq_sd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_comisdeq(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_comilt_sd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_comisdlt(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_comile_sd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_comisdle(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_comigt_sd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_comisdgt(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_comige_sd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_comisdge(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_comineq_sd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_comisdneq(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_ucomieq_sd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_ucomisdeq(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_ucomilt_sd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_ucomisdlt(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_ucomile_sd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_ucomisdle(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_ucomigt_sd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_ucomisdgt(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_ucomige_sd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_ucomisdge(__a, __b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_ucomineq_sd(__m128d __a, __m128d __b)
{
  return __builtin_ia32_ucomisdneq(__a, __b);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cvtpd_ps(__m128d __a)
{
  return __builtin_ia32_cvtpd2ps(__a);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cvtps_pd(__m128 __a)
{
  return __builtin_ia32_cvtps2pd(__a);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cvtepi32_pd(__m128i __a)
{
  return __builtin_ia32_cvtdq2pd((__v4si)__a);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cvtpd_epi32(__m128d __a)
{
  return __builtin_ia32_cvtpd2dq(__a);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_cvtsd_si32(__m128d __a)
{
  return __builtin_ia32_cvtsd2si(__a);
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cvtsd_ss(__m128 __a, __m128d __b)
{
  __a[0] = __b[0];
  return __a;
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cvtsi32_sd(__m128d __a, int __b)
{
  __a[0] = __b;
  return __a;
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cvtss_sd(__m128d __a, __m128 __b)
{
  __a[0] = __b[0];
  return __a;
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cvttpd_epi32(__m128d __a)
{
  return (__m128i)__builtin_ia32_cvttpd2dq(__a);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_cvttsd_si32(__m128d __a)
{
  return __a[0];
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cvtpd_pi32(__m128d __a)
{
  return (__m64)__builtin_ia32_cvtpd2pi(__a);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_cvttpd_pi32(__m128d __a)
{
  return (__m64)__builtin_ia32_cvttpd2pi(__a);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cvtpi32_pd(__m64 __a)
{
  return __builtin_ia32_cvtpi2pd((__v2si)__a);
}

static __inline__ double __attribute__((__always_inline__, __nodebug__))
_mm_cvtsd_f64(__m128d __a)
{
  return __a[0];
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_load_pd(double const *__dp)
{
  return *(__m128d*)__dp;
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_load1_pd(double const *__dp)
{
  struct __mm_load1_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  double __u = ((struct __mm_load1_pd_struct*)__dp)->__u;
  return (__m128d){ __u, __u };
}



static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_loadr_pd(double const *__dp)
{
  __m128d __u = *(__m128d*)__dp;
  return __builtin_shufflevector(__u, __u, 1, 0);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_loadu_pd(double const *__dp)
{
  struct __loadu_pd {
    __m128d __v;
  } __attribute__((__packed__, __may_alias__));
  return ((struct __loadu_pd*)__dp)->__v;
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_load_sd(double const *__dp)
{
  struct __mm_load_sd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  double __u = ((struct __mm_load_sd_struct*)__dp)->__u;
  return (__m128d){ __u, 0 };
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_loadh_pd(__m128d __a, double const *__dp)
{
  struct __mm_loadh_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  double __u = ((struct __mm_loadh_pd_struct*)__dp)->__u;
  return (__m128d){ __a[0], __u };
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_loadl_pd(__m128d __a, double const *__dp)
{
  struct __mm_loadl_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  double __u = ((struct __mm_loadl_pd_struct*)__dp)->__u;
  return (__m128d){ __u, __a[1] };
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_set_sd(double __w)
{
  return (__m128d){ __w, 0 };
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_set1_pd(double __w)
{
  return (__m128d){ __w, __w };
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_set_pd(double __w, double __x)
{
  return (__m128d){ __x, __w };
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_setr_pd(double __w, double __x)
{
  return (__m128d){ __w, __x };
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_setzero_pd(void)
{
  return (__m128d){ 0, 0 };
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_move_sd(__m128d __a, __m128d __b)
{
  return (__m128d){ __b[0], __a[1] };
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_store_sd(double *__dp, __m128d __a)
{
  struct __mm_store_sd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_store_sd_struct*)__dp)->__u = __a[0];
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_store1_pd(double *__dp, __m128d __a)
{
  struct __mm_store1_pd_struct {
    double __u[2];
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_store1_pd_struct*)__dp)->__u[0] = __a[0];
  ((struct __mm_store1_pd_struct*)__dp)->__u[1] = __a[0];
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_store_pd(double *__dp, __m128d __a)
{
  *(__m128d *)__dp = __a;
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_storeu_pd(double *__dp, __m128d __a)
{
  __builtin_ia32_storeupd(__dp, __a);
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_storer_pd(double *__dp, __m128d __a)
{
  __a = __builtin_shufflevector(__a, __a, 1, 0);
  *(__m128d *)__dp = __a;
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_storeh_pd(double *__dp, __m128d __a)
{
  struct __mm_storeh_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_storeh_pd_struct*)__dp)->__u = __a[1];
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_storel_pd(double *__dp, __m128d __a)
{
  struct __mm_storeh_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_storeh_pd_struct*)__dp)->__u = __a[0];
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_add_epi8(__m128i __a, __m128i __b)
{
  return (__m128i)((__v16qi)__a + (__v16qi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_add_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)((__v8hi)__a + (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_add_epi32(__m128i __a, __m128i __b)
{
  return (__m128i)((__v4si)__a + (__v4si)__b);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_add_si64(__m64 __a, __m64 __b)
{
  return __a + __b;
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_add_epi64(__m128i __a, __m128i __b)
{
  return __a + __b;
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_adds_epi8(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_paddsb128((__v16qi)__a, (__v16qi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_adds_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_paddsw128((__v8hi)__a, (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_adds_epu8(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_paddusb128((__v16qi)__a, (__v16qi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_adds_epu16(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_paddusw128((__v8hi)__a, (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_avg_epu8(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_pavgb128((__v16qi)__a, (__v16qi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_avg_epu16(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_pavgw128((__v8hi)__a, (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_madd_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_pmaddwd128((__v8hi)__a, (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_max_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_pmaxsw128((__v8hi)__a, (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_max_epu8(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_pmaxub128((__v16qi)__a, (__v16qi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_min_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_pminsw128((__v8hi)__a, (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_min_epu8(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_pminub128((__v16qi)__a, (__v16qi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_mulhi_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_pmulhw128((__v8hi)__a, (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_mulhi_epu16(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_pmulhuw128((__v8hi)__a, (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_mullo_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)((__v8hi)__a * (__v8hi)__b);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_mul_su32(__m64 __a, __m64 __b)
{
  return __builtin_ia32_pmuludq((__v2si)__a, (__v2si)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_mul_epu32(__m128i __a, __m128i __b)
{
  return __builtin_ia32_pmuludq128((__v4si)__a, (__v4si)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_sad_epu8(__m128i __a, __m128i __b)
{
  return __builtin_ia32_psadbw128((__v16qi)__a, (__v16qi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_sub_epi8(__m128i __a, __m128i __b)
{
  return (__m128i)((__v16qi)__a - (__v16qi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_sub_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)((__v8hi)__a - (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_sub_epi32(__m128i __a, __m128i __b)
{
  return (__m128i)((__v4si)__a - (__v4si)__b);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_sub_si64(__m64 __a, __m64 __b)
{
  return __a - __b;
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_sub_epi64(__m128i __a, __m128i __b)
{
  return __a - __b;
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_subs_epi8(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_psubsb128((__v16qi)__a, (__v16qi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_subs_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_psubsw128((__v8hi)__a, (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_subs_epu8(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_psubusb128((__v16qi)__a, (__v16qi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_subs_epu16(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_psubusw128((__v8hi)__a, (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_and_si128(__m128i __a, __m128i __b)
{
  return __a & __b;
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_andnot_si128(__m128i __a, __m128i __b)
{
  return ~__a & __b;
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_or_si128(__m128i __a, __m128i __b)
{
  return __a | __b;
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_xor_si128(__m128i __a, __m128i __b)
{
  return __a ^ __b;
}
# 854 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_slli_epi16(__m128i __a, int __count)
{
  return (__m128i)__builtin_ia32_psllwi128((__v8hi)__a, __count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_sll_epi16(__m128i __a, __m128i __count)
{
  return (__m128i)__builtin_ia32_psllw128((__v8hi)__a, (__v8hi)__count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_slli_epi32(__m128i __a, int __count)
{
  return (__m128i)__builtin_ia32_pslldi128((__v4si)__a, __count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_sll_epi32(__m128i __a, __m128i __count)
{
  return (__m128i)__builtin_ia32_pslld128((__v4si)__a, (__v4si)__count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_slli_epi64(__m128i __a, int __count)
{
  return __builtin_ia32_psllqi128(__a, __count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_sll_epi64(__m128i __a, __m128i __count)
{
  return __builtin_ia32_psllq128(__a, __count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_srai_epi16(__m128i __a, int __count)
{
  return (__m128i)__builtin_ia32_psrawi128((__v8hi)__a, __count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_sra_epi16(__m128i __a, __m128i __count)
{
  return (__m128i)__builtin_ia32_psraw128((__v8hi)__a, (__v8hi)__count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_srai_epi32(__m128i __a, int __count)
{
  return (__m128i)__builtin_ia32_psradi128((__v4si)__a, __count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_sra_epi32(__m128i __a, __m128i __count)
{
  return (__m128i)__builtin_ia32_psrad128((__v4si)__a, (__v4si)__count);
}
# 937 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_srli_epi16(__m128i __a, int __count)
{
  return (__m128i)__builtin_ia32_psrlwi128((__v8hi)__a, __count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_srl_epi16(__m128i __a, __m128i __count)
{
  return (__m128i)__builtin_ia32_psrlw128((__v8hi)__a, (__v8hi)__count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_srli_epi32(__m128i __a, int __count)
{
  return (__m128i)__builtin_ia32_psrldi128((__v4si)__a, __count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_srl_epi32(__m128i __a, __m128i __count)
{
  return (__m128i)__builtin_ia32_psrld128((__v4si)__a, (__v4si)__count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_srli_epi64(__m128i __a, int __count)
{
  return __builtin_ia32_psrlqi128(__a, __count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_srl_epi64(__m128i __a, __m128i __count)
{
  return __builtin_ia32_psrlq128(__a, __count);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cmpeq_epi8(__m128i __a, __m128i __b)
{
  return (__m128i)((__v16qi)__a == (__v16qi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cmpeq_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)((__v8hi)__a == (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cmpeq_epi32(__m128i __a, __m128i __b)
{
  return (__m128i)((__v4si)__a == (__v4si)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cmpgt_epi8(__m128i __a, __m128i __b)
{


  typedef signed char __v16qs __attribute__((__vector_size__(16)));
  return (__m128i)((__v16qs)__a > (__v16qs)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cmpgt_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)((__v8hi)__a > (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cmpgt_epi32(__m128i __a, __m128i __b)
{
  return (__m128i)((__v4si)__a > (__v4si)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cmplt_epi8(__m128i __a, __m128i __b)
{
  return _mm_cmpgt_epi8(__b, __a);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cmplt_epi16(__m128i __a, __m128i __b)
{
  return _mm_cmpgt_epi16(__b, __a);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cmplt_epi32(__m128i __a, __m128i __b)
{
  return _mm_cmpgt_epi32(__b, __a);
}


static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_cvtsi64_sd(__m128d __a, long long __b)
{
  __a[0] = __b;
  return __a;
}

static __inline__ long long __attribute__((__always_inline__, __nodebug__))
_mm_cvtsd_si64(__m128d __a)
{
  return __builtin_ia32_cvtsd2si64(__a);
}

static __inline__ long long __attribute__((__always_inline__, __nodebug__))
_mm_cvttsd_si64(__m128d __a)
{
  return __a[0];
}


static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_cvtepi32_ps(__m128i __a)
{
  return __builtin_ia32_cvtdq2ps((__v4si)__a);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cvtps_epi32(__m128 __a)
{
  return (__m128i)__builtin_ia32_cvtps2dq(__a);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cvttps_epi32(__m128 __a)
{
  return (__m128i)__builtin_ia32_cvttps2dq(__a);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cvtsi32_si128(int __a)
{
  return (__m128i)(__v4si){ __a, 0, 0, 0 };
}


static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_cvtsi64_si128(long long __a)
{
  return (__m128i){ __a, 0 };
}


static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_cvtsi128_si32(__m128i __a)
{
  __v4si __b = (__v4si)__a;
  return __b[0];
}


static __inline__ long long __attribute__((__always_inline__, __nodebug__))
_mm_cvtsi128_si64(__m128i __a)
{
  return __a[0];
}


static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_load_si128(__m128i const *__p)
{
  return *__p;
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_loadu_si128(__m128i const *__p)
{
  struct __loadu_si128 {
    __m128i __v;
  } __attribute__((__packed__, __may_alias__));
  return ((struct __loadu_si128*)__p)->__v;
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_loadl_epi64(__m128i const *__p)
{
  struct __mm_loadl_epi64_struct {
    long long __u;
  } __attribute__((__packed__, __may_alias__));
  return (__m128i) { ((struct __mm_loadl_epi64_struct*)__p)->__u, 0};
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_set_epi64x(long long q1, long long q0)
{
  return (__m128i){ q0, q1 };
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_set_epi64(__m64 q1, __m64 q0)
{
  return (__m128i){ (long long)q0, (long long)q1 };
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_set_epi32(int i3, int i2, int i1, int i0)
{
  return (__m128i)(__v4si){ i0, i1, i2, i3};
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_set_epi16(short w7, short w6, short w5, short w4, short w3, short w2, short w1, short w0)
{
  return (__m128i)(__v8hi){ w0, w1, w2, w3, w4, w5, w6, w7 };
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_set_epi8(char b15, char b14, char b13, char b12, char b11, char b10, char b9, char b8, char b7, char b6, char b5, char b4, char b3, char b2, char b1, char b0)
{
  return (__m128i)(__v16qi){ b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15 };
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_set1_epi64x(long long __q)
{
  return (__m128i){ __q, __q };
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_set1_epi64(__m64 __q)
{
  return (__m128i){ (long long)__q, (long long)__q };
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_set1_epi32(int __i)
{
  return (__m128i)(__v4si){ __i, __i, __i, __i };
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_set1_epi16(short __w)
{
  return (__m128i)(__v8hi){ __w, __w, __w, __w, __w, __w, __w, __w };
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_set1_epi8(char __b)
{
  return (__m128i)(__v16qi){ __b, __b, __b, __b, __b, __b, __b, __b, __b, __b, __b, __b, __b, __b, __b, __b };
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_setr_epi64(__m64 q0, __m64 q1)
{
  return (__m128i){ (long long)q0, (long long)q1 };
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_setr_epi32(int i0, int i1, int i2, int i3)
{
  return (__m128i)(__v4si){ i0, i1, i2, i3};
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_setr_epi16(short w0, short w1, short w2, short w3, short w4, short w5, short w6, short w7)
{
  return (__m128i)(__v8hi){ w0, w1, w2, w3, w4, w5, w6, w7 };
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_setr_epi8(char b0, char b1, char b2, char b3, char b4, char b5, char b6, char b7, char b8, char b9, char b10, char b11, char b12, char b13, char b14, char b15)
{
  return (__m128i)(__v16qi){ b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15 };
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_setzero_si128(void)
{
  return (__m128i){ 0LL, 0LL };
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_store_si128(__m128i *__p, __m128i __b)
{
  *__p = __b;
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_storeu_si128(__m128i *__p, __m128i __b)
{
  __builtin_ia32_storedqu((char *)__p, (__v16qi)__b);
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_maskmoveu_si128(__m128i __d, __m128i __n, char *__p)
{
  __builtin_ia32_maskmovdqu((__v16qi)__d, (__v16qi)__n, __p);
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_storel_epi64(__m128i *__p, __m128i __a)
{
  struct __mm_storel_epi64_struct {
    long long __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_storel_epi64_struct*)__p)->__u = __a[0];
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_stream_pd(double *__p, __m128d __a)
{
  __builtin_ia32_movntpd(__p, __a);
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_stream_si128(__m128i *__p, __m128i __a)
{
  __builtin_ia32_movntdq(__p, __a);
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_stream_si32(int *__p, int __a)
{
  __builtin_ia32_movnti(__p, __a);
}


static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_stream_si64(long long *__p, long long __a)
{
  __builtin_ia32_movnti64(__p, __a);
}


static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_clflush(void const *__p)
{
  __builtin_ia32_clflush(__p);
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_lfence(void)
{
  __builtin_ia32_lfence();
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_mfence(void)
{
  __builtin_ia32_mfence();
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_packs_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_packsswb128((__v8hi)__a, (__v8hi)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_packs_epi32(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_packssdw128((__v4si)__a, (__v4si)__b);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_packus_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_ia32_packuswb128((__v8hi)__a, (__v8hi)__b);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_extract_epi16(__m128i __a, int __imm)
{
  __v8hi __b = (__v8hi)__a;
  return (unsigned short)__b[__imm & 7];
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_insert_epi16(__m128i __a, int __b, int __imm)
{
  __v8hi __c = (__v8hi)__a;
  __c[__imm & 7] = __b;
  return (__m128i)__c;
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_movemask_epi8(__m128i __a)
{
  return __builtin_ia32_pmovmskb128((__v16qi)__a);
}
# 1344 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_unpackhi_epi8(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_shufflevector((__v16qi)__a, (__v16qi)__b, 8, 16+8, 9, 16+9, 10, 16+10, 11, 16+11, 12, 16+12, 13, 16+13, 14, 16+14, 15, 16+15);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_unpackhi_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_shufflevector((__v8hi)__a, (__v8hi)__b, 4, 8+4, 5, 8+5, 6, 8+6, 7, 8+7);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_unpackhi_epi32(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_shufflevector((__v4si)__a, (__v4si)__b, 2, 4+2, 3, 4+3);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_unpackhi_epi64(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_shufflevector(__a, __b, 1, 2+1);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_unpacklo_epi8(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_shufflevector((__v16qi)__a, (__v16qi)__b, 0, 16+0, 1, 16+1, 2, 16+2, 3, 16+3, 4, 16+4, 5, 16+5, 6, 16+6, 7, 16+7);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_unpacklo_epi16(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_shufflevector((__v8hi)__a, (__v8hi)__b, 0, 8+0, 1, 8+1, 2, 8+2, 3, 8+3);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_unpacklo_epi32(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_shufflevector((__v4si)__a, (__v4si)__b, 0, 4+0, 1, 4+1);
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_unpacklo_epi64(__m128i __a, __m128i __b)
{
  return (__m128i)__builtin_shufflevector(__a, __b, 0, 2+0);
}

static __inline__ __m64 __attribute__((__always_inline__, __nodebug__))
_mm_movepi64_pi64(__m128i __a)
{
  return (__m64)__a[0];
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_movpi64_epi64(__m64 __a)
{
  return (__m128i){ (long long)__a, 0 };
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_move_epi64(__m128i __a)
{
  return __builtin_shufflevector(__a, (__m128i){ 0 }, 0, 2);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_unpackhi_pd(__m128d __a, __m128d __b)
{
  return __builtin_shufflevector(__a, __b, 1, 2+1);
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_unpacklo_pd(__m128d __a, __m128d __b)
{
  return __builtin_shufflevector(__a, __b, 0, 2+0);
}

static __inline__ int __attribute__((__always_inline__, __nodebug__))
_mm_movemask_pd(__m128d __a)
{
  return __builtin_ia32_movmskpd(__a);
}





static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_castpd_ps(__m128d __a)
{
  return (__m128)__a;
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_castpd_si128(__m128d __a)
{
  return (__m128i)__a;
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_castps_pd(__m128 __a)
{
  return (__m128d)__a;
}

static __inline__ __m128i __attribute__((__always_inline__, __nodebug__))
_mm_castps_si128(__m128 __a)
{
  return (__m128i)__a;
}

static __inline__ __m128 __attribute__((__always_inline__, __nodebug__))
_mm_castsi128_ps(__m128i __a)
{
  return (__m128)__a;
}

static __inline__ __m128d __attribute__((__always_inline__, __nodebug__))
_mm_castsi128_pd(__m128i __a)
{
  return (__m128d)__a;
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_pause(void)
{
  __asm__ volatile ("pause");
}
# 1004 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/xmmintrin.h" 2 3
# 300 "/usr/include/gegl-0.2/opencl/cl_platform.h" 2


        typedef float __cl_float4 __attribute__((vector_size(16)));
# 316 "/usr/include/gegl-0.2/opencl/cl_platform.h"
        typedef cl_uchar __cl_uchar16 __attribute__((vector_size(16)));
        typedef cl_char __cl_char16 __attribute__((vector_size(16)));
        typedef cl_ushort __cl_ushort8 __attribute__((vector_size(16)));
        typedef cl_short __cl_short8 __attribute__((vector_size(16)));
        typedef cl_uint __cl_uint4 __attribute__((vector_size(16)));
        typedef cl_int __cl_int4 __attribute__((vector_size(16)));
        typedef cl_ulong __cl_ulong2 __attribute__((vector_size(16)));
        typedef cl_long __cl_long2 __attribute__((vector_size(16)));
        typedef cl_double __cl_double2 __attribute__((vector_size(16)));
# 350 "/usr/include/gegl-0.2/opencl/cl_platform.h"
        typedef cl_uchar __cl_uchar8 __attribute__((vector_size(8)));
        typedef cl_char __cl_char8 __attribute__((vector_size(8)));
        typedef cl_ushort __cl_ushort4 __attribute__((vector_size(8)));
        typedef cl_short __cl_short4 __attribute__((vector_size(8)));
        typedef cl_uint __cl_uint2 __attribute__((vector_size(8)));
        typedef cl_int __cl_int2 __attribute__((vector_size(8)));
        typedef cl_ulong __cl_ulong1 __attribute__((vector_size(8)));
        typedef cl_long __cl_long1 __attribute__((vector_size(8)));
        typedef cl_float __cl_float2 __attribute__((vector_size(8)));
# 423 "/usr/include/gegl-0.2/opencl/cl_platform.h"
typedef union
{
    cl_char __attribute__ ((aligned(2))) s[2];

   __extension__ struct{ cl_char x, y; };
   __extension__ struct{ cl_char s0, s1; };
   __extension__ struct{ cl_char lo, hi; };




}cl_char2;

typedef union
{
    cl_char __attribute__ ((aligned(4))) s[4];

   __extension__ struct{ cl_char x, y, z, w; };
   __extension__ struct{ cl_char s0, s1, s2, s3; };
   __extension__ struct{ cl_char2 lo, hi; };







}cl_char4;


typedef cl_char4 cl_char3;

typedef union
{
    cl_char __attribute__ ((aligned(8))) s[8];

   __extension__ struct{ cl_char x, y, z, w; };
   __extension__ struct{ cl_char s0, s1, s2, s3, s4, s5, s6, s7; };
   __extension__ struct{ cl_char4 lo, hi; };
# 470 "/usr/include/gegl-0.2/opencl/cl_platform.h"
    __cl_char8 v8;

}cl_char8;

typedef union
{
    cl_char __attribute__ ((aligned(16))) s[16];

   __extension__ struct{ cl_char x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
   __extension__ struct{ cl_char s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
   __extension__ struct{ cl_char8 lo, hi; };
# 489 "/usr/include/gegl-0.2/opencl/cl_platform.h"
    __cl_char8 v8[2];


    __cl_char16 v16;

}cl_char16;



typedef union
{
    cl_uchar __attribute__ ((aligned(2))) s[2];

   __extension__ struct{ cl_uchar x, y; };
   __extension__ struct{ cl_uchar s0, s1; };
   __extension__ struct{ cl_uchar lo, hi; };




}cl_uchar2;

typedef union
{
    cl_uchar __attribute__ ((aligned(4))) s[4];

   __extension__ struct{ cl_uchar x, y, z, w; };
   __extension__ struct{ cl_uchar s0, s1, s2, s3; };
   __extension__ struct{ cl_uchar2 lo, hi; };







}cl_uchar4;


typedef cl_uchar4 cl_uchar3;

typedef union
{
    cl_uchar __attribute__ ((aligned(8))) s[8];

   __extension__ struct{ cl_uchar x, y, z, w; };
   __extension__ struct{ cl_uchar s0, s1, s2, s3, s4, s5, s6, s7; };
   __extension__ struct{ cl_uchar4 lo, hi; };
# 545 "/usr/include/gegl-0.2/opencl/cl_platform.h"
    __cl_uchar8 v8;

}cl_uchar8;

typedef union
{
    cl_uchar __attribute__ ((aligned(16))) s[16];

   __extension__ struct{ cl_uchar x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
   __extension__ struct{ cl_uchar s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
   __extension__ struct{ cl_uchar8 lo, hi; };
# 564 "/usr/include/gegl-0.2/opencl/cl_platform.h"
    __cl_uchar8 v8[2];


    __cl_uchar16 v16;

}cl_uchar16;



typedef union
{
    cl_short __attribute__ ((aligned(4))) s[2];

   __extension__ struct{ cl_short x, y; };
   __extension__ struct{ cl_short s0, s1; };
   __extension__ struct{ cl_short lo, hi; };




}cl_short2;

typedef union
{
    cl_short __attribute__ ((aligned(8))) s[4];

   __extension__ struct{ cl_short x, y, z, w; };
   __extension__ struct{ cl_short s0, s1, s2, s3; };
   __extension__ struct{ cl_short2 lo, hi; };





    __cl_short4 v4;

}cl_short4;


typedef cl_short4 cl_short3;

typedef union
{
    cl_short __attribute__ ((aligned(16))) s[8];

   __extension__ struct{ cl_short x, y, z, w; };
   __extension__ struct{ cl_short s0, s1, s2, s3, s4, s5, s6, s7; };
   __extension__ struct{ cl_short4 lo, hi; };





    __cl_short4 v4[2];


    __cl_short8 v8;

}cl_short8;

typedef union
{
    cl_short __attribute__ ((aligned(32))) s[16];

   __extension__ struct{ cl_short x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
   __extension__ struct{ cl_short s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
   __extension__ struct{ cl_short8 lo, hi; };





    __cl_short4 v4[4];


    __cl_short8 v8[2];




}cl_short16;



typedef union
{
    cl_ushort __attribute__ ((aligned(4))) s[2];

   __extension__ struct{ cl_ushort x, y; };
   __extension__ struct{ cl_ushort s0, s1; };
   __extension__ struct{ cl_ushort lo, hi; };




}cl_ushort2;

typedef union
{
    cl_ushort __attribute__ ((aligned(8))) s[4];

   __extension__ struct{ cl_ushort x, y, z, w; };
   __extension__ struct{ cl_ushort s0, s1, s2, s3; };
   __extension__ struct{ cl_ushort2 lo, hi; };





    __cl_ushort4 v4;

}cl_ushort4;


typedef cl_ushort4 cl_ushort3;

typedef union
{
    cl_ushort __attribute__ ((aligned(16))) s[8];

   __extension__ struct{ cl_ushort x, y, z, w; };
   __extension__ struct{ cl_ushort s0, s1, s2, s3, s4, s5, s6, s7; };
   __extension__ struct{ cl_ushort4 lo, hi; };





    __cl_ushort4 v4[2];


    __cl_ushort8 v8;

}cl_ushort8;

typedef union
{
    cl_ushort __attribute__ ((aligned(32))) s[16];

   __extension__ struct{ cl_ushort x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
   __extension__ struct{ cl_ushort s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
   __extension__ struct{ cl_ushort8 lo, hi; };





    __cl_ushort4 v4[4];


    __cl_ushort8 v8[2];




}cl_ushort16;


typedef union
{
    cl_int __attribute__ ((aligned(8))) s[2];

   __extension__ struct{ cl_int x, y; };
   __extension__ struct{ cl_int s0, s1; };
   __extension__ struct{ cl_int lo, hi; };


    __cl_int2 v2;

}cl_int2;

typedef union
{
    cl_int __attribute__ ((aligned(16))) s[4];

   __extension__ struct{ cl_int x, y, z, w; };
   __extension__ struct{ cl_int s0, s1, s2, s3; };
   __extension__ struct{ cl_int2 lo, hi; };


    __cl_int2 v2[2];


    __cl_int4 v4;

}cl_int4;


typedef cl_int4 cl_int3;

typedef union
{
    cl_int __attribute__ ((aligned(32))) s[8];

   __extension__ struct{ cl_int x, y, z, w; };
   __extension__ struct{ cl_int s0, s1, s2, s3, s4, s5, s6, s7; };
   __extension__ struct{ cl_int4 lo, hi; };


    __cl_int2 v2[4];


    __cl_int4 v4[2];




}cl_int8;

typedef union
{
    cl_int __attribute__ ((aligned(64))) s[16];

   __extension__ struct{ cl_int x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
   __extension__ struct{ cl_int s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
   __extension__ struct{ cl_int8 lo, hi; };


    __cl_int2 v2[8];


    __cl_int4 v4[4];







}cl_int16;



typedef union
{
    cl_uint __attribute__ ((aligned(8))) s[2];

   __extension__ struct{ cl_uint x, y; };
   __extension__ struct{ cl_uint s0, s1; };
   __extension__ struct{ cl_uint lo, hi; };


    __cl_uint2 v2;

}cl_uint2;

typedef union
{
    cl_uint __attribute__ ((aligned(16))) s[4];

   __extension__ struct{ cl_uint x, y, z, w; };
   __extension__ struct{ cl_uint s0, s1, s2, s3; };
   __extension__ struct{ cl_uint2 lo, hi; };


    __cl_uint2 v2[2];


    __cl_uint4 v4;

}cl_uint4;


typedef cl_uint4 cl_uint3;

typedef union
{
    cl_uint __attribute__ ((aligned(32))) s[8];

   __extension__ struct{ cl_uint x, y, z, w; };
   __extension__ struct{ cl_uint s0, s1, s2, s3, s4, s5, s6, s7; };
   __extension__ struct{ cl_uint4 lo, hi; };


    __cl_uint2 v2[4];


    __cl_uint4 v4[2];




}cl_uint8;

typedef union
{
    cl_uint __attribute__ ((aligned(64))) s[16];

   __extension__ struct{ cl_uint x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
   __extension__ struct{ cl_uint s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
   __extension__ struct{ cl_uint8 lo, hi; };


    __cl_uint2 v2[8];


    __cl_uint4 v4[4];







}cl_uint16;


typedef union
{
    cl_long __attribute__ ((aligned(16))) s[2];

   __extension__ struct{ cl_long x, y; };
   __extension__ struct{ cl_long s0, s1; };
   __extension__ struct{ cl_long lo, hi; };


    __cl_long2 v2;

}cl_long2;

typedef union
{
    cl_long __attribute__ ((aligned(32))) s[4];

   __extension__ struct{ cl_long x, y, z, w; };
   __extension__ struct{ cl_long s0, s1, s2, s3; };
   __extension__ struct{ cl_long2 lo, hi; };


    __cl_long2 v2[2];




}cl_long4;


typedef cl_long4 cl_long3;

typedef union
{
    cl_long __attribute__ ((aligned(64))) s[8];

   __extension__ struct{ cl_long x, y, z, w; };
   __extension__ struct{ cl_long s0, s1, s2, s3, s4, s5, s6, s7; };
   __extension__ struct{ cl_long4 lo, hi; };


    __cl_long2 v2[4];







}cl_long8;

typedef union
{
    cl_long __attribute__ ((aligned(128))) s[16];

   __extension__ struct{ cl_long x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
   __extension__ struct{ cl_long s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
   __extension__ struct{ cl_long8 lo, hi; };


    __cl_long2 v2[8];
# 942 "/usr/include/gegl-0.2/opencl/cl_platform.h"
}cl_long16;



typedef union
{
    cl_ulong __attribute__ ((aligned(16))) s[2];

   __extension__ struct{ cl_ulong x, y; };
   __extension__ struct{ cl_ulong s0, s1; };
   __extension__ struct{ cl_ulong lo, hi; };


    __cl_ulong2 v2;

}cl_ulong2;

typedef union
{
    cl_ulong __attribute__ ((aligned(32))) s[4];

   __extension__ struct{ cl_ulong x, y, z, w; };
   __extension__ struct{ cl_ulong s0, s1, s2, s3; };
   __extension__ struct{ cl_ulong2 lo, hi; };


    __cl_ulong2 v2[2];




}cl_ulong4;


typedef cl_ulong4 cl_ulong3;

typedef union
{
    cl_ulong __attribute__ ((aligned(64))) s[8];

   __extension__ struct{ cl_ulong x, y, z, w; };
   __extension__ struct{ cl_ulong s0, s1, s2, s3, s4, s5, s6, s7; };
   __extension__ struct{ cl_ulong4 lo, hi; };


    __cl_ulong2 v2[4];







}cl_ulong8;

typedef union
{
    cl_ulong __attribute__ ((aligned(128))) s[16];

   __extension__ struct{ cl_ulong x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
   __extension__ struct{ cl_ulong s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
   __extension__ struct{ cl_ulong8 lo, hi; };


    __cl_ulong2 v2[8];
# 1017 "/usr/include/gegl-0.2/opencl/cl_platform.h"
}cl_ulong16;




typedef union
{
    cl_float __attribute__ ((aligned(8))) s[2];

   __extension__ struct{ cl_float x, y; };
   __extension__ struct{ cl_float s0, s1; };
   __extension__ struct{ cl_float lo, hi; };


    __cl_float2 v2;

}cl_float2;

typedef union
{
    cl_float __attribute__ ((aligned(16))) s[4];

   __extension__ struct{ cl_float x, y, z, w; };
   __extension__ struct{ cl_float s0, s1, s2, s3; };
   __extension__ struct{ cl_float2 lo, hi; };


    __cl_float2 v2[2];


    __cl_float4 v4;

}cl_float4;


typedef cl_float4 cl_float3;

typedef union
{
    cl_float __attribute__ ((aligned(32))) s[8];

   __extension__ struct{ cl_float x, y, z, w; };
   __extension__ struct{ cl_float s0, s1, s2, s3, s4, s5, s6, s7; };
   __extension__ struct{ cl_float4 lo, hi; };


    __cl_float2 v2[4];


    __cl_float4 v4[2];




}cl_float8;

typedef union
{
    cl_float __attribute__ ((aligned(64))) s[16];

   __extension__ struct{ cl_float x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
   __extension__ struct{ cl_float s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
   __extension__ struct{ cl_float8 lo, hi; };


    __cl_float2 v2[8];


    __cl_float4 v4[4];







}cl_float16;



typedef union
{
    cl_double __attribute__ ((aligned(16))) s[2];

   __extension__ struct{ cl_double x, y; };
   __extension__ struct{ cl_double s0, s1; };
   __extension__ struct{ cl_double lo, hi; };


    __cl_double2 v2;

}cl_double2;

typedef union
{
    cl_double __attribute__ ((aligned(32))) s[4];

   __extension__ struct{ cl_double x, y, z, w; };
   __extension__ struct{ cl_double s0, s1, s2, s3; };
   __extension__ struct{ cl_double2 lo, hi; };


    __cl_double2 v2[2];




}cl_double4;


typedef cl_double4 cl_double3;

typedef union
{
    cl_double __attribute__ ((aligned(64))) s[8];

   __extension__ struct{ cl_double x, y, z, w; };
   __extension__ struct{ cl_double s0, s1, s2, s3, s4, s5, s6, s7; };
   __extension__ struct{ cl_double4 lo, hi; };


    __cl_double2 v2[4];







}cl_double8;

typedef union
{
    cl_double __attribute__ ((aligned(128))) s[16];

   __extension__ struct{ cl_double x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
   __extension__ struct{ cl_double s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
   __extension__ struct{ cl_double8 lo, hi; };


    __cl_double2 v2[8];
# 1168 "/usr/include/gegl-0.2/opencl/cl_platform.h"
}cl_double16;
# 33 "/usr/include/gegl-0.2/opencl/cl.h" 2








typedef struct _cl_platform_id * cl_platform_id;
typedef struct _cl_device_id * cl_device_id;
typedef struct _cl_context * cl_context;
typedef struct _cl_command_queue * cl_command_queue;
typedef struct _cl_mem * cl_mem;
typedef struct _cl_program * cl_program;
typedef struct _cl_kernel * cl_kernel;
typedef struct _cl_event * cl_event;
typedef struct _cl_sampler * cl_sampler;

typedef cl_uint cl_bool;
typedef cl_ulong cl_bitfield;
typedef cl_bitfield cl_device_type;
typedef cl_uint cl_platform_info;
typedef cl_uint cl_device_info;
typedef cl_bitfield cl_device_fp_config;
typedef cl_uint cl_device_mem_cache_type;
typedef cl_uint cl_device_local_mem_type;
typedef cl_bitfield cl_device_exec_capabilities;
typedef cl_bitfield cl_command_queue_properties;

typedef intptr_t cl_context_properties;
typedef cl_uint cl_context_info;
typedef cl_uint cl_command_queue_info;
typedef cl_uint cl_channel_order;
typedef cl_uint cl_channel_type;
typedef cl_bitfield cl_mem_flags;
typedef cl_uint cl_mem_object_type;
typedef cl_uint cl_mem_info;
typedef cl_uint cl_image_info;
typedef cl_uint cl_buffer_create_type;
typedef cl_uint cl_addressing_mode;
typedef cl_uint cl_filter_mode;
typedef cl_uint cl_sampler_info;
typedef cl_bitfield cl_map_flags;
typedef cl_uint cl_program_info;
typedef cl_uint cl_program_build_info;
typedef cl_int cl_build_status;
typedef cl_uint cl_kernel_info;
typedef cl_uint cl_kernel_work_group_info;
typedef cl_uint cl_event_info;
typedef cl_uint cl_command_type;
typedef cl_uint cl_profiling_info;

typedef struct _cl_image_format {
    cl_channel_order image_channel_order;
    cl_channel_type image_channel_data_type;
} cl_image_format;


typedef struct _cl_buffer_region {
    size_t origin;
    size_t size;
} cl_buffer_region;
# 447 "/usr/include/gegl-0.2/opencl/cl.h"
extern cl_int
clGetPlatformIDs(cl_uint ,
                 cl_platform_id * ,
                 cl_uint * ) ;

extern cl_int
clGetPlatformInfo(cl_platform_id ,
                  cl_platform_info ,
                  size_t ,
                  void * ,
                  size_t * ) ;


extern cl_int
clGetDeviceIDs(cl_platform_id ,
               cl_device_type ,
               cl_uint ,
               cl_device_id * ,
               cl_uint * ) ;

extern cl_int
clGetDeviceInfo(cl_device_id ,
                cl_device_info ,
                size_t ,
                void * ,
                size_t * ) ;


extern cl_context
clCreateContext(const cl_context_properties * ,
                cl_uint ,
                const cl_device_id * ,
                void ( * )(const char *, const void *, size_t, void *),
                void * ,
                cl_int * ) ;

extern cl_context
clCreateContextFromType(const cl_context_properties * ,
                        cl_device_type ,
                        void ( * )(const char *, const void *, size_t, void *),
                        void * ,
                        cl_int * ) ;

extern cl_int
clRetainContext(cl_context ) ;

extern cl_int
clReleaseContext(cl_context ) ;

extern cl_int
clGetContextInfo(cl_context ,
                 cl_context_info ,
                 size_t ,
                 void * ,
                 size_t * ) ;


extern cl_command_queue
clCreateCommandQueue(cl_context ,
                     cl_device_id ,
                     cl_command_queue_properties ,
                     cl_int * ) ;

extern cl_int
clRetainCommandQueue(cl_command_queue ) ;

extern cl_int
clReleaseCommandQueue(cl_command_queue ) ;

extern cl_int
clGetCommandQueueInfo(cl_command_queue ,
                      cl_command_queue_info ,
                      size_t ,
                      void * ,
                      size_t * ) ;
# 543 "/usr/include/gegl-0.2/opencl/cl.h"
extern cl_mem
clCreateBuffer(cl_context ,
               cl_mem_flags ,
               size_t ,
               void * ,
               cl_int * ) ;

extern cl_mem
clCreateSubBuffer(cl_mem ,
                  cl_mem_flags ,
                  cl_buffer_create_type ,
                  const void * ,
                  cl_int * ) ;

extern cl_mem
clCreateImage2D(cl_context ,
                cl_mem_flags ,
                const cl_image_format * ,
                size_t ,
                size_t ,
                size_t ,
                void * ,
                cl_int * ) ;

extern cl_mem
clCreateImage3D(cl_context ,
                cl_mem_flags ,
                const cl_image_format * ,
                size_t ,
                size_t ,
                size_t ,
                size_t ,
                size_t ,
                void * ,
                cl_int * ) ;

extern cl_int
clRetainMemObject(cl_mem ) ;

extern cl_int
clReleaseMemObject(cl_mem ) ;

extern cl_int
clGetSupportedImageFormats(cl_context ,
                           cl_mem_flags ,
                           cl_mem_object_type ,
                           cl_uint ,
                           cl_image_format * ,
                           cl_uint * ) ;

extern cl_int
clGetMemObjectInfo(cl_mem ,
                   cl_mem_info ,
                   size_t ,
                   void * ,
                   size_t * ) ;

extern cl_int
clGetImageInfo(cl_mem ,
               cl_image_info ,
               size_t ,
               void * ,
               size_t * ) ;

extern cl_int
clSetMemObjectDestructorCallback( cl_mem ,
                                    void ( * )( cl_mem , void* ),
                                    void * ) ;


extern cl_sampler
clCreateSampler(cl_context ,
                cl_bool ,
                cl_addressing_mode ,
                cl_filter_mode ,
                cl_int * ) ;

extern cl_int
clRetainSampler(cl_sampler ) ;

extern cl_int
clReleaseSampler(cl_sampler ) ;

extern cl_int
clGetSamplerInfo(cl_sampler ,
                 cl_sampler_info ,
                 size_t ,
                 void * ,
                 size_t * ) ;


extern cl_program
clCreateProgramWithSource(cl_context ,
                          cl_uint ,
                          const char ** ,
                          const size_t * ,
                          cl_int * ) ;

extern cl_program
clCreateProgramWithBinary(cl_context ,
                          cl_uint ,
                          const cl_device_id * ,
                          const size_t * ,
                          const unsigned char ** ,
                          cl_int * ,
                          cl_int * ) ;

extern cl_int
clRetainProgram(cl_program ) ;

extern cl_int
clReleaseProgram(cl_program ) ;

extern cl_int
clBuildProgram(cl_program ,
               cl_uint ,
               const cl_device_id * ,
               const char * ,
               void ( * )(cl_program , void * ),
               void * ) ;

extern cl_int
clUnloadCompiler(void) ;

extern cl_int
clGetProgramInfo(cl_program ,
                 cl_program_info ,
                 size_t ,
                 void * ,
                 size_t * ) ;

extern cl_int
clGetProgramBuildInfo(cl_program ,
                      cl_device_id ,
                      cl_program_build_info ,
                      size_t ,
                      void * ,
                      size_t * ) ;


extern cl_kernel
clCreateKernel(cl_program ,
               const char * ,
               cl_int * ) ;

extern cl_int
clCreateKernelsInProgram(cl_program ,
                         cl_uint ,
                         cl_kernel * ,
                         cl_uint * ) ;

extern cl_int
clRetainKernel(cl_kernel ) ;

extern cl_int
clReleaseKernel(cl_kernel ) ;

extern cl_int
clSetKernelArg(cl_kernel ,
               cl_uint ,
               size_t ,
               const void * ) ;

extern cl_int
clGetKernelInfo(cl_kernel ,
                cl_kernel_info ,
                size_t ,
                void * ,
                size_t * ) ;

extern cl_int
clGetKernelWorkGroupInfo(cl_kernel ,
                         cl_device_id ,
                         cl_kernel_work_group_info ,
                         size_t ,
                         void * ,
                         size_t * ) ;


extern cl_int
clWaitForEvents(cl_uint ,
                const cl_event * ) ;

extern cl_int
clGetEventInfo(cl_event ,
               cl_event_info ,
               size_t ,
               void * ,
               size_t * ) ;

extern cl_event
clCreateUserEvent(cl_context ,
                  cl_int * ) ;

extern cl_int
clRetainEvent(cl_event ) ;

extern cl_int
clReleaseEvent(cl_event ) ;

extern cl_int
clSetUserEventStatus(cl_event ,
                     cl_int ) ;

extern cl_int
clSetEventCallback( cl_event ,
                    cl_int ,
                    void ( * )(cl_event, cl_int, void *),
                    void * ) ;


extern cl_int
clGetEventProfilingInfo(cl_event ,
                        cl_profiling_info ,
                        size_t ,
                        void * ,
                        size_t * ) ;


extern cl_int
clFlush(cl_command_queue ) ;

extern cl_int
clFinish(cl_command_queue ) ;


extern cl_int
clEnqueueReadBuffer(cl_command_queue ,
                    cl_mem ,
                    cl_bool ,
                    size_t ,
                    size_t ,
                    void * ,
                    cl_uint ,
                    const cl_event * ,
                    cl_event * ) ;

extern cl_int
clEnqueueReadBufferRect(cl_command_queue ,
                        cl_mem ,
                        cl_bool ,
                        const size_t * ,
                        const size_t * ,
                        const size_t * ,
                        size_t ,
                        size_t ,
                        size_t ,
                        size_t ,
                        void * ,
                        cl_uint ,
                        const cl_event * ,
                        cl_event * ) ;

extern cl_int
clEnqueueWriteBuffer(cl_command_queue ,
                     cl_mem ,
                     cl_bool ,
                     size_t ,
                     size_t ,
                     const void * ,
                     cl_uint ,
                     const cl_event * ,
                     cl_event * ) ;

extern cl_int
clEnqueueWriteBufferRect(cl_command_queue ,
                         cl_mem ,
                         cl_bool ,
                         const size_t * ,
                         const size_t * ,
                         const size_t * ,
                         size_t ,
                         size_t ,
                         size_t ,
                         size_t ,
                         const void * ,
                         cl_uint ,
                         const cl_event * ,
                         cl_event * ) ;

extern cl_int
clEnqueueCopyBuffer(cl_command_queue ,
                    cl_mem ,
                    cl_mem ,
                    size_t ,
                    size_t ,
                    size_t ,
                    cl_uint ,
                    const cl_event * ,
                    cl_event * ) ;

extern cl_int
clEnqueueCopyBufferRect(cl_command_queue ,
                        cl_mem ,
                        cl_mem ,
                        const size_t * ,
                        const size_t * ,
                        const size_t * ,
                        size_t ,
                        size_t ,
                        size_t ,
                        size_t ,
                        cl_uint ,
                        const cl_event * ,
                        cl_event * ) ;

extern cl_int
clEnqueueReadImage(cl_command_queue ,
                   cl_mem ,
                   cl_bool ,
                   const size_t * ,
                   const size_t * ,
                   size_t ,
                   size_t ,
                   void * ,
                   cl_uint ,
                   const cl_event * ,
                   cl_event * ) ;

extern cl_int
clEnqueueWriteImage(cl_command_queue ,
                    cl_mem ,
                    cl_bool ,
                    const size_t * ,
                    const size_t * ,
                    size_t ,
                    size_t ,
                    const void * ,
                    cl_uint ,
                    const cl_event * ,
                    cl_event * ) ;

extern cl_int
clEnqueueCopyImage(cl_command_queue ,
                   cl_mem ,
                   cl_mem ,
                   const size_t * ,
                   const size_t * ,
                   const size_t * ,
                   cl_uint ,
                   const cl_event * ,
                   cl_event * ) ;

extern cl_int
clEnqueueCopyImageToBuffer(cl_command_queue ,
                           cl_mem ,
                           cl_mem ,
                           const size_t * ,
                           const size_t * ,
                           size_t ,
                           cl_uint ,
                           const cl_event * ,
                           cl_event * ) ;

extern cl_int
clEnqueueCopyBufferToImage(cl_command_queue ,
                           cl_mem ,
                           cl_mem ,
                           size_t ,
                           const size_t * ,
                           const size_t * ,
                           cl_uint ,
                           const cl_event * ,
                           cl_event * ) ;

extern void *
clEnqueueMapBuffer(cl_command_queue ,
                   cl_mem ,
                   cl_bool ,
                   cl_map_flags ,
                   size_t ,
                   size_t ,
                   cl_uint ,
                   const cl_event * ,
                   cl_event * ,
                   cl_int * ) ;

extern void *
clEnqueueMapImage(cl_command_queue ,
                  cl_mem ,
                  cl_bool ,
                  cl_map_flags ,
                  const size_t * ,
                  const size_t * ,
                  size_t * ,
                  size_t * ,
                  cl_uint ,
                  const cl_event * ,
                  cl_event * ,
                  cl_int * ) ;

extern cl_int
clEnqueueUnmapMemObject(cl_command_queue ,
                        cl_mem ,
                        void * ,
                        cl_uint ,
                        const cl_event * ,
                        cl_event * ) ;

extern cl_int
clEnqueueNDRangeKernel(cl_command_queue ,
                       cl_kernel ,
                       cl_uint ,
                       const size_t * ,
                       const size_t * ,
                       const size_t * ,
                       cl_uint ,
                       const cl_event * ,
                       cl_event * ) ;

extern cl_int
clEnqueueTask(cl_command_queue ,
              cl_kernel ,
              cl_uint ,
              const cl_event * ,
              cl_event * ) ;

extern cl_int
clEnqueueNativeKernel(cl_command_queue ,
       void (*user_func)(void *),
                      void * ,
                      size_t ,
                      cl_uint ,
                      const cl_mem * ,
                      const void ** ,
                      cl_uint ,
                      const cl_event * ,
                      cl_event * ) ;

extern cl_int
clEnqueueMarker(cl_command_queue ,
                cl_event * ) ;

extern cl_int
clEnqueueWaitForEvents(cl_command_queue ,
                       cl_uint ,
                       const cl_event * ) ;

extern cl_int
clEnqueueBarrier(cl_command_queue ) ;
# 991 "/usr/include/gegl-0.2/opencl/cl.h"
extern void * clGetExtensionFunctionAddress(const char * ) ;
# 7 "/usr/include/gegl-0.2/opencl/gegl-cl-types.h" 2
# 1 "/usr/include/gegl-0.2/opencl/cl_gl.h" 1
# 46 "/usr/include/gegl-0.2/opencl/cl_gl.h"
typedef cl_uint cl_gl_object_type;
typedef cl_uint cl_gl_texture_info;
typedef cl_uint cl_gl_platform_info;
typedef struct __GLsync *cl_GLsync;
# 61 "/usr/include/gegl-0.2/opencl/cl_gl.h"
extern cl_mem
clCreateFromGLBuffer(cl_context ,
                     cl_mem_flags ,
                     cl_GLuint ,
                     int * ) ;

extern cl_mem
clCreateFromGLTexture2D(cl_context ,
                        cl_mem_flags ,
                        cl_GLenum ,
                        cl_GLint ,
                        cl_GLuint ,
                        cl_int * ) ;

extern cl_mem
clCreateFromGLTexture3D(cl_context ,
                        cl_mem_flags ,
                        cl_GLenum ,
                        cl_GLint ,
                        cl_GLuint ,
                        cl_int * ) ;

extern cl_mem
clCreateFromGLRenderbuffer(cl_context ,
                           cl_mem_flags ,
                           cl_GLuint ,
                           cl_int * ) ;

extern cl_int
clGetGLObjectInfo(cl_mem ,
                  cl_gl_object_type * ,
                  cl_GLuint * ) ;

extern cl_int
clGetGLTextureInfo(cl_mem ,
                   cl_gl_texture_info ,
                   size_t ,
                   void * ,
                   size_t * ) ;

extern cl_int
clEnqueueAcquireGLObjects(cl_command_queue ,
                          cl_uint ,
                          const cl_mem * ,
                          cl_uint ,
                          const cl_event * ,
                          cl_event * ) ;

extern cl_int
clEnqueueReleaseGLObjects(cl_command_queue ,
                          cl_uint ,
                          const cl_mem * ,
                          cl_uint ,
                          const cl_event * ,
                          cl_event * ) ;





typedef cl_uint cl_gl_context_info;
# 137 "/usr/include/gegl-0.2/opencl/cl_gl.h"
extern cl_int
clGetGLContextInfoKHR(const cl_context_properties * ,
                      cl_gl_context_info ,
                      size_t ,
                      void * ,
                      size_t * ) ;

typedef cl_int ( *clGetGLContextInfoKHR_fn)(
    const cl_context_properties * properties,
    cl_gl_context_info param_name,
    size_t param_value_size,
    void * param_value,
    size_t * param_value_size_ret);
# 8 "/usr/include/gegl-0.2/opencl/gegl-cl-types.h" 2
# 1 "/usr/include/gegl-0.2/opencl/cl_gl_ext.h" 1
# 60 "/usr/include/gegl-0.2/opencl/cl_gl_ext.h"
extern cl_event
clCreateEventFromGLsyncKHR(cl_context ,
                           cl_GLsync ,
                           cl_int * ) ;
# 9 "/usr/include/gegl-0.2/opencl/gegl-cl-types.h" 2
# 1 "/usr/include/gegl-0.2/opencl/cl_ext.h" 1
# 67 "/usr/include/gegl-0.2/opencl/cl_ext.h"
cl_int clSetMemObjectDestructorAPPLE( cl_mem ,
                                        void (* )( cl_mem , void* ),
                                        void * ) ;
# 81 "/usr/include/gegl-0.2/opencl/cl_ext.h"
extern void clLogMessagesToSystemLogAPPLE( const char * ,
                                            const void * ,
                                            size_t ,
                                            void * ) ;


extern void clLogMessagesToStdoutAPPLE( const char * ,
                                          const void * ,
                                          size_t ,
                                          void * ) ;


extern void clLogMessagesToStderrAPPLE( const char * ,
                                          const void * ,
                                          size_t ,
                                          void * ) ;
# 110 "/usr/include/gegl-0.2/opencl/cl_ext.h"
extern cl_int
clIcdGetPlatformIDsKHR(cl_uint ,
                       cl_platform_id * ,
                       cl_uint * );

typedef cl_int ( *clIcdGetPlatformIDsKHR_fn)(
    cl_uint ,
    cl_platform_id * ,
    cl_uint * );
# 146 "/usr/include/gegl-0.2/opencl/cl_ext.h"
    extern cl_int
    clReleaseDeviceEXT( cl_device_id ) ;

    typedef cl_int
    ( *clReleaseDeviceEXT_fn)( cl_device_id ) ;

    extern cl_int
    clRetainDeviceEXT( cl_device_id ) ;

    typedef cl_int
    ( *clRetainDeviceEXT_fn)( cl_device_id ) ;

    typedef cl_ulong cl_device_partition_property_ext;
    extern cl_int
    clCreateSubDevicesEXT( cl_device_id ,
                            const cl_device_partition_property_ext * ,
                            cl_uint ,
                            cl_device_id * ,
                            cl_uint * ) ;

    typedef cl_int
    ( * clCreateSubDevicesEXT_fn)( cl_device_id ,
                                                const cl_device_partition_property_ext * ,
                                                cl_uint ,
                                                cl_device_id * ,
                                                cl_uint * ) ;
# 10 "/usr/include/gegl-0.2/opencl/gegl-cl-types.h" 2

struct _GeglClTexture
{
  cl_mem data;
  cl_image_format format;
  gint width;
  gint height;
};

typedef struct _GeglClTexture GeglClTexture;
# 29 "/usr/include/gegl-0.2/opencl/gegl-cl-types.h"
typedef cl_int ( *t_clGetPlatformIDs ) (cl_uint, cl_platform_id *, cl_uint *);
typedef cl_int ( *t_clGetPlatformInfo ) (cl_platform_id, cl_platform_info, size_t, void *, size_t *);
typedef cl_int ( *t_clGetDeviceIDs ) (cl_platform_id, cl_device_type, cl_uint, cl_device_id *, cl_uint *);
typedef cl_int ( *t_clGetDeviceInfo ) (cl_device_id, cl_device_info, size_t, void *, size_t *);

typedef cl_context ( *t_clCreateContext ) (const cl_context_properties *, cl_uint, const cl_device_id *, void ( *) (const char *, const void *, size_t, void *), void *, cl_int *);
typedef cl_context ( *t_clCreateContextFromType ) (cl_context_properties *, cl_device_type, void (*pfn_notify) (const char *, const void *, size_t, void *), void *, cl_int *);
typedef cl_command_queue ( *t_clCreateCommandQueue ) (cl_context context, cl_device_id device, cl_command_queue_properties, cl_int *);
typedef cl_program ( *t_clCreateProgramWithSource) (cl_context, cl_uint, const char **, const size_t *, cl_int *);
typedef cl_int ( *t_clBuildProgram ) (cl_program, cl_uint, const cl_device_id *, const char *, void ( *)(cl_program, void *), void *);
typedef cl_int ( *t_clGetProgramBuildInfo ) (cl_program, cl_device_id, cl_program_build_info, size_t, void *, size_t *);
typedef cl_kernel ( *t_clCreateKernel ) (cl_program, const char *, cl_int *);
typedef cl_int ( *t_clSetKernelArg ) (cl_kernel, cl_uint, size_t, const void *);
typedef cl_int ( *t_clGetKernelWorkGroupInfo ) (cl_kernel, cl_device_id, cl_kernel_work_group_info, size_t, void *, size_t *);
typedef cl_mem ( *t_clCreateBuffer ) (cl_context, cl_mem_flags, size_t, void *, cl_int *);
typedef cl_int ( *t_clEnqueueWriteBuffer ) (cl_command_queue, cl_mem, cl_bool, size_t, size_t, const void *, cl_uint, const cl_event *, cl_event *);
typedef cl_int ( *t_clEnqueueReadBuffer ) (cl_command_queue, cl_mem, cl_bool, size_t, size_t, void *, cl_uint, const cl_event *, cl_event *);
typedef cl_int ( *t_clEnqueueCopyBuffer ) (cl_command_queue, cl_mem, cl_mem, size_t, size_t, size_t, cl_uint, const cl_event *, cl_event *);
typedef cl_int ( *t_clEnqueueReadBufferRect ) (cl_command_queue, cl_mem, cl_bool, const size_t [3], const size_t [3], const size_t [3], size_t, size_t, size_t, size_t, void *, cl_uint, const cl_event *, cl_event *);
typedef cl_int ( *t_clEnqueueWriteBufferRect ) (cl_command_queue, cl_mem, cl_bool, const size_t [3], const size_t [3], const size_t [3], size_t, size_t, size_t, size_t, void *, cl_uint, const cl_event *, cl_event *);
typedef cl_int ( *t_clEnqueueCopyBufferRect ) (cl_command_queue, cl_mem, cl_mem, const size_t [3], const size_t [3], const size_t [3], size_t, size_t, size_t, size_t, cl_uint, const cl_event *, cl_event *);
typedef cl_mem ( *t_clCreateImage2D ) (cl_context, cl_mem_flags, const cl_image_format *, size_t, size_t, size_t, void *, cl_int *);
typedef cl_int ( *t_clEnqueueReadImage ) (cl_command_queue, cl_mem, cl_bool, const size_t [3], const size_t [3], size_t, size_t, void *, cl_uint, const cl_event *, cl_event *);
typedef cl_int ( *t_clEnqueueWriteImage ) (cl_command_queue, cl_mem, cl_bool, const size_t [3], const size_t [3], size_t, size_t, const void *, cl_uint, const cl_event *, cl_event *);
typedef cl_int ( *t_clEnqueueCopyImage ) (cl_command_queue, cl_mem, cl_mem, const size_t [3], const size_t [3], const size_t [3], cl_uint, const cl_event *, cl_event *);
typedef cl_int ( *t_clEnqueueCopyImageToBuffer) (cl_command_queue, cl_mem, cl_mem, const size_t [3], const size_t [3], size_t, cl_uint, const cl_event *, cl_event *);
typedef cl_int ( *t_clEnqueueCopyBufferToImage) (cl_command_queue, cl_mem, cl_mem, size_t, const size_t [3], const size_t [3], cl_uint, const cl_event *, cl_event *);

typedef void * ( *t_clEnqueueMapBuffer ) (cl_command_queue, cl_mem, cl_bool, cl_map_flags, size_t, size_t, cl_uint, const cl_event *, cl_event *, cl_int *);
typedef void * ( *t_clEnqueueMapImage ) (cl_command_queue, cl_mem, cl_bool, cl_map_flags, const size_t [3], const size_t [3], size_t *, size_t *, cl_uint, const cl_event *, cl_event *, cl_int *);
typedef cl_int ( *t_clEnqueueUnmapMemObject ) (cl_command_queue, cl_mem, void *, cl_uint, const cl_event *, cl_event *);


typedef cl_int ( *t_clEnqueueNDRangeKernel ) (cl_command_queue, cl_kernel, cl_uint, const size_t *, const size_t *, const size_t *, cl_uint, const cl_event *, cl_event *);
typedef cl_int ( *t_clEnqueueBarrier ) (cl_command_queue);
typedef cl_int ( *t_clFinish ) (cl_command_queue);

typedef cl_int ( *t_clReleaseKernel ) (cl_kernel);
typedef cl_int ( *t_clReleaseProgram ) (cl_program);
typedef cl_int ( *t_clReleaseCommandQueue ) (cl_command_queue);
typedef cl_int ( *t_clReleaseContext ) (cl_context);
typedef cl_int ( *t_clReleaseMemObject ) (cl_mem);
# 5 "/usr/include/gegl-0.2/opencl/gegl-cl.h" 2
# 1 "/usr/include/gegl-0.2/opencl/gegl-cl-init.h" 1
# 14 "/usr/include/gegl-0.2/opencl/gegl-cl-init.h"
typedef struct
  {
    gboolean is_accelerated;
    cl_context ctx;
    cl_platform_id platform;
    cl_device_id device;
    cl_command_queue cq;
    cl_bool image_support;
    size_t iter_height;
    size_t iter_width;
    cl_ulong max_mem_alloc;
    cl_ulong local_mem_size;

    char platform_name [1024];
    char platform_version[1024];
    char platform_ext [1024];
    char device_name [1024];
  }
gegl_cl_state;

const char *gegl_cl_errstring(cl_int err);

gboolean gegl_cl_init (GError **error);

gboolean gegl_cl_is_accelerated (void);

cl_platform_id gegl_cl_get_platform (void);

cl_device_id gegl_cl_get_device (void);

cl_context gegl_cl_get_context (void);

cl_command_queue gegl_cl_get_command_queue (void);

cl_ulong gegl_cl_get_local_mem_size (void);

size_t gegl_cl_get_iter_width (void);

size_t gegl_cl_get_iter_height (void);

typedef struct
{
  cl_program program;
  cl_kernel kernel[];
} gegl_cl_run_data;

gegl_cl_run_data *gegl_cl_compile_and_build (const char *program_source,
                                             const char *kernel_name[]);
# 110 "/usr/include/gegl-0.2/opencl/gegl-cl-init.h"
extern t_clGetPlatformIDs gegl_clGetPlatformIDs;
extern t_clGetPlatformInfo gegl_clGetPlatformInfo;
extern t_clGetDeviceIDs gegl_clGetDeviceIDs;
extern t_clGetDeviceInfo gegl_clGetDeviceInfo;

extern t_clCreateContext gegl_clCreateContext;
extern t_clCreateContextFromType gegl_clCreateContextFromType;
extern t_clCreateCommandQueue gegl_clCreateCommandQueue;
extern t_clCreateProgramWithSource gegl_clCreateProgramWithSource;
extern t_clBuildProgram gegl_clBuildProgram;
extern t_clGetProgramBuildInfo gegl_clGetProgramBuildInfo;
extern t_clCreateKernel gegl_clCreateKernel;
extern t_clSetKernelArg gegl_clSetKernelArg;
extern t_clGetKernelWorkGroupInfo gegl_clGetKernelWorkGroupInfo;
extern t_clCreateBuffer gegl_clCreateBuffer;
extern t_clEnqueueWriteBuffer gegl_clEnqueueWriteBuffer;
extern t_clEnqueueReadBuffer gegl_clEnqueueReadBuffer;
extern t_clEnqueueReadBufferRect gegl_clEnqueueReadBufferRect;
extern t_clEnqueueWriteBufferRect gegl_clEnqueueWriteBufferRect;
extern t_clEnqueueCopyBufferRect gegl_clEnqueueCopyBufferRect;
extern t_clCreateImage2D gegl_clCreateImage2D;
extern t_clEnqueueWriteImage gegl_clEnqueueWriteImage;
extern t_clEnqueueReadImage gegl_clEnqueueReadImage;
extern t_clEnqueueCopyImage gegl_clEnqueueCopyImage;
extern t_clEnqueueCopyBuffer gegl_clEnqueueCopyBuffer;
extern t_clEnqueueCopyBufferToImage gegl_clEnqueueCopyBufferToImage;
extern t_clEnqueueCopyImageToBuffer gegl_clEnqueueCopyImageToBuffer;
extern t_clEnqueueNDRangeKernel gegl_clEnqueueNDRangeKernel;
extern t_clEnqueueBarrier gegl_clEnqueueBarrier;
extern t_clFinish gegl_clFinish;

extern t_clEnqueueMapBuffer gegl_clEnqueueMapBuffer;
extern t_clEnqueueMapImage gegl_clEnqueueMapImage;
extern t_clEnqueueUnmapMemObject gegl_clEnqueueUnmapMemObject;

extern t_clReleaseKernel gegl_clReleaseKernel;
extern t_clReleaseProgram gegl_clReleaseProgram;
extern t_clReleaseCommandQueue gegl_clReleaseCommandQueue;
extern t_clReleaseContext gegl_clReleaseContext;
extern t_clReleaseMemObject gegl_clReleaseMemObject;
# 6 "/usr/include/gegl-0.2/opencl/gegl-cl.h" 2
# 1 "/usr/include/gegl-0.2/opencl/gegl-cl-color.h" 1






typedef enum
{
  GEGL_CL_COLOR_NOT_SUPPORTED = 0,
  GEGL_CL_COLOR_EQUAL = 1,
  GEGL_CL_COLOR_CONVERT = 2
} gegl_cl_color_op;

void gegl_cl_color_compile_kernels(void);

gboolean gegl_cl_color_babl (const Babl *buffer_format, size_t *bytes);

gegl_cl_color_op gegl_cl_color_supported (const Babl *in_format, const Babl *out_format);

gboolean gegl_cl_color_conv (cl_mem in_tex, cl_mem aux_tex, const size_t size,
                             const Babl *in_format, const Babl *out_format);
# 7 "/usr/include/gegl-0.2/opencl/gegl-cl.h" 2
# 1 "/usr/include/glib-2.0/glib/gprintf.h" 1
# 22 "/usr/include/glib-2.0/glib/gprintf.h"
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
# 23 "/usr/include/glib-2.0/glib/gprintf.h" 2




extern
gint g_printf (gchar const *format,
                                   ...) __attribute__((__format__ (__printf__, 1, 2)));
extern
gint g_fprintf (FILE *file,
       gchar const *format,
       ...) __attribute__((__format__ (__printf__, 2, 3)));
extern
gint g_sprintf (gchar *string,
       gchar const *format,
       ...) __attribute__((__format__ (__printf__, 2, 3)));

extern
gint g_vprintf (gchar const *format,
                                   va_list args) __attribute__((__format__ (__printf__, 1, 0)));
extern
gint g_vfprintf (FILE *file,
       gchar const *format,
       va_list args) __attribute__((__format__ (__printf__, 2, 0)));
extern
gint g_vsprintf (gchar *string,
       gchar const *format,
       va_list args) __attribute__((__format__ (__printf__, 2, 0)));
extern
gint g_vasprintf (gchar **string,
       gchar const *format,
       va_list args) __attribute__((__format__ (__printf__, 2, 0)));
# 8 "/usr/include/gegl-0.2/opencl/gegl-cl.h" 2
# 32 "/usr/include/gegl-0.2/operation/gegl-operation-point-filter.h" 2
# 42 "/usr/include/gegl-0.2/operation/gegl-operation-point-filter.h"
typedef struct _GeglOperationPointFilter GeglOperationPointFilter;
struct _GeglOperationPointFilter
{
  GeglOperationFilter parent_instance;
};

typedef struct _GeglOperationPointFilterClass GeglOperationPointFilterClass;
struct _GeglOperationPointFilterClass
{
  GeglOperationFilterClass parent_class;

  gboolean (* process) (GeglOperation *self,
                        void *in_buf,
                        void *out_buf,
                        glong samples,
                        const GeglRectangle *roi,



                        gint level);
  cl_int (* cl_process) (GeglOperation *self,
                           cl_mem in_tex,
                           cl_mem out_tex,
                           size_t global_worksize,
                           const GeglRectangle *roi,
                           gint level);
  gpointer pad[4];
};

GType gegl_operation_point_filter_get_type (void) __attribute__((__const__));
# 147 "/usr/include/gegl-0.2/gegl-plugin.h" 2
# 1 "/usr/include/gegl-0.2/operation/gegl-operation-composer.h" 1
# 38 "/usr/include/gegl-0.2/operation/gegl-operation-composer.h"
typedef struct _GeglOperationComposer GeglOperationComposer;
struct _GeglOperationComposer
{
  GeglOperation parent_instance;
};

typedef struct _GeglOperationComposerClass GeglOperationComposerClass;
struct _GeglOperationComposerClass
{
  GeglOperationClass parent_class;

  gboolean (* process) (GeglOperation *self,
                        GeglBuffer *input,
                        GeglBuffer *aux,
                        GeglBuffer *output,
                        const GeglRectangle *result,
                        gint level);
  gpointer pad[4];
};

GType gegl_operation_composer_get_type (void) __attribute__((__const__));
# 148 "/usr/include/gegl-0.2/gegl-plugin.h" 2
# 1 "/usr/include/gegl-0.2/operation/gegl-operation-composer3.h" 1
# 33 "/usr/include/gegl-0.2/operation/gegl-operation-composer3.h"
typedef struct _GeglOperationComposer3 GeglOperationComposer3;
struct _GeglOperationComposer3
{
  GeglOperation parent_instance;
};

typedef struct _GeglOperationComposer3Class GeglOperationComposer3Class;
struct _GeglOperationComposer3Class
{
  GeglOperationClass parent_class;

  gboolean (* process) (GeglOperation *self,
                        GeglBuffer *input,
                        GeglBuffer *aux,
                        GeglBuffer *aux2,
                        GeglBuffer *output,
                        const GeglRectangle *result,
                        gint level);
  gpointer pad[4];
};

GType gegl_operation_composer3_get_type (void) __attribute__((__const__));
# 149 "/usr/include/gegl-0.2/gegl-plugin.h" 2
# 1 "/usr/include/gegl-0.2/operation/gegl-operation-point-composer.h" 1
# 40 "/usr/include/gegl-0.2/operation/gegl-operation-point-composer.h"
typedef struct _GeglOperationPointComposer GeglOperationPointComposer;
struct _GeglOperationPointComposer
{
  GeglOperationComposer parent_instance;


};

typedef struct _GeglOperationPointComposerClass GeglOperationPointComposerClass;
struct _GeglOperationPointComposerClass
{
  GeglOperationComposerClass parent_class;

  gboolean (* process) (GeglOperation *self,
                        void *in,
                        void *aux,
                        void *out,
                        glong samples,
                        const GeglRectangle *roi,
                        gint level);

  cl_int (* cl_process) (GeglOperation *self,
                           cl_mem in_tex,
                           cl_mem aux_tex,
                           cl_mem out_tex,
                           size_t global_worksize,
                           const GeglRectangle *roi,
                           gint level);
  gpointer pad[4];
};

GType gegl_operation_point_composer_get_type (void) __attribute__((__const__));
# 150 "/usr/include/gegl-0.2/gegl-plugin.h" 2
# 1 "/usr/include/gegl-0.2/operation/gegl-operation-point-composer3.h" 1
# 33 "/usr/include/gegl-0.2/operation/gegl-operation-point-composer3.h"
typedef struct _GeglOperationPointComposer3 GeglOperationPointComposer3;
struct _GeglOperationPointComposer3
{
  GeglOperationComposer3 parent_instance;


};

typedef struct _GeglOperationPointComposer3Class GeglOperationPointComposer3Class;
struct _GeglOperationPointComposer3Class
{
  GeglOperationComposer3Class parent_class;

  gboolean (* process) (GeglOperation *self,
                        void *in,
                        void *aux,
                        void *aux2,
                        void *out,
                        glong samples,
                        const GeglRectangle *roi,
                        gint level);

  gpointer pad[4];
};

GType gegl_operation_point_composer3_get_type (void) __attribute__((__const__));
# 151 "/usr/include/gegl-0.2/gegl-plugin.h" 2
# 1 "/usr/include/gegl-0.2/operation/gegl-operation-point-render.h" 1
# 28 "/usr/include/gegl-0.2/operation/gegl-operation-point-render.h"
# 1 "/usr/include/gegl-0.2/operation/gegl-operation-source.h" 1
# 38 "/usr/include/gegl-0.2/operation/gegl-operation-source.h"
typedef struct _GeglOperationSource GeglOperationSource;
struct _GeglOperationSource
{
  GeglOperation parent_instance;
};

typedef struct _GeglOperationSourceClass GeglOperationSourceClass;
struct _GeglOperationSourceClass
{
  GeglOperationClass parent_class;

  gboolean (* process) (GeglOperation *self,
                        GeglBuffer *output,
                        const GeglRectangle *roi,
                        gint level);
  gpointer pad[4];
};

GType gegl_operation_source_get_type (void) __attribute__((__const__));
# 29 "/usr/include/gegl-0.2/operation/gegl-operation-point-render.h" 2
# 39 "/usr/include/gegl-0.2/operation/gegl-operation-point-render.h"
typedef struct _GeglOperationPointRender GeglOperationPointRender;
struct _GeglOperationPointRender
{
  GeglOperationSource parent_instance;
};

typedef struct _GeglOperationPointRenderClass GeglOperationPointRenderClass;
struct _GeglOperationPointRenderClass
{
  GeglOperationSourceClass parent_class;

  gboolean (* process) (GeglOperation *self,
                        void *out_buf,
                        glong samples,
                        const GeglRectangle *roi,
                        gint level);
  gpointer pad[4];
};

GType gegl_operation_point_render_get_type (void) __attribute__((__const__));
# 152 "/usr/include/gegl-0.2/gegl-plugin.h" 2
# 1 "/usr/include/gegl-0.2/operation/gegl-operation-temporal.h" 1
# 39 "/usr/include/gegl-0.2/operation/gegl-operation-temporal.h"
typedef struct _GeglOperationTemporal GeglOperationTemporal;
typedef struct _GeglOperationTemporalPrivate GeglOperationTemporalPrivate;
struct _GeglOperationTemporal
{
  GeglOperationFilter parent_instance;
  GeglOperationTemporalPrivate *priv;
};

typedef struct _GeglOperationTemporalClass GeglOperationTemporalClass;
struct _GeglOperationTemporalClass
{
  GeglOperationFilterClass parent_class;
  gboolean (* process) (GeglOperation *self,
                        GeglBuffer *input,
                        GeglBuffer *output,
                        const GeglRectangle *roi,
                        gint level);
  gpointer pad[4];
};

GType gegl_operation_temporal_get_type (void) __attribute__((__const__));

void gegl_operation_temporal_set_history_length (GeglOperation *op,
                                                 gint history_length);

guint gegl_operation_temporal_get_history_length (GeglOperation *op);


GeglBuffer *gegl_operation_temporal_get_frame (GeglOperation *op,
                                               gint frame);
# 153 "/usr/include/gegl-0.2/gegl-plugin.h" 2

# 1 "/usr/include/gegl-0.2/operation/gegl-operation-sink.h" 1
# 38 "/usr/include/gegl-0.2/operation/gegl-operation-sink.h"
typedef struct _GeglOperationSink GeglOperationSink;
struct _GeglOperationSink
{
  GeglOperation parent_instance;
};

typedef struct _GeglOperationSinkClass GeglOperationSinkClass;
struct _GeglOperationSinkClass
{
  GeglOperationClass parent_class;




  gboolean needs_full;

  gboolean (* process) (GeglOperation *self,
                        GeglBuffer *input,
                        const GeglRectangle *roi,
                        gint level);
  gpointer pad[4];
};

GType gegl_operation_sink_get_type (void) __attribute__((__const__));

gboolean gegl_operation_sink_needs_full (GeglOperation *operation);
# 155 "/usr/include/gegl-0.2/gegl-plugin.h" 2
# 1 "/usr/include/gegl-0.2/operation/gegl-operation-meta.h" 1
# 39 "/usr/include/gegl-0.2/operation/gegl-operation-meta.h"
typedef struct _GeglOperationMeta GeglOperationMeta;
struct _GeglOperationMeta
{
  GeglOperation parent_instance;

  GSList *redirects;
};

typedef struct _GeglOperationMetaClass GeglOperationMetaClass;
struct _GeglOperationMetaClass
{
  GeglOperationClass parent_class;
  gpointer pad[4];
};


GType gegl_operation_meta_get_type (void) __attribute__((__const__));

void gegl_operation_meta_redirect (GeglOperation *operation,
                                            const gchar *name,
                                            GeglNode *internal,
                                            const gchar *internal_name);

void gegl_operation_meta_property_changed (GeglOperationMeta *self,
                                            GParamSpec *arg1,
                                            gpointer user_data);
# 156 "/usr/include/gegl-0.2/gegl-plugin.h" 2

# 1 "/usr/include/gegl-0.2/gegl-lookup.h" 1
# 24 "/usr/include/gegl-0.2/gegl-lookup.h"
typedef gfloat (* GeglLookupFunction) (gfloat value,
                                           gpointer data);



typedef struct GeglLookup
{
  GeglLookupFunction function;
  gpointer data;
  gint shift;
  guint32 positive_min, positive_max, negative_min, negative_max;
  guint32 bitmask[(819200)/32];
  gfloat table[];
} GeglLookup;


GeglLookup *gegl_lookup_new_full (GeglLookupFunction function,
                                   gpointer data,
                                   gfloat start,
                                   gfloat end,
                                   gfloat precision);
GeglLookup *gegl_lookup_new (GeglLookupFunction function,
                                   gpointer data);
void gegl_lookup_free (GeglLookup *lookup);


static inline gfloat
gegl_lookup (GeglLookup *lookup,
             gfloat number)
{
  union
  {
    float f;
    guint32 i;
  } u;
  guint i;

  u.f = number;
  i = u.i >> lookup->shift;

  if (i > lookup->positive_min &&
      i < lookup->positive_max)
    i = i - lookup->positive_min;
  else if (i > lookup->negative_min &&
           i < lookup->negative_max)
    i = i - lookup->negative_min + (lookup->positive_max - lookup->positive_min);
  else
    return lookup->function (number, lookup->data);

  if (!(lookup->bitmask[i/32] & (1<<(i & 31))))
    {
      lookup->table[i]= lookup->function (number, lookup->data);
      lookup->bitmask[i/32] |= (1<<(i & 31));
    }

  return lookup->table[i];
}
# 158 "/usr/include/gegl-0.2/gegl-plugin.h" 2
# 25 "./gimpoperationtilesink.h" 2
# 34 "./gimpoperationtilesink.h"
typedef struct _GimpOperationTileSinkClass GimpOperationTileSinkClass;

struct _GimpOperationTileSink
{
  GeglOperationSink parent_instance;

  TileManager *tile_manager;
  gboolean linear;
};

struct _GimpOperationTileSinkClass
{
  GeglOperationSinkClass parent_class;

  void (* data_written) (GimpOperationTileSink *sink,
                         const GeglRectangle *extent);
};


GType gimp_operation_tile_sink_get_type (void) __attribute__((__const__));
# 37 "gimpoperationtilesink.c" 2


enum
{
  PROP_0,
  PROP_TILE_MANAGER,
  PROP_LINEAR
};

enum
{
  DATA_WRITTEN,
  LAST_SIGNAL
};


static void gimp_operation_tile_sink_finalize (GObject *object);
static void gimp_operation_tile_sink_get_property (GObject *object,
                                                       guint property_id,
                                                       GValue *value,
                                                       GParamSpec *pspec);
static void gimp_operation_tile_sink_set_property (GObject *object,
                                                       guint property_id,
                                                       const GValue *value,
                                                       GParamSpec *pspec);

static gboolean gimp_operation_tile_sink_process (GeglOperation *operation,
                                                       GeglBuffer *input,
                                                       const GeglRectangle *result,
                                                       gint level);


static void gimp_operation_tile_sink_init (GimpOperationTileSink *self); static void gimp_operation_tile_sink_class_init (GimpOperationTileSinkClass *klass); static gpointer gimp_operation_tile_sink_parent_class = ((void*)0); static gint GimpOperationTileSink_private_offset; static void gimp_operation_tile_sink_class_intern_init (gpointer klass) { gimp_operation_tile_sink_parent_class = g_type_class_peek_parent (klass); if (GimpOperationTileSink_private_offset != 0) g_type_class_adjust_private_offset (klass, &GimpOperationTileSink_private_offset); gimp_operation_tile_sink_class_init ((GimpOperationTileSinkClass*) klass); } __attribute__((__unused__)) static inline gpointer gimp_operation_tile_sink_get_instance_private (GimpOperationTileSink *self) { return (((gpointer) ((guint8*) (self) + (glong) (GimpOperationTileSink_private_offset)))); } GType gimp_operation_tile_sink_get_type (void) { static volatile gsize g_define_type_id__volatile = 0; if ((__extension__ ({ typedef char _GStaticAssertCompileTimeAssertion_0[(sizeof *(&g_define_type_id__volatile) == sizeof (gpointer)) ? 1 : -1] __attribute__((__unused__)); (void) (0 ? (gpointer) *(&g_define_type_id__volatile) : 0); (!(__extension__ ({ typedef char _GStaticAssertCompileTimeAssertion_1[(sizeof *(&g_define_type_id__volatile) == sizeof (gpointer)) ? 1 : -1] __attribute__((__unused__)); __sync_synchronize (); (gpointer) *(&g_define_type_id__volatile); })) && g_once_init_enter (&g_define_type_id__volatile)); }))) { GType g_define_type_id = g_type_register_static_simple ((gegl_operation_sink_get_type ()), g_intern_static_string ("GimpOperationTileSink"), sizeof (GimpOperationTileSinkClass), (GClassInitFunc) gimp_operation_tile_sink_class_intern_init, sizeof (GimpOperationTileSink), (GInstanceInitFunc) gimp_operation_tile_sink_init, (GTypeFlags) 0); { {{};} } (__extension__ ({ typedef char _GStaticAssertCompileTimeAssertion_2[(sizeof *(&g_define_type_id__volatile) == sizeof (gpointer)) ? 1 : -1] __attribute__((__unused__)); (void) (0 ? *(&g_define_type_id__volatile) = (g_define_type_id) : 0); g_once_init_leave ((&g_define_type_id__volatile), (gsize) (g_define_type_id)); })); } return g_define_type_id__volatile; }




static guint tile_sink_signals[LAST_SIGNAL] = { 0 };


static void
gimp_operation_tile_sink_class_init (GimpOperationTileSinkClass *klass)
{
  GObjectClass *object_class = ((((GObjectClass*) g_type_check_class_cast ((GTypeClass*) ((klass)), (((GType) ((20) << (2))))))));
  GeglOperationClass *operation_class = ((((GeglOperationClass*) g_type_check_class_cast ((GTypeClass*) ((klass)), ((gegl_operation_get_type ()))))));
  GeglOperationSinkClass *sink_class = ((((GeglOperationSinkClass*) g_type_check_class_cast ((GTypeClass*) ((klass)), ((gegl_operation_sink_get_type ()))))));

  tile_sink_signals[DATA_WRITTEN] =
    g_signal_new ("data-written",
                  (((GTypeClass*) (klass))->g_type),
                  G_SIGNAL_RUN_FIRST,
                  ((glong) __builtin_offsetof(GimpOperationTileSinkClass, data_written)),
                  ((void*)0), ((void*)0),
                  g_cclosure_marshal_VOID__POINTER,
                  ((GType) ((1) << (2))), 1,
                  ((GType) ((17) << (2))));

  object_class->finalize = gimp_operation_tile_sink_finalize;
  object_class->set_property = gimp_operation_tile_sink_set_property;
  object_class->get_property = gimp_operation_tile_sink_get_property;

  gegl_operation_class_set_keys (operation_class,
      "name", "gimp:tilemanager-sink",
      "categories", "output",
      "description", "GIMP TileManager sink",
      ((void*)0));

  sink_class->process = gimp_operation_tile_sink_process;
  sink_class->needs_full = (0);


  g_object_class_install_property (object_class, PROP_TILE_MANAGER,
                                   g_param_spec_boxed ("tile-manager",
                                                       "Tile Manager",
                                                       "The tile manager to use as a destination",
                                                       (gimp_tile_manager_get_type ()),
                                                       G_PARAM_READWRITE |
                                                       G_PARAM_CONSTRUCT));

  g_object_class_install_property (object_class, PROP_LINEAR,
                                   g_param_spec_boolean ("linear",
                                                         "Linear data",
                                                         "Should the data written to the tile-manager be linear or gamma-corrected?",
                                                         (0),
                                                         G_PARAM_READWRITE |
                                                         G_PARAM_CONSTRUCT));
}

static void
gimp_operation_tile_sink_init (GimpOperationTileSink *self)
{
}

static void
gimp_operation_tile_sink_finalize (GObject *object)
{
  GimpOperationTileSink *self = ((((GimpOperationTileSink*) g_type_check_instance_cast ((GTypeInstance*) ((object)), ((gimp_operation_tile_sink_get_type ()))))));

  if (self->tile_manager)
    {
      tile_manager_unref (self->tile_manager);
      self->tile_manager = ((void*)0);
    }

  ((((GObjectClass*) g_type_check_class_cast ((GTypeClass*) ((gimp_operation_tile_sink_parent_class)), (((GType) ((20) << (2))))))))->finalize (object);
}

static void
gimp_operation_tile_sink_get_property (GObject *object,
                                       guint property_id,
                                       GValue *value,
                                       GParamSpec *pspec)
{
  GimpOperationTileSink *self = ((((GimpOperationTileSink*) g_type_check_instance_cast ((GTypeInstance*) ((object)), ((gimp_operation_tile_sink_get_type ()))))));

  switch (property_id)
    {
    case PROP_TILE_MANAGER:
      g_value_set_boxed (value, self->tile_manager);
      break;

    case PROP_LINEAR:
      g_value_set_boolean (value, self->linear);
      break;

    default:
      do { GObject *_glib__object = (GObject*) ((object)); GParamSpec *_glib__pspec = (GParamSpec*) ((pspec)); guint _glib__property_id = ((property_id)); g_warning ("%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'", "gimpoperationtilesink.c", 163, ("property"), _glib__property_id, _glib__pspec->name, g_type_name ((((((GTypeClass*) (((GTypeInstance*) (_glib__pspec))->g_class))->g_type)))), (g_type_name ((((((GTypeClass*) (((GTypeInstance*) (_glib__object))->g_class))->g_type)))))); } while (0);
      break;
    }
}

static void
gimp_operation_tile_sink_set_property (GObject *object,
                                       guint property_id,
                                       const GValue *value,
                                       GParamSpec *pspec)
{
  GimpOperationTileSink *self = ((((GimpOperationTileSink*) g_type_check_instance_cast ((GTypeInstance*) ((object)), ((gimp_operation_tile_sink_get_type ()))))));

  switch (property_id)
    {
    case PROP_TILE_MANAGER:
      if (self->tile_manager)
        tile_manager_unref (self->tile_manager);
      self->tile_manager = g_value_dup_boxed (value);
      break;

    case PROP_LINEAR:
      self->linear = g_value_get_boolean (value);
      break;

    default:
      do { GObject *_glib__object = (GObject*) ((object)); GParamSpec *_glib__pspec = (GParamSpec*) ((pspec)); guint _glib__property_id = ((property_id)); g_warning ("%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'", "gimpoperationtilesink.c", 189, ("property"), _glib__property_id, _glib__pspec->name, g_type_name ((((((GTypeClass*) (((GTypeInstance*) (_glib__pspec))->g_class))->g_type)))), (g_type_name ((((((GTypeClass*) (((GTypeInstance*) (_glib__object))->g_class))->g_type)))))); } while (0);
      break;
    }
}


static gboolean
gimp_operation_tile_sink_process (GeglOperation *operation,
                                  GeglBuffer *input,
                                  const GeglRectangle *result,
                                  gint level)
{
  GimpOperationTileSink *self = ((((GimpOperationTileSink*) g_type_check_instance_cast ((GTypeInstance*) ((operation)), ((gimp_operation_tile_sink_get_type ()))))));
  static GStaticMutex mutex = { ((void*)0) };
  const Babl *format;
  PixelRegion destPR;
  gpointer pr;

  if (! self->tile_manager)
    return (0);

  format = gimp_bpp_to_babl_format (tile_manager_bpp (self->tile_manager),
                                    self->linear);

  pixel_region_init (&destPR, self->tile_manager,
                     result->x, result->y,
                     result->width, result->height,
                     (!(0)));

  for (pr = pixel_regions_register (1, &destPR);
       pr;
       pr = pixel_regions_process (pr))
    {
      GeglRectangle rect = { destPR.x, destPR.y, destPR.w, destPR.h };

      gegl_buffer_get (input, &rect, 1.0,
                       format, destPR.data, destPR.rowstride,
                       GEGL_ABYSS_NONE);
    }

  g_mutex_lock (g_static_mutex_get_mutex_impl (&mutex));




  g_signal_emit (operation, tile_sink_signals[DATA_WRITTEN], 0, result);
  g_mutex_unlock (g_static_mutex_get_mutex_impl (&mutex));

  return (!(0));
}
