; ModuleID = './fcntlmodule.bc'
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
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.flock = type { i16, i16, i64, i64, i32 }

@fcntlmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([221 x i8], [221 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @fcntl_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@module_doc = internal global [221 x i8] c"This module performs file control and I/O control on file \0Adescriptors.  It is an interface to the fcntl() and ioctl() Unix\0Aroutines.  File descriptors can be obtained with the fileno() method of\0Aa file or socket object.\00", align 16
@fcntl_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @fcntl_fcntl, i32 1, i8* getelementptr inbounds ([703 x i8], [703 x i8]* @fcntl_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @fcntl_ioctl, i32 1, i8* getelementptr inbounds ([1452 x i8], [1452 x i8]* @ioctl_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @fcntl_flock, i32 1, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @flock_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @fcntl_lockf, i32 1, i8* getelementptr inbounds ([1033 x i8], [1033 x i8]* @lockf_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@fcntl_doc = internal global [703 x i8] c"fcntl(fd, op, [arg])\0A\0APerform the operation op on file descriptor fd.  The values used\0Afor op are operating system dependent, and are available\0Aas constants in the fcntl module, using the same names as used in\0Athe relevant C header files.  The argument arg is optional, and\0Adefaults to 0; it may be an int or a string.  If arg is given as a string,\0Athe return value of fcntl is a string of that length, containing the\0Aresulting value put in the arg buffer by the operating system.  The length\0Aof the arg string is not allowed to exceed 1024 bytes.  If the arg given\0Ais an integer or if none is specified, the result value is an integer\0Acorresponding to the return value of the fcntl call in the C code.\00", align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@ioctl_doc = internal global [1452 x i8] c"ioctl(fd, op[, arg[, mutate_flag]])\0A\0APerform the operation op on file descriptor fd.  The values used for op\0Aare operating system dependent, and are available as constants in the\0Afcntl or termios library modules, using the same names as used in the\0Arelevant C header files.\0A\0AThe argument arg is optional, and defaults to 0; it may be an int or a\0Abuffer containing character data (most likely a string or an array). \0A\0AIf the argument is a mutable buffer (such as an array) and if the\0Amutate_flag argument (which is only allowed in this case) is true then the\0Abuffer is (in effect) passed to the operating system and changes made by\0Athe OS will be reflected in the contents of the buffer after the call has\0Areturned.  The return value is the integer returned by the ioctl system\0Acall.\0A\0AIf the argument is a mutable buffer and the mutable_flag argument is not\0Apassed or is false, the behavior is as if a string had been passed.  This\0Abehavior will change in future releases of Python.\0A\0AIf the argument is an immutable buffer (most likely a string) then a copy\0Aof the buffer is passed to the operating system and the return value is a\0Astring of the same length containing whatever the operating system put in\0Athe buffer.  The length of the arg buffer in this case is not allowed to\0Aexceed 1024 bytes.\0A\0AIf the arg given is an integer or if none is specified, the result value is\0Aan integer corresponding to the return value of the ioctl call in the C\0Acode.\00", align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"flock\00", align 1
@flock_doc = internal global [189 x i8] c"flock(fd, operation)\0A\0APerform the lock operation op on file descriptor fd.  See the Unix \0Amanual page for flock(2) for details.  (On some systems, this function is\0Aemulated using fcntl().)\00", align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"lockf\00", align 1
@lockf_doc = internal global [1033 x i8] c"lockf (fd, operation, length=0, start=0, whence=0)\0A\0AThis is essentially a wrapper around the fcntl() locking calls.  fd is the\0Afile descriptor of the file to lock or unlock, and operation is one of the\0Afollowing values:\0A\0A    LOCK_UN - unlock\0A    LOCK_SH - acquire a shared lock\0A    LOCK_EX - acquire an exclusive lock\0A\0AWhen operation is LOCK_SH or LOCK_EX, it can also be bitwise ORed with\0ALOCK_NB to avoid blocking on lock acquisition.  If LOCK_NB is used and the\0Alock cannot be acquired, an IOError will be raised and the exception will\0Ahave an errno attribute set to EACCES or EAGAIN (depending on the operating\0Asystem -- for portability, check for either value).\0A\0Alength is the number of bytes to lock, with the default meaning to lock to\0AEOF.  start is the byte offset, relative to whence, to that the lock\0Astarts.  whence is as with fileobj.seek(), specifically:\0A\0A    0 - relative to the start of the file (SEEK_SET)\0A    1 - relative to the current buffer position (SEEK_CUR)\0A    2 - relative to the end of the file (SEEK_END)\00", align 16
@.str.4 = private unnamed_addr constant [12 x i8] c"O&is#:fcntl\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"fcntl string arg too long\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [102 x i8] c"O&i|l;fcntl requires a file or file descriptor, an integer and optionally a third integer or a string\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"O&Iw*|i:ioctl\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"ioctl string arg too long\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"O&Is*:ioctl\00", align 1
@.str.10 = private unnamed_addr constant [104 x i8] c"O&I|i;ioctl requires a file or file descriptor, an integer and optionally an integer or buffer argument\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"O&i:flock\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"O&i|OOi:lockf\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"unrecognized lockf argument\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"LOCK_SH\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"LOCK_EX\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"LOCK_NB\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"LOCK_UN\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"LOCK_MAND\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"LOCK_READ\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"LOCK_WRITE\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"LOCK_RW\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"F_DUPFD\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"F_DUPFD_CLOEXEC\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"F_GETFD\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"F_SETFD\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"F_GETFL\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"F_SETFL\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"F_GETLK\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"F_SETLK\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"F_SETLKW\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"F_GETOWN\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"F_SETOWN\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"F_GETSIG\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"F_SETSIG\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"F_RDLCK\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"F_WRLCK\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"F_UNLCK\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"F_GETLK64\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"F_SETLK64\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"F_SETLKW64\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"FASYNC\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"F_SETLEASE\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"F_GETLEASE\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"F_NOTIFY\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"F_EXLCK\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"F_SHLCK\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"FD_CLOEXEC\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"DN_ACCESS\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"DN_MODIFY\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"DN_CREATE\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"DN_DELETE\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"DN_RENAME\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"DN_ATTRIB\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"DN_MULTISHOT\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_fcntl() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @fcntlmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call i32 @all_ins(%struct._object* %1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @all_ins(%struct._object* %m) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %call = call i32 @PyModule_AddIntConstant(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i64 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m.addr, align 8
  %call1 = call i32 @PyModule_AddIntConstant(%struct._object* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i64 2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %m.addr, align 8
  %call5 = call i32 @PyModule_AddIntConstant(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i64 4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %3 = load %struct._object*, %struct._object** %m.addr, align 8
  %call9 = call i32 @PyModule_AddIntConstant(%struct._object* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i64 8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %4 = load %struct._object*, %struct._object** %m.addr, align 8
  %call13 = call i32 @PyModule_AddIntConstant(%struct._object* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i64 32)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %5 = load %struct._object*, %struct._object** %m.addr, align 8
  %call17 = call i32 @PyModule_AddIntConstant(%struct._object* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i64 64)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %6 = load %struct._object*, %struct._object** %m.addr, align 8
  %call21 = call i32 @PyModule_AddIntConstant(%struct._object* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i64 128)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %7 = load %struct._object*, %struct._object** %m.addr, align 8
  %call25 = call i32 @PyModule_AddIntConstant(%struct._object* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i64 192)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  store i32 -1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  %8 = load %struct._object*, %struct._object** %m.addr, align 8
  %call29 = call i32 @PyModule_AddIntConstant(%struct._object* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i64 0)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store i32 -1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.28
  %9 = load %struct._object*, %struct._object** %m.addr, align 8
  %call33 = call i32 @PyModule_AddIntConstant(%struct._object* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i64 1030)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  store i32 -1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.32
  %10 = load %struct._object*, %struct._object** %m.addr, align 8
  %call37 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i64 1)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.36
  %11 = load %struct._object*, %struct._object** %m.addr, align 8
  %call41 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i64 2)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  store i32 -1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.40
  %12 = load %struct._object*, %struct._object** %m.addr, align 8
  %call45 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 3)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  store i32 -1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.44
  %13 = load %struct._object*, %struct._object** %m.addr, align 8
  %call49 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i64 4)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  store i32 -1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.48
  %14 = load %struct._object*, %struct._object** %m.addr, align 8
  %call53 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i64 5)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  store i32 -1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.52
  %15 = load %struct._object*, %struct._object** %m.addr, align 8
  %call57 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i64 6)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.56
  store i32 -1, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.56
  %16 = load %struct._object*, %struct._object** %m.addr, align 8
  %call61 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i64 7)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  store i32 -1, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.60
  %17 = load %struct._object*, %struct._object** %m.addr, align 8
  %call65 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i64 9)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.64
  store i32 -1, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.end.64
  %18 = load %struct._object*, %struct._object** %m.addr, align 8
  %call69 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i64 8)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.68
  store i32 -1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.end.68
  %19 = load %struct._object*, %struct._object** %m.addr, align 8
  %call73 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i64 11)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.72
  store i32 -1, i32* %retval
  br label %return

