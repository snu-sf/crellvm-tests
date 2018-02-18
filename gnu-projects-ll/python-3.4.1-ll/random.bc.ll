; ModuleID = './random.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%union._Py_HashSecret_t = type { %struct.anon.1 }
%struct.anon.1 = type { [16 x i8], i64 }
%struct.anon.3 = type { i32, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque

@PyExc_ValueError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [30 x i8] c"negative argument not allowed\00", align 1
@_Py_HashSecret = external global %union._Py_HashSecret_t, align 8
@_Py_HashSecret_Initialized = internal global i32 0, align 4
@Py_IgnoreEnvironmentFlag = external global i32, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"PYTHONHASHSEED\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"PYTHONHASHSEED must be \22random\22 or an integer in range [0; 4294967295]\00", align 1
@urandom_cache = internal global %struct.anon.3 { i32 -1, i64 0, i64 0 }, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@PyExc_NotImplementedError = external global %struct._object*, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"/dev/urandom (or equivalent) not found\00", align 1
@PyExc_OSError = external global %struct._object*, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"Failed to read %zi bytes from /dev/urandom\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Failed to open /dev/urandom\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Failed to read bytes from /dev/urandom\00", align 1

; Function Attrs: nounwind uwtable
define i32 @_PyOS_URandom(i8* %buffer, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i8*, i8** %buffer.addr, align 8
  %4 = load i64, i64* %size.addr, align 8
  %call4 = call i32 @dev_urandom_python(i8* %3, i64 %4)
  store i32 %call4, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @dev_urandom_python(i8* %buffer, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %fd = alloca i32, align 4
  %n = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  %_save = alloca %struct._ts*, align 8
  %_save46 = alloca %struct._ts*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp sle i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4
  %cmp1 = icmp sge i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4
  %call = call i32 @fstat64(i32 %2, %struct.stat* %st) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 0
  %3 = load i64, i64* %st_dev, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 1), align 8
  %cmp3 = icmp ne i64 %3, %4
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 1
  %5 = load i64, i64* %st_ino, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 2), align 8
  %cmp5 = icmp ne i64 %5, %6
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false, %if.then.2
  store i32 -1, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %lor.lhs.false.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %7 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4
  %cmp9 = icmp sge i32 %7, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %8 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4
  store i32 %8, i32* %fd, align 4
  br label %if.end.45

if.else:                                          ; preds = %if.end.8
  %call11 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call11, %struct._ts** %_save, align 8
  %call12 = call i32 @_Py_open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 0)
  store i32 %call12, i32* %fd, align 4
  %9 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %9)
  %10 = load i32, i32* %fd, align 4
  %cmp13 = icmp slt i32 %10, 0
  br i1 %cmp13, label %if.then.14, label %if.end.30

if.then.14:                                       ; preds = %if.else
  %call15 = call i32* @__errno_location() #7
  %11 = load i32, i32* %call15, align 4
  %cmp16 = icmp eq i32 %11, 2
  br i1 %cmp16, label %if.then.26, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %if.then.14
  %call18 = call i32* @__errno_location() #7
  %12 = load i32, i32* %call18, align 4
  %cmp19 = icmp eq i32 %12, 6
  br i1 %cmp19, label %if.then.26, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %call21 = call i32* @__errno_location() #7
  %13 = load i32, i32* %call21, align 4
  %cmp22 = icmp eq i32 %13, 19
  br i1 %cmp22, label %if.then.26, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.20
  %call24 = call i32* @__errno_location() #7
  %14 = load i32, i32* %call24, align 4
  %cmp25 = icmp eq i32 %14, 13
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %lor.lhs.false.23, %lor.lhs.false.20, %lor.lhs.false.17, %if.then.14
  %15 = load %struct._object*, %struct._object** @PyExc_NotImplementedError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.29

if.else.27:                                       ; preds = %lor.lhs.false.23
  %16 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call28 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %16)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.26
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.else
  %17 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4
  %cmp31 = icmp sge i32 %17, 0
  br i1 %cmp31, label %if.then.32, label %if.else.34

if.then.32:                                       ; preds = %if.end.30
  %18 = load i32, i32* %fd, align 4
  %call33 = call i32 @close(i32 %18)
  %19 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4
  store i32 %19, i32* %fd, align 4
  br label %if.end.44

if.else.34:                                       ; preds = %if.end.30
  %20 = load i32, i32* %fd, align 4
  %call35 = call i32 @fstat64(i32 %20, %struct.stat* %st) #6
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.40

if.then.37:                                       ; preds = %if.else.34
  %21 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call38 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %21)
  %22 = load i32, i32* %fd, align 4
  %call39 = call i32 @close(i32 %22)
  store i32 -1, i32* %retval
  br label %return

