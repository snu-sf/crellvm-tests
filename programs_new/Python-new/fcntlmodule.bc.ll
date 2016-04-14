; ModuleID = 'programs_new/Python-new/fcntlmodule.bc.ll'
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
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !553
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !553
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !349, metadata !554), !dbg !555
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @fcntlmodule, i32 1013), !dbg !556
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !557, !tbaa !558
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !562, !tbaa !558
  %cmp = icmp eq %struct._object* %1, null, !dbg !564
  br i1 %cmp, label %if.then, label %if.end, !dbg !565

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !566
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !566

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !567, !tbaa !558
  %call1 = call i32 @all_ins(%struct._object* %2), !dbg !569
  %cmp2 = icmp slt i32 %call1, 0, !dbg !570
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !571

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !572
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !572

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !573, !tbaa !558
  store %struct._object* %3, %struct._object** %retval, !dbg !574
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !574

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %4 = bitcast %struct._object** %m to i8*, !dbg !575
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !575
  %5 = load %struct._object*, %struct._object** %retval, !dbg !575
  ret %struct._object* %5, !dbg !575
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @all_ins(%struct._object* %m) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8, !tbaa !558
  call void @llvm.dbg.declare(metadata %struct._object** %m.addr, metadata !500, metadata !554), !dbg !576
  %0 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !577, !tbaa !558
  %call = call i32 @PyModule_AddIntConstant(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i64 1), !dbg !579
  %tobool = icmp ne i32 %call, 0, !dbg !579
  br i1 %tobool, label %if.then, label %if.end, !dbg !580

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !581
  br label %return, !dbg !581

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !583, !tbaa !558
  %call1 = call i32 @PyModule_AddIntConstant(%struct._object* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i64 2), !dbg !585
  %tobool2 = icmp ne i32 %call1, 0, !dbg !585
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !586

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !587
  br label %return, !dbg !587

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !589, !tbaa !558
  %call5 = call i32 @PyModule_AddIntConstant(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i64 4), !dbg !591
  %tobool6 = icmp ne i32 %call5, 0, !dbg !591
  br i1 %tobool6, label %if.then.7, label %if.end.8, !dbg !592

if.then.7:                                        ; preds = %if.end.4
  store i32 -1, i32* %retval, !dbg !593
  br label %return, !dbg !593

if.end.8:                                         ; preds = %if.end.4
  %3 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !595, !tbaa !558
  %call9 = call i32 @PyModule_AddIntConstant(%struct._object* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i64 8), !dbg !597
  %tobool10 = icmp ne i32 %call9, 0, !dbg !597
  br i1 %tobool10, label %if.then.11, label %if.end.12, !dbg !598

if.then.11:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval, !dbg !599
  br label %return, !dbg !599

if.end.12:                                        ; preds = %if.end.8
  %4 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !601, !tbaa !558
  %call13 = call i32 @PyModule_AddIntConstant(%struct._object* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i64 32), !dbg !603
  %tobool14 = icmp ne i32 %call13, 0, !dbg !603
  br i1 %tobool14, label %if.then.15, label %if.end.16, !dbg !604

if.then.15:                                       ; preds = %if.end.12
  store i32 -1, i32* %retval, !dbg !605
  br label %return, !dbg !605

if.end.16:                                        ; preds = %if.end.12
  %5 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !607, !tbaa !558
  %call17 = call i32 @PyModule_AddIntConstant(%struct._object* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i64 64), !dbg !609
  %tobool18 = icmp ne i32 %call17, 0, !dbg !609
  br i1 %tobool18, label %if.then.19, label %if.end.20, !dbg !610

if.then.19:                                       ; preds = %if.end.16
  store i32 -1, i32* %retval, !dbg !611
  br label %return, !dbg !611

if.end.20:                                        ; preds = %if.end.16
  %6 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !613, !tbaa !558
  %call21 = call i32 @PyModule_AddIntConstant(%struct._object* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i64 128), !dbg !615
  %tobool22 = icmp ne i32 %call21, 0, !dbg !615
  br i1 %tobool22, label %if.then.23, label %if.end.24, !dbg !616

if.then.23:                                       ; preds = %if.end.20
  store i32 -1, i32* %retval, !dbg !617
  br label %return, !dbg !617

if.end.24:                                        ; preds = %if.end.20
  %7 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !619, !tbaa !558
  %call25 = call i32 @PyModule_AddIntConstant(%struct._object* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i64 192), !dbg !621
  %tobool26 = icmp ne i32 %call25, 0, !dbg !621
  br i1 %tobool26, label %if.then.27, label %if.end.28, !dbg !622

if.then.27:                                       ; preds = %if.end.24
  store i32 -1, i32* %retval, !dbg !623
  br label %return, !dbg !623

if.end.28:                                        ; preds = %if.end.24
  %8 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !625, !tbaa !558
  %call29 = call i32 @PyModule_AddIntConstant(%struct._object* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i64 0), !dbg !627
  %tobool30 = icmp ne i32 %call29, 0, !dbg !627
  br i1 %tobool30, label %if.then.31, label %if.end.32, !dbg !628

if.then.31:                                       ; preds = %if.end.28
  store i32 -1, i32* %retval, !dbg !629
  br label %return, !dbg !629

if.end.32:                                        ; preds = %if.end.28
  %9 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !631, !tbaa !558
  %call33 = call i32 @PyModule_AddIntConstant(%struct._object* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i64 1030), !dbg !633
  %tobool34 = icmp ne i32 %call33, 0, !dbg !633
  br i1 %tobool34, label %if.then.35, label %if.end.36, !dbg !634

if.then.35:                                       ; preds = %if.end.32
  store i32 -1, i32* %retval, !dbg !635
  br label %return, !dbg !635

if.end.36:                                        ; preds = %if.end.32
  %10 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !637, !tbaa !558
  %call37 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i64 1), !dbg !639
  %tobool38 = icmp ne i32 %call37, 0, !dbg !639
  br i1 %tobool38, label %if.then.39, label %if.end.40, !dbg !640

if.then.39:                                       ; preds = %if.end.36
  store i32 -1, i32* %retval, !dbg !641
  br label %return, !dbg !641

if.end.40:                                        ; preds = %if.end.36
  %11 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !643, !tbaa !558
  %call41 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i64 2), !dbg !645
  %tobool42 = icmp ne i32 %call41, 0, !dbg !645
  br i1 %tobool42, label %if.then.43, label %if.end.44, !dbg !646

if.then.43:                                       ; preds = %if.end.40
  store i32 -1, i32* %retval, !dbg !647
  br label %return, !dbg !647

if.end.44:                                        ; preds = %if.end.40
  %12 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !649, !tbaa !558
  %call45 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i64 3), !dbg !651
  %tobool46 = icmp ne i32 %call45, 0, !dbg !651
  br i1 %tobool46, label %if.then.47, label %if.end.48, !dbg !652

if.then.47:                                       ; preds = %if.end.44
  store i32 -1, i32* %retval, !dbg !653
  br label %return, !dbg !653

if.end.48:                                        ; preds = %if.end.44
  %13 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !655, !tbaa !558
  %call49 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i64 4), !dbg !657
  %tobool50 = icmp ne i32 %call49, 0, !dbg !657
  br i1 %tobool50, label %if.then.51, label %if.end.52, !dbg !658

if.then.51:                                       ; preds = %if.end.48
  store i32 -1, i32* %retval, !dbg !659
  br label %return, !dbg !659

if.end.52:                                        ; preds = %if.end.48
  %14 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !661, !tbaa !558
  %call53 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i64 5), !dbg !663
  %tobool54 = icmp ne i32 %call53, 0, !dbg !663
  br i1 %tobool54, label %if.then.55, label %if.end.56, !dbg !664

if.then.55:                                       ; preds = %if.end.52
  store i32 -1, i32* %retval, !dbg !665
  br label %return, !dbg !665

if.end.56:                                        ; preds = %if.end.52
  %15 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !667, !tbaa !558
  %call57 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i64 6), !dbg !669
  %tobool58 = icmp ne i32 %call57, 0, !dbg !669
  br i1 %tobool58, label %if.then.59, label %if.end.60, !dbg !670

if.then.59:                                       ; preds = %if.end.56
  store i32 -1, i32* %retval, !dbg !671
  br label %return, !dbg !671

if.end.60:                                        ; preds = %if.end.56
  %16 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !673, !tbaa !558
  %call61 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i64 7), !dbg !675
  %tobool62 = icmp ne i32 %call61, 0, !dbg !675
  br i1 %tobool62, label %if.then.63, label %if.end.64, !dbg !676

if.then.63:                                       ; preds = %if.end.60
  store i32 -1, i32* %retval, !dbg !677
  br label %return, !dbg !677

if.end.64:                                        ; preds = %if.end.60
  %17 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !679, !tbaa !558
  %call65 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i64 9), !dbg !681
  %tobool66 = icmp ne i32 %call65, 0, !dbg !681
  br i1 %tobool66, label %if.then.67, label %if.end.68, !dbg !682

if.then.67:                                       ; preds = %if.end.64
  store i32 -1, i32* %retval, !dbg !683
  br label %return, !dbg !683

if.end.68:                                        ; preds = %if.end.64
  %18 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !685, !tbaa !558
  %call69 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i64 8), !dbg !687
  %tobool70 = icmp ne i32 %call69, 0, !dbg !687
  br i1 %tobool70, label %if.then.71, label %if.end.72, !dbg !688

if.then.71:                                       ; preds = %if.end.68
  store i32 -1, i32* %retval, !dbg !689
  br label %return, !dbg !689

if.end.72:                                        ; preds = %if.end.68
  %19 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !691, !tbaa !558
  %call73 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i64 11), !dbg !693
  %tobool74 = icmp ne i32 %call73, 0, !dbg !693
  br i1 %tobool74, label %if.then.75, label %if.end.76, !dbg !694

if.then.75:                                       ; preds = %if.end.72
  store i32 -1, i32* %retval, !dbg !695
  br label %return, !dbg !695

if.end.76:                                        ; preds = %if.end.72
  %20 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !697, !tbaa !558
  %call77 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i64 10), !dbg !699
  %tobool78 = icmp ne i32 %call77, 0, !dbg !699
  br i1 %tobool78, label %if.then.79, label %if.end.80, !dbg !700

if.then.79:                                       ; preds = %if.end.76
  store i32 -1, i32* %retval, !dbg !701
  br label %return, !dbg !701

if.end.80:                                        ; preds = %if.end.76
  %21 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !703, !tbaa !558
  %call81 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i64 0), !dbg !705
  %tobool82 = icmp ne i32 %call81, 0, !dbg !705
  br i1 %tobool82, label %if.then.83, label %if.end.84, !dbg !706

if.then.83:                                       ; preds = %if.end.80
  store i32 -1, i32* %retval, !dbg !707
  br label %return, !dbg !707

if.end.84:                                        ; preds = %if.end.80
  %22 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !709, !tbaa !558
  %call85 = call i32 @PyModule_AddIntConstant(%struct._object* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i64 1), !dbg !711
  %tobool86 = icmp ne i32 %call85, 0, !dbg !711
  br i1 %tobool86, label %if.then.87, label %if.end.88, !dbg !712

if.then.87:                                       ; preds = %if.end.84
  store i32 -1, i32* %retval, !dbg !713
  br label %return, !dbg !713

if.end.88:                                        ; preds = %if.end.84
  %23 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !715, !tbaa !558
  %call89 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i64 2), !dbg !717
  %tobool90 = icmp ne i32 %call89, 0, !dbg !717
  br i1 %tobool90, label %if.then.91, label %if.end.92, !dbg !718

if.then.91:                                       ; preds = %if.end.88
  store i32 -1, i32* %retval, !dbg !719
  br label %return, !dbg !719

if.end.92:                                        ; preds = %if.end.88
  %24 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !721, !tbaa !558
  %call93 = call i32 @PyModule_AddIntConstant(%struct._object* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i64 5), !dbg !723
  %tobool94 = icmp ne i32 %call93, 0, !dbg !723
  br i1 %tobool94, label %if.then.95, label %if.end.96, !dbg !724

if.then.95:                                       ; preds = %if.end.92
  store i32 -1, i32* %retval, !dbg !725
  br label %return, !dbg !725

if.end.96:                                        ; preds = %if.end.92
  %25 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !727, !tbaa !558
  %call97 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i64 6), !dbg !729
  %tobool98 = icmp ne i32 %call97, 0, !dbg !729
  br i1 %tobool98, label %if.then.99, label %if.end.100, !dbg !730

if.then.99:                                       ; preds = %if.end.96
  store i32 -1, i32* %retval, !dbg !731
  br label %return, !dbg !731

if.end.100:                                       ; preds = %if.end.96
  %26 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !733, !tbaa !558
  %call101 = call i32 @PyModule_AddIntConstant(%struct._object* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i64 7), !dbg !735
  %tobool102 = icmp ne i32 %call101, 0, !dbg !735
  br i1 %tobool102, label %if.then.103, label %if.end.104, !dbg !736

if.then.103:                                      ; preds = %if.end.100
  store i32 -1, i32* %retval, !dbg !737
  br label %return, !dbg !737

if.end.104:                                       ; preds = %if.end.100
  %27 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !739, !tbaa !558
  %call105 = call i32 @PyModule_AddIntConstant(%struct._object* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i64 8192), !dbg !741
  %tobool106 = icmp ne i32 %call105, 0, !dbg !741
  br i1 %tobool106, label %if.then.107, label %if.end.108, !dbg !742

if.then.107:                                      ; preds = %if.end.104
  store i32 -1, i32* %retval, !dbg !743
  br label %return, !dbg !743

if.end.108:                                       ; preds = %if.end.104
  %28 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !745, !tbaa !558
  %call109 = call i32 @PyModule_AddIntConstant(%struct._object* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i64 1024), !dbg !747
  %tobool110 = icmp ne i32 %call109, 0, !dbg !747
  br i1 %tobool110, label %if.then.111, label %if.end.112, !dbg !748

if.then.111:                                      ; preds = %if.end.108
  store i32 -1, i32* %retval, !dbg !749
  br label %return, !dbg !749

if.end.112:                                       ; preds = %if.end.108
  %29 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !751, !tbaa !558
  %call113 = call i32 @PyModule_AddIntConstant(%struct._object* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i64 1025), !dbg !753
  %tobool114 = icmp ne i32 %call113, 0, !dbg !753
  br i1 %tobool114, label %if.then.115, label %if.end.116, !dbg !754

if.then.115:                                      ; preds = %if.end.112
  store i32 -1, i32* %retval, !dbg !755
  br label %return, !dbg !755

if.end.116:                                       ; preds = %if.end.112
  %30 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !757, !tbaa !558
  %call117 = call i32 @PyModule_AddIntConstant(%struct._object* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i64 1026), !dbg !759
  %tobool118 = icmp ne i32 %call117, 0, !dbg !759
  br i1 %tobool118, label %if.then.119, label %if.end.120, !dbg !760

if.then.119:                                      ; preds = %if.end.116
  store i32 -1, i32* %retval, !dbg !761
  br label %return, !dbg !761

if.end.120:                                       ; preds = %if.end.116
  %31 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !763, !tbaa !558
  %call121 = call i32 @PyModule_AddIntConstant(%struct._object* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i64 4), !dbg !765
  %tobool122 = icmp ne i32 %call121, 0, !dbg !765
  br i1 %tobool122, label %if.then.123, label %if.end.124, !dbg !766

if.then.123:                                      ; preds = %if.end.120
  store i32 -1, i32* %retval, !dbg !767
  br label %return, !dbg !767

if.end.124:                                       ; preds = %if.end.120
  %32 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !769, !tbaa !558
  %call125 = call i32 @PyModule_AddIntConstant(%struct._object* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i64 8), !dbg !771
  %tobool126 = icmp ne i32 %call125, 0, !dbg !771
  br i1 %tobool126, label %if.then.127, label %if.end.128, !dbg !772

if.then.127:                                      ; preds = %if.end.124
  store i32 -1, i32* %retval, !dbg !773
  br label %return, !dbg !773

if.end.128:                                       ; preds = %if.end.124
  %33 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !775, !tbaa !558
  %call129 = call i32 @PyModule_AddIntConstant(%struct._object* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i64 1), !dbg !777
  %tobool130 = icmp ne i32 %call129, 0, !dbg !777
  br i1 %tobool130, label %if.then.131, label %if.end.132, !dbg !778

if.then.131:                                      ; preds = %if.end.128
  store i32 -1, i32* %retval, !dbg !779
  br label %return, !dbg !779

if.end.132:                                       ; preds = %if.end.128
  %34 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !781, !tbaa !558
  %call133 = call i32 @PyModule_AddIntConstant(%struct._object* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i64 1), !dbg !783
  %tobool134 = icmp ne i32 %call133, 0, !dbg !783
  br i1 %tobool134, label %if.then.135, label %if.end.136, !dbg !784

