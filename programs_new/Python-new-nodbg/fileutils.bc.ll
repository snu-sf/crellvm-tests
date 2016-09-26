; ModuleID = './fileutils.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque

@_Py_open_cloexec_works = global i32 -1, align 4
@_Py_NoneStruct = external global %struct._object, align 8
@force_ascii = internal global i32 -1, align 4
@PyExc_OSError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"646\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ansi-x3.4-1968\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ansi-x3-4-1968\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ansi-x3.4-1986\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"cp367\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"csascii\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ibm367\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"iso646-us\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"iso-646.irv-1991\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"iso-ir-6\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"us-ascii\00", align 1
@check_force_ascii.ascii_aliases = private unnamed_addr constant [14 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* null], align 16
@.str.13 = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_device_encoding(i32 %fd) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fd.addr = alloca i32, align 4
  %codeset = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @isatty(i32 %0) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @nl_langinfo(i32 14) #4
  store i8* %call1, i8** %codeset, align 8
  %2 = load i8*, i8** %codeset, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8*, i8** %codeset, align 8
  %arrayidx = getelementptr i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %land.lhs.true
  %5 = load i8*, i8** %codeset, align 8
  %call5 = call %struct._object* @PyUnicode_FromString(i8* %5)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc7 = add i64 %6, 1
  store i64 %inc7, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind
declare i32 @isatty(i32) #1

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #1

declare %struct._object* @PyUnicode_FromString(i8*) #2

; Function Attrs: nounwind uwtable
define i32* @_Py_char2wchar(i8* %arg, i64* %size) #0 {
entry:
  %retval = alloca i32*, align 8
  %arg.addr = alloca i8*, align 8
  %size.addr = alloca i64*, align 8
  %res = alloca i32*, align 8
  %argsize = alloca i64, align 8
  %count = alloca i64, align 8
  %in = alloca i8*, align 8
  %out = alloca i32*, align 8
  %mbs = alloca %struct.__mbstate_t, align 4
  %tmp = alloca i32*, align 8
  %converted = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  %0 = load i32, i32* @force_ascii, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @check_force_ascii()
  store i32 %call, i32* @force_ascii, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @force_ascii, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %2 = load i8*, i8** %arg.addr, align 8
  %3 = load i64*, i64** %size.addr, align 8
  %call2 = call i32* @decode_ascii_surrogateescape(i8* %2, i64* %3)
  store i32* %call2, i32** %res, align 8
  %4 = load i32*, i32** %res, align 8
  %cmp3 = icmp eq i32* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  br label %oom

if.end.5:                                         ; preds = %if.then.1
  %5 = load i32*, i32** %res, align 8
  store i32* %5, i32** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %6 = load i8*, i8** %arg.addr, align 8
  %call7 = call i64 @mbstowcs(i32* null, i8* %6, i64 0) #4
  store i64 %call7, i64* %argsize, align 8
  %7 = load i64, i64* %argsize, align 8
  %cmp8 = icmp ne i64 %7, -1
  br i1 %cmp8, label %if.then.9, label %if.end.30

if.then.9:                                        ; preds = %if.end.6
  %8 = load i64, i64* %argsize, align 8
  %add = add i64 %8, 1
  %mul = mul i64 %add, 4
  %call10 = call i8* @PyMem_RawMalloc(i64 %mul)
  %9 = bitcast i8* %call10 to i32*
  store i32* %9, i32** %res, align 8
  %10 = load i32*, i32** %res, align 8
  %tobool11 = icmp ne i32* %10, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.9
  br label %oom

if.end.13:                                        ; preds = %if.then.9
  %11 = load i32*, i32** %res, align 8
  %12 = load i8*, i8** %arg.addr, align 8
  %13 = load i64, i64* %argsize, align 8
  %add14 = add i64 %13, 1
  %call15 = call i64 @mbstowcs(i32* %11, i8* %12, i64 %add14) #4
  store i64 %call15, i64* %count, align 8
  %14 = load i64, i64* %count, align 8
  %cmp16 = icmp ne i64 %14, -1
  br i1 %cmp16, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %if.end.13
  %15 = load i32*, i32** %res, align 8
  store i32* %15, i32** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %16 = load i32*, i32** %tmp, align 8
  %17 = load i32, i32* %16, align 4
  %cmp18 = icmp ne i32 %17, 0
  br i1 %cmp18, label %land.rhs, label %land.end.22

land.rhs:                                         ; preds = %for.cond
  %18 = load i32*, i32** %tmp, align 8
  %19 = load i32, i32* %18, align 4
  %cmp19 = icmp sle i32 55296, %19
  br i1 %cmp19, label %land.rhs.20, label %land.end

land.rhs.20:                                      ; preds = %land.rhs
  %20 = load i32*, i32** %tmp, align 8
  %21 = load i32, i32* %20, align 4
  %cmp21 = icmp sle i32 %21, 57343
  br label %land.end

land.end:                                         ; preds = %land.rhs.20, %land.rhs
  %22 = phi i1 [ false, %land.rhs ], [ %cmp21, %land.rhs.20 ]
  %lnot = xor i1 %22, true
  br label %land.end.22

land.end.22:                                      ; preds = %land.end, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %lnot, %land.end ]
  br i1 %23, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32*, i32** %tmp, align 8
  %incdec.ptr = getelementptr i32, i32* %24, i32 1
  store i32* %incdec.ptr, i32** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end.22
  %25 = load i32*, i32** %tmp, align 8
  %26 = load i32, i32* %25, align 4
  %cmp23 = icmp eq i32 %26, 0
  br i1 %cmp23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %for.end
  %27 = load i64*, i64** %size.addr, align 8
  %cmp25 = icmp ne i64* %27, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.24
  %28 = load i64, i64* %count, align 8
  %29 = load i64*, i64** %size.addr, align 8
  store i64 %28, i64* %29, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.24
  %30 = load i32*, i32** %res, align 8
  store i32* %30, i32** %retval
  br label %return

