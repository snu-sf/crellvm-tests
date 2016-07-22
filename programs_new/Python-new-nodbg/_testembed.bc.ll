; ModuleID = './_testembed.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
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
%struct.PyCompilerFlags = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"--- Use defaults ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"--- Set errors only ---\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"surrogateescape\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"--- Set encoding only ---\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"latin-1\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"--- Set encoding and errors ---\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Unexpected success calling Py_SetStandardStreamEncoding\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Expected encoding: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Expected encoding: default\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Expected errors: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Expected errors: default\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [208 x i8] c"import sys;print('stdin: {0.encoding}:{0.errors}'.format(sys.stdin));print('stdout: {0.encoding}:{0.errors}'.format(sys.stdout));print('stderr: {0.encoding}:{0.errors}'.format(sys.stderr));sys.stdout.flush()\00", align 1
@.str.12 = private unnamed_addr constant [13 x i32] [i32 46, i32 47, i32 95, i32 116, i32 101, i32 115, i32 116, i32 101, i32 109, i32 98, i32 101, i32 100, i32 0], align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"--- Pass %d ---\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"interp %p, thread state %p: \00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"import sys;print('id(modules) =', id(sys.modules));sys.stdout.flush()\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @test_forced_io_encoding()
  br label %if.end

if.else:                                          ; preds = %entry
  call void @test_repeated_init_and_subinterpreters()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @test_forced_io_encoding() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  call void @check_stdio_details(i8* null, i8* null)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  call void @check_stdio_details(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  call void @check_stdio_details(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* null)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0))
  call void @check_stdio_details(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  call void @Py_Initialize()
  %call4 = call i32 @Py_SetStandardStreamEncoding(i8* null, i8* null)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @Py_Finalize()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @test_repeated_init_and_subinterpreters() #0 {
entry:
  %mainstate = alloca %struct._ts*, align 8
  %substate = alloca %struct._ts*, align 8
  %gilstate = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i32 %1)
  call void @_testembed_Py_Initialize()
  %call1 = call %struct._ts* @PyThreadState_Get()
  store %struct._ts* %call1, %struct._ts** %mainstate, align 8
  call void @PyEval_InitThreads()
  %2 = load %struct._ts*, %struct._ts** %mainstate, align 8
  call void @PyEval_ReleaseThread(%struct._ts* %2)
  %call2 = call i32 @PyGILState_Ensure()
  store i32 %call2, i32* %gilstate, align 4
  call void @print_subinterp()
  %call3 = call %struct._ts* @PyThreadState_Swap(%struct._ts* null)
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %3, 3
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %call7 = call %struct._ts* @Py_NewInterpreter()
  store %struct._ts* %call7, %struct._ts** %substate, align 8
  call void @print_subinterp()
  %4 = load %struct._ts*, %struct._ts** %substate, align 8
  call void @Py_EndInterpreter(%struct._ts* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %5 = load i32, i32* %j, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %6 = load %struct._ts*, %struct._ts** %mainstate, align 8
  %call8 = call %struct._ts* @PyThreadState_Swap(%struct._ts* %6)
  call void @print_subinterp()
  %7 = load i32, i32* %gilstate, align 4
  call void @PyGILState_Release(i32 %7)
  %8 = load %struct._ts*, %struct._ts** %mainstate, align 8
  call void @PyEval_RestoreThread(%struct._ts* %8)
  call void @Py_Finalize()
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %9 = load i32, i32* %i, align 4
  %inc10 = add i32 %9, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @check_stdio_details(i8* %encoding, i8* %errors) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %encoding.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i8*, i8** %errors.addr, align 8
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.end
  %3 = load i8*, i8** %errors.addr, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8* %3)
  br label %if.end.7

if.else.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.5, %if.then.3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fflush(%struct._IO_FILE* %4)
  %5 = load i8*, i8** %encoding.addr, align 8
  %6 = load i8*, i8** %errors.addr, align 8
  %call9 = call i32 @Py_SetStandardStreamEncoding(i8* %5, i8* %6)
  call void @_testembed_Py_Initialize()
  %call10 = call i32 @PyRun_SimpleStringFlags(i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.11, i32 0, i32 0), %struct.PyCompilerFlags* null)
  call void @Py_Finalize()
  ret void
}

declare void @Py_Initialize() #1

declare i32 @Py_SetStandardStreamEncoding(i8*, i8*) #1

declare void @Py_Finalize() #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @_testembed_Py_Initialize() #0 {
entry:
  call void @Py_SetProgramName(i32* getelementptr inbounds ([13 x i32], [13 x i32]* @.str.12, i32 0, i32 0))
  call void @Py_Initialize()
  ret void
}

declare i32 @PyRun_SimpleStringFlags(i8*, %struct.PyCompilerFlags*) #1

declare void @Py_SetProgramName(i32*) #1

declare %struct._ts* @PyThreadState_Get() #1

declare void @PyEval_InitThreads() #1

declare void @PyEval_ReleaseThread(%struct._ts*) #1

declare i32 @PyGILState_Ensure() #1

; Function Attrs: nounwind uwtable
define internal void @print_subinterp() #0 {
entry:
  %ts = alloca %struct._ts*, align 8
  %call = call %struct._ts* @PyThreadState_Get()
  store %struct._ts* %call, %struct._ts** %ts, align 8
  %0 = load %struct._ts*, %struct._ts** %ts, align 8
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %0, i32 0, i32 2
  %1 = load %struct._is*, %struct._is** %interp, align 8
  %2 = load %struct._ts*, %struct._ts** %ts, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), %struct._is* %1, %struct._ts* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %3)
  %call3 = call i32 @PyRun_SimpleStringFlags(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.15, i32 0, i32 0), %struct.PyCompilerFlags* null)
  ret void
}

declare %struct._ts* @PyThreadState_Swap(%struct._ts*) #1

declare %struct._ts* @Py_NewInterpreter() #1

declare void @Py_EndInterpreter(%struct._ts*) #1

declare void @PyGILState_Release(i32) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
