; ModuleID = './getpath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }

@module_search_path = internal global i32* null, align 8
@progpath = internal global [4097 x i32] zeroinitializer, align 16
@prefix = internal global [4097 x i32] zeroinitializer, align 16
@exec_prefix = internal global [4097 x i32] zeroinitializer, align 16
@calculate_path.delimiter = internal global [2 x i32] [i32 58, i32 0], align 4
@calculate_path.separator = internal global [2 x i32] [i32 47, i32 0], align 4
@Py_IgnoreEnvironmentFlag = external global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"PYTHONPATH\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c":plat-linux\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"/usr/local\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"lib/python3.4\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Unable to decode path variables in getpath.c: memory error\00", align 1
@.str.6 = private unnamed_addr constant [11 x i32] [i32 112, i32 121, i32 118, i32 101, i32 110, i32 118, i32 46, i32 99, i32 102, i32 103, i32 0], align 4
@.str.7 = private unnamed_addr constant [2 x i32] [i32 114, i32 0], align 4
@.str.8 = private unnamed_addr constant [5 x i32] [i32 104, i32 111, i32 109, i32 101, i32 0], align 4
@Py_FrozenFlag = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [56 x i8] c"Could not find platform independent libraries <prefix>\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i32] [i32 108, i32 105, i32 98, i32 47, i32 112, i32 121, i32 116, i32 104, i32 111, i32 110, i32 48, i32 48, i32 46, i32 122, i32 105, i32 112, i32 0], align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"3.4\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"Could not find platform dependent libraries <exec_prefix>\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i32] [i32 108, i32 105, i32 98, i32 47, i32 108, i32 105, i32 98, i32 45, i32 100, i32 121, i32 110, i32 108, i32 111, i32 97, i32 100, i32 0], align 4
@.str.14 = private unnamed_addr constant [58 x i8] c"Consider setting $PYTHONHOME to <prefix>[:<exec_prefix>]\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Not enough memory for dynamic PYTHONPATH\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"buffer overflow in getpath.c's joinpath()\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"surrogateescape\00", align 1
@.str.18 = private unnamed_addr constant [5 x i32] [i32 32, i32 9, i32 13, i32 10, i32 0], align 4
@.str.19 = private unnamed_addr constant [3 x i32] [i32 32, i32 9, i32 0], align 4
@.str.20 = private unnamed_addr constant [2 x i32] [i32 61, i32 0], align 4
@.str.21 = private unnamed_addr constant [3 x i32] [i32 13, i32 10, i32 0], align 4
@.str.22 = private unnamed_addr constant [6 x i32] [i32 111, i32 115, i32 46, i32 112, i32 121, i32 0], align 4
@.str.23 = private unnamed_addr constant [14 x i32] [i32 77, i32 111, i32 100, i32 117, i32 108, i32 101, i32 115, i32 47, i32 83, i32 101, i32 116, i32 117, i32 112, i32 0], align 4
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [4 x i32] [i32 76, i32 105, i32 98, i32 0], align 4
@Py_OptimizeFlag = external global i32, align 4
@.str.26 = private unnamed_addr constant [2 x i32] [i32 111, i32 0], align 4
@.str.27 = private unnamed_addr constant [2 x i32] [i32 99, i32 0], align 4
@.str.28 = private unnamed_addr constant [12 x i32] [i32 108, i32 105, i32 98, i32 45, i32 100, i32 121, i32 110, i32 108, i32 111, i32 97, i32 100, i32 0], align 4
@.str.29 = private unnamed_addr constant [15 x i32] [i32 112, i32 121, i32 98, i32 117, i32 105, i32 108, i32 100, i32 100, i32 105, i32 114, i32 46, i32 116, i32 120, i32 116, i32 0], align 4
@.str.30 = private unnamed_addr constant [3 x i32] [i32 114, i32 98, i32 0], align 4

; Function Attrs: nounwind uwtable
define void @Py_SetPath(i32* %path) #0 {
entry:
  %path.addr = alloca i32*, align 8
  %prog = alloca i32*, align 8
  store i32* %path, i32** %path.addr, align 8
  %0 = load i32*, i32** @module_search_path, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** @module_search_path, align 8
  %2 = bitcast i32* %1 to i8*
  call void @PyMem_RawFree(i8* %2)
  store i32* null, i32** @module_search_path, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** %path.addr, align 8
  %cmp1 = icmp ne i32* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  %call = call i32* @Py_GetProgramName()
  store i32* %call, i32** %prog, align 8
  %4 = load i32*, i32** %prog, align 8
  %call3 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i32* %4, i64 4096) #6
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i64 0), align 4
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 0), align 4
  %5 = load i32*, i32** %path.addr, align 8
  %call4 = call i64 @wcslen(i32* %5) #7
  %add = add i64 %call4, 1
  %mul = mul i64 %add, 4
  %call5 = call i8* @PyMem_RawMalloc(i64 %mul)
  %6 = bitcast i8* %call5 to i32*
  store i32* %6, i32** @module_search_path, align 8
  %7 = load i32*, i32** @module_search_path, align 8
  %cmp6 = icmp ne i32* %7, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.then.2
  %8 = load i32*, i32** @module_search_path, align 8
  %9 = load i32*, i32** %path.addr, align 8
  %call8 = call i32* @wcscpy(i32* %8, i32* %9) #6
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  ret void
}

declare void @PyMem_RawFree(i8*) #1

declare i32* @Py_GetProgramName() #1

; Function Attrs: nounwind
declare i32* @wcsncpy(i32*, i32*, i64) #2

declare i8* @PyMem_RawMalloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @wcslen(i32*) #3

; Function Attrs: nounwind
declare i32* @wcscpy(i32*, i32*) #2

; Function Attrs: nounwind uwtable
define i32* @Py_GetPath() #0 {
entry:
  %0 = load i32*, i32** @module_search_path, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @calculate_path()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32*, i32** @module_search_path, align 8
  ret i32* %1
}

