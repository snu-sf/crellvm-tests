; ModuleID = './myreadline.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct._Py_atomic_address = type { i8* }

@PyOS_InputHook = global i32 ()* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"input line too long\00", align 1
@_PyOS_ReadlineTState = common global %struct._ts* null, align 8
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"can't re-enter readline\00", align 1
@PyOS_ReadlineFunctionPointer = common global i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* null, align 8
@_PyOS_ReadlineLock = internal global i8* null, align 8

; Function Attrs: nounwind uwtable
define i8* @PyOS_StdioReadline(%struct._IO_FILE* %sys_stdin, %struct._IO_FILE* %sys_stdout, i8* %prompt) #0 {
entry:
  %retval = alloca i8*, align 8
  %sys_stdin.addr = alloca %struct._IO_FILE*, align 8
  %sys_stdout.addr = alloca %struct._IO_FILE*, align 8
  %prompt.addr = alloca i8*, align 8
  %n = alloca i64, align 8
  %p = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %incr = alloca i64, align 8
  store %struct._IO_FILE* %sys_stdin, %struct._IO_FILE** %sys_stdin.addr, align 8
  store %struct._IO_FILE* %sys_stdout, %struct._IO_FILE** %sys_stdout.addr, align 8
  store i8* %prompt, i8** %prompt.addr, align 8
  store i64 100, i64* %n, align 8
  %0 = load i64, i64* %n, align 8
  %call = call i8* @PyMem_RawMalloc(i64 %0)
  store i8* %call, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdout.addr, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %2)
  %3 = load i8*, i8** %prompt.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** %prompt.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %5)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %6)
  %7 = load i8*, i8** %p, align 8
  %8 = load i64, i64* %n, align 8
  %conv = trunc i64 %8 to i32
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdin.addr, align 8
  %call6 = call i32 @my_fgets(i8* %7, i32 %conv, %struct._IO_FILE* %9)
  switch i32 %call6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.7
    i32 -1, label %sw.bb.8
    i32 -2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.end.4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end.4
  %10 = load i8*, i8** %p, align 8
  call void @PyMem_RawFree(i8* %10)
  store i8* null, i8** %retval
  br label %return

sw.bb.8:                                          ; preds = %if.end.4, %if.end.4
  br label %sw.default

sw.default:                                       ; preds = %if.end.4, %sw.bb.8
  %11 = load i8*, i8** %p, align 8
  store i8 0, i8* %11, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %12 = load i8*, i8** %p, align 8
  %call9 = call i64 @strlen(i8* %12) #7
  store i64 %call9, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %sw.epilog
  %13 = load i64, i64* %n, align 8
  %cmp10 = icmp ugt i64 %13, 0
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load i64, i64* %n, align 8
  %sub = sub i64 %14, 1
  %15 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr i8, i8* %15, i64 %sub
  %16 = load i8, i8* %arrayidx, align 1
  %conv12 = sext i8 %16 to i32
  %cmp13 = icmp ne i32 %conv12, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load i64, i64* %n, align 8
  %add = add i64 %18, 2
  store i64 %add, i64* %incr, align 8
  %19 = load i64, i64* %incr, align 8
  %cmp15 = icmp ugt i64 %19, 2147483647
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body
  %20 = load i8*, i8** %p, align 8
  call void @PyMem_RawFree(i8* %20)
  %21 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.18:                                        ; preds = %while.body
  %22 = load i8*, i8** %p, align 8
  %23 = load i64, i64* %n, align 8
  %24 = load i64, i64* %incr, align 8
  %add19 = add i64 %23, %24
  %call20 = call i8* @PyMem_RawRealloc(i8* %22, i64 %add19)
  store i8* %call20, i8** %pr, align 8
  %25 = load i8*, i8** %pr, align 8
  %cmp21 = icmp eq i8* %25, null
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.18
  %26 = load i8*, i8** %p, align 8
  call void @PyMem_RawFree(i8* %26)
  %call24 = call %struct._object* @PyErr_NoMemory()
  store i8* null, i8** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.18
  %27 = load i8*, i8** %pr, align 8
  store i8* %27, i8** %p, align 8
  %28 = load i8*, i8** %p, align 8
  %29 = load i64, i64* %n, align 8
  %add.ptr = getelementptr i8, i8* %28, i64 %29
  %30 = load i64, i64* %incr, align 8
  %conv26 = trunc i64 %30 to i32
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdin.addr, align 8
  %call27 = call i32 @my_fgets(i8* %add.ptr, i32 %conv26, %struct._IO_FILE* %31)
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.25
  br label %while.end

