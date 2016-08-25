; ModuleID = './dynload_shlib.bc'
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
%struct.anon = type { i64, i64, i8* }
%struct._Py_atomic_address = type { i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque

@.str = private unnamed_addr constant [16 x i8] c".cpython-34m.so\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c".abi3.so\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@_PyImport_DynLoadFiletab = global [4 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [10 x i8] c"./%-.255s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"PyInit_%.200s\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@nhandles = internal global i32 0, align 4
@handles = internal global [128 x %struct.anon] zeroinitializer, align 16
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"unknown dlopen() error\00", align 1

; Function Attrs: nounwind uwtable
define void ()* @_PyImport_GetDynLoadFunc(i8* %shortname, i8* %pathname, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca void ()*, align 8
  %shortname.addr = alloca i8*, align 8
  %pathname.addr = alloca i8*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %p = alloca void ()*, align 8
  %handle = alloca i8*, align 8
  %funcname = alloca [258 x i8], align 16
  %pathbuf = alloca [260 x i8], align 16
  %dlopenflags = alloca i32, align 4
  %i = alloca i32, align 4
  %statb = alloca %struct.stat, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %mod_name = alloca %struct._object*, align 8
  %path = alloca %struct._object*, align 8
  %error_ob = alloca %struct._object*, align 8
  %error = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  %_py_decref_tmp107 = alloca %struct._object*, align 8
  %_py_decref_tmp119 = alloca %struct._object*, align 8
  store i8* %shortname, i8** %shortname.addr, align 8
  store i8* %pathname, i8** %pathname.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %dlopenflags, align 4
  %0 = load i8*, i8** %pathname.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 47) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [260 x i8], [260 x i8]* %pathbuf, i32 0, i32 0
  %1 = load i8*, i8** %pathname.addr, align 8
  %call1 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 260, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %1)
  %arraydecay2 = getelementptr inbounds [260 x i8], [260 x i8]* %pathbuf, i32 0, i32 0
  store i8* %arraydecay2, i8** %pathname.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay3 = getelementptr inbounds [258 x i8], [258 x i8]* %funcname, i32 0, i32 0
  %2 = load i8*, i8** %shortname.addr, align 8
  %call4 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay3, i64 258, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp5 = icmp ne %struct._IO_FILE* %3, null
  br i1 %cmp5, label %if.then.6, label %if.end.36

if.then.6:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 @fileno(%struct._IO_FILE* %4) #6
  %call8 = call i32 @fstat64(i32 %call7, %struct.stat* %statb) #6
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.6
  %5 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call11 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5)
  store void ()* null, void ()** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @nhandles, align 4
  %cmp13 = icmp slt i32 %6, %7
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 0
  %8 = load i64, i64* %st_dev, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr [128 x %struct.anon], [128 x %struct.anon]* @handles, i32 0, i64 %idxprom
  %dev = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %10 = load i64, i64* %dev, align 8
  %cmp14 = icmp eq i64 %8, %10
  br i1 %cmp14, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %for.body
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 1
  %11 = load i64, i64* %st_ino, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr [128 x %struct.anon], [128 x %struct.anon]* @handles, i32 0, i64 %idxprom15
  %ino = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx16, i32 0, i32 1
  %13 = load i64, i64* %ino, align 8
  %cmp17 = icmp eq i64 %11, %13
  br i1 %cmp17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %land.lhs.true
  %14 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr [128 x %struct.anon], [128 x %struct.anon]* @handles, i32 0, i64 %idxprom19
  %handle21 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx20, i32 0, i32 2
  %15 = load i8*, i8** %handle21, align 8
  %arraydecay22 = getelementptr inbounds [258 x i8], [258 x i8]* %funcname, i32 0, i32 0
  %call23 = call i8* @dlsym(i8* %15, i8* %arraydecay22) #6
  %16 = bitcast i8* %call23 to void ()*
  store void ()* %16, void ()** %p, align 8
  %17 = load void ()*, void ()** %p, align 8
  store void ()* %17, void ()** %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* @nhandles, align 4
  %cmp25 = icmp slt i32 %19, 128
  br i1 %cmp25, label %if.then.26, label %if.end.35

if.then.26:                                       ; preds = %for.end
  %st_dev27 = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 0
  %20 = load i64, i64* %st_dev27, align 8
  %21 = load i32, i32* @nhandles, align 4
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr [128 x %struct.anon], [128 x %struct.anon]* @handles, i32 0, i64 %idxprom28
  %dev30 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx29, i32 0, i32 0
  store i64 %20, i64* %dev30, align 8
  %st_ino31 = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 1
  %22 = load i64, i64* %st_ino31, align 8
  %23 = load i32, i32* @nhandles, align 4
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr [128 x %struct.anon], [128 x %struct.anon]* @handles, i32 0, i64 %idxprom32
  %ino34 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx33, i32 0, i32 1
  store i64 %22, i64* %ino34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.26, %for.end
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %24 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %24, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %25 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %26 = bitcast %struct._Py_atomic_address* %25 to i8*
  %27 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %26, i32 %27)
  %28 = load i32, i32* %order, align 4
  switch i32 %28, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.36, %if.end.36, %if.end.36
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.36
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %29 = load i8**, i8*** %volatile_data, align 8
  %30 = load volatile i8*, i8** %29, align 8
  store i8* %30, i8** %result, align 8
  %31 = load i32, i32* %order, align 4
  switch i32 %31, label %sw.default.38 [
    i32 1, label %sw.bb.37
    i32 3, label %sw.bb.37
    i32 4, label %sw.bb.37
  ]