; Function Attrs: nounwind uwtable
define internal void @calculate_path() #0 {
entry:
  %_rtpypath = alloca i8*, align 8
  %rtpypath = alloca i32*, align 8
  %home = alloca i32*, align 8
  %_path = alloca i8*, align 8
  %path_buffer = alloca i32*, align 8
  %path = alloca i32*, align 8
  %prog = alloca i32*, align 8
  %argv0_path = alloca [4097 x i32], align 16
  %zip_path = alloca [4097 x i32], align 16
  %pfound = alloca i32, align 4
  %efound = alloca i32, align 4
  %buf = alloca i32*, align 8
  %bufsz = alloca i64, align 8
  %prefixsz = alloca i64, align 8
  %defpath = alloca i32*, align 8
  %_pythonpath = alloca i32*, align 8
  %_prefix = alloca i32*, align 8
  %_exec_prefix = alloca i32*, align 8
  %lib_python = alloca i32*, align 8
  %delim = alloca i32*, align 8
  %len = alloca i64, align 8
  %tmpbuffer = alloca [4097 x i32], align 16
  %linklen = alloca i32, align 4
  %tmpbuffer69 = alloca [4097 x i32], align 16
  %env_cfg = alloca i32*, align 8
  %env_file = alloca %struct._IO_FILE*, align 8
  %rtpypath_len = alloca i64, align 8
  %delim166 = alloca i32*, align 8
  %delim213 = alloca i32*, align 8
  %len224 = alloca i64, align 8
  %end = alloca i64, align 8
  %0 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %_rtpypath, align 8
  store i32* null, i32** %rtpypath, align 8
  %call1 = call i32* @Py_GetPythonHome()
  store i32* %call1, i32** %home, align 8
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #6
  store i8* %call2, i8** %_path, align 8
  store i32* null, i32** %path_buffer, align 8
  store i32* null, i32** %path, align 8
  %call3 = call i32* @Py_GetProgramName()
  store i32* %call3, i32** %prog, align 8
  %call4 = call i32* @_Py_char2wchar(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i64* null)
  store i32* %call4, i32** %_pythonpath, align 8
  %call5 = call i32* @_Py_char2wchar(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i64* null)
  store i32* %call5, i32** %_prefix, align 8
  %call6 = call i32* @_Py_char2wchar(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i64* null)
  store i32* %call6, i32** %_exec_prefix, align 8
  %call7 = call i32* @_Py_char2wchar(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64* null)
  store i32* %call7, i32** %lib_python, align 8
  %1 = load i32*, i32** %_pythonpath, align 8
  %tobool8 = icmp ne i32* %1, null
  br i1 %tobool8, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %cond.end
  %2 = load i32*, i32** %_prefix, align 8
  %tobool9 = icmp ne i32* %2, null
  br i1 %tobool9, label %lor.lhs.false.10, label %if.then

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %3 = load i32*, i32** %_exec_prefix, align 8
  %tobool11 = icmp ne i32* %3, null
  br i1 %tobool11, label %lor.lhs.false.12, label %if.then

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %4 = load i32*, i32** %lib_python, align 8
  %tobool13 = icmp ne i32* %4, null
  br i1 %tobool13, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.12, %lor.lhs.false.10, %lor.lhs.false, %cond.end
  call void @Py_FatalError(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false.12
  %5 = load i8*, i8** %_path, align 8
  %tobool14 = icmp ne i8* %5, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %6 = load i8*, i8** %_path, align 8
  %call16 = call i32* @_Py_char2wchar(i8* %6, i64* null)
  store i32* %call16, i32** %path_buffer, align 8
  %7 = load i32*, i32** %path_buffer, align 8
  store i32* %7, i32** %path, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end
  %8 = load i32*, i32** %prog, align 8
  %call18 = call i32* @wcschr(i32* %8, i32 47) #7
  %tobool19 = icmp ne i32* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.17
  %9 = load i32*, i32** %prog, align 8
  %call21 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i32* %9, i64 4096) #6
  br label %if.end.43

if.else:                                          ; preds = %if.end.17
  %10 = load i32*, i32** %path, align 8
  %tobool22 = icmp ne i32* %10, null
  br i1 %tobool22, label %if.then.23, label %if.else.41

if.then.23:                                       ; preds = %if.else
  br label %while.body

while.body:                                       ; preds = %if.then.23, %if.end.39
  %11 = load i32*, i32** %path, align 8
  %call24 = call i32* @wcschr(i32* %11, i32 58) #7
  store i32* %call24, i32** %delim, align 8
  %12 = load i32*, i32** %delim, align 8
  %tobool25 = icmp ne i32* %12, null
  br i1 %tobool25, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %while.body
  %13 = load i32*, i32** %delim, align 8
  %14 = load i32*, i32** %path, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  store i64 %sub.ptr.div, i64* %len, align 8
  %15 = load i64, i64* %len, align 8
  %cmp = icmp ugt i64 %15, 4096
  br i1 %cmp, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.26
  store i64 4096, i64* %len, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.26
  %16 = load i32*, i32** %path, align 8
  %17 = load i64, i64* %len, align 8
  %call29 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i32* %16, i64 %17) #6
  %18 = load i64, i64* %len, align 8
  %add.ptr = getelementptr i32, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i64 %18
  store i32 0, i32* %add.ptr, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %while.body
  %19 = load i32*, i32** %path, align 8
  %call31 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i32* %19, i64 4096) #6
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.end.28
  %20 = load i32*, i32** %prog, align 8
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i32* %20)
  %call33 = call i32 @isxfile(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0))
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  br label %while.end

if.end.36:                                        ; preds = %if.end.32
  %21 = load i32*, i32** %delim, align 8
  %tobool37 = icmp ne i32* %21, null
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.36
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i64 0), align 4
  br label %while.end

if.end.39:                                        ; preds = %if.end.36
  %22 = load i32*, i32** %delim, align 8
  %add.ptr40 = getelementptr i32, i32* %22, i64 1
  store i32* %add.ptr40, i32** %path, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.38, %if.then.35
  br label %if.end.42

