# 1 "./base/gsicc_create.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 316 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "./base/gsicc_create.c" 2
# 119 "./base/gsicc_create.c"
# 1 "./base/icc34.h" 1
# 211 "./base/icc34.h"
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
# 212 "./base/icc34.h" 2
# 228 "./base/icc34.h"
typedef u_int8_t icUInt8Number;
typedef u_int16_t icUInt16Number;
typedef u_int32_t icUInt32Number;
typedef u_int32_t icUInt64Number[2];





typedef int8_t icInt8Number;
typedef int16_t icInt16Number;
typedef int32_t icInt32Number;
typedef int32_t icInt64Number[2];
# 269 "./base/icc34.h"
typedef icInt32Number icSignature;
typedef icInt32Number icS15Fixed16Number;
typedef icUInt32Number icU16Fixed16Number;




typedef enum {
    icSigAToB0Tag = 0x41324230L,
    icSigAToB1Tag = 0x41324231L,
    icSigAToB2Tag = 0x41324232L,
    icSigBlueColorantTag = 0x6258595AL,
    icSigBlueTRCTag = 0x62545243L,
    icSigBToA0Tag = 0x42324130L,
    icSigBToA1Tag = 0x42324131L,
    icSigBToA2Tag = 0x42324132L,
    icSigCalibrationDateTimeTag = 0x63616C74L,
    icSigCharTargetTag = 0x74617267L,
    icSigCopyrightTag = 0x63707274L,
    icSigCrdInfoTag = 0x63726469L,
    icSigDeviceMfgDescTag = 0x646D6E64L,
    icSigDeviceModelDescTag = 0x646D6464L,
    icSigGamutTag = 0x67616D74L,
    icSigGrayTRCTag = 0x6b545243L,
    icSigGreenColorantTag = 0x6758595AL,
    icSigGreenTRCTag = 0x67545243L,
    icSigLuminanceTag = 0x6C756d69L,
    icSigMeasurementTag = 0x6D656173L,
    icSigMediaBlackPointTag = 0x626B7074L,
    icSigMediaWhitePointTag = 0x77747074L,
    icSigNamedColorTag = 0x6E636f6CL,

    icSigNamedColor2Tag = 0x6E636C32L,
    icSigPreview0Tag = 0x70726530L,
    icSigPreview1Tag = 0x70726531L,
    icSigPreview2Tag = 0x70726532L,
    icSigProfileDescriptionTag = 0x64657363L,
    icSigProfileSequenceDescTag = 0x70736571L,
    icSigPs2CRD0Tag = 0x70736430L,
    icSigPs2CRD1Tag = 0x70736431L,
    icSigPs2CRD2Tag = 0x70736432L,
    icSigPs2CRD3Tag = 0x70736433L,
    icSigPs2CSATag = 0x70733273L,
    icSigPs2RenderingIntentTag = 0x70733269L,
    icSigRedColorantTag = 0x7258595AL,
    icSigRedTRCTag = 0x72545243L,
    icSigScreeningDescTag = 0x73637264L,
    icSigScreeningTag = 0x7363726EL,
    icSigTechnologyTag = 0x74656368L,
    icSigUcrBgTag = 0x62666420L,
    icSigViewingCondDescTag = 0x76756564L,
    icSigViewingConditionsTag = 0x76696577L,
    icMaxEnumTag = 0xFFFFFFFFL
} icTagSignature;


typedef enum {
    icSigDigitalCamera = 0x6463616DL,
    icSigFilmScanner = 0x6673636EL,
    icSigReflectiveScanner = 0x7273636EL,
    icSigInkJetPrinter = 0x696A6574L,
    icSigThermalWaxPrinter = 0x74776178L,
    icSigElectrophotographicPrinter = 0x6570686FL,
    icSigElectrostaticPrinter = 0x65737461L,
    icSigDyeSublimationPrinter = 0x64737562L,
    icSigPhotographicPaperPrinter = 0x7270686FL,
    icSigFilmWriter = 0x6670726EL,
    icSigVideoMonitor = 0x7669646DL,
    icSigVideoCamera = 0x76696463L,
    icSigProjectionTelevision = 0x706A7476L,
    icSigCRTDisplay = 0x43525420L,
    icSigPMDisplay = 0x504D4420L,
    icSigAMDisplay = 0x414D4420L,
    icSigPhotoCD = 0x4B504344L,
    icSigPhotoImageSetter = 0x696D6773L,
    icSigGravure = 0x67726176L,
    icSigOffsetLithography = 0x6F666673L,
    icSigSilkscreen = 0x73696C6BL,
    icSigFlexography = 0x666C6578L,
    icMaxEnumTechnology = 0xFFFFFFFFL
} icTechnologySignature;


typedef enum {
    icSigCurveType = 0x63757276L,
    icSigDataType = 0x64617461L,
    icSigDateTimeType = 0x6474696DL,
    icSigLut16Type = 0x6d667432L,
    icSigLut8Type = 0x6d667431L,
    icSigMeasurementType = 0x6D656173L,
    icSigNamedColorType = 0x6E636f6CL,

    icSigProfileSequenceDescType = 0x70736571L,
    icSigS15Fixed16ArrayType = 0x73663332L,
    icSigScreeningType = 0x7363726EL,
    icSigSignatureType = 0x73696720L,
    icSigTextType = 0x74657874L,
    icSigTextDescriptionType = 0x64657363L,
    icSigU16Fixed16ArrayType = 0x75663332L,
    icSigUcrBgType = 0x62666420L,
    icSigUInt16ArrayType = 0x75693136L,
    icSigUInt32ArrayType = 0x75693332L,
    icSigUInt64ArrayType = 0x75693634L,
    icSigUInt8ArrayType = 0x75693038L,
    icSigViewingConditionsType = 0x76696577L,
    icSigXYZType = 0x58595A20L,
    icSigXYZArrayType = 0x58595A20L,
    icSigNamedColor2Type = 0x6E636C32L,
    icSigCrdInfoType = 0x63726469L,
    icMaxEnumType = 0xFFFFFFFFL
} icTagTypeSignature;






typedef enum {
    icSigXYZData = 0x58595A20L,
    icSigLabData = 0x4C616220L,
    icSigLuvData = 0x4C757620L,
    icSigYCbCrData = 0x59436272L,
    icSigYxyData = 0x59787920L,
    icSigRgbData = 0x52474220L,
    icSigGrayData = 0x47524159L,
    icSigHsvData = 0x48535620L,
    icSigHlsData = 0x484C5320L,
    icSigCmykData = 0x434D594BL,
    icSigCmyData = 0x434D5920L,
    icSig2colorData = 0x32434C52L,
    icSig3colorData = 0x33434C52L,
    icSig4colorData = 0x34434C52L,
    icSig5colorData = 0x35434C52L,
    icSig6colorData = 0x36434C52L,
    icSig7colorData = 0x37434C52L,
    icSig8colorData = 0x38434C52L,
    icSig9colorData = 0x39434C52L,
    icSig10colorData = 0x41434C52L,
    icSig11colorData = 0x42434C52L,
    icSig12colorData = 0x43434C52L,
    icSig13colorData = 0x44434C52L,
    icSig14colorData = 0x45434C52L,
    icSig15colorData = 0x46434C52L,
    icMaxEnumData = 0xFFFFFFFFL
} icColorSpaceSignature;


typedef enum {
    icSigInputClass = 0x73636E72L,
    icSigDisplayClass = 0x6D6E7472L,
    icSigOutputClass = 0x70727472L,
    icSigLinkClass = 0x6C696E6BL,
    icSigAbstractClass = 0x61627374L,
    icSigColorSpaceClass = 0x73706163L,
    icSigNamedColorClass = 0x6e6d636cL,
    icMaxEnumClass = 0xFFFFFFFFL
} icProfileClassSignature;


typedef enum {
    icSigMacintosh = 0x4150504CL,
    icSigMicrosoft = 0x4D534654L,
    icSigSolaris = 0x53554E57L,
    icSigSGI = 0x53474920L,
    icSigTaligent = 0x54474E54L,
    icMaxEnumPlatform = 0xFFFFFFFFL
} icPlatformSignature;







typedef enum {
    icFlare0 = 0x00000000L,
    icFlare100 = 0x00000001L,
    icMaxFlare = 0xFFFFFFFFL
} icMeasurementFlare;


typedef enum {
    icGeometryUnknown = 0x00000000L,
    icGeometry045or450 = 0x00000001L,
    icGeometry0dord0 = 0x00000002L,
    icMaxGeometry = 0xFFFFFFFFL
} icMeasurementGeometry;


typedef enum {
    icPerceptual = 0,
    icRelativeColorimetric = 1,
    icSaturation = 2,
    icAbsoluteColorimetric = 3,
    icMaxEnumIntent = 0xFFFFFFFFL
} icRenderingIntent;


typedef enum {
    icSpotShapeUnknown = 0,
    icSpotShapePrinterDefault = 1,
    icSpotShapeRound = 2,
    icSpotShapeDiamond = 3,
    icSpotShapeEllipse = 4,
    icSpotShapeLine = 5,
    icSpotShapeSquare = 6,
    icSpotShapeCross = 7,
    icMaxEnumSpot = 0xFFFFFFFFL
} icSpotShape;


typedef enum {
    icStdObsUnknown = 0x00000000L,
    icStdObs1931TwoDegrees = 0x00000001L,
    icStdObs1964TenDegrees = 0x00000002L,
    icMaxStdObs = 0xFFFFFFFFL
} icStandardObserver;


typedef enum {
    icIlluminantUnknown = 0x00000000L,
    icIlluminantD50 = 0x00000001L,
    icIlluminantD65 = 0x00000002L,
    icIlluminantD93 = 0x00000003L,
    icIlluminantF2 = 0x00000004L,
    icIlluminantD55 = 0x00000005L,
    icIlluminantA = 0x00000006L,
    icIlluminantEquiPowerE = 0x00000007L,
    icIlluminantF8 = 0x00000008L,
    icMaxEnumIluminant = 0xFFFFFFFFL
} icIlluminant;
# 508 "./base/icc34.h"
typedef struct {
    icInt8Number data[1];
} icInt8Array;


typedef struct {
    icUInt8Number data[1];
} icUInt8Array;


typedef struct {
    icUInt16Number data[1];
} icUInt16Array;


typedef struct {
    icInt16Number data[1];
} icInt16Array;


typedef struct {
    icUInt32Number data[1];
} icUInt32Array;


typedef struct {
    icInt32Number data[1];
} icInt32Array;


typedef struct {
    icUInt64Number data[1];
} icUInt64Array;


typedef struct {
    icInt64Number data[1];
} icInt64Array;


typedef struct {
    icU16Fixed16Number data[1];
} icU16Fixed16Array;


typedef struct {
    icS15Fixed16Number data[1];
} icS15Fixed16Array;


typedef struct {
    icUInt16Number year;
    icUInt16Number month;
    icUInt16Number day;
    icUInt16Number hours;
    icUInt16Number minutes;
    icUInt16Number seconds;
} icDateTimeNumber;


typedef struct {
    icS15Fixed16Number X;
    icS15Fixed16Number Y;
    icS15Fixed16Number Z;
} icXYZNumber;


typedef struct {
    icXYZNumber data[1];
} icXYZArray;


typedef struct {
    icUInt32Number count;
    icUInt16Number data[1];




} icCurve;


typedef struct {
    icUInt32Number dataFlag;
    icInt8Number data[1];
} icData;


typedef struct {
    icUInt8Number inputChan;
    icUInt8Number outputChan;
    icUInt8Number clutPoints;
    icInt8Number pad;
    icS15Fixed16Number e00;
    icS15Fixed16Number e01;
    icS15Fixed16Number e02;
    icS15Fixed16Number e10;
    icS15Fixed16Number e11;
    icS15Fixed16Number e12;
    icS15Fixed16Number e20;
    icS15Fixed16Number e21;
    icS15Fixed16Number e22;
    icUInt16Number inputEnt;
    icUInt16Number outputEnt;
    icUInt16Number data[1];







} icLut16;


typedef struct {
    icUInt8Number inputChan;
    icUInt8Number outputChan;
    icUInt8Number clutPoints;
    icInt8Number pad;
    icS15Fixed16Number e00;
    icS15Fixed16Number e01;
    icS15Fixed16Number e02;
    icS15Fixed16Number e10;
    icS15Fixed16Number e11;
    icS15Fixed16Number e12;
    icS15Fixed16Number e20;
    icS15Fixed16Number e21;
    icS15Fixed16Number e22;
    icUInt8Number data[1];







} icLut8;


typedef struct {
    icStandardObserver stdObserver;
    icXYZNumber backing;
    icMeasurementGeometry geometry;
    icMeasurementFlare flare;
    icIlluminant illuminant;
} icMeasurement;






typedef struct {
    icUInt32Number vendorFlag;
    icUInt32Number count;
    icUInt32Number nDeviceCoords;
    icInt8Number prefix[32];
    icInt8Number suffix[32];
    icInt8Number data[1];
# 692 "./base/icc34.h"
} icNamedColor2;


typedef struct {
    icSignature deviceMfg;
    icSignature deviceModel;
    icUInt64Number attributes;
    icTechnologySignature technology;
    icInt8Number data[1];
# 709 "./base/icc34.h"
} icDescStruct;


typedef struct {
    icUInt32Number count;
    icUInt8Number data[1];
} icProfileSequenceDesc;


typedef struct {
    icUInt32Number count;
    icInt8Number data[1];
# 732 "./base/icc34.h"
} icTextDescription;


typedef struct {
    icS15Fixed16Number frequency;
    icS15Fixed16Number angle;
    icSpotShape spotShape;
} icScreeningData;

typedef struct {
    icUInt32Number screeningFlag;
    icUInt32Number channels;
    icScreeningData data[1];
} icScreening;


typedef struct {
    icInt8Number data[1];
} icText;


typedef struct {
    icUInt32Number count;
    icUInt16Number curve[1];
} icUcrBgCurve;


typedef struct {
    icInt8Number data[1];
# 770 "./base/icc34.h"
} icUcrBg;


typedef struct {
    icXYZNumber illuminant;
    icXYZNumber surround;
    icIlluminant stdIluminant;
} icViewingCondition;


typedef struct {
    icUInt32Number count;
    icInt8Number desc[1];
} icCrdInfo;
# 798 "./base/icc34.h"
typedef struct {
    icTagTypeSignature sig;
    icInt8Number reserved[4];
} icTagBase;


typedef struct {
    icTagBase base;
    icCurve curve;
} icCurveType;


typedef struct {
    icTagBase base;
    icData data;
} icDataType;


typedef struct {
    icTagBase base;
    icDateTimeNumber date;
} icDateTimeType;


typedef struct {
    icTagBase base;
    icLut16 lut;
} icLut16Type;


typedef struct {
    icTagBase base;
    icLut8 lut;
} icLut8Type;


typedef struct {
    icTagBase base;
    icMeasurement measurement;
} icMeasurementType;



typedef struct {
    icTagBase base;
    icNamedColor2 ncolor;
} icNamedColor2Type;


typedef struct {
    icTagBase base;
    icProfileSequenceDesc desc;
} icProfileSequenceDescType;


typedef struct {
    icTagBase base;
    icTextDescription desc;
} icTextDescriptionType;


typedef struct {
    icTagBase base;
    icS15Fixed16Array data;
} icS15Fixed16ArrayType;

typedef struct {
    icTagBase base;
    icScreening screen;
} icScreeningType;


typedef struct {
    icTagBase base;
    icSignature signature;
} icSignatureType;


typedef struct {
    icTagBase base;
    icText data;
} icTextType;


typedef struct {
    icTagBase base;
    icU16Fixed16Array data;
} icU16Fixed16ArrayType;


typedef struct {
    icTagBase base;
    icUcrBg data;
} icUcrBgType;


typedef struct {
    icTagBase base;
    icUInt16Array data;
} icUInt16ArrayType;


typedef struct {
    icTagBase base;
    icUInt32Array data;
} icUInt32ArrayType;


typedef struct {
    icTagBase base;
    icUInt64Array data;
} icUInt64ArrayType;


typedef struct {
    icTagBase base;
    icUInt8Array data;
} icUInt8ArrayType;


typedef struct {
    icTagBase base;
    icViewingCondition view;
} icViewingConditionType;


typedef struct {
    icTagBase base;
    icXYZArray data;
} icXYZType;




typedef struct {
    icTagBase base;
    icCrdInfo info;
}icCrdInfoType;
# 949 "./base/icc34.h"
typedef struct {
    icTagSignature sig;
    icUInt32Number offset;


    icUInt32Number size;
} icTag;


typedef struct {
    icUInt32Number count;
    icTag tags[1];
} icTagList;


typedef struct {
    icUInt32Number size;
    icSignature cmmId;
    icUInt32Number version;
    icProfileClassSignature deviceClass;
    icColorSpaceSignature colorSpace;
    icColorSpaceSignature pcs;
    icDateTimeNumber date;
    icSignature magic;
    icPlatformSignature platform;
    icUInt32Number flags;
    icSignature manufacturer;
    icUInt32Number model;
    icUInt64Number attributes;
    icUInt32Number renderingIntent;
    icXYZNumber illuminant;
    icSignature creator;
    icInt8Number reserved[44];
} icHeader;





typedef struct {
    icHeader header;
    icUInt32Number count;
    icInt8Number data[1];






} icProfile;





typedef struct {
    icUInt32Number vendorFlag;
    icUInt32Number count;
    icInt8Number data[1];
# 1021 "./base/icc34.h"
} icNamedColor;


typedef struct {
    icTagBase base;
    icNamedColor ncolor;
} icNamedColorType;
# 121 "./base/gsicc_create.c" 2
# 1 "./base/string_.h" 1
# 23 "./base/string_.h"
# 1 "./base/std.h" 1
# 22 "./base/std.h"
# 1 "./base/stdpre.h" 1
# 253 "./base/stdpre.h"
typedef unsigned char byte;
typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;
# 294 "./base/stdpre.h"
typedef int bool;
# 331 "./base/stdpre.h"
typedef const char *ptr_ord_t;
# 390 "./base/stdpre.h"
typedef const char *client_name_t;
# 401 "./base/stdpre.h"
# 1 "./base/stdpn.h" 1
# 402 "./base/stdpre.h" 2
# 23 "./base/std.h" 2


# 1 "./obj/arch.h" 1
# 26 "./base/std.h" 2
# 69 "./base/std.h"
typedef ushort bits16;


typedef uint bits32;
# 158 "./base/std.h"
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
# 159 "./base/std.h" 2






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
# 24 "./base/string_.h" 2








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
# 1296 "/usr/include/bits/string2.h" 3 4
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h" 1 3 4
# 33 "/usr/include/stdlib.h" 2 3 4
# 465 "/usr/include/stdlib.h" 3 4
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
# 1297 "/usr/include/bits/string2.h" 2 3 4




extern char *__strdup (const char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__));
# 1320 "/usr/include/bits/string2.h" 3 4
extern char *__strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__));
# 634 "/usr/include/string.h" 2 3 4
# 33 "./base/string_.h" 2
# 122 "./base/gsicc_create.c" 2
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
# 21 "./base/gslibctx.h"
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
# 123 "./base/gsicc_create.c" 2
# 1 "./base/gx.h" 1
# 23 "./base/gx.h"
# 1 "./base/gserrors.h" 1
# 50 "./base/gserrors.h"
int gs_log_error(int, const char *, int);
# 88 "./base/gserrors.h"
const char *gs_errstr(int code);
# 189 "./base/gserrors.h"
int gs_throw_imp(const char *func, const char *file, int line,
        int op, int code, const char *fmt, ...) __attribute__((__format__ (__printf__, 6, 7)));
# 24 "./base/gx.h" 2
# 1 "./base/gsio.h" 1
# 25 "./base/gx.h" 2


# 1 "./base/gdebug.h" 1
# 59 "./base/gdebug.h"
typedef enum {



# 1 "./base/gdbflags.h" 1
# 25 "./base/gdbflags.h"
gs_debug_flag_icc = 1,
gs_debug_flag_validate_chunks = 2,
gs_debug_flag_gc_disable = 3,
# 57 "./base/gdbflags.h"
gs_debug_flag_ps_op_names = '!',
gs_debug_flag_contexts_detail = '"',
gs_debug_flag_trace_errors = '#',
gs_debug_flag_memfill_obj = '$',
gs_debug_flag_ext_commands = '%',

gs_debug_flag_contexts = '\'',


gs_debug_flag_image = '*',
gs_debug_flag_min_stack = '+',
gs_debug_flag_no_path_banding = ',',

gs_debug_flag_small_mem_tables = '.',
gs_debug_flag_file_line = '/',
gs_debug_flag_gc = '0',
gs_debug_flag_type1 = '1',
gs_debug_flag_curve = '2',
gs_debug_flag_curve_detail = '3',
gs_debug_flag_gc_strings = '4',
gs_debug_flag_gc_strings_detail = '5',
gs_debug_flag_gc_chunks = '6',
gs_debug_flag_gc_objects = '7',
gs_debug_flag_gc_refs = '8',
gs_debug_flag_gc_pointers = '9',
gs_debug_flag_time = ':',




gs_debug_flag_validate_pointers = '?',
gs_debug_flag_memfill_empty = '@',
gs_debug_flag_alloc_detail = 'A',
gs_debug_flag_bitmap_detail = 'B',
gs_debug_flag_color_detail = 'C',
gs_debug_flag_dict_detail = 'D',

gs_debug_flag_fill_detail = 'F',

gs_debug_flag_halftones_detail = 'H',
gs_debug_flag_interp_detail = 'I',

gs_debug_flag_char_cache_detail = 'K',
gs_debug_flag_clist_detail = 'L',


gs_debug_flag_stroke_detail = 'O',
gs_debug_flag_paths_detail = 'P',


gs_debug_flag_scanner = 'S',

gs_debug_flag_undo_detail = 'U',
gs_debug_flag_compositors_detail = 'V',


gs_debug_flag_type1_hints_detail = 'Y',




gs_debug_flag_ref_counts = '^',
gs_debug_flag_high_level = '_',
gs_debug_flag_no_hl_img_banding = '`',
gs_debug_flag_alloc = 'a',
gs_debug_flag_bitmap = 'b',
gs_debug_flag_color_halftones = 'c',
gs_debug_flag_dict = 'd',
gs_debug_flag_external_calls = 'e',
gs_debug_flag_fill = 'f',
gs_debug_flag_gsave = 'g',
gs_debug_flag_halftones = 'h',
gs_debug_flag_interp = 'i',
gs_debug_flag_comp_fonts = 'j',
gs_debug_flag_char_cache = 'k',
gs_debug_flag_clist = 'l',
gs_debug_flag_makefont = 'm',
gs_debug_flag_names = 'n',
gs_debug_flag_stroke = 'o',
gs_debug_flag_paths = 'p',
gs_debug_flag_clipping = 'q',
gs_debug_flag_arcs = 'r',
gs_debug_flag_streams = 's',
gs_debug_flag_tiling = 't',
gs_debug_flag_undo = 'u',
gs_debug_flag_compositors = 'v',
gs_debug_flag_compress = 'w',
gs_debug_flag_transforms = 'x',
gs_debug_flag_type1_hints = 'y',
gs_debug_flag_trapezoid_fill = 'z',



gs_debug_flag_math = '~'
# 63 "./base/gdebug.h" 2


} gs_debug_flag;

typedef struct {
    int used;
    char short_desc[20];
    char long_desc[80];
} gs_debug_flag_details;


extern const byte gs_debug_flag_implied_by[127];
extern const gs_debug_flag_details gs_debug_flags[127];


int gs_debug_flags_parse(gs_memory_t *heap, const char *arg);
void gs_debug_flags_list(gs_memory_t *heap);


extern char gs_debug[128];
bool gs_debug_c(int );
# 92 "./base/gdebug.h"
extern FILE *gs_debug_out;
# 182 "./base/gdebug.h"
void debug_print_string(const gs_memory_t *mem, const byte * str, uint len);
void debug_dump_bytes(const gs_memory_t *mem,
                      const byte * from, const byte * to,
                      const char *msg);
void debug_dump_bitmap(const gs_memory_t *mem,
                       const byte * from, uint raster, uint height,
                       const char *msg);

void debug_print_string_hex_nomem(const byte * str, uint len);

void debug_print_string_hex(const gs_memory_t *mem, const byte * str, uint len);
# 28 "./base/gx.h" 2






typedef struct gs_imager_state_s gs_imager_state;




typedef struct gs_state_s gs_state;
# 124 "./base/gsicc_create.c" 2
# 1 "./base/gp.h" 1
# 24 "./base/gp.h"
# 1 "./base/gscdefs.h" 1
# 31 "./base/gscdefs.h"
extern const long gs_buildtime;
extern const char *const gs_copyright;
extern const char *const gs_product;
extern const char *const gs_productfamily;
extern const long gs_version;
extern const long gs_revision;
extern const long gs_revisiondate;
extern const long gs_serialnumber;


extern const char *const gs_doc_directory;
extern const char *const gs_lib_default_path;
extern const char *const gs_init_file;
extern const char *const gs_dev_defaults;
# 55 "./base/gscdefs.h"
extern const unsigned gx_image_class_table_count;



extern const unsigned gx_image_type_table_count;
# 68 "./base/gscdefs.h"
extern const unsigned gx_io_device_table_count;
# 25 "./base/gp.h" 2
# 35 "./base/gp.h"
# 1 "./base/gpgetenv.h" 1
# 39 "./base/gpgetenv.h"
int gp_getenv(const char *key, char *ptr, int *plen);
# 36 "./base/gp.h" 2




# 1 "./base/srdline.h" 1
# 36 "./base/srdline.h"
typedef struct stream_s stream;
# 45 "./base/srdline.h"
extern int sreadline(stream *s_in, stream *s_out, void *readline_data, gs_const_string *prompt, gs_string *buf, gs_memory_t *bufmem, uint *pcount, bool *pin_eol, bool (*is_stdin)(const stream *));
# 41 "./base/gp.h" 2




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
# 46 "./base/gp.h" 2
# 55 "./base/gp.h"
void gp_init(void);





void gp_exit(int exit_status, int code);





void gp_do_exit(int exit_status);
# 76 "./base/gp.h"
const char *gp_strerror(int);
# 99 "./base/gp.h"
int gp_defaultpapersize(char *ptr, int *plen);







int gp_serialnumber(void);







void gp_get_realtime(long ptm[2]);





void gp_get_usertime(long ptm[2]);
# 136 "./base/gp.h"
int gp_readline_init(void **preadline_data, gs_memory_t *mem);




int gp_readline(stream *s_in, stream *s_out, void *readline_data,
                gs_const_string *prompt, gs_string *buf,
                gs_memory_t *bufmem, uint *pcount, bool *pin_eol,
                bool (*is_stdin)(const stream *));




void gp_readline_finit(void *readline_data);
# 161 "./base/gp.h"
int gp_stdin_read(char *buf, int len, int interactive, FILE *f);
# 170 "./base/gp.h"
const char *gp_getenv_display(void);
# 189 "./base/gp.h"
extern const char gp_file_name_list_separator;


extern const char gp_scratch_file_name_prefix[];


extern const char gp_null_file_name[];


extern const char gp_current_directory_name[];




extern const char gp_fmode_binary_suffix[];



extern const char gp_fmode_rb[];
extern const char gp_fmode_wb[];
# 227 "./base/gp.h"
FILE *gp_open_scratch_file(const gs_memory_t *mem,
                           const char *prefix,
                                 char fname[4096],
                           const char *mode);


FILE *gp_fopen(const char *fname, const char *mode);



int gp_setmode_binary(FILE * pfile, bool mode);

typedef enum {
    gp_combine_small_buffer = -1,
    gp_combine_cant_handle = 0,
    gp_combine_success = 1
} gp_file_name_combine_result;
# 252 "./base/gp.h"
gp_file_name_combine_result gp_file_name_combine(const char *prefix, uint plen,
            const char *fname, uint flen, bool no_sibling, char *buffer, uint *blen);
# 264 "./base/gp.h"
uint gp_file_name_root(const char *fname, uint len);
# 273 "./base/gp.h"
uint gs_file_name_check_separator(const char *fname, int len, const char *item);





bool gp_file_name_is_parent(const char *fname, uint len);





bool gp_file_name_is_current(const char *fname, uint len);





const char *gp_file_name_current(void);





const char *gp_file_name_separator(void);





const char *gp_file_name_directory_separator(void);





const char *gp_file_name_parent(void);




bool gp_file_name_is_parent_allowed(void);





bool gp_file_name_is_empty_item_meanful(void);





int gp_read_macresource(byte *buf, const char *fname,
                                     const uint type, const ushort id);


bool gp_file_name_good_char(unsigned char c);
# 352 "./base/gp.h"
int gp_cache_insert(int type, byte *key, int keylen, void *buffer, int buflen);


typedef void *(*gp_cache_alloc)(void *userdata, int bytes);
int gp_cache_query(int type, byte* key, int keylen, void **buffer,
    gp_cache_alloc alloc, void *userdata);
# 379 "./base/gp.h"
FILE *gp_open_printer(const gs_memory_t *mem,
                            char fname[4096],
                            int binary_mode);
# 390 "./base/gp.h"
void gp_close_printer(const gs_memory_t *mem,
                            FILE *pfile,
                      const char *fname);





typedef struct file_enum_s file_enum;
# 412 "./base/gp.h"
file_enum *gp_enumerate_files_init(const char *pat, uint patlen,
                                   gs_memory_t * memory);
# 422 "./base/gp.h"
uint gp_enumerate_files_next(file_enum * pfen, char *ptr, uint maxlen);







void gp_enumerate_files_close(file_enum * pfen);
# 441 "./base/gp.h"
void *gp_enumerate_fonts_init(gs_memory_t *mem);
# 450 "./base/gp.h"
int gp_enumerate_fonts_next(void *enum_state, char **fontname, char **path);


void gp_enumerate_fonts_free(void *enum_state);
# 483 "./base/gp.h"
FILE *gp_fopen_64(const char *filename, const char *mode);

FILE *gp_open_scratch_file_64(const gs_memory_t *mem,
                              const char *prefix,
                                    char fname[4096],
                              const char *mode);
FILE *gp_open_printer_64(const gs_memory_t *mem,
                               char fname[4096],
                               int binary_mode);

int64_t gp_ftell_64(FILE *strm);

int gp_fseek_64(FILE *strm, int64_t offset, int origin);

bool gp_fseekable (FILE *f);
# 511 "./base/gp.h"
int
gp_local_arg_encoding_get_codepoint(FILE *file, const char **astr);
# 125 "./base/gsicc_create.c" 2

# 1 "./base/gxistate.h" 1
# 22 "./base/gxistate.h"
# 1 "./base/gscsel.h" 1
# 27 "./base/gscsel.h"
typedef enum {
    gs_color_select_all = -1,
    gs_color_select_texture = 0,
    gs_color_select_source = 1
} gs_color_select_t;
# 23 "./base/gxistate.h" 2
# 1 "./base/gsrefct.h" 1
# 50 "./base/gsrefct.h"
typedef struct rc_header_s rc_header;
struct rc_header_s {
    long ref_count;
    gs_memory_t *memory;