if.end.31:                                        ; preds = %if.end.25
  %32 = load i8*, i8** %p, align 8
  %33 = load i64, i64* %n, align 8
  %add.ptr32 = getelementptr i8, i8* %32, i64 %33
  %call33 = call i64 @strlen(i8* %add.ptr32) #7
  %34 = load i64, i64* %n, align 8
  %add34 = add i64 %34, %call33
  store i64 %add34, i64* %n, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.30, %land.end
  %35 = load i8*, i8** %p, align 8
  %36 = load i64, i64* %n, align 8
  %add35 = add i64 %36, 1
  %call36 = call i8* @PyMem_RawRealloc(i8* %35, i64 %add35)
  store i8* %call36, i8** %pr, align 8
  %37 = load i8*, i8** %pr, align 8
  %cmp37 = icmp eq i8* %37, null
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %while.end
  %38 = load i8*, i8** %p, align 8
  call void @PyMem_RawFree(i8* %38)
  %call40 = call %struct._object* @PyErr_NoMemory()
  store i8* null, i8** %retval
  br label %return

if.end.41:                                        ; preds = %while.end
  %39 = load i8*, i8** %pr, align 8
  store i8* %39, i8** %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.39, %if.then.23, %if.then.17, %sw.bb.7, %if.then
  %40 = load i8*, i8** %retval
  ret i8* %40
}

