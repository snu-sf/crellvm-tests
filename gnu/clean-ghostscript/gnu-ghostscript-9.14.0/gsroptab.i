# 1 "./base/gsroptab.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/gsroptab.c" 2
# 18 "./base/gsroptab.c"
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



typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




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
# 62 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
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
# 19 "./base/gsroptab.c" 2
# 1 "./base/gsropt.h" 1
# 79 "./base/gsropt.h"
typedef enum {
    rop2_0 = 0,
    rop2_S = 0xc,

    rop2_D = 0xa,

    rop2_1 = 0xf,


    rop2_default = rop2_S
} gs_rop2_t;
# 98 "./base/gsropt.h"
typedef enum {
    rop3_0 = 0,




    rop3_D = 0xaa,

    rop3_1 = 0xff,
    rop3_default = 0xf0 | 0xcc
} gs_rop3_t;
# 217 "./base/gsropt.h"
typedef uint gs_logical_operation_t;
# 256 "./base/gsropt.h"
typedef unsigned long rop_operand;
typedef rop_operand (*rop_proc)(rop_operand D, rop_operand S, rop_operand T);


typedef enum {
    rop_usage_none = 0,
    rop_usage_D = 1,
    rop_usage_S = 2,
    rop_usage_DS = 3,
    rop_usage_T = 4,
    rop_usage_DT = 5,
    rop_usage_ST = 6,
    rop_usage_DST = 7
} rop_usage_t;


extern const rop_proc rop_proc_table[256];


extern const byte rop_usage_table[256];







typedef struct rop_run_op_s rop_run_op;




typedef union rop_source_s {
    struct {
        const byte *ptr;
        int pos;
    } b;
    rop_operand c;
} rop_source;

struct rop_run_op_s {
    void (*run)(rop_run_op *, byte *dest, int len);
    void (*runswap)(rop_run_op *, byte *dest, int len);
    rop_source s;
    rop_source t;
    int rop;
    byte depth;
    byte flags;
    byte dpos;
    const byte *scolors;
    const byte *tcolors;
    void (*release)(rop_run_op *);
    void *opaque;
};


enum {
    rop_s_constant = 1,
    rop_t_constant = 2,
    rop_s_1bit = 4,
    rop_t_1bit = 8
};
# 328 "./base/gsropt.h"
void rop_get_run_op(rop_run_op *op, int rop, int depth, int flags);
# 338 "./base/gsropt.h"
void rop_set_s_constant(rop_run_op *op, int s);
void rop_set_s_bitmap(rop_run_op *op, const byte *s);
void rop_set_s_bitmap_subbyte(rop_run_op *op, const byte *s, int startbitpos);
void rop_set_s_colors(rop_run_op *op, const byte *scolors);
void rop_set_t_constant(rop_run_op *op, int t);
void rop_set_t_bitmap(rop_run_op *op, const byte *t);
void rop_set_t_bitmap_subbyte(rop_run_op *op, const byte *s, int startbitpos);
void rop_set_t_colors(rop_run_op *op, const byte *scolors);







void rop_run(rop_run_op *op, byte *d, int len);



void rop_run_subbyte(rop_run_op *op, byte *d, int startbitpos, int len);