if.then.135:                                      ; preds = %if.end.132
  store i32 -1, i32* %retval, !dbg !785
  br label %return, !dbg !785

if.end.136:                                       ; preds = %if.end.132
  %35 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !787, !tbaa !558
  %call137 = call i32 @PyModule_AddIntConstant(%struct._object* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i64 2), !dbg !789
  %tobool138 = icmp ne i32 %call137, 0, !dbg !789
  br i1 %tobool138, label %if.then.139, label %if.end.140, !dbg !790

if.then.139:                                      ; preds = %if.end.136
  store i32 -1, i32* %retval, !dbg !791
  br label %return, !dbg !791

if.end.140:                                       ; preds = %if.end.136
  %36 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !793, !tbaa !558
  %call141 = call i32 @PyModule_AddIntConstant(%struct._object* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i64 4), !dbg !795
  %tobool142 = icmp ne i32 %call141, 0, !dbg !795
  br i1 %tobool142, label %if.then.143, label %if.end.144, !dbg !796

if.then.143:                                      ; preds = %if.end.140
  store i32 -1, i32* %retval, !dbg !797
  br label %return, !dbg !797

if.end.144:                                       ; preds = %if.end.140
  %37 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !799, !tbaa !558
  %call145 = call i32 @PyModule_AddIntConstant(%struct._object* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i64 8), !dbg !801
  %tobool146 = icmp ne i32 %call145, 0, !dbg !801
  br i1 %tobool146, label %if.then.147, label %if.end.148, !dbg !802

if.then.147:                                      ; preds = %if.end.144
  store i32 -1, i32* %retval, !dbg !803
  br label %return, !dbg !803

if.end.148:                                       ; preds = %if.end.144
  %38 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !805, !tbaa !558
  %call149 = call i32 @PyModule_AddIntConstant(%struct._object* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i64 16), !dbg !807
  %tobool150 = icmp ne i32 %call149, 0, !dbg !807
  br i1 %tobool150, label %if.then.151, label %if.end.152, !dbg !808

if.then.151:                                      ; preds = %if.end.148
  store i32 -1, i32* %retval, !dbg !809
  br label %return, !dbg !809

if.end.152:                                       ; preds = %if.end.148
  %39 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !811, !tbaa !558
  %call153 = call i32 @PyModule_AddIntConstant(%struct._object* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i64 32), !dbg !813
  %tobool154 = icmp ne i32 %call153, 0, !dbg !813
  br i1 %tobool154, label %if.then.155, label %if.end.156, !dbg !814

if.then.155:                                      ; preds = %if.end.152
  store i32 -1, i32* %retval, !dbg !815
  br label %return, !dbg !815

if.end.156:                                       ; preds = %if.end.152
  %40 = load %struct._object*, %struct._object** %m.addr, align 8, !dbg !817, !tbaa !558
  %call157 = call i32 @PyModule_AddIntConstant(%struct._object* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), i64 2147483648), !dbg !819
  %tobool158 = icmp ne i32 %call157, 0, !dbg !819
  br i1 %tobool158, label %if.then.159, label %if.end.160, !dbg !820

if.then.159:                                      ; preds = %if.end.156
  store i32 -1, i32* %retval, !dbg !821
  br label %return, !dbg !821

if.end.160:                                       ; preds = %if.end.156
  store i32 0, i32* %retval, !dbg !823
  br label %return, !dbg !823

return:                                           ; preds = %if.end.160, %if.then.159, %if.then.155, %if.then.151, %if.then.147, %if.then.143, %if.then.139, %if.then.135, %if.then.131, %if.then.127, %if.then.123, %if.then.119, %if.then.115, %if.then.111, %if.then.107, %if.then.103, %if.then.99, %if.then.95, %if.then.91, %if.then.87, %if.then.83, %if.then.79, %if.then.75, %if.then.71, %if.then.67, %if.then.63, %if.then.59, %if.then.55, %if.then.51, %if.then.47, %if.then.43, %if.then.39, %if.then.35, %if.then.31, %if.then.27, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %41 = load i32, i32* %retval, !dbg !824
  ret i32 %41, !dbg !824
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_save15 = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !558
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !352, metadata !554), !dbg !825
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !558
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !353, metadata !554), !dbg !826
  %0 = bitcast i32* %fd to i8*, !dbg !827
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !827
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !354, metadata !554), !dbg !828
  %1 = bitcast i32* %code to i8*, !dbg !829
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !829
  call void @llvm.dbg.declare(metadata i32* %code, metadata !355, metadata !554), !dbg !830
  %2 = bitcast i64* %arg to i8*, !dbg !831
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !831
  call void @llvm.dbg.declare(metadata i64* %arg, metadata !356, metadata !554), !dbg !832
  %3 = bitcast i32* %ret to i8*, !dbg !833
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !833
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !357, metadata !554), !dbg !834
  %4 = bitcast i8** %str to i8*, !dbg !835
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !835
  call void @llvm.dbg.declare(metadata i8** %str, metadata !358, metadata !554), !dbg !836
  %5 = bitcast i64* %len to i8*, !dbg !837
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !837
  call void @llvm.dbg.declare(metadata i64* %len, metadata !359, metadata !554), !dbg !838
  %6 = bitcast [1024 x i8]* %buf to i8*, !dbg !839
  call void @llvm.lifetime.start(i64 1024, i8* %6) #1, !dbg !839
  call void @llvm.dbg.declare(metadata [1024 x i8]* %buf, metadata !360, metadata !554), !dbg !840
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !841, !tbaa !558
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 (%struct._object*, i32*)* @conv_descriptor, i32* %fd, i32* %code, i8** %str, i64* %len), !dbg !842
  %tobool = icmp ne i32 %call, 0, !dbg !842
  br i1 %tobool, label %if.then, label %if.end.10, !dbg !843

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %len, align 8, !dbg !844, !tbaa !846
  %cmp = icmp ugt i64 %8, 1024, !dbg !848
  br i1 %cmp, label %if.then.1, label %if.end, !dbg !849

if.then.1:                                        ; preds = %if.then
  %9 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !850, !tbaa !558
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)), !dbg !852
  store %struct._object* null, %struct._object** %retval, !dbg !853
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !853

if.end:                                           ; preds = %if.then
  %10 = bitcast [1024 x i8]* %buf to i8*, !dbg !854
  %11 = load i8*, i8** %str, align 8, !dbg !855, !tbaa !558
  %12 = load i64, i64* %len, align 8, !dbg !856, !tbaa !846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 %12, i32 1, i1 false), !dbg !854
  %13 = bitcast %struct._ts** %_save to i8*, !dbg !857
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !857
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !364, metadata !554), !dbg !858
  %call2 = call %struct._ts* @PyEval_SaveThread(), !dbg !859
  store %struct._ts* %call2, %struct._ts** %_save, align 8, !dbg !860, !tbaa !558
  %14 = load i32, i32* %fd, align 4, !dbg !861, !tbaa !862
  %15 = load i32, i32* %code, align 4, !dbg !864, !tbaa !862
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0, !dbg !865
  %call3 = call i32 (i32, i32, ...) @fcntl(i32 %14, i32 %15, i8* %arraydecay), !dbg !866
  store i32 %call3, i32* %ret, align 4, !dbg !867, !tbaa !862
  %16 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !868, !tbaa !558
  call void @PyEval_RestoreThread(%struct._ts* %16), !dbg !869
  %17 = bitcast %struct._ts** %_save to i8*, !dbg !870
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !870
  %18 = load i32, i32* %ret, align 4, !dbg !871, !tbaa !862
  %cmp4 = icmp slt i32 %18, 0, !dbg !873
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !874

if.then.5:                                        ; preds = %if.end
  %19 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !875, !tbaa !558
  %call6 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %19), !dbg !877
  store %struct._object* null, %struct._object** %retval, !dbg !878
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !878

if.end.7:                                         ; preds = %if.end
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0, !dbg !879
  %20 = load i64, i64* %len, align 8, !dbg !880, !tbaa !846
  %call9 = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay8, i64 %20), !dbg !881
  store %struct._object* %call9, %struct._object** %retval, !dbg !882
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !882

if.end.10:                                        ; preds = %entry
  call void @PyErr_Clear(), !dbg !883
  store i64 0, i64* %arg, align 8, !dbg !884, !tbaa !846
  %21 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !885, !tbaa !558
  %call11 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %21, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i32 0, i32 0), i32 (%struct._object*, i32*)* @conv_descriptor, i32* %fd, i32* %code, i64* %arg), !dbg !887
  %tobool12 = icmp ne i32 %call11, 0, !dbg !887
  br i1 %tobool12, label %if.end.14, label %if.then.13, !dbg !888

if.then.13:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval, !dbg !889
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !889

if.end.14:                                        ; preds = %if.end.10
  %22 = bitcast %struct._ts** %_save15 to i8*, !dbg !891
  call void @llvm.lifetime.start(i64 8, i8* %22) #1, !dbg !891
  call void @llvm.dbg.declare(metadata %struct._ts** %_save15, metadata !426, metadata !554), !dbg !892
  %call16 = call %struct._ts* @PyEval_SaveThread(), !dbg !893
  store %struct._ts* %call16, %struct._ts** %_save15, align 8, !dbg !894, !tbaa !558
  %23 = load i32, i32* %fd, align 4, !dbg !895, !tbaa !862
  %24 = load i32, i32* %code, align 4, !dbg !896, !tbaa !862
  %25 = load i64, i64* %arg, align 8, !dbg !897, !tbaa !846
  %call17 = call i32 (i32, i32, ...) @fcntl(i32 %23, i32 %24, i64 %25), !dbg !898
  store i32 %call17, i32* %ret, align 4, !dbg !899, !tbaa !862
  %26 = load %struct._ts*, %struct._ts** %_save15, align 8, !dbg !900, !tbaa !558
  call void @PyEval_RestoreThread(%struct._ts* %26), !dbg !901
  %27 = bitcast %struct._ts** %_save15 to i8*, !dbg !902
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !902
  %28 = load i32, i32* %ret, align 4, !dbg !903, !tbaa !862
  %cmp18 = icmp slt i32 %28, 0, !dbg !905
  br i1 %cmp18, label %if.then.19, label %if.end.21, !dbg !906

if.then.19:                                       ; preds = %if.end.14
  %29 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !907, !tbaa !558
  %call20 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %29), !dbg !909
  store %struct._object* null, %struct._object** %retval, !dbg !910
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !910

if.end.21:                                        ; preds = %if.end.14
  %30 = load i32, i32* %ret, align 4, !dbg !911, !tbaa !862
  %conv = sext i32 %30 to i64, !dbg !912
  %call22 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !913
  store %struct._object* %call22, %struct._object** %retval, !dbg !914
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !914

cleanup:                                          ; preds = %if.end.21, %if.then.19, %if.then.13, %if.end.7, %if.then.5, %if.then.1
  %31 = bitcast [1024 x i8]* %buf to i8*, !dbg !915
  call void @llvm.lifetime.end(i64 1024, i8* %31) #1, !dbg !915
  %32 = bitcast i64* %len to i8*, !dbg !915
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !915
  %33 = bitcast i8** %str to i8*, !dbg !915
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !915
  %34 = bitcast i32* %ret to i8*, !dbg !915
  call void @llvm.lifetime.end(i64 4, i8* %34) #1, !dbg !915
  %35 = bitcast i64* %arg to i8*, !dbg !915
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !915
  %36 = bitcast i32* %code to i8*, !dbg !915
  call void @llvm.lifetime.end(i64 4, i8* %36) #1, !dbg !915
  %37 = bitcast i32* %fd to i8*, !dbg !915
  call void @llvm.lifetime.end(i64 4, i8* %37) #1, !dbg !915
  %38 = load %struct._object*, %struct._object** %retval, !dbg !915
  ret %struct._object* %38, !dbg !915
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
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_save52 = alloca %struct._ts*, align 8
  %_save69 = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !558
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !438, metadata !554), !dbg !916
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !558
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !439, metadata !554), !dbg !917
  %0 = bitcast i32* %fd to i8*, !dbg !918
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !918
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !440, metadata !554), !dbg !919
  %1 = bitcast i32* %code to i8*, !dbg !920
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !920
  call void @llvm.dbg.declare(metadata i32* %code, metadata !441, metadata !554), !dbg !921
  %2 = bitcast i32* %arg to i8*, !dbg !922
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !922
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !442, metadata !554), !dbg !923
  %3 = bitcast i32* %ret to i8*, !dbg !924
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !924
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !443, metadata !554), !dbg !925
  %4 = bitcast %struct.bufferinfo* %pstr to i8*, !dbg !926
  call void @llvm.lifetime.start(i64 80, i8* %4) #1, !dbg !926
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pstr, metadata !444, metadata !554), !dbg !927
  %5 = bitcast i8** %str to i8*, !dbg !928
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !928
  call void @llvm.dbg.declare(metadata i8** %str, metadata !445, metadata !554), !dbg !929
  %6 = bitcast i64* %len to i8*, !dbg !930
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !930
  call void @llvm.dbg.declare(metadata i64* %len, metadata !446, metadata !554), !dbg !931
  %7 = bitcast i32* %mutate_arg to i8*, !dbg !932
  call void @llvm.lifetime.start(i64 4, i8* %7) #1, !dbg !932
  call void @llvm.dbg.declare(metadata i32* %mutate_arg, metadata !447, metadata !554), !dbg !933
  store i32 1, i32* %mutate_arg, align 4, !dbg !933, !tbaa !862
  %8 = bitcast [1025 x i8]* %buf to i8*, !dbg !934
  call void @llvm.lifetime.start(i64 1025, i8* %8) #1, !dbg !934
  call void @llvm.dbg.declare(metadata [1025 x i8]* %buf, metadata !448, metadata !554), !dbg !935
  %9 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !936, !tbaa !558
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 (%struct._object*, i32*)* @conv_descriptor, i32* %fd, i32* %code, %struct.bufferinfo* %pstr, i32* %mutate_arg), !dbg !937
  %tobool = icmp ne i32 %call, 0, !dbg !937
  br i1 %tobool, label %if.then, label %if.end.41, !dbg !938

if.then:                                          ; preds = %entry
  %10 = bitcast i8** %arg1 to i8*, !dbg !939
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !939
  call void @llvm.dbg.declare(metadata i8** %arg1, metadata !452, metadata !554), !dbg !940
  %buf2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pstr, i32 0, i32 0, !dbg !941
  %11 = load i8*, i8** %buf2, align 8, !dbg !941, !tbaa !942
  store i8* %11, i8** %str, align 8, !dbg !944, !tbaa !558
  %len3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pstr, i32 0, i32 2, !dbg !945
  %12 = load i64, i64* %len3, align 8, !dbg !945, !tbaa !946
  store i64 %12, i64* %len, align 8, !dbg !947, !tbaa !846
  %13 = load i32, i32* %mutate_arg, align 4, !dbg !948, !tbaa !862
  %tobool4 = icmp ne i32 %13, 0, !dbg !948
  br i1 %tobool4, label %if.then.5, label %if.else.7, !dbg !950

if.then.5:                                        ; preds = %if.then
  %14 = load i64, i64* %len, align 8, !dbg !951, !tbaa !846
  %cmp = icmp sle i64 %14, 1024, !dbg !954
  br i1 %cmp, label %if.then.6, label %if.else, !dbg !955

if.then.6:                                        ; preds = %if.then.5
  %15 = bitcast [1025 x i8]* %buf to i8*, !dbg !956
  %16 = load i8*, i8** %str, align 8, !dbg !958, !tbaa !558
  %17 = load i64, i64* %len, align 8, !dbg !959, !tbaa !846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 %17, i32 1, i1 false), !dbg !956
  %18 = load i64, i64* %len, align 8, !dbg !960, !tbaa !846
  %arrayidx = getelementptr [1025 x i8], [1025 x i8]* %buf, i32 0, i64 %18, !dbg !961
  store i8 0, i8* %arrayidx, align 1, !dbg !962, !tbaa !963
  %arraydecay = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0, !dbg !964
  store i8* %arraydecay, i8** %arg1, align 8, !dbg !965, !tbaa !558
  br label %if.end, !dbg !966

if.else:                                          ; preds = %if.then.5
  %19 = load i8*, i8** %str, align 8, !dbg !967, !tbaa !558
  store i8* %19, i8** %arg1, align 8, !dbg !969, !tbaa !558
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.14, !dbg !970

if.else.7:                                        ; preds = %if.then
  %20 = load i64, i64* %len, align 8, !dbg !971, !tbaa !846
  %cmp8 = icmp sgt i64 %20, 1024, !dbg !974
  br i1 %cmp8, label %if.then.9, label %if.else.10, !dbg !975