    void (*free)(gs_memory_t *, void *, client_name_t);
};
# 72 "./base/gsrefct.h"
void rc_free_struct_only(gs_memory_t *, void *, client_name_t);
# 24 "./base/gxistate.h" 2
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
# 25 "./base/gxistate.h" 2
# 1 "./base/gstparam.h" 1
# 22 "./base/gstparam.h"
# 1 "./base/gsccolor.h" 1
# 22 "./base/gsccolor.h"
# 1 "./base/gsstype.h" 1
# 23 "./base/gsstype.h"
typedef struct gc_state_s gc_state_t;





typedef struct enum_ptr_s {
    const void *ptr;
    uint size;
} enum_ptr_t;
# 81 "./base/gsstype.h"
typedef struct struct_shared_procs_s struct_shared_procs_t;

struct gs_memory_struct_type_s {
        uint ssize;
        struct_name_t sname;




        const struct_shared_procs_t *shared;



        void (*clear_marks)(const gs_memory_t *cmem, void *pre, uint size, const gs_memory_struct_type_t *pstype);
        gs_ptr_type_t (*enum_ptrs)(const gs_memory_t *mem, const void *ptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst);
        void (*reloc_ptrs)(void *ptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst);
        void (*finalize)(const gs_memory_t *cmem, void *ptr);



        const void *proc_data;
};
# 23 "./base/gsccolor.h" 2




typedef struct gs_pattern_instance_s gs_pattern_instance_t;
# 61 "./base/gsccolor.h"
typedef struct gs_paint_color_s {
    float values[(64)];



} gs_paint_color;




typedef struct gs_client_color_s gs_client_color;


struct gs_client_color_s {
    gs_pattern_instance_t *pattern;
    gs_paint_color paint;




};

extern const gs_memory_struct_type_t st_client_color;
# 93 "./base/gsccolor.h"
typedef enum {
    GRAY_SCALE,
    DEVICE_RGB,
    DEVICE_CMYK,
    CIE_XYZ,
    DEVICEN,
    ICC,
    UNKNOWN,
    OTHER
} gs_transparency_color_t;






typedef enum {
    GX_CINFO_POLARITY_UNKNOWN = -1,
    GX_CINFO_POLARITY_SUBTRACTIVE = 0,
    GX_CINFO_POLARITY_ADDITIVE
} gx_color_polarity_t;
# 23 "./base/gstparam.h" 2

# 1 "./base/gscspace.h" 1
# 23 "./base/gscspace.h"
# 1 "./base/gsiparam.h" 1
# 23 "./base/gsiparam.h"
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






int sget_matrix(stream *, gs_matrix *);
int sput_matrix(stream *, const gs_matrix *);
# 24 "./base/gsiparam.h" 2

# 1 "./base/gxbitmap.h" 1
# 23 "./base/gxbitmap.h"
# 1 "./base/gsbitmap.h" 1
# 54 "./base/gsbitmap.h"
typedef gs_id gs_bitmap_id;
# 75 "./base/gsbitmap.h"
typedef struct gs_bitmap_s {
    byte * data; int raster; gs_int_point size; gs_bitmap_id id;
} gs_bitmap;
typedef struct gs_const_bitmap_s {
    const byte * data; int raster; gs_int_point size; gs_bitmap_id id;
} gs_const_bitmap;
# 96 "./base/gsbitmap.h"
typedef struct gs_tile_bitmap_s {
    byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height;
} gs_tile_bitmap;
typedef struct gs_const_tile_bitmap_s {
    const byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height;
} gs_const_tile_bitmap;
# 124 "./base/gsbitmap.h"
typedef struct gs_depth_bitmap_s {
    byte * data; int raster; gs_int_point size; gs_bitmap_id id; byte pix_depth; byte num_comps;
} gs_depth_bitmap;
typedef struct gs_const_depth_bitmap_s {
    const byte * data; int raster; gs_int_point size; gs_bitmap_id id; byte pix_depth; byte num_comps;
} gs_const_depth_bitmap;






typedef struct gs_tile_depth_bitmap_s {
    byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height; byte pix_depth; byte num_comps;
} gs_tile_depth_bitmap;
typedef struct gs_const_tile_depth_bitmap_s {
    const byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height; byte pix_depth; byte num_comps;
} gs_const_tile_depth_bitmap;
# 155 "./base/gsbitmap.h"
extern const gs_memory_struct_type_t st_gs_bitmap;
extern const gs_memory_struct_type_t st_gs_tile_bitmap;
extern const gs_memory_struct_type_t st_gs_depth_bitmap;
extern const gs_memory_struct_type_t st_gs_tile_depth_bitmap;
# 24 "./base/gxbitmap.h" 2


typedef gs_bitmap_id gx_bitmap_id;
# 83 "./base/gxbitmap.h"
typedef struct gx_bitmap_s {
    byte * data; int raster; gs_int_point size; gs_bitmap_id id;
} gx_bitmap;
typedef struct gx_const_bitmap_s {
    const byte * data; int raster; gs_int_point size; gs_bitmap_id id;
} gx_const_bitmap;







typedef struct gx_tile_bitmap_s {
    byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height;
} gx_tile_bitmap;
typedef struct gx_const_tile_bitmap_s {
    const byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height;
} gx_const_tile_bitmap;
# 150 "./base/gxbitmap.h"
typedef struct gx_strip_bitmap_s {
    byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height; ushort rep_shift; ushort shift; int num_planes;
} gx_strip_bitmap;
typedef struct gx_const_strip_bitmap_s {
    const byte * data; int raster; gs_int_point size; gs_bitmap_id id; ushort rep_width, rep_height; ushort rep_shift; ushort shift; int num_planes;
} gx_const_strip_bitmap;

extern const gs_memory_struct_type_t st_gx_strip_bitmap;
# 26 "./base/gsiparam.h" 2
# 46 "./base/gsiparam.h"
typedef struct gx_image_type_s gx_image_type_t;
# 55 "./base/gsiparam.h"
typedef struct gs_image_common_s {
    const gx_image_type_t *type; gs_matrix ImageMatrix;
} gs_image_common_t;
# 66 "./base/gsiparam.h"
typedef enum {
    gs_image_type1,
    gs_image_type2,
    gs_image_type3,
    gs_image_type3x,
    gs_image_type4
} gs_image_parent_t;
# 121 "./base/gsiparam.h"
typedef struct gs_data_image_s {
    const gx_image_type_t *type; gs_matrix ImageMatrix; int Width; int Height; int BitsPerComponent; float Decode[((64) + 1) * 2]; bool Interpolate;
} gs_data_image_t;
# 144 "./base/gsiparam.h"
typedef enum {

    gs_image_format_chunky = 0,

    gs_image_format_component_planar = 1,

    gs_image_format_bit_planar = 2
} gs_image_format_t;




typedef struct gs_color_space_s gs_color_space;
# 182 "./base/gsiparam.h"
typedef struct gs_pixel_image_s {
    const gx_image_type_t *type; gs_matrix ImageMatrix; int Width; int Height; int BitsPerComponent; float Decode[((64) + 1) * 2]; bool Interpolate; gs_image_format_t format; bool CombineWithColor; gs_color_space *ColorSpace;
} gs_pixel_image_t;

extern const gs_memory_struct_type_t st_gs_pixel_image;
# 196 "./base/gsiparam.h"
typedef enum {

    gs_image_alpha_none = 0,

    gs_image_alpha_first,

    gs_image_alpha_last
} gs_image_alpha_t;

typedef struct gs_image1_s {
    const gx_image_type_t *type; gs_matrix ImageMatrix; int Width; int Height; int BitsPerComponent; float Decode[((64) + 1) * 2]; bool Interpolate; gs_image_format_t format; bool CombineWithColor; gs_color_space *ColorSpace;




    bool ImageMask;




    bool adjust;





    gs_image_alpha_t Alpha;






    gs_image_parent_t image_parent_type;
} gs_image1_t;


extern const gs_memory_struct_type_t st_gs_image1;







typedef gs_image1_t gs_image_t;
# 250 "./base/gsiparam.h"
void



     gs_image_common_t_init(gs_image_common_t * pic),







     gs_data_image_t_init(gs_data_image_t * pim, int num_components),






    gs_pixel_image_t_init(gs_pixel_image_t * pim,
                          gs_color_space * color_space);
# 284 "./base/gsiparam.h"
void gs_image_t_init_adjust(gs_image_t * pim, gs_color_space * pcs,
                            bool adjust);


void gs_image_t_init_mask_adjust(gs_image_t * pim, bool write_1s,
                                 bool adjust);
# 320 "./base/gsiparam.h"
typedef struct ht_landscape_info_s {
    int count;
    int widths[((1 << 3)*8)];
    int xstart;
    int curr_pos;
    int index;
    int num_contones;
    bool offset_set;
    bool flipy;
    int y_pos;
} ht_landscape_info_t;
# 24 "./base/gscspace.h" 2
# 142 "./base/gscspace.h"
typedef struct gsicc_link_s gsicc_link_t;







typedef struct cmm_profile_s cmm_profile_t;
# 166 "./base/gscspace.h"
typedef enum {


    gs_color_space_index_DeviceGray = 0,
    gs_color_space_index_DeviceRGB,


    gs_color_space_index_DeviceCMYK,


    gs_color_space_index_DevicePixel,
    gs_color_space_index_DeviceN,



    gs_color_space_index_CIEDEFG,
    gs_color_space_index_CIEDEF,
    gs_color_space_index_CIEABC,
    gs_color_space_index_CIEA,
    gs_color_space_index_Separation,
    gs_color_space_index_Indexed,
    gs_color_space_index_Pattern,


    gs_color_space_index_ICC

} gs_color_space_index;
# 201 "./base/gscspace.h"
typedef struct gs_color_space_type_s gs_color_space_type;
# 212 "./base/gscspace.h"
typedef struct gs_device_pixel_params_s {
    int depth;
} gs_device_pixel_params;
typedef struct gs_cie_a_s gs_cie_a;
typedef struct gs_cie_abc_s gs_cie_abc;
typedef struct gs_cie_def_s gs_cie_def;
typedef struct gs_cie_defg_s gs_cie_defg;



typedef struct gs_device_n_map_s gs_device_n_map;




typedef struct gs_device_n_attributes_s gs_device_n_attributes;






typedef ulong gs_separation_name;
# 243 "./base/gscspace.h"
typedef int (gs_callback_func_get_colorname_string)
     (const gs_memory_t *mem, gs_separation_name colorname, unsigned char **ppstr, unsigned int *plen);

typedef enum { SEP_NONE, SEP_ALL, SEP_OTHER } separation_type;

typedef struct gs_separation_params_s {
    gs_separation_name sep_name;
    gs_device_n_map *map;
    separation_type sep_type;
    bool use_alt_cspace;
    gs_callback_func_get_colorname_string *get_colorname_string;
} gs_separation_params;

typedef struct gs_device_n_params_s {
    gs_separation_name *names;
    uint num_components;
    gs_device_n_map *map;
    gs_device_n_attributes *colorants;
    bool use_alt_cspace;
    gs_callback_func_get_colorname_string *get_colorname_string;
} gs_device_n_params;


typedef struct client_color_space_data_s client_color_space_data_t;
# 276 "./base/gscspace.h"
typedef struct gs_indexed_map_s gs_indexed_map;

typedef struct gs_indexed_params_s {
    int hival;
    int n_comps;
    union {
        gs_const_string table;
        gs_indexed_map *map;
    } lookup;
    bool use_proc;
} gs_indexed_params;





typedef struct gs_pattern_params_s {
    bool has_base_space;
} gs_pattern_params;
# 309 "./base/gscspace.h"
struct gs_color_space_s {
    const gs_color_space_type *type;
    rc_header rc;
    gs_id id;
    gs_color_space *base_space;
    gs_color_space *icc_equivalent;
    client_color_space_data_t *pclient_color_space_data;
    cmm_profile_t *cmm_icc_profile_data;
    union {
        gs_device_pixel_params pixel;
        gs_cie_defg * defg;
        gs_cie_def * def;
        gs_cie_abc * abc;
        gs_cie_a * a;
        gs_separation_params separation;
        gs_device_n_params device_n;
        gs_indexed_params indexed;
        gs_pattern_params pattern;

    } params;
};
# 346 "./base/gscspace.h"
gs_color_space *gs_cspace_new_DeviceGray(gs_memory_t *mem);
gs_color_space *gs_cspace_new_DeviceRGB(gs_memory_t *mem);
gs_color_space *gs_cspace_new_DeviceCMYK(gs_memory_t *mem);
gs_color_space *gs_cspace_new_ICC(gs_memory_t *pmem, gs_state * pgs,
                                  int components);




gs_color_space_index gs_color_space_get_index(const gs_color_space *);


bool gs_color_space_is_CIE(const gs_color_space * pcs);
bool gs_color_space_is_ICC(const gs_color_space * pcs);
bool gs_color_space_is_PSCIE(const gs_color_space * pcs);
int gs_colorspace_set_icc_equivalent(gs_color_space *pcs, bool *islab,
                                     gs_memory_t *memory);


int gs_color_space_num_components(const gs_color_space *);






bool gs_color_space_equal(const gs_color_space *pcs1,
                          const gs_color_space *pcs2);






void gs_color_space_restrict_color(gs_client_color *, const gs_color_space *);






const gs_color_space *gs_cspace_base_space(const gs_color_space * pcspace);




void rc_increment_cs(gs_color_space *pcs);

void rc_decrement_cs(gs_color_space *pcs, const char *cname);

void rc_decrement_only_cs(gs_color_space *pcs, const char *cname);

void cs_adjust_counts_icc(gs_state *pgs, int delta);
# 25 "./base/gstparam.h" 2



typedef enum {
    BLEND_MODE_Normal,
    BLEND_MODE_Multiply,
    BLEND_MODE_Screen,
    BLEND_MODE_Difference,
    BLEND_MODE_Darken,
    BLEND_MODE_Lighten,
    BLEND_MODE_ColorDodge,
    BLEND_MODE_ColorBurn,
    BLEND_MODE_Exclusion,
    BLEND_MODE_HardLight,
    BLEND_MODE_Overlay,
    BLEND_MODE_SoftLight,
    BLEND_MODE_Luminosity,
    BLEND_MODE_Hue,
    BLEND_MODE_Saturation,
    BLEND_MODE_Color,



    BLEND_MODE_Compatible
} gs_blend_mode_t;
# 62 "./base/gstparam.h"
typedef struct gs_function_s gs_function_t;




typedef struct gs_transparency_group_params_s {
    const gs_color_space *ColorSpace;
    bool Isolated;
    bool Knockout;
    bool image_with_SMask;
    bool idle;
    uint mask_id;
    int group_color_numcomps;
    gs_transparency_color_t group_color;
    int64_t icc_hashcode;
    cmm_profile_t *iccprofile;
} gs_transparency_group_params_t;


typedef enum {
    TRANSPARENCY_MASK_Alpha,
    TRANSPARENCY_MASK_Luminosity
} gs_transparency_mask_subtype_t;






typedef struct gs_transparency_mask_params_s {
    const gs_color_space *ColorSpace;
    gs_transparency_mask_subtype_t subtype;
    int Background_components;
    float Background[(64)];
    float GrayBackground;
    int (*TransferFunction)(double in, float *out, void *proc_data);
    gs_function_t *TransferFunction_data;
    bool replacing;
    int64_t icc_hashcode;
    cmm_profile_t *iccprofile;
} gs_transparency_mask_params_t;




typedef struct gx_transparency_mask_params_s {
    gs_transparency_mask_subtype_t subtype;
    int group_color_numcomps;
    gs_transparency_color_t group_color;
    int Background_components;
    float Background[(64)];
    float GrayBackground;
    bool function_is_identity;
    bool idle;
    bool replacing;
    uint mask_id;
    byte transfer_fn[256];
    int64_t icc_hashcode;
    cmm_profile_t *iccprofile;
} gx_transparency_mask_params_t;
# 145 "./base/gstparam.h"
typedef enum {
    TRANSPARENCY_CHANNEL_Opacity = 0,
    TRANSPARENCY_CHANNEL_Shape = 1
} gs_transparency_channel_selector_t;
# 26 "./base/gxistate.h" 2
# 1 "./base/gxcvalue.h" 1
# 23 "./base/gxcvalue.h"
typedef unsigned short gx_color_value;
# 27 "./base/gxistate.h" 2
# 1 "./base/gxcmap.h" 1
# 24 "./base/gxcmap.h"
# 1 "./base/gxfmap.h" 1
# 24 "./base/gxfmap.h"
# 1 "./base/gxfrac.h" 1
# 27 "./base/gxfrac.h"
typedef short frac;
typedef short signed_frac;
# 25 "./base/gxfmap.h" 2
# 1 "./base/gxtmap.h" 1
# 29 "./base/gxtmap.h"
typedef struct gx_transfer_map_s gx_transfer_map;





typedef float (*gs_mapping_proc) (double, const gx_transfer_map *);





typedef float (*gs_mapping_closure_proc_t) (double value,
                                            const gx_transfer_map * pmap,
                                            const void *proc_data);
typedef struct gs_mapping_closure_s {
    gs_mapping_closure_proc_t proc;
    const void *data;
} gs_mapping_closure_t;
# 26 "./base/gxfmap.h" 2
# 41 "./base/gxfmap.h"
struct gx_transfer_map_s {
    rc_header rc;
    gs_mapping_proc proc;
    gs_mapping_closure_t closure;

    gs_id id;
    frac values[(1 << 8)];
};

extern const gs_memory_struct_type_t st_transfer_map;





void gx_set_identity_transfer(gx_transfer_map *);
# 65 "./base/gxfmap.h"
frac gx_color_frac_map(frac, const frac *);
# 99 "./base/gxfmap.h"
float gs_mapped_transfer(double, const gx_transfer_map *);




float gs_identity_transfer(double, const gx_transfer_map *);
# 25 "./base/gxcmap.h" 2




typedef struct gx_device_s gx_device;



typedef struct gx_device_color_s gx_device_color;
# 89 "./base/gxcmap.h"
struct gx_cm_color_map_procs_s {
    void (*map_gray) (gx_device * dev, frac gray, frac * out);
    void (*map_rgb) (gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac * out);
    void (*map_cmyk) (gx_device * dev, frac c, frac m, frac y, frac k, frac * out);
};

typedef struct gx_cm_color_map_procs_s gx_cm_color_map_procs;