if.end.76:                                        ; preds = %if.end.72
  %20 = load %struct._object*, %struct._object** %m.addr, align 8
  %call77 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i64 10)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.76
  store i32 -1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %if.end.76
  %21 = load %struct._object*, %struct._object** %m.addr, align 8
  %call81 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i64 0)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.80
  store i32 -1, i32* %retval
  br label %return

if.end.84:                                        ; preds = %if.end.80
  %22 = load %struct._object*, %struct._object** %m.addr, align 8
  %call85 = call i32 @PyModule_AddIntConstant(%struct._object* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i64 1)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.84
  store i32 -1, i32* %retval
  br label %return

if.end.88:                                        ; preds = %if.end.84
  %23 = load %struct._object*, %struct._object** %m.addr, align 8
  %call89 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i64 2)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.88
  store i32 -1, i32* %retval
  br label %return

if.end.92:                                        ; preds = %if.end.88
  %24 = load %struct._object*, %struct._object** %m.addr, align 8
  %call93 = call i32 @PyModule_AddIntConstant(%struct._object* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i64 5)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.92
  store i32 -1, i32* %retval
  br label %return

if.end.96:                                        ; preds = %if.end.92
  %25 = load %struct._object*, %struct._object** %m.addr, align 8
  %call97 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i64 6)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.96
  store i32 -1, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.end.96
  %26 = load %struct._object*, %struct._object** %m.addr, align 8
  %call101 = call i32 @PyModule_AddIntConstant(%struct._object* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i64 7)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.100
  store i32 -1, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.end.100
  %27 = load %struct._object*, %struct._object** %m.addr, align 8
  %call105 = call i32 @PyModule_AddIntConstant(%struct._object* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i64 8192)
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.104
  store i32 -1, i32* %retval
  br label %return