if.end.28:                                        ; preds = %for.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.13
  %31 = load i32*, i32** %res, align 8
  %32 = bitcast i32* %31 to i8*
  call void @PyMem_RawFree(i8* %32)
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.6
  %33 = load i8*, i8** %arg.addr, align 8
  %call31 = call i64 @strlen(i8* %33) #6
  %add32 = add i64 %call31, 1
  store i64 %add32, i64* %argsize, align 8
  %34 = load i64, i64* %argsize, align 8
  %mul33 = mul i64 %34, 4
  %call34 = call i8* @PyMem_RawMalloc(i64 %mul33)
  %35 = bitcast i8* %call34 to i32*
  store i32* %35, i32** %res, align 8
  %36 = load i32*, i32** %res, align 8
  %tobool35 = icmp ne i32* %36, null
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.end.30
  br label %oom

if.end.37:                                        ; preds = %if.end.30
  %37 = load i8*, i8** %arg.addr, align 8
  store i8* %37, i8** %in, align 8
  %38 = load i32*, i32** %res, align 8
  store i32* %38, i32** %out, align 8
  %39 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 8, i32 4, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end.69, %while.end, %if.then.51, %if.end.37
  %40 = load i64, i64* %argsize, align 8
  %tobool38 = icmp ne i64 %40, 0
  br i1 %tobool38, label %while.body, label %while.end.72

while.body:                                       ; preds = %while.cond
  %41 = load i32*, i32** %out, align 8
  %42 = load i8*, i8** %in, align 8
  %43 = load i64, i64* %argsize, align 8
  %call40 = call i64 @mbrtowc(i32* %41, i8* %42, i64 %43, %struct.__mbstate_t* %mbs) #4
  store i64 %call40, i64* %converted, align 8
  %44 = load i64, i64* %converted, align 8
  %cmp41 = icmp eq i64 %44, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %while.body
  br label %while.end.72

if.end.43:                                        ; preds = %while.body
  %45 = load i64, i64* %converted, align 8
  %cmp44 = icmp eq i64 %45, -2
  br i1 %cmp44, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %if.end.43
  %46 = load i32*, i32** %res, align 8
  %47 = bitcast i32* %46 to i8*
  call void @PyMem_RawFree(i8* %47)
  %48 = load i64*, i64** %size.addr, align 8
  %cmp46 = icmp ne i64* %48, null
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.45
  %49 = load i64*, i64** %size.addr, align 8
  store i64 -2, i64* %49, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.then.45
  store i32* null, i32** %retval
  br label %return

if.end.49:                                        ; preds = %if.end.43
  %50 = load i64, i64* %converted, align 8
  %cmp50 = icmp eq i64 %50, -1
  br i1 %cmp50, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %if.end.49
  %51 = load i8*, i8** %in, align 8
  %incdec.ptr52 = getelementptr i8, i8* %51, i32 1
  store i8* %incdec.ptr52, i8** %in, align 8
  %52 = load i8, i8* %51, align 1
  %conv = zext i8 %52 to i32
  %add53 = add i32 56320, %conv
  %53 = load i32*, i32** %out, align 8
  %incdec.ptr54 = getelementptr i32, i32* %53, i32 1
  store i32* %incdec.ptr54, i32** %out, align 8
  store i32 %add53, i32* %53, align 4
  %54 = load i64, i64* %argsize, align 8
  %dec = add i64 %54, -1
  store i64 %dec, i64* %argsize, align 8
  %55 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i64(i8* %55, i8 0, i64 8, i32 4, i1 false)
  br label %while.cond

if.end.55:                                        ; preds = %if.end.49
  %56 = load i32*, i32** %out, align 8
  %57 = load i32, i32* %56, align 4
  %cmp56 = icmp sle i32 55296, %57
  br i1 %cmp56, label %land.lhs.true, label %if.end.69

land.lhs.true:                                    ; preds = %if.end.55
  %58 = load i32*, i32** %out, align 8
  %59 = load i32, i32* %58, align 4
  %cmp58 = icmp sle i32 %59, 57343
  br i1 %cmp58, label %if.then.60, label %if.end.69

if.then.60:                                       ; preds = %land.lhs.true
  %60 = load i64, i64* %converted, align 8
  %61 = load i64, i64* %argsize, align 8
  %sub = sub i64 %61, %60
  store i64 %sub, i64* %argsize, align 8
  br label %while.cond.61

while.cond.61:                                    ; preds = %while.body.64, %if.then.60
  %62 = load i64, i64* %converted, align 8
  %dec62 = add i64 %62, -1
  store i64 %dec62, i64* %converted, align 8
  %tobool63 = icmp ne i64 %62, 0
  br i1 %tobool63, label %while.body.64, label %while.end

while.body.64:                                    ; preds = %while.cond.61
  %63 = load i8*, i8** %in, align 8
  %incdec.ptr65 = getelementptr i8, i8* %63, i32 1
  store i8* %incdec.ptr65, i8** %in, align 8
  %64 = load i8, i8* %63, align 1
  %conv66 = zext i8 %64 to i32
  %add67 = add i32 56320, %conv66
  %65 = load i32*, i32** %out, align 8
  %incdec.ptr68 = getelementptr i32, i32* %65, i32 1
  store i32* %incdec.ptr68, i32** %out, align 8
  store i32 %add67, i32* %65, align 4
  br label %while.cond.61

while.end:                                        ; preds = %while.cond.61
  br label %while.cond

if.end.69:                                        ; preds = %land.lhs.true, %if.end.55
  %66 = load i64, i64* %converted, align 8
  %67 = load i8*, i8** %in, align 8
  %add.ptr = getelementptr i8, i8* %67, i64 %66
  store i8* %add.ptr, i8** %in, align 8
  %68 = load i64, i64* %converted, align 8
  %69 = load i64, i64* %argsize, align 8
  %sub70 = sub i64 %69, %68
  store i64 %sub70, i64* %argsize, align 8
  %70 = load i32*, i32** %out, align 8
  %incdec.ptr71 = getelementptr i32, i32* %70, i32 1
  store i32* %incdec.ptr71, i32** %out, align 8
  br label %while.cond