sw.bb.37:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.39

sw.default.38:                                    ; preds = %sw.epilog
  br label %sw.epilog.39

sw.epilog.39:                                     ; preds = %sw.default.38, %sw.bb.37
  %32 = load i8*, i8** %result, align 8
  store i8* %32, i8** %tmp
  %33 = load i8*, i8** %tmp
  %34 = bitcast i8* %33 to %struct._ts*
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %34, i32 0, i32 2
  %35 = load %struct._is*, %struct._is** %interp, align 8
  %dlopenflags40 = getelementptr inbounds %struct._is, %struct._is* %35, i32 0, i32 12
  %36 = load i32, i32* %dlopenflags40, align 4
  store i32 %36, i32* %dlopenflags, align 4
  %37 = load i8*, i8** %pathname.addr, align 8
  %38 = load i32, i32* %dlopenflags, align 4
  %call41 = call i8* @dlopen(i8* %37, i32 %38) #6
  store i8* %call41, i8** %handle, align 8
  %39 = load i8*, i8** %handle, align 8
  %cmp42 = icmp eq i8* %39, null
  br i1 %cmp42, label %if.then.43, label %if.end.129

if.then.43:                                       ; preds = %sw.epilog.39
  %call48 = call i8* @dlerror() #6
  store i8* %call48, i8** %error, align 8
  %40 = load i8*, i8** %error, align 8
  %cmp49 = icmp eq i8* %40, null
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.43
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i8** %error, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.then.43
  %41 = load i8*, i8** %error, align 8
  %call52 = call %struct._object* @PyUnicode_FromString(i8* %41)
  store %struct._object* %call52, %struct._object** %error_ob, align 8
  %42 = load %struct._object*, %struct._object** %error_ob, align 8
  %cmp53 = icmp eq %struct._object* %42, null
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  store void ()* null, void ()** %retval
  br label %return

if.end.55:                                        ; preds = %if.end.51
  %43 = load i8*, i8** %shortname.addr, align 8
  %call56 = call %struct._object* @PyUnicode_FromString(i8* %43)
  store %struct._object* %call56, %struct._object** %mod_name, align 8
  %44 = load %struct._object*, %struct._object** %mod_name, align 8
  %cmp57 = icmp eq %struct._object* %44, null
  br i1 %cmp57, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.end.55
  br label %do.body

do.body:                                          ; preds = %if.then.58
  %45 = load %struct._object*, %struct._object** %error_ob, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %47, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp60 = icmp ne i64 %dec, 0
  br i1 %cmp60, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %do.body
  br label %if.end.62

if.else:                                          ; preds = %do.body
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %50(%struct._object* %51)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.then.61
  br label %do.end

do.end:                                           ; preds = %if.end.62
  store void ()* null, void ()** %retval
  br label %return

if.end.63:                                        ; preds = %if.end.55
  %52 = load i8*, i8** %pathname.addr, align 8
  %call64 = call %struct._object* @PyUnicode_FromString(i8* %52)
  store %struct._object* %call64, %struct._object** %path, align 8
  %53 = load %struct._object*, %struct._object** %path, align 8
  %cmp65 = icmp eq %struct._object* %53, null
  br i1 %cmp65, label %if.then.66, label %if.end.91

if.then.66:                                       ; preds = %if.end.63
  br label %do.body.67

do.body.67:                                       ; preds = %if.then.66
  %54 = load %struct._object*, %struct._object** %error_ob, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp69, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt70, align 8
  %dec71 = add i64 %56, -1
  store i64 %dec71, i64* %ob_refcnt70, align 8
  %cmp72 = icmp ne i64 %dec71, 0
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.67
  br label %if.end.77

if.else.74:                                       ; preds = %do.body.67
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  call void %59(%struct._object* %60)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %do.body.79

do.body.79:                                       ; preds = %do.end.78
  %61 = load %struct._object*, %struct._object** %mod_name, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp81, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt82, align 8
  %dec83 = add i64 %63, -1
  store i64 %dec83, i64* %ob_refcnt82, align 8
  %cmp84 = icmp ne i64 %dec83, 0
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.79
  br label %if.end.89

if.else.86:                                       ; preds = %do.body.79
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  call void %66(%struct._object* %67)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  store void ()* null, void ()** %retval
  br label %return