if.end.108:                                       ; preds = %if.end.104
  %28 = load %struct._object*, %struct._object** %m.addr, align 8
  %call109 = call i32 @PyModule_AddIntConstant(%struct._object* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i64 1024)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.108
  store i32 -1, i32* %retval
  br label %return

if.end.112:                                       ; preds = %if.end.108
  %29 = load %struct._object*, %struct._object** %m.addr, align 8
  %call113 = call i32 @PyModule_AddIntConstant(%struct._object* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i64 1025)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.112
  store i32 -1, i32* %retval
  br label %return

if.end.116:                                       ; preds = %if.end.112
  %30 = load %struct._object*, %struct._object** %m.addr, align 8
  %call117 = call i32 @PyModule_AddIntConstant(%struct._object* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i64 1026)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.116
  store i32 -1, i32* %retval
  br label %return

if.end.120:                                       ; preds = %if.end.116
  %31 = load %struct._object*, %struct._object** %m.addr, align 8
  %call121 = call i32 @PyModule_AddIntConstant(%struct._object* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i64 4)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.end.120
  store i32 -1, i32* %retval
  br label %return

if.end.124:                                       ; preds = %if.end.120
  %32 = load %struct._object*, %struct._object** %m.addr, align 8
  %call125 = call i32 @PyModule_AddIntConstant(%struct._object* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i64 8)
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.124
  store i32 -1, i32* %retval
  br label %return