void gray_cs_to_gray_cm (gx_device * dev, frac gray, frac * out);
void rgb_cs_to_rgb_cm (gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac * out);
void cmyk_cs_to_cmyk_cm (gx_device * dev, frac c, frac m, frac y, frac k, frac * out);
# 116 "./base/gxcmap.h"
struct gx_color_map_procs_s {
    void (*map_gray)(frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
    void (*map_rgb)(frac, frac, frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
    void (*map_cmyk)(frac, frac, frac, frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t, const gs_color_space *);
    void (*map_rgb_alpha)(frac, frac, frac, frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
    void (*map_separation)(frac, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
    void (*map_devicen)(const frac *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
    bool (*is_halftoned)(const gs_imager_state *, gx_device *);
};
typedef struct gx_color_map_procs_s gx_color_map_procs;






const gx_color_map_procs *
    gx_get_cmap_procs(const gs_imager_state *, const gx_device *);
const gx_color_map_procs *
    gx_default_get_cmap_procs(const gs_imager_state *, const gx_device *);






void gx_set_cmap_procs(gs_imager_state *, const gx_device *);
# 160 "./base/gxcmap.h"
# 1 "./base/gxcindex.h" 1
# 23 "./base/gxcindex.h"
# 1 "./base/gsbitops.h" 1
# 279 "./base/gsbitops.h"
void bits_fill_rectangle(byte * dest, int dest_bit, uint raster,
                      uint pattern, int width_bits, int height);
void bits_fill_rectangle_masked(byte * dest, int dest_bit, uint raster,
                      uint pattern, uint src_mask,
                      int width_bits, int height);


void bits_replicate_horizontally(byte * data, uint width, uint height,
               uint raster, uint replicated_width, uint replicated_raster);


void bits_replicate_vertically(byte * data, uint height, uint raster,
    uint replicated_height);


void bits_bounding_box(const byte * data, uint height, uint raster,
    gs_int_rect * pbox);




void bits_compress_scaled(const byte * src, int srcx, uint width,
    uint height, uint sraster, byte * dest, uint draster,
    const gs_log2_scale_point * plog2_scale, int log2_out_bits);


typedef struct bits_plane_s {
    union bpd_ {
        byte *write;
        const byte *read;
    } data;
    int raster;
    int depth;
    int x;
} bits_plane_t;
int bits_extract_plane(const bits_plane_t *dest ,
    const bits_plane_t *source , int shift, int width, int height);


int bits_expand_plane(const bits_plane_t *dest ,
    const bits_plane_t *source , int shift, int width, int height);


void bytes_fill_rectangle(byte * dest, uint raster,
    byte value, int width_bytes, int height);


void bytes_copy_rectangle(byte * dest, uint dest_raster,
    const byte * src, uint src_raster, int width_bytes, int height);



int bytes_rectangle_is_const(const byte * src, uint src_raster, int width_bytes, int height);



void bytes_copy_rectangle_zero_padding(byte * dest, uint dest_raster,
    const byte * src, uint src_raster, int width_bytes, int height);
# 24 "./base/gxcindex.h" 2
# 58 "./base/gxcindex.h"
enum { ARCH_SIZEOF_GX_COLOR_INDEX__must_equal__sizeof_GX_COLOR_INDEX_TYPE = 1/!!(8 == sizeof(unsigned long int)) };
typedef unsigned long int gx_color_index_data;
# 87 "./base/gxcindex.h"
typedef gx_color_index_data gx_color_index;
# 161 "./base/gxcmap.h" 2






extern void gx_default_gray_cs_to_gray_cm (gx_device * dev, frac gray, frac * out);
extern void gx_default_rgb_cs_to_gray_cm (gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac * out);
extern void gx_default_cmyk_cs_to_gray_cm (gx_device * dev, frac c, frac m, frac y, frac k, frac * out);

extern void gx_default_gray_cs_to_rgb_cm (gx_device * dev, frac gray, frac * out);
extern void gx_default_rgb_cs_to_rgb_cm (gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac * out);
extern void gx_default_cmyk_cs_to_rgb_cm (gx_device * dev, frac c, frac m, frac y, frac k, frac * out);

extern void gx_default_gray_cs_to_cmyk_cm (gx_device * dev, frac gray, frac * out);
extern void gx_default_rgb_cs_to_cmyk_cm (gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac * out);
extern void gx_default_cmyk_cs_to_cmyk_cm (gx_device * dev, frac c, frac m, frac y, frac k, frac * out);

extern void gx_default_gray_cs_to_cmyk_cm (gx_device * dev, frac gray, frac * out);
extern void gx_default_rgb_cs_to_cmyk_cm (gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac * out);
extern void gx_default_cmyk_cs_to_cmyk_cm (gx_device * dev, frac c, frac m, frac y, frac k, frac * out);

extern void gx_error_gray_cs_to_cmyk_cm (gx_device * dev, frac gray, frac * out);
extern void gx_error_rgb_cs_to_cmyk_cm (gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac * out);
extern void gx_error_cmyk_cs_to_cmyk_cm (gx_device * dev, frac c, frac m, frac y, frac k, frac * out);
# 239 "./base/gxcmap.h"
int (gx_error_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type);
int (gx_default_DevGray_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type);
int (gx_default_DevRGB_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type);
int (gx_default_DevCMYK_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type);
int (gx_default_DevRGBK_get_color_comp_index)(gx_device * dev, const char * pname, int name_size, int component_type);





const gx_cm_color_map_procs * (gx_error_get_color_mapping_procs)(const gx_device * dev);
const gx_cm_color_map_procs * (gx_default_DevGray_get_color_mapping_procs)(const gx_device * dev);
const gx_cm_color_map_procs * (gx_default_DevRGB_get_color_mapping_procs)(const gx_device * dev);
const gx_cm_color_map_procs * (gx_default_DevCMYK_get_color_mapping_procs)(const gx_device * dev);
const gx_cm_color_map_procs * (gx_default_DevRGBK_get_color_mapping_procs)(const gx_device * dev);





gx_color_index (gx_error_encode_color)(gx_device * dev, const gx_color_value colors[]);
gx_color_index (gx_default_encode_color)(gx_device * dev, const gx_color_value colors[]);





gx_color_index (gx_default_gray_fast_encode)(gx_device * dev, const gx_color_value colors[]);
gx_color_index (gx_default_gray_encode)(gx_device * dev, const gx_color_value colors[]);






gx_color_index (gx_backwards_compatible_gray_encode)(gx_device * dev, const gx_color_value colors[]);





int (gx_error_decode_color)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);
int (gx_default_decode_color)(gx_device * dev, gx_color_index cindex, gx_color_value colors[]);





frac gx_unit_frac(float fvalue);



bool gx_device_uses_std_cmap_procs(gx_device * dev,
                                   const gs_imager_state * pis);
bool fwd_uses_fwd_cmap_procs(gx_device * dev);
const gx_cm_color_map_procs* fwd_get_target_cmap_procs(gx_device * dev);
void cmap_transfer_halftone(gx_color_value *pconc, gx_device_color * pdc,
     const gs_imager_state * pis, gx_device * dev, bool has_transfer,
     bool has_halftone, gs_color_select_t select);
void cmap_transfer(gx_color_value *pconc, const gs_imager_state * pis,
                   gx_device * dev);
void cmap_transfer_plane(gx_color_value *pconc, const gs_imager_state *pis,
                    gx_device *dev, int plane);
# 28 "./base/gxistate.h" 2
# 1 "./base/gxfixed.h" 1
# 28 "./base/gxfixed.h"
typedef int fixed;
typedef uint ufixed;
# 162 "./base/gxfixed.h"
fixed fixed_mult_quo(fixed A, fixed B, fixed C);
# 182 "./base/gxfixed.h"
bool
gx_intersect_small_bars(fixed q0x, fixed q0y, fixed q1x, fixed q1y, fixed q2x, fixed q2y,
                        fixed q3x, fixed q3y, fixed *ry, fixed *ey);
# 233 "./base/gxfixed.h"
typedef struct gs_fixed_point_s {
    fixed x, y;
} gs_fixed_point;


typedef struct gs_fixed_rect_s {
    gs_fixed_point p, q;
} gs_fixed_rect;
# 29 "./base/gxistate.h" 2
# 1 "./base/gxline.h" 1
# 22 "./base/gxline.h"
# 1 "./base/math_.h" 1
# 29 "./base/math_.h"
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
# 30 "./base/math_.h" 2
# 76 "./base/math_.h"
extern double gs_sqrt(double, const char *, int);
# 23 "./base/gxline.h" 2
# 1 "./base/gslparam.h" 1
# 23 "./base/gslparam.h"
typedef enum {
    gs_cap_butt = 0,
    gs_cap_round = 1,
    gs_cap_square = 2,
    gs_cap_triangle = 3,
    gs_cap_unknown = 4
} gs_line_cap;




typedef enum {
    gs_join_miter = 0,
    gs_join_round = 1,
    gs_join_bevel = 2,
    gs_join_none = 3,
    gs_join_triangle = 4,
    gs_join_unknown = 5
} gs_line_join;
# 24 "./base/gxline.h" 2




typedef struct gx_dash_params_s {
    float *pattern;
    uint pattern_size;
    float offset;
    bool adapt;

    float pattern_length;
    bool init_ink_on;
    int init_index;
    float init_dist_left;
} gx_dash_params;



typedef struct gx_line_params_s {
    float half_width;
    gs_line_cap start_cap;
    gs_line_cap end_cap;
    gs_line_cap dash_cap;
    gs_line_join join;
    int curve_join;

    float miter_limit;
    float miter_check;

    float dot_length;
    bool dot_length_absolute;
    gs_matrix dot_orientation;

    gx_dash_params dash;
} gx_line_params;





int gx_set_miter_limit(gx_line_params *, double);



int gx_set_dash(gx_dash_params *, const float *, uint, double, gs_memory_t *);


int gx_set_dot_length(gx_line_params *, double, bool);
# 30 "./base/gxistate.h" 2
# 1 "./base/gxmatrix.h" 1
# 35 "./base/gxmatrix.h"
struct gs_matrix_fixed_s {
    float xx, xy, yx, yy, tx, ty;
    fixed tx_fixed, ty_fixed;
    bool txy_fixed_valid;
};



typedef struct gs_matrix_fixed_s gs_matrix_fixed;



int gs_matrix_fixed_from_matrix(gs_matrix_fixed *, const gs_matrix *);


int gs_point_transform2fixed(const gs_matrix_fixed *, double, double,
                             gs_fixed_point *);
int gs_distance_transform2fixed(const gs_matrix_fixed *, double, double,
                                gs_fixed_point *);

int gs_point_transform2fixed_rounding(const gs_matrix_fixed * pmat,
                         double x, double y, gs_fixed_point * ppt);
# 65 "./base/gxmatrix.h"
typedef struct {
    long xx, xy, yx, yy;
    int skewed;
    int shift;
    int max_bits;
    fixed round;
} fixed_coeff;
# 83 "./base/gxmatrix.h"
fixed fixed_coeff_mult(fixed, long, const fixed_coeff *, int);
# 31 "./base/gxistate.h" 2


# 1 "./base/gstrans.h" 1
# 23 "./base/gstrans.h"
# 1 "./base/gxcomp.h" 1
# 22 "./base/gxcomp.h"
# 1 "./base/gscompt.h" 1
# 41 "./base/gscompt.h"
typedef struct gs_composite_s gs_composite_t;






gs_id gs_composite_id(const gs_composite_t * pcte);
# 23 "./base/gxcomp.h" 2

# 1 "./base/gxbitfmt.h" 1
# 30 "./base/gxbitfmt.h"
typedef ulong gx_bitmap_format_t;
# 25 "./base/gxcomp.h" 2
# 68 "./base/gxcomp.h"
typedef struct gx_device_clist_writer_s gx_device_clist_writer;


typedef struct gs_composite_type_procs_s {







    int (*create_default_compositor)(const gs_composite_t *pcte, gx_device **pcdev, gx_device *dev, gs_imager_state *pis, gs_memory_t *mem);






    bool (*equal)(const gs_composite_t *pcte, const gs_composite_t *pcte2);
# 99 "./base/gxcomp.h"
    int (*write)(const gs_composite_t *pcte, byte *data, uint *psize, gx_device_clist_writer *cdev);
# 109 "./base/gxcomp.h"
    int (*read)(gs_composite_t **ppcte, const byte *data, uint size, gs_memory_t *mem);






    int (*adjust_ctm)(gs_composite_t *pcte, int x0, int y0, gs_imager_state *pis);
# 127 "./base/gxcomp.h"
    int (*is_closing)(const gs_composite_t *this, gs_composite_t **pcte, gx_device *dev);







    bool (*is_friendly)(const gs_composite_t *this, byte cmd0, byte cmd1);







    int (*clist_compositor_write_update)(const gs_composite_t * pcte, gx_device * dev, gx_device ** pcdev, gs_imager_state * pis, gs_memory_t * mem);







    int (*clist_compositor_read_update)(gs_composite_t * pcte, gx_device * cdev, gx_device * tdev, gs_imager_state * pis, gs_memory_t * mem);






    int (*get_cropping)(const gs_composite_t * pcte, int *ry, int *rheight, int cropping_min, int cropping_max);

} gs_composite_type_procs_t;

typedef struct gs_composite_type_s {
    byte comp_id;
    gs_composite_type_procs_t procs;
} gs_composite_type_t;





int gx_default_composite_clist_write_update(const gs_composite_t * pcte, gx_device * dev, gx_device ** pcdev, gs_imager_state * pis, gs_memory_t * mem);


int gx_default_composite_adjust_ctm(gs_composite_t *pcte, int x0, int y0, gs_imager_state *pis);


int gx_default_composite_is_closing(const gs_composite_t *this, gs_composite_t **pcte, gx_device *dev);


bool gx_default_composite_is_friendly(const gs_composite_t *this, byte cmd0, byte cmd1);





int gx_default_composite_clist_read_update(gs_composite_t * pcte, gx_device * cdev, gx_device * tdev, gs_imager_state * pis, gs_memory_t * mem);




int gx_default_composite_get_cropping(const gs_composite_t * pcte, int *ry, int *rheight, int cropping_min, int cropping_max);
# 205 "./base/gxcomp.h"
struct gs_composite_s {
    const gs_composite_type_t *type; gs_id id; bool idle; struct gs_composite_s *prev, *next;
};
# 24 "./base/gstrans.h" 2

# 1 "./base/gxblend.h" 1
# 24 "./base/gxblend.h"
# 1 "./base/gxdevcli.h" 1
# 25 "./base/gxdevcli.h"
# 1 "./base/gsdcolor.h" 1
# 23 "./base/gsdcolor.h"
# 1 "./base/gxarith.h" 1
# 27 "./base/gxarith.h"
int imod(int m, int n);


int igcd(int x, int y);





int idivmod(int a, int b, int m);




int ilog2(int n);
# 24 "./base/gsdcolor.h" 2

# 1 "./base/gxhttile.h" 1
# 32 "./base/gxhttile.h"
typedef struct gx_ht_tile_s gx_ht_tile;



struct gx_ht_tile_s {
    gx_strip_bitmap tiles;
    int level;


    uint index;

};
# 26 "./base/gsdcolor.h" 2
# 35 "./base/gsdcolor.h"
typedef struct gx_device_color_saved_s gx_device_color_saved;




typedef struct gx_device_halftone_s gx_device_halftone;
# 92 "./base/gsdcolor.h"
bool gx_device_color_equal(const gx_device_color *pdevc1,
                           const gx_device_color *pdevc2);
# 164 "./base/gsdcolor.h"
void gx_complete_halftone(gx_device_color *pdevc, int num_comps,
                          gx_device_halftone *pdht);
# 190 "./base/gsdcolor.h"
typedef struct gx_color_tile_s gx_color_tile;
# 260 "./base/gsdcolor.h"
typedef struct gx_device_color_type_s gx_device_color_type_t;
typedef const gx_device_color_type_t *gx_device_color_type;

struct gx_device_color_s {




    gx_device_color_type type;






    union _c {
        gx_color_index pure;
        struct _bin {
            const gx_device_halftone *b_ht;
            gx_color_index color[2];
            uint b_level;
            int b_index;
            gx_ht_tile *b_tile;
        } binary;
        struct _col {
            gx_device_halftone *c_ht;
            ushort num_components;
            byte c_base[(8 * 8)];
            uint c_level[(8 * 8)];
            ushort alpha;






            gx_color_index plane_mask;


        } colored;
        struct _pat {
            gx_color_tile *p_tile;
        } pattern;
        struct _devn {
            ushort values[(64)];
        } devn;
    } colors;
    gs_int_point phase;







    bool ccolor_valid;






    gs_client_color ccolor;

    struct _mask {
        struct mp_ {
            int x, y;
        } m_phase;
        gx_bitmap_id id;
        gx_color_tile *m_tile;
    } mask;
};
# 376 "./base/gsdcolor.h"
struct gx_device_color_saved_s {
    gx_device_color_type type;
    union _svc {
        gx_color_index pure;
        struct _svbin {
            gx_color_index b_color[2];
            uint b_level;
            int b_index;
        } binary;
        struct _svcol {
            byte c_base[(8 * 8)];
            uint c_level[(8 * 8)];
            ushort alpha;
        } colored;
        struct _svdevn {
            ushort values[(8 * 8)];
        } devn;
        struct _pattern {
            gs_id id;
            gs_int_point phase;
        } pattern;
        struct _pattern2 {
            gs_id id;
            bool shfill;
        } pattern2;
    } colors;
    gs_int_point phase;
};
# 415 "./base/gsdcolor.h"
extern const gx_device_color_type_t *const gx_dc_type_none;


extern const gx_device_color_type_t *const gx_dc_type_null;


extern const gx_device_color_type_t *const gx_dc_type_pure;


extern const gx_device_color_type_t *const gx_dc_type_devn;
# 434 "./base/gsdcolor.h"
extern const gx_device_color_type_t *const gx_dc_type_ht_binary;


extern const gx_device_color_type_t *const gx_dc_type_ht_colored;
# 26 "./base/gxdevcli.h" 2




# 1 "./base/gsstruct.h" 1
# 85 "./base/gsstruct.h"
typedef struct obj_header_s obj_header_t;







struct gs_ptr_procs_s {





    void (*unmark)(enum_ptr_t *, gc_state_t *);






    bool (*mark)(enum_ptr_t *, gc_state_t *);
# 116 "./base/gsstruct.h"
    void *(*reloc)(const void *, gc_state_t *);

};



extern const gs_ptr_procs_t ptr_struct_procs;



extern const gs_ptr_procs_t ptr_string_procs;

extern const gs_ptr_procs_t ptr_const_string_procs;



extern const gs_ptr_procs_t ptr_name_index_procs;






struct gs_gc_root_s {
    gs_gc_root_t *next;
    gs_ptr_type_t ptype;
    void **p;
    bool free_on_unregister;
};
# 180 "./base/gsstruct.h"
typedef struct gc_procs_common_s {
    void *(*reloc_struct_ptr)(const void *, gc_state_t *); void (*reloc_string)(gs_string *, gc_state_t *); void (*reloc_const_string)(gs_const_string *, gc_state_t *); void (*reloc_param_string)(gs_param_string *, gc_state_t *);
} gc_procs_common_t;







gs_ptr_type_t gs_no_struct_enum_ptrs(const gs_memory_t *mem, const void *ptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst);
void gs_no_struct_reloc_ptrs(void *ptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst);





extern const gs_memory_struct_type_t st_free;



extern const gs_memory_struct_type_t st_bytes;



extern const gs_memory_struct_type_t st_gc_root_t;
# 216 "./base/gsstruct.h"
extern const gs_memory_struct_type_t st_const_string_element;
# 237 "./base/gsstruct.h"
typedef enum {
    GC_ELT_OBJ,
    GC_ELT_STRING,
    GC_ELT_CONST_STRING
} gc_ptr_type_index_t;

typedef struct gc_ptr_element_s {
    ushort type;
    ushort offset;
} gc_ptr_element_t;
# 261 "./base/gsstruct.h"
typedef struct gc_struct_data_s {
    ushort num_ptrs;
    ushort super_offset;
    const gs_memory_struct_type_t *super_type;
    const gc_ptr_element_t *ptrs;
} gc_struct_data_t;
# 284 "./base/gsstruct.h"
gs_ptr_type_t basic_enum_ptrs(const gs_memory_t *mem, const void *ptr, uint size, int index, enum_ptr_t *pep, const gs_memory_struct_type_t *pstype, gc_state_t *gcst);
void basic_reloc_ptrs(void *ptr, uint size, const gs_memory_struct_type_t *pstype, gc_state_t *gcst);
# 375 "./base/gsstruct.h"
extern gs_ptr_type_t
    enum_bytestring(enum_ptr_t *pep, const gs_bytestring *pbs);


extern gs_ptr_type_t
    enum_const_bytestring(enum_ptr_t *pep, const gs_const_bytestring *pbs);
# 435 "./base/gsstruct.h"
extern void reloc_bytestring(gs_bytestring *pbs, gc_state_t *gcst);


extern void reloc_const_bytestring(gs_const_bytestring *pbs, gc_state_t *gcst);
# 31 "./base/gxdevcli.h" 2

# 1 "./base/gsxfont.h" 1
# 24 "./base/gsxfont.h"
typedef ulong gx_xglyph;




struct gx_xfont_procs_s;
typedef struct gx_xfont_procs_s gx_xfont_procs;


struct gx_xfont_s;
typedef struct gx_xfont_s gx_xfont;
# 33 "./base/gxdevcli.h" 2




# 1 "./base/gxtext.h" 1
# 22 "./base/gxtext.h"
# 1 "./base/gstext.h" 1
# 22 "./base/gstext.h"
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
# 23 "./base/gstext.h" 2
# 1 "./base/gscpm.h" 1
# 22 "./base/gscpm.h"
typedef enum {
    cpm_show,
    cpm_charwidth,
    cpm_false_charpath,
    cpm_true_charpath,
    cpm_false_charboxpath,
    cpm_true_charboxpath
} gs_char_path_mode;

typedef enum {
    CACHE_DEVICE_NONE = 0,
    CACHE_DEVICE_NOT_CACHING,
    CACHE_DEVICE_NONE_AND_CLIP,
    CACHE_DEVICE_CACHING
} gs_in_cache_device_t;
# 24 "./base/gstext.h" 2
# 99 "./base/gstext.h"
typedef struct gs_text_params_s {

    uint operation;
    union sd_ {
        const byte *bytes;
        const gs_char *chars;
        const gs_glyph *glyphs;
        gs_char d_char;
        gs_glyph d_glyph;
    } data;
    uint size;


    gs_point delta_all;
    gs_point delta_space;
    union s_ {
        gs_char s_char;
        gs_glyph s_glyph;
    } space;





    const float *x_widths;
    const float *y_widths;
    uint widths_size;
} gs_text_params_t;
# 135 "./base/gstext.h"
int gs_text_replaced_width(const gs_text_params_t *text, uint index,
                           gs_point *pwidth);







typedef struct gs_text_enum_s gs_text_enum_t;
# 162 "./base/gstext.h"
typedef struct gs_font_s gs_font;



typedef struct gx_path_s gx_path;



typedef struct gx_clip_path_s gx_clip_path;
# 194 "./base/gstext.h"
int gx_device_text_begin(gx_device *dev, gs_imager_state *pis, const gs_text_params_t *text, gs_font *font, gx_path *path, const gx_device_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gs_text_enum_t **ppte);






int gs_text_begin(gs_state * pgs, const gs_text_params_t * text,
                  gs_memory_t * mem, gs_text_enum_t ** ppenum);





int gs_text_update_dev_color(gs_state * pgs, gs_text_enum_t * pte);


int
gs_show_begin(gs_state *, const byte *, uint,
              gs_memory_t *, gs_text_enum_t **),
    gs_ashow_begin(gs_state *, double, double, const byte *, uint,
                   gs_memory_t *, gs_text_enum_t **),
    gs_widthshow_begin(gs_state *, double, double, gs_char,
                       const byte *, uint,
                       gs_memory_t *, gs_text_enum_t **),
    gs_awidthshow_begin(gs_state *, double, double, gs_char,
                        double, double, const byte *, uint,
                        gs_memory_t *, gs_text_enum_t **),
    gs_kshow_begin(gs_state *, const byte *, uint,
                   gs_memory_t *, gs_text_enum_t **),
    gs_xyshow_begin(gs_state *, const byte *, uint,
                    const float *, const float *, uint,
                    gs_memory_t *, gs_text_enum_t **),
    gs_glyphshow_begin(gs_state *, gs_glyph,
                       gs_memory_t *, gs_text_enum_t **),
    gs_cshow_begin(gs_state *, const byte *, uint,
                   gs_memory_t *, gs_text_enum_t **),
    gs_stringwidth_begin(gs_state *, const byte *, uint,
                         gs_memory_t *, gs_text_enum_t **),
    gs_charpath_begin(gs_state *, const byte *, uint, bool,
                      gs_memory_t *, gs_text_enum_t **),
    gs_glyphpath_begin(gs_state *, gs_glyph, bool,
                       gs_memory_t *, gs_text_enum_t **),
    gs_glyphwidth_begin(gs_state *, gs_glyph,
                        gs_memory_t *, gs_text_enum_t **),
    gs_charboxpath_begin(gs_state *, const byte *, uint, bool,
                         gs_memory_t *, gs_text_enum_t **);


int gs_text_size(gs_state * pgs, gs_text_params_t *text, gs_memory_t * mem);

gs_text_params_t *gs_get_text_params(gs_text_enum_t *pte);




int gs_text_restart(gs_text_enum_t *pte, const gs_text_params_t *text);




int gs_text_resync(gs_text_enum_t *pte, const gs_text_enum_t *pfrom);
# 287 "./base/gstext.h"
int gs_text_process(gs_text_enum_t *pte);


gs_font *gs_text_current_font(const gs_text_enum_t *pte);
gs_char gs_text_current_char(const gs_text_enum_t *pte);
gs_char gs_text_next_char(const gs_text_enum_t *pte);
gs_glyph gs_text_current_glyph(const gs_text_enum_t *pte);
int gs_text_total_width(const gs_text_enum_t *pte, gs_point *pwidth);






bool gs_text_is_width_only(const gs_text_enum_t *pte);




int gs_text_current_width(const gs_text_enum_t *pte, gs_point *pwidth);





typedef enum {
    TEXT_SET_CHAR_WIDTH,
    TEXT_SET_CACHE_DEVICE,
    TEXT_SET_CACHE_DEVICE2
} gs_text_cache_control_t;
int
    gs_text_set_cache(gs_text_enum_t *pte, const double *values,
                      gs_text_cache_control_t control),
    gs_text_setcharwidth(gs_text_enum_t *pte, const double wxy[2]),
    gs_text_setcachedevice(gs_text_enum_t *pte, const double wbox[6]),
    gs_text_setcachedevice2(gs_text_enum_t *pte, const double wbox2[10]);


int gs_text_retry(gs_text_enum_t *pte);


void gs_text_release(gs_text_enum_t *pte, client_name_t cname);


int gs_text_count_chars(gs_state * pgs, gs_text_params_t *text, gs_memory_t * mem);
# 23 "./base/gxtext.h" 2



typedef struct gs_text_enum_procs_s gs_text_enum_procs_t;



typedef struct cached_fm_pair_s cached_fm_pair;





typedef struct gs_text_returned_s {
    gs_char current_char;
    gs_glyph current_glyph;
    gs_point total_width;
} gs_text_returned_t;
# 56 "./base/gxtext.h"
typedef struct gx_font_stack_item_s {
    gs_font *font;
    uint index;



} gx_font_stack_item_t;
typedef struct gx_font_stack_s {
    int depth;
    gx_font_stack_item_t items[1 + 5];
} gx_font_stack_t;
# 79 "./base/gxtext.h"
void rc_free_text_enum(gs_memory_t *, void *, client_name_t);
# 127 "./base/gxtext.h"
struct gs_text_enum_s {
    gs_text_params_t text; gx_device *dev; gx_device *imaging_dev; gs_imager_state *pis; gs_font *orig_font; gx_path *path; const gx_device_color *pdcolor; const gx_clip_path *pcpath; gs_memory_t *memory; const gs_text_enum_procs_t *procs; rc_header rc; void *enum_client_data; gs_font *current_font; gs_glyph outer_CID; bool is_pure_color; gs_log2_scale_point log2_scale; cached_fm_pair *pair; uint index; uint xy_index; gx_font_stack_t fstack; int cmap_code; bool single_byte_space; int bytes_decoded; gs_point FontBBox_as_Metrics2; ulong text_enum_id; bool device_disabled_grid_fitting; gs_log2_scale_point fapi_log2_scale; gs_point fapi_glyph_shift; gs_text_returned_t returned;
};
# 179 "./base/gxtext.h"
int gs_text_enum_init(gs_text_enum_t *pte,
                      const gs_text_enum_procs_t *procs,
                      gx_device *dev, gs_imager_state *pis,
                      const gs_text_params_t *text,
                      gs_font *font, gx_path *path,
                      const gx_device_color *pdcolor,
                      const gx_clip_path *pcpath,
                      gs_memory_t *mem);







void gs_text_enum_copy_dynamic(gs_text_enum_t *pto,
                               const gs_text_enum_t *pfrom,
                               bool for_return);
# 227 "./base/gxtext.h"
struct gs_text_enum_procs_s {
# 240 "./base/gxtext.h"
    int (*resync)(gs_text_enum_t *pte, const gs_text_enum_t *pfrom);
# 270 "./base/gxtext.h"
    int (*process)(gs_text_enum_t *pte);
# 281 "./base/gxtext.h"
    bool (*is_width_only)(const gs_text_enum_t *pte);
# 290 "./base/gxtext.h"
    int (*current_width)(const gs_text_enum_t *pte, gs_point *pwidth);
# 301 "./base/gxtext.h"
    int (*set_cache)(gs_text_enum_t *pte, const double *values, gs_text_cache_control_t control);
# 311 "./base/gxtext.h"
    int (*retry)(gs_text_enum_t *pte);
# 322 "./base/gxtext.h"
    void (*release)(gs_text_enum_t *pte, client_name_t cname);

};


void gx_default_text_release(gs_text_enum_t *pte, client_name_t cname);
# 38 "./base/gxdevcli.h" 2

# 1 "./base/gsnamecl.h" 1
# 24 "./base/gsnamecl.h"
# 1 "./base/gxcspace.h" 1
# 48 "./base/gxcspace.h"
struct gs_color_space_type_s {

    gs_color_space_index index;







    bool can_be_base_space;
    bool can_be_alt_space;






    gs_memory_type_ptr_t stype;
# 82 "./base/gxcspace.h"
        int (*num_components)(const gs_color_space *);
# 92 "./base/gxcspace.h"
        void (*init_color)(gs_client_color *, const gs_color_space *);







        void (*restrict_color)(gs_client_color *, const gs_color_space *);
# 110 "./base/gxcspace.h"
        const gs_color_space *(*concrete_space)(const gs_color_space *, const gs_imager_state *);
# 125 "./base/gxcspace.h"
        int (*concretize_color)(const gs_client_color *, const gs_color_space *, frac *, const gs_imager_state *, gx_device *);







        int (*remap_concrete_color)(const frac *, const gs_color_space * pcs, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);







        int (*remap_color)(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);





        int (*install_cspace)(gs_color_space *, gs_state *);
# 163 "./base/gxcspace.h"
        int (*set_overprint)(const gs_color_space *, gs_state *);





        void (*final)(const gs_color_space *);
# 184 "./base/gxcspace.h"
        void (*adjust_color_count)(const gs_client_color *, const gs_color_space *, int);
# 201 "./base/gxcspace.h"
        int (*serialize)(const gs_color_space *, stream *);
# 213 "./base/gxcspace.h"
        int (*is_linear)(const gs_color_space *cs, const gs_imager_state * pis, gx_device *dev, const gs_client_color *c0, const gs_client_color *c1, const gs_client_color *c2, const gs_client_color *c3, float smoothness, gsicc_link_t *icclink);
# 222 "./base/gxcspace.h"
        gx_color_polarity_t (*polarity)(const gs_color_space *);
};

extern const gs_memory_struct_type_t st_base_color_space;





int gx_num_components_1(const gs_color_space *);
int gx_num_components_3(const gs_color_space *);
int gx_num_components_4(const gs_color_space *);
gx_color_polarity_t gx_polarity_subtractive(const gs_color_space *);
gx_color_polarity_t gx_polarity_additive(const gs_color_space *);
gx_color_polarity_t gx_polarity_unknown(const gs_color_space *);
void gx_init_paint_1(gs_client_color *, const gs_color_space *);
void gx_init_paint_3(gs_client_color *, const gs_color_space *);
void gx_init_paint_4(gs_client_color *, const gs_color_space *);
void gx_restrict01_paint_1(gs_client_color *, const gs_color_space *);
void gx_restrict01_paint_3(gs_client_color *, const gs_color_space *);
void gx_restrict01_paint_4(gs_client_color *, const gs_color_space *);
const gs_color_space *gx_no_concrete_space(const gs_color_space *, const gs_imager_state *);
const gs_color_space *gx_same_concrete_space(const gs_color_space *, const gs_imager_state *);
int gx_no_concretize_color(const gs_client_color *, const gs_color_space *, frac *, const gs_imager_state *, gx_device *);
int gx_default_remap_color(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_no_install_cspace(gs_color_space *, gs_state *);
int gx_spot_colors_set_overprint(const gs_color_space *, gs_state *);
int gx_simulated_set_overprint(const gs_color_space *, gs_state *);
void gx_no_adjust_color_count(const gs_client_color *, const gs_color_space *, int);
int gx_serialize_cspace_type(const gs_color_space *, stream *);
int gx_cspace_no_linear(const gs_color_space *cs, const gs_imager_state * pis, gx_device *dev, const gs_client_color *c0, const gs_client_color *c1, const gs_client_color *c2, const gs_client_color *c3, float smoothness, gsicc_link_t *icclink);
int gx_cspace_is_linear_default(const gs_color_space *cs, const gs_imager_state * pis, gx_device *dev, const gs_client_color *c0, const gs_client_color *c1, const gs_client_color *c2, const gs_client_color *c3, float smoothness, gsicc_link_t *icclink);





int gx_remap_DeviceGray(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_concretize_DeviceGray(const gs_client_color *, const gs_color_space *, frac *, const gs_imager_state *, gx_device *);
int gx_remap_concrete_DGray(const frac *, const gs_color_space * pcs, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_remap_DeviceRGB(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_concretize_DeviceRGB(const gs_client_color *, const gs_color_space *, frac *, const gs_imager_state *, gx_device *);
int gx_remap_concrete_DRGB(const frac *, const gs_color_space * pcs, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_remap_DeviceCMYK(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_concretize_DeviceCMYK(const gs_client_color *, const gs_color_space *, frac *, const gs_imager_state *, gx_device *);
int gx_remap_concrete_DCMYK(const frac *, const gs_color_space * pcs, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);


extern const gs_memory_struct_type_t st_color_space;


gs_color_space *
gs_cspace_alloc(gs_memory_t *mem, const gs_color_space_type *pcstype);




gx_color_index check_cmyk_color_model_comps(gx_device * dev);
gx_color_index check_rgb_color_model_comps(gx_device * dev);


int gx_set_overprint_cmyk(const gs_color_space * pcs, gs_state * pgs);
int gx_set_overprint_rgb(const gs_color_space * pcs, gs_state * pgs);
# 25 "./base/gsnamecl.h" 2
# 80 "./base/gsnamecl.h"
typedef struct gs_context_state_s i_ctx_t;





typedef struct gs_param_list_s gs_param_list;
# 99 "./base/gsnamecl.h"
int custom_color_callback_put_params(gs_state * pgs, gs_param_list * plist);
# 108 "./base/gsnamecl.h"
int custom_color_callback_get_params(gs_state * pgs, gs_param_list * plist);





bool custom_color_callback_install_Separation(gs_color_space * pcs,
                                                        gs_state * pgs);





bool custom_color_callback_install_DeviceN(gs_color_space * pcs, gs_state * pgs);





int gx_remap_concrete_custom_color_Separation(const frac * pconc,
        const gs_color_space * pcs, gx_device_color * pdc,
        const gs_imager_state * pis, gx_device * dev, gs_color_select_t select);





int gx_remap_concrete_custom_color_DeviceN(const frac * pconc,
        const gs_color_space * pcs, gx_device_color * pdc,
        const gs_imager_state * pis, gx_device * dev, gs_color_select_t select);
# 155 "./base/gsnamecl.h"
typedef struct client_custom_color_params_s {

    struct client_custom_color_procs_s * client_procs;

    void * data;
} client_custom_color_params_t;
# 169 "./base/gsnamecl.h"
typedef struct client_color_space_data_s {
        void (*client_adjust_cspace_count)(const gs_color_space *, int);
} client_color_space__data_t;




typedef struct client_custom_color_procs_s {



    bool (* install_DeviceGray)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_DeviceGray)(client_custom_color_params_t * pparams,
            const frac * pconc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);



    bool (* install_DeviceRGB)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_DeviceRGB)(client_custom_color_params_t * pparams,
            const frac * pconc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);



    bool (* install_DeviceCMYK)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_DeviceCMYK)(client_custom_color_params_t * pparams,
            const frac * pconc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);




    bool (* install_Separation)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_Separation)(client_custom_color_params_t * pparams,
            const frac * pconc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);




    bool (* install_DeviceN)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_DeviceN)(client_custom_color_params_t * pparams,
            const frac * pconc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);




    bool (* install_CIEBasedA)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);
# 254 "./base/gsnamecl.h"
    int (* remap_CIEBasedA)(client_custom_color_params_t * pparams,
            const gs_client_color * pc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);




    bool (* install_CIEBasedABC)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_CIEBasedABC)(client_custom_color_params_t * pparams,
            const gs_client_color * pc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);




    bool (* install_CIEBasedDEF)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_CIEBasedDEF)(client_custom_color_params_t * pparams,
            const gs_client_color * pc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);




    bool (* install_CIEBasedDEFG)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_CIEBasedDEFG)(client_custom_color_params_t * pparams,
            const gs_client_color * pc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);




    bool (* install_ICCBased)(client_custom_color_params_t * pparams,
            gs_color_space * pcs, gs_state * pgs);



    int (* remap_ICCBased)(client_custom_color_params_t * pparams,
            const gs_client_color * pc, const gs_color_space * pcs,
            gx_device_color * pdc, const gs_imager_state * pis,
            gx_device * dev, gs_color_select_t select);

} client_custom_color_procs_t;
# 40 "./base/gxdevcli.h" 2

# 1 "./base/gscms.h" 1
# 25 "./base/gscms.h"
# 1 "./base/gsdevice.h" 1
# 29 "./base/gsdevice.h"
typedef struct gx_device_memory_s gx_device_memory;
# 44 "./base/gsdevice.h"
const gx_device *gs_getdevice(int);
const gx_device *gs_getdefaultdevice(void);

int gs_opendevice(gx_device *);
int gs_copyscanlines(gx_device *, int, byte *, uint, int *, uint *);
int gs_copydevice(gx_device **, const gx_device *, gs_memory_t *);





int gs_copydevice2(gx_device **pnew_dev, const gx_device *dev,
                   bool keep_open, gs_memory_t *mem);



int gs_makewordimagedevice(gx_device ** pnew_dev, const gs_matrix * pmat,
                           uint width, uint height,
                           const byte * colors, int num_colors,
                           bool word_oriented, bool page_device,
                           gs_memory_t * mem);



int gs_initialize_wordimagedevice(gx_device_memory * new_dev,
                                  const gs_matrix * pmat,
                                  uint width, uint height,
                                  const byte * colors, int colors_size,
                                  bool word_oriented, bool page_device,
                                  gs_memory_t * mem);
const char *gs_devicename(const gx_device *);
void gs_deviceinitialmatrix(gx_device *, gs_matrix *);


int gs_get_device_or_hw_params(gx_device *, gs_param_list *, bool);







int gs_putdeviceparams(gx_device *, gs_param_list *);
int gs_closedevice(gx_device *);
# 96 "./base/gsdevice.h"
int gs_imager_putdeviceparams(gs_imager_state *pis, gx_device *dev,
                              gs_param_list *plist);
# 106 "./base/gsdevice.h"
int gs_flushpage(gs_state *);
int gs_copypage(gs_state *);
int gs_output_page(gs_state *, int, int);
int gs_nulldevice(gs_state *);
int gs_setdevice(gs_state *, gx_device *);
int gs_setdevice_no_erase(gs_state *, gx_device *);

int gs_setdevice_no_init(gs_state *, gx_device *);
gx_device *gs_currentdevice(const gs_state *);






int gs_state_putdeviceparams(gs_state *pgs, gs_param_list *plist);
# 26 "./base/gscms.h" 2
# 1 "./base/gxsync.h" 1
# 24 "./base/gxsync.h"
# 1 "./base/gpsync.h" 1
# 37 "./base/gpsync.h"
typedef union {
    void *dummy1;
    double dummy2;
    long dummy3;
    int64_t dummy4;
} gp_semaphore;

uint gp_semaphore_sizeof(void);




int gp_semaphore_open(gp_semaphore * sema);
int gp_semaphore_close(gp_semaphore * sema);
int gp_semaphore_wait(gp_semaphore * sema);
int gp_semaphore_signal(gp_semaphore * sema);






typedef union {
    void *dummy_;
    double dummy2;
    long dummy3;
    int64_t dummy4;
} gp_monitor;

uint gp_monitor_sizeof(void);




int gp_monitor_open(gp_monitor * mon);
int gp_monitor_close(gp_monitor * mon);
int gp_monitor_enter(gp_monitor * mon);
int gp_monitor_leave(gp_monitor * mon);







typedef void (*gp_thread_creation_callback_t) (void *);
int gp_create_thread(gp_thread_creation_callback_t, void *);
# 95 "./base/gpsync.h"
typedef void *gp_thread_id;
int gp_thread_start(gp_thread_creation_callback_t fun, void *arg, gp_thread_id *thread);






void gp_thread_finish(gp_thread_id thread);
# 25 "./base/gxsync.h" 2








typedef struct gx_semaphore_s {
    gs_memory_t *memory;
    gp_semaphore native;

} gx_semaphore_t;

gx_semaphore_t *
    gx_semaphore_alloc(
                       gs_memory_t * memory
                       );
void
    gx_semaphore_free(
                      gx_semaphore_t * sema
                      );







typedef struct gx_monitor_s {
    gs_memory_t *memory;
    gp_monitor native;
} gx_monitor_t;

gx_monitor_t *
    gx_monitor_alloc(
                     gs_memory_t * memory
                     );
void
    gx_monitor_free(
                    gx_monitor_t * mon
                    );
# 27 "./base/gscms.h" 2
# 44 "./base/gscms.h"
typedef unsigned short icc_output_type;
# 54 "./base/gscms.h"
typedef struct gs_range_icc_s {
    gs_range_t ranges[15];
} gs_range_icc_t;
# 66 "./base/gscms.h"
typedef struct gsicc_device_cm_s {
    cmm_profile_t *gray_profile;
    cmm_profile_t *rgb_profile;
    cmm_profile_t *cmyk_profile;
    cmm_profile_t *device_link_profile;
    gs_memory_t *memory;
} gsicc_device_cm_t;


typedef enum {
    gsUNDEFINED = 0,
    gsGRAY,
    gsRGB,
    gsCMYK,
    gsNCHANNEL,
    gsCIEXYZ,
    gsCIELAB,
    gsNAMED
} gsicc_colorbuffer_t;

typedef struct gsicc_bufferdesc_s {
    unsigned char num_chan;
    unsigned char bytes_per_chan;
    bool has_alpha;
    bool alpha_first;
    bool little_endian;
    bool is_planar;
    int plane_stride;
    int row_stride;
    int num_rows;
    int pixels_per_row;
} gsicc_bufferdesc_t;



typedef void (*gscms_trans_color_proc_t) (gx_device * dev, gsicc_link_t *icclink,
                                          void *inputcolor, void *outputcolor,
                                          int num_bytes);

typedef void (*gscms_trans_buffer_proc_t) (gx_device * dev, gsicc_link_t *icclink,
                                           gsicc_bufferdesc_t *input_buff_desc,
                                           gsicc_bufferdesc_t *output_buff_desc,
                                           void *inputbuffer, void *outputbuffer);

typedef void (*gscms_link_free_proc_t) (gsicc_link_t *icclink);

typedef bool (*gscms_monitor_proc_t) (void *inputcolor, int num_bytes);

typedef struct gscms_procs_s {
    gscms_trans_buffer_proc_t map_buffer;
    gscms_trans_color_proc_t map_color;
    gscms_link_free_proc_t free_link;
    gscms_monitor_proc_t is_color;
} gscms_procs_t;
# 129 "./base/gscms.h"
typedef enum {
    gsPERCEPTUAL = 0,
    gsRELATIVECOLORIMETRIC,
    gsSATURATION,
    gsABSOLUTECOLORIMETRIC,
    gsPERCEPTUAL_OR,
    gsRELATIVECOLORIMETRIC_OR,
    gsSATURATION_OR,
    gsABSOLUTECOLORIMETRIC_OR,
    gsRINOTSPECIFIED = 8
} gsicc_rendering_intents_t;





typedef enum {
    gsBLACKPTCOMP_OFF = 0,
    gsBLACKPTCOMP_ON,
    gsBLACKPTCOMP_OFF_OR = 4,
    gsBLACKPTCOMP_ON_OR,
    gsBPNOTSPECIFIED = 8
} gsicc_blackptcomp_t;



typedef enum {
    gsCMM_DEFAULT = 0,
    gsCMM_NONE,
    gsCMM_REPLACE
} gsicc_cmm_t;



typedef enum {
    gsBLACKPRESERVE_OFF = 0,
    gsBLACKPRESERVE_KONLY,
    gsBLACKPRESERVE_KPLANE,
    gsBKPRESNOTSPECIFIED = 8
} gsicc_blackpreserve_t;
# 178 "./base/gscms.h"
typedef enum {
    gsDEFAULTPROFILE = 0,
    gsGRAPHICPROFILE,
    gsIMAGEPROFILE,
    gsTEXTPROFILE,
    gsPROOFPROFILE,
    gsLINKPROFILE,
    gsOIPROFILE
} gsicc_profile_types_t;

typedef enum {
    gsSRC_GRAPPRO = 0,
    gsSRC_IMAGPRO,
    gsSRC_TEXTPRO,
} gsicc_profile_srctypes_t;




typedef enum {
    GS_UNKNOWN_TAG = 0x0,
    GS_TEXT_TAG = 0x1,
    GS_IMAGE_TAG = 0x2,
    GS_PATH_TAG = 0x4,
    GS_UNTOUCHED_TAG = 0x8,
    GS_DEVICE_ENCODES_TAGS = 0x80
} gs_graphics_type_tag_t;


typedef struct gsicc_rendering_param_s {
    gsicc_rendering_intents_t rendering_intent;
    gsicc_blackptcomp_t black_point_comp;
    gsicc_blackpreserve_t preserve_black;
    gs_graphics_type_tag_t graphics_type_tag;
    gsicc_cmm_t cmm;
    bool override_icc;
} gsicc_rendering_param_t;


typedef struct cmm_srcgtag_profile_s {
    cmm_profile_t *rgb_profiles[3];
    gsicc_rendering_param_t rgb_rend_cond[3];
    cmm_profile_t *cmyk_profiles[3];
    gsicc_rendering_param_t cmyk_rend_cond[3];
    cmm_profile_t *color_warp_profile;
    gs_memory_t *memory;
    int name_length;
    char *name;
    rc_header rc;
} cmm_srcgtag_profile_t;

typedef struct gsicc_colorname_s gsicc_colorname_t;

struct gsicc_colorname_s {
    char *name;
    int length;
    gsicc_colorname_t *next;
};

typedef struct gsicc_namelist_s gsicc_namelist_t;



typedef struct gs_devicen_color_map_s gs_devicen_color_map;


struct gsicc_namelist_s {
    int count;
    gsicc_colorname_t *head;
    char *name_str;
    gs_devicen_color_map *color_map;
    bool equiv_cmyk_set;




};


typedef struct cmm_dev_profile_s {
        cmm_profile_t *device_profile[4];
        cmm_profile_t *proof_profile;
        cmm_profile_t *link_profile;
        cmm_profile_t *oi_profile;
        gsicc_rendering_param_t rendercond[4];
        bool devicegraytok;
        bool graydetection;
        bool pageneutralcolor;
        bool usefastcolor;
        bool supports_devn;
        bool sim_overprint;
        gsicc_namelist_t *spotnames;
        bool prebandthreshold;
        gs_memory_t *memory;
        rc_header rc;
} cmm_dev_profile_t;
# 282 "./base/gscms.h"
typedef enum {
    DEFAULT_NONE,
    DEFAULT_GRAY,
    DEFAULT_RGB,
    DEFAULT_CMYK,
    NAMED_TYPE,
    LAB_TYPE,
    DEVICEN_TYPE,
    DEFAULT_GRAY_s,
    DEFAULT_RGB_s,
    DEFAULT_CMYK_s,
    LAB_TYPE_s,
    CAL_GRAY,
    CAL_RGB,
    CIE_A,
    CIE_ABC,
    CIE_DEF,
    CIE_DEFG,
    CIE_CRD
} gsicc_profile_t;
# 324 "./base/gscms.h"
typedef struct gsicc_serialized_profile_s {
    unsigned char num_comps; unsigned char num_comps_out; bool islab; bool isdevlink; gsicc_profile_t default_match; gsicc_colorbuffer_t data_cs; gs_range_icc_t Range; int64_t hashcode; bool hash_is_valid; int devicen_permute[15]; bool devicen_permute_needed; int buffer_size; bool rend_is_valid; gsicc_rendering_param_t rend_cond;
} gsicc_serialized_profile_t;




struct cmm_profile_s {
    unsigned char num_comps; unsigned char num_comps_out; bool islab; bool isdevlink; gsicc_profile_t default_match; gsicc_colorbuffer_t data_cs; gs_range_icc_t Range; int64_t hashcode; bool hash_is_valid; int devicen_permute[15]; bool devicen_permute_needed; int buffer_size; bool rend_is_valid; gsicc_rendering_param_t rend_cond;
    byte *buffer;
    gx_device *dev;
    gsicc_namelist_t *spotnames;
    void *profile_handle;
    rc_header rc;
    int name_length;
    char *name;