while.end.72:                                     ; preds = %if.then.42, %while.cond
  %71 = load i64*, i64** %size.addr, align 8
  %cmp73 = icmp ne i64* %71, null
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %while.end.72
  %72 = load i32*, i32** %out, align 8
  %73 = load i32*, i32** %res, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %72 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %73 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %74 = load i64*, i64** %size.addr, align 8
  store i64 %sub.ptr.div, i64* %74, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %while.end.72
  %75 = load i32*, i32** %res, align 8
  store i32* %75, i32** %retval
  br label %return

oom:                                              ; preds = %if.then.36, %if.then.12, %if.then.4
  %76 = load i64*, i64** %size.addr, align 8
  %cmp77 = icmp ne i64* %76, null
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %oom
  %77 = load i64*, i64** %size.addr, align 8
  store i64 -1, i64* %77, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %oom
  store i32* null, i32** %retval
  br label %return

return:                                           ; preds = %if.end.80, %if.end.76, %if.end.48, %if.end.27, %if.end.5
  %78 = load i32*, i32** %retval
  ret i32* %78
}

; Function Attrs: nounwind uwtable
define internal i32 @check_force_ascii() #0 {
entry:
  %retval = alloca i32, align 4
  %loc = alloca i8*, align 8
  %codeset = alloca i8*, align 8
  %alias = alloca i8**, align 8
  %encoding = alloca [100 x i8], align 16
  %is_ascii = alloca i32, align 4
  %i = alloca i32, align 4
  %ascii_aliases = alloca [14 x i8*], align 16
  %ch = alloca i8, align 1
  %wch = alloca i32, align 4
  %res = alloca i64, align 8
  %0 = bitcast [14 x i8*]* %ascii_aliases to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([14 x i8*]* @check_force_ascii.ascii_aliases to i8*), i64 112, i32 16, i1 false)
  %call = call i8* @setlocale(i32 0, i8* null) #4
  store i8* %call, i8** %loc, align 8
  %1 = load i8*, i8** %loc, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %loc, align 8
  %call1 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #6
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call i8* @nl_langinfo(i32 14) #4
  store i8* %call5, i8** %codeset, align 8
  %3 = load i8*, i8** %codeset, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.8

lor.lhs.false:                                    ; preds = %if.end.4
  %4 = load i8*, i8** %codeset, align 8
  %arrayidx = getelementptr i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.4
  br label %error

if.end.9:                                         ; preds = %lor.lhs.false
  %6 = load i8*, i8** %codeset, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %encoding, i32 0, i32 0
  %call10 = call i32 @_Py_normalize_encoding(i8* %6, i8* %arraydecay, i64 100)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  br label %error

if.end.13:                                        ; preds = %if.end.9
  store i32 0, i32* %is_ascii, align 4
  %arraydecay14 = getelementptr inbounds [14 x i8*], [14 x i8*]* %ascii_aliases, i32 0, i32 0
  store i8** %arraydecay14, i8*** %alias, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %7 = load i8**, i8*** %alias, align 8
  %8 = load i8*, i8** %7, align 8
  %cmp15 = icmp ne i8* %8, null
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay17 = getelementptr inbounds [100 x i8], [100 x i8]* %encoding, i32 0, i32 0
  %9 = load i8**, i8*** %alias, align 8
  %10 = load i8*, i8** %9, align 8
  %call18 = call i32 @strcmp(i8* %arraydecay17, i8* %10) #6
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body
  store i32 1, i32* %is_ascii, align 4
  br label %for.end

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %11 = load i8**, i8*** %alias, align 8
  %incdec.ptr = getelementptr i8*, i8** %11, i32 1
  store i8** %incdec.ptr, i8*** %alias, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.21, %for.cond
  %12 = load i32, i32* %is_ascii, align 4
  %tobool23 = icmp ne i32 %12, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %for.end
  store i32 128, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.36, %if.end.25
  %13 = load i32, i32* %i, align 4
  %cmp27 = icmp ult i32 %13, 255
  br i1 %cmp27, label %for.body.29, label %for.end.37

for.body.29:                                      ; preds = %for.cond.26
  %14 = load i32, i32* %i, align 4
  %conv30 = trunc i32 %14 to i8
  store i8 %conv30, i8* %ch, align 1
  %call31 = call i64 @mbstowcs(i32* %wch, i8* %ch, i64 1) #4
  store i64 %call31, i64* %res, align 8
  %15 = load i64, i64* %res, align 8
  %cmp32 = icmp ne i64 %15, -1
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body.29
  store i32 1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %for.body.29
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.26

for.end.37:                                       ; preds = %for.cond.26
  store i32 0, i32* %retval
  br label %return

error:                                            ; preds = %if.then.12, %if.then.8, %if.then
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %error, %for.end.37, %if.then.34, %if.then.24, %if.then.3
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32* @decode_ascii_surrogateescape(i8* %arg, i64* %size) #0 {
entry:
  %retval = alloca i32*, align 8
  %arg.addr = alloca i8*, align 8
  %size.addr = alloca i64*, align 8
  %res = alloca i32*, align 8
  %in = alloca i8*, align 8
  %out = alloca i32*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %add = add i64 %call, 1
  %mul = mul i64 %add, 4
  %call1 = call i8* @PyMem_RawMalloc(i64 %mul)
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %res, align 8
  %2 = load i32*, i32** %res, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %arg.addr, align 8
  store i8* %3, i8** %in, align 8
  %4 = load i32*, i32** %res, align 8
  store i32* %4, i32** %out, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.end
  %5 = load i8*, i8** %in, align 8
  %6 = load i8, i8* %5, align 1
  %tobool2 = icmp ne i8 %6, 0
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %in, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  %cmp = icmp slt i32 %conv, 128
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %while.body
  %9 = load i8*, i8** %in, align 8
  %incdec.ptr = getelementptr i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %in, align 8
  %10 = load i8, i8* %9, align 1
  %conv5 = zext i8 %10 to i32
  %11 = load i32*, i32** %out, align 8
  %incdec.ptr6 = getelementptr i32, i32* %11, i32 1
  store i32* %incdec.ptr6, i32** %out, align 8
  store i32 %conv5, i32* %11, align 4
  br label %if.end.11