if.end.128:                                       ; preds = %if.end.124
  %33 = load %struct._object*, %struct._object** %m.addr, align 8
  %call129 = call i32 @PyModule_AddIntConstant(%struct._object* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i64 1)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.128
  store i32 -1, i32* %retval
  br label %return

if.end.132:                                       ; preds = %if.end.128
  %34 = load %struct._object*, %struct._object** %m.addr, align 8
  %call133 = call i32 @PyModule_AddIntConstant(%struct._object* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i64 1)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.132
  store i32 -1, i32* %retval
  br label %return

if.end.136:                                       ; preds = %if.end.132
  %35 = load %struct._object*, %struct._object** %m.addr, align 8
  %call137 = call i32 @PyModule_AddIntConstant(%struct._object* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i64 2)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.end.136
  store i32 -1, i32* %retval
  br label %return

if.end.140:                                       ; preds = %if.end.136
  %36 = load %struct._object*, %struct._object** %m.addr, align 8
  %call141 = call i32 @PyModule_AddIntConstant(%struct._object* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i64 4)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.140
  store i32 -1, i32* %retval
  br label %return

if.end.144:                                       ; preds = %if.end.140
  %37 = load %struct._object*, %struct._object** %m.addr, align 8
  %call145 = call i32 @PyModule_AddIntConstant(%struct._object* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i64 8)
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.144
  store i32 -1, i32* %retval
  br label %return

if.end.148:                                       ; preds = %if.end.144
  %38 = load %struct._object*, %struct._object** %m.addr, align 8
  %call149 = call i32 @PyModule_AddIntConstant(%struct._object* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i64 16)
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.148
  store i32 -1, i32* %retval
  br label %return

if.end.152:                                       ; preds = %if.end.148
  %39 = load %struct._object*, %struct._object** %m.addr, align 8
  %call153 = call i32 @PyModule_AddIntConstant(%struct._object* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i64 32)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.152
  store i32 -1, i32* %retval
  br label %return

if.end.156:                                       ; preds = %if.end.152
  %40 = load %struct._object*, %struct._object** %m.addr, align 8
  %call157 = call i32 @PyModule_AddIntConstant(%struct._object* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), i64 2147483648)
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.156
  store i32 -1, i32* %retval
  br label %return