if.else.41:                                       ; preds = %if.else
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i64 0), align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %while.end
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.20
  %23 = load i32*, i32** %path_buffer, align 8
  %24 = bitcast i32* %23 to i8*
  call void @PyMem_RawFree(i8* %24)
  %25 = load i32, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i64 0), align 4
  %cmp44 = icmp ne i32 %25, 47
  br i1 %cmp44, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.43
  %26 = load i32, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i64 0), align 4
  %cmp45 = icmp ne i32 %26, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true
  call void @absolutize(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %land.lhs.true, %if.end.43
  %arraydecay = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0
  %call48 = call i32* @wcsncpy(i32* %arraydecay, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i64 4096) #6
  %arrayidx = getelementptr [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i64 4096
  store i32 0, i32* %arrayidx, align 4
  %arraydecay49 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer, i32 0, i32 0
  %call50 = call i32 @_Py_wreadlink(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0), i32* %arraydecay49, i64 4096)
  store i32 %call50, i32* %linklen, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.63, %if.end.47
  %27 = load i32, i32* %linklen, align 4
  %cmp51 = icmp ne i32 %27, -1
  br i1 %cmp51, label %while.body.52, label %while.end.67

while.body.52:                                    ; preds = %while.cond
  %arrayidx53 = getelementptr [4097 x i32], [4097 x i32]* %tmpbuffer, i32 0, i64 0
  %28 = load i32, i32* %arrayidx53, align 4
  %cmp54 = icmp eq i32 %28, 47
  br i1 %cmp54, label %if.then.55, label %if.else.59

if.then.55:                                       ; preds = %while.body.52
  %arraydecay56 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0
  %arraydecay57 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer, i32 0, i32 0
  %call58 = call i32* @wcsncpy(i32* %arraydecay56, i32* %arraydecay57, i64 4096) #6
  br label %if.end.63

if.else.59:                                       ; preds = %while.body.52
  %arraydecay60 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0
  call void @reduce(i32* %arraydecay60)
  %arraydecay61 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0
  %arraydecay62 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer, i32 0, i32 0
  call void @joinpath(i32* %arraydecay61, i32* %arraydecay62)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.59, %if.then.55
  %arraydecay64 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0
  %arraydecay65 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer, i32 0, i32 0
  %call66 = call i32 @_Py_wreadlink(i32* %arraydecay64, i32* %arraydecay65, i64 4096)
  store i32 %call66, i32* %linklen, align 4
  br label %while.cond

while.end.67:                                     ; preds = %while.cond
  %arraydecay68 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0
  call void @reduce(i32* %arraydecay68)
  store i32* getelementptr inbounds ([11 x i32], [11 x i32]* @.str.6, i32 0, i32 0), i32** %env_cfg, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %env_file, align 8
  %arraydecay70 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer69, i32 0, i32 0
  %arraydecay71 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0
  %call72 = call i32* @wcscpy(i32* %arraydecay70, i32* %arraydecay71) #6
  %arraydecay73 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer69, i32 0, i32 0
  %29 = load i32*, i32** %env_cfg, align 8
  call void @joinpath(i32* %arraydecay73, i32* %29)
  %arraydecay74 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer69, i32 0, i32 0
  %call75 = call %struct._IO_FILE* @_Py_wfopen(i32* %arraydecay74, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call75, %struct._IO_FILE** %env_file, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file, align 8
  %cmp76 = icmp eq %struct._IO_FILE* %30, null
  br i1 %cmp76, label %if.then.77, label %if.end.88

if.then.77:                                       ; preds = %while.end.67
  %call78 = call i32* @__errno_location() #9
  store i32 0, i32* %call78, align 4
  %arraydecay79 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer69, i32 0, i32 0
  call void @reduce(i32* %arraydecay79)
  %arraydecay80 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer69, i32 0, i32 0
  call void @reduce(i32* %arraydecay80)
  %arraydecay81 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer69, i32 0, i32 0
  %31 = load i32*, i32** %env_cfg, align 8
  call void @joinpath(i32* %arraydecay81, i32* %31)
  %arraydecay82 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer69, i32 0, i32 0
  %call83 = call %struct._IO_FILE* @_Py_wfopen(i32* %arraydecay82, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call83, %struct._IO_FILE** %env_file, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file, align 8
  %cmp84 = icmp eq %struct._IO_FILE* %32, null
  br i1 %cmp84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.then.77
  %call86 = call i32* @__errno_location() #9
  store i32 0, i32* %call86, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.then.77
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %while.end.67
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file, align 8
  %cmp89 = icmp ne %struct._IO_FILE* %33, null
  br i1 %cmp89, label %if.then.90, label %if.end.100

if.then.90:                                       ; preds = %if.end.88
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file, align 8
  %arraydecay91 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer69, i32 0, i32 0
  %call92 = call i32 @find_env_config_value(%struct._IO_FILE* %34, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.8, i32 0, i32 0), i32* %arraydecay91)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.98

if.then.94:                                       ; preds = %if.then.90
  %arraydecay95 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0
  %arraydecay96 = getelementptr inbounds [4097 x i32], [4097 x i32]* %tmpbuffer69, i32 0, i32 0
  %call97 = call i32* @wcscpy(i32* %arraydecay95, i32* %arraydecay96) #6
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.94, %if.then.90
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file, align 8
  %call99 = call i32 @fclose(%struct._IO_FILE* %35)
  store %struct._IO_FILE* null, %struct._IO_FILE** %env_file, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.98, %if.end.88
  %arraydecay101 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0
  %36 = load i32*, i32** %home, align 8
  %37 = load i32*, i32** %_prefix, align 8
  %38 = load i32*, i32** %lib_python, align 8
  %call102 = call i32 @search_for_prefix(i32* %arraydecay101, i32* %36, i32* %37, i32* %38)
  store i32 %call102, i32* %pfound, align 4
  %39 = load i32, i32* %pfound, align 4
  %tobool103 = icmp ne i32 %39, 0
  br i1 %tobool103, label %if.else.110, label %if.then.104

if.then.104:                                      ; preds = %if.end.100
  %40 = load i32, i32* @Py_FrozenFlag, align 4
  %tobool105 = icmp ne i32 %40, 0
  br i1 %tobool105, label %if.end.108, label %if.then.106

if.then.106:                                      ; preds = %if.then.104
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.then.104
  %42 = load i32*, i32** %_prefix, align 8
  %call109 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %42, i64 4096) #6
  %43 = load i32*, i32** %lib_python, align 8
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %43)
  br label %if.end.111

if.else.110:                                      ; preds = %if.end.100
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0))
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.110, %if.end.108
  %arraydecay112 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0
  %call113 = call i32* @wcsncpy(i32* %arraydecay112, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i64 4096) #6
  %arrayidx114 = getelementptr [4097 x i32], [4097 x i32]* %zip_path, i32 0, i64 4096
  store i32 0, i32* %arrayidx114, align 4
  %44 = load i32, i32* %pfound, align 4
  %cmp115 = icmp sgt i32 %44, 0
  br i1 %cmp115, label %if.then.116, label %if.else.119

if.then.116:                                      ; preds = %if.end.111
  %arraydecay117 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0
  call void @reduce(i32* %arraydecay117)
  %arraydecay118 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0
  call void @reduce(i32* %arraydecay118)
  br label %if.end.122

if.else.119:                                      ; preds = %if.end.111
  %arraydecay120 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0
  %45 = load i32*, i32** %_prefix, align 8
  %call121 = call i32* @wcsncpy(i32* %arraydecay120, i32* %45, i64 4096) #6
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.116
  %arraydecay123 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0
  call void @joinpath(i32* %arraydecay123, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @.str.10, i32 0, i32 0))
  %arraydecay124 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0
  %call125 = call i64 @wcslen(i32* %arraydecay124) #7
  store i64 %call125, i64* %bufsz, align 8
  %46 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i64 0), align 1
  %conv = sext i8 %46 to i32
  %47 = load i64, i64* %bufsz, align 8
  %sub = sub i64 %47, 6
  %arrayidx126 = getelementptr [4097 x i32], [4097 x i32]* %zip_path, i32 0, i64 %sub
  store i32 %conv, i32* %arrayidx126, align 4
  %48 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i64 2), align 1
  %conv127 = sext i8 %48 to i32
  %49 = load i64, i64* %bufsz, align 8
  %sub128 = sub i64 %49, 5
  %arrayidx129 = getelementptr [4097 x i32], [4097 x i32]* %zip_path, i32 0, i64 %sub128
  store i32 %conv127, i32* %arrayidx129, align 4
  %arraydecay130 = getelementptr inbounds [4097 x i32], [4097 x i32]* %argv0_path, i32 0, i32 0
  %50 = load i32*, i32** %home, align 8
  %51 = load i32*, i32** %_exec_prefix, align 8
  %52 = load i32*, i32** %lib_python, align 8
  %call131 = call i32 @search_for_exec_prefix(i32* %arraydecay130, i32* %50, i32* %51, i32* %52)
  store i32 %call131, i32* %efound, align 4
  %53 = load i32, i32* %efound, align 4
  %tobool132 = icmp ne i32 %53, 0
  br i1 %tobool132, label %if.end.139, label %if.then.133

if.then.133:                                      ; preds = %if.end.122
  %54 = load i32, i32* @Py_FrozenFlag, align 4
  %tobool134 = icmp ne i32 %54, 0
  br i1 %tobool134, label %if.end.137, label %if.then.135

if.then.135:                                      ; preds = %if.then.133
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %if.then.133
  %56 = load i32*, i32** %_exec_prefix, align 8
  %call138 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %56, i64 4096) #6
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @.str.13, i32 0, i32 0))
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.137, %if.end.122
  %57 = load i32, i32* %pfound, align 4
  %tobool140 = icmp ne i32 %57, 0
  br i1 %tobool140, label %lor.lhs.false.141, label %land.lhs.true.143

lor.lhs.false.141:                                ; preds = %if.end.139
  %58 = load i32, i32* %efound, align 4
  %tobool142 = icmp ne i32 %58, 0
  br i1 %tobool142, label %if.end.147, label %land.lhs.true.143

land.lhs.true.143:                                ; preds = %lor.lhs.false.141, %if.end.139
  %59 = load i32, i32* @Py_FrozenFlag, align 4
  %tobool144 = icmp ne i32 %59, 0
  br i1 %tobool144, label %if.end.147, label %if.then.145

if.then.145:                                      ; preds = %land.lhs.true.143
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %land.lhs.true.143, %lor.lhs.false.141
  store i64 0, i64* %bufsz, align 8
  %61 = load i8*, i8** %_rtpypath, align 8
  %tobool148 = icmp ne i8* %61, null
  br i1 %tobool148, label %land.lhs.true.149, label %if.end.161