declare i8* @PyMem_RawMalloc(i64) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @my_fgets(i8* %buf, i32 %len, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %p = alloca i8*, align 8
  %err = alloca i32, align 4
  %s = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.16
  %0 = load i32 ()*, i32 ()** @PyOS_InputHook, align 8
  %cmp = icmp ne i32 ()* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %1 = load i32 ()*, i32 ()** @PyOS_InputHook, align 8
  %call = call i32 %1()
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call1 = call i32* @__errno_location() #8
  store i32 0, i32* %call1, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @clearerr(%struct._IO_FILE* %2) #5
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load i32, i32* %len.addr, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i8* @fgets(i8* %3, i32 %4, %struct._IO_FILE* %5)
  store i8* %call2, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %cmp3 = icmp ne i8* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %call6 = call i32* @__errno_location() #8
  %7 = load i32, i32* %call6, align 4
  store i32 %7, i32* %err, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 @feof(%struct._IO_FILE* %8) #5
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @clearerr(%struct._IO_FILE* %9) #5
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %10 = load i32, i32* %err, align 4
  %cmp10 = icmp eq i32 %10, 4
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.end.9
  %11 = load %struct._ts*, %struct._ts** @_PyOS_ReadlineTState, align 8
  call void @PyEval_RestoreThread(%struct._ts* %11)
  %call12 = call i32 @PyErr_CheckSignals()
  store i32 %call12, i32* %s, align 4
  %call13 = call %struct._ts* @PyEval_SaveThread()
  %12 = load i32, i32* %s, align 4
  %cmp14 = icmp slt i32 %12, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.11
  br label %while.body

if.end.17:                                        ; preds = %if.end.9
  %call18 = call i32 @PyOS_InterruptOccurred()
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  store i32 -2, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.then.15, %if.then.8, %if.then.4
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare void @PyMem_RawFree(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i8* @PyMem_RawRealloc(i8*, i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind uwtable
define i8* @PyOS_Readline(%struct._IO_FILE* %sys_stdin, %struct._IO_FILE* %sys_stdout, i8* %prompt) #0 {
entry:
  %retval = alloca i8*, align 8
  %sys_stdin.addr = alloca %struct._IO_FILE*, align 8
  %sys_stdout.addr = alloca %struct._IO_FILE*, align 8
  %prompt.addr = alloca i8*, align 8
  %rv = alloca i8*, align 8
  %res = alloca i8*, align 8
  %len = alloca i64, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %atomic_val11 = alloca %struct._Py_atomic_address*, align 8
  %result13 = alloca i8*, align 8
  %volatile_data15 = alloca i8**, align 8
  %order18 = alloca i32, align 4
  %tmp25 = alloca i8*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct._IO_FILE* %sys_stdin, %struct._IO_FILE** %sys_stdin.addr, align 8
  store %struct._IO_FILE* %sys_stdout, %struct._IO_FILE** %sys_stdout.addr, align 8
  store i8* %prompt, i8** %prompt.addr, align 8
  %0 = load %struct._ts*, %struct._ts** @_PyOS_ReadlineTState, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %1, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %2 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %3 = bitcast %struct._Py_atomic_address* %2 to i8*
  %4 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %3, i32 %4)
  %5 = load i32, i32* %order, align 4
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %6 = load i8**, i8*** %volatile_data, align 8
  %7 = load volatile i8*, i8** %6, align 8
  store i8* %7, i8** %result, align 8
  %8 = load i32, i32* %order, align 4
  switch i32 %8, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %9 = load i8*, i8** %result, align 8
  store i8* %9, i8** %tmp
  %10 = load i8*, i8** %tmp
  %11 = bitcast i8* %10 to %struct._ts*
  %cmp = icmp eq %struct._ts* %0, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  %12 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %13 = load i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)*, i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)** @PyOS_ReadlineFunctionPointer, align 8
  %cmp4 = icmp eq i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* %13, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)* @PyOS_StdioReadline, i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)** @PyOS_ReadlineFunctionPointer, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %14 = load i8*, i8** @_PyOS_ReadlineLock, align 8
  %cmp7 = icmp eq i8* %14, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %call = call i8* @PyThread_allocate_lock()
  store i8* %call, i8** @_PyOS_ReadlineLock, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val11, align 8
  %15 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val11, align 8
  %_value16 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %15, i32 0, i32 0
  store i8** %_value16, i8*** %volatile_data15, align 8
  store i32 0, i32* %order18, align 4
  %16 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val11, align 8
  %17 = bitcast %struct._Py_atomic_address* %16 to i8*
  %18 = load i32, i32* %order18, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %17, i32 %18)
  %19 = load i32, i32* %order18, align 4
  switch i32 %19, label %sw.default.20 [
    i32 2, label %sw.bb.19
    i32 3, label %sw.bb.19
    i32 4, label %sw.bb.19
  ]

sw.bb.19:                                         ; preds = %if.end.9, %if.end.9, %if.end.9
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.21

sw.default.20:                                    ; preds = %if.end.9
  br label %sw.epilog.21

sw.epilog.21:                                     ; preds = %sw.default.20, %sw.bb.19
  %20 = load i8**, i8*** %volatile_data15, align 8
  %21 = load volatile i8*, i8** %20, align 8
  store i8* %21, i8** %result13, align 8
  %22 = load i32, i32* %order18, align 4
  switch i32 %22, label %sw.default.23 [
    i32 1, label %sw.bb.22
    i32 3, label %sw.bb.22
    i32 4, label %sw.bb.22
  ]

sw.bb.22:                                         ; preds = %sw.epilog.21, %sw.epilog.21, %sw.epilog.21
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.24