    gs_memory_t *memory;
    gx_monitor_t *lock;
};
# 371 "./base/gscms.h"
typedef struct gsicc_profile_entry_s gsicc_profile_entry_t;

struct gsicc_profile_entry_s {
    gs_color_space *color_space;
    gsicc_profile_entry_t *next;
    int64_t key;
};



typedef struct gsicc_profile_cache_s {
    gsicc_profile_entry_t *head;
    int num_entries;
    rc_header rc;
    gs_memory_t *memory;
} gsicc_profile_cache_t;




typedef enum {
    DEVICETYPE,
    ICCTYPE,
    CRDTYPE,
    CIEATYPE,
    CIEABCTYPE,
    CIEDEFTYPE,
    CIEDEFGTYPE
} gs_colortype_t;
# 408 "./base/gscms.h"
typedef struct gsicc_hashlink_s {
    int64_t link_hashcode;
    int64_t src_hash;
    int64_t des_hash;
    int64_t rend_hash;
} gsicc_hashlink_t;

struct gsicc_link_s {
    void *link_handle;
    gscms_procs_t procs;
    gsicc_hashlink_t hashcode;
    struct gsicc_link_cache_s *icc_link_cache;
    int ref_count;
    gsicc_link_t *next;
    gx_semaphore_t *wait;
    int num_waiting;
    bool includes_softproof;
    bool includes_devlink;
    bool is_identity;
    bool valid;
    bool is_monitored;
    gscms_procs_t orig_procs;
    gsicc_colorbuffer_t data_cs;
    int num_input;
    int num_output;
};






typedef struct gsicc_link_cache_s {
    gsicc_link_t *head;
    int num_links;
    rc_header rc;
    gs_memory_t *memory;
    gx_monitor_t *lock;
    gx_semaphore_t *wait;
    int num_waiting;
} gsicc_link_cache_t;
# 467 "./base/gscms.h"
typedef struct gsicc_devicen_entry_s gsicc_devicen_entry_t;

struct gsicc_devicen_entry_s {
    cmm_profile_t *iccprofile;
    gsicc_devicen_entry_t *next;
};

typedef struct gsicc_devicen_s gsicc_devicen_t;

struct gsicc_devicen_s {
    gsicc_devicen_entry_t *head;
    gsicc_devicen_entry_t *final;
    int count;
};





typedef struct gsicc_smask_s {
    cmm_profile_t *smask_gray;
    cmm_profile_t *smask_rgb;
    cmm_profile_t *smask_cmyk;
    gs_memory_t *memory;
    bool swapped;
} gsicc_smask_t;



typedef struct gsicc_manager_s {
    cmm_profile_t *device_named;
    cmm_profile_t *default_gray;
    cmm_profile_t *default_rgb;
    cmm_profile_t *default_cmyk;
    cmm_profile_t *lab_profile;
    cmm_profile_t *graytok_profile;
    gsicc_devicen_t *device_n;
    gsicc_smask_t *smask_profiles;
    bool override_internal;
    cmm_srcgtag_profile_t *srcgtag_profile;
    gs_memory_t *memory;
    rc_header rc;
} gsicc_manager_t;
# 42 "./base/gxdevcli.h" 2
# 1 "./base/gxrplane.h" 1
# 32 "./base/gxrplane.h"
typedef struct gx_render_plane_s {
    int depth;
    int shift;
    int index;
} gx_render_plane_t;
# 45 "./base/gxrplane.h"
int gx_render_plane_init(gx_render_plane_t *render_plane,
                         const gx_device *dev, int index);
# 43 "./base/gxdevcli.h" 2
# 139 "./base/gxdevcli.h"
typedef struct gx_fill_params_s gx_fill_params;



typedef struct gx_stroke_params_s gx_stroke_params;







typedef struct patch_fill_state_s patch_fill_state_t;






typedef struct gx_image_enum_common_s gx_image_enum_common_t;






typedef struct gs_pattern1_instance_s gs_pattern1_instance_t;



typedef gx_device_color gx_drawing_color;



typedef enum {
    go_text,
    go_graphics
} graphics_object_type;


typedef struct gs_fixed_edge_s {
    gs_fixed_point start;
    gs_fixed_point end;
} gs_fixed_edge;




typedef struct gs_get_bits_params_s gs_get_bits_params_t;



typedef struct gx_device_anti_alias_info_s {
    int text_bits;
    int graphics_bits;
} gx_device_anti_alias_info;

typedef int32_t frac31;




typedef struct gs_linear_color_edge_s {
    gs_fixed_point start;
    gs_fixed_point end;
    const frac31 *c0, *c1;
    fixed clip_x;
} gs_linear_color_edge;
# 234 "./base/gxdevcli.h"
typedef enum {
    GX_CINFO_UNKNOWN_SEP_LIN = -1,
    GX_CINFO_SEP_LIN_NONE = 0,
    GX_CINFO_SEP_LIN
} gx_color_enc_sep_lin_t;
# 262 "./base/gxdevcli.h"
typedef enum {
    GX_CINFO_OPMODE_UNKNOWN = -1,
    GX_CINFO_OPMODE_NOT = 0,
    GX_CINFO_OPMODE = 1,
    GX_CINFO_OPMODE_RGB,
    GC_CINFO_OPMODE_RGB_SET
} gx_cm_opmode_t;
# 297 "./base/gxdevcli.h"
typedef struct gx_device_color_info_s {






    int max_components;







    int num_components;







    gx_color_polarity_t polarity;







    ushort depth;
# 356 "./base/gxdevcli.h"
    byte gray_index;
# 378 "./base/gxdevcli.h"
    uint max_gray;
    uint max_color;

    uint dither_grays;
    uint dither_colors;





    gx_device_anti_alias_info anti_alias;
# 426 "./base/gxdevcli.h"
    gx_color_enc_sep_lin_t separable_and_linear;
    byte comp_shift[(8 * 8)];
    byte comp_bits[(8 * 8)];
    gx_color_index comp_mask[(8 * 8)];




    const char * cm_name;
# 452 "./base/gxdevcli.h"
    gx_cm_opmode_t opmode;
    gx_color_index process_comps;
    int black_component;} gx_device_color_info;
# 616 "./base/gxdevcli.h"
typedef struct gx_device_procs_s gx_device_procs;



typedef struct gx_page_device_procs_s {



    int (*install)(gx_device *dev, gs_state *pgs);



    int (*begin_page)(gx_device *dev, gs_state *pgs);



    int (*end_page)(gx_device *dev, int reason, gs_state *pgs);

} gx_page_device_procs;


int gx_default_install(gx_device *dev, gs_state *pgs);
int gx_default_begin_page(gx_device *dev, gs_state *pgs);
int gx_default_end_page(gx_device *dev, int reason, gs_state *pgs);
# 651 "./base/gxdevcli.h"
typedef struct gx_stroked_gradient_recognizer_s {
    bool stroke_stored;
    gs_fixed_point orig[4], adjusted[4];
} gx_stroked_gradient_recognizer_t;
# 683 "./base/gxdevcli.h"
typedef struct gx_device_cached_colors_s {
    gx_color_index black, white;
} gx_device_cached_colors_t;







typedef struct gx_band_params_s {
    int BandWidth;
    int BandHeight;
    long BandBufferSpace;
} gx_band_params_t;



typedef enum {
    BandingAuto = 0,
    BandingAlways,
    BandingNever
} gdev_banding_type;




typedef struct gdev_space_params_s {
    long MaxBitmap;
    long BufferSpace;
    gx_band_params_t band;
    bool params_are_read_only;
    gdev_banding_type banding_type;
} gdev_space_params;
# 1290 "./base/gxdevcli.h"
typedef enum {
    pattern_manage__can_accum,
    pattern_manage__start_accum,
    pattern_manage__finish_accum,
    pattern_manage__load,
    pattern_manage__shading_area,
    pattern_manage__is_cpath_accum,
    pattern_manage__shfill_doesnt_need_path,
    pattern_manage__handles_clip_path
} pattern_manage_t;
# 1343 "./base/gxdevcli.h"
typedef struct gs_fill_attributes_s {
      const gs_fixed_rect *clip;
      bool swap_axes;
      const gx_device_halftone *ht;
      gs_logical_operation_t lop;
      fixed ystart, yend;
      patch_fill_state_t *pfs;
} gs_fill_attributes;
# 1423 "./base/gxdevcli.h"
typedef struct gs_devn_params_s gs_devn_params;
# 1507 "./base/gxdevcli.h"
typedef struct gx_process_page_options_s gx_process_page_options_t;

struct gx_process_page_options_s
{
    int (*init_buffer_fn)(void *arg, gx_device *dev, gs_memory_t *memory, int w, int h, void **buffer);
    void (*free_buffer_fn)(void *arg, gx_device *dev, gs_memory_t *memory, void *buffer);
    int (*process_fn)(void *arg, gx_device *dev, gx_device *bdev, const gs_int_rect *rect, void *buffer);
    int (*output_fn)(void *arg, gx_device *dev, void *buffer);
    void *arg;
    int options;
};
# 1613 "./base/gxdevcli.h"
typedef struct gx_image_plane_s {
    const byte *data;
    int data_x;
    uint raster;
} gx_image_plane_t;
# 1631 "./base/gxdevcli.h"
int gx_image_data(gx_image_enum_common_t *info, const byte **planes,
                  int data_x, uint raster, int height);




int gx_image_plane_data(gx_image_enum_common_t *info,
                        const gx_image_plane_t *planes, int height);
int gx_image_plane_data_rows(gx_image_enum_common_t *info,
                             const gx_image_plane_t *planes, int height,
                             int *rows_used);
int gx_image_flush(gx_image_enum_common_t *info);
bool gx_image_planes_wanted(const gx_image_enum_common_t *info, byte *wanted);
int gx_image_end(gx_image_enum_common_t *info, bool draw_last);
# 1661 "./base/gxdevcli.h"
struct gx_device_procs_s { int (*open_device)(gx_device *dev); void (*get_initial_matrix)(gx_device *dev, gs_matrix *pmat); int (*sync_output)(gx_device *dev); int (*output_page)(gx_device *dev, int num_copies, int flush); int (*close_device)(gx_device *dev); gx_color_index (*map_rgb_color)(gx_device *dev, const gx_color_value cv[]); int (*map_color_rgb)(gx_device *dev, gx_color_index color, gx_color_value rgb[3]); int (*fill_rectangle)(gx_device *dev, int x, int y, int width, int height, gx_color_index color); int (*tile_rectangle)(gx_device *dev, const gx_tile_bitmap *tile, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1, int phase_x, int phase_y); int (*copy_mono)(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1); int (*copy_color)(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height); int (*obsolete_draw_line)(gx_device *dev, int x0, int y0, int x1, int y1, gx_color_index color); int (*get_bits)(gx_device *dev, int y, byte *data, byte **actual_data); int (*get_params)(gx_device *dev, gs_param_list *plist); int (*put_params)(gx_device *dev, gs_param_list *plist); gx_color_index (*map_cmyk_color)(gx_device *dev, const gx_color_value cv[]); const gx_xfont_procs *(*get_xfont_procs)(gx_device *dev); gx_device *(*get_xfont_device)(gx_device *dev); gx_color_index (*map_rgb_alpha_color)(gx_device *dev, gx_color_value red, gx_color_value green, gx_color_value blue, gx_color_value alpha); gx_device *(*get_page_device)(gx_device *dev); int (*get_alpha_bits)(gx_device *dev, graphics_object_type type); int (*copy_alpha)(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color, int depth); int (*get_band)(gx_device *dev, int y, int *band_start); int (*copy_rop)(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_tile_bitmap *texture, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop); int (*fill_path)(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_fill_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath); int (*stroke_path)(gx_device *dev, const gs_imager_state *pis, gx_path *ppath, const gx_stroke_params *params, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath); int (*fill_mask)(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, const gx_drawing_color *pdcolor, int depth, gs_logical_operation_t lop, const gx_clip_path *pcpath); int (*fill_trapezoid)(gx_device *dev, const gs_fixed_edge *left, const gs_fixed_edge *right, fixed ybot, fixed ytop, bool swap_axes, const gx_drawing_color *pdcolor, gs_logical_operation_t lop); int (*fill_parallelogram)(gx_device *dev, fixed px, fixed py, fixed ax, fixed ay, fixed bx, fixed by, const gx_drawing_color *pdcolor, gs_logical_operation_t lop); int (*fill_triangle)(gx_device *dev, fixed px, fixed py, fixed ax, fixed ay, fixed bx, fixed by, const gx_drawing_color *pdcolor, gs_logical_operation_t lop); int (*draw_thin_line)(gx_device *dev, fixed fx0, fixed fy0, fixed fx1, fixed fy1, const gx_drawing_color *pdcolor, gs_logical_operation_t lop, fixed adjustx, fixed adjusty); int (*begin_image)(gx_device *dev, const gs_imager_state *pis, const gs_image_t *pim, gs_image_format_t format, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo); int (*image_data)(gx_device *dev, gx_image_enum_common_t *info, const byte **planes, int data_x, uint raster, int height); int (*end_image)(gx_device *dev, gx_image_enum_common_t *info, bool draw_last); int (*strip_tile_rectangle)(gx_device *dev, const gx_strip_bitmap *tiles, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1, int phase_x, int phase_y); int (*strip_copy_rop)(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop); void (*get_clipping_box)(gx_device *dev, gs_fixed_rect *pbox); int (*begin_typed_image)(gx_device *dev, const gs_imager_state *pis, const gs_matrix *pmat, const gs_image_common_t *pim, const gs_int_rect *prect, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gx_image_enum_common_t **pinfo); int (*get_bits_rectangle)(gx_device *dev, const gs_int_rect *prect, gs_get_bits_params_t *params, gs_int_rect **unread); int (*map_color_rgb_alpha)(gx_device *dev, gx_color_index color, gx_color_value rgba[4]); int (*create_compositor)(gx_device *dev, gx_device **pcdev, const gs_composite_t *pcte, gs_imager_state *pis, gs_memory_t *memory, gx_device *cdev); int (*get_hardware_params)(gx_device *dev, gs_param_list *plist); int (*text_begin)(gx_device *dev, gs_imager_state *pis, const gs_text_params_t *text, gs_font *font, gx_path *path, const gx_device_color *pdcolor, const gx_clip_path *pcpath, gs_memory_t *memory, gs_text_enum_t **ppte); int (*finish_copydevice)(gx_device *dev, const gx_device *from_dev); int (*begin_transparency_group)(gx_device *dev, const gs_transparency_group_params_t *ptgp, const gs_rect *pbbox, gs_imager_state *pis, gs_memory_t *mem); int (*end_transparency_group)(gx_device *dev, gs_imager_state *pis); int (*begin_transparency_mask)(gx_device *dev, const gx_transparency_mask_params_t *ptmp, const gs_rect *pbbox, gs_imager_state *pis, gs_memory_t *mem); int (*end_transparency_mask)(gx_device *dev, gs_imager_state *pis); int (*discard_transparency_layer)(gx_device *dev, gs_imager_state *pis); const gx_cm_color_map_procs * ((*get_color_mapping_procs))(const gx_device * dev); int ((*get_color_comp_index))(gx_device * dev, const char * pname, int name_size, int component_type); gx_color_index ((*encode_color))(gx_device * dev, const gx_color_value colors[]); int ((*decode_color))(gx_device * dev, gx_color_index cindex, gx_color_value colors[]); int (*pattern_manage)(gx_device *pdev, gx_bitmap_id id, gs_pattern1_instance_t *pinst, pattern_manage_t function); int (*fill_rectangle_hl_color)(gx_device *dev, const gs_fixed_rect *rect, const gs_imager_state *pis, const gx_drawing_color *pdcolor, const gx_clip_path *pcpath); int (*include_color_space)(gx_device *dev, gs_color_space *cspace, const byte *res_name, int name_length); int (*fill_linear_color_scanline)(gx_device *dev, const gs_fill_attributes *fa, int i, int j, int w, const frac31 *c0, const int32_t *c0_f, const int32_t *cg_num, int32_t cg_den ); int (*fill_linear_color_trapezoid)(gx_device *dev, const gs_fill_attributes *fa, const gs_fixed_point *p0, const gs_fixed_point *p1, const gs_fixed_point *p2, const gs_fixed_point *p3, const frac31 *c0, const frac31 *c1, const frac31 *c2, const frac31 *c3); int (*fill_linear_color_triangle)(gx_device *dev, const gs_fill_attributes *fa, const gs_fixed_point *p0, const gs_fixed_point *p1, const gs_fixed_point *p2, const frac31 *c0, const frac31 *c1, const frac31 *c2); int (*update_spot_equivalent_colors)(gx_device *dev, const gs_state * pgs); gs_devn_params * (*ret_devn_params)(gx_device *dev); int (*fillpage)(gx_device *dev, gs_imager_state * pis, gx_device_color *pdevc); int (*push_transparency_state)(gx_device *dev, gs_imager_state *pis); int (*pop_transparency_state)(gx_device *dev, gs_imager_state *pis); int (*put_image)(gx_device *dev, const byte *buffer, int num_chan, int x, int y, int width, int height, int row_stride, int plane_stride, int alpha_plane_index, int tag_plane_index); int (*dev_spec_op)(gx_device *dev, int op, void *data, int datasize); int (*copy_planes)(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, int plane_height); int (*get_profile)(gx_device *dev, cmm_dev_profile_t **dev_profile); void (*set_graphics_type_tag)(gx_device *dev, gs_graphics_type_tag_t); int (*strip_copy_rop2)(gx_device *dev, const byte *sdata, int sourcex, uint sraster, gx_bitmap_id id, const gx_color_index *scolors, const gx_strip_bitmap *textures, const gx_color_index *tcolors, int x, int y, int width, int height, int phase_x, int phase_y, gs_logical_operation_t lop, uint planar_height); int (*strip_tile_rect_devn)(gx_device *dev, const gx_strip_bitmap *tiles, int x, int y, int width, int height, const gx_drawing_color *pdcolor0, const gx_drawing_color *pdcolor1, int phase_x, int phase_y); int (*copy_alpha_hl_color)(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, const gx_drawing_color *pdcolor, int depth); int (*process_page)(gx_device *dev, gx_process_page_options_t *options);};
# 1677 "./base/gxdevcli.h"
int gx_copy_mono_unaligned(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color0, gx_color_index color1);
int gx_copy_color_unaligned(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height);
int gx_copy_alpha_unaligned(gx_device *dev, const byte *data, int data_x, int raster, gx_bitmap_id id, int x, int y, int width, int height, gx_color_index color, int depth);


struct gx_device_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs;
};

extern const gs_memory_struct_type_t st_device;
void gx_device_finalize(const gs_memory_t *cmem, void *ptr);
# 1697 "./base/gxdevcli.h"
gx_device *gx_device_enum_ptr(gx_device *);
gx_device *gx_device_reloc_ptr(gx_device *, gc_state_t *);



typedef gx_color_index (*dev_proc_map_rgb_color_t)(gx_device *dev, const gx_color_value cv[]);
typedef int (*dev_proc_map_color_rgb_t)(gx_device *dev, gx_color_index color, gx_color_value rgb[3]);
# 1716 "./base/gxdevcli.h"
typedef struct gx_device_forward_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target;
} gx_device_forward;

extern const gs_memory_struct_type_t st_device_forward;
# 1730 "./base/gxdevcli.h"
typedef struct gx_device_null_s gx_device_null;

struct gx_device_null_s {
    int params_size; const gx_device_procs *static_procs; const char *dname; gs_memory_t *memory; gs_memory_type_ptr_t stype; bool stype_is_dynamic; void (*finalize)(gx_device *); rc_header rc; bool retained; bool is_open; int max_fill_band; gx_device_color_info color_info; gx_device_cached_colors_t cached_colors; int width; int height; int pad; int log2_align_mod; int is_planar; int LeadingEdge; float MediaSize[2]; float ImagingBBox[4]; bool ImagingBBox_set; float HWResolution[2]; float MarginsHWResolution[2]; float Margins[2]; float HWMargins[4]; long PageCount; long ShowpageCount; int NumCopies; bool NumCopies_set; bool IgnoreNumCopies; bool UseCIEColor; bool LockSafetyParams; long band_offset_x; long band_offset_y; gx_stroked_gradient_recognizer_t sgr; int MaxPatternBitmap; bool page_uses_transparency; gdev_space_params space_params; cmm_dev_profile_t *icc_struct; gs_graphics_type_tag_t graphics_type_tag; gx_page_device_procs page_procs; gx_device_procs procs; gx_device *target;
};
extern const gx_device_null gs_null_device;



extern const gs_memory_struct_type_t st_device_null;
# 1753 "./base/gxdevcli.h"
void gx_device_init(gx_device * dev, const gx_device * proto,
                    gs_memory_t * mem, bool internal);






void gx_device_init_on_stack(gx_device * dev, const gx_device * proto,
                             gs_memory_t * mem);




void gs_make_null_device(gx_device_null *dev_null, gx_device *target,
                         gs_memory_t *mem);

bool gs_is_null_device(gx_device *dev);


void gx_device_set_target(gx_device_forward *fdev, gx_device *target);


void gx_device_retain(gx_device *dev, bool retained);



uint gx_device_raster(const gx_device * dev, bool pad_to_word);



uint gx_device_raster_chunky(const gx_device * dev, bool pad);



uint gx_device_raster_plane(const gx_device * dev, const gx_render_plane_t *render_plane);





int gx_device_adjust_resolution(gx_device * dev, int actual_width, int actual_height, int fit);



void gx_device_set_margins(gx_device * dev, const float *margins ,
                           bool move_origin);


void gx_device_set_width_height(gx_device * dev, int width, int height);


void gx_device_set_resolution(gx_device * dev, double x_dpi, double y_dpi);


void gx_device_set_media_size(gx_device * dev, double media_width, double media_height);
# 1818 "./base/gxdevcli.h"
void gx_set_device_only(gs_state *, gx_device *);


int gs_closedevice(gx_device *);


void gx_device_free_local(gx_device *);






typedef struct gx_device_type_s {
    gs_memory_type_ptr_t stype;
    int (*initialize)(gx_device *);
} gx_device_type;
# 25 "./base/gxblend.h" 2
# 41 "./base/gxblend.h"
typedef bits16 ArtPixMaxDepth;





typedef struct pdf14_device_s pdf14_device;




typedef struct pdf14_buf_s pdf14_buf;
# 62 "./base/gxblend.h"
    typedef struct gs_separations_s gs_separations;
# 74 "./base/gxblend.h"
typedef struct {



    void (* blend_luminosity)(int n_chan, byte *dst,
                    const byte *backdrop, const byte *src);



    void (* blend_saturation)(int n_chan, byte *dst,
                    const byte *backdrop, const byte *src);
} pdf14_nonseparable_blending_procs_s;

typedef pdf14_nonseparable_blending_procs_s
                pdf14_nonseparable_blending_procs_t;





typedef struct {

    pdf14_nonseparable_blending_procs_t device_procs;
    gx_device_procs color_mapping_procs;

} pdf14_parent_cs_params_s;

typedef pdf14_parent_cs_params_s pdf14_parent_cs_params_t;


void smask_luminosity_mapping(int num_rows, int num_cols, int n_chan, int row_stride,
                         int plane_stride, byte *src, const byte *des, bool isadditive,
                            gs_transparency_mask_subtype_t SMask_SubType);
void smask_blend(byte *src, int width, int height, int rowstride,
                 int planestride);

void smask_copy(int num_rows, int num_cols, int row_stride,
                         byte *src, const byte *des);
void smask_icc(gx_device *dev, int num_rows, int num_cols, int n_chan,
               int row_stride, int plane_stride, byte *src, const byte *des,
               gsicc_link_t *icclink);
# 140 "./base/gxblend.h"
void
art_blend_pixel(ArtPixMaxDepth * dst, const ArtPixMaxDepth * backdrop,
                const ArtPixMaxDepth * src, int n_chan,
                gs_blend_mode_t blend_mode);
# 171 "./base/gxblend.h"
void
art_blend_pixel_8(byte *dst, const byte *backdrop,
                const byte *src, int n_chan, gs_blend_mode_t blend_mode,
                const pdf14_nonseparable_blending_procs_t * pblend_procs);
# 183 "./base/gxblend.h"
byte art_pdf_union_8(byte alpha1, byte alpha2);
# 193 "./base/gxblend.h"
byte art_pdf_union_mul_8(byte alpha1, byte alpha2, byte alpha_mask);
# 216 "./base/gxblend.h"
void
art_pdf_composite_pixel_alpha_8(byte *dst, const byte *src, int n_chan,
        gs_blend_mode_t blend_mode,
        const pdf14_nonseparable_blending_procs_t * pblend_procs);
# 229 "./base/gxblend.h"
void
art_pdf_composite_pixel_alpha_8_fast(byte *dst, const byte *src, int n_chan,
        gs_blend_mode_t blend_mode,
        const pdf14_nonseparable_blending_procs_t * pblend_procs,
        int stride);
# 242 "./base/gxblend.h"
void
art_pdf_composite_pixel_alpha_8_fast_mono(byte *dst, const byte *src,
        gs_blend_mode_t blend_mode,
        const pdf14_nonseparable_blending_procs_t * pblend_procs,
        int stride);
# 258 "./base/gxblend.h"
void
art_pdf_uncomposite_group_8(byte *dst,
                            const byte *backdrop,

                            const byte *src, byte src_alpha_g, int n_chan);
# 281 "./base/gxblend.h"
void
art_pdf_recomposite_group_8(byte *dst, byte *dst_alpha_g,
        const byte *src, byte src_alpha_g, int n_chan,
        byte alpha, gs_blend_mode_t blend_mode,
        const pdf14_nonseparable_blending_procs_t * pblend_procs);