if.else.40:                                       ; preds = %if.else.34
  %23 = load i32, i32* %fd, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4
  %st_dev41 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 0
  %24 = load i64, i64* %st_dev41, align 8
  store i64 %24, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 1), align 8
  %st_ino42 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 1
  %25 = load i64, i64* %st_ino42, align 8
  store i64 %25, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 2), align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.32
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.10
  %call47 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call47, %struct._ts** %_save46, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond.56, %if.end.45
  br label %do.body.48

do.body.48:                                       ; preds = %land.end, %do.body
  %26 = load i32, i32* %fd, align 4
  %27 = load i8*, i8** %buffer.addr, align 8
  %28 = load i64, i64* %size.addr, align 8
  %call49 = call i64 @read(i32 %26, i8* %27, i64 %28)
  store i64 %call49, i64* %n, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.48
  %29 = load i64, i64* %n, align 8
  %cmp50 = icmp slt i64 %29, 0
  br i1 %cmp50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call51 = call i32* @__errno_location() #7
  %30 = load i32, i32* %call51, align 4
  %cmp52 = icmp eq i32 %30, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %31 = phi i1 [ false, %do.cond ], [ %cmp52, %land.rhs ]
  br i1 %31, label %do.body.48, label %do.end

do.end:                                           ; preds = %land.end
  %32 = load i64, i64* %n, align 8
  %cmp53 = icmp sle i64 %32, 0
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %do.end
  br label %do.end.58

if.end.55:                                        ; preds = %do.end
  %33 = load i64, i64* %n, align 8
  %34 = load i8*, i8** %buffer.addr, align 8
  %add.ptr = getelementptr i8, i8* %34, i64 %33
  store i8* %add.ptr, i8** %buffer.addr, align 8
  %35 = load i64, i64* %n, align 8
  %36 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %36, %35
  store i64 %sub, i64* %size.addr, align 8
  br label %do.cond.56

do.cond.56:                                       ; preds = %if.end.55
  %37 = load i64, i64* %size.addr, align 8
  %cmp57 = icmp slt i64 0, %37
  br i1 %cmp57, label %do.body, label %do.end.58

do.end.58:                                        ; preds = %do.cond.56, %if.then.54
  %38 = load %struct._ts*, %struct._ts** %_save46, align 8
  call void @PyEval_RestoreThread(%struct._ts* %38)
  %39 = load i64, i64* %n, align 8
  %cmp59 = icmp sle i64 %39, 0
  br i1 %cmp59, label %if.then.60, label %if.end.67

if.then.60:                                       ; preds = %do.end.58
  %40 = load i64, i64* %n, align 8
  %cmp61 = icmp slt i64 %40, 0
  br i1 %cmp61, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %if.then.60
  %41 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call63 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %41)
  br label %if.end.66

if.else.64:                                       ; preds = %if.then.60
  %42 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %43 = load i64, i64* %size.addr, align 8
  %call65 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i64 %43)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.62
  store i32 -1, i32* %retval
  br label %return

if.end.67:                                        ; preds = %do.end.58
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.end.66, %if.then.37, %if.end.29, %if.then
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define void @_PyRandom_Init() #0 {
entry:
  %env = alloca i8*, align 8
  %secret = alloca i8*, align 8
  %secret_size = alloca i64, align 8
  %endptr = alloca i8*, align 8
  %seed = alloca i64, align 8
  store i8* getelementptr inbounds (%union._Py_HashSecret_t, %union._Py_HashSecret_t* @_Py_HashSecret, i32 0, i32 0, i32 0, i32 0), i8** %secret, align 8
  store i64 24, i64* %secret_size, align 8
  %0 = load i32, i32* @_Py_HashSecret_Initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.30

if.end:                                           ; preds = %entry
  store i32 1, i32* @_Py_HashSecret_Initialized, align 4
  %1 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %env, align 8
  %2 = load i8*, i8** %env, align 8
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.29

land.lhs.true:                                    ; preds = %cond.end
  %3 = load i8*, i8** %env, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true.4, label %if.else.29

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %5 = load i8*, i8** %env, align 8
  %call5 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #8
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.else.29