land.lhs.true.149:                                ; preds = %if.end.147
  %62 = load i8*, i8** %_rtpypath, align 8
  %arrayidx150 = getelementptr i8, i8* %62, i64 0
  %63 = load i8, i8* %arrayidx150, align 1
  %conv151 = sext i8 %63 to i32
  %cmp152 = icmp ne i32 %conv151, 0
  br i1 %cmp152, label %if.then.154, label %if.end.161

if.then.154:                                      ; preds = %land.lhs.true.149
  %64 = load i8*, i8** %_rtpypath, align 8
  %call155 = call i32* @_Py_char2wchar(i8* %64, i64* %rtpypath_len)
  store i32* %call155, i32** %rtpypath, align 8
  %65 = load i32*, i32** %rtpypath, align 8
  %cmp156 = icmp ne i32* %65, null
  br i1 %cmp156, label %if.then.158, label %if.end.160

if.then.158:                                      ; preds = %if.then.154
  %66 = load i64, i64* %rtpypath_len, align 8
  %add = add i64 %66, 1
  %67 = load i64, i64* %bufsz, align 8
  %add159 = add i64 %67, %add
  store i64 %add159, i64* %bufsz, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.158, %if.then.154
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %land.lhs.true.149, %if.end.147
  %68 = load i32*, i32** %_pythonpath, align 8
  store i32* %68, i32** %defpath, align 8
  %call162 = call i64 @wcslen(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)) #7
  %add163 = add i64 %call162, 1
  store i64 %add163, i64* %prefixsz, align 8
  br label %while.body.165

while.body.165:                                   ; preds = %if.end.161, %if.end.186
  %69 = load i32*, i32** %defpath, align 8
  %call167 = call i32* @wcschr(i32* %69, i32 58) #7
  store i32* %call167, i32** %delim166, align 8
  %70 = load i32*, i32** %defpath, align 8
  %arrayidx168 = getelementptr i32, i32* %70, i64 0
  %71 = load i32, i32* %arrayidx168, align 4
  %cmp169 = icmp ne i32 %71, 47
  br i1 %cmp169, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %while.body.165
  %72 = load i64, i64* %prefixsz, align 8
  %73 = load i64, i64* %bufsz, align 8
  %add172 = add i64 %73, %72
  store i64 %add172, i64* %bufsz, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %while.body.165
  %74 = load i32*, i32** %delim166, align 8
  %tobool174 = icmp ne i32* %74, null
  br i1 %tobool174, label %if.then.175, label %if.else.182

if.then.175:                                      ; preds = %if.end.173
  %75 = load i32*, i32** %delim166, align 8
  %76 = load i32*, i32** %defpath, align 8
  %sub.ptr.lhs.cast176 = ptrtoint i32* %75 to i64
  %sub.ptr.rhs.cast177 = ptrtoint i32* %76 to i64
  %sub.ptr.sub178 = sub i64 %sub.ptr.lhs.cast176, %sub.ptr.rhs.cast177
  %sub.ptr.div179 = sdiv exact i64 %sub.ptr.sub178, 4
  %add180 = add i64 %sub.ptr.div179, 1
  %77 = load i64, i64* %bufsz, align 8
  %add181 = add i64 %77, %add180
  store i64 %add181, i64* %bufsz, align 8
  br label %if.end.186

if.else.182:                                      ; preds = %if.end.173
  %78 = load i32*, i32** %defpath, align 8
  %call183 = call i64 @wcslen(i32* %78) #7
  %add184 = add i64 %call183, 1
  %79 = load i64, i64* %bufsz, align 8
  %add185 = add i64 %79, %add184
  store i64 %add185, i64* %bufsz, align 8
  br label %while.end.188

if.end.186:                                       ; preds = %if.then.175
  %80 = load i32*, i32** %delim166, align 8
  %add.ptr187 = getelementptr i32, i32* %80, i64 1
  store i32* %add.ptr187, i32** %defpath, align 8
  br label %while.body.165

while.end.188:                                    ; preds = %if.else.182
  %arraydecay189 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0
  %call190 = call i64 @wcslen(i32* %arraydecay189) #7
  %add191 = add i64 %call190, 1
  %81 = load i64, i64* %bufsz, align 8
  %add192 = add i64 %81, %add191
  store i64 %add192, i64* %bufsz, align 8
  %call193 = call i64 @wcslen(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0)) #7
  %add194 = add i64 %call193, 1
  %82 = load i64, i64* %bufsz, align 8
  %add195 = add i64 %82, %add194
  store i64 %add195, i64* %bufsz, align 8
  %83 = load i64, i64* %bufsz, align 8
  %mul = mul i64 %83, 4
  %call196 = call i8* @PyMem_Malloc(i64 %mul)
  %84 = bitcast i8* %call196 to i32*
  store i32* %84, i32** %buf, align 8
  %85 = load i32*, i32** %buf, align 8
  %cmp197 = icmp eq i32* %85, null
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %while.end.188
  call void @Py_FatalError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0)) #8
  unreachable

if.end.200:                                       ; preds = %while.end.188
  %86 = load i32*, i32** %rtpypath, align 8
  %tobool201 = icmp ne i32* %86, null
  br i1 %tobool201, label %if.then.202, label %if.else.205

if.then.202:                                      ; preds = %if.end.200
  %87 = load i32*, i32** %buf, align 8
  %88 = load i32*, i32** %rtpypath, align 8
  %call203 = call i32* @wcscpy(i32* %87, i32* %88) #6
  %89 = load i32*, i32** %buf, align 8
  %call204 = call i32* @wcscat(i32* %89, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @calculate_path.delimiter, i32 0, i32 0)) #6
  br label %if.end.207

if.else.205:                                      ; preds = %if.end.200
  %90 = load i32*, i32** %buf, align 8
  %arrayidx206 = getelementptr i32, i32* %90, i64 0
  store i32 0, i32* %arrayidx206, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.else.205, %if.then.202
  %91 = load i32*, i32** %buf, align 8
  %arraydecay208 = getelementptr inbounds [4097 x i32], [4097 x i32]* %zip_path, i32 0, i32 0
  %call209 = call i32* @wcscat(i32* %91, i32* %arraydecay208) #6
  %92 = load i32*, i32** %buf, align 8
  %call210 = call i32* @wcscat(i32* %92, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @calculate_path.delimiter, i32 0, i32 0)) #6
  %93 = load i32*, i32** %_pythonpath, align 8
  store i32* %93, i32** %defpath, align 8
  br label %while.body.212

while.body.212:                                   ; preds = %if.end.207, %if.end.236
  %94 = load i32*, i32** %defpath, align 8
  %call214 = call i32* @wcschr(i32* %94, i32 58) #7
  store i32* %call214, i32** %delim213, align 8
  %95 = load i32*, i32** %defpath, align 8
  %arrayidx215 = getelementptr i32, i32* %95, i64 0
  %96 = load i32, i32* %arrayidx215, align 4
  %cmp216 = icmp ne i32 %96, 47
  br i1 %cmp216, label %if.then.218, label %if.end.221

if.then.218:                                      ; preds = %while.body.212
  %97 = load i32*, i32** %buf, align 8
  %call219 = call i32* @wcscat(i32* %97, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)) #6
  %98 = load i32*, i32** %buf, align 8
  %call220 = call i32* @wcscat(i32* %98, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @calculate_path.separator, i32 0, i32 0)) #6
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.218, %while.body.212
  %99 = load i32*, i32** %delim213, align 8
  %tobool222 = icmp ne i32* %99, null
  br i1 %tobool222, label %if.then.223, label %if.else.234