if.then.9:                                        ; preds = %if.else.7
  call void @PyBuffer_Release(%struct.bufferinfo* %pstr), !dbg !976
  %21 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !978, !tbaa !558
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)), !dbg !979
  store %struct._object* null, %struct._object** %retval, !dbg !980
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !980

if.else.10:                                       ; preds = %if.else.7
  %22 = bitcast [1025 x i8]* %buf to i8*, !dbg !981
  %23 = load i8*, i8** %str, align 8, !dbg !983, !tbaa !558
  %24 = load i64, i64* %len, align 8, !dbg !984, !tbaa !846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 %24, i32 1, i1 false), !dbg !981
  %25 = load i64, i64* %len, align 8, !dbg !985, !tbaa !846
  %arrayidx11 = getelementptr [1025 x i8], [1025 x i8]* %buf, i32 0, i64 %25, !dbg !986
  store i8 0, i8* %arrayidx11, align 1, !dbg !987, !tbaa !963
  %arraydecay12 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0, !dbg !988
  store i8* %arraydecay12, i8** %arg1, align 8, !dbg !989, !tbaa !558
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %arraydecay15 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0, !dbg !990
  %26 = load i8*, i8** %arg1, align 8, !dbg !991, !tbaa !558
  %cmp16 = icmp eq i8* %arraydecay15, %26, !dbg !992
  br i1 %cmp16, label %if.then.17, label %if.else.20, !dbg !993

if.then.17:                                       ; preds = %if.end.14
  %27 = bitcast %struct._ts** %_save to i8*, !dbg !994
  call void @llvm.lifetime.start(i64 8, i8* %27) #1, !dbg !994
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !455, metadata !554), !dbg !995
  %call18 = call %struct._ts* @PyEval_SaveThread(), !dbg !996
  store %struct._ts* %call18, %struct._ts** %_save, align 8, !dbg !997, !tbaa !558
  %28 = load i32, i32* %fd, align 4, !dbg !998, !tbaa !862
  %29 = load i32, i32* %code, align 4, !dbg !999, !tbaa !862
  %conv = zext i32 %29 to i64, !dbg !999
  %30 = load i8*, i8** %arg1, align 8, !dbg !1000, !tbaa !558
  %call19 = call i32 (i32, i64, ...) @ioctl(i32 %28, i64 %conv, i8* %30) #1, !dbg !1001
  store i32 %call19, i32* %ret, align 4, !dbg !1002, !tbaa !862
  %31 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1003, !tbaa !558
  call void @PyEval_RestoreThread(%struct._ts* %31), !dbg !1004
  %32 = bitcast %struct._ts** %_save to i8*, !dbg !1005
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !1005
  br label %if.end.23, !dbg !1006

if.else.20:                                       ; preds = %if.end.14
  %33 = load i32, i32* %fd, align 4, !dbg !1007, !tbaa !862
  %34 = load i32, i32* %code, align 4, !dbg !1009, !tbaa !862
  %conv21 = zext i32 %34 to i64, !dbg !1009
  %35 = load i8*, i8** %arg1, align 8, !dbg !1010, !tbaa !558
  %call22 = call i32 (i32, i64, ...) @ioctl(i32 %33, i64 %conv21, i8* %35) #1, !dbg !1011
  store i32 %call22, i32* %ret, align 4, !dbg !1012, !tbaa !862
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.17
  %36 = load i32, i32* %mutate_arg, align 4, !dbg !1013, !tbaa !862
  %tobool24 = icmp ne i32 %36, 0, !dbg !1013
  br i1 %tobool24, label %land.lhs.true, label %if.end.28, !dbg !1015

land.lhs.true:                                    ; preds = %if.end.23
  %37 = load i64, i64* %len, align 8, !dbg !1016, !tbaa !846
  %cmp25 = icmp sle i64 %37, 1024, !dbg !1018
  br i1 %cmp25, label %if.then.27, label %if.end.28, !dbg !1019

if.then.27:                                       ; preds = %land.lhs.true
  %38 = load i8*, i8** %str, align 8, !dbg !1020, !tbaa !558
  %39 = bitcast [1025 x i8]* %buf to i8*, !dbg !1022
  %40 = load i64, i64* %len, align 8, !dbg !1023, !tbaa !846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 %40, i32 1, i1 false), !dbg !1022
  br label %if.end.28, !dbg !1024

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true, %if.end.23
  call void @PyBuffer_Release(%struct.bufferinfo* %pstr), !dbg !1025
  %41 = load i32, i32* %ret, align 4, !dbg !1026, !tbaa !862
  %cmp29 = icmp slt i32 %41, 0, !dbg !1028
  br i1 %cmp29, label %if.then.31, label %if.end.33, !dbg !1029

if.then.31:                                       ; preds = %if.end.28
  %42 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1030, !tbaa !558
  %call32 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %42), !dbg !1032
  store %struct._object* null, %struct._object** %retval, !dbg !1033
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1033

if.end.33:                                        ; preds = %if.end.28
  %43 = load i32, i32* %mutate_arg, align 4, !dbg !1034, !tbaa !862
  %tobool34 = icmp ne i32 %43, 0, !dbg !1034
  br i1 %tobool34, label %if.then.35, label %if.else.38, !dbg !1036

if.then.35:                                       ; preds = %if.end.33
  %44 = load i32, i32* %ret, align 4, !dbg !1037, !tbaa !862
  %conv36 = sext i32 %44 to i64, !dbg !1037
  %call37 = call %struct._object* @PyLong_FromLong(i64 %conv36), !dbg !1039
  store %struct._object* %call37, %struct._object** %retval, !dbg !1040
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1040

if.else.38:                                       ; preds = %if.end.33
  %arraydecay39 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0, !dbg !1041
  %45 = load i64, i64* %len, align 8, !dbg !1043, !tbaa !846
  %call40 = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay39, i64 %45), !dbg !1044
  store %struct._object* %call40, %struct._object** %retval, !dbg !1045
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1045

cleanup:                                          ; preds = %if.else.38, %if.then.35, %if.then.31, %if.then.9
  %46 = bitcast i8** %arg1 to i8*, !dbg !1046
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !1046
  br label %cleanup.80

if.end.41:                                        ; preds = %entry
  call void @PyErr_Clear(), !dbg !1047
  %47 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1048, !tbaa !558
  %call42 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 (%struct._object*, i32*)* @conv_descriptor, i32* %fd, i32* %code, %struct.bufferinfo* %pstr), !dbg !1049
  %tobool43 = icmp ne i32 %call42, 0, !dbg !1049
  br i1 %tobool43, label %if.then.44, label %if.end.64, !dbg !1050

if.then.44:                                       ; preds = %if.end.41
  %buf45 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pstr, i32 0, i32 0, !dbg !1051
  %48 = load i8*, i8** %buf45, align 8, !dbg !1051, !tbaa !942
  store i8* %48, i8** %str, align 8, !dbg !1052, !tbaa !558
  %len46 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pstr, i32 0, i32 2, !dbg !1053
  %49 = load i64, i64* %len46, align 8, !dbg !1053, !tbaa !946
  store i64 %49, i64* %len, align 8, !dbg !1054, !tbaa !846
  %50 = load i64, i64* %len, align 8, !dbg !1055, !tbaa !846
  %cmp47 = icmp sgt i64 %50, 1024, !dbg !1057
  br i1 %cmp47, label %if.then.49, label %if.end.50, !dbg !1058

if.then.49:                                       ; preds = %if.then.44
  call void @PyBuffer_Release(%struct.bufferinfo* %pstr), !dbg !1059
  %51 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1061, !tbaa !558
  call void @PyErr_SetString(%struct._object* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)), !dbg !1062
  store %struct._object* null, %struct._object** %retval, !dbg !1063
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80, !dbg !1063

if.end.50:                                        ; preds = %if.then.44
  %52 = bitcast [1025 x i8]* %buf to i8*, !dbg !1064
  %53 = load i8*, i8** %str, align 8, !dbg !1065, !tbaa !558
  %54 = load i64, i64* %len, align 8, !dbg !1066, !tbaa !846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 %54, i32 1, i1 false), !dbg !1064
  %55 = load i64, i64* %len, align 8, !dbg !1067, !tbaa !846
  %arrayidx51 = getelementptr [1025 x i8], [1025 x i8]* %buf, i32 0, i64 %55, !dbg !1068
  store i8 0, i8* %arrayidx51, align 1, !dbg !1069, !tbaa !963
  %56 = bitcast %struct._ts** %_save52 to i8*, !dbg !1070
  call void @llvm.lifetime.start(i64 8, i8* %56) #1, !dbg !1070
  call void @llvm.dbg.declare(metadata %struct._ts** %_save52, metadata !459, metadata !554), !dbg !1071
  %call53 = call %struct._ts* @PyEval_SaveThread(), !dbg !1072
  store %struct._ts* %call53, %struct._ts** %_save52, align 8, !dbg !1073, !tbaa !558
  %57 = load i32, i32* %fd, align 4, !dbg !1074, !tbaa !862
  %58 = load i32, i32* %code, align 4, !dbg !1075, !tbaa !862
  %conv54 = zext i32 %58 to i64, !dbg !1075
  %arraydecay55 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0, !dbg !1076
  %call56 = call i32 (i32, i64, ...) @ioctl(i32 %57, i64 %conv54, i8* %arraydecay55) #1, !dbg !1077
  store i32 %call56, i32* %ret, align 4, !dbg !1078, !tbaa !862
  %59 = load %struct._ts*, %struct._ts** %_save52, align 8, !dbg !1079, !tbaa !558
  call void @PyEval_RestoreThread(%struct._ts* %59), !dbg !1080
  %60 = bitcast %struct._ts** %_save52 to i8*, !dbg !1081
  call void @llvm.lifetime.end(i64 8, i8* %60) #1, !dbg !1081
  %61 = load i32, i32* %ret, align 4, !dbg !1082, !tbaa !862
  %cmp57 = icmp slt i32 %61, 0, !dbg !1084
  br i1 %cmp57, label %if.then.59, label %if.end.61, !dbg !1085

if.then.59:                                       ; preds = %if.end.50
  call void @PyBuffer_Release(%struct.bufferinfo* %pstr), !dbg !1086
  %62 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1088, !tbaa !558
  %call60 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %62), !dbg !1089
  store %struct._object* null, %struct._object** %retval, !dbg !1090
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80, !dbg !1090

if.end.61:                                        ; preds = %if.end.50
  call void @PyBuffer_Release(%struct.bufferinfo* %pstr), !dbg !1091
  %arraydecay62 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0, !dbg !1092
  %63 = load i64, i64* %len, align 8, !dbg !1093, !tbaa !846
  %call63 = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay62, i64 %63), !dbg !1094
  store %struct._object* %call63, %struct._object** %retval, !dbg !1095
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80, !dbg !1095

if.end.64:                                        ; preds = %if.end.41
  call void @PyErr_Clear(), !dbg !1096
  store i32 0, i32* %arg, align 4, !dbg !1097, !tbaa !862
  %64 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1098, !tbaa !558
  %call65 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %64, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.10, i32 0, i32 0), i32 (%struct._object*, i32*)* @conv_descriptor, i32* %fd, i32* %code, i32* %arg), !dbg !1100
  %tobool66 = icmp ne i32 %call65, 0, !dbg !1100
  br i1 %tobool66, label %if.end.68, label %if.then.67, !dbg !1101

if.then.67:                                       ; preds = %if.end.64
  store %struct._object* null, %struct._object** %retval, !dbg !1102
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80, !dbg !1102

if.end.68:                                        ; preds = %if.end.64
  %65 = bitcast %struct._ts** %_save69 to i8*, !dbg !1104
  call void @llvm.lifetime.start(i64 8, i8* %65) #1, !dbg !1104
  call void @llvm.dbg.declare(metadata %struct._ts** %_save69, metadata !463, metadata !554), !dbg !1105
  %call70 = call %struct._ts* @PyEval_SaveThread(), !dbg !1106
  store %struct._ts* %call70, %struct._ts** %_save69, align 8, !dbg !1107, !tbaa !558
  %66 = load i32, i32* %fd, align 4, !dbg !1108, !tbaa !862
  %67 = load i32, i32* %code, align 4, !dbg !1109, !tbaa !862
  %conv71 = zext i32 %67 to i64, !dbg !1109
  %68 = load i32, i32* %arg, align 4, !dbg !1110, !tbaa !862
  %call72 = call i32 (i32, i64, ...) @ioctl(i32 %66, i64 %conv71, i32 %68) #1, !dbg !1111
  store i32 %call72, i32* %ret, align 4, !dbg !1112, !tbaa !862
  %69 = load %struct._ts*, %struct._ts** %_save69, align 8, !dbg !1113, !tbaa !558
  call void @PyEval_RestoreThread(%struct._ts* %69), !dbg !1114
  %70 = bitcast %struct._ts** %_save69 to i8*, !dbg !1115
  call void @llvm.lifetime.end(i64 8, i8* %70) #1, !dbg !1115
  %71 = load i32, i32* %ret, align 4, !dbg !1116, !tbaa !862
  %cmp73 = icmp slt i32 %71, 0, !dbg !1118
  br i1 %cmp73, label %if.then.75, label %if.end.77, !dbg !1119

if.then.75:                                       ; preds = %if.end.68
  %72 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1120, !tbaa !558
  %call76 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %72), !dbg !1122
  store %struct._object* null, %struct._object** %retval, !dbg !1123
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80, !dbg !1123

if.end.77:                                        ; preds = %if.end.68
  %73 = load i32, i32* %ret, align 4, !dbg !1124, !tbaa !862
  %conv78 = sext i32 %73 to i64, !dbg !1125
  %call79 = call %struct._object* @PyLong_FromLong(i64 %conv78), !dbg !1126
  store %struct._object* %call79, %struct._object** %retval, !dbg !1127
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80, !dbg !1127

cleanup.80:                                       ; preds = %if.end.77, %if.then.75, %if.then.67, %if.end.61, %if.then.59, %if.then.49, %cleanup
  %74 = bitcast [1025 x i8]* %buf to i8*, !dbg !1128
  call void @llvm.lifetime.end(i64 1025, i8* %74) #1, !dbg !1128
  %75 = bitcast i32* %mutate_arg to i8*, !dbg !1128
  call void @llvm.lifetime.end(i64 4, i8* %75) #1, !dbg !1128
  %76 = bitcast i64* %len to i8*, !dbg !1128
  call void @llvm.lifetime.end(i64 8, i8* %76) #1, !dbg !1128
  %77 = bitcast i8** %str to i8*, !dbg !1128
  call void @llvm.lifetime.end(i64 8, i8* %77) #1, !dbg !1128
  %78 = bitcast %struct.bufferinfo* %pstr to i8*, !dbg !1128
  call void @llvm.lifetime.end(i64 80, i8* %78) #1, !dbg !1128
  %79 = bitcast i32* %ret to i8*, !dbg !1128
  call void @llvm.lifetime.end(i64 4, i8* %79) #1, !dbg !1128
  %80 = bitcast i32* %arg to i8*, !dbg !1128
  call void @llvm.lifetime.end(i64 4, i8* %80) #1, !dbg !1128
  %81 = bitcast i32* %code to i8*, !dbg !1128
  call void @llvm.lifetime.end(i64 4, i8* %81) #1, !dbg !1128
  %82 = bitcast i32* %fd to i8*, !dbg !1128
  call void @llvm.lifetime.end(i64 4, i8* %82) #1, !dbg !1128
  %83 = load %struct._object*, %struct._object** %retval, !dbg !1128
  ret %struct._object* %83, !dbg !1128
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
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !558
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !467, metadata !554), !dbg !1129
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !558
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !468, metadata !554), !dbg !1130
  %0 = bitcast i32* %fd to i8*, !dbg !1131
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1131
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !469, metadata !554), !dbg !1132
  %1 = bitcast i32* %code to i8*, !dbg !1133
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1133
  call void @llvm.dbg.declare(metadata i32* %code, metadata !470, metadata !554), !dbg !1134
  %2 = bitcast i32* %ret to i8*, !dbg !1135
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !1135
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !471, metadata !554), !dbg !1136
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1137, !tbaa !558
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 (%struct._object*, i32*)* @conv_descriptor, i32* %fd, i32* %code), !dbg !1139
  %tobool = icmp ne i32 %call, 0, !dbg !1139
  br i1 %tobool, label %if.end, label %if.then, !dbg !1140

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1141
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1141