if.then.8:                                        ; preds = %land.lhs.true.4
  %6 = load i8*, i8** %env, align 8
  store i8* %6, i8** %endptr, align 8
  %7 = load i8*, i8** %env, align 8
  %call9 = call i64 @strtoul(i8* %7, i8** %endptr, i32 10) #6
  store i64 %call9, i64* %seed, align 8
  %8 = load i8*, i8** %endptr, align 8
  %9 = load i8, i8* %8, align 1
  %conv10 = sext i8 %9 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %10 = load i64, i64* %seed, align 8
  %cmp13 = icmp ugt i64 %10, 4294967295
  br i1 %cmp13, label %if.then.22, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %call16 = call i32* @__errno_location() #7
  %11 = load i32, i32* %call16, align 4
  %cmp17 = icmp eq i32 %11, 34
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.23

land.lhs.true.19:                                 ; preds = %lor.lhs.false.15
  %12 = load i64, i64* %seed, align 8
  %cmp20 = icmp eq i64 %12, -1
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true.19, %lor.lhs.false, %if.then.8
  call void @Py_FatalError(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i32 0, i32 0)) #9
  unreachable

if.end.23:                                        ; preds = %land.lhs.true.19, %lor.lhs.false.15
  %13 = load i64, i64* %seed, align 8
  %cmp24 = icmp eq i64 %13, 0
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.23
  %14 = load i8*, i8** %secret, align 8
  %15 = load i64, i64* %secret_size, align 8
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 %15, i32 1, i1 false)
  br label %if.end.28

if.else:                                          ; preds = %if.end.23
  %16 = load i64, i64* %seed, align 8
  %conv27 = trunc i64 %16 to i32
  %17 = load i8*, i8** %secret, align 8
  %18 = load i64, i64* %secret_size, align 8
  call void @lcg_urandom(i32 %conv27, i8* %17, i64 %18)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.26
  br label %if.end.30

if.else.29:                                       ; preds = %land.lhs.true.4, %land.lhs.true, %cond.end
  %19 = load i8*, i8** %secret, align 8
  %20 = load i64, i64* %secret_size, align 8
  call void @dev_urandom_noraise(i8* %19, i64 %20)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then, %if.else.29, %if.end.28
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal void @lcg_urandom(i32 %x0, i8* %buffer, i64 %size) #0 {
entry:
  %x0.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %index = alloca i64, align 8
  %x = alloca i32, align 4
  store i32 %x0, i32* %x0.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i32, i32* %x0.addr, align 4
  store i32 %0, i32* %x, align 4
  store i64 0, i64* %index, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %index, align 8
  %2 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x, align 4
  %mul = mul i32 %3, 214013
  store i32 %mul, i32* %x, align 4
  %4 = load i32, i32* %x, align 4
  %add = add i32 %4, 2531011
  store i32 %add, i32* %x, align 4
  %5 = load i32, i32* %x, align 4
  %shr = lshr i32 %5, 16
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %6 = load i64, i64* %index, align 8
  %7 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr i8, i8* %7, i64 %6
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %index, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %index, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dev_urandom_noraise(i8* %buffer, i64 %size) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %fd = alloca i32, align 4
  %n = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %call = call i32 @_Py_open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 0)
  store i32 %call, i32* %fd, align 4
  %0 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %if.end
  %1 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp slt i64 0, %1
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %land.end, %while.body
  %2 = load i32, i32* %fd, align 4
  %3 = load i8*, i8** %buffer.addr, align 8
  %4 = load i64, i64* %size.addr, align 8
  %call2 = call i64 @read(i32 %2, i8* %3, i64 %4)
  store i64 %call2, i64* %n, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i64, i64* %n, align 8
  %cmp3 = icmp slt i64 %5, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call4 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call4, align 4
  %cmp5 = icmp eq i32 %6, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %7 = phi i1 [ false, %do.cond ], [ %cmp5, %land.rhs ]
  br i1 %7, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %8 = load i64, i64* %n, align 8
  %cmp6 = icmp sle i64 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end
  call void @Py_FatalError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0)) #9
  unreachable

if.end.8:                                         ; preds = %do.end
  %9 = load i64, i64* %n, align 8
  %10 = load i8*, i8** %buffer.addr, align 8
  %add.ptr = getelementptr i8, i8* %10, i64 %9
  store i8* %add.ptr, i8** %buffer.addr, align 8
  %11 = load i64, i64* %n, align 8
  %12 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %12, %11
  store i64 %sub, i64* %size.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* %fd, align 4
  %call9 = call i32 @close(i32 %13)
  ret void
}

; Function Attrs: nounwind uwtable
define void @_PyRandom_Fini() #0 {
entry:
  call void @dev_urandom_close()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dev_urandom_close() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4
  %call = call i32 @close(i32 %1)
  store i32 -1, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @urandom_cache, i32 0, i32 0), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @fstat64(i32, %struct.stat*) #2

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @_Py_open(i8*, i32) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

declare i32 @close(i32) #1

declare i64 @read(i32, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