if.then.223:                                      ; preds = %if.end.221
  %100 = load i32*, i32** %delim213, align 8
  %101 = load i32*, i32** %defpath, align 8
  %sub.ptr.lhs.cast225 = ptrtoint i32* %100 to i64
  %sub.ptr.rhs.cast226 = ptrtoint i32* %101 to i64
  %sub.ptr.sub227 = sub i64 %sub.ptr.lhs.cast225, %sub.ptr.rhs.cast226
  %sub.ptr.div228 = sdiv exact i64 %sub.ptr.sub227, 4
  %add229 = add i64 %sub.ptr.div228, 1
  store i64 %add229, i64* %len224, align 8
  %102 = load i32*, i32** %buf, align 8
  %call230 = call i64 @wcslen(i32* %102) #7
  %103 = load i64, i64* %len224, align 8
  %add231 = add i64 %call230, %103
  store i64 %add231, i64* %end, align 8
  %104 = load i32*, i32** %buf, align 8
  %105 = load i32*, i32** %defpath, align 8
  %106 = load i64, i64* %len224, align 8
  %call232 = call i32* @wcsncat(i32* %104, i32* %105, i64 %106) #6
  %107 = load i32*, i32** %buf, align 8
  %108 = load i64, i64* %end, align 8
  %add.ptr233 = getelementptr i32, i32* %107, i64 %108
  store i32 0, i32* %add.ptr233, align 4
  br label %if.end.236

if.else.234:                                      ; preds = %if.end.221
  %109 = load i32*, i32** %buf, align 8
  %110 = load i32*, i32** %defpath, align 8
  %call235 = call i32* @wcscat(i32* %109, i32* %110) #6
  br label %while.end.238

if.end.236:                                       ; preds = %if.then.223
  %111 = load i32*, i32** %delim213, align 8
  %add.ptr237 = getelementptr i32, i32* %111, i64 1
  store i32* %add.ptr237, i32** %defpath, align 8
  br label %while.body.212

while.end.238:                                    ; preds = %if.else.234
  %112 = load i32*, i32** %buf, align 8
  %call239 = call i32* @wcscat(i32* %112, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @calculate_path.delimiter, i32 0, i32 0)) #6
  %113 = load i32*, i32** %buf, align 8
  %call240 = call i32* @wcscat(i32* %113, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0)) #6
  %114 = load i32*, i32** %buf, align 8
  store i32* %114, i32** @module_search_path, align 8
  %115 = load i32, i32* %pfound, align 4
  %cmp241 = icmp sgt i32 %115, 0
  br i1 %cmp241, label %if.then.243, label %if.else.248

if.then.243:                                      ; preds = %while.end.238
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0))
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0))
  %116 = load i32, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i64 0), align 4
  %tobool244 = icmp ne i32 %116, 0
  br i1 %tobool244, label %if.end.247, label %if.then.245

if.then.245:                                      ; preds = %if.then.243
  %call246 = call i32* @wcscpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @calculate_path.separator, i32 0, i32 0)) #6
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.245, %if.then.243
  br label %if.end.250

if.else.248:                                      ; preds = %while.end.238
  %117 = load i32*, i32** %_prefix, align 8
  %call249 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %117, i64 4096) #6
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.248, %if.end.247
  %118 = load i32, i32* %efound, align 4
  %cmp251 = icmp sgt i32 %118, 0
  br i1 %cmp251, label %if.then.253, label %if.else.258

if.then.253:                                      ; preds = %if.end.250
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0))
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0))
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0))
  %119 = load i32, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 0), align 4
  %tobool254 = icmp ne i32 %119, 0
  br i1 %tobool254, label %if.end.257, label %if.then.255

if.then.255:                                      ; preds = %if.then.253
  %call256 = call i32* @wcscpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @calculate_path.separator, i32 0, i32 0)) #6
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.255, %if.then.253
  br label %if.end.260

if.else.258:                                      ; preds = %if.end.250
  %120 = load i32*, i32** %_exec_prefix, align 8
  %call259 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %120, i64 4096) #6
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.258, %if.end.257
  %121 = load i32*, i32** %_pythonpath, align 8
  %122 = bitcast i32* %121 to i8*
  call void @PyMem_RawFree(i8* %122)
  %123 = load i32*, i32** %_prefix, align 8
  %124 = bitcast i32* %123 to i8*
  call void @PyMem_RawFree(i8* %124)
  %125 = load i32*, i32** %_exec_prefix, align 8
  %126 = bitcast i32* %125 to i8*
  call void @PyMem_RawFree(i8* %126)
  %127 = load i32*, i32** %lib_python, align 8
  %128 = bitcast i32* %127 to i8*
  call void @PyMem_RawFree(i8* %128)
  %129 = load i32*, i32** %rtpypath, align 8
  %130 = bitcast i32* %129 to i8*
  call void @PyMem_RawFree(i8* %130)
  ret void
}

; Function Attrs: nounwind uwtable
define i32* @Py_GetPrefix() #0 {
entry:
  %0 = load i32*, i32** @module_search_path, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @calculate_path()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i32* @Py_GetExecPrefix() #0 {
entry:
  %0 = load i32*, i32** @module_search_path, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @calculate_path()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i32* @Py_GetProgramFullPath() #0 {
entry:
  %0 = load i32*, i32** @module_search_path, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @calculate_path()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @progpath, i32 0, i32 0)
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare i32* @Py_GetPythonHome() #1

declare i32* @_Py_char2wchar(i8*, i64*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

; Function Attrs: nounwind readonly
declare i32* @wcschr(i32*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @joinpath(i32* %buffer, i32* %stuff) #0 {
entry:
  %buffer.addr = alloca i32*, align 8
  %stuff.addr = alloca i32*, align 8
  %n = alloca i64, align 8
  %k = alloca i64, align 8
  store i32* %buffer, i32** %buffer.addr, align 8
  store i32* %stuff, i32** %stuff.addr, align 8
  %0 = load i32*, i32** %stuff.addr, align 8
  %arrayidx = getelementptr i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %n, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %2 = load i32*, i32** %buffer.addr, align 8
  %call = call i64 @wcslen(i32* %2) #7
  store i64 %call, i64* %n, align 8
  %3 = load i64, i64* %n, align 8
  %cmp1 = icmp ugt i64 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %4 = load i64, i64* %n, align 8
  %sub = sub i64 %4, 1
  %5 = load i32*, i32** %buffer.addr, align 8
  %arrayidx2 = getelementptr i32, i32* %5, i64 %sub
  %6 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp ne i32 %6, 47
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %7 = load i64, i64* %n, align 8
  %cmp5 = icmp ult i64 %7, 4096
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true.4
  %8 = load i64, i64* %n, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %n, align 8
  %9 = load i32*, i32** %buffer.addr, align 8
  %arrayidx7 = getelementptr i32, i32* %9, i64 %8
  store i32 47, i32* %arrayidx7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %land.lhs.true.4, %land.lhs.true, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %10 = load i64, i64* %n, align 8
  %cmp9 = icmp ugt i64 %10, 4096
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  call void @Py_FatalError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i32 0, i32 0)) #8
  unreachable