if.end.160:                                       ; preds = %if.end.156
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.160, %if.then.159, %if.then.155, %if.then.151, %if.then.147, %if.then.143, %if.then.139, %if.then.135, %if.then.131, %if.then.127, %if.then.123, %if.then.119, %if.then.115, %if.then.111, %if.then.107, %if.then.103, %if.then.99, %if.then.95, %if.then.91, %if.then.87, %if.then.83, %if.then.79, %if.then.75, %if.then.71, %if.then.67, %if.then.63, %if.then.59, %if.then.55, %if.then.51, %if.then.47, %if.then.43, %if.then.39, %if.then.35, %if.then.31, %if.then.27, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fcntl_fcntl(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %code = alloca i32, align 4
  %arg = alloca i64, align 8
  %ret = alloca i32, align 4
  %str = alloca i8*, align 8
  %len = alloca i64, align 8
  %buf = alloca [1024 x i8], align 16
  %_save = alloca %struct._ts*, align 8
  %_save15 = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 (%struct._object*, i32*)* @conv_descriptor, i32* %fd, i32* %code, i8** %str, i64* %len)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %len, align 8
  %cmp = icmp ugt i64 %1, 1024
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = bitcast [1024 x i8]* %buf to i8*
  %4 = load i8*, i8** %str, align 8
  %5 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 %5, i32 1, i1 false)
  %call2 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call2, %struct._ts** %_save, align 8
  %6 = load i32, i32* %fd, align 4
  %7 = load i32, i32* %code, align 4
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call3 = call i32 (i32, i32, ...) @fcntl(i32 %6, i32 %7, i8* %arraydecay)
  store i32 %call3, i32* %ret, align 4
  %8 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %8)
  %9 = load i32, i32* %ret, align 4
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call6 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %10)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %11 = load i64, i64* %len, align 8
  %call9 = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay8, i64 %11)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %entry
  call void @PyErr_Clear()
  store i64 0, i64* %arg, align 8
  %12 = load %struct._object*, %struct._object** %args.addr, align 8
  %call11 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %12, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i32 0, i32 0), i32 (%struct._object*, i32*)* @conv_descriptor, i32* %fd, i32* %code, i64* %arg)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %call16 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call16, %struct._ts** %_save15, align 8
  %13 = load i32, i32* %fd, align 4
  %14 = load i32, i32* %code, align 4
  %15 = load i64, i64* %arg, align 8
  %call17 = call i32 (i32, i32, ...) @fcntl(i32 %13, i32 %14, i64 %15)
  store i32 %call17, i32* %ret, align 4
  %16 = load %struct._ts*, %struct._ts** %_save15, align 8
  call void @PyEval_RestoreThread(%struct._ts* %16)
  %17 = load i32, i32* %ret, align 4
  %cmp18 = icmp slt i32 %17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.14
  %18 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call20 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %18)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.14
  %19 = load i32, i32* %ret, align 4
  %conv = sext i32 %19 to i64
  %call22 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call22, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.19, %if.then.13, %if.end.7, %if.then.5, %if.then.1
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fcntl_ioctl(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %code = alloca i32, align 4
  %arg = alloca i32, align 4
  %ret = alloca i32, align 4
  %pstr = alloca %struct.bufferinfo, align 8
  %str = alloca i8*, align 8
  %len = alloca i64, align 8
  %mutate_arg = alloca i32, align 4
  %buf = alloca [1025 x i8], align 16
  %arg1 = alloca i8*, align 8
  %_save = alloca %struct._ts*, align 8
  %_save52 = alloca %struct._ts*, align 8
  %_save69 = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 1, i32* %mutate_arg, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 (%struct._object*, i32*)* @conv_descriptor, i32* %fd, i32* %code, %struct.bufferinfo* %pstr, i32* %mutate_arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.41

if.then:                                          ; preds = %entry
  %buf2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pstr, i32 0, i32 0
  %1 = load i8*, i8** %buf2, align 8
  store i8* %1, i8** %str, align 8
  %len3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pstr, i32 0, i32 2
  %2 = load i64, i64* %len3, align 8
  store i64 %2, i64* %len, align 8
  %3 = load i32, i32* %mutate_arg, align 4
  %tobool4 = icmp ne i32 %3, 0
  br i1 %tobool4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.then
  %4 = load i64, i64* %len, align 8
  %cmp = icmp sle i64 %4, 1024
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.5
  %5 = bitcast [1025 x i8]* %buf to i8*
  %6 = load i8*, i8** %str, align 8
  %7 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 %7, i32 1, i1 false)
  %8 = load i64, i64* %len, align 8
  %arrayidx = getelementptr [1025 x i8], [1025 x i8]* %buf, i32 0, i64 %8
  store i8 0, i8* %arrayidx, align 1
  %arraydecay = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %arg1, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.5
  %9 = load i8*, i8** %str, align 8
  store i8* %9, i8** %arg1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.14