if.else:                                          ; preds = %while.body
  %12 = load i8*, i8** %in, align 8
  %incdec.ptr7 = getelementptr i8, i8* %12, i32 1
  store i8* %incdec.ptr7, i8** %in, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = zext i8 %13 to i32
  %add9 = add i32 56320, %conv8
  %14 = load i32*, i32** %out, align 8
  %incdec.ptr10 = getelementptr i32, i32* %14, i32 1
  store i32* %incdec.ptr10, i32** %out, align 8
  store i32 %add9, i32* %14, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32*, i32** %out, align 8
  store i32 0, i32* %15, align 4
  %16 = load i64*, i64** %size.addr, align 8
  %cmp12 = icmp ne i64* %16, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %while.end
  %17 = load i32*, i32** %out, align 8
  %18 = load i32*, i32** %res, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %19 = load i64*, i64** %size.addr, align 8
  store i64 %sub.ptr.div, i64* %19, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %while.end
  %20 = load i32*, i32** %res, align 8
  store i32* %20, i32** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  %21 = load i32*, i32** %retval
  ret i32* %21
}

; Function Attrs: nounwind
declare i64 @mbstowcs(i32*, i8*, i64) #1

declare i8* @PyMem_RawMalloc(i64) #2

declare void @PyMem_RawFree(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #1

; Function Attrs: nounwind uwtable
define i8* @_Py_wchar2char(i32* %text, i64* %error_pos) #0 {
entry:
  %retval = alloca i8*, align 8
  %text.addr = alloca i32*, align 8
  %error_pos.addr = alloca i64*, align 8
  %len = alloca i64, align 8
  %result = alloca i8*, align 8
  %bytes = alloca i8*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %converted = alloca i64, align 8
  %c = alloca i32, align 4
  %buf = alloca [2 x i32], align 4
  store i32* %text, i32** %text.addr, align 8
  store i64* %error_pos, i64** %error_pos.addr, align 8
  %0 = load i32*, i32** %text.addr, align 8
  %call = call i64 @wcslen(i32* %0) #6
  store i64 %call, i64* %len, align 8
  store i8* null, i8** %result, align 8
  store i8* null, i8** %bytes, align 8
  %1 = load i32, i32* @force_ascii, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @check_force_ascii()
  store i32 %call1, i32* @force_ascii, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @force_ascii, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load i32*, i32** %text.addr, align 8
  %4 = load i64*, i64** %error_pos.addr, align 8
  %call3 = call i8* @encode_ascii_surrogateescape(i32* %3, i64* %4)
  store i8* %call3, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i64 0, i64* %size, align 8
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %buf, i32 0, i64 1
  store i32 0, i32* %arrayidx, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.4, %if.end.56
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %len, align 8
  %cmp5 = icmp ult i64 %5, %6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %8 = load i32*, i32** %text.addr, align 8
  %arrayidx6 = getelementptr i32, i32* %8, i64 %7
  %9 = load i32, i32* %arrayidx6, align 4
  store i32 %9, i32* %c, align 4
  %10 = load i32, i32* %c, align 4
  %cmp7 = icmp sge i32 %10, 56448
  br i1 %cmp7, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, i32* %c, align 4
  %cmp8 = icmp sle i32 %11, 56575
  br i1 %cmp8, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %bytes, align 8
  %cmp10 = icmp ne i8* %12, null
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.9
  %13 = load i32, i32* %c, align 4
  %sub = sub i32 %13, 56320
  %conv = trunc i32 %sub to i8
  %14 = load i8*, i8** %bytes, align 8
  %incdec.ptr = getelementptr i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %bytes, align 8
  store i8 %conv, i8* %14, align 1
  %15 = load i64, i64* %size, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %size, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.then.9
  %16 = load i64, i64* %size, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %size, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %for.inc

if.else.13:                                       ; preds = %land.lhs.true, %for.body
  %17 = load i32, i32* %c, align 4
  %arrayidx14 = getelementptr [2 x i32], [2 x i32]* %buf, i32 0, i64 0
  store i32 %17, i32* %arrayidx14, align 4
  %18 = load i8*, i8** %bytes, align 8
  %cmp15 = icmp ne i8* %18, null
  br i1 %cmp15, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.else.13
  %19 = load i8*, i8** %bytes, align 8
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %buf, i32 0, i32 0
  %20 = load i64, i64* %size, align 8
  %call18 = call i64 @wcstombs(i8* %19, i32* %arraydecay, i64 %20) #4
  store i64 %call18, i64* %converted, align 8
  br label %if.end.22

if.else.19:                                       ; preds = %if.else.13
  %arraydecay20 = getelementptr inbounds [2 x i32], [2 x i32]* %buf, i32 0, i32 0
  %call21 = call i64 @wcstombs(i8* null, i32* %arraydecay20, i64 0) #4
  store i64 %call21, i64* %converted, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.17
  %21 = load i64, i64* %converted, align 8
  %cmp23 = icmp eq i64 %21, -1
  br i1 %cmp23, label %if.then.25, label %if.end.34

if.then.25:                                       ; preds = %if.end.22
  %22 = load i8*, i8** %result, align 8
  %cmp26 = icmp ne i8* %22, null
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.25
  %23 = load i8*, i8** %result, align 8
  call void @PyMem_Free(i8* %23)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.25
  %24 = load i64*, i64** %error_pos.addr, align 8
  %cmp30 = icmp ne i64* %24, null
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  %25 = load i64, i64* %i, align 8
  %26 = load i64*, i64** %error_pos.addr, align 8
  store i64 %25, i64* %26, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.29
  store i8* null, i8** %retval
  br label %return

if.end.34:                                        ; preds = %if.end.22
  %27 = load i8*, i8** %bytes, align 8
  %cmp35 = icmp ne i8* %27, null
  br i1 %cmp35, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.end.34
  %28 = load i64, i64* %converted, align 8
  %29 = load i8*, i8** %bytes, align 8
  %add.ptr = getelementptr i8, i8* %29, i64 %28
  store i8* %add.ptr, i8** %bytes, align 8
  %30 = load i64, i64* %converted, align 8
  %31 = load i64, i64* %size, align 8
  %sub38 = sub i64 %31, %30
  store i64 %sub38, i64* %size, align 8
  br label %if.end.40

if.else.39:                                       ; preds = %if.end.34
  %32 = load i64, i64* %converted, align 8
  %33 = load i64, i64* %size, align 8
  %add = add i64 %33, %32
  store i64 %add, i64* %size, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40
  br label %for.inc

for.inc:                                          ; preds = %if.end.41, %if.end.12
  %34 = load i64, i64* %i, align 8
  %inc42 = add i64 %34, 1
  store i64 %inc42, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i8*, i8** %result, align 8
  %cmp43 = icmp ne i8* %35, null
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.end
  %36 = load i8*, i8** %bytes, align 8
  store i8 0, i8* %36, align 1
  br label %while.end

if.end.46:                                        ; preds = %for.end
  %37 = load i64, i64* %size, align 8
  %add47 = add i64 %37, 1
  store i64 %add47, i64* %size, align 8
  %38 = load i64, i64* %size, align 8
  %call48 = call i8* @PyMem_Malloc(i64 %38)
  store i8* %call48, i8** %result, align 8
  %39 = load i8*, i8** %result, align 8
  %cmp49 = icmp eq i8* %39, null
  br i1 %cmp49, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %if.end.46
  %40 = load i64*, i64** %error_pos.addr, align 8
  %cmp52 = icmp ne i64* %40, null
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.51
  %41 = load i64*, i64** %error_pos.addr, align 8
  store i64 -1, i64* %41, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.51
  store i8* null, i8** %retval
  br label %return

if.end.56:                                        ; preds = %if.end.46
  %42 = load i8*, i8** %result, align 8
  store i8* %42, i8** %bytes, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.45
  %43 = load i8*, i8** %result, align 8
  store i8* %43, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.end.55, %if.end.33, %if.then.2
  %44 = load i8*, i8** %retval
  ret i8* %44
}