if.end.11:                                        ; preds = %if.end.8
  %11 = load i32*, i32** %stuff.addr, align 8
  %call12 = call i64 @wcslen(i32* %11) #7
  store i64 %call12, i64* %k, align 8
  %12 = load i64, i64* %n, align 8
  %13 = load i64, i64* %k, align 8
  %add = add i64 %12, %13
  %cmp13 = icmp ugt i64 %add, 4096
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %14 = load i64, i64* %n, align 8
  %sub15 = sub i64 4096, %14
  store i64 %sub15, i64* %k, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.11
  %15 = load i32*, i32** %buffer.addr, align 8
  %16 = load i64, i64* %n, align 8
  %add.ptr = getelementptr i32, i32* %15, i64 %16
  %17 = load i32*, i32** %stuff.addr, align 8
  %18 = load i64, i64* %k, align 8
  %call17 = call i32* @wcsncpy(i32* %add.ptr, i32* %17, i64 %18) #6
  %19 = load i64, i64* %n, align 8
  %20 = load i64, i64* %k, align 8
  %add18 = add i64 %19, %20
  %21 = load i32*, i32** %buffer.addr, align 8
  %arrayidx19 = getelementptr i32, i32* %21, i64 %add18
  store i32 0, i32* %arrayidx19, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @isxfile(i32* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i32*, align 8
  %buf = alloca %struct.stat, align 8
  store i32* %filename, i32** %filename.addr, align 8
  %0 = load i32*, i32** %filename.addr, align 8
  %call = call i32 @_Py_wstat(i32* %0, %struct.stat* %buf)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 3
  %1 = load i32, i32* %st_mode, align 4
  %and = and i32 %1, 61440
  %cmp1 = icmp eq i32 %and, 32768
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %st_mode4 = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 3
  %2 = load i32, i32* %st_mode4, align 4
  %and5 = and i32 %2, 73
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.2, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal void @absolutize(i32* %path) #0 {
entry:
  %path.addr = alloca i32*, align 8
  %buffer = alloca [4097 x i32], align 16
  store i32* %path, i32** %path.addr, align 8
  %0 = load i32*, i32** %path.addr, align 8
  %arrayidx = getelementptr i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [4097 x i32], [4097 x i32]* %buffer, i32 0, i32 0
  %2 = load i32*, i32** %path.addr, align 8
  call void @copy_absolute(i32* %arraydecay, i32* %2, i64 4097)
  %3 = load i32*, i32** %path.addr, align 8
  %arraydecay1 = getelementptr inbounds [4097 x i32], [4097 x i32]* %buffer, i32 0, i32 0
  %call = call i32* @wcscpy(i32* %3, i32* %arraydecay1) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @_Py_wreadlink(i32*, i32*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @reduce(i32* %dir) #0 {
entry:
  %dir.addr = alloca i32*, align 8
  %i = alloca i64, align 8
  store i32* %dir, i32** %dir.addr, align 8
  %0 = load i32*, i32** %dir.addr, align 8
  %call = call i64 @wcslen(i32* %0) #7
  store i64 %call, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %i, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i64, i64* %i, align 8
  %3 = load i32*, i32** %dir.addr, align 8
  %arrayidx = getelementptr i32, i32* %3, i64 %2
  %4 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ne i32 %4, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i64, i64* %i, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i64, i64* %i, align 8
  %8 = load i32*, i32** %dir.addr, align 8
  %arrayidx2 = getelementptr i32, i32* %8, i64 %7
  store i32 0, i32* %arrayidx2, align 4
  ret void
}

declare %struct._IO_FILE* @_Py_wfopen(i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind uwtable
define internal i32 @find_env_config_value(%struct._IO_FILE* %env_file, i32* %key, i32* %value) #0 {
entry:
  %env_file.addr = alloca %struct._IO_FILE*, align 8
  %key.addr = alloca i32*, align 8
  %value.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  %buffer = alloca [8193 x i8], align 16
  %p = alloca i8*, align 8
  %tmpbuffer = alloca [8193 x i32], align 16
  %decoded = alloca %struct._object*, align 8
  %n = alloca i32, align 4
  %k = alloca i64, align 8
  %state = alloca i32*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %tok = alloca i32*, align 8
  store %struct._IO_FILE* %env_file, %struct._IO_FILE** %env_file.addr, align 8
  store i32* %key, i32** %key.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  store i32 0, i32* %result, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file.addr, align 8
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 0, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %if.end.53, %if.then.13, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file.addr, align 8
  %call1 = call i32 @feof(%struct._IO_FILE* %1) #6
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [8193 x i8], [8193 x i8]* %buffer, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %env_file.addr, align 8
  %call2 = call i8* @fgets(i8* %arraydecay, i32 8192, %struct._IO_FILE* %2)
  store i8* %call2, i8** %p, align 8
  %3 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %4 = load i8*, i8** %p, align 8
  %call3 = call i64 @strlen(i8* %4) #7
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %n, align 4
  %5 = load i32, i32* %n, align 4
  %sub = sub i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %6 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp ne i32 %conv4, 10
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %while.end

if.end.8:                                         ; preds = %if.end
  %8 = load i8*, i8** %p, align 8
  %arrayidx9 = getelementptr i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %9 to i32
  %cmp11 = icmp eq i32 %conv10, 35
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  br label %while.cond

if.end.14:                                        ; preds = %if.end.8
  %arraydecay15 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buffer, i32 0, i32 0
  %10 = load i32, i32* %n, align 4
  %conv16 = sext i32 %10 to i64
  %call17 = call %struct._object* @PyUnicode_DecodeUTF8(i8* %arraydecay15, i64 %conv16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* %call17, %struct._object** %decoded, align 8
  %11 = load %struct._object*, %struct._object** %decoded, align 8
  %cmp18 = icmp ne %struct._object* %11, null
  br i1 %cmp18, label %if.then.20, label %if.end.53

if.then.20:                                       ; preds = %if.end.14
  %12 = load %struct._object*, %struct._object** %decoded, align 8
  %arraydecay21 = getelementptr inbounds [8193 x i32], [8193 x i32]* %tmpbuffer, i32 0, i32 0
  %call22 = call i64 @PyUnicode_AsWideChar(%struct._object* %12, i32* %arraydecay21, i64 8192)
  store i64 %call22, i64* %k, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %13 = load %struct._object*, %struct._object** %decoded, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %do.body
  br label %if.end.26

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.26
  %20 = load i64, i64* %k, align 8
  %cmp27 = icmp sge i64 %20, 0
  br i1 %cmp27, label %if.then.29, label %if.end.52

if.then.29:                                       ; preds = %do.end
  %arraydecay30 = getelementptr inbounds [8193 x i32], [8193 x i32]* %tmpbuffer, i32 0, i32 0
  %call31 = call i32* @wcstok(i32* %arraydecay30, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.18, i32 0, i32 0), i32** %state) #6
  store i32* %call31, i32** %tok, align 8
  %21 = load i32*, i32** %tok, align 8
  %cmp32 = icmp ne i32* %21, null
  br i1 %cmp32, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.then.29
  %22 = load i32*, i32** %tok, align 8
  %23 = load i32*, i32** %key.addr, align 8
  %call34 = call i32 @wcscmp(i32* %22, i32* %23) #7
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.51, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true
  %call37 = call i32* @wcstok(i32* null, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.19, i32 0, i32 0), i32** %state) #6
  store i32* %call37, i32** %tok, align 8
  %24 = load i32*, i32** %tok, align 8
  %cmp38 = icmp ne i32* %24, null
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.50

land.lhs.true.40:                                 ; preds = %if.then.36
  %25 = load i32*, i32** %tok, align 8
  %call41 = call i32 @wcscmp(i32* %25, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.20, i32 0, i32 0)) #7
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.50, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.40
  %call44 = call i32* @wcstok(i32* null, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.21, i32 0, i32 0), i32** %state) #6
  store i32* %call44, i32** %tok, align 8
  %26 = load i32*, i32** %tok, align 8
  %cmp45 = icmp ne i32* %26, null
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.then.43
  %27 = load i32*, i32** %value.addr, align 8
  %28 = load i32*, i32** %tok, align 8
  %call48 = call i32* @wcsncpy(i32* %27, i32* %28, i64 4096) #6
  store i32 1, i32* %result, align 4
  br label %while.end