if.else.7:                                        ; preds = %if.then
  %10 = load i64, i64* %len, align 8
  %cmp8 = icmp sgt i64 %10, 1024
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else.7
  call void @PyBuffer_Release(%struct.bufferinfo* %pstr)
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.10:                                       ; preds = %if.else.7
  %12 = bitcast [1025 x i8]* %buf to i8*
  %13 = load i8*, i8** %str, align 8
  %14 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 %14, i32 1, i1 false)
  %15 = load i64, i64* %len, align 8
  %arrayidx11 = getelementptr [1025 x i8], [1025 x i8]* %buf, i32 0, i64 %15
  store i8 0, i8* %arrayidx11, align 1
  %arraydecay12 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay12, i8** %arg1, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %arraydecay15 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %16 = load i8*, i8** %arg1, align 8
  %cmp16 = icmp eq i8* %arraydecay15, %16
  br i1 %cmp16, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.end.14
  %call18 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call18, %struct._ts** %_save, align 8
  %17 = load i32, i32* %fd, align 4
  %18 = load i32, i32* %code, align 4
  %conv = zext i32 %18 to i64
  %19 = load i8*, i8** %arg1, align 8
  %call19 = call i32 (i32, i64, ...) @ioctl(i32 %17, i64 %conv, i8* %19) #2
  store i32 %call19, i32* %ret, align 4
  %20 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %20)
  br label %if.end.23

if.else.20:                                       ; preds = %if.end.14
  %21 = load i32, i32* %fd, align 4
  %22 = load i32, i32* %code, align 4
  %conv21 = zext i32 %22 to i64
  %23 = load i8*, i8** %arg1, align 8
  %call22 = call i32 (i32, i64, ...) @ioctl(i32 %21, i64 %conv21, i8* %23) #2
  store i32 %call22, i32* %ret, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.17
  %24 = load i32, i32* %mutate_arg, align 4
  %tobool24 = icmp ne i32 %24, 0
  br i1 %tobool24, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.23
  %25 = load i64, i64* %len, align 8
  %cmp25 = icmp sle i64 %25, 1024
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  %26 = load i8*, i8** %str, align 8
  %27 = bitcast [1025 x i8]* %buf to i8*
  %28 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 %28, i32 1, i1 false)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true, %if.end.23
  call void @PyBuffer_Release(%struct.bufferinfo* %pstr)
  %29 = load i32, i32* %ret, align 4
  %cmp29 = icmp slt i32 %29, 0
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.28
  %30 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call32 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %30)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %if.end.28
  %31 = load i32, i32* %mutate_arg, align 4
  %tobool34 = icmp ne i32 %31, 0
  br i1 %tobool34, label %if.then.35, label %if.else.38

if.then.35:                                       ; preds = %if.end.33
  %32 = load i32, i32* %ret, align 4
  %conv36 = sext i32 %32 to i64
  %call37 = call %struct._object* @PyLong_FromLong(i64 %conv36)
  store %struct._object* %call37, %struct._object** %retval
  br label %return

if.else.38:                                       ; preds = %if.end.33
  %arraydecay39 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %33 = load i64, i64* %len, align 8
  %call40 = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay39, i64 %33)
  store %struct._object* %call40, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %entry
  call void @PyErr_Clear()
  %34 = load %struct._object*, %struct._object** %args.addr, align 8
  %call42 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 (%struct._object*, i32*)* @conv_descriptor, i32* %fd, i32* %code, %struct.bufferinfo* %pstr)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.64