if.end:                                           ; preds = %entry
  %4 = bitcast %struct._ts** %_save to i8*, !dbg !1142
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1142
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !472, metadata !554), !dbg !1143
  %call1 = call %struct._ts* @PyEval_SaveThread(), !dbg !1144
  store %struct._ts* %call1, %struct._ts** %_save, align 8, !dbg !1145, !tbaa !558
  %5 = load i32, i32* %fd, align 4, !dbg !1146, !tbaa !862
  %6 = load i32, i32* %code, align 4, !dbg !1147, !tbaa !862
  %call2 = call i32 @flock(i32 %5, i32 %6) #1, !dbg !1148
  store i32 %call2, i32* %ret, align 4, !dbg !1149, !tbaa !862
  %7 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1150, !tbaa !558
  call void @PyEval_RestoreThread(%struct._ts* %7), !dbg !1151
  %8 = bitcast %struct._ts** %_save to i8*, !dbg !1152
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1152
  %9 = load i32, i32* %ret, align 4, !dbg !1153, !tbaa !862
  %cmp = icmp slt i32 %9, 0, !dbg !1155
  br i1 %cmp, label %if.then.3, label %if.end.5, !dbg !1156

if.then.3:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1157, !tbaa !558
  %call4 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %10), !dbg !1159
  store %struct._object* null, %struct._object** %retval, !dbg !1160
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1160

if.end.5:                                         ; preds = %if.end
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1161, !tbaa !1162
  %inc = add i64 %11, 1, !dbg !1161
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1161, !tbaa !1162
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1164
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1164

cleanup:                                          ; preds = %if.end.5, %if.then.3, %if.then
  %12 = bitcast i32* %ret to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 4, i8* %12) #1, !dbg !1165
  %13 = bitcast i32* %code to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 4, i8* %13) #1, !dbg !1165
  %14 = bitcast i32* %fd to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 4, i8* %14) #1, !dbg !1165
  %15 = load %struct._object*, %struct._object** %retval, !dbg !1165
  ret %struct._object* %15, !dbg !1165
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
  %cleanup.dest.slot = alloca i32
  %l = alloca %struct.flock, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !558
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !476, metadata !554), !dbg !1166
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !558
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !477, metadata !554), !dbg !1167
  %0 = bitcast i32* %fd to i8*, !dbg !1168
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1168
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !478, metadata !554), !dbg !1169
  %1 = bitcast i32* %code to i8*, !dbg !1168
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1168
  call void @llvm.dbg.declare(metadata i32* %code, metadata !479, metadata !554), !dbg !1170
  %2 = bitcast i32* %ret to i8*, !dbg !1168
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !1168
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !480, metadata !554), !dbg !1171
  %3 = bitcast i32* %whence to i8*, !dbg !1168
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1168
  call void @llvm.dbg.declare(metadata i32* %whence, metadata !481, metadata !554), !dbg !1172
  store i32 0, i32* %whence, align 4, !dbg !1172, !tbaa !862
  %4 = bitcast %struct._object** %lenobj to i8*, !dbg !1173
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1173
  call void @llvm.dbg.declare(metadata %struct._object** %lenobj, metadata !482, metadata !554), !dbg !1174
  store %struct._object* null, %struct._object** %lenobj, align 8, !dbg !1174, !tbaa !558
  %5 = bitcast %struct._object** %startobj to i8*, !dbg !1173
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1173
  call void @llvm.dbg.declare(metadata %struct._object** %startobj, metadata !483, metadata !554), !dbg !1175
  store %struct._object* null, %struct._object** %startobj, align 8, !dbg !1175, !tbaa !558
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1176, !tbaa !558
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 (%struct._object*, i32*)* @conv_descriptor, i32* %fd, i32* %code, %struct._object** %lenobj, %struct._object** %startobj, i32* %whence), !dbg !1178
  %tobool = icmp ne i32 %call, 0, !dbg !1178
  br i1 %tobool, label %if.end, label %if.then, !dbg !1179

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1180
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41, !dbg !1180

if.end:                                           ; preds = %entry
  %7 = bitcast %struct.flock* %l to i8*, !dbg !1181
  call void @llvm.lifetime.start(i64 32, i8* %7) #1, !dbg !1181
  call void @llvm.dbg.declare(metadata %struct.flock* %l, metadata !484, metadata !554), !dbg !1182
  %8 = load i32, i32* %code, align 4, !dbg !1183, !tbaa !862
  %cmp = icmp eq i32 %8, 8, !dbg !1185
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !1186

if.then.1:                                        ; preds = %if.end
  %l_type = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 0, !dbg !1187
  store i16 2, i16* %l_type, align 2, !dbg !1188, !tbaa !1189
  br label %if.end.13, !dbg !1192

if.else:                                          ; preds = %if.end
  %9 = load i32, i32* %code, align 4, !dbg !1193, !tbaa !862
  %and = and i32 %9, 1, !dbg !1195
  %tobool2 = icmp ne i32 %and, 0, !dbg !1195
  br i1 %tobool2, label %if.then.3, label %if.else.5, !dbg !1196

if.then.3:                                        ; preds = %if.else
  %l_type4 = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 0, !dbg !1197
  store i16 0, i16* %l_type4, align 2, !dbg !1198, !tbaa !1189
  br label %if.end.12, !dbg !1199

if.else.5:                                        ; preds = %if.else
  %10 = load i32, i32* %code, align 4, !dbg !1200, !tbaa !862
  %and6 = and i32 %10, 2, !dbg !1202
  %tobool7 = icmp ne i32 %and6, 0, !dbg !1202
  br i1 %tobool7, label %if.then.8, label %if.else.10, !dbg !1203

if.then.8:                                        ; preds = %if.else.5
  %l_type9 = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 0, !dbg !1204
  store i16 1, i16* %l_type9, align 2, !dbg !1205, !tbaa !1189
  br label %if.end.11, !dbg !1206

if.else.10:                                       ; preds = %if.else.5
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1207, !tbaa !558
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0)), !dbg !1209
  store %struct._object* null, %struct._object** %retval, !dbg !1210
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1210

if.end.11:                                        ; preds = %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.3
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.1
  %l_len = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 3, !dbg !1211
  store i64 0, i64* %l_len, align 8, !dbg !1212, !tbaa !1213
  %l_start = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 2, !dbg !1214
  store i64 0, i64* %l_start, align 8, !dbg !1215, !tbaa !1216
  %12 = load %struct._object*, %struct._object** %startobj, align 8, !dbg !1217, !tbaa !558
  %cmp14 = icmp ne %struct._object* %12, null, !dbg !1219
  br i1 %cmp14, label %if.then.15, label %if.end.22, !dbg !1220

if.then.15:                                       ; preds = %if.end.13
  %13 = load %struct._object*, %struct._object** %startobj, align 8, !dbg !1221, !tbaa !558
  %call16 = call i64 @PyLong_AsLong(%struct._object* %13), !dbg !1223
  %l_start17 = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 2, !dbg !1224
  store i64 %call16, i64* %l_start17, align 8, !dbg !1225, !tbaa !1216
  %call18 = call %struct._object* @PyErr_Occurred(), !dbg !1226
  %tobool19 = icmp ne %struct._object* %call18, null, !dbg !1226
  br i1 %tobool19, label %if.then.20, label %if.end.21, !dbg !1228

if.then.20:                                       ; preds = %if.then.15
  store %struct._object* null, %struct._object** %retval, !dbg !1229
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1229

if.end.21:                                        ; preds = %if.then.15
  br label %if.end.22, !dbg !1230

if.end.22:                                        ; preds = %if.end.21, %if.end.13
  %14 = load %struct._object*, %struct._object** %lenobj, align 8, !dbg !1231, !tbaa !558
  %cmp23 = icmp ne %struct._object* %14, null, !dbg !1233
  br i1 %cmp23, label %if.then.24, label %if.end.31, !dbg !1234

if.then.24:                                       ; preds = %if.end.22
  %15 = load %struct._object*, %struct._object** %lenobj, align 8, !dbg !1235, !tbaa !558
  %call25 = call i64 @PyLong_AsLong(%struct._object* %15), !dbg !1237
  %l_len26 = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 3, !dbg !1238
  store i64 %call25, i64* %l_len26, align 8, !dbg !1239, !tbaa !1213
  %call27 = call %struct._object* @PyErr_Occurred(), !dbg !1240
  %tobool28 = icmp ne %struct._object* %call27, null, !dbg !1240
  br i1 %tobool28, label %if.then.29, label %if.end.30, !dbg !1242

if.then.29:                                       ; preds = %if.then.24
  store %struct._object* null, %struct._object** %retval, !dbg !1243
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1243

if.end.30:                                        ; preds = %if.then.24
  br label %if.end.31, !dbg !1244

if.end.31:                                        ; preds = %if.end.30, %if.end.22
  %16 = load i32, i32* %whence, align 4, !dbg !1245, !tbaa !862
  %conv = trunc i32 %16 to i16, !dbg !1245
  %l_whence = getelementptr inbounds %struct.flock, %struct.flock* %l, i32 0, i32 1, !dbg !1246
  store i16 %conv, i16* %l_whence, align 2, !dbg !1247, !tbaa !1248
  %17 = bitcast %struct._ts** %_save to i8*, !dbg !1249
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !1249
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !496, metadata !554), !dbg !1250
  %call32 = call %struct._ts* @PyEval_SaveThread(), !dbg !1251
  store %struct._ts* %call32, %struct._ts** %_save, align 8, !dbg !1252, !tbaa !558
  %18 = load i32, i32* %fd, align 4, !dbg !1253, !tbaa !862
  %19 = load i32, i32* %code, align 4, !dbg !1254, !tbaa !862
  %and33 = and i32 %19, 4, !dbg !1255
  %tobool34 = icmp ne i32 %and33, 0, !dbg !1256
  %cond = select i1 %tobool34, i32 6, i32 7, !dbg !1256
  %call35 = call i32 (i32, i32, ...) @fcntl(i32 %18, i32 %cond, %struct.flock* %l), !dbg !1257
  store i32 %call35, i32* %ret, align 4, !dbg !1258, !tbaa !862
  %20 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1259, !tbaa !558
  call void @PyEval_RestoreThread(%struct._ts* %20), !dbg !1260
  %21 = bitcast %struct._ts** %_save to i8*, !dbg !1261
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !1261
  store i32 0, i32* %cleanup.dest.slot, !dbg !1262
  br label %cleanup, !dbg !1262

cleanup:                                          ; preds = %if.end.31, %if.then.29, %if.then.20, %if.else.10
  %22 = bitcast %struct.flock* %l to i8*, !dbg !1263
  call void @llvm.lifetime.end(i64 32, i8* %22) #1, !dbg !1263
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  %23 = load i32, i32* %ret, align 4, !dbg !1265, !tbaa !862
  %cmp36 = icmp slt i32 %23, 0, !dbg !1267
  br i1 %cmp36, label %if.then.38, label %if.end.40, !dbg !1268

if.then.38:                                       ; preds = %cleanup.cont
  %24 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !1269, !tbaa !558
  %call39 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %24), !dbg !1271
  store %struct._object* null, %struct._object** %retval, !dbg !1272
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41, !dbg !1272

if.end.40:                                        ; preds = %cleanup.cont
  %25 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1273, !tbaa !1162
  %inc = add i64 %25, 1, !dbg !1273
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1273, !tbaa !1162
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1274
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41, !dbg !1274

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.41

cleanup.41:                                       ; preds = %NewDefault, %if.end.40, %if.then.38, %if.then
  %26 = bitcast %struct._object** %startobj to i8*, !dbg !1275
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !1275
  %27 = bitcast %struct._object** %lenobj to i8*, !dbg !1275
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !1275
  %28 = bitcast i32* %whence to i8*, !dbg !1275
  call void @llvm.lifetime.end(i64 4, i8* %28) #1, !dbg !1275
  %29 = bitcast i32* %ret to i8*, !dbg !1275
  call void @llvm.lifetime.end(i64 4, i8* %29) #1, !dbg !1275
  %30 = bitcast i32* %code to i8*, !dbg !1275
  call void @llvm.lifetime.end(i64 4, i8* %30) #1, !dbg !1275
  %31 = bitcast i32* %fd to i8*, !dbg !1275
  call void @llvm.lifetime.end(i64 4, i8* %31) #1, !dbg !1275
  %32 = load %struct._object*, %struct._object** %retval, !dbg !1275
  ret %struct._object* %32, !dbg !1275
}

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @conv_descriptor(%struct._object* %object, i32* %target) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %struct._object*, align 8
  %target.addr = alloca i32*, align 8
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %object, %struct._object** %object.addr, align 8, !tbaa !558
  call void @llvm.dbg.declare(metadata %struct._object** %object.addr, metadata !433, metadata !554), !dbg !1276
  store i32* %target, i32** %target.addr, align 8, !tbaa !558
  call void @llvm.dbg.declare(metadata i32** %target.addr, metadata !434, metadata !554), !dbg !1277
  %0 = bitcast i32* %fd to i8*, !dbg !1278
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1278
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !435, metadata !554), !dbg !1279
  %1 = load %struct._object*, %struct._object** %object.addr, align 8, !dbg !1280, !tbaa !558
  %call = call i32 @PyObject_AsFileDescriptor(%struct._object* %1), !dbg !1281
  store i32 %call, i32* %fd, align 4, !dbg !1279, !tbaa !862
  %2 = load i32, i32* %fd, align 4, !dbg !1282, !tbaa !862
  %cmp = icmp slt i32 %2, 0, !dbg !1284
  br i1 %cmp, label %if.then, label %if.end, !dbg !1285

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1286
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1286

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %fd, align 4, !dbg !1287, !tbaa !862
  %4 = load i32*, i32** %target.addr, align 8, !dbg !1288, !tbaa !558
  store i32 %3, i32* %4, align 4, !dbg !1289, !tbaa !862
  store i32 1, i32* %retval, !dbg !1290
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1290

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i32* %fd to i8*, !dbg !1291
  call void @llvm.lifetime.end(i64 4, i8* %5) #1, !dbg !1291
  %6 = load i32, i32* %retval, !dbg !1291
  ret i32 %6, !dbg !1291
}

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct._ts* @PyEval_SaveThread() #3

declare i32 @fcntl(i32, i32, ...) #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

declare void @PyErr_Clear() #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare i32 @PyObject_AsFileDescriptor(%struct._object*) #3

declare void @PyBuffer_Release(%struct.bufferinfo*) #3

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

; Function Attrs: nounwind
declare i32 @flock(i32, i32) #4