# 301 "./base/gxblend.h"
void
art_pdf_composite_group_8(byte *dst, byte *dst_alpha_g,
        const byte *src, int n_chan, byte alpha, gs_blend_mode_t blend_mode,
        const pdf14_nonseparable_blending_procs_t * pblend_procs);
# 320 "./base/gxblend.h"
void
art_pdf_composite_knockout_group_8(byte *backdrop, byte tos_shape, byte *dst,
        byte *dst_alpha_g, const byte *src, int n_chan, byte alpha,
        gs_blend_mode_t blend_mode,
        const pdf14_nonseparable_blending_procs_t * pblend_procs);
# 337 "./base/gxblend.h"
void
art_pdf_composite_knockout_simple_8(byte *dst,
                                    byte *dst_shape,
                                    byte *dst_tag,
                                    const byte *src, byte tag,
                                    int n_chan, byte opacity);
# 352 "./base/gxblend.h"
void
art_pdf_knockoutisolated_group_8(byte *dst, const byte *src, int n_chan);
# 370 "./base/gxblend.h"
void
art_pdf_composite_knockout_isolated_8(byte *dst,
                                      byte *dst_shape,
                                      byte *dst_tag,
                                      const byte *src,
                                      int n_chan,
                                      byte shape,
                                      byte tag,
                                      byte alpha_mask, byte shape_mask,
                                      bool has_mask);





void art_blend_luminosity_rgb_8(int n_chan, byte *dst, const byte *backdrop,
                           const byte *src);
void art_blend_saturation_rgb_8(int n_chan, byte *dst, const byte *backdrop,
                           const byte *src);

void art_blend_saturation_cmyk_8(int n_chan, byte *dst, const byte *backdrop,
                           const byte *src);
void art_blend_luminosity_cmyk_8(int n_chan, byte *dst, const byte *backdrop,
                           const byte *src);

void art_blend_luminosity_custom_8(int n_chan, byte *dst, const byte *backdrop,
                           const byte *src);
void art_blend_saturation_custom_8(int n_chan, byte *dst, const byte *backdrop,
                           const byte *src);

void pdf14_unpack_additive(int num_comp, gx_color_index color,
                                pdf14_device * p14dev, byte * out);
void pdf14_unpack_subtractive(int num_comp, gx_color_index color,
                                pdf14_device * p14dev, byte * out);

void pdf14_unpack_compressed(int num_comp, gx_color_index color,
                                pdf14_device * p14dev, byte * out);

void pdf14_unpack_custom(int num_comp, gx_color_index color,
                                pdf14_device * p14dev, byte * out);

void pdf14_preserve_backdrop(pdf14_buf *buf, pdf14_buf *tos, bool knockout_buff);

int pdf14_preserve_backdrop_cm(pdf14_buf *buf, cmm_profile_t *group_profile,
                               pdf14_buf *tos, cmm_profile_t *tos_profile,
                               gs_memory_t *memory, gs_imager_state *pis,
                               gx_device *dev, bool knockout_buff);

void pdf14_compose_group(pdf14_buf *tos, pdf14_buf *nos, pdf14_buf *maskbuf,
              int x0, int x1, int y0, int y1, int n_chan, bool additive,
              const pdf14_nonseparable_blending_procs_t * pblend_procs,
              bool overprint, gx_color_index drawn_comps, bool blendspot,
              gs_memory_t *memory);

gx_color_index pdf14_encode_color(gx_device *dev, const gx_color_value colors[]);
gx_color_index pdf14_encode_color_tag(gx_device *dev, const gx_color_value colors[]);

int pdf14_decode_color(gx_device * dev, gx_color_index color, gx_color_value * out);
gx_color_index pdf14_compressed_encode_color(gx_device *dev, const gx_color_value colors[]);
int pdf14_compressed_decode_color(gx_device * dev, gx_color_index color,
                                                        gx_color_value * out);
void pdf14_gray_cs_to_cmyk_cm(gx_device * dev, frac gray, frac out[]);
void pdf14_rgb_cs_to_cmyk_cm(gx_device * dev, const gs_imager_state *pis,
                           frac r, frac g, frac b, frac out[]);
void pdf14_cmyk_cs_to_cmyk_cm(gx_device * dev, frac c, frac m, frac y, frac k, frac out[]);

void gx_build_blended_image_row(byte *buf_ptr, int y, int planestride,
                           int width, int num_comp, byte bg, byte *linebuf);
void gx_blend_image_buffer(byte *buf_ptr, int width, int height,
                      int rowstride, int planestride, int num_comp, byte bg);
int gx_put_blended_image_cmykspot(gx_device *target, byte *buf_ptr,
                      int planestride, int rowstride,
                      int x0, int y0, int width, int height, int num_comp, byte bg,
                      bool has_tags, gs_int_rect rect, gs_separations *pseparations);
int gx_put_blended_image_custom(gx_device *target, byte *buf_ptr,
                      int planestride, int rowstride,
                      int x0, int y0, int width, int height, int num_comp, byte bg);
# 26 "./base/gstrans.h" 2




typedef enum {
    PDF14_PUSH_DEVICE,
    PDF14_POP_DEVICE,
    PDF14_ABORT_DEVICE,
    PDF14_BEGIN_TRANS_GROUP,
    PDF14_END_TRANS_GROUP,
    PDF14_BEGIN_TRANS_MASK,
    PDF14_END_TRANS_MASK,
    PDF14_SET_BLEND_PARAMS,
    PDF14_PUSH_TRANS_STATE,
    PDF14_POP_TRANS_STATE,
    PDF14_PUSH_SMASK_COLOR,
    PDF14_POP_SMASK_COLOR
} pdf14_compositor_operations;
# 75 "./base/gstrans.h"
typedef struct gs_transparency_source_s {
    float alpha;
} gs_transparency_source_t;

struct gs_pdf14trans_params_s {

    pdf14_compositor_operations pdf14_op;
    int num_spot_colors;

    int changed;

    bool Isolated;
    bool Knockout;
    bool image_with_SMask;
    gs_rect bbox;

    gs_transparency_channel_selector_t csel;

    gs_transparency_mask_subtype_t subtype;
    int Background_components;
    bool function_is_identity;
    float Background[(64)];
    float GrayBackground;





    gs_function_t *transfer_function;
    byte transfer_fn[256];

    gs_blend_mode_t blend_mode;
    bool text_knockout;
    gs_transparency_source_t opacity;
    gs_transparency_source_t shape;
    bool mask_is_image;
    gs_matrix ctm;
    bool replacing;
    bool overprint;
    bool overprint_mode;
    bool blendspot;
    bool idle;
    uint mask_id;
    int group_color_numcomps;
    gs_transparency_color_t group_color;
    int64_t icc_hash;
    cmm_profile_t *iccprofile;
    bool crop_blend_params;

    bool is_pattern;
};



typedef struct gs_pdf14trans_params_s gs_pdf14trans_params_t;







typedef struct gs_pdf14trans_s {
    const gs_composite_type_t *type; gs_id id; bool idle; struct gs_composite_s *prev, *next;
    gs_pdf14trans_params_t params;
} gs_pdf14trans_t;


int gs_setblendmode(gs_state *, gs_blend_mode_t);
gs_blend_mode_t gs_currentblendmode(const gs_state *);
int gs_setopacityalpha(gs_state *, double);
float gs_currentopacityalpha(const gs_state *);
int gs_setshapealpha(gs_state *, double);
float gs_currentshapealpha(const gs_state *);
int gs_settextknockout(gs_state *, bool);
bool gs_currenttextknockout(const gs_state *);





int gs_push_pdf14trans_device(gs_state * pgs, bool is_pattern);

int gs_pop_pdf14trans_device(gs_state * pgs, bool is_pattern);

int gs_abort_pdf14trans_device(gs_state * pgs);

void gs_trans_group_params_init(gs_transparency_group_params_t *ptgp);

int gs_update_trans_marking_params(gs_state * pgs);

int gs_begin_transparency_group(gs_state * pgs,
                                const gs_transparency_group_params_t *ptgp,
                                const gs_rect *pbbox);

int gs_end_transparency_group(gs_state *pgs);

void gs_trans_mask_params_init(gs_transparency_mask_params_t *ptmp,
                               gs_transparency_mask_subtype_t subtype);

int gs_begin_transparency_mask(gs_state *pgs,
                               const gs_transparency_mask_params_t *ptmp,
                               const gs_rect *pbbox, bool mask_is_image);

int gs_end_transparency_mask(gs_state *pgs,
                             gs_transparency_channel_selector_t csel);




int gx_begin_transparency_group(gs_imager_state * pis, gx_device * pdev,
                                const gs_pdf14trans_params_t * pparams);

int gx_end_transparency_group(gs_imager_state * pis, gx_device * pdev);

int gx_begin_transparency_mask(gs_imager_state * pis, gx_device * pdev,
                                const gs_pdf14trans_params_t * pparams);

int gx_end_transparency_mask(gs_imager_state * pis, gx_device * pdev,
                                const gs_pdf14trans_params_t * pparams);

int gx_abort_trans_device(gs_imager_state * pis, gx_device * pdev);
# 206 "./base/gstrans.h"
int gs_push_transparency_state(gs_state *pgs);

int gs_pop_transparency_state(gs_state *pgs, bool force);

int gx_push_transparency_state(gs_imager_state * pis, gx_device * pdev);

int gx_pop_transparency_state(gs_imager_state * pis, gx_device * pdev);




int gs_is_pdf14trans_compositor(const gs_composite_t * pct);
# 34 "./base/gxistate.h" 2
# 89 "./base/gxistate.h"
typedef struct gs_halftone_s gs_halftone;
# 116 "./base/gxistate.h"
typedef struct gx_transfer_s {
    int red_component_num;
    gx_transfer_map *red;
    int green_component_num;
    gx_transfer_map *green;
    int blue_component_num;
    gx_transfer_map *blue;
    int gray_component_num;
    gx_transfer_map *gray;
} gx_transfer;
# 213 "./base/gxistate.h"
struct gs_devicen_color_map_s {
    bool use_alt_cspace;
    separation_type sep_type;
    uint num_components;
    uint num_colorants;
    gs_id cspace_id;
    int color_map[(64)];
};
# 229 "./base/gxistate.h"
typedef struct gs_xstate_trans_flags {
    bool xstate_pending;
    bool xstate_change;
} gs_xstate_trans_flags_t;
# 300 "./base/gxistate.h"
struct gs_imager_state_s {
    bool is_gstate; gs_memory_t *memory; void *client_data; gx_line_params line_params; bool hpgl_path_mode; gs_matrix_fixed ctm; bool current_point_valid; gs_point current_point; gs_point subpath_start; bool clamp_coordinates; gs_logical_operation_t log_op; gx_color_value alpha; gs_blend_mode_t blend_mode; gs_transparency_source_t opacity, shape; gs_xstate_trans_flags_t trans_flags; gs_id soft_mask_id; bool text_knockout; uint text_rendering_mode; bool has_transparency; gx_device *trans_device; bool overprint; int overprint_mode; int effective_overprint_mode; bool overprint_alt; int overprint_mode_alt; int effective_overprint_mode_alt; float flatness; gs_fixed_point fill_adjust; bool stroke_adjust; bool accurate_curves; bool have_pattern_streams; float smoothness; int renderingintent; bool blackptcomp; gsicc_manager_t *icc_manager; gsicc_link_cache_t *icc_link_cache; gsicc_profile_cache_t *icc_profile_cache; const gx_color_map_procs * (*get_cmap_procs)(const gs_imager_state *, const gx_device *); gs_halftone *halftone; gs_int_point screen_phase[2]; gx_device_halftone *dev_ht; struct gs_cie_render_s *cie_render; bool cie_to_xyz; gx_transfer_map *black_generation; gx_transfer_map *undercolor_removal; gx_transfer set_transfer; gx_transfer_map *effective_transfer[(8 * 8)]; struct gx_cie_joint_caches_s *cie_joint_caches; const struct gx_color_map_procs_s *cmap_procs; gs_devicen_color_map color_component_map; struct gx_pattern_cache_s *pattern_cache; gs_color_space *devicergb_cs; gs_color_space *devicecmyk_cs; struct gx_cie_joint_caches_s *cie_joint_caches_alt; gs_devicen_color_map color_component_map_alt;
};
# 322 "./base/gxistate.h"
int gs_imager_state_initialize(gs_imager_state * pis, gs_memory_t * mem);



gs_imager_state *
    gs_imager_state_copy(const gs_imager_state * pis, gs_memory_t * mem);


void gs_imager_state_copied(gs_imager_state * pis);


void gs_imager_state_pre_assign(gs_imager_state *to,
                                const gs_imager_state *from);


void gs_imager_state_release(gs_imager_state * pis);
int gs_currentscreenphase_pis(const gs_imager_state *, gs_int_point *, gs_color_select_t);
# 127 "./base/gsicc_create.c" 2


# 1 "./base/gscie.h" 1
# 27 "./base/gscie.h"
# 1 "./base/gxctable.h" 1
# 39 "./base/gxctable.h"
typedef struct gx_color_lookup_table_s {
    int n;
    int dims[4];
    int m;
    const gs_const_string *table;
} gx_color_lookup_table;
# 54 "./base/gxctable.h"
void gx_color_interpolate_nearest(const fixed * pi,
                            const gx_color_lookup_table * pclt, frac * pv);


void gx_color_interpolate_linear(const fixed * pi,
                            const gx_color_lookup_table * pclt, frac * pv);
# 28 "./base/gscie.h" 2
# 144 "./base/gscie.h"
typedef float cie_cached_value;
# 159 "./base/gscie.h"
typedef struct gs_cie_render_s gs_cie_render;
# 179 "./base/gscie.h"
typedef struct gs_vector3_s {
    float u, v, w;
} gs_vector3;


typedef struct gs_matrix3_s {
    gs_vector3 cu, cv, cw;
    bool is_identity;
} gs_matrix3;



typedef gs_range_t gs_range;
typedef struct gs_range3_s {
    gs_range ranges[3];
} gs_range3;
typedef struct gs_range4_s {
    gs_range ranges[4];
} gs_range4;


typedef struct gs_cie_common_s gs_cie_common;
typedef struct gs_cie_wbsd_s gs_cie_wbsd;

typedef float (*gs_cie_a_proc) (double, const gs_cie_a *);

typedef float (*gs_cie_abc_proc) (double, const gs_cie_abc *);
typedef struct gs_cie_abc_proc3_s {
    gs_cie_abc_proc procs[3];
} gs_cie_abc_proc3;

typedef float (*gs_cie_def_proc) (double, const gs_cie_def *);
typedef struct gs_cie_def_proc3_s {
    gs_cie_def_proc procs[3];
} gs_cie_def_proc3;

typedef float (*gs_cie_defg_proc) (double, const gs_cie_defg *);
typedef struct gs_cie_defg_proc4_s {
    gs_cie_defg_proc procs[4];
} gs_cie_defg_proc4;

typedef float (*gs_cie_common_proc) (double, const gs_cie_common *);
typedef struct gs_cie_common_proc3_s {
    gs_cie_common_proc procs[3];
} gs_cie_common_proc3;

typedef float (*gs_cie_render_proc) (double, const gs_cie_render *);
typedef struct gs_cie_render_proc3_s {
    gs_cie_render_proc procs[3];
} gs_cie_render_proc3;
# 254 "./base/gscie.h"
typedef int (*gs_cie_transform_proc)(int, double, const gs_cie_wbsd *,
                                     gs_cie_render *, float *);
typedef struct gs_cie_transform_proc3_s {
    gs_cie_transform_proc proc;
    const char *proc_name;
    gs_const_string proc_data;
    const char *driver_name;
} gs_cie_transform_proc3;

typedef frac(*gs_cie_render_table_proc) (byte, const gs_cie_render *);
typedef struct gs_cie_render_table_procs_s {
    gs_cie_render_table_proc procs[4];
} gs_cie_render_table_procs;


typedef struct gs_cie_wb_s {
    gs_vector3 WhitePoint;
    gs_vector3 BlackPoint;
} gs_cie_wb;
# 318 "./base/gscie.h"
typedef struct cie_linear_params_s {
    bool is_linear;
    float scale, origin;
} cie_linear_params_t;
typedef struct cie_cache_params_s {
    bool is_identity;
    double base, factor;
    cie_linear_params_t linear;
} cie_cache_params;
typedef struct cie_cache_floats_s {
    cie_cache_params params;
    float values[(1 << 9)];
} cie_cache_floats;
typedef struct cie_cache_fracs_s {
    cie_cache_params params;
    frac values[(1 << 9)];
} cie_cache_fracs;
typedef struct cie_cache_ints_s {
    cie_cache_params params;
    int values[(1 << 9)];
} cie_cache_ints;
typedef union gx_cie_scalar_cache_s {
    cie_cache_floats floats;
    cie_cache_fracs fracs;
    cie_cache_ints ints;
} gx_cie_scalar_cache;

typedef struct cie_cached_vector3_s {
    cie_cached_value u, v, w;
} cie_cached_vector3;
typedef struct cie_interpolation_range_s {
    cie_cached_value rmin, rmax;
} cie_interpolation_range_t;
typedef struct cie_vector_cache_params_s {
    cie_cached_value base, factor, limit;
    cie_interpolation_range_t interpolation_ranges[3];
} cie_vector_cache_params;
typedef struct cie_cache_vectors_s {
    cie_vector_cache_params params;
    cie_cached_vector3 values[(1 << 9)];
} cie_cache_vectors;
typedef struct gx_cie_vector_cache_s {
    cie_cache_floats floats;
    cie_cache_vectors vecs;
} gx_cie_vector_cache;
typedef struct gx_cie_vector_cache3_s {
    gx_cie_vector_cache caches[3];
    cie_interpolation_range_t interpolation_ranges[3];
} gx_cie_vector_cache3_t;




struct gs_cie_common_s {
    int (*install_cspace)(gs_color_space *, gs_state *);
    void *client_data;
    gs_range3 RangeLMN;
    gs_cie_common_proc3 DecodeLMN;
    gs_matrix3 MatrixLMN;
    gs_cie_wb points;

    struct {
        gx_cie_scalar_cache DecodeLMN[3];
    } caches;
};
# 394 "./base/gscie.h"
typedef struct gs_cie_common_elements_s {
    gs_cie_common common; rc_header rc;
} gs_cie_common_elements_t;
# 409 "./base/gscie.h"
struct gs_cie_a_s {
    gs_cie_common common; rc_header rc;
    gs_range RangeA;
    gs_cie_a_proc DecodeA;
    gs_vector3 MatrixA;

    struct {
        gx_cie_vector_cache DecodeA;
    } caches;
};
# 439 "./base/gscie.h"
struct gs_cie_abc_s {
    gs_cie_common common; rc_header rc; gs_range3 RangeABC; gs_cie_abc_proc3 DecodeABC; gs_matrix3 MatrixABC; struct { bool skipABC; gx_cie_vector_cache3_t DecodeABC; } caches;
};







struct gs_cie_def_s {
    gs_cie_common common; rc_header rc; gs_range3 RangeABC; gs_cie_abc_proc3 DecodeABC; gs_matrix3 MatrixABC; struct { bool skipABC; gx_cie_vector_cache3_t DecodeABC; } caches;
    gs_range3 RangeDEF;
    gs_cie_def_proc3 DecodeDEF;
    gs_range3 RangeHIJ;
    gx_color_lookup_table Table;
    struct {
        gx_cie_scalar_cache DecodeDEF[3];
    } caches_def;
};







struct gs_cie_defg_s {
    gs_cie_common common; rc_header rc; gs_range3 RangeABC; gs_cie_abc_proc3 DecodeABC; gs_matrix3 MatrixABC; struct { bool skipABC; gx_cie_vector_cache3_t DecodeABC; } caches;
    gs_range4 RangeDEFG;
    gs_cie_defg_proc4 DecodeDEFG;
    gs_range4 RangeHIJK;
    gx_color_lookup_table Table;
    struct {
        gx_cie_scalar_cache DecodeDEFG[4];
    } caches_defg;
};
# 487 "./base/gscie.h"
extern const gs_range3 Range3_default;
extern const gs_range4 Range4_default;
extern const gs_cie_defg_proc4 DecodeDEFG_default;
extern const gs_cie_defg_proc4 DecodeDEFG_from_cache;
extern const gs_cie_def_proc3 DecodeDEF_default;
extern const gs_cie_def_proc3 DecodeDEF_from_cache;
extern const gs_cie_abc_proc3 DecodeABC_default;
extern const gs_cie_abc_proc3 DecodeABC_from_cache;
extern const gs_cie_common_proc3 DecodeLMN_default;
extern const gs_cie_common_proc3 DecodeLMN_from_cache;
extern const gs_matrix3 Matrix3_default;
extern const gs_range RangeA_default;
extern const gs_cie_a_proc DecodeA_default;
extern const gs_cie_a_proc DecodeA_from_cache;
extern const gs_vector3 MatrixA_default;
extern const gs_vector3 BlackPoint_default;
extern const gs_cie_render_proc3 Encode_default;
extern const gs_cie_render_proc3 EncodeLMN_from_cache;
extern const gs_cie_render_proc3 EncodeABC_from_cache;
extern const gs_cie_transform_proc3 TransformPQR_default;
extern const gs_cie_transform_proc3 TransformPQR_from_cache;
extern const gs_cie_transform_proc TransformPQR_lookup_proc_name;
extern const gs_cie_render_table_procs RenderTableT_default;
extern const gs_cie_render_table_procs RenderTableT_from_cache;



struct gs_cie_wbsd_s {
    struct {
        gs_vector3 xyz, pqr;
    } ws, bs, wd, bd;
};
typedef struct gs_cie_render_table_s {





    gx_color_lookup_table lookup;
    gs_cie_render_table_procs T;
} gs_cie_render_table_t;
typedef enum {
    CIE_RENDER_STATUS_BUILT,
    CIE_RENDER_STATUS_INITED,
    CIE_RENDER_STATUS_SAMPLED,
    CIE_RENDER_STATUS_COMPLETED
} cie_render_status_t;

typedef struct gx_cie_float_fixed_cache_s {
    cie_cache_floats floats;
    union if_ {
        cie_cache_fracs fracs;
        cie_cache_ints ints;
    } fixeds;
} gx_cie_float_fixed_cache;


struct gs_cie_render_s {
    cie_render_status_t status;
    rc_header rc;
    gs_id id;
    void *client_data;
    gs_cie_wb points;
    gs_matrix3 MatrixPQR;
    gs_range3 RangePQR;
    gs_cie_transform_proc3 TransformPQR;
    gs_matrix3 MatrixLMN;
    gs_cie_render_proc3 EncodeLMN;
    gs_range3 RangeLMN;
    gs_matrix3 MatrixABC;
    gs_cie_render_proc3 EncodeABC;
    gs_range3 RangeABC;
    gs_cie_render_table_t RenderTable;

    gs_range3 DomainLMN;
    gs_range3 DomainABC;
    gs_matrix3 MatrixABCEncode;
    cie_cached_value EncodeABC_base[3];
    gs_matrix3 MatrixPQR_inverse_LMN;
    gs_vector3 wdpqr, bdpqr;
    struct {
        gx_cie_vector_cache3_t EncodeLMN;
        gx_cie_float_fixed_cache EncodeABC[3];
        gx_cie_scalar_cache RenderTableT[4];
        bool RenderTableT_is_identity;
    } caches;
};


extern const gs_memory_struct_type_t st_cie_render1;
# 585 "./base/gscie.h"
typedef enum {
    CIE_JC_STATUS_BUILT,
    CIE_JC_STATUS_INITED,
    CIE_JC_STATUS_COMPLETED
} cie_joint_caches_status_t;
# 601 "./base/gscie.h"
struct gx_cie_joint_caches_s {
# 626 "./base/gscie.h"
    gs_id cspace_id;
    gs_id render_id;
    cie_joint_caches_status_t id_status;
    cie_joint_caches_status_t status;
    rc_header rc;
    int (*remap_finish)(cie_cached_vector3 vec3, frac *pconc, float *xyz, const gs_imager_state *pis, const gs_color_space *pcs);
    bool skipDecodeABC;
    bool skipDecodeLMN;
    gx_cie_vector_cache3_t DecodeLMN;
    gs_cie_wbsd points_sd;
    bool skipPQR;
    gx_cie_vector_cache3_t TransformPQR;
    bool skipEncodeLMN;
};



typedef struct gx_cie_joint_caches_s gx_cie_joint_caches;
# 669 "./base/gscie.h"
typedef struct gs_sample_loop_params_s {
    float A, B;
    int N;
} gs_sample_loop_params_t;


void gs_cie_cache_init(cie_cache_params *, gs_sample_loop_params_t *,
                       const gs_range *, client_name_t);

void gs_cie_cache_to_fracs(const cie_cache_floats *, cie_cache_fracs *);
void gs_cie_defg_complete(gs_cie_defg *);
void gs_cie_def_complete(gs_cie_def *);
void gs_cie_abc_complete(gs_cie_abc *);
void gs_cie_a_complete(gs_cie_a *);
gx_cie_joint_caches *gx_unshare_cie_caches(gs_state *);
gx_cie_joint_caches *gx_currentciecaches(gs_state *);
const gs_cie_common *gs_cie_cs_common(const gs_state *);
int gs_cie_cs_complete(gs_state *, bool);
int gs_cie_jc_complete(const gs_imager_state *, const gs_color_space *);
float gs_cie_cached_value(double, const cie_cache_floats *);
int gx_install_cie_abc(gs_cie_abc *, gs_state *);
# 723 "./base/gscie.h"
int gs_cie_compute_points_sd(gx_cie_joint_caches *pjc,
                             const gs_cie_common * pcie,
                             const gs_cie_render * pcrd);






int gs_cie_render_init(gs_cie_render *);







int gs_cie_render_sample(gs_cie_render *);
# 749 "./base/gscie.h"
int gs_cie_render_complete(gs_cie_render *);
# 766 "./base/gscie.h"
extern int
    gs_cspace_build_CIEA(gs_color_space ** ppcspace, void *client_data,
                         gs_memory_t * pmem),
    gs_cspace_build_CIEABC(gs_color_space ** ppcspace, void *client_data,
                           gs_memory_t * pmem),
    gs_cspace_build_CIEDEF(gs_color_space ** ppcspace, void *client_data,
                           gs_memory_t * pmem),
    gs_cspace_build_CIEDEFG(gs_color_space ** ppcspace, void *client_data,
                            gs_memory_t * pmem);
# 833 "./base/gscie.h"
extern int
    gs_cie_defx_set_lookup_table(gs_color_space * pcspace, int *pdims,
                                 const gs_const_string * ptable);


int gx_serialize_cie_common_elements(const gs_color_space * pcs, stream * s);

bool gx_color_space_needs_cie_caches(const gs_color_space * pcs);



float common_identity(double in, const gs_cie_common * pcie);
float abc_identity(double in, const gs_cie_abc * pcie);
float a_identity(double in, const gs_cie_a * pcie);
void cie_mult3(const gs_vector3 * in, register const gs_matrix3 * mat,
          gs_vector3 * out);
void cie_matrix_mult3(const gs_matrix3 *, const gs_matrix3 *,
                              gs_matrix3 *);
void cie_matrix_transpose3(const gs_matrix3 *, gs_matrix3 *);
# 130 "./base/gsicc_create.c" 2
# 1 "./base/gsicc_create.h" 1
# 22 "./base/gsicc_create.h"
void gsicc_create_fromcrd(unsigned char *buffer, gs_memory_t *memory);
int gsicc_create_froma(const gs_color_space *pcs, unsigned char **pp_buffer_in,
                       int *profile_size_out, gs_memory_t *memory,
                       gx_cie_vector_cache *a_cache,
                       gx_cie_scalar_cache *lmn_caches);
int gsicc_create_fromabc(const gs_color_space *pcs, unsigned char **buffer,
                         int *profile_size_out, gs_memory_t *memory,
                         gx_cie_vector_cache *abc_caches,
                         gx_cie_scalar_cache *lmn_caches, bool *islab);
int gsicc_create_fromdefg(const gs_color_space *pcs,
                          unsigned char **pp_buffer_in, int *profile_size_out,
                          gs_memory_t *memory, gx_cie_vector_cache *abc_caches,
                          gx_cie_scalar_cache *lmn_caches,
                          gx_cie_scalar_cache *defg_caches);
int gsicc_create_fromdef(const gs_color_space *pcs, unsigned char **pp_buffer_in,
                         int *profile_size_out, gs_memory_t *memory,
                         gx_cie_vector_cache *abc_caches,
                         gx_cie_scalar_cache *lmn_caches,
                         gx_cie_scalar_cache *def_caches);
cmm_profile_t* gsicc_create_from_cal(float *white, float *black, float *gamma,
                                     float *matrix, gs_memory_t *memory,
                                     int num_colors);
# 131 "./base/gsicc_create.c" 2

# 1 "./base/gsicc_manage.h" 1
# 47 "./base/gsicc_manage.h"
typedef enum {
    COLOR_TUNE,
    GRAPHIC_CMYK,
    IMAGE_CMYK,
    TEXT_CMYK,
    GRAPHIC_RGB,
    IMAGE_RGB,
    TEXT_RGB
} gsicc_srcgtagkey_t;
# 66 "./base/gsicc_manage.h"
# 1 "./base/gsicc_cms.h" 1
# 27 "./base/gsicc_cms.h"
    typedef void* gcmmhprofile_t;




    typedef void* gcmmhlink_t;



bool gsicc_mcm_monitor_rgb(void *inputcolor, int num_bytes);
bool gsicc_mcm_monitor_cmyk(void *inputcolor, int num_bytes);
bool gsicc_mcm_monitor_lab(void *inputcolor, int num_bytes);
void gsicc_mcm_set_link(gsicc_link_t* link);
void gsicc_mcm_end_monitor(gsicc_link_cache_t *cache, gx_device *dev);
void gsicc_mcm_begin_monitor(gsicc_link_cache_t *cache, gx_device *dev);
gsicc_link_t* gsicc_rcm_get_link(const gs_imager_state *pis, gx_device *dev,
                                 gsicc_colorbuffer_t data_cs);
gsicc_link_t* gsicc_nocm_get_link(const gs_imager_state *pis, gx_device *dev,
                                  gs_color_space_index src_index);
gcmmhprofile_t gscms_get_profile_handle_mem(gs_memory_t *mem,
                                            unsigned char *buffer,
                                            unsigned int input_size);
gcmmhprofile_t gscms_get_profile_handle_file(gs_memory_t *mem,
                                             const char *filename);
void gscms_transform_color_buffer(gx_device *dev, gsicc_link_t *icclink,
                                  gsicc_bufferdesc_t *input_buff_desc,
                                  gsicc_bufferdesc_t *output_buff_desc,
                                  void *inputbuffer,
                                  void *outputbuffer);
int gscms_get_channel_count(gcmmhprofile_t profile);
int gscms_get_pcs_channel_count(gcmmhprofile_t profile);
char* gscms_get_clrtname(gcmmhprofile_t profile, int colorcount, gs_memory_t *memory);
int gscms_get_numberclrtnames(gcmmhprofile_t profile);
bool gscms_is_device_link(gcmmhprofile_t profile);
bool gscms_is_input(gcmmhprofile_t profile);
gsicc_colorbuffer_t gscms_get_profile_data_space(gcmmhprofile_t profile);
void gscms_transform_color(gx_device *dev, gsicc_link_t *icclink, void *inputcolor,
                           void *outputcolor, int num_bytes);