if.end.49:                                        ; preds = %if.then.43
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %land.lhs.true.40, %if.then.36
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %land.lhs.true, %if.then.29
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %do.end
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.14
  br label %while.cond

while.end:                                        ; preds = %if.then.47, %if.then.7, %if.then, %while.cond
  %29 = load i32, i32* %result, align 4
  ret i32 %29
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @search_for_prefix(i32* %argv0_path, i32* %home, i32* %_prefix, i32* %lib_python) #0 {
entry:
  %retval = alloca i32, align 4
  %argv0_path.addr = alloca i32*, align 8
  %home.addr = alloca i32*, align 8
  %_prefix.addr = alloca i32*, align 8
  %lib_python.addr = alloca i32*, align 8
  %n = alloca i64, align 8
  %vpath = alloca i32*, align 8
  %delim = alloca i32*, align 8
  store i32* %argv0_path, i32** %argv0_path.addr, align 8
  store i32* %home, i32** %home.addr, align 8
  store i32* %_prefix, i32** %_prefix.addr, align 8
  store i32* %lib_python, i32** %lib_python.addr, align 8
  %0 = load i32*, i32** %home.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %home.addr, align 8
  %call = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %1, i64 4096) #6
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i64 4096), align 4
  %call1 = call i32* @wcschr(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32 58) #7
  store i32* %call1, i32** %delim, align 8
  %2 = load i32*, i32** %delim, align 8
  %tobool2 = icmp ne i32* %2, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %3 = load i32*, i32** %delim, align 8
  store i32 0, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %4 = load i32*, i32** %lib_python.addr, align 8
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %4)
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.22, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %entry
  %5 = load i32*, i32** %argv0_path.addr, align 8
  %call5 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %5, i64 4096) #6
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i64 4096), align 4
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* getelementptr inbounds ([14 x i32], [14 x i32]* @.str.23, i32 0, i32 0))
  %call6 = call i32 @isfile(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0))
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.17

if.then.8:                                        ; preds = %if.end.4
  %call9 = call i32* @_Py_char2wchar(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i64* null)
  store i32* %call9, i32** %vpath, align 8
  %6 = load i32*, i32** %vpath, align 8
  %cmp = icmp ne i32* %6, null
  br i1 %cmp, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.then.8
  %7 = load i32*, i32** %argv0_path.addr, align 8
  %call11 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %7, i64 4096) #6
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i64 4096), align 4
  %8 = load i32*, i32** %vpath, align 8
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %8)
  %9 = load i32*, i32** %vpath, align 8
  %10 = bitcast i32* %9 to i8*
  call void @PyMem_RawFree(i8* %10)
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @.str.25, i32 0, i32 0))
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.22, i32 0, i32 0))
  %call12 = call i32 @ismodule(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0))
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.4
  %11 = load i32*, i32** %argv0_path.addr, align 8
  call void @copy_absolute(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %11, i64 4097)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.17
  %call18 = call i64 @wcslen(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0)) #7
  store i64 %call18, i64* %n, align 8
  %12 = load i32*, i32** %lib_python.addr, align 8
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %12)
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.22, i32 0, i32 0))
  %call19 = call i32 @ismodule(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0))
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.body
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %do.body
  %13 = load i64, i64* %n, align 8
  %arrayidx = getelementptr [4097 x i32], [4097 x i32]* @prefix, i32 0, i64 %13
  store i32 0, i32* %arrayidx, align 4
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0))
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  %14 = load i32, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i64 0), align 4
  %tobool23 = icmp ne i32 %14, 0
  br i1 %tobool23, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load i32*, i32** %_prefix.addr, align 8
  %call24 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %15, i64 4096) #6
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i64 4096), align 4
  %16 = load i32*, i32** %lib_python.addr, align 8
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* %16)
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.22, i32 0, i32 0))
  %call25 = call i32 @ismodule(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @prefix, i32 0, i32 0))
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.end
  store i32 1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.27, %if.then.21, %if.then.14, %if.end
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @search_for_exec_prefix(i32* %argv0_path, i32* %home, i32* %_exec_prefix, i32* %lib_python) #0 {
entry:
  %retval = alloca i32, align 4
  %argv0_path.addr = alloca i32*, align 8
  %home.addr = alloca i32*, align 8
  %_exec_prefix.addr = alloca i32*, align 8
  %lib_python.addr = alloca i32*, align 8
  %n = alloca i64, align 8
  %delim = alloca i32*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %buf = alloca [4097 x i8], align 16
  %decoded = alloca %struct._object*, align 8
  %rel_builddir_path = alloca [4097 x i32], align 16
  %k = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32* %argv0_path, i32** %argv0_path.addr, align 8
  store i32* %home, i32** %home.addr, align 8
  store i32* %_exec_prefix, i32** %_exec_prefix.addr, align 8
  store i32* %lib_python, i32** %lib_python.addr, align 8
  %0 = load i32*, i32** %home.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %home.addr, align 8
  %call = call i32* @wcschr(i32* %1, i32 58) #7
  store i32* %call, i32** %delim, align 8
  %2 = load i32*, i32** %delim, align 8
  %tobool1 = icmp ne i32* %2, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load i32*, i32** %delim, align 8
  %add.ptr = getelementptr i32, i32* %3, i64 1
  %call3 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %add.ptr, i64 4096) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  %4 = load i32*, i32** %home.addr, align 8
  %call4 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %4, i64 4096) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 4096), align 4
  %5 = load i32*, i32** %lib_python.addr, align 8
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %5)
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* getelementptr inbounds ([12 x i32], [12 x i32]* @.str.28, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %entry
  %6 = load i32*, i32** %argv0_path.addr, align 8
  %call6 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %6, i64 4096) #6
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 4096), align 4
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* getelementptr inbounds ([15 x i32], [15 x i32]* @.str.29, i32 0, i32 0))
  %call7 = call i32 @isfile(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0))
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.34

if.then.9:                                        ; preds = %if.end.5
  %call10 = call %struct._IO_FILE* @_Py_wfopen(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.30, i32 0, i32 0))
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %f, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %7, null
  br i1 %cmp, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.then.9
  %call12 = call i32* @__errno_location() #9
  store i32 0, i32* %call12, align 4
  br label %if.end.33