sw.default.23:                                    ; preds = %sw.epilog.21
  br label %sw.epilog.24

sw.epilog.24:                                     ; preds = %sw.default.23, %sw.bb.22
  %23 = load i8*, i8** %result13, align 8
  store i8* %23, i8** %tmp25
  %24 = load i8*, i8** %tmp25
  %25 = bitcast i8* %24 to %struct._ts*
  store %struct._ts* %25, %struct._ts** @_PyOS_ReadlineTState, align 8
  %call27 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call27, %struct._ts** %_save, align 8
  %26 = load i8*, i8** @_PyOS_ReadlineLock, align 8
  %call28 = call i32 @PyThread_acquire_lock(i8* %26, i32 1)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdin.addr, align 8
  %call29 = call i32 @fileno(%struct._IO_FILE* %27) #5
  %call30 = call i32 @isatty(i32 %call29) #5
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.34

lor.lhs.false:                                    ; preds = %sw.epilog.24
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdout.addr, align 8
  %call31 = call i32 @fileno(%struct._IO_FILE* %28) #5
  %call32 = call i32 @isatty(i32 %call31) #5
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else, label %if.then.34

if.then.34:                                       ; preds = %lor.lhs.false, %sw.epilog.24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdin.addr, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdout.addr, align 8
  %31 = load i8*, i8** %prompt.addr, align 8
  %call35 = call i8* @PyOS_StdioReadline(%struct._IO_FILE* %29, %struct._IO_FILE* %30, i8* %31)
  store i8* %call35, i8** %rv, align 8
  br label %if.end.37

if.else:                                          ; preds = %lor.lhs.false
  %32 = load i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)*, i8* (%struct._IO_FILE*, %struct._IO_FILE*, i8*)** @PyOS_ReadlineFunctionPointer, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdin.addr, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %sys_stdout.addr, align 8
  %35 = load i8*, i8** %prompt.addr, align 8
  %call36 = call i8* %32(%struct._IO_FILE* %33, %struct._IO_FILE* %34, i8* %35)
  store i8* %call36, i8** %rv, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.34
  %36 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %36)
  %37 = load i8*, i8** @_PyOS_ReadlineLock, align 8
  call void @PyThread_release_lock(i8* %37)
  store %struct._ts* null, %struct._ts** @_PyOS_ReadlineTState, align 8
  %38 = load i8*, i8** %rv, align 8
  %cmp38 = icmp eq i8* %38, null
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  store i8* null, i8** %retval
  br label %return

if.end.40:                                        ; preds = %if.end.37
  %39 = load i8*, i8** %rv, align 8
  %call41 = call i64 @strlen(i8* %39) #7
  %add = add i64 %call41, 1
  store i64 %add, i64* %len, align 8
  %40 = load i64, i64* %len, align 8
  %call42 = call i8* @PyMem_Malloc(i64 %40)
  store i8* %call42, i8** %res, align 8
  %41 = load i8*, i8** %res, align 8
  %cmp43 = icmp ne i8* %41, null
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.40
  %42 = load i8*, i8** %res, align 8
  %43 = load i8*, i8** %rv, align 8
  %44 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 %44, i32 1, i1 false)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.40
  %45 = load i8*, i8** %rv, align 8
  call void @PyMem_RawFree(i8* %45)
  %46 = load i8*, i8** %res, align 8
  store i8* %46, i8** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.39, %if.then
  %47 = load i8*, i8** %retval
  ret i8* %47
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #3 {
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
define internal void @_Py_atomic_thread_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @PyThread_allocate_lock() #1

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @PyThread_acquire_lock(i8*, i32) #1

; Function Attrs: nounwind
declare i32 @isatty(i32) #4

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #4

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare void @PyThread_release_lock(i8*) #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

declare i32 @PyErr_CheckSignals() #1

declare i32 @PyOS_InterruptOccurred() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139723}
!2 = !{i32 139563}