if.then.44:                                       ; preds = %if.end.41
  %buf45 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pstr, i32 0, i32 0
  %35 = load i8*, i8** %buf45, align 8
  store i8* %35, i8** %str, align 8
  %len46 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pstr, i32 0, i32 2
  %36 = load i64, i64* %len46, align 8
  store i64 %36, i64* %len, align 8
  %37 = load i64, i64* %len, align 8
  %cmp47 = icmp sgt i64 %37, 1024
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.44
  call void @PyBuffer_Release(%struct.bufferinfo* %pstr)
  %38 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.50:                                        ; preds = %if.then.44
  %39 = bitcast [1025 x i8]* %buf to i8*
  %40 = load i8*, i8** %str, align 8
  %41 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 %41, i32 1, i1 false)
  %42 = load i64, i64* %len, align 8
  %arrayidx51 = getelementptr [1025 x i8], [1025 x i8]* %buf, i32 0, i64 %42
  store i8 0, i8* %arrayidx51, align 1
  %call53 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call53, %struct._ts** %_save52, align 8
  %43 = load i32, i32* %fd, align 4
  %44 = load i32, i32* %code, align 4
  %conv54 = zext i32 %44 to i64
  %arraydecay55 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %call56 = call i32 (i32, i64, ...) @ioctl(i32 %43, i64 %conv54, i8* %arraydecay55) #2
  store i32 %call56, i32* %ret, align 4
  %45 = load %struct._ts*, %struct._ts** %_save52, align 8
  call void @PyEval_RestoreThread(%struct._ts* %45)
  %46 = load i32, i32* %ret, align 4
  %cmp57 = icmp slt i32 %46, 0
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.50
  call void @PyBuffer_Release(%struct.bufferinfo* %pstr)
  %47 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call60 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %47)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.50
  call void @PyBuffer_Release(%struct.bufferinfo* %pstr)
  %arraydecay62 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %48 = load i64, i64* %len, align 8
  %call63 = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay62, i64 %48)
  store %struct._object* %call63, %struct._object** %retval
  br label %return

if.end.64:                                        ; preds = %if.end.41
  call void @PyErr_Clear()
  store i32 0, i32* %arg, align 4
  %49 = load %struct._object*, %struct._object** %args.addr, align 8
  %call65 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %49, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.10, i32 0, i32 0), i32 (%struct._object*, i32*)* @conv_descriptor, i32* %fd, i32* %code, i32* %arg)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.end.64
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.68:                                        ; preds = %if.end.64
  %call70 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call70, %struct._ts** %_save69, align 8
  %50 = load i32, i32* %fd, align 4
  %51 = load i32, i32* %code, align 4
  %conv71 = zext i32 %51 to i64
  %52 = load i32, i32* %arg, align 4
  %call72 = call i32 (i32, i64, ...) @ioctl(i32 %50, i64 %conv71, i32 %52) #2
  store i32 %call72, i32* %ret, align 4
  %53 = load %struct._ts*, %struct._ts** %_save69, align 8
  call void @PyEval_RestoreThread(%struct._ts* %53)
  %54 = load i32, i32* %ret, align 4
  %cmp73 = icmp slt i32 %54, 0
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.68
  %55 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call76 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %55)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.77:                                        ; preds = %if.end.68
  %56 = load i32, i32* %ret, align 4
  %conv78 = sext i32 %56 to i64
  %call79 = call %struct._object* @PyLong_FromLong(i64 %conv78)
  store %struct._object* %call79, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.77, %if.then.75, %if.then.67, %if.end.61, %if.then.59, %if.then.49, %if.else.38, %if.then.35, %if.then.31, %if.then.9
  %57 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %57
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fcntl_flock(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %code = alloca i32, align 4
  %ret = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 (%struct._object*, i32*)* @conv_descriptor, i32* %fd, i32* %code)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %1 = load i32, i32* %fd, align 4
  %2 = load i32, i32* %code, align 4
  %call2 = call i32 @flock(i32 %1, i32 %2) #2
  store i32 %call2, i32* %ret, align 4
  %3 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %3)
  %4 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call4 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @fcntl_lockf(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %code = alloca i32, align 4
  %ret = alloca i32, align 4
  %whence = alloca i32, align 4
  %lenobj = alloca %struct._object*, align 8
  %startobj = alloca %struct._object*, align 8
  %l = alloca %struct.flock, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %whence, align 4
  store %struct._object* null, %struct._object** %lenobj, align 8
  store %struct._object* null, %struct._object** %startobj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 (%struct._object*, i32*)* @conv_descriptor, i32* %fd, i32* %code, %struct._object** %lenobj, %struct._object** %startobj, i32* %whence)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %l_type = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 0
  store i16 2, i16* %l_type, align 2
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %2 = load i32, i32* %code, align 4
  %and = and i32 %2, 1
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %l_type4 = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 0
  store i16 0, i16* %l_type4, align 2
  br label %if.end.12