gcmmhlink_t gscms_get_link(gcmmhprofile_t lcms_srchandle,
                           gcmmhprofile_t lcms_deshandle,
                           gsicc_rendering_param_t *rendering_params,
                           int cmm_flags,
                           gs_memory_t *memory);
gcmmhlink_t gscms_get_link_proof_devlink(gcmmhprofile_t lcms_srchandle,
                                         gcmmhprofile_t lcms_proofhandle,
                                         gcmmhprofile_t lcms_deshandle,
                                         gcmmhprofile_t lcms_devlinkhandle,
                                         gsicc_rendering_param_t *rendering_params,
                                         bool src_dev_link, int cmm_flags,
                                         gs_memory_t *memory);
int gscms_create(gs_memory_t *memory);
void gscms_destroy(gs_memory_t *memory);
void gscms_release_link(gsicc_link_t *icclink);
void gscms_release_profile(void *profile);
int gscms_transform_named_color(gsicc_link_t *icclink, float tint_value,
                                const char* ColorName,
                                gx_color_value device_values[] );
void gscms_get_name2device_link(gsicc_link_t *icclink,
                                gcmmhprofile_t lcms_srchandle,
                                gcmmhprofile_t lcms_deshandle,
                                gcmmhprofile_t lcms_proofhandle,
                                gsicc_rendering_param_t *rendering_params,
                                gs_memory_t *memory);
int gscms_get_input_channel_count(gcmmhprofile_t profile);
int gscms_get_output_channel_count(gcmmhprofile_t profile);
void gscms_get_link_dim(gcmmhlink_t link, int *num_inputs, int *num_outputs);
int gscms_avoid_white_fix_flag(void);
# 67 "./base/gsicc_manage.h" 2


void gsicc_profile_reference(cmm_profile_t *icc_profile, int delta);
void gsicc_extract_profile(gs_graphics_type_tag_t graphics_type_tag,
                       cmm_dev_profile_t *profile_struct,
                       cmm_profile_t **profile, gsicc_rendering_param_t *render_cond);
void gsicc_get_srcprofile(gsicc_colorbuffer_t data_cs,
                     gs_graphics_type_tag_t graphics_type_tag,
                     cmm_srcgtag_profile_t *srcgtag_profile,
                     cmm_profile_t **profile, gsicc_rendering_param_t *render_cond);
int gsicc_getsrc_channel_count(cmm_profile_t *icc_profile);
int gsicc_init_iccmanager(gs_state * pgs);
int gsicc_init_gs_colors(gs_state *pgs);
void gsicc_profile_serialize(gsicc_serialized_profile_t *profile_data,
                              cmm_profile_t *iccprofile);
int gsicc_set_device_profile_intent(gx_device *dev,
                                    gsicc_rendering_intents_t intent,
                                    gsicc_profile_types_t profile_type);
int gsicc_set_device_blackptcomp(gx_device *dev,
                                    gsicc_blackptcomp_t blackptcomp,
                                    gsicc_profile_types_t profile_type);
int gsicc_set_device_blackpreserve(gx_device *dev,
                                   gsicc_blackpreserve_t blackpreserve,
                                   gsicc_profile_types_t profile_type);
int gsicc_set_devicen_equiv_colors(gx_device *dev, const gs_imager_state * pis,
                                    cmm_profile_t *profile);
int gsicc_set_device_profile_colorants(gx_device *dev, char *name_str);
int gsicc_init_device_profile_struct(gx_device * dev, char *profile_name,
                                     gsicc_profile_types_t profile_type);
int gsicc_set_profile(gsicc_manager_t *icc_manager, const char *pname,
                      int namelen, gsicc_profile_t defaulttype);
int gsicc_set_srcgtag_struct(gsicc_manager_t *icc_manager, const char* pname,
                            int namelen);
cmm_profile_t* gsicc_get_profile_handle_file(const char* pname, int namelen,
                                             gs_memory_t *mem);
void gsicc_init_profile_info(cmm_profile_t *profile);
int gsicc_initialize_default_profile(cmm_profile_t *icc_profile);
gsicc_manager_t* gsicc_manager_new(gs_memory_t *memory);
cmm_profile_t* gsicc_profile_new(stream *s, gs_memory_t *memory,
                                 const char* pname, int namelen);
int gsicc_set_gscs_profile(gs_color_space *pcs, cmm_profile_t *icc_profile,
                           gs_memory_t * mem);
cmm_profile_t* gsicc_get_gscs_profile(gs_color_space *gs_colorspace,
                                      gsicc_manager_t *icc_manager);
void gsicc_init_hash_cs(cmm_profile_t *picc_profile, gs_imager_state *pis);
gcmmhprofile_t gsicc_get_profile_handle_clist(cmm_profile_t *picc_profile,
                                              gs_memory_t *memory);
gcmmhprofile_t gsicc_get_profile_handle_buffer(unsigned char *buffer,
                                               int profile_size,
                                               gs_memory_t *memory);
gsicc_smask_t* gsicc_new_iccsmask(gs_memory_t *memory);
int gsicc_initialize_iccsmask(gsicc_manager_t *icc_manager);
unsigned int gsicc_getprofilesize(unsigned char *buffer);
void gscms_set_icc_range(cmm_profile_t **icc_profile);
cmm_profile_t* gsicc_read_serial_icc(gx_device * dev, int64_t icc_hashcode);
cmm_profile_t* gsicc_finddevicen(const gs_color_space *pcs,
                                 gsicc_manager_t *icc_manager);
gs_color_space_index gsicc_get_default_type(cmm_profile_t *profile_data);
bool gsicc_profile_from_ps(cmm_profile_t *profile_data);
cmm_dev_profile_t* gsicc_new_device_profile_array(gs_memory_t *memory);
void gs_setoverrideicc(gs_imager_state *pis, bool value);
bool gs_currentoverrideicc(const gs_imager_state *pis);
cmm_profile_t* gsicc_set_iccsmaskprofile(const char *pname, int namelen,
                                         gsicc_manager_t *icc_manager,
                                         gs_memory_t *mem);
int gsicc_set_device_profile(gx_device * pdev, gs_memory_t * mem,
                             char *file_name, gsicc_profile_types_t defaulttype);
char* gsicc_get_dev_icccolorants(cmm_dev_profile_t *dev_profile);
void gsicc_setrange_lab(cmm_profile_t *profile);

void gs_currentdevicenicc(const gs_state * pgs, gs_param_string * pval);
int gs_setdevicenprofileicc(const gs_state * pgs, gs_param_string * pval);
void gs_currentdefaultgrayicc(const gs_state * pgs, gs_param_string * pval);
int gs_setdefaultgrayicc(const gs_state * pgs, gs_param_string * pval);
void gs_currenticcdirectory(const gs_state * pgs, gs_param_string * pval);
int gs_seticcdirectory(const gs_state * pgs, gs_param_string * pval);
void gs_currentsrcgtagicc(const gs_state * pgs, gs_param_string * pval);
int gs_setsrcgtagicc(const gs_state * pgs, gs_param_string * pval);
void gs_currentdefaultrgbicc(const gs_state * pgs, gs_param_string * pval);
int gs_setdefaultrgbicc(const gs_state * pgs, gs_param_string * pval);
void gs_currentnamedicc(const gs_state * pgs, gs_param_string * pval);
int gs_setnamedprofileicc(const gs_state * pgs, gs_param_string * pval);
void gs_currentdefaultcmykicc(const gs_state * pgs, gs_param_string * pval);
int gs_setdefaultcmykicc(const gs_state * pgs, gs_param_string * pval);
void gs_currentlabicc(const gs_state * pgs, gs_param_string * pval);
int gs_setlabicc(const gs_state * pgs, gs_param_string * pval);
# 133 "./base/gsicc_create.c" 2
# 1 "./base/gsicc_cache.h" 1
# 32 "./base/gsicc_cache.h"
typedef struct gsicc_namedcolor_s {
    char *colorant_name;
    unsigned int name_size;
    unsigned short lab[3];
} gsicc_namedcolor_t;

gsicc_link_cache_t* gsicc_cache_new(gs_memory_t *memory);
gsicc_link_t* gsicc_findcachelink(gsicc_hashlink_t hashcode,
                                  gsicc_link_cache_t *icc_link_cache,
                                  bool includes_proof, bool includes_devlink);
void gsicc_init_buffer(gsicc_bufferdesc_t *buffer_desc, unsigned char num_chan,
                  unsigned char bytes_per_chan, bool has_alpha, bool alpha_first,
                  bool is_planar, int plane_stride, int row_stride, int num_rows,
                  int pixels_per_row);
bool gsicc_alloc_link_entry(gsicc_link_cache_t *icc_link_cache,
                            gsicc_link_t **ret_link, gsicc_hashlink_t hash,
                            bool include_softproof, bool include_devlink);
gsicc_link_t* gsicc_get_link(const gs_imager_state * pis, gx_device *dev,
                             const gs_color_space *input_colorspace,
                             gs_color_space *output_colorspace,
                             gsicc_rendering_param_t *rendering_params,
                             gs_memory_t *memory);
gsicc_link_t* gsicc_get_link_profile(const gs_imager_state *pis, gx_device *dev,
                                     cmm_profile_t *gs_input_profile,
                                     cmm_profile_t *gs_output_profile,
                                     gsicc_rendering_param_t *rendering_params,
                                     gs_memory_t *memory, bool devicegraytok);
void gsicc_release_link(gsicc_link_t *icclink);
void gsicc_link_free(gsicc_link_t *icc_link, gs_memory_t *memory);
void gsicc_get_icc_buff_hash(unsigned char *buffer, int64_t *hash, unsigned int buff_size);
int gsicc_transform_named_color(const float tint_values[],
                            gsicc_namedcolor_t color_names[],
                            uint num_names,
                            gx_color_value device_values[],
                            const gs_imager_state *pis, gx_device *dev,
                            cmm_profile_t *gs_output_profile,
                            gsicc_rendering_param_t *rendering_params);
int gsicc_get_device_profile_comps(cmm_dev_profile_t *dev_profile);
# 134 "./base/gsicc_create.c" 2

# 1 "./base/gscolor2.h" 1
# 23 "./base/gscolor2.h"
# 1 "./base/gscindex.h" 1
# 48 "./base/gscindex.h"
extern int gs_cspace_build_Indexed(
                                   gs_color_space ** ppcspace,
                                   gs_color_space * pbase_cspace,
                                   uint num_entries,
                                   const gs_const_string * ptbl,
                                   gs_memory_t * pmem
                                   );


extern int gs_cspace_indexed_num_entries(
                                         const gs_color_space * pcspace
                                         );



extern float *gs_cspace_indexed_value_array(
                                            const gs_color_space * pcspace
                                            );


extern int gs_cspace_indexed_set_proc(
                                      gs_color_space * pcspace,
                                      int (*proc) (const gs_color_space *, int, float *)
                                      );


int gs_cspace_indexed_lookup(const gs_color_space *, int,
                             gs_client_color *);


int gs_cspace_indexed_lookup_bytes(const gs_color_space *pcs, float index_float,
                        unsigned char *output);


int gs_cspace_indexed_lookup_frac(const gs_color_space *pcs, float index_float,
                        frac *output);
# 24 "./base/gscolor2.h" 2
# 1 "./base/gsptype1.h" 1
# 22 "./base/gsptype1.h"
# 1 "./base/gspcolor.h" 1
# 24 "./base/gspcolor.h"
# 1 "./base/gsuid.h" 1
# 26 "./base/gsuid.h"
typedef struct gs_uid_s gs_uid;

struct gs_uid_s {


    long id;
    long *xvalues;
};
# 62 "./base/gsuid.h"
bool uid_equal(const gs_uid *, const gs_uid *);


int uid_copy(gs_uid *puid, gs_memory_t *mem, client_name_t cname);
# 25 "./base/gspcolor.h" 2
# 51 "./base/gspcolor.h"
typedef struct gs_pattern_type_s gs_pattern_type_t;
# 64 "./base/gspcolor.h"
typedef struct gs_pattern_template_s {
    const gs_pattern_type_t *type; int PatternType; gs_uid uid; void *client_data;
} gs_pattern_template_t;


extern const gs_memory_struct_type_t st_pattern_template;
# 88 "./base/gspcolor.h"
struct gs_pattern_instance_s {
    rc_header rc; const gs_pattern_type_t *type; gs_state *saved; gs_id pattern_id;
};


extern const gs_memory_struct_type_t st_pattern_instance;
# 103 "./base/gspcolor.h"
int gs_setpattern(gs_state *, const gs_client_color *);
int gs_setpatternspace(gs_state *);







int gs_make_pattern(gs_client_color *, const gs_pattern_template_t *,
                    const gs_matrix *, gs_state *, gs_memory_t *);
const gs_pattern_template_t *gs_get_pattern(const gs_client_color *);
# 123 "./base/gspcolor.h"
void gs_pattern_reference(gs_client_color * pcc, int delta);
# 23 "./base/gsptype1.h" 2
# 38 "./base/gsptype1.h"
typedef struct gs_pattern1_template_s {




    const gs_pattern_type_t *type; int PatternType; gs_uid uid; void *client_data;
    int PaintType;
    int TilingType;
    bool uses_transparency;
    gs_rect BBox;
    float XStep;
    float YStep;
    int (*PaintProc) (const gs_client_color *, gs_state *);
} gs_pattern1_template_t;
# 61 "./base/gsptype1.h"
typedef gs_pattern1_template_t gs_client_pattern;







extern int gs_cspace_build_Pattern1(
                                    gs_color_space ** ppcspace,
                                    gs_color_space * pbase_cspace,
                                    gs_memory_t * pmem
                                    );


void gs_pattern1_init(gs_pattern1_template_t *);
# 89 "./base/gsptype1.h"
int gs_makepattern(gs_client_color *, const gs_client_pattern *,
                   const gs_matrix *, gs_state *, gs_memory_t *);
const gs_client_pattern *gs_getpattern(const gs_client_color *);


bool gx_dc_is_pattern1_color(const gx_device_color *pdevc);


bool gx_dc_is_pattern1_color_with_trans(const gx_device_color *pdevc);


void * gx_pattern1_get_transptr(const gx_device_color *pdevc);

int gx_pattern1_clist_has_trans(const gx_device_color *pdevc);



void gx_set_pattern_procs_trans(gx_device_color *pdevc);
void gx_set_pattern_procs_standard(gx_device_color *pdevc);
bool gx_pattern_procs_istrans(gx_device_color *pdevc);


bool gx_dc_is_pattern1_color_clist_based(const gx_device_color *pdevc);


gs_id gs_dc_get_pattern_id(const gx_device_color *pdevc);
# 148 "./base/gsptype1.h"
extern int gs_makepixmappattern(
                                gs_client_color * pcc,
                                const gs_depth_bitmap * pbitmap,
                                bool mask,
                                const gs_matrix * pmat,
                                long id,
                                gs_color_space * pcspace,
                                uint white_index,
                                gs_state * pgs,
                                gs_memory_t * mem
                                );





extern int gs_makebitmappattern_xform(
                                      gs_client_color * pcc,
                                      const gx_tile_bitmap * ptile,
                                      bool mask,
                                      const gs_matrix * pmat,
                                      long id,
                                      gs_state * pgs,
                                      gs_memory_t * mem
                                      );




extern int pixmap_high_level_pattern(gs_state * pgs);
# 25 "./base/gscolor2.h" 2
# 35 "./base/gscolor2.h"
gs_color_space *gs_currentcolorspace(const gs_state *);
int gs_setcolorspace(gs_state *, gs_color_space *);
int gs_setcolorspace_only(gs_state *, gs_color_space *);
const gs_client_color *gs_currentcolor(const gs_state *);
int gs_setcolor(gs_state *, const gs_client_color *);
const gx_device_color *gs_currentdevicecolor(const gs_state *);


int
gs_indexed_limit_and_lookup(const gs_client_color * pc,const gs_color_space *pcs,
                         gs_client_color *pcc);


extern const gs_color_space_type gs_color_space_type_Indexed;






const gs_cie_render *gs_currentcolorrendering(const gs_state *);
int gs_setcolorrendering(gs_state *, gs_cie_render *);


int gs_includecolorspace(gs_state * pgs, const byte *res_name, int name_length);
# 136 "./base/gsicc_create.c" 2
# 1 "./base/gxcie.h" 1
# 38 "./base/gxcie.h"
void gx_init_CIE(gs_client_color *, const gs_color_space *);
void gx_restrict_CIEDEFG(gs_client_color *, const gs_color_space *);
int gx_install_CIEDEFG(gs_color_space *, gs_state *);
void gx_restrict_CIEDEF(gs_client_color *, const gs_color_space *);
int gx_install_CIEDEF(gs_color_space *, gs_state *);
void gx_restrict_CIEABC(gs_client_color *, const gs_color_space *);
int gx_install_CIEABC(gs_color_space *, gs_state *);
void gx_restrict_CIEA(gs_client_color *, const gs_color_space *);
int gx_install_CIEA(gs_color_space *, gs_state *);






extern int gx_cie_to_xyz_alloc(gs_imager_state **,
                                    const gs_color_space *, gs_memory_t *);
extern void gx_cie_to_xyz_free(gs_imager_state *);
extern int gx_cie_to_xyz_alloc2(gs_color_space * pcs, gs_state * pgs);
# 65 "./base/gxcie.h"
int gx_cie_check_rendering(const gs_color_space * pcs, frac * pconc, const gs_imager_state * pis);







extern int gx_cie_remap_finish( cie_cached_vector3,
                                     frac *, float *,
                                     const gs_imager_state *,
                                     const gs_color_space * );

extern int gx_cie_remap_finish(cie_cached_vector3 vec3, frac *pconc, float *xyz, const gs_imager_state *pis, const gs_color_space *pcs);





extern int gx_cie_real_remap_finish(cie_cached_vector3 vec3, frac *pconc, float *xyz, const gs_imager_state *pis, const gs_color_space *pcs);



extern int gx_cie_xyz_remap_finish(cie_cached_vector3 vec3, frac *pconc, float *xyz, const gs_imager_state *pis, const gs_color_space *pcs);

int gx_concretize_CIEDEFG(const gs_client_color *, const gs_color_space *, frac *, const gs_imager_state *, gx_device *);
int gx_concretize_CIEDEF(const gs_client_color *, const gs_color_space *, frac *, const gs_imager_state *, gx_device *);
int gx_concretize_CIEABC(const gs_client_color *, const gs_color_space *, frac *, const gs_imager_state *, gx_device *);