; Function Attrs: nounwind readonly
declare i64 @wcslen(i32*) #3

; Function Attrs: nounwind uwtable
define internal i8* @encode_ascii_surrogateescape(i32* %text, i64* %error_pos) #0 {
entry:
  %retval = alloca i8*, align 8
  %text.addr = alloca i32*, align 8
  %error_pos.addr = alloca i64*, align 8
  %result = alloca i8*, align 8
  %out = alloca i8*, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %ch = alloca i32, align 4
  store i32* %text, i32** %text.addr, align 8
  store i64* %error_pos, i64** %error_pos.addr, align 8
  store i8* null, i8** %result, align 8
  %0 = load i64*, i64** %error_pos.addr, align 8
  %cmp = icmp ne i64* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** %error_pos.addr, align 8
  store i64 -1, i64* %1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32*, i32** %text.addr, align 8
  %call = call i64 @wcslen(i32* %2) #6
  store i64 %call, i64* %len, align 8
  %3 = load i64, i64* %len, align 8
  %add = add i64 %3, 1
  %call1 = call i8* @PyMem_Malloc(i64 %add)
  store i8* %call1, i8** %result, align 8
  %4 = load i8*, i8** %result, align 8
  %cmp2 = icmp eq i8* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load i8*, i8** %result, align 8
  store i8* %5, i8** %out, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %len, align 8
  %cmp5 = icmp ult i64 %6, %7
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %9 = load i32*, i32** %text.addr, align 8
  %arrayidx = getelementptr i32, i32* %9, i64 %8
  %10 = load i32, i32* %arrayidx, align 4
  store i32 %10, i32* %ch, align 4
  %11 = load i32, i32* %ch, align 4
  %cmp6 = icmp sle i32 %11, 127
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.body
  %12 = load i32, i32* %ch, align 4
  %conv = trunc i32 %12 to i8
  %13 = load i8*, i8** %out, align 8
  %incdec.ptr = getelementptr i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %out, align 8
  store i8 %conv, i8* %13, align 1
  br label %if.end.21

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* %ch, align 4
  %cmp8 = icmp sle i32 56448, %14
  br i1 %cmp8, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %if.else
  %15 = load i32, i32* %ch, align 4
  %cmp10 = icmp sle i32 %15, 56575
  br i1 %cmp10, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %land.lhs.true
  %16 = load i32, i32* %ch, align 4
  %sub = sub i32 %16, 56320
  %conv13 = trunc i32 %sub to i8
  %17 = load i8*, i8** %out, align 8
  %incdec.ptr14 = getelementptr i8, i8* %17, i32 1
  store i8* %incdec.ptr14, i8** %out, align 8
  store i8 %conv13, i8* %17, align 1
  br label %if.end.20

if.else.15:                                       ; preds = %land.lhs.true, %if.else
  %18 = load i64*, i64** %error_pos.addr, align 8
  %cmp16 = icmp ne i64* %18, null
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else.15
  %19 = load i64, i64* %i, align 8
  %20 = load i64*, i64** %error_pos.addr, align 8
  store i64 %19, i64* %20, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.else.15
  %21 = load i8*, i8** %result, align 8
  call void @PyMem_Free(i8* %21)
  store i8* null, i8** %retval
  br label %return

if.end.20:                                        ; preds = %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %22 = load i64, i64* %i, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i8*, i8** %out, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %result, align 8
  store i8* %24, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.19, %if.then.3
  %25 = load i8*, i8** %retval
  ret i8* %25
}

; Function Attrs: nounwind
declare i64 @wcstombs(i8*, i32*, i64) #1

declare void @PyMem_Free(i8*) #2