void rop_release_run_op(rop_run_op *op);
# 20 "./base/gsroptab.c" 2
# 35 "./base/gsroptab.c"
static rop_operand rop0(rop_operand D, rop_operand S, rop_operand T){ return 0; }
static rop_operand rop1(rop_operand D, rop_operand S, rop_operand T){ return ~(D | S | T); }
static rop_operand rop2(rop_operand D, rop_operand S, rop_operand T){ return D & ~(S | T); }
static rop_operand rop3(rop_operand D, rop_operand S, rop_operand T){ return ~(S | T); }
static rop_operand rop4(rop_operand D, rop_operand S, rop_operand T){ return S & ~(D | T); }
static rop_operand rop5(rop_operand D, rop_operand S, rop_operand T){ return ~(D | T); }
static rop_operand rop6(rop_operand D, rop_operand S, rop_operand T){ return ~(T | ~(D ^ S)); }
static rop_operand rop7(rop_operand D, rop_operand S, rop_operand T){ return ~(T | (D & S)); }
static rop_operand rop8(rop_operand D, rop_operand S, rop_operand T){ return S & (D & ~T); }
static rop_operand rop9(rop_operand D, rop_operand S, rop_operand T){ return ~(T | (D ^ S)); }
static rop_operand rop10(rop_operand D, rop_operand S, rop_operand T){ return D & ~T; }
static rop_operand rop11(rop_operand D, rop_operand S, rop_operand T){ return ~(T | (S & ~D)); }
static rop_operand rop12(rop_operand D, rop_operand S, rop_operand T){ return S & ~T; }
static rop_operand rop13(rop_operand D, rop_operand S, rop_operand T){ return ~(T | (D & ~S)); }
static rop_operand rop14(rop_operand D, rop_operand S, rop_operand T){ return ~(T | ~(D | S)); }
static rop_operand rop15(rop_operand D, rop_operand S, rop_operand T){ return ~T; }
static rop_operand rop16(rop_operand D, rop_operand S, rop_operand T){ return T & ~(D | S); }
static rop_operand rop17(rop_operand D, rop_operand S, rop_operand T){ return ~(D | S); }
static rop_operand rop18(rop_operand D, rop_operand S, rop_operand T){ return ~(S | ~(D ^ T)); }
static rop_operand rop19(rop_operand D, rop_operand S, rop_operand T){ return ~(S | (D & T)); }
static rop_operand rop20(rop_operand D, rop_operand S, rop_operand T){ return ~(D | ~(T ^ S)); }
static rop_operand rop21(rop_operand D, rop_operand S, rop_operand T){ return ~(D | (T & S)); }
static rop_operand rop22(rop_operand D, rop_operand S, rop_operand T){ return (T ^ (S ^ (D & ~(T & S)))); }
static rop_operand rop23(rop_operand D, rop_operand S, rop_operand T){ return ~(S ^ ((S ^ T) & (D ^ S))); }
static rop_operand rop24(rop_operand D, rop_operand S, rop_operand T){ return (S ^ T) & (T ^ D); }
static rop_operand rop25(rop_operand D, rop_operand S, rop_operand T){ return ~(S ^ (D & ~(T & S))); }
static rop_operand rop26(rop_operand D, rop_operand S, rop_operand T){ return T ^ (D | (S & T)); }
static rop_operand rop27(rop_operand D, rop_operand S, rop_operand T){ return ~(S ^ (D & (T ^ S))); }
static rop_operand rop28(rop_operand D, rop_operand S, rop_operand T){ return T ^ (S | (D & T)); }
static rop_operand rop29(rop_operand D, rop_operand S, rop_operand T){ return ~(D ^ (S & (T ^ D))); }
static rop_operand rop30(rop_operand D, rop_operand S, rop_operand T){ return T ^ (D | S); }
static rop_operand rop31(rop_operand D, rop_operand S, rop_operand T){ return ~(T & (D | S)); }
static rop_operand rop32(rop_operand D, rop_operand S, rop_operand T){ return D & (T & ~S); }
static rop_operand rop33(rop_operand D, rop_operand S, rop_operand T){ return ~(S | (D ^ T)); }
static rop_operand rop34(rop_operand D, rop_operand S, rop_operand T){ return D & ~S; }
static rop_operand rop35(rop_operand D, rop_operand S, rop_operand T){ return ~(S | (T & ~D)); }
static rop_operand rop36(rop_operand D, rop_operand S, rop_operand T){ return (S ^ T) & (D ^ S); }
static rop_operand rop37(rop_operand D, rop_operand S, rop_operand T){ return ~(T ^ (D & ~(S & T))); }
static rop_operand rop38(rop_operand D, rop_operand S, rop_operand T){ return S ^ (D | (T & S)); }
static rop_operand rop39(rop_operand D, rop_operand S, rop_operand T){ return S ^ (D | ~(T ^ S)); }
static rop_operand rop40(rop_operand D, rop_operand S, rop_operand T){ return D & (T ^ S); }
static rop_operand rop41(rop_operand D, rop_operand S, rop_operand T){ return ~(T ^ (S ^ (D | (T & S)))); }
static rop_operand rop42(rop_operand D, rop_operand S, rop_operand T){ return D & ~(T & S); }
static rop_operand rop43(rop_operand D, rop_operand S, rop_operand T){ return ~(((D^T)&(T^S))^S); }
static rop_operand rop44(rop_operand D, rop_operand S, rop_operand T){ return (S ^ (T & (D | S))); }
static rop_operand rop45(rop_operand D, rop_operand S, rop_operand T){ return T ^ (S | ~D); }
static rop_operand rop46(rop_operand D, rop_operand S, rop_operand T){ return (T ^ (S | (D ^ T))); }
static rop_operand rop47(rop_operand D, rop_operand S, rop_operand T){ return ~(T & (S | ~D)); }
static rop_operand rop48(rop_operand D, rop_operand S, rop_operand T){ return T & ~S; }
static rop_operand rop49(rop_operand D, rop_operand S, rop_operand T){ return ~(S | (D & ~T)); }
static rop_operand rop50(rop_operand D, rop_operand S, rop_operand T){ return S ^ (D | (T | S)); }
static rop_operand rop51(rop_operand D, rop_operand S, rop_operand T){ return ~S; }
static rop_operand rop52(rop_operand D, rop_operand S, rop_operand T){ return S ^ (T | (D & S)); }
static rop_operand rop53(rop_operand D, rop_operand S, rop_operand T){ return S ^ (T | ~(D ^ S)); }
static rop_operand rop54(rop_operand D, rop_operand S, rop_operand T){ return S ^ (D | T); }
static rop_operand rop55(rop_operand D, rop_operand S, rop_operand T){ return ~(S & (D | T)); }
static rop_operand rop56(rop_operand D, rop_operand S, rop_operand T){ return T ^ (S & (D | T)); }
static rop_operand rop57(rop_operand D, rop_operand S, rop_operand T){ return S ^ (T | ~D); }
static rop_operand rop58(rop_operand D, rop_operand S, rop_operand T){ return S ^ (T | (D ^ S)); }
static rop_operand rop59(rop_operand D, rop_operand S, rop_operand T){ return ~(S & (T | ~D)); }
static rop_operand rop60(rop_operand D, rop_operand S, rop_operand T){ return T ^ S; }
static rop_operand rop61(rop_operand D, rop_operand S, rop_operand T){ return S ^ (T | ~(D | S)); }
static rop_operand rop62(rop_operand D, rop_operand S, rop_operand T){ return S ^ (T | (D & ~S)); }
static rop_operand rop63(rop_operand D, rop_operand S, rop_operand T){ return ~(T & S); }
static rop_operand rop64(rop_operand D, rop_operand S, rop_operand T){ return T & (S & ~D); }
static rop_operand rop65(rop_operand D, rop_operand S, rop_operand T){ return ~(D | (T ^ S)); }
static rop_operand rop66(rop_operand D, rop_operand S, rop_operand T){ return (S ^ D) & (T ^ D); }
static rop_operand rop67(rop_operand D, rop_operand S, rop_operand T){ return ~(S ^ (T & ~(D & S))); }
static rop_operand rop68(rop_operand D, rop_operand S, rop_operand T){ return S & ~D; }
static rop_operand rop69(rop_operand D, rop_operand S, rop_operand T){ return ~(D | (T & ~S)); }
static rop_operand rop70(rop_operand D, rop_operand S, rop_operand T){ return D ^ (S | (T & D)); }
static rop_operand rop71(rop_operand D, rop_operand S, rop_operand T){ return ~(T ^ (S & (D ^ T))); }
static rop_operand rop72(rop_operand D, rop_operand S, rop_operand T){ return S & (D ^ T); }
static rop_operand rop73(rop_operand D, rop_operand S, rop_operand T){ return ~(T ^ (D ^ (S | (T & D)))); }
static rop_operand rop74(rop_operand D, rop_operand S, rop_operand T){ return D ^ (T & (S | D)); }
static rop_operand rop75(rop_operand D, rop_operand S, rop_operand T){ return T ^ (D | ~S); }
static rop_operand rop76(rop_operand D, rop_operand S, rop_operand T){ return S & ~(D & T); }
static rop_operand rop77(rop_operand D, rop_operand S, rop_operand T){ return ~(S ^ ((S ^ T) | (D ^ S))); }
static rop_operand rop78(rop_operand D, rop_operand S, rop_operand T){ return T ^ (D | (S ^ T)); }
static rop_operand rop79(rop_operand D, rop_operand S, rop_operand T){ return ~(T & (D | ~S)); }
static rop_operand rop80(rop_operand D, rop_operand S, rop_operand T){ return T & ~D; }
static rop_operand rop81(rop_operand D, rop_operand S, rop_operand T){ return ~(D | (S & ~T)); }
static rop_operand rop82(rop_operand D, rop_operand S, rop_operand T){ return D ^ (T | (S & D)); }
static rop_operand rop83(rop_operand D, rop_operand S, rop_operand T){ return ~(S ^ (T & (D ^ S))); }
static rop_operand rop84(rop_operand D, rop_operand S, rop_operand T){ return ~(D | ~(T | S)); }
static rop_operand rop85(rop_operand D, rop_operand S, rop_operand T){ return ~D; }
static rop_operand rop86(rop_operand D, rop_operand S, rop_operand T){ return D ^ (T | S); }
static rop_operand rop87(rop_operand D, rop_operand S, rop_operand T){ return ~(D & (T | S)); }
static rop_operand rop88(rop_operand D, rop_operand S, rop_operand T){ return T ^ (D & (S | T)); }
static rop_operand rop89(rop_operand D, rop_operand S, rop_operand T){ return D ^ (T | ~S); }
static rop_operand rop90(rop_operand D, rop_operand S, rop_operand T){ return D ^ T; }
static rop_operand rop91(rop_operand D, rop_operand S, rop_operand T){ return D ^ (T | ~(S | D)); }
static rop_operand rop92(rop_operand D, rop_operand S, rop_operand T){ return D ^ (T | (S ^ D)); }
static rop_operand rop93(rop_operand D, rop_operand S, rop_operand T){ return ~(D & (T | ~S)); }
static rop_operand rop94(rop_operand D, rop_operand S, rop_operand T){ return D ^ (T | (S & ~D)); }
static rop_operand rop95(rop_operand D, rop_operand S, rop_operand T){ return ~(D & T); }
static rop_operand rop96(rop_operand D, rop_operand S, rop_operand T){ return T & (D ^ S); }
static rop_operand rop97(rop_operand D, rop_operand S, rop_operand T){ return ~(D ^ (S ^ (T | (D & S)))); }
static rop_operand rop98(rop_operand D, rop_operand S, rop_operand T){ return D ^ (S & (T | D)); }
static rop_operand rop99(rop_operand D, rop_operand S, rop_operand T){ return S ^ (D | ~T); }
static rop_operand rop100(rop_operand D, rop_operand S, rop_operand T){ return S ^ (D & (T | S)); }
static rop_operand rop101(rop_operand D, rop_operand S, rop_operand T){ return D ^ (S | ~T); }
static rop_operand rop102(rop_operand D, rop_operand S, rop_operand T){ return D ^ S; }
static rop_operand rop103(rop_operand D, rop_operand S, rop_operand T){ return S ^ (D | ~(T | S)); }
static rop_operand rop104(rop_operand D, rop_operand S, rop_operand T){ return ~(D ^ (S ^ (T | ~(D | S)))); }
static rop_operand rop105(rop_operand D, rop_operand S, rop_operand T){ return ~(T ^ (D ^ S)); }
static rop_operand rop106(rop_operand D, rop_operand S, rop_operand T){ return D ^ (T & S); }
static rop_operand rop107(rop_operand D, rop_operand S, rop_operand T){ return ~(T ^ (S ^ (D & (T | S)))); }
static rop_operand rop108(rop_operand D, rop_operand S, rop_operand T){ return (D & T) ^ S; }
static rop_operand rop109(rop_operand D, rop_operand S, rop_operand T){ return ~((((T | D) & S) ^ D) ^ T); }
static rop_operand rop110(rop_operand D, rop_operand S, rop_operand T){ return ((~S | T) & D) ^ S; }
static rop_operand rop111(rop_operand D, rop_operand S, rop_operand T){ return ~(~(D ^ S) & T); }
static rop_operand rop112(rop_operand D, rop_operand S, rop_operand T){ return ~(D & S) & T; }
static rop_operand rop113(rop_operand D, rop_operand S, rop_operand T){ return ~(((S ^ D) & (T ^ D)) ^ S); }
static rop_operand rop114(rop_operand D, rop_operand S, rop_operand T){ return ((T ^ S) | D) ^ S; }
static rop_operand rop115(rop_operand D, rop_operand S, rop_operand T){ return ~((~T | D) & S); }
static rop_operand rop116(rop_operand D, rop_operand S, rop_operand T){ return ((T ^ D) | S) ^ D; }
static rop_operand rop117(rop_operand D, rop_operand S, rop_operand T){ return ~((~T | S) & D); }
static rop_operand rop118(rop_operand D, rop_operand S, rop_operand T){ return ((~S & T) | D) ^ S; }
static rop_operand rop119(rop_operand D, rop_operand S, rop_operand T){ return ~(D & S); }
static rop_operand rop120(rop_operand D, rop_operand S, rop_operand T){ return (D & S) ^ T; }
static rop_operand rop121(rop_operand D, rop_operand S, rop_operand T){ return ~((((D | S) & T) ^ S) ^ D); }
static rop_operand rop122(rop_operand D, rop_operand S, rop_operand T){ return ((~D | S) & T) ^ D; }
static rop_operand rop123(rop_operand D, rop_operand S, rop_operand T){ return ~(~(D ^ T) & S); }
static rop_operand rop124(rop_operand D, rop_operand S, rop_operand T){ return ((~S | D) & T) ^ S; }
static rop_operand rop125(rop_operand D, rop_operand S, rop_operand T){ return ~(~(T ^ S) & D); }
static rop_operand rop126(rop_operand D, rop_operand S, rop_operand T){ return (S ^ T) | (D ^ S); }
static rop_operand rop127(rop_operand D, rop_operand S, rop_operand T){ return ~((T & S) & D); }
static rop_operand rop128(rop_operand D, rop_operand S, rop_operand T){ return (T & S) & D; }
static rop_operand rop129(rop_operand D, rop_operand S, rop_operand T){ return ~((S ^ T) | (D ^ S)); }
static rop_operand rop130(rop_operand D, rop_operand S, rop_operand T){ return ~(T ^ S) & D; }
static rop_operand rop131(rop_operand D, rop_operand S, rop_operand T){ return ~(((~S | D) & T) ^ S); }
static rop_operand rop132(rop_operand D, rop_operand S, rop_operand T){ return ~(D ^ T) & S; }
static rop_operand rop133(rop_operand D, rop_operand S, rop_operand T){ return ~(((~T | S) & D) ^ T); }
static rop_operand rop134(rop_operand D, rop_operand S, rop_operand T){ return (((D | S) & T) ^ S) ^ D; }
static rop_operand rop135(rop_operand D, rop_operand S, rop_operand T){ return ~((D & S) ^ T); }
static rop_operand rop136(rop_operand D, rop_operand S, rop_operand T){ return D & S; }
static rop_operand rop137(rop_operand D, rop_operand S, rop_operand T){ return ~(((~S & T) | D) ^ S); }
static rop_operand rop138(rop_operand D, rop_operand S, rop_operand T){ return (~T | S) & D; }
static rop_operand rop139(rop_operand D, rop_operand S, rop_operand T){ return ~(((T ^ D) | S) ^ D); }
static rop_operand rop140(rop_operand D, rop_operand S, rop_operand T){ return (~T | D) & S; }
static rop_operand rop141(rop_operand D, rop_operand S, rop_operand T){ return ~(((T ^ S) | D) ^ S); }
static rop_operand rop142(rop_operand D, rop_operand S, rop_operand T){ return ((S ^ D) & (T ^ D)) ^ S; }
static rop_operand rop143(rop_operand D, rop_operand S, rop_operand T){ return ~(~(D & S) & T); }
static rop_operand rop144(rop_operand D, rop_operand S, rop_operand T){ return ~(D ^ S) & T; }
static rop_operand rop145(rop_operand D, rop_operand S, rop_operand T){ return ~(((~S | T) & D) ^ S); }
static rop_operand rop146(rop_operand D, rop_operand S, rop_operand T){ return (((D | T) & S) ^ T) ^ D; }
static rop_operand rop147(rop_operand D, rop_operand S, rop_operand T){ return ~((T & D) ^ S); }
static rop_operand rop148(rop_operand D, rop_operand S, rop_operand T){ return (((T | S) & D) ^ S) ^ T; }
static rop_operand rop149(rop_operand D, rop_operand S, rop_operand T){ return ~((T & S) ^ D); }
static rop_operand rop150(rop_operand D, rop_operand S, rop_operand T){ return (T ^ S) ^ D; }
static rop_operand rop151(rop_operand D, rop_operand S, rop_operand T){ return ((~(T | S) | D) ^ S) ^ T; }
static rop_operand rop152(rop_operand D, rop_operand S, rop_operand T){ return ~((~(T | S) | D) ^ S); }
static rop_operand rop153(rop_operand D, rop_operand S, rop_operand T){ return ~(D ^ S); }
static rop_operand rop154(rop_operand D, rop_operand S, rop_operand T){ return (~S & T) ^ D; }
static rop_operand rop155(rop_operand D, rop_operand S, rop_operand T){ return ~(((T | S) & D) ^ S); }
static rop_operand rop156(rop_operand D, rop_operand S, rop_operand T){ return (~D & T) ^ S; }
static rop_operand rop157(rop_operand D, rop_operand S, rop_operand T){ return ~(((T | D) & S) ^ D); }
static rop_operand rop158(rop_operand D, rop_operand S, rop_operand T){ return (((D & S) | T) ^ S) ^ D; }
static rop_operand rop159(rop_operand D, rop_operand S, rop_operand T){ return ~((D ^ S) & T); }
static rop_operand rop160(rop_operand D, rop_operand S, rop_operand T){ return D & T; }
static rop_operand rop161(rop_operand D, rop_operand S, rop_operand T){ return ~(((~T & S) | D) ^ T); }
static rop_operand rop162(rop_operand D, rop_operand S, rop_operand T){ return (~S | T) & D; }
static rop_operand rop163(rop_operand D, rop_operand S, rop_operand T){ return ~(((D ^ S) | T) ^ D); }
static rop_operand rop164(rop_operand D, rop_operand S, rop_operand T){ return ~((~(T | S) | D) ^ T); }
static rop_operand rop165(rop_operand D, rop_operand S, rop_operand T){ return ~(D ^ T); }
static rop_operand rop166(rop_operand D, rop_operand S, rop_operand T){ return (~T & S) ^ D; }
static rop_operand rop167(rop_operand D, rop_operand S, rop_operand T){ return ~(((T | S) & D) ^ T); }
static rop_operand rop168(rop_operand D, rop_operand S, rop_operand T){ return ((S | T) & D); }
static rop_operand rop169(rop_operand D, rop_operand S, rop_operand T){ return ~((S | T) ^ D); }
static rop_operand rop170(rop_operand D, rop_operand S, rop_operand T){ return D; }
static rop_operand rop171(rop_operand D, rop_operand S, rop_operand T){ return ~(S | T) | D; }
static rop_operand rop172(rop_operand D, rop_operand S, rop_operand T){ return (((S ^ D) & T) ^ S); }
static rop_operand rop173(rop_operand D, rop_operand S, rop_operand T){ return ~(((D & S) | T) ^ D); }
static rop_operand rop174(rop_operand D, rop_operand S, rop_operand T){ return (~T & S) | D; }
static rop_operand rop175(rop_operand D, rop_operand S, rop_operand T){ return ~T | D; }
static rop_operand rop176(rop_operand D, rop_operand S, rop_operand T){ return (~S | D) & T; }
static rop_operand rop177(rop_operand D, rop_operand S, rop_operand T){ return ~(((T ^ S) | D) ^ T); }
static rop_operand rop178(rop_operand D, rop_operand S, rop_operand T){ return ((S ^ D) | (S ^ T)) ^ S; }
static rop_operand rop179(rop_operand D, rop_operand S, rop_operand T){ return ~(~(T & D) & S); }
static rop_operand rop180(rop_operand D, rop_operand S, rop_operand T){ return (~D & S) ^ T; }
static rop_operand rop181(rop_operand D, rop_operand S, rop_operand T){ return ~(((D | S) & T) ^ D); }
static rop_operand rop182(rop_operand D, rop_operand S, rop_operand T){ return (((T & D) | S) ^ T) ^ D; }
static rop_operand rop183(rop_operand D, rop_operand S, rop_operand T){ return ~((T ^ D) & S); }
static rop_operand rop184(rop_operand D, rop_operand S, rop_operand T){ return ((T ^ D) & S) ^ T; }
static rop_operand rop185(rop_operand D, rop_operand S, rop_operand T){ return (~((D & T) | S) ^ D); }
static rop_operand rop186(rop_operand D, rop_operand S, rop_operand T){ return (~S & T) | D; }
static rop_operand rop187(rop_operand D, rop_operand S, rop_operand T){ return ~S | D; }
static rop_operand rop188(rop_operand D, rop_operand S, rop_operand T){ return (~(S & D) & T) ^ S; }
static rop_operand rop189(rop_operand D, rop_operand S, rop_operand T){ return ~((D ^ T) & (D ^ S)); }
static rop_operand rop190(rop_operand D, rop_operand S, rop_operand T){ return (S ^ T) | D; }
static rop_operand rop191(rop_operand D, rop_operand S, rop_operand T){ return ~(S & T) | D; }
static rop_operand rop192(rop_operand D, rop_operand S, rop_operand T){ return T & S; }
static rop_operand rop193(rop_operand D, rop_operand S, rop_operand T){ return ~(((~S & D) | T) ^ S); }
static rop_operand rop194(rop_operand D, rop_operand S, rop_operand T){ return ~((~(S|D)|T)^S); }
static rop_operand rop195(rop_operand D, rop_operand S, rop_operand T){ return ~(S ^ T); }
static rop_operand rop196(rop_operand D, rop_operand S, rop_operand T){ return ((~D | T) & S); }
static rop_operand rop197(rop_operand D, rop_operand S, rop_operand T){ return ~(((S ^ D) | T) ^ S); }
static rop_operand rop198(rop_operand D, rop_operand S, rop_operand T){ return ((~T & D) ^ S); }
static rop_operand rop199(rop_operand D, rop_operand S, rop_operand T){ return ~(((T | D) & S) ^ T); }
static rop_operand rop200(rop_operand D, rop_operand S, rop_operand T){ return ((T | D) & S); }
static rop_operand rop201(rop_operand D, rop_operand S, rop_operand T){ return ~((D | T) ^ S); }
static rop_operand rop202(rop_operand D, rop_operand S, rop_operand T){ return ((D ^ S) & T) ^ D; }
static rop_operand rop203(rop_operand D, rop_operand S, rop_operand T){ return ~(((S & D) | T) ^ S); }
static rop_operand rop204(rop_operand D, rop_operand S, rop_operand T){ return S; }
static rop_operand rop205(rop_operand D, rop_operand S, rop_operand T){ return ~(T | D) | S; }
static rop_operand rop206(rop_operand D, rop_operand S, rop_operand T){ return (~T & D) | S; }
static rop_operand rop207(rop_operand D, rop_operand S, rop_operand T){ return ~T | S; }
static rop_operand rop208(rop_operand D, rop_operand S, rop_operand T){ return (~D | S) & T; }
static rop_operand rop209(rop_operand D, rop_operand S, rop_operand T){ return ~(((T ^ D) | S) ^ T); }
static rop_operand rop210(rop_operand D, rop_operand S, rop_operand T){ return (~S & D) ^ T; }
static rop_operand rop211(rop_operand D, rop_operand S, rop_operand T){ return ~(((S | D) & T) ^ S); }
static rop_operand rop212(rop_operand D, rop_operand S, rop_operand T){ return (((D^T)&(T^S))^S); }
static rop_operand rop213(rop_operand D, rop_operand S, rop_operand T){ return ~(~(S & T) & D); }
static rop_operand rop214(rop_operand D, rop_operand S, rop_operand T){ return ((((S & T) | D) ^ S) ^ T); }
static rop_operand rop215(rop_operand D, rop_operand S, rop_operand T){ return ~((S ^ T) & D); }
static rop_operand rop216(rop_operand D, rop_operand S, rop_operand T){ return ((T ^ S) & D) ^ T; }
static rop_operand rop217(rop_operand D, rop_operand S, rop_operand T){ return ~(((S & T) | D) ^ S); }
static rop_operand rop218(rop_operand D, rop_operand S, rop_operand T){ return ((~(D&S)&T)^D); }
static rop_operand rop219(rop_operand D, rop_operand S, rop_operand T){ return ~((S^D)&(T^S)); }
static rop_operand rop220(rop_operand D, rop_operand S, rop_operand T){ return (~D & T) | S; }
static rop_operand rop221(rop_operand D, rop_operand S, rop_operand T){ return ~D | S; }
static rop_operand rop222(rop_operand D, rop_operand S, rop_operand T){ return (T ^ D) | S; }
static rop_operand rop223(rop_operand D, rop_operand S, rop_operand T){ return (~(T & D)) | S; }
static rop_operand rop224(rop_operand D, rop_operand S, rop_operand T){ return ((S | D) & T); }
static rop_operand rop225(rop_operand D, rop_operand S, rop_operand T){ return ~((S | D) ^ T); }
static rop_operand rop226(rop_operand D, rop_operand S, rop_operand T){ return (((D ^ T) & S) ^ D); }
static rop_operand rop227(rop_operand D, rop_operand S, rop_operand T){ return ~(((T & D) | S) ^ T); }
static rop_operand rop228(rop_operand D, rop_operand S, rop_operand T){ return ((S ^ T) & D) ^ S; }
static rop_operand rop229(rop_operand D, rop_operand S, rop_operand T){ return ~(((T & S) | D) ^ T); }
static rop_operand rop230(rop_operand D, rop_operand S, rop_operand T){ return (~(S & T) & D) ^ S; }
static rop_operand rop231(rop_operand D, rop_operand S, rop_operand T){ return ~((D^T)&(T^S)); }
static rop_operand rop232(rop_operand D, rop_operand S, rop_operand T){ return (((S^D)&(T^S))^S); }
static rop_operand rop233(rop_operand D, rop_operand S, rop_operand T){ return ~(((~(S&D)&T)^S)^D); }
static rop_operand rop234(rop_operand D, rop_operand S, rop_operand T){ return (S & T) | D; }
static rop_operand rop235(rop_operand D, rop_operand S, rop_operand T){ return ~(S ^ T) | D; }
static rop_operand rop236(rop_operand D, rop_operand S, rop_operand T){ return (T & D) | S; }
static rop_operand rop237(rop_operand D, rop_operand S, rop_operand T){ return ~(T ^ D) | S; }
static rop_operand rop238(rop_operand D, rop_operand S, rop_operand T){ return S | D; }
static rop_operand rop239(rop_operand D, rop_operand S, rop_operand T){ return (~T | D) | S; }
static rop_operand rop240(rop_operand D, rop_operand S, rop_operand T){ return T; }
static rop_operand rop241(rop_operand D, rop_operand S, rop_operand T){ return ~(S | D) | T; }
static rop_operand rop242(rop_operand D, rop_operand S, rop_operand T){ return (~S & D) | T; }
static rop_operand rop243(rop_operand D, rop_operand S, rop_operand T){ return ~S | T; }
static rop_operand rop244(rop_operand D, rop_operand S, rop_operand T){ return (~D & S) | T; }
static rop_operand rop245(rop_operand D, rop_operand S, rop_operand T){ return ~D | T; }
static rop_operand rop246(rop_operand D, rop_operand S, rop_operand T){ return (S ^ D) | T; }
static rop_operand rop247(rop_operand D, rop_operand S, rop_operand T){ return ~(S & D) | T; }
static rop_operand rop248(rop_operand D, rop_operand S, rop_operand T){ return (S & D) | T; }
static rop_operand rop249(rop_operand D, rop_operand S, rop_operand T){ return ~(S ^ D) | T; }
static rop_operand rop250(rop_operand D, rop_operand S, rop_operand T){ return D | T; }
static rop_operand rop251(rop_operand D, rop_operand S, rop_operand T){ return (~S | T) | D; }
static rop_operand rop252(rop_operand D, rop_operand S, rop_operand T){ return S | T; }
static rop_operand rop253(rop_operand D, rop_operand S, rop_operand T){ return (~D | S) | T; }
static rop_operand rop254(rop_operand D, rop_operand S, rop_operand T){ return S | T | D; }
static rop_operand rop255(rop_operand D, rop_operand S, rop_operand T){ return ~(rop_operand) 0; }


     const rop_proc rop_proc_table[256] = {
         rop0, rop1, rop2, rop3, rop4, rop5, rop6, rop7,
         rop8, rop9, rop10, rop11, rop12, rop13, rop14, rop15,
         rop16, rop17, rop18, rop19, rop20, rop21, rop22, rop23,
         rop24, rop25, rop26, rop27, rop28, rop29, rop30, rop31,
         rop32, rop33, rop34, rop35, rop36, rop37, rop38, rop39,
         rop40, rop41, rop42, rop43, rop44, rop45, rop46, rop47,
         rop48, rop49, rop50, rop51, rop52, rop53, rop54, rop55,
         rop56, rop57, rop58, rop59, rop60, rop61, rop62, rop63,
         rop64, rop65, rop66, rop67, rop68, rop69, rop70, rop71,
         rop72, rop73, rop74, rop75, rop76, rop77, rop78, rop79,
         rop80, rop81, rop82, rop83, rop84, rop85, rop86, rop87,
         rop88, rop89, rop90, rop91, rop92, rop93, rop94, rop95,
         rop96, rop97, rop98, rop99, rop100, rop101, rop102, rop103,
         rop104, rop105, rop106, rop107, rop108, rop109, rop110, rop111,
         rop112, rop113, rop114, rop115, rop116, rop117, rop118, rop119,
         rop120, rop121, rop122, rop123, rop124, rop125, rop126, rop127,
         rop128, rop129, rop130, rop131, rop132, rop133, rop134, rop135,
         rop136, rop137, rop138, rop139, rop140, rop141, rop142, rop143,
         rop144, rop145, rop146, rop147, rop148, rop149, rop150, rop151,
         rop152, rop153, rop154, rop155, rop156, rop157, rop158, rop159,
         rop160, rop161, rop162, rop163, rop164, rop165, rop166, rop167,
         rop168, rop169, rop170, rop171, rop172, rop173, rop174, rop175,
         rop176, rop177, rop178, rop179, rop180, rop181, rop182, rop183,
         rop184, rop185, rop186, rop187, rop188, rop189, rop190, rop191,
         rop192, rop193, rop194, rop195, rop196, rop197, rop198, rop199,
         rop200, rop201, rop202, rop203, rop204, rop205, rop206, rop207,
         rop208, rop209, rop210, rop211, rop212, rop213, rop214, rop215,
         rop216, rop217, rop218, rop219, rop220, rop221, rop222, rop223,
         rop224, rop225, rop226, rop227, rop228, rop229, rop230, rop231,
         rop232, rop233, rop234, rop235, rop236, rop237, rop238, rop239,
         rop240, rop241, rop242, rop243, rop244, rop245, rop246, rop247,
         rop248, rop249, rop250, rop251, rop252, rop253, rop254, rop255
     };