int gx_remap_CIEDEF(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_remap_CIEDEFG(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_remap_CIEA(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_remap_CIEABC(const gs_client_color *, const gs_color_space *, gx_device_color *, const gs_imager_state *, gx_device *, gs_color_select_t);
int gx_concretize_CIEA(const gs_client_color *, const gs_color_space *, frac *, const gs_imager_state *, gx_device *);




extern const gs_memory_struct_type_t st_cie_common;
extern const gs_memory_struct_type_t st_cie_common_elements_t;


extern void gx_set_common_cie_defaults( gs_cie_common *,
                                            void * client_data );


extern void gx_cie_load_common_cache(gs_cie_common *, gs_state *);


extern void gx_cie_common_complete(gs_cie_common *);


int gx_install_CIE(gs_color_space *, gs_state *);


extern void * gx_build_cie_space( gs_color_space ** ppcspace,
                                    const gs_color_space_type * pcstype,
                                    gs_memory_type_ptr_t stype,
                                    gs_memory_t * pmem );







const gs_color_space *gx_concrete_space_CIE(const gs_color_space *, const gs_imager_state *);



int gx_psconcretize_CIEDEFG(const gs_client_color * pc, const gs_color_space * pcs,
                      frac * pconc, float * xyz, const gs_imager_state * pis);
int gx_psconcretize_CIEDEF(const gs_client_color * pc, const gs_color_space * pcs,
                     frac * pconc, float * xyz, const gs_imager_state * pis);
int gx_psconcretize_CIEABC(const gs_client_color * pc, const gs_color_space * pcs,
                     frac * pconc, float * xyz, const gs_imager_state * pis);
int gx_psconcretize_CIEA(const gs_client_color * pc, const gs_color_space * pcs,
                     frac * pconc, float * xyz, const gs_imager_state * pis);
bool check_range(gs_range *ranges, int num_colorants);
bool check_cie_range( const gs_color_space * pcs );
gs_range* get_cie_range( const gs_color_space * pcs );
bool rescale_cie_colors(const gs_color_space * pcs, gs_client_color *cc);
# 137 "./base/gsicc_create.c" 2

static void
add_xyzdata(unsigned char *input_ptr, icS15Fixed16Number temp_XYZ[]);
# 158 "./base/gsicc_create.c"
typedef unsigned short u1Fixed15Number;




typedef struct cielab_s {
    float lstar;
    float astar;
    float bstar;
} cielab_t;

static const char desc_name[] = "Ghostscript Internal Profile";
static const char copy_right[] = "Copyright Artifex Software 2009";

typedef struct {
    icTagSignature sig;
    icUInt32Number offset;


    icUInt32Number size;
    unsigned char byte_padding;
} gsicc_tag;






typedef struct {
    unsigned short *data_short;
    unsigned char *data_byte;

    int clut_dims[4];
    int clut_num_input;
    int clut_num_output;
    int clut_num_entries;
    int clut_word_width;
} gsicc_clut;

typedef struct {
    float *a_curves;
    gsicc_clut *clut;
    float *m_curves;
    gs_matrix3 *matrix;
    float *b_curves;
    int num_in;
    int num_out;
    gs_vector3 *white_point;
    gs_vector3 *black_point;
    float *cam;
} gsicc_lutatob;

static int
get_padding(int x)
{
    return (4 -x%4)%4;
}


static void
gsicc_scale_matrix(gs_matrix3 *matrix)
{
    float *temp = &(matrix->cu.u);
    int k;

    for (k = 0; k < 9; k++) {
        temp[k] = temp[k] / (1.0 + (32767.0/32768.0));
    }
}


static void
gsicc_matrix_init(register gs_matrix3 * mat)
{
    mat->is_identity =
        mat->cu.u == 1.0 && ((mat->cu.v) == 0.0 && (mat->cu.w) == 0.0) &&
        mat->cv.v == 1.0 && ((mat->cv.u) == 0.0 && (mat->cv.w) == 0.0) &&
        mat->cw.w == 1.0 && ((mat->cw.u) == 0.0 && (mat->cw.v) == 0.0);
}

static void
gsicc_make_diag_matrix(gs_matrix3 *matrix, gs_vector3 * vec)
{
    matrix->cu.u = vec->u;
    matrix->cv.v = vec->v;
    matrix->cw.w = vec->w;
    matrix->cu.v = 0;
    matrix->cu.w = 0;
    matrix->cw.u = 0;
    matrix->cw.v = 0;
    matrix->cv.u = 0;
    matrix->cv.w = 0;
    matrix->is_identity = (vec->u == 1.0)&&(vec->v == 1.0)&&(vec->w == 1.0);
}




static void
gsicc_matrix3_to_mlut(gs_matrix3 *mat, unsigned short *clut)
{

    float grid_points[8][3]={{0,0,0},
                             {0,0,1},
                             {0,1,0},
                             {0,1,1},
                             {1,0,0},
                             {1,0,1},
                             {1,1,0},
                             {1,1,1}};
    int k;
    gs_vector3 input,output;
    unsigned short *curr_ptr = clut, value;
    float valueflt;

    for (k = 0; k < 8; k++) {
        input.u = grid_points[k][0];
        input.v = grid_points[k][1];
        input.w = grid_points[k][2];
        cie_mult3(&input, mat, &output);
        valueflt = output.u;
        if (valueflt < 0) valueflt = 0;
        if (valueflt > 1) valueflt = 1;
        value = (unsigned short) (valueflt*65535.0);
        *curr_ptr ++= value;
        valueflt = output.v;
        if (valueflt < 0) valueflt = 0;
        if (valueflt > 1) valueflt = 1;
        value = (unsigned short) (valueflt*65535.0);
        *curr_ptr ++= value;
        valueflt = output.w;
        if (valueflt < 0) valueflt = 0;
        if (valueflt > 1) valueflt = 1;
        value = (unsigned short) (valueflt*65535.0);
        *curr_ptr ++= value;
    }
}

static u1Fixed15Number
double2u1Fixed15Number(float number_in)
{
    float value;

    value = number_in/(1.0 + (32767.0/32768.0));
    value = value * 65535.0;
    if (value < 0) {
        value = 0;
    }
    if (value > 65535) {
        value = 65535;
    }
    return (u1Fixed15Number) value;
}

static void
apply_adaption(float matrix[], float in[], float out[])
{
    out[0] = matrix[0] * in[0] + matrix[1] * in[1] + matrix[2] * in[2];
    out[1] = matrix[3] * in[0] + matrix[4] * in[1] + matrix[5] * in[2];
    out[2] = matrix[6] * in[0] + matrix[7] * in[1] + matrix[8] * in[2];
}




static int
gsicc_create_clut(const gs_color_space *pcs, gsicc_clut *clut, gs_range *ranges,
                  gs_vector3 *white_point, bool range_adjust, float cam[],
                  gs_memory_t *memory)
{
    gs_imager_state *pis;
    int code;
    int num_points = clut->clut_num_entries;
    int table_size = clut->clut_dims[0];
    int num_components = clut->clut_num_input;
    int j,i,index;
    float *input_samples[4], *fltptr;
    gs_range *curr_range;
    unsigned short *ptr_short;
    gs_client_color cc;
    frac xyz[3];
    float xyz_float[3];
    float temp;
    gs_color_space_index cs_index;



    code = gx_cie_to_xyz_alloc(&pis, pcs, memory);
    if (code < 0)
        gs_throw_imp(__func__, "./base/gsicc_create.c", 347, 1, code, "Allocation of cie to xyz transform failed");
    cs_index = gs_color_space_get_index(pcs);





    for (i = 0; i < num_components; i++) {
        input_samples[i] = (float*) (*(memory)->procs.alloc_bytes)(memory, sizeof(float)*table_size, "gsicc_create_clut");

        if (input_samples[i] == ((void*)0)) {
            for (j = 0; j < i; j++) {
                ((memory)->procs.free_object(memory, input_samples[j], "gsicc_create_clut"));
            }
            gs_throw_imp(__func__, "./base/gsicc_create.c", 361, 0, (-25), "Allocation of input_sample arrays failed");
        }
        fltptr = input_samples[i];
        curr_range = &(ranges[i]);
        for (j = 0; j < table_size; j++ ) {
            *fltptr ++= ((float) j/ (float) (table_size-1)) *
                (curr_range->rmax - curr_range->rmin) + curr_range->rmin;
        }
    }


    ptr_short = clut->data_short;
    for (i = 0; i < num_points; i++) {
        if (num_components == 1) {

            fltptr = input_samples[0];
            index = i%table_size;
            cc.paint.values[0] = fltptr[index];
        }
        if (num_components == 3) {

            fltptr = input_samples[2];
            index = i%table_size;
            cc.paint.values[2] = fltptr[index];
            fltptr = input_samples[1];
            index = (unsigned int) floor((float) i/(float) table_size)%table_size;
            cc.paint.values[1] = fltptr[index];
            fltptr = input_samples[0];
            index = (unsigned int) floor((float) i/(float) (table_size*
                                                        table_size))%table_size;
            cc.paint.values[0] = fltptr[index];
        }
        if (num_components == 4) {

            fltptr = input_samples[3];
            index = i%table_size;
            cc.paint.values[3] = fltptr[index];
            fltptr = input_samples[2];
            index = (unsigned int) floor((float) i/(float) table_size)%table_size;
            cc.paint.values[2] = fltptr[index];
            fltptr = input_samples[1];
            index = (unsigned int) floor((float) i/(float) (table_size*
                                                        table_size))%table_size;
            cc.paint.values[1] = fltptr[index];
            fltptr = input_samples[0];
            index = (unsigned int) floor((float) i/(float) (table_size*
                                        table_size*table_size))%table_size;
            cc.paint.values[0] = fltptr[index];
        }


        switch (cs_index) {
            case gs_color_space_index_CIEA:
                gx_psconcretize_CIEA(&cc, pcs, xyz, xyz_float, pis);






                xyz_float[0] = white_point->u * xyz_float[1];
                xyz_float[2] = white_point->w * xyz_float[1];
                break;
            case gs_color_space_index_CIEABC:
                gx_psconcretize_CIEABC(&cc, pcs, xyz, xyz_float, pis);
                break;
            case gs_color_space_index_CIEDEF:
                gx_psconcretize_CIEDEF(&cc, pcs, xyz, xyz_float, pis);
                break;
            case gs_color_space_index_CIEDEFG:
               gx_psconcretize_CIEDEFG(&cc, pcs, xyz, xyz_float, pis);
               break;
            default:
                break;
        }





        for (j = 0; j < 3; j++) {
            temp = xyz_float[j]/(1 + 32767.0/32768);
            if (temp < 0) temp = 0;
            if (temp > 1) temp = 1;
           *ptr_short ++= (unsigned int)(temp * 65535);
        }
    }
    gx_cie_to_xyz_free(pis);
    for (i = 0; i < num_components; i++) {
        ((memory)->procs.free_object(memory, input_samples[i], "gsicc_create_clut"));
    }
    return 0;
}





static void
gsicc_vec_to_mlut(gs_vector3 *vec, unsigned short *clut)
{
    unsigned short *curr_ptr = clut;
    int temp;

    *curr_ptr ++= 0;
    *curr_ptr ++= 0;
    *curr_ptr ++= 0;
    temp = vec->u * 65535;
    if (temp > 65535) temp = 65535;
    if (temp < 0) temp = 0;
    *curr_ptr ++= temp;
    temp = vec->v * 65535;
    if (temp > 65535) temp = 65535;
    if (temp < 0) temp = 0;
    *curr_ptr ++= temp;
    temp = vec->w * 65535;
    if (temp > 65535) temp = 65535;
    if (temp < 0) temp = 0;
    *curr_ptr ++= temp;
}
# 498 "./base/gsicc_create.c"
static void
write_bigendian_4bytes(unsigned char *curr_ptr,ulong input)
{
   *curr_ptr++ = (0xff & (input >> 24));
   *curr_ptr++ = (0xff & (input >> 16));
   *curr_ptr++ = (0xff & (input >> 8));
   *curr_ptr++ = (0xff & input);
}

static void
write_bigendian_2bytes(unsigned char *curr_ptr,ushort input)
{
   *curr_ptr++ = (0xff & (input >> 8));
   *curr_ptr++ = (0xff & input);
}

static void
setdatetime(icDateTimeNumber *datetime)
{
    datetime->day = 0;
    datetime->hours = 0;
    datetime->minutes = 0;
    datetime->month = 0;
    datetime->seconds = 0;
    datetime->year = 0;
}

static icS15Fixed16Number
double2XYZtype(float number_in)
{
    short s;
    unsigned short m;

    if (number_in < 0) {
        number_in = 0;



    }

    s = (short) number_in;
    m = (unsigned short) ((number_in - s) * 65536.0);
    return (icS15Fixed16Number) ((s << 16) | m);
}

static icS15Fixed16Number
double2icS15Fixed16Number(float number_in)
{
    short s;
    unsigned short m;
    icS15Fixed16Number temp;
    float number;

    if (number_in < 0) {
        number = -number_in;
        s = (short) number;
        m = (unsigned short) ((number - s) * 65536.0);
        temp = (icS15Fixed16Number) ((s << 16) | m);
        temp = -temp;
        return temp;
    } else {
        s = (short) number_in;
        m = (unsigned short) ((number_in - s) * 65536.0);
        return (icS15Fixed16Number) ((s << 16) | m);
    }
}

static unsigned short
float2u8Fixed8(float number_in)
{
    return (unsigned short) (number_in * 256);
}

static
void init_common_tags(gsicc_tag tag_list[],int num_tags, int *last_tag)
{



    int curr_tag, temp_size;

    if (*last_tag < 0)
        curr_tag = 0;
    else
        curr_tag = (*last_tag)+1;

    tag_list[curr_tag].offset = 128 +num_tags*12 + 4;
    tag_list[curr_tag].sig = icSigProfileDescriptionTag;

    temp_size = 2*strlen(desc_name) + 28;

    tag_list[curr_tag].byte_padding = get_padding(temp_size);
    tag_list[curr_tag].size = temp_size + tag_list[curr_tag].byte_padding;

    curr_tag++;

    tag_list[curr_tag].offset = tag_list[curr_tag-1].offset +
                                                    tag_list[curr_tag-1].size;
    tag_list[curr_tag].sig = icSigCopyrightTag;

    temp_size = 2*strlen(copy_right) + 28;
    tag_list[curr_tag].byte_padding = get_padding(temp_size);
    tag_list[curr_tag].size = temp_size + tag_list[curr_tag].byte_padding;
    *last_tag = curr_tag;
}



static void
add_v4_text_tag(unsigned char *buffer,const char text[], gsicc_tag tag_list[],
                int curr_tag)
{
    unsigned char *curr_ptr;
    int k;

    curr_ptr = buffer;
    write_bigendian_4bytes(curr_ptr,0x6d6c7563);
    curr_ptr += 4;
    memset(curr_ptr,0,4);
    curr_ptr += 4;
    write_bigendian_4bytes(curr_ptr,1);
    curr_ptr += 4;
    write_bigendian_4bytes(curr_ptr,12);
    curr_ptr += 4;
    write_bigendian_2bytes(curr_ptr,0x656e);
    curr_ptr += 2;
    write_bigendian_2bytes(curr_ptr,0x5553);
    curr_ptr += 2;
    write_bigendian_4bytes(curr_ptr,2*strlen(text));
    curr_ptr += 4;
    write_bigendian_4bytes(curr_ptr,28);
    curr_ptr += 4;

    for (k = 0; k < strlen(text); k++) {
        *curr_ptr ++= 0;
        *curr_ptr ++= text[k];
    }
    memset(curr_ptr,0,tag_list[curr_tag].byte_padding);
}

static void
add_common_tag_data(unsigned char *buffer,gsicc_tag tag_list[])
{

    unsigned char *curr_ptr;

    curr_ptr = buffer;
    add_v4_text_tag(curr_ptr, desc_name, tag_list, 0);
    curr_ptr += tag_list[0].size;
    add_v4_text_tag(curr_ptr, copy_right, tag_list, 1);
# 656 "./base/gsicc_create.c"
}

static
void init_tag(gsicc_tag tag_list[], int *last_tag, icTagSignature tagsig,
               int datasize)
{


    int curr_tag = (*last_tag)+1;

    tag_list[curr_tag].offset = tag_list[curr_tag-1].offset +
                                                    tag_list[curr_tag-1].size;
    tag_list[curr_tag].sig = tagsig;
    tag_list[curr_tag].byte_padding = get_padding(8 + datasize);
    tag_list[curr_tag].size = 8 + datasize +
                                            tag_list[curr_tag].byte_padding;
    *last_tag = curr_tag;
}

static void
setheader_common(icHeader *header)
{

    header->cmmId = 0;
    header->version = 0x04200000;
    setdatetime(&(header->date));
    header->magic = 0x61637370L;
    header->platform = icSigMacintosh;
    header->flags = 0;
    header->manufacturer = 0;
    header->model = 0;
    header->attributes[0] = 0;
    header->attributes[1] = 0;
    header->renderingIntent = 3;
    header->illuminant.X = double2XYZtype((float) 0.9642);
    header->illuminant.Y = double2XYZtype((float) 1.0);
    header->illuminant.Z = double2XYZtype((float) 0.8249);
    header->creator = 0;

    memset(header->reserved,0,44);
}

static void
copy_header(unsigned char *buffer,icHeader *header)
{
    unsigned char *curr_ptr;

    curr_ptr = buffer;
    write_bigendian_4bytes(curr_ptr,header->size);
    curr_ptr += 4;
    memset(curr_ptr,0,4);
    curr_ptr += 4;
    write_bigendian_4bytes(curr_ptr,header->version);
    curr_ptr += 4;
    write_bigendian_4bytes(curr_ptr,header->deviceClass);
    curr_ptr += 4;
    write_bigendian_4bytes(curr_ptr,header->colorSpace);
    curr_ptr += 4;
    write_bigendian_4bytes(curr_ptr,header->pcs);
    curr_ptr += 4;


    memset(curr_ptr,0,12);
    curr_ptr += 12;
    write_bigendian_4bytes(curr_ptr,header->magic);
    curr_ptr += 4;
    write_bigendian_4bytes(curr_ptr,header->platform);
    curr_ptr += 4;
    memset(curr_ptr,0,24);
    curr_ptr += 24;
    write_bigendian_4bytes(curr_ptr,header->illuminant.X);
    curr_ptr += 4;
    write_bigendian_4bytes(curr_ptr,header->illuminant.Y);
    curr_ptr += 4;
    write_bigendian_4bytes(curr_ptr,header->illuminant.Z);
    curr_ptr += 4;
    memset(curr_ptr,0,48);
}

static void
copy_tagtable(unsigned char *buffer,gsicc_tag *tag_list, ulong num_tags)
{
    unsigned int k;
    unsigned char *curr_ptr;

    curr_ptr = buffer;
    write_bigendian_4bytes(curr_ptr,num_tags);
    curr_ptr += 4;
    for (k = 0; k < num_tags; k++) {
        write_bigendian_4bytes(curr_ptr,tag_list[k].sig);
        curr_ptr += 4;
        write_bigendian_4bytes(curr_ptr,tag_list[k].offset);
        curr_ptr += 4;
        write_bigendian_4bytes(curr_ptr,tag_list[k].size);
        curr_ptr += 4;
    }
}

static void
get_D50(icS15Fixed16Number XYZ[])
{
    XYZ[0] = double2XYZtype(0.9642f);
    XYZ[1] = double2XYZtype(1.0f);
    XYZ[2] = double2XYZtype(0.8249f);
}

static void
get_XYZ(icS15Fixed16Number XYZ[], gs_vector3 *vector)
{
    XYZ[0] = double2XYZtype(vector->u);
    XYZ[1] = double2XYZtype(vector->v);
    XYZ[2] = double2XYZtype(vector->w);
}

static void
get_XYZ_doubletr(icS15Fixed16Number XYZ[], float *vector)
{
    XYZ[0] = double2XYZtype(vector[0]);
    XYZ[1] = double2XYZtype(vector[1]);
    XYZ[2] = double2XYZtype(vector[2]);
}

static void
scale_matrix(float *matrix_input,float scale_factor)
{
    int k;

    for (k = 0; k < 9; k++) {
        matrix_input[k] = matrix_input[k]/2.0;
    }
}

static void
add_gammadata(unsigned char *input_ptr, unsigned short gamma,
              icTagSignature curveType)
{
    unsigned char *curr_ptr;

    curr_ptr = input_ptr;
    write_bigendian_4bytes(curr_ptr,curveType);
    curr_ptr += 4;
    memset(curr_ptr,0,4);
    curr_ptr += 4;


    write_bigendian_4bytes(curr_ptr, 1);
    curr_ptr += 4;


    write_bigendian_2bytes(curr_ptr, gamma);
    curr_ptr += 2;


    memset(curr_ptr,0,2);
}

static void
add_xyzdata(unsigned char *input_ptr, icS15Fixed16Number temp_XYZ[])
{
    int j;
    unsigned char *curr_ptr;

    curr_ptr = input_ptr;
    write_bigendian_4bytes(curr_ptr,icSigXYZType);
    curr_ptr += 4;
    memset(curr_ptr,0,4);
    curr_ptr += 4;
    for (j = 0; j < 3; j++) {
        write_bigendian_4bytes(curr_ptr, temp_XYZ[j]);
        curr_ptr += 4;
    }
}


static void
merge_abc_lmn_curves(gx_cie_vector_cache *DecodeABC_caches,
                     gx_cie_scalar_cache *DecodeLMN)
{

}

static void
add_matrixwithbias(unsigned char *input_ptr, float *float_ptr_in, bool has_bias)
{
    unsigned char *curr_ptr;
    float *float_ptr = float_ptr_in;
    int k;


    curr_ptr = input_ptr;
    for (k = 0; k < 9; k++ ){
        write_bigendian_4bytes(curr_ptr, double2icS15Fixed16Number(*float_ptr));
        curr_ptr += 4;
        float_ptr++;
    }
    if (has_bias){
        memset(curr_ptr,0,4*3);
    }
}

static void
matrixmult(float leftmatrix[], int nlrow, int nlcol,
           float rightmatrix[], int nrrow, int nrcol, float result[])
{
    float *curr_row;
    int k,l,j,ncols,nrows;
    float sum;

    nrows = nlrow;
    ncols = nrcol;
    if (nlcol == nrrow) {
        for (k = 0; k < nrows; k++) {
            curr_row = &(leftmatrix[k*nlcol]);
            for (l = 0; l < ncols; l++) {
                sum = 0.0;
                for (j = 0; j < nlcol; j++) {
                    sum = sum + curr_row[j] * rightmatrix[j*nrcol+l];
                }
                result[k*ncols+l] = sum;
            }
        }
    }
}

static void
gsicc_create_copy_matrix3(float *src, float *des)
{
    memcpy(des,src,9*sizeof(float));
}

static void
gsicc_create_compute_cam( gs_vector3 *white_src, gs_vector3 *white_des,
                                float *cam)
{
    float cat02matrix[] = {0.7328f, 0.4296f, -0.1624f,
                            -0.7036f, 1.6975f, 0.0061f,
                             0.003f, 0.0136f, 0.9834f};
    float cat02matrixinv[] = {1.0961f, -0.2789f, 0.1827f,
                              0.4544f, 0.4735f, 0.0721f,
                             -0.0096f, -0.0057f, 1.0153f};
    float vonkries_diag[9];
    float temp_matrix[9];
    float lms_wp_src[3], lms_wp_des[3];
    int k;

    matrixmult(cat02matrix,3,3,&(white_src->u),3,1,&(lms_wp_src[0]));
    matrixmult(cat02matrix,3,3,&(white_des->u),3,1,&(lms_wp_des[0]));
    memset(&(vonkries_diag[0]),0,sizeof(float)*9);

    for (k = 0; k < 3; k++) {
        if (lms_wp_src[k] > 0 ) {
            vonkries_diag[k*3+k] = lms_wp_des[k]/lms_wp_src[k];
        } else {
            vonkries_diag[k*3+k] = 1;
        }
    }
    matrixmult(&(vonkries_diag[0]), 3, 3, &(cat02matrix[0]), 3, 3,
                &(temp_matrix[0]));
    matrixmult(&(cat02matrixinv[0]), 3, 3, &(temp_matrix[0]), 3, 3, &(cam[0]));
}

static int
gsicc_compute_cam(gsicc_lutatob *icc_luta2bparts, gs_memory_t *memory)
{
    float *cam;
    gs_vector3 d50;

    d50.u = 0.9642f;
    d50.v = 1.0f;
    d50.w = 0.8249f;


    icc_luta2bparts->cam = (float*) (*(memory)->procs.alloc_bytes)(memory, 9 * sizeof(float), "gsicc_create_fromabc");

    if (icc_luta2bparts->cam == ((void*)0)) {
        gs_throw_imp(__func__, "./base/gsicc_create.c", 931, 0, (-25), "Allocation of ICC cam failed");
    }
    gsicc_create_compute_cam(icc_luta2bparts->white_point, &(d50), icc_luta2bparts->cam);
    return 0;
}





static void
add_chad_data(unsigned char *input_ptr, float *data)
{
    unsigned char *curr_ptr = input_ptr;





    curr_ptr = input_ptr;
    write_bigendian_4bytes(curr_ptr,icSigS15Fixed16ArrayType);
    curr_ptr += 4;

    memset(curr_ptr,0,4);
    curr_ptr += 4;
    add_matrixwithbias(curr_ptr, &(data[0]), ((bool)0));
}

static void
add_ident_curves(unsigned char *input_ptr,int number_of_curves)
{
    unsigned char *curr_ptr;
    int k;

    curr_ptr = input_ptr;
    for (k = 0; k < number_of_curves; k++) {

        write_bigendian_4bytes(curr_ptr,icSigCurveType);
        curr_ptr += 4;

        memset(curr_ptr,0,4);
        curr_ptr += 4;

        write_bigendian_4bytes(curr_ptr, 0);
        curr_ptr += 4;
    }
}

static void
add_clutAtoB(unsigned char *input_ptr, gsicc_clut *clut)
{
    unsigned char *curr_ptr = input_ptr;
    int k;
    int num_channels_in = clut->clut_num_input;
    int number_samples = clut->clut_num_entries;


    for (k = 0; k < num_channels_in; k++) {
        memset(curr_ptr, clut->clut_dims[k], 1);
        curr_ptr++;
    }

    memset(curr_ptr, 0, 16-num_channels_in);
    curr_ptr += (16-num_channels_in);

    memset(curr_ptr, clut->clut_word_width, 1);
    curr_ptr++;

    memset(curr_ptr, 0, 3);
    curr_ptr += 3;
    if (clut->data_byte != ((void*)0)) {

        memcpy(curr_ptr,clut->data_byte,number_samples*3);
    } else {

        for ( k = 0; k < number_samples*3; k++ ) {
            write_bigendian_2bytes(curr_ptr,clut->data_short[k]);
            curr_ptr += 2;
        }
    }
}

static void
add_curve(unsigned char *input_ptr, float *curve_data, int num_samples)
{
    unsigned char *curr_ptr;
    unsigned short value;
    int k;


    curr_ptr = input_ptr;
    write_bigendian_4bytes(curr_ptr,icSigCurveType);
    curr_ptr += 4;

    memset(curr_ptr,0,4);
    curr_ptr += 4;

    write_bigendian_4bytes(curr_ptr, num_samples);
    curr_ptr += 4;


    for (k = 0; k < num_samples; k++) {
        if (curve_data[k] < 0) curve_data[k] = 0;
        if (curve_data[k] > 1) curve_data[k] = 1;
        value = (unsigned int) (curve_data[k]*65535.0);
        write_bigendian_2bytes(curr_ptr,value);
        curr_ptr+=2;
    }
}



static int
getsize_lutAtoBtype(gsicc_lutatob *lutatobparts)
{
    int data_offset, mlut_size;
    int numout = lutatobparts->num_out;
    int numin = lutatobparts->num_in;
    int pad_bytes;

    data_offset = 32;

    if (lutatobparts->b_curves != ((void*)0)) {
        data_offset += (numout*(512*2+12));
    } else {
        data_offset += (numout*(0*2+12));
    }

    if (lutatobparts->matrix != ((void*)0) ) {
        data_offset += (12*4);

        if (lutatobparts->m_curves != ((void*)0)) {
            data_offset += (numout*(512*2+12));
        } else {
            data_offset += (numout*(0*2+12));
        }
    }

    if (lutatobparts->clut != ((void*)0)) {

        mlut_size = lutatobparts->clut->clut_num_entries *
                            lutatobparts->clut->clut_word_width * 3;
        pad_bytes = (4 - mlut_size%4)%4;
        data_offset += (mlut_size + pad_bytes + 20);
        if (lutatobparts->a_curves != ((void*)0)) {
            data_offset += (numin*(512*2+12));
        } else {
            data_offset += (numin*(0*2+12));
        }
    }
    return data_offset;
}
# 1093 "./base/gsicc_create.c"
static void
add_lutAtoBtype(unsigned char *input_ptr, gsicc_lutatob *lutatobparts)
{


    unsigned char *curr_ptr;
    long mlut_size;
    int data_offset;
    int k;
    int numout = lutatobparts->num_out;
    int numin = lutatobparts->num_in;
    int pad_bytes = 0;


    curr_ptr = input_ptr;
    write_bigendian_4bytes(curr_ptr,0x6d414220);
    curr_ptr += 4;

    memset(curr_ptr,0,4);
    curr_ptr += 4;

    *curr_ptr++ = numin;
    *curr_ptr++ = numout;
    memset(curr_ptr,0,2);
    curr_ptr += 2;


    data_offset = 32;
    if (lutatobparts->b_curves == ((void*)0)) {

        write_bigendian_4bytes(curr_ptr,data_offset);
        data_offset += (numout*(0*2+12));
    } else {
        write_bigendian_4bytes(curr_ptr,data_offset);
        data_offset += (numout*(512*2+12));
    }
    curr_ptr += 4;

    if (lutatobparts->matrix == ((void*)0)) {
        memset(curr_ptr,0,4);
        curr_ptr += 4;
        memset(curr_ptr,0,4);
    } else {
        write_bigendian_4bytes(curr_ptr,data_offset);
        data_offset += (12*4);
        curr_ptr += 4;

        if (lutatobparts->m_curves == ((void*)0)) {

            write_bigendian_4bytes(curr_ptr,data_offset);
            data_offset += (numout*(0*2+12));
        } else {
            write_bigendian_4bytes(curr_ptr,data_offset);
            data_offset += (numout*(512*2+12));
        }
    }
    curr_ptr += 4;

    if (lutatobparts->clut == ((void*)0)) {
        memset(curr_ptr,0,4);
        curr_ptr += 4;
        memset(curr_ptr,0,4);
    } else {
        write_bigendian_4bytes(curr_ptr,data_offset);
        mlut_size = lutatobparts->clut->clut_num_entries *
                    lutatobparts->clut->clut_word_width * 3;
        pad_bytes = (4 - mlut_size%4)%4;
        data_offset += (mlut_size + pad_bytes + 20);
        curr_ptr += 4;

        if (lutatobparts->a_curves == ((void*)0) || lutatobparts->clut == ((void*)0)) {

            write_bigendian_4bytes(curr_ptr,data_offset);
            data_offset += (numin*(0*2+12));
        } else {
            write_bigendian_4bytes(curr_ptr,data_offset);
            data_offset += (numin*(512*2+12));
        }
    }
    curr_ptr += 4;



    if (lutatobparts->b_curves != ((void*)0)) {
        for (k = 0; k < numout; k++) {
            add_curve(curr_ptr, (lutatobparts->b_curves)+k*512, 512);
            curr_ptr += (12 + 512*2);
        }
    } else {
        add_ident_curves(curr_ptr,numout);
        curr_ptr += numout*(12 + 0*2);
    }

    if (lutatobparts->matrix != ((void*)0)) {
        add_matrixwithbias(curr_ptr,&(lutatobparts->matrix->cu.u),((bool)1));
        curr_ptr += (12*4);

        if (lutatobparts->m_curves != ((void*)0)) {
            for (k = 0; k < numout; k++) {
                add_curve(curr_ptr, (lutatobparts->m_curves)+k*512, 512);
                curr_ptr += (12 + 512*2);
            }
        } else {
            add_ident_curves(curr_ptr,numout);
            curr_ptr += numout*(12 + 0*2);
        }
    }

    if (lutatobparts->clut != ((void*)0)) {
        add_clutAtoB(curr_ptr, lutatobparts->clut);
        curr_ptr += (20 + mlut_size);
        memset(curr_ptr,0,pad_bytes);
        curr_ptr += pad_bytes;

        if (lutatobparts->a_curves != ((void*)0)) {
            for (k = 0; k < numin; k++) {
                add_curve(curr_ptr, (lutatobparts->a_curves)+k*512,
                            512);
                curr_ptr += (12 + 512*2);
            }
        } else {
            add_ident_curves(curr_ptr,numin);
            curr_ptr += numin*(12 + 0*2);
        }

    }
}


cmm_profile_t*
gsicc_create_from_cal(float *white, float *black, float *gamma, float *matrix,
                      gs_memory_t *memory, int num_colors)
{
    icProfile iccprofile;
    icHeader *header = &(iccprofile.header);
    int profile_size,k;
    int num_tags;
    gsicc_tag *tag_list;
    unsigned short encode_gamma;
    unsigned char *curr_ptr;
    int last_tag;
    icS15Fixed16Number temp_XYZ[3];
    int tag_location;
    icTagSignature TRC_Tags[3] = {icSigRedTRCTag, icSigGreenTRCTag,
                                  icSigBlueTRCTag};
    int trc_tag_size;
    unsigned char *buffer;
    cmm_profile_t *result;


    setheader_common(header);
    header->pcs = icSigXYZData;
    profile_size = 128;
    header->deviceClass = icSigInputClass;
    if (num_colors == 3) {
        header->colorSpace = icSigRgbData;
        num_tags = 10;
    } else if (num_colors == 1) {
        header->colorSpace = icSigGrayData;
        num_tags = 5;
        TRC_Tags[0] = icSigGrayTRCTag;
    } else {
        return ((void*)0);
    }
    tag_list = (gsicc_tag*) (*(memory)->procs.alloc_bytes)(memory, sizeof(gsicc_tag)*num_tags, "gsicc_create_from_cal");

    if (tag_list == ((void*)0))
        return ((void*)0);

    profile_size += 12*num_tags;
    profile_size += 4;
    last_tag = -1;
    init_common_tags(tag_list, num_tags, &last_tag);
    if (num_colors == 3) {
        init_tag(tag_list, &last_tag, icSigRedColorantTag, 12);
        init_tag(tag_list, &last_tag, icSigGreenColorantTag, 12);
        init_tag(tag_list, &last_tag, icSigBlueColorantTag, 12);
    }
    init_tag(tag_list, &last_tag, icSigMediaWhitePointTag, 12);
    init_tag(tag_list, &last_tag, icSigMediaBlackPointTag, 12);

    trc_tag_size = 8;
    for (k = 0; k < num_colors; k++) {
        init_tag(tag_list, &last_tag, TRC_Tags[k], trc_tag_size);
    }
    for(k = 0; k < num_tags; k++) {
        profile_size += tag_list[k].size;
    }


    buffer = (*(memory->non_gc_memory)->procs.alloc_bytes)(memory->non_gc_memory, profile_size, "gsicc_create_from_cal");

    if (buffer == ((void*)0)) {
        ((memory)->procs.free_object(memory, tag_list, "gsicc_create_from_cal"));
        return ((void*)0);
    }
    curr_ptr = buffer;

    header->size = profile_size;
    copy_header(curr_ptr,header);
    curr_ptr += 128;

    copy_tagtable(curr_ptr,tag_list,num_tags);
    curr_ptr += 12*num_tags;
    curr_ptr += 4;


    add_common_tag_data(curr_ptr, tag_list);
    for (k = 0; k< 2; k++) {
        curr_ptr += tag_list[k].size;
    }
    tag_location = 2;

    if (num_colors == 3) {
        for ( k = 0; k < 3; k++ ) {
            get_XYZ_doubletr(temp_XYZ,&(matrix[k*3]));
            add_xyzdata(curr_ptr,temp_XYZ);
            curr_ptr += tag_list[tag_location].size;
            tag_location++;
        }
    }


    get_XYZ_doubletr(temp_XYZ,white);
    add_xyzdata(curr_ptr,temp_XYZ);
    curr_ptr += tag_list[tag_location].size;
    tag_location++;

    get_XYZ_doubletr(temp_XYZ,black);
    add_xyzdata(curr_ptr,temp_XYZ);
    curr_ptr += tag_list[tag_location].size;
    tag_location++;

    for (k = 0; k < num_colors; k++) {
        encode_gamma = float2u8Fixed8(gamma[k]);
        add_gammadata(curr_ptr, encode_gamma, icSigCurveType);
        curr_ptr += tag_list[tag_location].size;
        tag_location++;
    }
    result = gsicc_profile_new(((void*)0), memory, ((void*)0), 0);
    result->buffer = buffer;
    result->buffer_size = profile_size;
    result->num_comps = num_colors;
    if (num_colors == 3) {
        result->data_cs = gsRGB;
        result->default_match = CAL_RGB;
    } else {
        result->data_cs = gsGRAY;
        result->default_match = CAL_GRAY;
    }

    gsicc_get_icc_buff_hash(buffer, &(result->hashcode), result->buffer_size);
    result->hash_is_valid = ((bool)1);

    ((memory)->procs.free_object(memory, tag_list, "gsicc_create_from_cal"));
# 1356 "./base/gsicc_create.c"
    return result;
}

static void
gsicc_create_free_luta2bpart(gs_memory_t *memory, gsicc_lutatob *icc_luta2bparts)
{


    ((memory)->procs.free_object(memory, icc_luta2bparts->a_curves, "gsicc_create_free_luta2bpart"));

    ((memory)->procs.free_object(memory, icc_luta2bparts->b_curves, "gsicc_create_free_luta2bpart"));

    ((memory)->procs.free_object(memory, icc_luta2bparts->m_curves, "gsicc_create_free_luta2bpart"));

    ((memory)->procs.free_object(memory, icc_luta2bparts->cam, "gsicc_create_free_luta2bpart"));

    if (icc_luta2bparts->clut) {

        ((memory)->procs.free_object(memory, icc_luta2bparts->clut->data_short, "gsicc_create_free_luta2bpart"));

        ((memory)->procs.free_object(memory, icc_luta2bparts->clut, "gsicc_create_free_luta2bpart"));

    }
}

static void
gsicc_create_init_luta2bpart(gsicc_lutatob *icc_luta2bparts)
{
    icc_luta2bparts->a_curves = ((void*)0);
    icc_luta2bparts->b_curves = ((void*)0);
    icc_luta2bparts->clut = ((void*)0);
    icc_luta2bparts->m_curves = ((void*)0);
    icc_luta2bparts->cam = ((void*)0);
    icc_luta2bparts->matrix = ((void*)0);
    icc_luta2bparts->white_point = ((void*)0);
    icc_luta2bparts->black_point = ((void*)0);
    icc_luta2bparts->num_in = 0;
    icc_luta2bparts->num_out = 0;
}

static void
gsicc_create_initialize_clut(gsicc_clut *clut)
{
    int k;

    clut->clut_num_entries = clut->clut_dims[0];
    for (k = 1; k < clut->clut_num_input; k++) {
        clut->clut_num_entries *= clut->clut_dims[k];
    }
    clut->data_byte = ((void*)0);
    clut->data_short = ((void*)0);
}


static int
create_lutAtoBprofile(unsigned char **pp_buffer_in, icHeader *header,
                      gsicc_lutatob *lutatobparts, bool yonly, bool mashedLUT,
                      gs_memory_t *memory)
{
    int num_tags = 5;
    int k;
    gsicc_tag *tag_list;
    int profile_size, last_tag, tag_location, tag_size;
    unsigned char *buffer,*curr_ptr;
    icS15Fixed16Number temp_XYZ[3];
    gs_vector3 d50;
    float *cam;
    gs_matrix3 temp_matrix;
    float lmn_vector[3],d50_cieA[3];

    profile_size = 128;
    tag_list = (gsicc_tag*) (*(memory)->procs.alloc_bytes)(memory, sizeof(gsicc_tag)*num_tags, "create_lutAtoBprofile");

    if (tag_list == ((void*)0))
        gs_throw_imp(__func__, "./base/gsicc_create.c", 1430, 0, (-25), "Allocation of ICC tag list failed");


    profile_size += 12*num_tags;
    profile_size += 4;
    last_tag = -1;
    init_common_tags(tag_list, num_tags, &last_tag);
    init_tag(tag_list, &last_tag, icSigMediaWhitePointTag, 12);
    init_tag(tag_list, &last_tag, icSigMediaBlackPointTag, 12);



    tag_size = getsize_lutAtoBtype(lutatobparts) - 8;
    init_tag(tag_list, &last_tag, icSigAToB0Tag, tag_size);

    for(k = 0; k < num_tags; k++) {
        profile_size += tag_list[k].size;
    }



    buffer = (*(memory->non_gc_memory)->procs.alloc_bytes)(memory->non_gc_memory, profile_size, "create_lutAtoBprofile");

    if (buffer == ((void*)0)) {
        ((memory)->procs.free_object(memory, tag_list, "create_lutAtoBprofile"));
        gs_throw_imp(__func__, "./base/gsicc_create.c", 1455, 0, (-25), "Allocation of ICC buffer failed");
    }
    curr_ptr = buffer;

    header->size = profile_size;
    copy_header(curr_ptr,header);
    curr_ptr += 128;

    copy_tagtable(curr_ptr,tag_list,num_tags);
    curr_ptr += 12*num_tags;
    curr_ptr += 4;


    add_common_tag_data(curr_ptr, tag_list);
    for (k = 0; k< 2; k++) {
        curr_ptr += tag_list[k].size;
    }
    tag_location = 2;



    d50.u = 0.9642f;
    d50.v = 1.0f;
    d50.w = 0.8249f;
    cam = (float*) (*(memory)->procs.alloc_bytes)(memory, 9 * sizeof(float), "create_lutAtoBprofile");
    if (cam == ((void*)0)) {
        ((memory)->procs.free_object(memory, tag_list, "create_lutAtoBprofile"));
        ((memory->non_gc_memory)->procs.free_object(memory->non_gc_memory, buffer, "create_lutAtoBprofile"));
        gs_throw_imp(__func__, "./base/gsicc_create.c", 1483, 0, (-25), "Allocation of ICC cam failed");
    }
    gsicc_create_compute_cam(lutatobparts->white_point, &(d50), cam);
    lutatobparts->cam = cam;
    get_D50(temp_XYZ);
    add_xyzdata(curr_ptr, temp_XYZ);
    curr_ptr += tag_list[tag_location].size;
    tag_location++;
    get_XYZ(temp_XYZ, lutatobparts->black_point);
    add_xyzdata(curr_ptr, temp_XYZ);
    curr_ptr += tag_list[tag_location].size;
    tag_location++;


    if (lutatobparts->matrix == ((void*)0)) {
        gsicc_create_copy_matrix3(cam, &(temp_matrix.cu.u));
        lutatobparts->matrix = &temp_matrix;
    } else {
        if (yonly) {
# 1511 "./base/gsicc_create.c"
            lmn_vector[0] = lutatobparts->matrix->cv.u;
            lmn_vector[1] = lutatobparts->matrix->cv.v;
            lmn_vector[2] = lutatobparts->matrix->cv.w;
            if (mashedLUT) {

                d50_cieA[0] = 0.9642f;
                d50_cieA[1] = 1.0f;
                d50_cieA[2] = 0.8249f;
            } else {

                d50_cieA[0] = 0.9642f / (1.0 + (32767.0/32768.0)) ;
                d50_cieA[1] = 1.0f / (1.0 + (32767.0/32768.0));
                d50_cieA[2] = 0.8249f / (1.0 + (32767.0/32768.0));
            }
            matrixmult(&(d50_cieA[0]), 3, 1, &(lmn_vector[0]), 1, 3,
                        &(lutatobparts->matrix->cu.u));
        } else {
            matrixmult(cam, 3, 3, &(lutatobparts->matrix->cu.u), 3, 3,
                    &(temp_matrix.cu.u));
            lutatobparts->matrix = &temp_matrix;
        }
    }



    add_lutAtoBtype(curr_ptr, lutatobparts);
    *pp_buffer_in = buffer;
    ((memory)->procs.free_object(memory, tag_list, "create_lutAtoBprofile"));
    return 0;
}




static int
gsicc_create_mashed_clut(gsicc_lutatob *icc_luta2bparts,
                         icHeader *header, gx_color_lookup_table *Table,
                         const gs_color_space *pcs, gs_range *ranges,
                         unsigned char **pp_buffer_in, int *profile_size_out,
                         bool range_adjust, gs_memory_t* memory)
{
    int k;
    int code;
    gsicc_clut *clut;
    gs_matrix3 ident_matrix;
    gs_vector3 ones_vec;



    clut = (gsicc_clut*) (*(memory)->procs.alloc_bytes)(memory, sizeof(gsicc_clut), "gsicc_create_mashed_clut");

    if (clut == ((void*)0))
        gs_throw_imp(__func__, "./base/gsicc_create.c", 1563, 0, (-25), "Allocation of ICC clut failed");
    icc_luta2bparts->clut = clut;
    if ( icc_luta2bparts->num_in == 1 ) {

        clut->clut_dims[0] = 128;
    } else {
        for (k = 0; k < icc_luta2bparts->num_in; k++) {
            if (Table != ((void*)0) && Table->dims[k] > 9 ) {


                clut->clut_dims[k] = Table->dims[k];
            } else {

                clut->clut_dims[k] = 9;
            }
        }
    }
    clut->clut_num_input = icc_luta2bparts->num_in;
    clut->clut_num_output = 3;
    clut->clut_word_width = 2;
    gsicc_create_initialize_clut(clut);

    clut->data_short = (unsigned short*) (*(memory)->procs.alloc_bytes)(memory, clut->clut_num_entries*3*sizeof(unsigned short), "gsicc_create_mashed_clut");

    if (clut->data_short == ((void*)0)) {
        ((memory)->procs.free_object(memory, clut, "gsicc_create_mashed_clut"));
        gs_throw_imp(__func__, "./base/gsicc_create.c", 1589, 0, (-25), "Allocation of ICC clut short data failed");
    }

    code = gsicc_create_clut(pcs, clut, ranges, icc_luta2bparts->white_point,
                             range_adjust, icc_luta2bparts->cam, memory);
    if (code < 0) {
        ((memory)->procs.free_object(memory, clut, "gsicc_create_mashed_clut"));
        gs_throw_imp(__func__, "./base/gsicc_create.c", 1596, 1, code, "Creation of ICC clut failed");
    }


    ((memory)->procs.free_object(memory, icc_luta2bparts->a_curves, "gsicc_create_mashed_clut"));
    icc_luta2bparts->a_curves = ((void*)0);
    icc_luta2bparts->b_curves = ((void*)0);
    icc_luta2bparts->m_curves = ((void*)0);
    ones_vec.u = 1;
    ones_vec.v = 1;
    ones_vec.w = 1;
    gsicc_make_diag_matrix(&ident_matrix,&ones_vec);
    icc_luta2bparts->matrix = &ident_matrix;

    if (icc_luta2bparts->num_in == 1 ) {
        code = create_lutAtoBprofile(pp_buffer_in, header, icc_luta2bparts, ((bool)1),
                                     ((bool)1), memory);
    } else {
        code = create_lutAtoBprofile(pp_buffer_in, header, icc_luta2bparts, ((bool)0),
                                     ((bool)1), memory);
    }
    return code;
}





static int
gsicc_create_abc_merge(gsicc_lutatob *atob_parts, gs_matrix3 *matrixLMN,
                       gs_matrix3 *matrixABC, bool has_abc_procs,
                       bool has_lmn_procs, gx_cie_vector_cache *abc_caches,
                       gx_cie_scalar_cache *lmn_caches, gs_memory_t *memory)
{
    gs_matrix3 temp_matrix;
    gs_matrix3 *matrix_ptr;
    float *curr_pos;


    if (!(matrixLMN->is_identity) && !(matrixABC->is_identity)){


        cie_matrix_mult3(matrixLMN, matrixABC, &temp_matrix);
        cie_matrix_transpose3(&temp_matrix, atob_parts->matrix);
    } else {

        if (matrixABC->is_identity) {
            matrix_ptr = matrixLMN;
        } else {
            matrix_ptr = matrixABC;
        }
        cie_matrix_transpose3(matrix_ptr, atob_parts->matrix);
    }

    if (has_abc_procs && has_lmn_procs && matrixABC->is_identity) {

        merge_abc_lmn_curves(abc_caches, lmn_caches);
        has_lmn_procs = ((bool)0);
    }


    if ( !(matrixABC->is_identity) && has_lmn_procs) {

        atob_parts->b_curves = (float*) (*(memory)->procs.alloc_bytes)(memory, 3*512*sizeof(float), "gsicc_create_abc_merge");

        if (atob_parts->b_curves == ((void*)0))
            gs_throw_imp(__func__, "./base/gsicc_create.c", 1662, 0, (-25), "Allocation of ICC b curves failed");
        curr_pos = atob_parts->b_curves;
        memcpy(curr_pos,&(lmn_caches[0].floats.values[0]),512*sizeof(float));
        curr_pos += 512;
        memcpy(curr_pos,&(lmn_caches[1].floats.values[0]),512*sizeof(float));
        curr_pos += 512;
        memcpy(curr_pos,&(lmn_caches[2].floats.values[0]),512*sizeof(float));
        if (has_abc_procs) {

            atob_parts->m_curves = (float*) (*(memory)->procs.alloc_bytes)(memory, 3*512*sizeof(float), "gsicc_create_abc_merge");

            if (atob_parts->m_curves == ((void*)0)) {
                ((memory)->procs.free_object(memory, atob_parts->b_curves, "gsicc_create_abc_merge"));
                gs_throw_imp(__func__, "./base/gsicc_create.c", 1675, 0, (-25), "Allocation of ICC m curves failed");
            }
            curr_pos = atob_parts->m_curves;
            memcpy(curr_pos,&(abc_caches[0].floats.values[0]),512*sizeof(float));
            curr_pos += 512;
            memcpy(curr_pos,&(abc_caches[1].floats.values[0]),512*sizeof(float));
            curr_pos += 512;
            memcpy(curr_pos,&(abc_caches[2].floats.values[0]),512*sizeof(float));
        }
    } else {



        if (has_abc_procs) {
            atob_parts->m_curves = (float*) (*(memory)->procs.alloc_bytes)(memory, 3*512*sizeof(float), "gsicc_create_abc_merge");

            if (atob_parts->m_curves == ((void*)0))
                gs_throw_imp(__func__, "./base/gsicc_create.c", 1692, 0, (-25), "Allocation of ICC m curves failed");
            curr_pos = atob_parts->m_curves;
            memcpy(curr_pos,&(abc_caches[0].floats.values[0]),512*sizeof(float));
            curr_pos += 512;
            memcpy(curr_pos,&(abc_caches[1].floats.values[0]),512*sizeof(float));
            curr_pos += 512;
            memcpy(curr_pos,&(abc_caches[2].floats.values[0]),512*sizeof(float));
        }
        if (has_lmn_procs) {
            atob_parts->m_curves = (float*) (*(memory)->procs.alloc_bytes)(memory, 3*512*sizeof(float), "gsicc_create_abc_merge");

            if (atob_parts->m_curves == ((void*)0))
                gs_throw_imp(__func__, "./base/gsicc_create.c", 1704, 0, (-25), "Allocation of ICC m curves failed");
            curr_pos = atob_parts->m_curves;
            memcpy(curr_pos,&(lmn_caches[0].floats.values[0]),512*sizeof(float));
            curr_pos += 512;
            memcpy(curr_pos,&(lmn_caches[1].floats.values[0]),512*sizeof(float));
            curr_pos += 512;
            memcpy(curr_pos,&(lmn_caches[2].floats.values[0]),512*sizeof(float));
        }
    }






    if (atob_parts->b_curves == ((void*)0)) {
        scale_matrix(&(atob_parts->matrix->cu.u), 2.0);
    }
    return 0;
}





int
gsicc_create_fromabc(const gs_color_space *pcs, unsigned char **pp_buffer_in,
                     int *profile_size_out, gs_memory_t *memory,
                     gx_cie_vector_cache *abc_caches,
                     gx_cie_scalar_cache *lmn_caches, bool *islab)
{
    icProfile iccprofile;
    icHeader *header = &(iccprofile.header);



    int k;
    gs_matrix3 matrix_input_trans;
    gsicc_lutatob icc_luta2bparts;
    float *curr_pos;
    bool has_abc_procs = !((abc_caches->floats.params.is_identity &&
                         (abc_caches)[1].floats.params.is_identity &&
                         (abc_caches)[2].floats.params.is_identity));
    bool has_lmn_procs = !((lmn_caches->floats.params.is_identity &&
                         (lmn_caches)[1].floats.params.is_identity &&
                         (lmn_caches)[2].floats.params.is_identity));
    gs_cie_abc *pcie = pcs->params.abc;
    bool input_range_ok;
    int code;
    float *cam;
    gs_vector3 d50;

    d50.u = 0.9642f;
    d50.v = 1.0f;
    d50.w = 0.8249f;

    gsicc_create_init_luta2bpart(&icc_luta2bparts);
    gsicc_matrix_init(&(pcie->common.MatrixLMN));
    gsicc_matrix_init(&(pcie->MatrixABC));

    setheader_common(header);




    header->colorSpace = icSigRgbData;
    header->deviceClass = icSigInputClass;
    header->pcs = icSigXYZData;
    icc_luta2bparts.num_in = 3;
    icc_luta2bparts.num_out = 3;
    icc_luta2bparts.white_point = &(pcie->common.points.WhitePoint);
    icc_luta2bparts.black_point = &(pcie->common.points.BlackPoint);


    code = gsicc_compute_cam(&icc_luta2bparts, memory);
    if (code < 0) {
        gs_throw_imp(__func__, "./base/gsicc_create.c", 1780, 1, code, "Create ICC from CIEABC failed");
    }



    *islab = ((bool)0);
# 1794 "./base/gsicc_create.c"
    input_range_ok = check_range(&(pcie->RangeABC.ranges[0]), 3);
    if (!input_range_ok) {

        code = gsicc_create_mashed_clut(&icc_luta2bparts, header, ((void*)0), pcs,
                                 &(pcie->RangeABC.ranges[0]), pp_buffer_in,
                                 profile_size_out, ((bool)1), memory);
        if (code < 0)
            gs_throw_imp(__func__, "./base/gsicc_create.c", 1801, 1, code, "Failed in ICC creation from ABC mashed. CLUT");
    } else {
        if (pcie->MatrixABC.is_identity || !has_lmn_procs ||
                            pcie->common.MatrixLMN.is_identity) {


            icc_luta2bparts.matrix = &matrix_input_trans;
            code = gsicc_create_abc_merge(&(icc_luta2bparts), &(pcie->common.MatrixLMN),
                                    &(pcie->MatrixABC), has_abc_procs,
                                    has_lmn_procs, pcie->caches.DecodeABC.caches,
                                    pcie->common.caches.DecodeLMN, memory);
            if (code < 0)
                gs_throw_imp(__func__, "./base/gsicc_create.c", 1813, 1, code, "Failed in ICC creation from ABC. Merge");
            icc_luta2bparts.clut = ((void*)0);


            code = create_lutAtoBprofile(pp_buffer_in, header, &icc_luta2bparts, ((bool)0),
                                         ((bool)0), memory);
            if (code < 0)
                gs_throw_imp(__func__, "./base/gsicc_create.c", 1820, 1, code, "Failed in ICC creation from ABC. Profile");
        } else {





            if (has_abc_procs) {
                icc_luta2bparts.a_curves = (float*) (*(memory)->procs.alloc_bytes)(memory, 3*512*sizeof(float), "gsicc_create_fromabc");

                if (icc_luta2bparts.a_curves == ((void*)0))
                    gs_throw_imp(__func__, "./base/gsicc_create.c", 1831, 0, (-25), "Allocation of ICC a curves failed");

                curr_pos = icc_luta2bparts.a_curves;
                memcpy(curr_pos,&(pcie->caches.DecodeABC.caches->floats.values[0]),
                                512*sizeof(float));
                curr_pos += 512;
                memcpy(curr_pos,&((pcie->caches.DecodeABC.caches[1]).floats.values[0]),
                                512*sizeof(float));
                curr_pos += 512;
                memcpy(curr_pos,&((pcie->caches.DecodeABC.caches[2]).floats.values[0]),
                                512*sizeof(float));
            }
            if (has_lmn_procs) {
                icc_luta2bparts.m_curves = (float*) (*(memory)->procs.alloc_bytes)(memory, 3*512*sizeof(float), "gsicc_create_fromabc");

                if (icc_luta2bparts.m_curves == ((void*)0)) {
                    ((memory)->procs.free_object(memory, icc_luta2bparts.a_curves, "gsicc_create_fromabc"));

                    gs_throw_imp(__func__, "./base/gsicc_create.c", 1849, 0, (-25), "Allocation of ICC m curves failed");
                }
                curr_pos = icc_luta2bparts.m_curves;
                memcpy(curr_pos,&(pcie->common.caches.DecodeLMN->floats.values[0]),
                                512*sizeof(float));
                curr_pos += 512;
                memcpy(curr_pos,&((pcie->common.caches.DecodeLMN[1]).floats.values[0]),
                                512*sizeof(float));
                curr_pos += 512;
                memcpy(curr_pos,&((pcie->common.caches.DecodeLMN[2]).floats.values[0]),
                                512*sizeof(float));
            }

            icc_luta2bparts.clut = (gsicc_clut*) (*(memory)->procs.alloc_bytes)(memory, sizeof(gsicc_clut), "gsicc_create_fromabc");

            if (icc_luta2bparts.m_curves == ((void*)0)) {
                ((memory)->procs.free_object(memory, icc_luta2bparts.a_curves, "gsicc_create_fromabc"));

                ((memory)->procs.free_object(memory, icc_luta2bparts.m_curves, "gsicc_create_fromabc"));

                gs_throw_imp(__func__, "./base/gsicc_create.c", 1869, 0, (-25), "Allocation of ICC clut failed");
            }
            for (k = 0; k < 3; k++) {
                icc_luta2bparts.clut->clut_dims[k] = 2;
            }
            icc_luta2bparts.clut->clut_num_input = 3;
            icc_luta2bparts.clut->clut_num_output = 3;
            icc_luta2bparts.clut->clut_word_width = 2;
            gsicc_create_initialize_clut(icc_luta2bparts.clut);

            icc_luta2bparts.clut->data_short =
                            (unsigned short*) (*(memory)->procs.alloc_bytes)(memory, 8*3*sizeof(short), "gsicc_create_fromabc");

            if (icc_luta2bparts.clut->data_short == ((void*)0)) {
                ((memory)->procs.free_object(memory, icc_luta2bparts.a_curves, "gsicc_create_fromabc"));

                ((memory)->procs.free_object(memory, icc_luta2bparts.m_curves, "gsicc_create_fromabc"));

                ((memory)->procs.free_object(memory, icc_luta2bparts.clut, "gsicc_create_fromabc"));

                gs_throw_imp(__func__, "./base/gsicc_create.c", 1889, 0, (-25), "Allocation of ICC clut data failed");
            }
            gsicc_matrix3_to_mlut(&(pcie->MatrixABC), icc_luta2bparts.clut->data_short);

            cie_matrix_transpose3(&(pcie->common.MatrixLMN), &matrix_input_trans);
            icc_luta2bparts.matrix = &matrix_input_trans;

            code = create_lutAtoBprofile(pp_buffer_in, header, &icc_luta2bparts,
                                         ((bool)0), ((bool)0), memory);
            if (code < 0)
                return code;
        }
    }
    gsicc_create_free_luta2bpart(memory, &icc_luta2bparts);
    *profile_size_out = header->size;





    return 0;
}

int
gsicc_create_froma(const gs_color_space *pcs, unsigned char **pp_buffer_in,
                   int *profile_size_out, gs_memory_t *memory,
                   gx_cie_vector_cache *a_cache, gx_cie_scalar_cache *lmn_caches)
{
    icProfile iccprofile;
    icHeader *header = &(iccprofile.header);



    gs_matrix3 matrix_input;
    float *curr_pos;
    bool has_a_proc = !(a_cache->floats.params.is_identity);
    bool has_lmn_procs = !(lmn_caches->floats.params.is_identity &&
                         (lmn_caches)[1].floats.params.is_identity &&
                         (lmn_caches)[2].floats.params.is_identity);
    gsicc_lutatob icc_luta2bparts;
    bool common_range_ok;
    gs_cie_a *pcie = pcs->params.a;
    bool input_range_ok;
    int code;
    float *cam;
    gs_vector3 d50;

    d50.u = 0.9642f;
    d50.v = 1.0f;
    d50.w = 0.8249f;

    gsicc_create_init_luta2bpart(&icc_luta2bparts);

    setheader_common(header);



    header->colorSpace = icSigGrayData;
    header->deviceClass = icSigInputClass;
    header->pcs = icSigXYZData;
    icc_luta2bparts.num_out = 3;
    icc_luta2bparts.num_in = 1;
    icc_luta2bparts.white_point = &(pcie->common.points.WhitePoint);
    icc_luta2bparts.black_point = &(pcie->common.points.BlackPoint);

    code = gsicc_compute_cam(&icc_luta2bparts, memory);
    if (code < 0) {
        gs_throw_imp(__func__, "./base/gsicc_create.c", 1956, 1, code, "Create from CIEA failed");
    }






    common_range_ok = check_range(&(pcie->common.RangeLMN.ranges[0]),3);
    if (!common_range_ok) {
        input_range_ok = check_range(&(pcie->RangeA),1);
        code = gsicc_create_mashed_clut(&icc_luta2bparts, header, ((void*)0), pcs,
                                 &(pcie->RangeA), pp_buffer_in, profile_size_out,
                                 !input_range_ok, memory);
        if (code < 0)
            gs_throw_imp(__func__, "./base/gsicc_create.c", 1971, 1, code, "Failed to create ICC mashed CLUT");
    } else {






        if (has_a_proc) {
            icc_luta2bparts.a_curves = (float*) (*(memory)->procs.alloc_bytes)(memory, 512*sizeof(float), "gsicc_create_froma");

            if (icc_luta2bparts.a_curves == ((void*)0))
                gs_throw_imp(__func__, "./base/gsicc_create.c", 1983, 0, (-25), "Allocation of ICC a curves failed");
            memcpy(icc_luta2bparts.a_curves,
                    &(pcie->caches.DecodeA.floats.values[0]),
                    512*sizeof(float));
        }
        if (has_lmn_procs) {
            icc_luta2bparts.m_curves = (float*) (*(memory)->procs.alloc_bytes)(memory, 3*512*sizeof(float), "gsicc_create_froma");

            if (icc_luta2bparts.m_curves == ((void*)0)) {
                ((memory)->procs.free_object(memory, icc_luta2bparts.a_curves, "gsicc_create_froma"));
                gs_throw_imp(__func__, "./base/gsicc_create.c", 1993, 0, (-25), "Allocation of ICC m curves failed");
            }
            curr_pos = icc_luta2bparts.m_curves;
            memcpy(curr_pos,&(pcie->common.caches.DecodeLMN->floats.values[0]),
                        512*sizeof(float));
            curr_pos += 512;
            memcpy(curr_pos,&((pcie->common.caches.DecodeLMN[1]).floats.values[0]),
                        512*sizeof(float));
            curr_pos += 512;
            memcpy(curr_pos,&((pcie->common.caches.DecodeLMN[2]).floats.values[0]),
                        512*sizeof(float));
        }

        icc_luta2bparts.clut = (gsicc_clut*) (*(memory)->procs.alloc_bytes)(memory, sizeof(gsicc_clut), "gsicc_create_froma");

        if (icc_luta2bparts.clut == ((void*)0)) {
            ((memory)->procs.free_object(memory, icc_luta2bparts.a_curves, "gsicc_create_froma"));
            ((memory)->procs.free_object(memory, icc_luta2bparts.m_curves, "gsicc_create_froma"));
            gs_throw_imp(__func__, "./base/gsicc_create.c", 2011, 0, (-25), "Allocation of ICC clut failed");
        }
        icc_luta2bparts.clut->clut_dims[0] = 2;
        icc_luta2bparts.clut->clut_num_input = 1;
        icc_luta2bparts.clut->clut_num_output = 3;
        icc_luta2bparts.clut->clut_word_width = 2;
        gsicc_create_initialize_clut(icc_luta2bparts.clut);

        icc_luta2bparts.clut->data_short = (unsigned short*)
                    (*(memory)->procs.alloc_bytes)(memory, 2 * 3 * sizeof(short), "gsicc_create_froma");

        if (icc_luta2bparts.clut == ((void*)0)) {
            ((memory)->procs.free_object(memory, icc_luta2bparts.a_curves, "gsicc_create_froma"));
            ((memory)->procs.free_object(memory, icc_luta2bparts.m_curves, "gsicc_create_froma"));
            ((memory)->procs.free_object(memory, icc_luta2bparts.clut, "gsicc_create_froma"));
            gs_throw_imp(__func__, "./base/gsicc_create.c", 2026, 0, (-25), "Allocation of ICC clut data failed");
        }







        gsicc_vec_to_mlut(&(pcie->MatrixA), icc_luta2bparts.clut->data_short);
        cie_matrix_transpose3(&(pcie->common.MatrixLMN), &matrix_input);

        icc_luta2bparts.matrix = &matrix_input;
        icc_luta2bparts.num_in = 1;
        icc_luta2bparts.num_out = 3;



        code = create_lutAtoBprofile(pp_buffer_in, header, &icc_luta2bparts, ((bool)1),
                                     ((bool)0), memory);
        if (code < 0)
            gs_throw_imp(__func__, "./base/gsicc_create.c", 2047, 1, code, "Failed to create ICC AtoB Profile");
    }
    *profile_size_out = header->size;
    gsicc_create_free_luta2bpart(memory, &icc_luta2bparts);





    return 0;
}


static int
gsicc_create_defg_common(gs_cie_abc *pcie, gsicc_lutatob *icc_luta2bparts,
                         bool has_lmn_procs, bool has_abc_procs,
                         icHeader *header, gx_color_lookup_table *Table,
                         const gs_color_space *pcs, gs_range *ranges,
                         unsigned char **pp_buffer_in, int *profile_size_out,
                         gs_memory_t* memory)
{
    gs_matrix3 matrix_input_trans;
    int k;
    bool input_range_ok;
    int code;

    gsicc_matrix_init(&(pcie->common.MatrixLMN));
    gsicc_matrix_init(&(pcie->MatrixABC));
    setheader_common(header);




    header->deviceClass = icSigInputClass;
    header->pcs = icSigXYZData;
    icc_luta2bparts->num_out = 3;
    icc_luta2bparts->white_point = &(pcie->common.points.WhitePoint);
    icc_luta2bparts->black_point = &(pcie->common.points.BlackPoint);


    code = gsicc_compute_cam(icc_luta2bparts, memory);
    if (code < 0) {
        gs_throw_imp(__func__, "./base/gsicc_create.c", 2089, 1, code, "Create ICC from CIEABC failed");
    }






    if ( (!(pcie->MatrixABC.is_identity) && has_lmn_procs &&
                   !(pcie->common.MatrixLMN.is_identity)) || 1 ) {





        if (gs_color_space_get_index(pcs) == gs_color_space_index_CIEDEF) {
            input_range_ok = check_range(&(pcs->params.def->RangeDEF.ranges[0]),3);
        } else {
            input_range_ok = check_range(&(pcs->params.defg->RangeDEFG.ranges[0]),4);
        }
        code = gsicc_create_mashed_clut(icc_luta2bparts, header, Table,
                            pcs, ranges, pp_buffer_in, profile_size_out,
                            !input_range_ok, memory);
        if (code < 0)
            gs_throw_imp(__func__, "./base/gsicc_create.c", 2113, 1, code, "Failed to create ICC clut");
    } else {


        icc_luta2bparts->matrix = &matrix_input_trans;
        code = gsicc_create_abc_merge(icc_luta2bparts, &(pcie->common.MatrixLMN),
                                &(pcie->MatrixABC), has_abc_procs,
                                has_lmn_procs, pcie->caches.DecodeABC.caches,
                                pcie->common.caches.DecodeLMN, memory);
        if (code < 0)
            gs_throw_imp(__func__, "./base/gsicc_create.c", 2123, 1, code, "Failed to create ICC abc merge");


        icc_luta2bparts->clut = (gsicc_clut*) (*(memory)->procs.alloc_bytes)(memory, sizeof(gsicc_clut), "gsicc_create_defg_common");

        if (icc_luta2bparts->clut == ((void*)0))
            gs_throw_imp(__func__, "./base/gsicc_create.c", 2129, 0, (-25), "Allocation of ICC clut failed");

        for (k = 0; k < icc_luta2bparts->num_in; k++) {
            icc_luta2bparts->clut->clut_dims[k] = Table->dims[k];
        }
        icc_luta2bparts->clut->clut_num_input = icc_luta2bparts->num_in;
        icc_luta2bparts->clut->clut_num_output = 3;
        icc_luta2bparts->clut->clut_word_width = 1;
        gsicc_create_initialize_clut(icc_luta2bparts->clut);

        icc_luta2bparts->clut->data_byte = (byte*) Table->table->data;

        code = create_lutAtoBprofile(pp_buffer_in, header, icc_luta2bparts, ((bool)0),
                                     ((bool)0), memory);
        if (code < 0)
            gs_throw_imp(__func__, "./base/gsicc_create.c", 2144, 1, code, "Failed to create ICC lutAtoB");
    }
    gsicc_create_free_luta2bpart(memory, icc_luta2bparts);
    *profile_size_out = header->size;
    return 0;
}



int
gsicc_create_fromdefg(const gs_color_space *pcs, unsigned char **pp_buffer_in,
                      int *profile_size_out, gs_memory_t *memory,
                      gx_cie_vector_cache *abc_caches,
                      gx_cie_scalar_cache *lmn_caches,
                      gx_cie_scalar_cache *defg_caches)
{
    gs_cie_defg *pcie = pcs->params.defg;
    gsicc_lutatob icc_luta2bparts;
    icProfile iccprofile;
    icHeader *header = &(iccprofile.header);



    float *curr_pos;
    bool has_abc_procs = !((abc_caches->floats.params.is_identity &&
                         (abc_caches)[1].floats.params.is_identity &&
                         (abc_caches)[2].floats.params.is_identity));
    bool has_lmn_procs = !((lmn_caches->floats.params.is_identity &&
                         (lmn_caches)[1].floats.params.is_identity &&
                         (lmn_caches)[2].floats.params.is_identity));
    bool has_defg_procs = !((defg_caches->floats.params.is_identity &&
                         (defg_caches)[1].floats.params.is_identity &&
                         (defg_caches)[2].floats.params.is_identity &&
                         (defg_caches)[3].floats.params.is_identity));
    int code;


    gsicc_create_init_luta2bpart(&icc_luta2bparts);
    header->colorSpace = icSigCmykData;
    icc_luta2bparts.num_in = 4;


    if (has_defg_procs) {
        icc_luta2bparts.a_curves = (float*) (*(memory)->procs.alloc_bytes)(memory, 4*512*sizeof(float), "gsicc_create_fromdefg");

        if (icc_luta2bparts.a_curves == ((void*)0))
            gs_throw_imp(__func__, "./base/gsicc_create.c", 2190, 0, (-25), "Allocation of ICC a curves failed");
        curr_pos = icc_luta2bparts.a_curves;
        memcpy(curr_pos,&(pcie->caches_defg.DecodeDEFG->floats.values[0]),
                512*sizeof(float));
        curr_pos += 512;
        memcpy(curr_pos,&((pcie->caches_defg.DecodeDEFG[1]).floats.values[0]),
                512*sizeof(float));
        curr_pos += 512;
        memcpy(curr_pos,&((pcie->caches_defg.DecodeDEFG[2]).floats.values[0]),
                512*sizeof(float));
        curr_pos += 512;
        memcpy(curr_pos,&((pcie->caches_defg.DecodeDEFG[3]).floats.values[0]),
                512*sizeof(float));
    }

    code = gsicc_create_defg_common((gs_cie_abc*) pcie, &icc_luta2bparts,
                                    has_lmn_procs, has_abc_procs,
                                    header, &(pcie->Table), pcs,
                                    &(pcie->RangeDEFG.ranges[0]),
                                    pp_buffer_in, profile_size_out, memory);





    return code;
}

int
gsicc_create_fromdef(const gs_color_space *pcs, unsigned char **pp_buffer_in,
                     int *profile_size_out, gs_memory_t *memory,
                     gx_cie_vector_cache *abc_caches,
                     gx_cie_scalar_cache *lmn_caches,
                     gx_cie_scalar_cache *def_caches)
{
    gs_cie_def *pcie = pcs->params.def;
    gsicc_lutatob icc_luta2bparts;
    icProfile iccprofile;
    icHeader *header = &(iccprofile.header);



    float *curr_pos;
    bool has_abc_procs = !((abc_caches->floats.params.is_identity &&
                         (abc_caches)[1].floats.params.is_identity &&
                         (abc_caches)[2].floats.params.is_identity));
    bool has_lmn_procs = !((lmn_caches->floats.params.is_identity &&
                         (lmn_caches)[1].floats.params.is_identity &&
                         (lmn_caches)[2].floats.params.is_identity));
    bool has_def_procs = !((def_caches->floats.params.is_identity &&
                         (def_caches)[1].floats.params.is_identity &&
                         (def_caches)[2].floats.params.is_identity));
    int code;

    gsicc_create_init_luta2bpart(&icc_luta2bparts);

    header->colorSpace = icSigRgbData;
    icc_luta2bparts.num_in = 3;


    if (has_def_procs) {
        icc_luta2bparts.a_curves = (float*) (*(memory)->procs.alloc_bytes)(memory, 3*512*sizeof(float), "gsicc_create_fromdef");

    if (icc_luta2bparts.a_curves == ((void*)0))
        gs_throw_imp(__func__, "./base/gsicc_create.c", 2254, 0, (-25), "Allocation of ICC a curves failed");
        curr_pos = icc_luta2bparts.a_curves;
        memcpy(curr_pos,&(pcie->caches_def.DecodeDEF->floats.values[0]),
                512*sizeof(float));
        curr_pos += 512;
        memcpy(curr_pos,&((pcie->caches_def.DecodeDEF[1]).floats.values[0]),
                512*sizeof(float));
        curr_pos += 512;
        memcpy(curr_pos,&((pcie->caches_def.DecodeDEF[2]).floats.values[0]),
                512*sizeof(float));
    }
    code = gsicc_create_defg_common((gs_cie_abc*) pcie, &icc_luta2bparts,
                                    has_lmn_procs, has_abc_procs, header,
                                    &(pcie->Table), pcs, &(pcie->RangeDEF.ranges[0]),
                                    pp_buffer_in, profile_size_out, memory);





    return code;
}

void
gsicc_create_fromcrd(unsigned char *buffer, gs_memory_t *memory)
{
    icProfile iccprofile;
    icHeader *header = &(iccprofile.header);

    setheader_common(header);
}