declare i8* @PyMem_Malloc(i64) #2

; Function Attrs: nounwind uwtable
define i32 @_Py_wstat(i32* %path, %struct.stat* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i32*, align 8
  %buf.addr = alloca %struct.stat*, align 8
  %err = alloca i32, align 4
  %fname = alloca i8*, align 8
  store i32* %path, i32** %path.addr, align 8
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 8
  %0 = load i32*, i32** %path.addr, align 8
  %call = call i8* @_Py_wchar2char(i32* %0, i64* null)
  store i8* %call, i8** %fname, align 8
  %1 = load i8*, i8** %fname, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #7
  store i32 22, i32* %call1, align 4
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %fname, align 8
  %3 = load %struct.stat*, %struct.stat** %buf.addr, align 8
  %call2 = call i32 @stat64(i8* %2, %struct.stat* %3) #4
  store i32 %call2, i32* %err, align 4
  %4 = load i8*, i8** %fname, align 8
  call void @PyMem_Free(i8* %4)
  %5 = load i32, i32* %err, align 4
  store i32 %5, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i32 @stat64(i8*, %struct.stat*) #1

; Function Attrs: nounwind uwtable
define i32 @_Py_stat(%struct._object* %path, %struct.stat* %statbuf) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca %struct._object*, align 8
  %statbuf.addr = alloca %struct.stat*, align 8
  %ret = alloca i32, align 4
  %bytes = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %path, %struct._object** %path.addr, align 8
  store %struct.stat* %statbuf, %struct.stat** %statbuf.addr, align 8
  %0 = load %struct._object*, %struct._object** %path.addr, align 8
  %call = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %0)
  store %struct._object* %call, %struct._object** %bytes, align 8
  %1 = load %struct._object*, %struct._object** %bytes, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %bytes, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %4 = load %struct.stat*, %struct.stat** %statbuf.addr, align 8
  %call1 = call i32 @stat64(i8* %arraydecay, %struct.stat* %4) #4
  store i32 %call1, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #2