if.end.91:                                        ; preds = %if.end.63
  %68 = load %struct._object*, %struct._object** %error_ob, align 8
  %69 = load %struct._object*, %struct._object** %mod_name, align 8
  %70 = load %struct._object*, %struct._object** %path, align 8
  %call92 = call %struct._object* @PyErr_SetImportError(%struct._object* %68, %struct._object* %69, %struct._object* %70)
  br label %do.body.93

do.body.93:                                       ; preds = %if.end.91
  %71 = load %struct._object*, %struct._object** %error_ob, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp95, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt96, align 8
  %dec97 = add i64 %73, -1
  store i64 %dec97, i64* %ob_refcnt96, align 8
  %cmp98 = icmp ne i64 %dec97, 0
  br i1 %cmp98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %do.body.93
  br label %if.end.103

if.else.100:                                      ; preds = %do.body.93
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  call void %76(%struct._object* %77)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.99
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  br label %do.body.105

do.body.105:                                      ; preds = %do.end.104
  %78 = load %struct._object*, %struct._object** %mod_name, align 8
  store %struct._object* %78, %struct._object** %_py_decref_tmp107, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0
  %80 = load i64, i64* %ob_refcnt108, align 8
  %dec109 = add i64 %80, -1
  store i64 %dec109, i64* %ob_refcnt108, align 8
  %cmp110 = icmp ne i64 %dec109, 0
  br i1 %cmp110, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %do.body.105
  br label %if.end.115

if.else.112:                                      ; preds = %do.body.105
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_type113 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type113, align 8
  %tp_dealloc114 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc114, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  call void %83(%struct._object* %84)
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.112, %if.then.111
  br label %do.end.116

do.end.116:                                       ; preds = %if.end.115
  br label %do.body.117

do.body.117:                                      ; preds = %do.end.116
  %85 = load %struct._object*, %struct._object** %path, align 8
  store %struct._object* %85, %struct._object** %_py_decref_tmp119, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  %ob_refcnt120 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0
  %87 = load i64, i64* %ob_refcnt120, align 8
  %dec121 = add i64 %87, -1
  store i64 %dec121, i64* %ob_refcnt120, align 8
  %cmp122 = icmp ne i64 %dec121, 0
  br i1 %cmp122, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %do.body.117
  br label %if.end.127

if.else.124:                                      ; preds = %do.body.117
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  %ob_type125 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type125, align 8
  %tp_dealloc126 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc126, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  call void %90(%struct._object* %91)
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.124, %if.then.123
  br label %do.end.128

do.end.128:                                       ; preds = %if.end.127
  store void ()* null, void ()** %retval
  br label %return

if.end.129:                                       ; preds = %sw.epilog.39
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp130 = icmp ne %struct._IO_FILE* %92, null
  br i1 %cmp130, label %land.lhs.true.131, label %if.end.138

land.lhs.true.131:                                ; preds = %if.end.129
  %93 = load i32, i32* @nhandles, align 4
  %cmp132 = icmp slt i32 %93, 128
  br i1 %cmp132, label %if.then.133, label %if.end.138

if.then.133:                                      ; preds = %land.lhs.true.131
  %94 = load i8*, i8** %handle, align 8
  %95 = load i32, i32* @nhandles, align 4
  %inc134 = add i32 %95, 1
  store i32 %inc134, i32* @nhandles, align 4
  %idxprom135 = sext i32 %95 to i64
  %arrayidx136 = getelementptr [128 x %struct.anon], [128 x %struct.anon]* @handles, i32 0, i64 %idxprom135
  %handle137 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx136, i32 0, i32 2
  store i8* %94, i8** %handle137, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.133, %land.lhs.true.131, %if.end.129
  %96 = load i8*, i8** %handle, align 8
  %arraydecay139 = getelementptr inbounds [258 x i8], [258 x i8]* %funcname, i32 0, i32 0
  %call140 = call i8* @dlsym(i8* %96, i8* %arraydecay139) #6
  %97 = bitcast i8* %call140 to void ()*
  store void ()* %97, void ()** %p, align 8
  %98 = load void ()*, void ()** %p, align 8
  store void ()* %98, void ()** %retval
  br label %return

return:                                           ; preds = %if.end.138, %do.end.128, %do.end.90, %do.end, %if.then.54, %if.then.18, %if.then.10
  %99 = load void ()*, void ()** %retval
  ret void ()* %99
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @fstat64(i32, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #2

; Function Attrs: nounwind
declare i8* @dlsym(i8*, i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #4 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8
  store i32 %order, i32* %order.addr, align 4
  %0 = load i8*, i8** %address.addr, align 8
  %1 = load i32, i32* %order.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ]

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #4 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #4 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i8* @dlopen(i8*, i32) #3

; Function Attrs: nounwind
declare i8* @dlerror() #3

declare %struct._object* @PyUnicode_FromString(i8*) #2

declare %struct._object* @PyErr_SetImportError(%struct._object*, %struct._object*, %struct._object*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139709}
!2 = !{i32 139549}