declare i64 @PyLong_AsLong(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!549, !550, !551}
!llvm.ident = !{!552}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !343, globals: !501)
!1 = !DIFile(filename: "fcntlmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !8, line: 109, baseType: !9)
!8 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!9 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !8, line: 105, size: 128, align: 64, elements: !10)
!10 = !{!11, !18}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !9, file: !8, line: 107, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !13, line: 177, baseType: !14)
!13 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !15, line: 102, baseType: !16)
!15 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !17, line: 181, baseType: !5)
!17 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !9, file: !8, line: 108, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !8, line: 334, size: 3200, align: 64, elements: !21)
!21 = !{!22, !28, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !291, !309, !310, !311, !313, !315, !316, !318, !323, !328, !333, !334, !335, !336, !337, !338, !339, !340, !342}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !20, file: !8, line: 335, baseType: !23, size: 192, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !8, line: 114, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 111, size: 192, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !8, line: 112, baseType: !7, size: 128, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !24, file: !8, line: 113, baseType: !12, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !20, file: !8, line: 336, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !20, file: !8, line: 337, baseType: !12, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !20, file: !8, line: 337, baseType: !12, size: 64, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !20, file: !8, line: 341, baseType: !35, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !8, line: 308, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !6}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !20, file: !8, line: 342, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !8, line: 314, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !6, !45, !44}
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !15, line: 48, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 246, size: 1728, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!49 = !{!50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !71, !72, !73, !74, !76, !78, !80, !84, !87, !89, !90, !91, !92, !93, !97, !98}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 247, baseType: !44, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 252, baseType: !52, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 253, baseType: !52, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 254, baseType: !52, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 255, baseType: !52, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 256, baseType: !52, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 257, baseType: !52, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 258, baseType: !52, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 259, baseType: !52, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 261, baseType: !52, size: 64, align: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 262, baseType: !52, size: 64, align: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 263, baseType: !52, size: 64, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 265, baseType: !64, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 161, size: 192, align: 64, elements: !66)
!66 = !{!67, !68, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !65, file: !48, line: 162, baseType: !64, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !65, file: !48, line: 163, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !65, file: !48, line: 167, baseType: !44, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 267, baseType: !69, size: 64, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 269, baseType: !44, size: 32, align: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 273, baseType: !44, size: 32, align: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 275, baseType: !75, size: 64, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !17, line: 140, baseType: !5)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 279, baseType: !77, size: 16, align: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 280, baseType: !79, size: 8, align: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 281, baseType: !81, size: 8, align: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 285, baseType: !85, size: 64, align: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 155, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 294, baseType: !88, size: 64, align: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !17, line: 141, baseType: !5)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !47, file: !48, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !47, file: !48, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !47, file: !48, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !47, file: !48, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 309, baseType: !44, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !20, file: !8, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !8, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!6, !6, !52}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !20, file: !8, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !8, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!44, !6, !52, !6}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !20, file: !8, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !20, file: !8, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !8, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!6, !6}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !20, file: !8, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !8, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !8, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !8, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!6, !6, !6}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !8, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !8, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !8, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !8, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !8, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !8, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!6, !6, !6, !6}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !8, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !8, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !8, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !8, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !8, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !8, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!44, !6}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !8, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !8, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !8, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !8, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !8, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !8, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !8, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !8, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !8, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !8, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !8, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !8, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !8, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !8, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !8, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !8, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !8, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !8, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !8, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !8, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !8, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !8, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !8, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !8, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !20, file: !8, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !8, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !8, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !8, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!12, !6}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !8, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !8, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !8, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!6, !6, !12}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !8, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !8, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !8, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !8, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !6, !12, !6}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !8, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !8, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !8, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !6, !6}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !8, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !8, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !20, file: !8, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !8, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !8, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !8, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !8, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !8, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!44, !6, !6, !6}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !20, file: !8, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !8, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !6}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !13, line: 186, baseType: !12)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !20, file: !8, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !20, file: !8, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !20, file: !8, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !8, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !20, file: !8, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !8, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !20, file: !8, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !8, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !8, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !8, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!44, !6, !235, !44}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !8, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !8, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !8, line: 179, baseType: !4, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !8, line: 180, baseType: !6, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !8, line: 181, baseType: !12, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !8, line: 182, baseType: !12, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !8, line: 184, baseType: !44, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !8, line: 185, baseType: !44, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !8, line: 186, baseType: !52, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !8, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !8, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !8, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !8, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !8, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !8, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !6, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !20, file: !8, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !20, file: !8, line: 368, baseType: !29, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !20, file: !8, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !8, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !6, !263, !4}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !8, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!44, !6, !4}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !20, file: !8, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !20, file: !8, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !8, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!6, !6, !6, !44}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !20, file: !8, line: 382, baseType: !12, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !20, file: !8, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !8, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !20, file: !8, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !8, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !20, file: !8, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !29, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !29, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !20, file: !8, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !8, line: 390, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !8, line: 391, baseType: !292, size: 64, align: 64, offset: 1984)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !294, line: 11, size: 320, align: 64, elements: !295)
!294 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!295 = !{!296, !297, !302, !307, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !294, line: 12, baseType: !52, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !293, file: !294, line: 13, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !294, line: 8, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!6, !6, !4}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !293, file: !294, line: 14, baseType: !303, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !294, line: 9, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!44, !6, !6, !4}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !293, file: !294, line: 15, baseType: !52, size: 64, align: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !293, file: !294, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !20, file: !8, line: 392, baseType: !19, size: 64, align: 64, offset: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !20, file: !8, line: 393, baseType: !6, size: 64, align: 64, offset: 2112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !20, file: !8, line: 394, baseType: !312, size: 64, align: 64, offset: 2176)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !8, line: 325, baseType: !134)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !20, file: !8, line: 395, baseType: !314, size: 64, align: 64, offset: 2240)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !8, line: 326, baseType: !210)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !20, file: !8, line: 396, baseType: !12, size: 64, align: 64, offset: 2304)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !20, file: !8, line: 397, baseType: !317, size: 64, align: 64, offset: 2368)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !8, line: 327, baseType: !210)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !20, file: !8, line: 398, baseType: !319, size: 64, align: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !8, line: 329, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!6, !19, !12}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !20, file: !8, line: 399, baseType: !324, size: 64, align: 64, offset: 2496)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !8, line: 328, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!6, !19, !6, !6}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !20, file: !8, line: 400, baseType: !329, size: 64, align: 64, offset: 2560)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !8, line: 307, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !4}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !20, file: !8, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !20, file: !8, line: 402, baseType: !6, size: 64, align: 64, offset: 2688)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !20, file: !8, line: 403, baseType: !6, size: 64, align: 64, offset: 2752)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !20, file: !8, line: 404, baseType: !6, size: 64, align: 64, offset: 2816)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !20, file: !8, line: 405, baseType: !6, size: 64, align: 64, offset: 2880)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !20, file: !8, line: 406, baseType: !6, size: 64, align: 64, offset: 2944)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !20, file: !8, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !20, file: !8, line: 410, baseType: !341, size: 32, align: 32, offset: 3072)
!341 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !20, file: !8, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!343 = !{!344, !350, !428, !436, !465, !474, !498}
!344 = !DISubprogram(name: "PyInit_fcntl", scope: !345, file: !345, line: 617, type: !346, isLocal: false, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_fcntl, variables: !348)
!345 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/fcntlmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!346 = !DISubroutineType(types: !347)
!347 = !{!6}
!348 = !{!349}
!349 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !344, file: !345, line: 619, type: !6)
!350 = !DISubprogram(name: "fcntl_fcntl", scope: !345, file: !345, line: 33, type: !126, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @fcntl_fcntl, variables: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358, !359, !360, !364, !426}
!352 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !350, file: !345, line: 33, type: !6)
!353 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !350, file: !345, line: 33, type: !6)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !350, file: !345, line: 35, type: !44)
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !350, file: !345, line: 36, type: !44)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !350, file: !345, line: 37, type: !5)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !350, file: !345, line: 38, type: !44)
!358 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !350, file: !345, line: 39, type: !52)
!359 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !350, file: !345, line: 40, type: !12)
!360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !350, file: !345, line: 41, type: !361)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8192, align: 8, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 1024)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !365, file: !345, line: 51, type: !368)
!365 = distinct !DILexicalBlock(scope: !366, file: !345, line: 51, column: 9)
!366 = distinct !DILexicalBlock(scope: !367, file: !345, line: 44, column: 68)
!367 = distinct !DILexicalBlock(scope: !350, file: !345, line: 43, column: 9)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !370, line: 139, baseType: !371)
!370 = !DIFile(filename: "./Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !370, line: 69, size: 1536, align: 64, elements: !372)
!372 = !{!373, !375, !376, !396, !399, !400, !401, !402, !403, !404, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !371, file: !370, line: 72, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !370, line: 73, baseType: !374, size: 64, align: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !371, file: !370, line: 74, baseType: !377, size: 64, align: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !370, line: 44, baseType: !379)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !370, line: 19, size: 832, align: 64, elements: !380)
!380 = !{!381, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !370, line: 21, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !379, file: !370, line: 22, baseType: !374, size: 64, align: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !379, file: !370, line: 24, baseType: !6, size: 64, align: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !379, file: !370, line: 25, baseType: !6, size: 64, align: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !379, file: !370, line: 26, baseType: !6, size: 64, align: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !379, file: !370, line: 27, baseType: !6, size: 64, align: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !379, file: !370, line: 28, baseType: !6, size: 64, align: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !379, file: !370, line: 30, baseType: !6, size: 64, align: 64, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !379, file: !370, line: 31, baseType: !6, size: 64, align: 64, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !379, file: !370, line: 32, baseType: !6, size: 64, align: 64, offset: 576)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !379, file: !370, line: 33, baseType: !44, size: 32, align: 32, offset: 640)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !379, file: !370, line: 34, baseType: !44, size: 32, align: 32, offset: 672)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !379, file: !370, line: 37, baseType: !44, size: 32, align: 32, offset: 704)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !379, file: !370, line: 43, baseType: !6, size: 64, align: 64, offset: 768)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !371, file: !370, line: 76, baseType: !397, size: 64, align: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !370, line: 50, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !371, file: !370, line: 77, baseType: !44, size: 32, align: 32, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !371, file: !370, line: 78, baseType: !31, size: 8, align: 8, offset: 288)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !371, file: !370, line: 80, baseType: !31, size: 8, align: 8, offset: 296)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !371, file: !370, line: 85, baseType: !44, size: 32, align: 32, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !371, file: !370, line: 86, baseType: !44, size: 32, align: 32, offset: 352)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !371, file: !370, line: 88, baseType: !405, size: 64, align: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !370, line: 54, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!44, !6, !397, !44, !6}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !371, file: !370, line: 89, baseType: !405, size: 64, align: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !371, file: !370, line: 90, baseType: !6, size: 64, align: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !371, file: !370, line: 91, baseType: !6, size: 64, align: 64, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !371, file: !370, line: 93, baseType: !6, size: 64, align: 64, offset: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !371, file: !370, line: 94, baseType: !6, size: 64, align: 64, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !371, file: !370, line: 95, baseType: !6, size: 64, align: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !371, file: !370, line: 97, baseType: !6, size: 64, align: 64, offset: 832)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !371, file: !370, line: 98, baseType: !6, size: 64, align: 64, offset: 896)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !371, file: !370, line: 99, baseType: !6, size: 64, align: 64, offset: 960)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !371, file: !370, line: 101, baseType: !6, size: 64, align: 64, offset: 1024)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !371, file: !370, line: 103, baseType: !44, size: 32, align: 32, offset: 1088)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !371, file: !370, line: 105, baseType: !6, size: 64, align: 64, offset: 1152)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !371, file: !370, line: 106, baseType: !5, size: 64, align: 64, offset: 1216)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !371, file: !370, line: 108, baseType: !44, size: 32, align: 32, offset: 1280)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !371, file: !370, line: 109, baseType: !6, size: 64, align: 64, offset: 1344)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !371, file: !370, line: 134, baseType: !330, size: 64, align: 64, offset: 1408)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !371, file: !370, line: 135, baseType: !4, size: 64, align: 64, offset: 1472)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !427, file: !345, line: 69, type: !368)
!427 = distinct !DILexicalBlock(scope: !350, file: !345, line: 69, column: 5)
!428 = !DISubprogram(name: "conv_descriptor", scope: !345, file: !345, line: 19, type: !429, isLocal: true, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32*)* @conv_descriptor, variables: !432)
!429 = !DISubroutineType(types: !430)
!430 = !{!44, !6, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!432 = !{!433, !434, !435}
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "object", arg: 1, scope: !428, file: !345, line: 19, type: !6)
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "target", arg: 2, scope: !428, file: !345, line: 19, type: !431)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !428, file: !345, line: 21, type: !44)
!436 = !DISubprogram(name: "fcntl_ioctl", scope: !345, file: !345, line: 97, type: !126, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @fcntl_ioctl, variables: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !452, !455, !459, !463}
!438 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !436, file: !345, line: 97, type: !6)
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !436, file: !345, line: 97, type: !6)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !436, file: !345, line: 100, type: !44)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !436, file: !345, line: 114, type: !341)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !436, file: !345, line: 115, type: !44)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !436, file: !345, line: 116, type: !44)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pstr", scope: !436, file: !345, line: 117, type: !236)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !436, file: !345, line: 118, type: !52)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !436, file: !345, line: 119, type: !12)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mutate_arg", scope: !436, file: !345, line: 120, type: !44)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !436, file: !345, line: 121, type: !449)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8200, align: 8, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 1025)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !453, file: !345, line: 126, type: !52)
!453 = distinct !DILexicalBlock(scope: !454, file: !345, line: 125, column: 47)
!454 = distinct !DILexicalBlock(scope: !436, file: !345, line: 123, column: 9)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !456, file: !345, line: 154, type: !368)
!456 = distinct !DILexicalBlock(scope: !457, file: !345, line: 154, column: 13)
!457 = distinct !DILexicalBlock(scope: !458, file: !345, line: 153, column: 25)
!458 = distinct !DILexicalBlock(scope: !453, file: !345, line: 153, column: 13)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !460, file: !345, line: 190, type: !368)
!460 = distinct !DILexicalBlock(scope: !461, file: !345, line: 190, column: 9)
!461 = distinct !DILexicalBlock(scope: !462, file: !345, line: 179, column: 63)
!462 = distinct !DILexicalBlock(scope: !436, file: !345, line: 178, column: 9)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !464, file: !345, line: 210, type: !368)
!464 = distinct !DILexicalBlock(scope: !436, file: !345, line: 210, column: 5)
!465 = !DISubprogram(name: "fcntl_flock", scope: !345, file: !345, line: 257, type: !126, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @fcntl_flock, variables: !466)
!466 = !{!467, !468, !469, !470, !471, !472}
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !465, file: !345, line: 257, type: !6)
!468 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !465, file: !345, line: 257, type: !6)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !465, file: !345, line: 259, type: !44)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !465, file: !345, line: 260, type: !44)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !465, file: !345, line: 261, type: !44)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !473, file: !345, line: 268, type: !368)
!473 = distinct !DILexicalBlock(scope: !465, file: !345, line: 268, column: 5)
!474 = !DISubprogram(name: "fcntl_lockf", scope: !345, file: !345, line: 316, type: !126, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @fcntl_lockf, variables: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !496}
!476 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !474, file: !345, line: 316, type: !6)
!477 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !474, file: !345, line: 316, type: !6)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !474, file: !345, line: 318, type: !44)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !474, file: !345, line: 318, type: !44)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !474, file: !345, line: 318, type: !44)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "whence", scope: !474, file: !345, line: 318, type: !44)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lenobj", scope: !474, file: !345, line: 319, type: !6)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "startobj", scope: !474, file: !345, line: 319, type: !6)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !485, file: !345, line: 333, type: !486)
!485 = distinct !DILexicalBlock(scope: !474, file: !345, line: 332, column: 5)
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "flock", file: !487, line: 35, size: 256, align: 64, elements: !488)
!487 = !DIFile(filename: "/usr/include/bits/fcntl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!488 = !{!489, !491, !492, !493, !494}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "l_type", scope: !486, file: !487, line: 37, baseType: !490, size: 16, align: 16)
!490 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "l_whence", scope: !486, file: !487, line: 38, baseType: !490, size: 16, align: 16, offset: 16)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "l_start", scope: !486, file: !487, line: 43, baseType: !88, size: 64, align: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "l_len", scope: !486, file: !487, line: 44, baseType: !88, size: 64, align: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "l_pid", scope: !486, file: !487, line: 46, baseType: !495, size: 32, align: 32, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !17, line: 142, baseType: !44)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !497, file: !345, line: 369, type: !368)
!497 = distinct !DILexicalBlock(scope: !485, file: !345, line: 369, column: 9)
!498 = !DISubprogram(name: "all_ins", scope: !345, file: !345, line: 427, type: !144, isLocal: true, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @all_ins, variables: !499)
!499 = !{!500}
!500 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !498, file: !345, line: 427, type: !6)
!501 = !{!502, !525, !529, !533, !537, !541, !545}
!502 = !DIGlobalVariable(name: "fcntlmodule", scope: !0, file: !345, line: 604, type: !503, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @fcntlmodule)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !504, line: 47, size: 832, align: 64, elements: !505)
!504 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!505 = !{!506, !515, !516, !517, !518, !521, !522, !523, !524}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !503, file: !504, line: 48, baseType: !507, size: 320, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !504, line: 38, baseType: !508)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !504, line: 33, size: 320, align: 64, elements: !509)
!509 = !{!510, !511, !513, !514}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !508, file: !504, line: 34, baseType: !7, size: 128, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !508, file: !504, line: 35, baseType: !512, size: 64, align: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !508, file: !504, line: 36, baseType: !12, size: 64, align: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !508, file: !504, line: 37, baseType: !6, size: 64, align: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !503, file: !504, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !503, file: !504, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !503, file: !504, line: 51, baseType: !12, size: 64, align: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !503, file: !504, line: 52, baseType: !519, size: 64, align: 64, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !503, file: !504, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !503, file: !504, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !503, file: !504, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !503, file: !504, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!525 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !345, line: 417, type: !526, isLocal: true, isDefinition: true, variable: [221 x i8]* @module_doc)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1768, align: 8, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 221)
!529 = !DIGlobalVariable(name: "fcntl_methods", scope: !0, file: !345, line: 408, type: !530, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMethodDef]* @fcntl_methods)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 1280, align: 64, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 5)
!533 = !DIGlobalVariable(name: "fcntl_doc", scope: !0, file: !345, line: 79, type: !534, isLocal: true, isDefinition: true, variable: [703 x i8]* @fcntl_doc)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 5624, align: 8, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 703)
!537 = !DIGlobalVariable(name: "ioctl_doc", scope: !0, file: !345, line: 221, type: !538, isLocal: true, isDefinition: true, variable: [1452 x i8]* @ioctl_doc)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 11616, align: 8, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 1452)
!541 = !DIGlobalVariable(name: "flock_doc", scope: !0, file: !345, line: 306, type: !542, isLocal: true, isDefinition: true, variable: [189 x i8]* @flock_doc)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1512, align: 8, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 189)
!545 = !DIGlobalVariable(name: "lockf_doc", scope: !0, file: !345, line: 381, type: !546, isLocal: true, isDefinition: true, variable: [1033 x i8]* @lockf_doc)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8264, align: 8, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 1033)
!549 = !{i32 2, !"Dwarf Version", i32 4}
!550 = !{i32 2, !"Debug Info Version", i32 3}
!551 = !{i32 1, !"PIC Level", i32 2}
!552 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!553 = !DILocation(line: 619, column: 5, scope: !344)
!554 = !DIExpression()
!555 = !DILocation(line: 619, column: 15, scope: !344)
!556 = !DILocation(line: 622, column: 9, scope: !344)
!557 = !DILocation(line: 622, column: 7, scope: !344)
!558 = !{!559, !559, i64 0}
!559 = !{!"any pointer", !560, i64 0}
!560 = !{!"omnipotent char", !561, i64 0}
!561 = !{!"Simple C/C++ TBAA"}
!562 = !DILocation(line: 623, column: 9, scope: !563)
!563 = distinct !DILexicalBlock(scope: !344, file: !345, line: 623, column: 9)
!564 = !DILocation(line: 623, column: 11, scope: !563)
!565 = !DILocation(line: 623, column: 9, scope: !344)
!566 = !DILocation(line: 624, column: 9, scope: !563)
!567 = !DILocation(line: 627, column: 17, scope: !568)
!568 = distinct !DILexicalBlock(scope: !344, file: !345, line: 627, column: 9)
!569 = !DILocation(line: 627, column: 9, scope: !568)
!570 = !DILocation(line: 627, column: 20, scope: !568)
!571 = !DILocation(line: 627, column: 9, scope: !344)
!572 = !DILocation(line: 628, column: 9, scope: !568)
!573 = !DILocation(line: 630, column: 12, scope: !344)
!574 = !DILocation(line: 630, column: 5, scope: !344)
!575 = !DILocation(line: 631, column: 1, scope: !344)
!576 = !DILocation(line: 427, column: 19, scope: !498)
!577 = !DILocation(line: 429, column: 33, scope: !578)
!578 = distinct !DILexicalBlock(scope: !498, file: !345, line: 429, column: 9)
!579 = !DILocation(line: 429, column: 9, scope: !578)
!580 = !DILocation(line: 429, column: 9, scope: !498)
!581 = !DILocation(line: 429, column: 51, scope: !582)
!582 = !DILexicalBlockFile(scope: !578, file: !345, discriminator: 1)
!583 = !DILocation(line: 430, column: 33, scope: !584)
!584 = distinct !DILexicalBlock(scope: !498, file: !345, line: 430, column: 9)
!585 = !DILocation(line: 430, column: 9, scope: !584)
!586 = !DILocation(line: 430, column: 9, scope: !498)
!587 = !DILocation(line: 430, column: 51, scope: !588)
!588 = !DILexicalBlockFile(scope: !584, file: !345, discriminator: 1)
!589 = !DILocation(line: 431, column: 33, scope: !590)
!590 = distinct !DILexicalBlock(scope: !498, file: !345, line: 431, column: 9)
!591 = !DILocation(line: 431, column: 9, scope: !590)
!592 = !DILocation(line: 431, column: 9, scope: !498)
!593 = !DILocation(line: 431, column: 51, scope: !594)
!594 = !DILexicalBlockFile(scope: !590, file: !345, discriminator: 1)
!595 = !DILocation(line: 432, column: 33, scope: !596)
!596 = distinct !DILexicalBlock(scope: !498, file: !345, line: 432, column: 9)
!597 = !DILocation(line: 432, column: 9, scope: !596)
!598 = !DILocation(line: 432, column: 9, scope: !498)
!599 = !DILocation(line: 432, column: 51, scope: !600)
!600 = !DILexicalBlockFile(scope: !596, file: !345, discriminator: 1)
!601 = !DILocation(line: 435, column: 33, scope: !602)
!602 = distinct !DILexicalBlock(scope: !498, file: !345, line: 435, column: 9)
!603 = !DILocation(line: 435, column: 9, scope: !602)
!604 = !DILocation(line: 435, column: 9, scope: !498)
!605 = !DILocation(line: 435, column: 54, scope: !606)
!606 = !DILexicalBlockFile(scope: !602, file: !345, discriminator: 1)
!607 = !DILocation(line: 438, column: 33, scope: !608)
!608 = distinct !DILexicalBlock(scope: !498, file: !345, line: 438, column: 9)
!609 = !DILocation(line: 438, column: 9, scope: !608)
!610 = !DILocation(line: 438, column: 9, scope: !498)
!611 = !DILocation(line: 438, column: 54, scope: !612)
!612 = !DILexicalBlockFile(scope: !608, file: !345, discriminator: 1)
!613 = !DILocation(line: 441, column: 33, scope: !614)
!614 = distinct !DILexicalBlock(scope: !498, file: !345, line: 441, column: 9)
!615 = !DILocation(line: 441, column: 9, scope: !614)
!616 = !DILocation(line: 441, column: 9, scope: !498)
!617 = !DILocation(line: 441, column: 56, scope: !618)
!618 = !DILexicalBlockFile(scope: !614, file: !345, discriminator: 1)
!619 = !DILocation(line: 444, column: 33, scope: !620)
!620 = distinct !DILexicalBlock(scope: !498, file: !345, line: 444, column: 9)
!621 = !DILocation(line: 444, column: 9, scope: !620)
!622 = !DILocation(line: 444, column: 9, scope: !498)
!623 = !DILocation(line: 444, column: 53, scope: !624)
!624 = !DILexicalBlockFile(scope: !620, file: !345, discriminator: 1)
!625 = !DILocation(line: 448, column: 33, scope: !626)
!626 = distinct !DILexicalBlock(scope: !498, file: !345, line: 448, column: 9)
!627 = !DILocation(line: 448, column: 9, scope: !626)
!628 = !DILocation(line: 448, column: 9, scope: !498)
!629 = !DILocation(line: 448, column: 51, scope: !630)
!630 = !DILexicalBlockFile(scope: !626, file: !345, discriminator: 1)
!631 = !DILocation(line: 451, column: 33, scope: !632)
!632 = distinct !DILexicalBlock(scope: !498, file: !345, line: 451, column: 9)
!633 = !DILocation(line: 451, column: 9, scope: !632)
!634 = !DILocation(line: 451, column: 9, scope: !498)
!635 = !DILocation(line: 451, column: 62, scope: !636)
!636 = !DILexicalBlockFile(scope: !632, file: !345, discriminator: 1)
!637 = !DILocation(line: 454, column: 33, scope: !638)
!638 = distinct !DILexicalBlock(scope: !498, file: !345, line: 454, column: 9)
!639 = !DILocation(line: 454, column: 9, scope: !638)
!640 = !DILocation(line: 454, column: 9, scope: !498)
!641 = !DILocation(line: 454, column: 51, scope: !642)
!642 = !DILexicalBlockFile(scope: !638, file: !345, discriminator: 1)
!643 = !DILocation(line: 457, column: 33, scope: !644)
!644 = distinct !DILexicalBlock(scope: !498, file: !345, line: 457, column: 9)
!645 = !DILocation(line: 457, column: 9, scope: !644)
!646 = !DILocation(line: 457, column: 9, scope: !498)
!647 = !DILocation(line: 457, column: 51, scope: !648)
!648 = !DILexicalBlockFile(scope: !644, file: !345, discriminator: 1)
!649 = !DILocation(line: 460, column: 33, scope: !650)
!650 = distinct !DILexicalBlock(scope: !498, file: !345, line: 460, column: 9)
!651 = !DILocation(line: 460, column: 9, scope: !650)
!652 = !DILocation(line: 460, column: 9, scope: !498)
!653 = !DILocation(line: 460, column: 51, scope: !654)
!654 = !DILexicalBlockFile(scope: !650, file: !345, discriminator: 1)
!655 = !DILocation(line: 463, column: 33, scope: !656)
!656 = distinct !DILexicalBlock(scope: !498, file: !345, line: 463, column: 9)
!657 = !DILocation(line: 463, column: 9, scope: !656)
!658 = !DILocation(line: 463, column: 9, scope: !498)
!659 = !DILocation(line: 463, column: 51, scope: !660)
!660 = !DILexicalBlockFile(scope: !656, file: !345, discriminator: 1)
!661 = !DILocation(line: 466, column: 33, scope: !662)
!662 = distinct !DILexicalBlock(scope: !498, file: !345, line: 466, column: 9)
!663 = !DILocation(line: 466, column: 9, scope: !662)
!664 = !DILocation(line: 466, column: 9, scope: !498)
!665 = !DILocation(line: 466, column: 51, scope: !666)
!666 = !DILexicalBlockFile(scope: !662, file: !345, discriminator: 1)
!667 = !DILocation(line: 469, column: 33, scope: !668)
!668 = distinct !DILexicalBlock(scope: !498, file: !345, line: 469, column: 9)
!669 = !DILocation(line: 469, column: 9, scope: !668)
!670 = !DILocation(line: 469, column: 9, scope: !498)
!671 = !DILocation(line: 469, column: 51, scope: !672)
!672 = !DILexicalBlockFile(scope: !668, file: !345, discriminator: 1)
!673 = !DILocation(line: 472, column: 33, scope: !674)
!674 = distinct !DILexicalBlock(scope: !498, file: !345, line: 472, column: 9)
!675 = !DILocation(line: 472, column: 9, scope: !674)
!676 = !DILocation(line: 472, column: 9, scope: !498)
!677 = !DILocation(line: 472, column: 52, scope: !678)
!678 = !DILexicalBlockFile(scope: !674, file: !345, discriminator: 1)
!679 = !DILocation(line: 475, column: 33, scope: !680)
!680 = distinct !DILexicalBlock(scope: !498, file: !345, line: 475, column: 9)
!681 = !DILocation(line: 475, column: 9, scope: !680)
!682 = !DILocation(line: 475, column: 9, scope: !498)
!683 = !DILocation(line: 475, column: 52, scope: !684)
!684 = !DILexicalBlockFile(scope: !680, file: !345, discriminator: 1)
!685 = !DILocation(line: 478, column: 33, scope: !686)
!686 = distinct !DILexicalBlock(scope: !498, file: !345, line: 478, column: 9)
!687 = !DILocation(line: 478, column: 9, scope: !686)
!688 = !DILocation(line: 478, column: 9, scope: !498)
!689 = !DILocation(line: 478, column: 52, scope: !690)
!690 = !DILexicalBlockFile(scope: !686, file: !345, discriminator: 1)
!691 = !DILocation(line: 481, column: 33, scope: !692)
!692 = distinct !DILexicalBlock(scope: !498, file: !345, line: 481, column: 9)
!693 = !DILocation(line: 481, column: 9, scope: !692)
!694 = !DILocation(line: 481, column: 9, scope: !498)
!695 = !DILocation(line: 481, column: 53, scope: !696)
!696 = !DILexicalBlockFile(scope: !692, file: !345, discriminator: 1)
!697 = !DILocation(line: 484, column: 33, scope: !698)
!698 = distinct !DILexicalBlock(scope: !498, file: !345, line: 484, column: 9)
!699 = !DILocation(line: 484, column: 9, scope: !698)
!700 = !DILocation(line: 484, column: 9, scope: !498)
!701 = !DILocation(line: 484, column: 53, scope: !702)
!702 = !DILexicalBlockFile(scope: !698, file: !345, discriminator: 1)
!703 = !DILocation(line: 487, column: 33, scope: !704)
!704 = distinct !DILexicalBlock(scope: !498, file: !345, line: 487, column: 9)
!705 = !DILocation(line: 487, column: 9, scope: !704)
!706 = !DILocation(line: 487, column: 9, scope: !498)
!707 = !DILocation(line: 487, column: 51, scope: !708)
!708 = !DILexicalBlockFile(scope: !704, file: !345, discriminator: 1)
!709 = !DILocation(line: 490, column: 33, scope: !710)
!710 = distinct !DILexicalBlock(scope: !498, file: !345, line: 490, column: 9)
!711 = !DILocation(line: 490, column: 9, scope: !710)
!712 = !DILocation(line: 490, column: 9, scope: !498)
!713 = !DILocation(line: 490, column: 51, scope: !714)
!714 = !DILexicalBlockFile(scope: !710, file: !345, discriminator: 1)
!715 = !DILocation(line: 493, column: 33, scope: !716)
!716 = distinct !DILexicalBlock(scope: !498, file: !345, line: 493, column: 9)
!717 = !DILocation(line: 493, column: 9, scope: !716)
!718 = !DILocation(line: 493, column: 9, scope: !498)
!719 = !DILocation(line: 493, column: 51, scope: !720)
!720 = !DILexicalBlockFile(scope: !716, file: !345, discriminator: 1)
!721 = !DILocation(line: 497, column: 33, scope: !722)
!722 = distinct !DILexicalBlock(scope: !498, file: !345, line: 497, column: 9)
!723 = !DILocation(line: 497, column: 9, scope: !722)
!724 = !DILocation(line: 497, column: 9, scope: !498)
!725 = !DILocation(line: 497, column: 53, scope: !726)
!726 = !DILexicalBlockFile(scope: !722, file: !345, discriminator: 1)
!727 = !DILocation(line: 500, column: 33, scope: !728)
!728 = distinct !DILexicalBlock(scope: !498, file: !345, line: 500, column: 9)
!729 = !DILocation(line: 500, column: 9, scope: !728)
!730 = !DILocation(line: 500, column: 9, scope: !498)
!731 = !DILocation(line: 500, column: 53, scope: !732)
!732 = !DILexicalBlockFile(scope: !728, file: !345, discriminator: 1)
!733 = !DILocation(line: 503, column: 33, scope: !734)
!734 = distinct !DILexicalBlock(scope: !498, file: !345, line: 503, column: 9)
!735 = !DILocation(line: 503, column: 9, scope: !734)
!736 = !DILocation(line: 503, column: 9, scope: !498)
!737 = !DILocation(line: 503, column: 54, scope: !738)
!738 = !DILexicalBlockFile(scope: !734, file: !345, discriminator: 1)
!739 = !DILocation(line: 507, column: 33, scope: !740)
!740 = distinct !DILexicalBlock(scope: !498, file: !345, line: 507, column: 9)
!741 = !DILocation(line: 507, column: 9, scope: !740)
!742 = !DILocation(line: 507, column: 9, scope: !498)
!743 = !DILocation(line: 507, column: 55, scope: !744)
!744 = !DILexicalBlockFile(scope: !740, file: !345, discriminator: 1)
!745 = !DILocation(line: 510, column: 33, scope: !746)
!746 = distinct !DILexicalBlock(scope: !498, file: !345, line: 510, column: 9)
!747 = !DILocation(line: 510, column: 9, scope: !746)
!748 = !DILocation(line: 510, column: 9, scope: !498)
!749 = !DILocation(line: 510, column: 57, scope: !750)
!750 = !DILexicalBlockFile(scope: !746, file: !345, discriminator: 1)
!751 = !DILocation(line: 513, column: 33, scope: !752)
!752 = distinct !DILexicalBlock(scope: !498, file: !345, line: 513, column: 9)
!753 = !DILocation(line: 513, column: 9, scope: !752)
!754 = !DILocation(line: 513, column: 9, scope: !498)
!755 = !DILocation(line: 513, column: 57, scope: !756)
!756 = !DILexicalBlockFile(scope: !752, file: !345, discriminator: 1)
!757 = !DILocation(line: 516, column: 33, scope: !758)
!758 = distinct !DILexicalBlock(scope: !498, file: !345, line: 516, column: 9)
!759 = !DILocation(line: 516, column: 9, scope: !758)
!760 = !DILocation(line: 516, column: 9, scope: !498)
!761 = !DILocation(line: 516, column: 55, scope: !762)
!762 = !DILexicalBlockFile(scope: !758, file: !345, discriminator: 1)
!763 = !DILocation(line: 520, column: 33, scope: !764)
!764 = distinct !DILexicalBlock(scope: !498, file: !345, line: 520, column: 9)
!765 = !DILocation(line: 520, column: 9, scope: !764)
!766 = !DILocation(line: 520, column: 9, scope: !498)
!767 = !DILocation(line: 520, column: 51, scope: !768)
!768 = !DILexicalBlockFile(scope: !764, file: !345, discriminator: 1)
!769 = !DILocation(line: 523, column: 33, scope: !770)
!770 = distinct !DILexicalBlock(scope: !498, file: !345, line: 523, column: 9)
!771 = !DILocation(line: 523, column: 9, scope: !770)
!772 = !DILocation(line: 523, column: 9, scope: !498)
!773 = !DILocation(line: 523, column: 51, scope: !774)
!774 = !DILexicalBlockFile(scope: !770, file: !345, discriminator: 1)
!775 = !DILocation(line: 536, column: 33, scope: !776)
!776 = distinct !DILexicalBlock(scope: !498, file: !345, line: 536, column: 9)
!777 = !DILocation(line: 536, column: 9, scope: !776)
!778 = !DILocation(line: 536, column: 9, scope: !498)
!779 = !DILocation(line: 536, column: 54, scope: !780)
!780 = !DILexicalBlockFile(scope: !776, file: !345, discriminator: 1)
!781 = !DILocation(line: 541, column: 33, scope: !782)
!782 = distinct !DILexicalBlock(scope: !498, file: !345, line: 541, column: 9)
!783 = !DILocation(line: 541, column: 9, scope: !782)
!784 = !DILocation(line: 541, column: 9, scope: !498)
!785 = !DILocation(line: 541, column: 62, scope: !786)
!786 = !DILexicalBlockFile(scope: !782, file: !345, discriminator: 1)
!787 = !DILocation(line: 544, column: 33, scope: !788)
!788 = distinct !DILexicalBlock(scope: !498, file: !345, line: 544, column: 9)
!789 = !DILocation(line: 544, column: 9, scope: !788)
!790 = !DILocation(line: 544, column: 9, scope: !498)
!791 = !DILocation(line: 544, column: 62, scope: !792)
!792 = !DILexicalBlockFile(scope: !788, file: !345, discriminator: 1)
!793 = !DILocation(line: 547, column: 33, scope: !794)
!794 = distinct !DILexicalBlock(scope: !498, file: !345, line: 547, column: 9)
!795 = !DILocation(line: 547, column: 9, scope: !794)
!796 = !DILocation(line: 547, column: 9, scope: !498)
!797 = !DILocation(line: 547, column: 62, scope: !798)
!798 = !DILexicalBlockFile(scope: !794, file: !345, discriminator: 1)
!799 = !DILocation(line: 550, column: 33, scope: !800)
!800 = distinct !DILexicalBlock(scope: !498, file: !345, line: 550, column: 9)
!801 = !DILocation(line: 550, column: 9, scope: !800)
!802 = !DILocation(line: 550, column: 9, scope: !498)
!803 = !DILocation(line: 550, column: 62, scope: !804)
!804 = !DILexicalBlockFile(scope: !800, file: !345, discriminator: 1)
!805 = !DILocation(line: 553, column: 33, scope: !806)
!806 = distinct !DILexicalBlock(scope: !498, file: !345, line: 553, column: 9)
!807 = !DILocation(line: 553, column: 9, scope: !806)
!808 = !DILocation(line: 553, column: 9, scope: !498)
!809 = !DILocation(line: 553, column: 62, scope: !810)
!810 = !DILexicalBlockFile(scope: !806, file: !345, discriminator: 1)
!811 = !DILocation(line: 556, column: 33, scope: !812)
!812 = distinct !DILexicalBlock(scope: !498, file: !345, line: 556, column: 9)
!813 = !DILocation(line: 556, column: 9, scope: !812)
!814 = !DILocation(line: 556, column: 9, scope: !498)
!815 = !DILocation(line: 556, column: 62, scope: !816)
!816 = !DILexicalBlockFile(scope: !812, file: !345, discriminator: 1)
!817 = !DILocation(line: 559, column: 33, scope: !818)
!818 = distinct !DILexicalBlock(scope: !498, file: !345, line: 559, column: 9)
!819 = !DILocation(line: 559, column: 9, scope: !818)
!820 = !DILocation(line: 559, column: 9, scope: !498)
!821 = !DILocation(line: 559, column: 65, scope: !822)
!822 = !DILexicalBlockFile(scope: !818, file: !345, discriminator: 1)
!823 = !DILocation(line: 600, column: 5, scope: !498)
!824 = !DILocation(line: 601, column: 1, scope: !498)
!825 = !DILocation(line: 33, column: 23, scope: !350)
!826 = !DILocation(line: 33, column: 39, scope: !350)
!827 = !DILocation(line: 35, column: 5, scope: !350)
!828 = !DILocation(line: 35, column: 9, scope: !350)
!829 = !DILocation(line: 36, column: 5, scope: !350)
!830 = !DILocation(line: 36, column: 9, scope: !350)
!831 = !DILocation(line: 37, column: 5, scope: !350)
!832 = !DILocation(line: 37, column: 10, scope: !350)
!833 = !DILocation(line: 38, column: 5, scope: !350)
!834 = !DILocation(line: 38, column: 9, scope: !350)
!835 = !DILocation(line: 39, column: 5, scope: !350)
!836 = !DILocation(line: 39, column: 11, scope: !350)
!837 = !DILocation(line: 40, column: 5, scope: !350)
!838 = !DILocation(line: 40, column: 16, scope: !350)
!839 = !DILocation(line: 41, column: 5, scope: !350)
!840 = !DILocation(line: 41, column: 10, scope: !350)
!841 = !DILocation(line: 43, column: 33, scope: !367)
!842 = !DILocation(line: 43, column: 9, scope: !367)
!843 = !DILocation(line: 43, column: 9, scope: !350)
!844 = !DILocation(line: 45, column: 13, scope: !845)
!845 = distinct !DILexicalBlock(scope: !366, file: !345, line: 45, column: 13)
!846 = !{!847, !847, i64 0}
!847 = !{!"long", !560, i64 0}
!848 = !DILocation(line: 45, column: 17, scope: !845)
!849 = !DILocation(line: 45, column: 13, scope: !366)
!850 = !DILocation(line: 46, column: 29, scope: !851)
!851 = distinct !DILexicalBlock(scope: !845, file: !345, line: 45, column: 31)
!852 = !DILocation(line: 46, column: 13, scope: !851)
!853 = !DILocation(line: 48, column: 13, scope: !851)
!854 = !DILocation(line: 50, column: 9, scope: !366)
!855 = !DILocation(line: 50, column: 21, scope: !366)
!856 = !DILocation(line: 50, column: 26, scope: !366)
!857 = !DILocation(line: 51, column: 11, scope: !365)
!858 = !DILocation(line: 51, column: 26, scope: !365)
!859 = !DILocation(line: 51, column: 41, scope: !365)
!860 = !DILocation(line: 51, column: 39, scope: !365)
!861 = !DILocation(line: 52, column: 21, scope: !365)
!862 = !{!863, !863, i64 0}
!863 = !{!"int", !560, i64 0}
!864 = !DILocation(line: 52, column: 25, scope: !365)
!865 = !DILocation(line: 52, column: 31, scope: !365)
!866 = !DILocation(line: 52, column: 15, scope: !365)
!867 = !DILocation(line: 52, column: 13, scope: !365)
!868 = !DILocation(line: 53, column: 30, scope: !365)
!869 = !DILocation(line: 53, column: 9, scope: !365)
!870 = !DILocation(line: 53, column: 38, scope: !366)
!871 = !DILocation(line: 54, column: 13, scope: !872)
!872 = distinct !DILexicalBlock(scope: !366, file: !345, line: 54, column: 13)
!873 = !DILocation(line: 54, column: 17, scope: !872)
!874 = !DILocation(line: 54, column: 13, scope: !366)
!875 = !DILocation(line: 55, column: 32, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !345, line: 54, column: 22)
!877 = !DILocation(line: 55, column: 13, scope: !876)
!878 = !DILocation(line: 56, column: 13, scope: !876)
!879 = !DILocation(line: 58, column: 42, scope: !366)
!880 = !DILocation(line: 58, column: 47, scope: !366)
!881 = !DILocation(line: 58, column: 16, scope: !366)
!882 = !DILocation(line: 58, column: 9, scope: !366)
!883 = !DILocation(line: 61, column: 5, scope: !350)
!884 = !DILocation(line: 62, column: 9, scope: !350)
!885 = !DILocation(line: 63, column: 34, scope: !886)
!886 = distinct !DILexicalBlock(scope: !350, file: !345, line: 63, column: 9)
!887 = !DILocation(line: 63, column: 10, scope: !886)
!888 = !DILocation(line: 63, column: 9, scope: !350)
!889 = !DILocation(line: 67, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !345, line: 66, column: 63)
!891 = !DILocation(line: 69, column: 7, scope: !427)
!892 = !DILocation(line: 69, column: 22, scope: !427)
!893 = !DILocation(line: 69, column: 37, scope: !427)
!894 = !DILocation(line: 69, column: 35, scope: !427)
!895 = !DILocation(line: 70, column: 17, scope: !427)
!896 = !DILocation(line: 70, column: 21, scope: !427)
!897 = !DILocation(line: 70, column: 27, scope: !427)
!898 = !DILocation(line: 70, column: 11, scope: !427)
!899 = !DILocation(line: 70, column: 9, scope: !427)
!900 = !DILocation(line: 71, column: 26, scope: !427)
!901 = !DILocation(line: 71, column: 5, scope: !427)
!902 = !DILocation(line: 71, column: 34, scope: !350)
!903 = !DILocation(line: 72, column: 9, scope: !904)
!904 = distinct !DILexicalBlock(scope: !350, file: !345, line: 72, column: 9)
!905 = !DILocation(line: 72, column: 13, scope: !904)
!906 = !DILocation(line: 72, column: 9, scope: !350)
!907 = !DILocation(line: 73, column: 28, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !345, line: 72, column: 18)
!909 = !DILocation(line: 73, column: 9, scope: !908)
!910 = !DILocation(line: 74, column: 9, scope: !908)
!911 = !DILocation(line: 76, column: 34, scope: !350)
!912 = !DILocation(line: 76, column: 28, scope: !350)
!913 = !DILocation(line: 76, column: 12, scope: !350)
!914 = !DILocation(line: 76, column: 5, scope: !350)
!915 = !DILocation(line: 77, column: 1, scope: !350)
!916 = !DILocation(line: 97, column: 23, scope: !436)
!917 = !DILocation(line: 97, column: 39, scope: !436)
!918 = !DILocation(line: 100, column: 5, scope: !436)
!919 = !DILocation(line: 100, column: 9, scope: !436)
!920 = !DILocation(line: 114, column: 5, scope: !436)
!921 = !DILocation(line: 114, column: 18, scope: !436)
!922 = !DILocation(line: 115, column: 5, scope: !436)
!923 = !DILocation(line: 115, column: 9, scope: !436)
!924 = !DILocation(line: 116, column: 5, scope: !436)
!925 = !DILocation(line: 116, column: 9, scope: !436)
!926 = !DILocation(line: 117, column: 5, scope: !436)
!927 = !DILocation(line: 117, column: 15, scope: !436)
!928 = !DILocation(line: 118, column: 5, scope: !436)
!929 = !DILocation(line: 118, column: 11, scope: !436)
!930 = !DILocation(line: 119, column: 5, scope: !436)
!931 = !DILocation(line: 119, column: 16, scope: !436)
!932 = !DILocation(line: 120, column: 5, scope: !436)
!933 = !DILocation(line: 120, column: 9, scope: !436)
!934 = !DILocation(line: 121, column: 5, scope: !436)
!935 = !DILocation(line: 121, column: 10, scope: !436)
!936 = !DILocation(line: 123, column: 33, scope: !454)
!937 = !DILocation(line: 123, column: 9, scope: !454)
!938 = !DILocation(line: 123, column: 9, scope: !436)
!939 = !DILocation(line: 126, column: 9, scope: !453)
!940 = !DILocation(line: 126, column: 15, scope: !453)
!941 = !DILocation(line: 127, column: 20, scope: !453)
!942 = !{!943, !559, i64 0}
!943 = !{!"bufferinfo", !559, i64 0, !559, i64 8, !847, i64 16, !847, i64 24, !863, i64 32, !863, i64 36, !559, i64 40, !559, i64 48, !559, i64 56, !559, i64 64, !559, i64 72}
!944 = !DILocation(line: 127, column: 13, scope: !453)
!945 = !DILocation(line: 128, column: 20, scope: !453)
!946 = !{!943, !847, i64 16}
!947 = !DILocation(line: 128, column: 13, scope: !453)
!948 = !DILocation(line: 130, column: 13, scope: !949)
!949 = distinct !DILexicalBlock(scope: !453, file: !345, line: 130, column: 13)
!950 = !DILocation(line: 130, column: 13, scope: !453)
!951 = !DILocation(line: 131, column: 17, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !345, line: 131, column: 17)
!953 = distinct !DILexicalBlock(scope: !949, file: !345, line: 130, column: 25)
!954 = !DILocation(line: 131, column: 21, scope: !952)
!955 = !DILocation(line: 131, column: 17, scope: !953)
!956 = !DILocation(line: 132, column: 17, scope: !957)
!957 = distinct !DILexicalBlock(scope: !952, file: !345, line: 131, column: 30)
!958 = !DILocation(line: 132, column: 29, scope: !957)
!959 = !DILocation(line: 132, column: 34, scope: !957)
!960 = !DILocation(line: 133, column: 21, scope: !957)
!961 = !DILocation(line: 133, column: 17, scope: !957)
!962 = !DILocation(line: 133, column: 26, scope: !957)
!963 = !{!560, !560, i64 0}
!964 = !DILocation(line: 134, column: 23, scope: !957)
!965 = !DILocation(line: 134, column: 21, scope: !957)
!966 = !DILocation(line: 135, column: 13, scope: !957)
!967 = !DILocation(line: 137, column: 23, scope: !968)
!968 = distinct !DILexicalBlock(scope: !952, file: !345, line: 136, column: 18)
!969 = !DILocation(line: 137, column: 21, scope: !968)
!970 = !DILocation(line: 139, column: 9, scope: !953)
!971 = !DILocation(line: 141, column: 17, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !345, line: 141, column: 17)
!973 = distinct !DILexicalBlock(scope: !949, file: !345, line: 140, column: 14)
!974 = !DILocation(line: 141, column: 21, scope: !972)
!975 = !DILocation(line: 141, column: 17, scope: !973)
!976 = !DILocation(line: 142, column: 17, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !345, line: 141, column: 29)
!978 = !DILocation(line: 143, column: 33, scope: !977)
!979 = !DILocation(line: 143, column: 17, scope: !977)
!980 = !DILocation(line: 145, column: 17, scope: !977)
!981 = !DILocation(line: 148, column: 17, scope: !982)
!982 = distinct !DILexicalBlock(scope: !972, file: !345, line: 147, column: 18)
!983 = !DILocation(line: 148, column: 29, scope: !982)
!984 = !DILocation(line: 148, column: 34, scope: !982)
!985 = !DILocation(line: 149, column: 21, scope: !982)
!986 = !DILocation(line: 149, column: 17, scope: !982)
!987 = !DILocation(line: 149, column: 26, scope: !982)
!988 = !DILocation(line: 150, column: 23, scope: !982)
!989 = !DILocation(line: 150, column: 21, scope: !982)
!990 = !DILocation(line: 153, column: 13, scope: !458)
!991 = !DILocation(line: 153, column: 20, scope: !458)
!992 = !DILocation(line: 153, column: 17, scope: !458)
!993 = !DILocation(line: 153, column: 13, scope: !453)
!994 = !DILocation(line: 154, column: 15, scope: !456)
!995 = !DILocation(line: 154, column: 30, scope: !456)
!996 = !DILocation(line: 154, column: 45, scope: !456)
!997 = !DILocation(line: 154, column: 43, scope: !456)
!998 = !DILocation(line: 155, column: 25, scope: !456)
!999 = !DILocation(line: 155, column: 29, scope: !456)
!1000 = !DILocation(line: 155, column: 35, scope: !456)
!1001 = !DILocation(line: 155, column: 19, scope: !456)
!1002 = !DILocation(line: 155, column: 17, scope: !456)
!1003 = !DILocation(line: 156, column: 34, scope: !456)
!1004 = !DILocation(line: 156, column: 13, scope: !456)
!1005 = !DILocation(line: 156, column: 42, scope: !457)
!1006 = !DILocation(line: 157, column: 9, scope: !457)
!1007 = !DILocation(line: 159, column: 25, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !458, file: !345, line: 158, column: 14)
!1009 = !DILocation(line: 159, column: 29, scope: !1008)
!1010 = !DILocation(line: 159, column: 35, scope: !1008)
!1011 = !DILocation(line: 159, column: 19, scope: !1008)
!1012 = !DILocation(line: 159, column: 17, scope: !1008)
!1013 = !DILocation(line: 161, column: 13, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !453, file: !345, line: 161, column: 13)
!1015 = !DILocation(line: 161, column: 24, scope: !1014)
!1016 = !DILocation(line: 161, column: 28, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !1014, file: !345, discriminator: 1)
!1018 = !DILocation(line: 161, column: 32, scope: !1014)
!1019 = !DILocation(line: 161, column: 13, scope: !453)
!1020 = !DILocation(line: 162, column: 20, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1014, file: !345, line: 161, column: 42)
!1022 = !DILocation(line: 162, column: 13, scope: !1021)
!1023 = !DILocation(line: 162, column: 30, scope: !1021)
!1024 = !DILocation(line: 163, column: 9, scope: !1021)
!1025 = !DILocation(line: 164, column: 9, scope: !453)
!1026 = !DILocation(line: 165, column: 13, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !453, file: !345, line: 165, column: 13)
!1028 = !DILocation(line: 165, column: 17, scope: !1027)
!1029 = !DILocation(line: 165, column: 13, scope: !453)
!1030 = !DILocation(line: 166, column: 32, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !345, line: 165, column: 22)
!1032 = !DILocation(line: 166, column: 13, scope: !1031)
!1033 = !DILocation(line: 167, column: 13, scope: !1031)
!1034 = !DILocation(line: 169, column: 13, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !453, file: !345, line: 169, column: 13)
!1036 = !DILocation(line: 169, column: 13, scope: !453)
!1037 = !DILocation(line: 170, column: 36, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !345, line: 169, column: 25)
!1039 = !DILocation(line: 170, column: 20, scope: !1038)
!1040 = !DILocation(line: 170, column: 13, scope: !1038)
!1041 = !DILocation(line: 173, column: 46, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1035, file: !345, line: 172, column: 14)
!1043 = !DILocation(line: 173, column: 51, scope: !1042)
!1044 = !DILocation(line: 173, column: 20, scope: !1042)
!1045 = !DILocation(line: 173, column: 13, scope: !1042)
!1046 = !DILocation(line: 175, column: 5, scope: !454)
!1047 = !DILocation(line: 177, column: 5, scope: !436)
!1048 = !DILocation(line: 178, column: 33, scope: !462)
!1049 = !DILocation(line: 178, column: 9, scope: !462)
!1050 = !DILocation(line: 178, column: 9, scope: !436)
!1051 = !DILocation(line: 180, column: 20, scope: !461)
!1052 = !DILocation(line: 180, column: 13, scope: !461)
!1053 = !DILocation(line: 181, column: 20, scope: !461)
!1054 = !DILocation(line: 181, column: 13, scope: !461)
!1055 = !DILocation(line: 182, column: 13, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !461, file: !345, line: 182, column: 13)
!1057 = !DILocation(line: 182, column: 17, scope: !1056)
!1058 = !DILocation(line: 182, column: 13, scope: !461)
!1059 = !DILocation(line: 183, column: 13, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !345, line: 182, column: 25)
!1061 = !DILocation(line: 184, column: 29, scope: !1060)
!1062 = !DILocation(line: 184, column: 13, scope: !1060)
!1063 = !DILocation(line: 186, column: 13, scope: !1060)
!1064 = !DILocation(line: 188, column: 9, scope: !461)
!1065 = !DILocation(line: 188, column: 21, scope: !461)
!1066 = !DILocation(line: 188, column: 26, scope: !461)
!1067 = !DILocation(line: 189, column: 13, scope: !461)
!1068 = !DILocation(line: 189, column: 9, scope: !461)
!1069 = !DILocation(line: 189, column: 18, scope: !461)
!1070 = !DILocation(line: 190, column: 11, scope: !460)
!1071 = !DILocation(line: 190, column: 26, scope: !460)
!1072 = !DILocation(line: 190, column: 41, scope: !460)
!1073 = !DILocation(line: 190, column: 39, scope: !460)
!1074 = !DILocation(line: 191, column: 21, scope: !460)
!1075 = !DILocation(line: 191, column: 25, scope: !460)
!1076 = !DILocation(line: 191, column: 31, scope: !460)
!1077 = !DILocation(line: 191, column: 15, scope: !460)
!1078 = !DILocation(line: 191, column: 13, scope: !460)
!1079 = !DILocation(line: 192, column: 30, scope: !460)
!1080 = !DILocation(line: 192, column: 9, scope: !460)
!1081 = !DILocation(line: 192, column: 38, scope: !461)
!1082 = !DILocation(line: 193, column: 13, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !461, file: !345, line: 193, column: 13)
!1084 = !DILocation(line: 193, column: 17, scope: !1083)
!1085 = !DILocation(line: 193, column: 13, scope: !461)
!1086 = !DILocation(line: 194, column: 13, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !345, line: 193, column: 22)
!1088 = !DILocation(line: 195, column: 32, scope: !1087)
!1089 = !DILocation(line: 195, column: 13, scope: !1087)
!1090 = !DILocation(line: 196, column: 13, scope: !1087)
!1091 = !DILocation(line: 198, column: 9, scope: !461)
!1092 = !DILocation(line: 199, column: 42, scope: !461)
!1093 = !DILocation(line: 199, column: 47, scope: !461)
!1094 = !DILocation(line: 199, column: 16, scope: !461)
!1095 = !DILocation(line: 199, column: 9, scope: !461)
!1096 = !DILocation(line: 202, column: 5, scope: !436)
!1097 = !DILocation(line: 203, column: 9, scope: !436)
!1098 = !DILocation(line: 204, column: 34, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !436, file: !345, line: 204, column: 9)
!1100 = !DILocation(line: 204, column: 10, scope: !1099)
!1101 = !DILocation(line: 204, column: 9, scope: !436)
!1102 = !DILocation(line: 208, column: 7, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !345, line: 207, column: 63)
!1104 = !DILocation(line: 210, column: 7, scope: !464)
!1105 = !DILocation(line: 210, column: 22, scope: !464)
!1106 = !DILocation(line: 210, column: 37, scope: !464)
!1107 = !DILocation(line: 210, column: 35, scope: !464)
!1108 = !DILocation(line: 211, column: 17, scope: !464)
!1109 = !DILocation(line: 211, column: 21, scope: !464)
!1110 = !DILocation(line: 211, column: 27, scope: !464)
!1111 = !DILocation(line: 211, column: 11, scope: !464)
!1112 = !DILocation(line: 211, column: 9, scope: !464)
!1113 = !DILocation(line: 212, column: 26, scope: !464)
!1114 = !DILocation(line: 212, column: 5, scope: !464)
!1115 = !DILocation(line: 212, column: 34, scope: !436)
!1116 = !DILocation(line: 213, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !436, file: !345, line: 213, column: 9)
!1118 = !DILocation(line: 213, column: 13, scope: !1117)
!1119 = !DILocation(line: 213, column: 9, scope: !436)
!1120 = !DILocation(line: 214, column: 28, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1117, file: !345, line: 213, column: 18)
!1122 = !DILocation(line: 214, column: 9, scope: !1121)
!1123 = !DILocation(line: 215, column: 9, scope: !1121)
!1124 = !DILocation(line: 217, column: 34, scope: !436)
!1125 = !DILocation(line: 217, column: 28, scope: !436)
!1126 = !DILocation(line: 217, column: 12, scope: !436)
!1127 = !DILocation(line: 217, column: 5, scope: !436)
!1128 = !DILocation(line: 219, column: 1, scope: !436)
!1129 = !DILocation(line: 257, column: 23, scope: !465)
!1130 = !DILocation(line: 257, column: 39, scope: !465)
!1131 = !DILocation(line: 259, column: 5, scope: !465)
!1132 = !DILocation(line: 259, column: 9, scope: !465)
!1133 = !DILocation(line: 260, column: 5, scope: !465)
!1134 = !DILocation(line: 260, column: 9, scope: !465)
!1135 = !DILocation(line: 261, column: 5, scope: !465)
!1136 = !DILocation(line: 261, column: 9, scope: !465)
!1137 = !DILocation(line: 263, column: 34, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !465, file: !345, line: 263, column: 9)
!1139 = !DILocation(line: 263, column: 10, scope: !1138)
!1140 = !DILocation(line: 263, column: 9, scope: !465)
!1141 = !DILocation(line: 265, column: 9, scope: !1138)
!1142 = !DILocation(line: 268, column: 7, scope: !473)
!1143 = !DILocation(line: 268, column: 22, scope: !473)
!1144 = !DILocation(line: 268, column: 37, scope: !473)
!1145 = !DILocation(line: 268, column: 35, scope: !473)
!1146 = !DILocation(line: 269, column: 17, scope: !473)
!1147 = !DILocation(line: 269, column: 21, scope: !473)
!1148 = !DILocation(line: 269, column: 11, scope: !473)
!1149 = !DILocation(line: 269, column: 9, scope: !473)
!1150 = !DILocation(line: 270, column: 26, scope: !473)
!1151 = !DILocation(line: 270, column: 5, scope: !473)
!1152 = !DILocation(line: 270, column: 34, scope: !465)
!1153 = !DILocation(line: 298, column: 9, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !465, file: !345, line: 298, column: 9)
!1155 = !DILocation(line: 298, column: 13, scope: !1154)
!1156 = !DILocation(line: 298, column: 9, scope: !465)
!1157 = !DILocation(line: 299, column: 28, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !345, line: 298, column: 18)
!1159 = !DILocation(line: 299, column: 9, scope: !1158)
!1160 = !DILocation(line: 300, column: 9, scope: !1158)
!1161 = !DILocation(line: 302, column: 51, scope: !465)
!1162 = !{!1163, !847, i64 0}
!1163 = !{!"_object", !847, i64 0, !559, i64 8}
!1164 = !DILocation(line: 303, column: 5, scope: !465)
!1165 = !DILocation(line: 304, column: 1, scope: !465)
!1166 = !DILocation(line: 316, column: 23, scope: !474)
!1167 = !DILocation(line: 316, column: 39, scope: !474)
!1168 = !DILocation(line: 318, column: 5, scope: !474)
!1169 = !DILocation(line: 318, column: 9, scope: !474)
!1170 = !DILocation(line: 318, column: 13, scope: !474)
!1171 = !DILocation(line: 318, column: 19, scope: !474)
!1172 = !DILocation(line: 318, column: 24, scope: !474)
!1173 = !DILocation(line: 319, column: 5, scope: !474)
!1174 = !DILocation(line: 319, column: 15, scope: !474)
!1175 = !DILocation(line: 319, column: 37, scope: !474)
!1176 = !DILocation(line: 321, column: 34, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !474, file: !345, line: 321, column: 9)
!1178 = !DILocation(line: 321, column: 10, scope: !1177)
!1179 = !DILocation(line: 321, column: 9, scope: !474)
!1180 = !DILocation(line: 324, column: 9, scope: !1177)
!1181 = !DILocation(line: 333, column: 9, scope: !485)
!1182 = !DILocation(line: 333, column: 22, scope: !485)
!1183 = !DILocation(line: 334, column: 13, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !485, file: !345, line: 334, column: 13)
!1185 = !DILocation(line: 334, column: 18, scope: !1184)
!1186 = !DILocation(line: 334, column: 13, scope: !485)
!1187 = !DILocation(line: 335, column: 15, scope: !1184)
!1188 = !DILocation(line: 335, column: 22, scope: !1184)
!1189 = !{!1190, !1191, i64 0}
!1190 = !{!"flock", !1191, i64 0, !1191, i64 2, !847, i64 8, !847, i64 16, !863, i64 24}
!1191 = !{!"short", !560, i64 0}
!1192 = !DILocation(line: 335, column: 13, scope: !1184)
!1193 = !DILocation(line: 336, column: 18, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1184, file: !345, line: 336, column: 18)
!1195 = !DILocation(line: 336, column: 23, scope: !1194)
!1196 = !DILocation(line: 336, column: 18, scope: !1184)
!1197 = !DILocation(line: 337, column: 15, scope: !1194)
!1198 = !DILocation(line: 337, column: 22, scope: !1194)
!1199 = !DILocation(line: 337, column: 13, scope: !1194)
!1200 = !DILocation(line: 338, column: 18, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1194, file: !345, line: 338, column: 18)
!1202 = !DILocation(line: 338, column: 23, scope: !1201)
!1203 = !DILocation(line: 338, column: 18, scope: !1194)
!1204 = !DILocation(line: 339, column: 15, scope: !1201)
!1205 = !DILocation(line: 339, column: 22, scope: !1201)
!1206 = !DILocation(line: 339, column: 13, scope: !1201)
!1207 = !DILocation(line: 341, column: 29, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1201, file: !345, line: 340, column: 14)
!1209 = !DILocation(line: 341, column: 13, scope: !1208)
!1210 = !DILocation(line: 343, column: 13, scope: !1208)
!1211 = !DILocation(line: 345, column: 23, scope: !485)
!1212 = !DILocation(line: 345, column: 29, scope: !485)
!1213 = !{!1190, !847, i64 16}
!1214 = !DILocation(line: 345, column: 11, scope: !485)
!1215 = !DILocation(line: 345, column: 19, scope: !485)
!1216 = !{!1190, !847, i64 8}
!1217 = !DILocation(line: 346, column: 13, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !485, file: !345, line: 346, column: 13)
!1219 = !DILocation(line: 346, column: 22, scope: !1218)
!1220 = !DILocation(line: 346, column: 13, scope: !485)
!1221 = !DILocation(line: 348, column: 39, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !345, line: 346, column: 37)
!1223 = !DILocation(line: 348, column: 25, scope: !1222)
!1224 = !DILocation(line: 348, column: 15, scope: !1222)
!1225 = !DILocation(line: 348, column: 23, scope: !1222)
!1226 = !DILocation(line: 354, column: 17, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !345, line: 354, column: 17)
!1228 = !DILocation(line: 354, column: 17, scope: !1222)
!1229 = !DILocation(line: 355, column: 17, scope: !1227)
!1230 = !DILocation(line: 356, column: 9, scope: !1222)
!1231 = !DILocation(line: 357, column: 13, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !485, file: !345, line: 357, column: 13)
!1233 = !DILocation(line: 357, column: 20, scope: !1232)
!1234 = !DILocation(line: 357, column: 13, scope: !485)
!1235 = !DILocation(line: 359, column: 37, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !345, line: 357, column: 35)
!1237 = !DILocation(line: 359, column: 23, scope: !1236)
!1238 = !DILocation(line: 359, column: 15, scope: !1236)
!1239 = !DILocation(line: 359, column: 21, scope: !1236)
!1240 = !DILocation(line: 365, column: 17, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !345, line: 365, column: 17)
!1242 = !DILocation(line: 365, column: 17, scope: !1236)
!1243 = !DILocation(line: 366, column: 17, scope: !1241)
!1244 = !DILocation(line: 367, column: 9, scope: !1236)
!1245 = !DILocation(line: 368, column: 22, scope: !485)
!1246 = !DILocation(line: 368, column: 11, scope: !485)
!1247 = !DILocation(line: 368, column: 20, scope: !485)
!1248 = !{!1190, !1191, i64 2}
!1249 = !DILocation(line: 369, column: 11, scope: !497)
!1250 = !DILocation(line: 369, column: 26, scope: !497)
!1251 = !DILocation(line: 369, column: 41, scope: !497)
!1252 = !DILocation(line: 369, column: 39, scope: !497)
!1253 = !DILocation(line: 370, column: 21, scope: !497)
!1254 = !DILocation(line: 370, column: 26, scope: !497)
!1255 = !DILocation(line: 370, column: 31, scope: !497)
!1256 = !DILocation(line: 370, column: 25, scope: !497)
!1257 = !DILocation(line: 370, column: 15, scope: !497)
!1258 = !DILocation(line: 370, column: 13, scope: !497)
!1259 = !DILocation(line: 371, column: 30, scope: !497)
!1260 = !DILocation(line: 371, column: 9, scope: !497)
!1261 = !DILocation(line: 371, column: 38, scope: !485)
!1262 = !DILocation(line: 372, column: 5, scope: !474)
!1263 = !DILocation(line: 372, column: 5, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !474, file: !345, discriminator: 1)
!1265 = !DILocation(line: 373, column: 9, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !474, file: !345, line: 373, column: 9)
!1267 = !DILocation(line: 373, column: 13, scope: !1266)
!1268 = !DILocation(line: 373, column: 9, scope: !474)
!1269 = !DILocation(line: 374, column: 28, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !345, line: 373, column: 18)
!1271 = !DILocation(line: 374, column: 9, scope: !1270)
!1272 = !DILocation(line: 375, column: 9, scope: !1270)
!1273 = !DILocation(line: 377, column: 51, scope: !474)
!1274 = !DILocation(line: 378, column: 5, scope: !474)
!1275 = !DILocation(line: 379, column: 1, scope: !474)
!1276 = !DILocation(line: 19, column: 27, scope: !428)
!1277 = !DILocation(line: 19, column: 40, scope: !428)
!1278 = !DILocation(line: 21, column: 5, scope: !428)
!1279 = !DILocation(line: 21, column: 9, scope: !428)
!1280 = !DILocation(line: 21, column: 40, scope: !428)
!1281 = !DILocation(line: 21, column: 14, scope: !428)
!1282 = !DILocation(line: 23, column: 9, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !428, file: !345, line: 23, column: 9)
!1284 = !DILocation(line: 23, column: 12, scope: !1283)
!1285 = !DILocation(line: 23, column: 9, scope: !428)
!1286 = !DILocation(line: 24, column: 5, scope: !1283)
!1287 = !DILocation(line: 25, column: 15, scope: !428)
!1288 = !DILocation(line: 25, column: 6, scope: !428)
!1289 = !DILocation(line: 25, column: 13, scope: !428)
!1290 = !DILocation(line: 26, column: 5, scope: !428)
!1291 = !DILocation(line: 27, column: 1, scope: !428)