; Function Attrs: nounwind uwtable
define i32 @_Py_get_inheritable(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @get_inheritable(i32 %0, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @get_inheritable(i32 %fd, i32 %raise) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %raise.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %raise, i32* %raise.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1, i32 0)
  store i32 %call, i32* %flags, align 4
  %1 = load i32, i32* %flags, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %raise.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call2 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %entry
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 1
  %tobool4 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool4, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.end
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @_Py_set_inheritable(i32 %fd, i32 %inheritable, i32* %atomic_flag_works) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %inheritable.addr = alloca i32, align 4
  %atomic_flag_works.addr = alloca i32*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %inheritable, i32* %inheritable.addr, align 4
  store i32* %atomic_flag_works, i32** %atomic_flag_works.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i32, i32* %inheritable.addr, align 4
  %2 = load i32*, i32** %atomic_flag_works.addr, align 8
  %call = call i32 @set_inheritable(i32 %0, i32 %1, i32 1, i32* %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @set_inheritable(i32 %fd, i32 %inheritable, i32 %raise, i32* %atomic_flag_works) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %inheritable.addr = alloca i32, align 4
  %raise.addr = alloca i32, align 4
  %atomic_flag_works.addr = alloca i32*, align 8
  %request = alloca i32, align 4
  %err = alloca i32, align 4
  %inheritable3 = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %inheritable, i32* %inheritable.addr, align 4
  store i32 %raise, i32* %raise.addr, align 4
  store i32* %atomic_flag_works, i32** %atomic_flag_works.addr, align 8
  %0 = load i32*, i32** %atomic_flag_works.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %inheritable.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.11, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32*, i32** %atomic_flag_works.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp1 = icmp eq i32 %3, -1
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.then
  %4 = load i32, i32* %fd.addr, align 4
  %5 = load i32, i32* %raise.addr, align 4
  %call = call i32 @get_inheritable(i32 %4, i32 %5)
  store i32 %call, i32* %inheritable3, align 4
  %6 = load i32, i32* %inheritable3, align 4
  %cmp4 = icmp eq i32 %6, -1
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  %7 = load i32, i32* %inheritable3, align 4
  %tobool6 = icmp ne i32 %7, 0
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  %8 = load i32*, i32** %atomic_flag_works.addr, align 8
  store i32 %lnot.ext, i32* %8, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %9 = load i32*, i32** %atomic_flag_works.addr, align 8
  %10 = load i32, i32* %9, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %land.lhs.true, %entry
  %11 = load i32, i32* %inheritable.addr, align 4
  %tobool12 = icmp ne i32 %11, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.11
  store i32 21584, i32* %request, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end.11
  store i32 21585, i32* %request, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  %12 = load i32, i32* %fd.addr, align 4
  %13 = load i32, i32* %request, align 4
  %conv = sext i32 %13 to i64
  %call15 = call i32 (i32, i64, ...) @ioctl(i32 %12, i64 %conv, i8* null) #4
  store i32 %call15, i32* %err, align 4
  %14 = load i32, i32* %err, align 4
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.14
  %15 = load i32, i32* %raise.addr, align 4
  %tobool18 = icmp ne i32 %15, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.17
  %16 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call20 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %16)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.17
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.end.21, %if.then.9, %if.then.5
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @_Py_open(i8* %pathname, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %atomic_flag_works = alloca i32*, align 8
  store i8* %pathname, i8** %pathname.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32* @_Py_open_cloexec_works, i32** %atomic_flag_works, align 8
  %0 = load i32, i32* %flags.addr, align 4
  %or = or i32 %0, 524288
  store i32 %or, i32* %flags.addr, align 4
  %1 = load i8*, i8** %pathname.addr, align 8
  %2 = load i32, i32* %flags.addr, align 4
  %call = call i32 (i8*, i32, ...) @open64(i8* %1, i32 %2)
  store i32 %call, i32* %fd, align 4
  %3 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %fd, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %fd, align 4
  %6 = load i32*, i32** %atomic_flag_works, align 8
  %call1 = call i32 @set_inheritable(i32 %5, i32 0, i32 0, i32* %6)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %7 = load i32, i32* %fd, align 4
  %call4 = call i32 @close(i32 %7)
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load i32, i32* %fd, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @open64(i8*, i32, ...) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @_Py_wfopen(i32* %path, i32* %mode) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %path.addr = alloca i32*, align 8
  %mode.addr = alloca i32*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %cpath = alloca i8*, align 8
  %cmode = alloca [10 x i8], align 1
  %r = alloca i64, align 8
  store i32* %path, i32** %path.addr, align 8
  store i32* %mode, i32** %mode.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %cmode, i32 0, i32 0
  %0 = load i32*, i32** %mode.addr, align 8
  %call = call i64 @wcstombs(i8* %arraydecay, i32* %0, i64 10) #4
  store i64 %call, i64* %r, align 8
  %1 = load i64, i64* %r, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %r, align 8
  %cmp1 = icmp uge i64 %2, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = call i32* @__errno_location() #7
  store i32 22, i32* %call2, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32*, i32** %path.addr, align 8
  %call3 = call i8* @_Py_wchar2char(i32* %3, i64* null)
  store i8* %call3, i8** %cpath, align 8
  %4 = load i8*, i8** %cpath, align 8
  %cmp4 = icmp eq i8* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load i8*, i8** %cpath, align 8
  %arraydecay7 = getelementptr inbounds [10 x i8], [10 x i8]* %cmode, i32 0, i32 0
  %call8 = call %struct._IO_FILE* @fopen64(i8* %5, i8* %arraydecay7)
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %f, align 8
  %6 = load i8*, i8** %cpath, align 8
  call void @PyMem_Free(i8* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp9 = icmp eq %struct._IO_FILE* %7, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call12 = call i32 @fileno(%struct._IO_FILE* %8) #4
  %call13 = call i32 @make_non_inheritable(i32 %call12)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.11
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* %9)
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.11
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  store %struct._IO_FILE* %10, %struct._IO_FILE** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.15, %if.then.10, %if.then.5, %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %11
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @make_non_inheritable(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @set_inheritable(i32 %0, i32 0, i32 0, i32* null)
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @_Py_fopen(i8* %pathname, i8* %mode) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %pathname.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store i8* %pathname, i8** %pathname.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %pathname.addr, align 8
  %1 = load i8*, i8** %mode.addr, align 8
  %call = call %struct._IO_FILE* @fopen64(i8* %0, i8* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call1 = call i32 @fileno(%struct._IO_FILE* %3) #4
  %call2 = call i32 @make_non_inheritable(i32 %call1)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %4)
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %6
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %path, i8* %mode) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %path.addr = alloca %struct._object*, align 8
  %mode.addr = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %bytes = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %path, %struct._object** %path.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load %struct._object*, %struct._object** %path.addr, align 8
  %1 = bitcast %struct._object** %bytes to i8*
  %call = call i32 @PyUnicode_FSConverter(%struct._object* %0, i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %bytes, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %4 = load i8*, i8** %mode.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen64(i8* %arraydecay, i8* %4)
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %f, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %12, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.end
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.6:                                         ; preds = %do.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call7 = call i32 @fileno(%struct._IO_FILE* %13) #4
  %call8 = call i32 @make_non_inheritable(i32 %call7)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call11 = call i32 @fclose(%struct._IO_FILE* %14)
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  store %struct._IO_FILE* %15, %struct._IO_FILE** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.10, %if.then.5, %if.then
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %16
}

declare i32 @PyUnicode_FSConverter(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @_Py_wreadlink(i32* %path, i32* %buf, i64 %bufsiz) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i32*, align 8
  %buf.addr = alloca i32*, align 8
  %bufsiz.addr = alloca i64, align 8
  %cpath = alloca i8*, align 8
  %cbuf = alloca [4096 x i8], align 16
  %wbuf = alloca i32*, align 8
  %res = alloca i32, align 4
  %r1 = alloca i64, align 8
  store i32* %path, i32** %path.addr, align 8
  store i32* %buf, i32** %buf.addr, align 8
  store i64 %bufsiz, i64* %bufsiz.addr, align 8
  %0 = load i32*, i32** %path.addr, align 8
  %call = call i8* @_Py_wchar2char(i32* %0, i64* null)
  store i8* %call, i8** %cpath, align 8
  %1 = load i8*, i8** %cpath, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #7
  store i32 22, i32* %call1, align 4
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %cpath, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cbuf, i32 0, i32 0
  %call2 = call i64 @readlink(i8* %2, i8* %arraydecay, i64 4096) #4
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %res, align 4
  %3 = load i8*, i8** %cpath, align 8
  call void @PyMem_Free(i8* %3)
  %4 = load i32, i32* %res, align 4
  %cmp3 = icmp eq i32 %4, -1
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load i32, i32* %res, align 4
  %conv7 = sext i32 %5 to i64
  %cmp8 = icmp eq i64 %conv7, 4096
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.6
  %call11 = call i32* @__errno_location() #7
  store i32 22, i32* %call11, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %6 = load i32, i32* %res, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr [4096 x i8], [4096 x i8]* %cbuf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %arraydecay13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cbuf, i32 0, i32 0
  %call14 = call i32* @_Py_char2wchar(i8* %arraydecay13, i64* %r1)
  store i32* %call14, i32** %wbuf, align 8
  %7 = load i32*, i32** %wbuf, align 8
  %cmp15 = icmp eq i32* %7, null
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.12
  %call18 = call i32* @__errno_location() #7
  store i32 22, i32* %call18, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.12
  %8 = load i64, i64* %bufsiz.addr, align 8
  %9 = load i64, i64* %r1, align 8
  %cmp20 = icmp ule i64 %8, %9
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %10 = load i32*, i32** %wbuf, align 8
  %11 = bitcast i32* %10 to i8*
  call void @PyMem_RawFree(i8* %11)
  %call23 = call i32* @__errno_location() #7
  store i32 22, i32* %call23, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.19
  %12 = load i32*, i32** %buf.addr, align 8
  %13 = load i32*, i32** %wbuf, align 8
  %14 = load i64, i64* %bufsiz.addr, align 8
  %call25 = call i32* @wcsncpy(i32* %12, i32* %13, i64 %14) #4
  %15 = load i32*, i32** %wbuf, align 8
  %16 = bitcast i32* %15 to i8*
  call void @PyMem_RawFree(i8* %16)
  %17 = load i64, i64* %r1, align 8
  %conv26 = trunc i64 %17 to i32
  store i32 %conv26, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.22, %if.then.17, %if.then.10, %if.then.5, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare i64 @readlink(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare i32* @wcsncpy(i32*, i32*, i64) #1

; Function Attrs: nounwind uwtable
define i32* @_Py_wrealpath(i32* %path, i32* %resolved_path, i64 %resolved_path_size) #0 {
entry:
  %retval = alloca i32*, align 8
  %path.addr = alloca i32*, align 8
  %resolved_path.addr = alloca i32*, align 8
  %resolved_path_size.addr = alloca i64, align 8
  %cpath = alloca i8*, align 8
  %cresolved_path = alloca [4096 x i8], align 16
  %wresolved_path = alloca i32*, align 8
  %res = alloca i8*, align 8
  %r = alloca i64, align 8
  store i32* %path, i32** %path.addr, align 8
  store i32* %resolved_path, i32** %resolved_path.addr, align 8
  store i64 %resolved_path_size, i64* %resolved_path_size.addr, align 8
  %0 = load i32*, i32** %path.addr, align 8
  %call = call i8* @_Py_wchar2char(i32* %0, i64* null)
  store i8* %call, i8** %cpath, align 8
  %1 = load i8*, i8** %cpath, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #7
  store i32 22, i32* %call1, align 4
  store i32* null, i32** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %cpath, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cresolved_path, i32 0, i32 0
  %call2 = call i8* @realpath(i8* %2, i8* %arraydecay) #4
  store i8* %call2, i8** %res, align 8
  %3 = load i8*, i8** %cpath, align 8
  call void @PyMem_Free(i8* %3)
  %4 = load i8*, i8** %res, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32* null, i32** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cresolved_path, i32 0, i32 0
  %call7 = call i32* @_Py_char2wchar(i8* %arraydecay6, i64* %r)
  store i32* %call7, i32** %wresolved_path, align 8
  %5 = load i32*, i32** %wresolved_path, align 8
  %cmp8 = icmp eq i32* %5, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.5
  %call10 = call i32* @__errno_location() #7
  store i32 22, i32* %call10, align 4
  store i32* null, i32** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.5
  %6 = load i64, i64* %resolved_path_size.addr, align 8
  %7 = load i64, i64* %r, align 8
  %cmp12 = icmp ule i64 %6, %7
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %8 = load i32*, i32** %wresolved_path, align 8
  %9 = bitcast i32* %8 to i8*
  call void @PyMem_RawFree(i8* %9)
  %call14 = call i32* @__errno_location() #7
  store i32 22, i32* %call14, align 4
  store i32* null, i32** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %10 = load i32*, i32** %resolved_path.addr, align 8
  %11 = load i32*, i32** %wresolved_path, align 8
  %12 = load i64, i64* %resolved_path_size.addr, align 8
  %call16 = call i32* @wcsncpy(i32* %10, i32* %11, i64 %12) #4
  %13 = load i32*, i32** %wresolved_path, align 8
  %14 = bitcast i32* %13 to i8*
  call void @PyMem_RawFree(i8* %14)
  %15 = load i32*, i32** %resolved_path.addr, align 8
  store i32* %15, i32** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.13, %if.then.9, %if.then.4, %if.then
  %16 = load i32*, i32** %retval
  ret i32* %16
}

; Function Attrs: nounwind
declare i8* @realpath(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32* @_Py_wgetcwd(i32* %buf, i64 %size) #0 {
entry:
  %retval = alloca i32*, align 8
  %buf.addr = alloca i32*, align 8
  %size.addr = alloca i64, align 8
  %fname = alloca [4096 x i8], align 16
  %wname = alloca i32*, align 8
  %len = alloca i64, align 8
  store i32* %buf, i32** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %call = call i8* @getcwd(i8* %arraydecay, i64 4096) #4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %call2 = call i32* @_Py_char2wchar(i8* %arraydecay1, i64* %len)
  store i32* %call2, i32** %wname, align 8
  %0 = load i32*, i32** %wname, align 8
  %cmp3 = icmp eq i32* %0, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32* null, i32** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %1 = load i64, i64* %size.addr, align 8
  %2 = load i64, i64* %len, align 8
  %cmp6 = icmp ule i64 %1, %2
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %3 = load i32*, i32** %wname, align 8
  %4 = bitcast i32* %3 to i8*
  call void @PyMem_RawFree(i8* %4)
  store i32* null, i32** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.5
  %5 = load i32*, i32** %buf.addr, align 8
  %6 = load i32*, i32** %wname, align 8
  %7 = load i64, i64* %size.addr, align 8
  %call9 = call i32* @wcsncpy(i32* %5, i32* %6, i64 %7) #4
  %8 = load i32*, i32** %wname, align 8
  %9 = bitcast i32* %8 to i8*
  call void @PyMem_RawFree(i8* %9)
  %10 = load i32*, i32** %buf.addr, align 8
  store i32* %10, i32** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.4, %if.then
  %11 = load i32*, i32** %retval
  ret i32* %11
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @_Py_dup(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %call1 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 0)
  store i32 %call1, i32* %fd.addr, align 4
  %1 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %1)
  %2 = load i32, i32* %fd.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call2 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %fd.addr, align 4
  store i32 %4, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare %struct._ts* @PyEval_SaveThread() #2

declare i32 @fcntl(i32, i32, ...) #2

declare void @PyEval_RestoreThread(%struct._ts*) #2

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @_Py_normalize_encoding(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