if.else.5:                                        ; preds = %if.else
  %3 = load i32, i32* %code, align 4
  %and6 = and i32 %3, 2
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else.5
  %l_type9 = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 0
  store i16 1, i16* %l_type9, align 2
  br label %if.end.11

if.else.10:                                       ; preds = %if.else.5
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.3
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.1
  %l_len = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 3
  store i64 0, i64* %l_len, align 8
  %l_start = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 2
  store i64 0, i64* %l_start, align 8
  %5 = load %struct._object*, %struct._object** %startobj, align 8
  %cmp14 = icmp ne %struct._object* %5, null
  br i1 %cmp14, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.end.13
  %6 = load %struct._object*, %struct._object** %startobj, align 8
  %call16 = call i64 @PyLong_AsLong(%struct._object* %6)
  %l_start17 = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 2
  store i64 %call16, i64* %l_start17, align 8
  %call18 = call %struct._object* @PyErr_Occurred()
  %tobool19 = icmp ne %struct._object* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.13
  %7 = load %struct._object*, %struct._object** %lenobj, align 8
  %cmp23 = icmp ne %struct._object* %7, null
  br i1 %cmp23, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %if.end.22
  %8 = load %struct._object*, %struct._object** %lenobj, align 8
  %call25 = call i64 @PyLong_AsLong(%struct._object* %8)
  %l_len26 = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 3
  store i64 %call25, i64* %l_len26, align 8
  %call27 = call %struct._object* @PyErr_Occurred()
  %tobool28 = icmp ne %struct._object* %call27, null
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.24
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.then.24
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.22
  %9 = load i32, i32* %whence, align 4
  %conv = trunc i32 %9 to i16
  %l_whence = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 1
  store i16 %conv, i16* %l_whence, align 2
  %call32 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call32, %struct._ts** %_save, align 8
  %10 = load i32, i32* %fd, align 4
  %11 = load i32, i32* %code, align 4
  %and33 = and i32 %11, 4
  %tobool34 = icmp ne i32 %and33, 0
  %cond = select i1 %tobool34, i32 6, i32 7
  %call35 = call i32 (i32, i32, ...) @fcntl(i32 %10, i32 %cond, %struct.flock* %l)
  store i32 %call35, i32* %ret, align 4
  %12 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %12)
  %13 = load i32, i32* %ret, align 4
  %cmp36 = icmp slt i32 %13, 0
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.31
  %14 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call39 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %14)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.40:                                        ; preds = %if.end.31
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.38, %if.then.29, %if.then.20, %if.else.10, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @conv_descriptor(%struct._object* %object, i32* %target) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %struct._object*, align 8
  %target.addr = alloca i32*, align 8
  %fd = alloca i32, align 4
  store %struct._object* %object, %struct._object** %object.addr, align 8
  store i32* %target, i32** %target.addr, align 8
  %0 = load %struct._object*, %struct._object** %object.addr, align 8
  %call = call i32 @PyObject_AsFileDescriptor(%struct._object* %0)
  store i32 %call, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd, align 4
  %3 = load i32*, i32** %target.addr, align 8
  store i32 %2, i32* %3, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @fcntl(i32, i32, ...) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare void @PyErr_Clear() #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyObject_AsFileDescriptor(%struct._object*) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #3

; Function Attrs: nounwind
declare i32 @flock(i32, i32) #3

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