# 344 "./base/gsroptab.c"
     const byte rop_usage_table[256] =
     {
         0, 7, 7, 6, 7, 5, 7, 7, 7, 7, 5, 7, 6, 7, 7, 4,
         7, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
         7, 7, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
         6, 7, 7, 2, 7, 7, 7, 7, 7, 7, 7, 7, 6, 7, 7, 6,
         7, 7, 7, 7, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
         5, 7, 7, 7, 7, 1, 7, 7, 7, 7, 5, 7, 7, 7, 7, 5,
         7, 7, 7, 7, 7, 7, 3, 7, 7, 7, 7, 7, 7, 7, 7, 7,
         7, 7, 7, 7, 7, 7, 7, 3, 7, 7, 7, 7, 7, 7, 7, 7,
         7, 7, 7, 7, 7, 7, 7, 7, 3, 7, 7, 7, 7, 7, 7, 7,
         7, 7, 7, 7, 7, 7, 7, 7, 7, 3, 7, 7, 7, 7, 7, 7,
         5, 7, 7, 7, 7, 5, 7, 7, 7, 7, 1, 7, 7, 7, 7, 5,
         7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 3, 7, 7, 7, 7,
         6, 7, 7, 6, 7, 7, 7, 7, 7, 7, 7, 7, 2, 7, 7, 6,
         7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 3, 7, 7,
         7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 3, 7,
         4, 7, 7, 6, 7, 5, 7, 7, 7, 7, 5, 7, 6, 7, 7, 0
     };
