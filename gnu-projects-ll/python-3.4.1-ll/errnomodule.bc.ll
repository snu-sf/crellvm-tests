; ModuleID = './errnomodule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }

@errnomodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([508 x i8], [508 x i8]* @errno__doc__, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([1 x %struct.PyMethodDef], [1 x %struct.PyMethodDef]* @errno_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [10 x i8] c"errorcode\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ENODEV\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ENOCSI\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"EHOSTUNREACH\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ENOMSG\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"EUCLEAN\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"EL2NSYNC\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"EL2HLT\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ENODATA\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ENOTBLK\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"ENOSYS\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"EPIPE\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"EINVAL\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"EOVERFLOW\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"EADV\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"EINTR\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"EUSERS\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"ENOTEMPTY\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"ENOBUFS\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"EPROTO\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"EREMOTE\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"ENAVAIL\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"ECHILD\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"ELOOP\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"EXDEV\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"E2BIG\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"ESRCH\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"EMSGSIZE\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"EAFNOSUPPORT\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"EBADR\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"EHOSTDOWN\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"EPFNOSUPPORT\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"ENOPROTOOPT\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"EBUSY\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"EWOULDBLOCK\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"EBADFD\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"EDOTDOT\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"EISCONN\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"ENOANO\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"ESHUTDOWN\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"ECHRNG\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"ELIBBAD\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"ENONET\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"EBADE\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"EBADF\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"EMULTIHOP\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"EIO\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"EUNATCH\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"EPROTOTYPE\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"ENOSPC\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"ENOEXEC\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"EALREADY\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"ENETDOWN\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"ENOTNAM\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"EACCES\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"ELNRNG\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"EILSEQ\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"ENOTDIR\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"ENOTUNIQ\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"EPERM\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"EDOM\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"EXFULL\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"ECONNREFUSED\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"EISDIR\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"EPROTONOSUPPORT\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"EROFS\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"EADDRNOTAVAIL\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"EIDRM\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"ECOMM\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"ESRMNT\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"EREMOTEIO\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"EL3RST\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"EBADMSG\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"ENFILE\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"ELIBMAX\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"ESPIPE\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"ENOLINK\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"ENETRESET\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"ETIMEDOUT\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"ENOENT\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"EEXIST\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"EDQUOT\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"ENOSTR\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"EBADSLT\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"EBADRQC\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"ELIBACC\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"EFAULT\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"EFBIG\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"EDEADLK\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"ENOTCONN\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"EDESTADDRREQ\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"ELIBSCN\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"ENOLCK\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"EISNAM\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"ECONNABORTED\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"ENETUNREACH\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"ESTALE\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"ENOSR\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"ENOMEM\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"ENOTSOCK\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"ESTRPIPE\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"EMLINK\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"ERANGE\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"ELIBEXEC\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"EL3HLT\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"ECONNRESET\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"EADDRINUSE\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"EOPNOTSUPP\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"EREMCHG\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"EAGAIN\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"ENAMETOOLONG\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"ENOTTY\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"ERESTART\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"ESOCKTNOSUPPORT\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"ETIME\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"EBFONT\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"EDEADLOCK\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"ETOOMANYREFS\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"EMFILE\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"ETXTBSY\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"EINPROGRESS\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"ENXIO\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"ENOPKG\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"ENOMEDIUM\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"EMEDIUMTYPE\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"ECANCELED\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"ENOKEY\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"EKEYEXPIRED\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"EKEYREVOKED\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"EKEYREJECTED\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"EOWNERDEAD\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"ENOTRECOVERABLE\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"ERFKILL\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"ENOTSUP\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"errno\00", align 1
@errno__doc__ = internal global [508 x i8] c"This module makes available standard errno system symbols.\0A\0AThe value of each symbol is the corresponding integer value,\0Ae.g., on most systems, errno.ENOENT equals the integer 2.\0A\0AThe dictionary errno.errorcode maps numeric codes to symbol names,\0Ae.g., errno.errorcode[2] could be the string 'ENOENT'.\0A\0ASymbols that are not relevant to the underlying system are not defined.\0A\0ATo map error codes to error messages, use the function os.strerror(),\0Ae.g. os.strerror(2) could return 'No such file or directory'.\00", align 16
@errno_methods = internal global [1 x %struct.PyMethodDef] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_errno() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %de = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @errnomodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call %struct._object* @PyModule_GetDict(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %d, align 8
  %call2 = call %struct._object* @PyDict_New()
  store %struct._object* %call2, %struct._object** %de, align 8
  %2 = load %struct._object*, %struct._object** %d, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.7

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %de, align 8
  %tobool3 = icmp ne %struct._object* %3, null
  br i1 %tobool3, label %lor.lhs.false.4, label %if.then.7

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %d, align 8
  %5 = load %struct._object*, %struct._object** %de, align 8
  %call5 = call i32 @PyDict_SetItemString(%struct._object* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct._object* %5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false, %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false.4
  %6 = load %struct._object*, %struct._object** %d, align 8
  %7 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %6, %struct._object* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 19)
  %8 = load %struct._object*, %struct._object** %d, align 8
  %9 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %8, %struct._object* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 50)
  %10 = load %struct._object*, %struct._object** %d, align 8
  %11 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %10, %struct._object* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 113)
  %12 = load %struct._object*, %struct._object** %d, align 8
  %13 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %12, %struct._object* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 42)
  %14 = load %struct._object*, %struct._object** %d, align 8
  %15 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %14, %struct._object* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 117)
  %16 = load %struct._object*, %struct._object** %d, align 8
  %17 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %16, %struct._object* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 45)
  %18 = load %struct._object*, %struct._object** %d, align 8
  %19 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %18, %struct._object* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 51)
  %20 = load %struct._object*, %struct._object** %d, align 8
  %21 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %20, %struct._object* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 61)
  %22 = load %struct._object*, %struct._object** %d, align 8
  %23 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %22, %struct._object* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 15)
  %24 = load %struct._object*, %struct._object** %d, align 8
  %25 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %24, %struct._object* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 38)
  %26 = load %struct._object*, %struct._object** %d, align 8
  %27 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %26, %struct._object* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 32)
  %28 = load %struct._object*, %struct._object** %d, align 8
  %29 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %28, %struct._object* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 22)
  %30 = load %struct._object*, %struct._object** %d, align 8
  %31 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %30, %struct._object* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 75)
  %32 = load %struct._object*, %struct._object** %d, align 8
  %33 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %32, %struct._object* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 68)
  %34 = load %struct._object*, %struct._object** %d, align 8
  %35 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %34, %struct._object* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 4)
  %36 = load %struct._object*, %struct._object** %d, align 8
  %37 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %36, %struct._object* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 87)
  %38 = load %struct._object*, %struct._object** %d, align 8
  %39 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %38, %struct._object* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 39)
  %40 = load %struct._object*, %struct._object** %d, align 8
  %41 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %40, %struct._object* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 105)
  %42 = load %struct._object*, %struct._object** %d, align 8
  %43 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %42, %struct._object* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 71)
  %44 = load %struct._object*, %struct._object** %d, align 8
  %45 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %44, %struct._object* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 66)
  %46 = load %struct._object*, %struct._object** %d, align 8
  %47 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %46, %struct._object* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i32 119)
  %48 = load %struct._object*, %struct._object** %d, align 8
  %49 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %48, %struct._object* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 10)
  %50 = load %struct._object*, %struct._object** %d, align 8
  %51 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %50, %struct._object* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 40)
  %52 = load %struct._object*, %struct._object** %d, align 8
  %53 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %52, %struct._object* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 18)
  %54 = load %struct._object*, %struct._object** %d, align 8
  %55 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %54, %struct._object* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 7)
  %56 = load %struct._object*, %struct._object** %d, align 8
  %57 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %56, %struct._object* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 3)
  %58 = load %struct._object*, %struct._object** %d, align 8
  %59 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %58, %struct._object* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 90)
  %60 = load %struct._object*, %struct._object** %d, align 8
  %61 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %60, %struct._object* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 97)
  %62 = load %struct._object*, %struct._object** %d, align 8
  %63 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %62, %struct._object* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 53)
  %64 = load %struct._object*, %struct._object** %d, align 8
  %65 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %64, %struct._object* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i32 112)
  %66 = load %struct._object*, %struct._object** %d, align 8
  %67 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %66, %struct._object* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i32 96)
  %68 = load %struct._object*, %struct._object** %d, align 8
  %69 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %68, %struct._object* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 92)
  %70 = load %struct._object*, %struct._object** %d, align 8
  %71 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %70, %struct._object* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 16)
  %72 = load %struct._object*, %struct._object** %d, align 8
  %73 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %72, %struct._object* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i32 11)
  %74 = load %struct._object*, %struct._object** %d, align 8
  %75 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %74, %struct._object* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 77)
  %76 = load %struct._object*, %struct._object** %d, align 8
  %77 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %76, %struct._object* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 73)
  %78 = load %struct._object*, %struct._object** %d, align 8
  %79 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %78, %struct._object* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 106)
  %80 = load %struct._object*, %struct._object** %d, align 8
  %81 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %80, %struct._object* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 55)
  %82 = load %struct._object*, %struct._object** %d, align 8
  %83 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %82, %struct._object* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 108)
  %84 = load %struct._object*, %struct._object** %d, align 8
  %85 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %84, %struct._object* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 44)
  %86 = load %struct._object*, %struct._object** %d, align 8
  %87 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %86, %struct._object* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 80)
  %88 = load %struct._object*, %struct._object** %d, align 8
  %89 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %88, %struct._object* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 64)
  %90 = load %struct._object*, %struct._object** %d, align 8
  %91 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %90, %struct._object* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 52)
  %92 = load %struct._object*, %struct._object** %d, align 8
  %93 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %92, %struct._object* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 9)
  %94 = load %struct._object*, %struct._object** %d, align 8
  %95 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %94, %struct._object* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 72)
  %96 = load %struct._object*, %struct._object** %d, align 8
  %97 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %96, %struct._object* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i32 5)
  %98 = load %struct._object*, %struct._object** %d, align 8
  %99 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %98, %struct._object* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 49)
  %100 = load %struct._object*, %struct._object** %d, align 8
  %101 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %100, %struct._object* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 91)
  %102 = load %struct._object*, %struct._object** %d, align 8
  %103 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %102, %struct._object* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 28)
  %104 = load %struct._object*, %struct._object** %d, align 8
  %105 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %104, %struct._object* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 8)
  %106 = load %struct._object*, %struct._object** %d, align 8
  %107 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %106, %struct._object* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 114)
  %108 = load %struct._object*, %struct._object** %d, align 8
  %109 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %108, %struct._object* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 100)
  %110 = load %struct._object*, %struct._object** %d, align 8
  %111 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %110, %struct._object* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 118)
  %112 = load %struct._object*, %struct._object** %d, align 8
  %113 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %112, %struct._object* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 13)
  %114 = load %struct._object*, %struct._object** %d, align 8
  %115 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %114, %struct._object* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 48)
  %116 = load %struct._object*, %struct._object** %d, align 8
  %117 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %116, %struct._object* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 84)
  %118 = load %struct._object*, %struct._object** %d, align 8
  %119 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %118, %struct._object* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i32 20)
  %120 = load %struct._object*, %struct._object** %d, align 8
  %121 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %120, %struct._object* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i32 76)
  %122 = load %struct._object*, %struct._object** %d, align 8
  %123 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %122, %struct._object* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 1)
  %124 = load %struct._object*, %struct._object** %d, align 8
  %125 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %124, %struct._object* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 33)
  %126 = load %struct._object*, %struct._object** %d, align 8
  %127 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %126, %struct._object* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 54)
  %128 = load %struct._object*, %struct._object** %d, align 8
  %129 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %128, %struct._object* %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i32 111)
  %130 = load %struct._object*, %struct._object** %d, align 8
  %131 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %130, %struct._object* %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 21)
  %132 = load %struct._object*, %struct._object** %d, align 8
  %133 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %132, %struct._object* %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0), i32 93)
  %134 = load %struct._object*, %struct._object** %d, align 8
  %135 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %134, %struct._object* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i32 30)
  %136 = load %struct._object*, %struct._object** %d, align 8
  %137 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %136, %struct._object* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0), i32 99)
  %138 = load %struct._object*, %struct._object** %d, align 8
  %139 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %138, %struct._object* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 43)
  %140 = load %struct._object*, %struct._object** %d, align 8
  %141 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %140, %struct._object* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 70)
  %142 = load %struct._object*, %struct._object** %d, align 8
  %143 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %142, %struct._object* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 69)
  %144 = load %struct._object*, %struct._object** %d, align 8
  %145 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %144, %struct._object* %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 121)
  %146 = load %struct._object*, %struct._object** %d, align 8
  %147 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %146, %struct._object* %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 47)
  %148 = load %struct._object*, %struct._object** %d, align 8
  %149 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %148, %struct._object* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), i32 74)
  %150 = load %struct._object*, %struct._object** %d, align 8
  %151 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %150, %struct._object* %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 23)
  %152 = load %struct._object*, %struct._object** %d, align 8
  %153 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %152, %struct._object* %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 82)
  %154 = load %struct._object*, %struct._object** %d, align 8
  %155 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %154, %struct._object* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i32 29)
  %156 = load %struct._object*, %struct._object** %d, align 8
  %157 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %156, %struct._object* %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i32 67)
  %158 = load %struct._object*, %struct._object** %d, align 8
  %159 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %158, %struct._object* %159, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 102)
  %160 = load %struct._object*, %struct._object** %d, align 8
  %161 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %160, %struct._object* %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 110)
  %162 = load %struct._object*, %struct._object** %d, align 8
  %163 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %162, %struct._object* %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i32 2)
  %164 = load %struct._object*, %struct._object** %d, align 8
  %165 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %164, %struct._object* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i32 17)
  %166 = load %struct._object*, %struct._object** %d, align 8
  %167 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %166, %struct._object* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 122)
  %168 = load %struct._object*, %struct._object** %d, align 8
  %169 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %168, %struct._object* %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i32 60)
  %170 = load %struct._object*, %struct._object** %d, align 8
  %171 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %170, %struct._object* %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i32 57)
  %172 = load %struct._object*, %struct._object** %d, align 8
  %173 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %172, %struct._object* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i32 56)
  %174 = load %struct._object*, %struct._object** %d, align 8
  %175 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %174, %struct._object* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i32 79)
  %176 = load %struct._object*, %struct._object** %d, align 8
  %177 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %176, %struct._object* %177, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i32 14)
  %178 = load %struct._object*, %struct._object** %d, align 8
  %179 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %178, %struct._object* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i32 27)
  %180 = load %struct._object*, %struct._object** %d, align 8
  %181 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %180, %struct._object* %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0), i32 35)
  %182 = load %struct._object*, %struct._object** %d, align 8
  %183 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %182, %struct._object* %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i32 0, i32 0), i32 107)
  %184 = load %struct._object*, %struct._object** %d, align 8
  %185 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %184, %struct._object* %185, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), i32 89)
  %186 = load %struct._object*, %struct._object** %d, align 8
  %187 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %186, %struct._object* %187, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0), i32 81)
  %188 = load %struct._object*, %struct._object** %d, align 8
  %189 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %188, %struct._object* %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i32 37)
  %190 = load %struct._object*, %struct._object** %d, align 8
  %191 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %190, %struct._object* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i32 120)
  %192 = load %struct._object*, %struct._object** %d, align 8
  %193 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %192, %struct._object* %193, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i32 0, i32 0), i32 103)
  %194 = load %struct._object*, %struct._object** %d, align 8
  %195 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %194, %struct._object* %195, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0), i32 101)
  %196 = load %struct._object*, %struct._object** %d, align 8
  %197 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %196, %struct._object* %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i32 116)
  %198 = load %struct._object*, %struct._object** %d, align 8
  %199 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %198, %struct._object* %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i32 63)
  %200 = load %struct._object*, %struct._object** %d, align 8
  %201 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %200, %struct._object* %201, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0), i32 12)
  %202 = load %struct._object*, %struct._object** %d, align 8
  %203 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %202, %struct._object* %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i32 88)
  %204 = load %struct._object*, %struct._object** %d, align 8
  %205 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %204, %struct._object* %205, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i32 0, i32 0), i32 86)
  %206 = load %struct._object*, %struct._object** %d, align 8
  %207 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %206, %struct._object* %207, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i32 31)
  %208 = load %struct._object*, %struct._object** %d, align 8
  %209 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %208, %struct._object* %209, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0), i32 34)
  %210 = load %struct._object*, %struct._object** %d, align 8
  %211 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %210, %struct._object* %211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i32 83)
  %212 = load %struct._object*, %struct._object** %d, align 8
  %213 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %212, %struct._object* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i32 46)
  %214 = load %struct._object*, %struct._object** %d, align 8
  %215 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %214, %struct._object* %215, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 104)
  %216 = load %struct._object*, %struct._object** %d, align 8
  %217 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %216, %struct._object* %217, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i32 98)
  %218 = load %struct._object*, %struct._object** %d, align 8
  %219 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %218, %struct._object* %219, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0), i32 95)
  %220 = load %struct._object*, %struct._object** %d, align 8
  %221 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %220, %struct._object* %221, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0), i32 78)
  %222 = load %struct._object*, %struct._object** %d, align 8
  %223 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %222, %struct._object* %223, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i32 0, i32 0), i32 11)
  %224 = load %struct._object*, %struct._object** %d, align 8
  %225 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %224, %struct._object* %225, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.110, i32 0, i32 0), i32 36)
  %226 = load %struct._object*, %struct._object** %d, align 8
  %227 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %226, %struct._object* %227, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i32 25)
  %228 = load %struct._object*, %struct._object** %d, align 8
  %229 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %228, %struct._object* %229, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i32 0, i32 0), i32 85)
  %230 = load %struct._object*, %struct._object** %d, align 8
  %231 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %230, %struct._object* %231, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.113, i32 0, i32 0), i32 94)
  %232 = load %struct._object*, %struct._object** %d, align 8
  %233 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %232, %struct._object* %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0), i32 62)
  %234 = load %struct._object*, %struct._object** %d, align 8
  %235 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %234, %struct._object* %235, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i32 59)
  %236 = load %struct._object*, %struct._object** %d, align 8
  %237 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %236, %struct._object* %237, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0), i32 35)
  %238 = load %struct._object*, %struct._object** %d, align 8
  %239 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %238, %struct._object* %239, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i32 0, i32 0), i32 109)
  %240 = load %struct._object*, %struct._object** %d, align 8
  %241 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %240, %struct._object* %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.118, i32 0, i32 0), i32 24)
  %242 = load %struct._object*, %struct._object** %d, align 8
  %243 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %242, %struct._object* %243, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i32 26)
  %244 = load %struct._object*, %struct._object** %d, align 8
  %245 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %244, %struct._object* %245, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i32 115)
  %246 = load %struct._object*, %struct._object** %d, align 8
  %247 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %246, %struct._object* %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i32 0, i32 0), i32 6)
  %248 = load %struct._object*, %struct._object** %d, align 8
  %249 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %248, %struct._object* %249, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.122, i32 0, i32 0), i32 65)
  %250 = load %struct._object*, %struct._object** %d, align 8
  %251 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %250, %struct._object* %251, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), i32 123)
  %252 = load %struct._object*, %struct._object** %d, align 8
  %253 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %252, %struct._object* %253, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.124, i32 0, i32 0), i32 124)
  %254 = load %struct._object*, %struct._object** %d, align 8
  %255 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %254, %struct._object* %255, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i32 125)
  %256 = load %struct._object*, %struct._object** %d, align 8
  %257 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %256, %struct._object* %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i32 0, i32 0), i32 126)
  %258 = load %struct._object*, %struct._object** %d, align 8
  %259 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %258, %struct._object* %259, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i32 127)
  %260 = load %struct._object*, %struct._object** %d, align 8
  %261 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %260, %struct._object* %261, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i32 128)
  %262 = load %struct._object*, %struct._object** %d, align 8
  %263 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %262, %struct._object* %263, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i32 0, i32 0), i32 129)
  %264 = load %struct._object*, %struct._object** %d, align 8
  %265 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %264, %struct._object* %265, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0), i32 130)
  %266 = load %struct._object*, %struct._object** %d, align 8
  %267 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %266, %struct._object* %267, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i32 0, i32 0), i32 131)
  %268 = load %struct._object*, %struct._object** %d, align 8
  %269 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %268, %struct._object* %269, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i32 0), i32 132)
  %270 = load %struct._object*, %struct._object** %d, align 8
  %271 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %270, %struct._object* %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i32 125)
  %272 = load %struct._object*, %struct._object** %d, align 8
  %273 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %272, %struct._object* %273, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.133, i32 0, i32 0), i32 95)
  %274 = load %struct._object*, %struct._object** %d, align 8
  %275 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %274, %struct._object* %275, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0), i32 130)
  %276 = load %struct._object*, %struct._object** %d, align 8
  %277 = load %struct._object*, %struct._object** %de, align 8
  call void @_inscode(%struct._object* %276, %struct._object* %277, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i32 0, i32 0), i32 131)
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %278 = load %struct._object*, %struct._object** %de, align 8
  store %struct._object* %278, %struct._object** %_py_decref_tmp, align 8
  %279 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %279, i32 0, i32 0
  %280 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %280, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %281 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %281, i32 0, i32 1
  %282 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %282, i32 0, i32 4
  %283 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %284 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %283(%struct._object* %284)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %285 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %285, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.7, %if.then
  %286 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %286
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare %struct._object* @PyDict_New() #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @_inscode(%struct._object* %d, %struct._object* %de, i8* %name, i32 %code) #0 {
entry:
  %d.addr = alloca %struct._object*, align 8
  %de.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %code.addr = alloca i32, align 4
  %u = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  store %struct._object* %d, %struct._object** %d.addr, align 8
  store %struct._object* %de, %struct._object** %de.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %u, align 8
  %1 = load i32, i32* %code.addr, align 4
  %conv = sext i32 %1 to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %v, align 8
  %2 = load %struct._object*, %struct._object** %u, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %d.addr, align 8
  %5 = load %struct._object*, %struct._object** %u, align 8
  %6 = load %struct._object*, %struct._object** %v, align 8
  %call3 = call i32 @PyDict_SetItem(%struct._object* %4, %struct._object* %5, %struct._object* %6)
  %7 = load %struct._object*, %struct._object** %de.addr, align 8
  %8 = load %struct._object*, %struct._object** %v, align 8
  %9 = load %struct._object*, %struct._object** %u, align 8
  %call4 = call i32 @PyDict_SetItem(%struct._object* %7, %struct._object* %8, %struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %10, %struct._object** %_py_xdecref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %11, null
  br i1 %cmp, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.7
  br label %if.end.11

if.else:                                          ; preds = %do.body.7
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  %19 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %19, %struct._object** %_py_xdecref_tmp15, align 8
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp15, align 8
  %cmp16 = icmp ne %struct._object* %20, null
  br i1 %cmp16, label %if.then.18, label %if.end.31

if.then.18:                                       ; preds = %do.body.14
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp15, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp20, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %23, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.19
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.19
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %26(%struct._object* %27)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %do.body.14
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  ret void
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