if.else.13:                                       ; preds = %if.then.9
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call14 = call i64 @fread(i8* %arraydecay, i64 1, i64 4096, %struct._IO_FILE* %8)
  store i64 %call14, i64* %n, align 8
  %9 = load i64, i64* %n, align 8
  %arrayidx = getelementptr [4097 x i8], [4097 x i8]* %buf, i32 0, i64 %9
  store i8 0, i8* %arrayidx, align 1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call15 = call i32 @fclose(%struct._IO_FILE* %10)
  %arraydecay16 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %11 = load i64, i64* %n, align 8
  %call17 = call %struct._object* @PyUnicode_DecodeUTF8(i8* %arraydecay16, i64 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* %call17, %struct._object** %decoded, align 8
  %12 = load %struct._object*, %struct._object** %decoded, align 8
  %cmp18 = icmp ne %struct._object* %12, null
  br i1 %cmp18, label %if.then.19, label %if.end.32

if.then.19:                                       ; preds = %if.else.13
  %13 = load %struct._object*, %struct._object** %decoded, align 8
  %arraydecay20 = getelementptr inbounds [4097 x i32], [4097 x i32]* %rel_builddir_path, i32 0, i32 0
  %call21 = call i64 @PyUnicode_AsWideChar(%struct._object* %13, i32* %arraydecay20, i64 4096)
  store i64 %call21, i64* %k, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.19
  %14 = load %struct._object*, %struct._object** %decoded, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp22 = icmp ne i64 %dec, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body
  br label %if.end.25

if.else.24:                                       ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.25
  %21 = load i64, i64* %k, align 8
  %cmp26 = icmp sge i64 %21, 0
  br i1 %cmp26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %do.end
  %22 = load i64, i64* %k, align 8
  %arrayidx28 = getelementptr [4097 x i32], [4097 x i32]* %rel_builddir_path, i32 0, i64 %22
  store i32 0, i32* %arrayidx28, align 4
  %23 = load i32*, i32** %argv0_path.addr, align 8
  %call29 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %23, i64 4096) #6
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 4096), align 4
  %arraydecay30 = getelementptr inbounds [4097 x i32], [4097 x i32]* %rel_builddir_path, i32 0, i32 0
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %arraydecay30)
  store i32 -1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %do.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.else.13
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.11
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.5
  %24 = load i32*, i32** %argv0_path.addr, align 8
  call void @copy_absolute(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %24, i64 4097)
  br label %do.body.35

do.body.35:                                       ; preds = %do.cond, %if.end.34
  %call36 = call i64 @wcslen(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0)) #7
  store i64 %call36, i64* %n, align 8
  %25 = load i32*, i32** %lib_python.addr, align 8
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %25)
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* getelementptr inbounds ([12 x i32], [12 x i32]* @.str.28, i32 0, i32 0))
  %call37 = call i32 @isdir(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0))
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %do.body.35
  store i32 1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %do.body.35
  %26 = load i64, i64* %n, align 8
  %arrayidx41 = getelementptr [4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 %26
  store i32 0, i32* %arrayidx41, align 4
  call void @reduce(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0))
  br label %do.cond

do.cond:                                          ; preds = %if.end.40
  %27 = load i32, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 0), align 4
  %tobool42 = icmp ne i32 %27, 0
  br i1 %tobool42, label %do.body.35, label %do.end.43

do.end.43:                                        ; preds = %do.cond
  %28 = load i32*, i32** %_exec_prefix.addr, align 8
  %call44 = call i32* @wcsncpy(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %28, i64 4096) #6
  store i32 0, i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i64 4096), align 4
  %29 = load i32*, i32** %lib_python.addr, align 8
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* %29)
  call void @joinpath(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0), i32* getelementptr inbounds ([12 x i32], [12 x i32]* @.str.28, i32 0, i32 0))
  %call45 = call i32 @isdir(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @exec_prefix, i32 0, i32 0))
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %do.end.43
  store i32 1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %do.end.43
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.47, %if.then.39, %if.then.27, %if.end
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare i32* @wcscat(i32*, i32*) #2

; Function Attrs: nounwind
declare i32* @wcsncat(i32*, i32*, i64) #2

declare i32 @_Py_wstat(i32*, %struct.stat*) #1

; Function Attrs: nounwind uwtable
define internal void @copy_absolute(i32* %path, i32* %p, i64 %pathlen) #0 {
entry:
  %path.addr = alloca i32*, align 8
  %p.addr = alloca i32*, align 8
  %pathlen.addr = alloca i64, align 8
  store i32* %path, i32** %path.addr, align 8
  store i32* %p, i32** %p.addr, align 8
  store i64 %pathlen, i64* %pathlen.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %path.addr, align 8
  %3 = load i32*, i32** %p.addr, align 8
  %call = call i32* @wcscpy(i32* %2, i32* %3) #6
  br label %if.end.10

if.else:                                          ; preds = %entry
  %4 = load i32*, i32** %path.addr, align 8
  %5 = load i64, i64* %pathlen.addr, align 8
  %call1 = call i32* @_Py_wgetcwd(i32* %4, i64 %5)
  %tobool = icmp ne i32* %call1, null
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  %6 = load i32*, i32** %path.addr, align 8
  %7 = load i32*, i32** %p.addr, align 8
  %call3 = call i32* @wcscpy(i32* %6, i32* %7) #6
  br label %if.end.10

if.end:                                           ; preds = %if.else
  %8 = load i32*, i32** %p.addr, align 8
  %arrayidx4 = getelementptr i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp eq i32 %9, 46
  br i1 %cmp5, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32*, i32** %p.addr, align 8
  %arrayidx6 = getelementptr i32, i32* %10, i64 1
  %11 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp eq i32 %11, 47
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  %12 = load i32*, i32** %p.addr, align 8
  %add.ptr = getelementptr i32, i32* %12, i64 2
  store i32* %add.ptr, i32** %p.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %if.end
  %13 = load i32*, i32** %path.addr, align 8
  %14 = load i32*, i32** %p.addr, align 8
  call void @joinpath(i32* %13, i32* %14)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.2, %if.end.9, %if.then
  ret void
}

declare i32* @_Py_wgetcwd(i32*, i64) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare %struct._object* @PyUnicode_DecodeUTF8(i8*, i64, i8*) #1

declare i64 @PyUnicode_AsWideChar(%struct._object*, i32*, i64) #1

; Function Attrs: nounwind
declare i32* @wcstok(i32*, i32*, i32**) #2

; Function Attrs: nounwind readonly
declare i32 @wcscmp(i32*, i32*) #3

; Function Attrs: nounwind uwtable
define internal i32 @isfile(i32* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i32*, align 8
  %buf = alloca %struct.stat, align 8
  store i32* %filename, i32** %filename.addr, align 8
  %0 = load i32*, i32** %filename.addr, align 8
  %call = call i32 @_Py_wstat(i32* %0, %struct.stat* %buf)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 3
  %1 = load i32, i32* %st_mode, align 4
  %and = and i32 %1, 61440
  %cmp1 = icmp eq i32 %and, 32768
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @ismodule(i32* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i32*, align 8
  store i32* %filename, i32** %filename.addr, align 8
  %0 = load i32*, i32** %filename.addr, align 8
  %call = call i32 @isfile(i32* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %filename.addr, align 8
  %call1 = call i64 @wcslen(i32* %1) #7
  %cmp = icmp ult i64 %call1, 4096
  br i1 %cmp, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  %2 = load i32*, i32** %filename.addr, align 8
  %3 = load i32, i32* @Py_OptimizeFlag, align 4
  %tobool3 = icmp ne i32 %3, 0
  %cond = select i1 %tobool3, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.26, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.27, i32 0, i32 0)
  %call4 = call i32* @wcscat(i32* %2, i32* %cond) #6
  %4 = load i32*, i32** %filename.addr, align 8
  %call5 = call i32 @isfile(i32* %4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.2
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.2
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @isdir(i32* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i32*, align 8
  %buf = alloca %struct.stat, align 8
  store i32* %filename, i32** %filename.addr, align 8
  %0 = load i32*, i32** %filename.addr, align 8
  %call = call i32 @_Py_wstat(i32* %0, %struct.stat* %buf)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 3
  %1 = load i32, i32* %st_mode, align 4
  %and = and i32 %1, 61440
  %cmp1 = icmp eq i32 %and, 16384
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
