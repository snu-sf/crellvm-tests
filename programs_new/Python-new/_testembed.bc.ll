; ModuleID = 'programs_new/Python-new/_testembed.bc.ll'
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
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !438
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !18, metadata !442), !dbg !443
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !444
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !19, metadata !442), !dbg !446
  %0 = load i32, i32* %argc.addr, align 4, !dbg !447, !tbaa !438
  %cmp = icmp sgt i32 %0, 1, !dbg !449
  br i1 %cmp, label %if.then, label %if.else, !dbg !450

if.then:                                          ; preds = %entry
  call void @test_forced_io_encoding(), !dbg !451
  br label %if.end, !dbg !453

if.else:                                          ; preds = %entry
  call void @test_repeated_init_and_subinterpreters(), !dbg !454
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !456
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @test_forced_io_encoding() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)), !dbg !457
  call void @check_stdio_details(i8* null, i8* null), !dbg !458
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0)), !dbg !459
  call void @check_stdio_details(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)), !dbg !460
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)), !dbg !461
  call void @check_stdio_details(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* null), !dbg !462
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0)), !dbg !463
  call void @check_stdio_details(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)), !dbg !464
  call void @Py_Initialize(), !dbg !465
  %call4 = call i32 @Py_SetStandardStreamEncoding(i8* null, i8* null), !dbg !466
  %cmp = icmp eq i32 %call4, 0, !dbg !468
  br i1 %cmp, label %if.then, label %if.end, !dbg !469

if.then:                                          ; preds = %entry
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i32 0, i32 0)), !dbg !470
  br label %if.end, !dbg !472

if.end:                                           ; preds = %if.then, %entry
  call void @Py_Finalize(), !dbg !473
  ret void, !dbg !474
}

; Function Attrs: nounwind uwtable
define internal void @test_repeated_init_and_subinterpreters() #0 {
entry:
  %mainstate = alloca %struct._ts*, align 8
  %substate = alloca %struct._ts*, align 8
  %gilstate = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = bitcast %struct._ts** %mainstate to i8*, !dbg !475
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !475
  call void @llvm.dbg.declare(metadata %struct._ts** %mainstate, metadata !35, metadata !442), !dbg !476
  %1 = bitcast %struct._ts** %substate to i8*, !dbg !475
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !475
  call void @llvm.dbg.declare(metadata %struct._ts** %substate, metadata !427, metadata !442), !dbg !477
  %2 = bitcast i32* %gilstate to i8*, !dbg !478
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !478
  call void @llvm.dbg.declare(metadata i32* %gilstate, metadata !428, metadata !442), !dbg !479
  %3 = bitcast i32* %i to i8*, !dbg !480
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !480
  call void @llvm.dbg.declare(metadata i32* %i, metadata !430, metadata !442), !dbg !481
  %4 = bitcast i32* %j to i8*, !dbg !480
  call void @llvm.lifetime.start(i64 4, i8* %4) #3, !dbg !480
  call void @llvm.dbg.declare(metadata i32* %j, metadata !431, metadata !442), !dbg !482
  store i32 0, i32* %i, align 4, !dbg !483, !tbaa !438
  br label %for.cond, !dbg !485

for.cond:                                         ; preds = %for.inc.9, %entry
  %5 = load i32, i32* %i, align 4, !dbg !486, !tbaa !438
  %cmp = icmp slt i32 %5, 3, !dbg !490
  br i1 %cmp, label %for.body, label %for.end.11, !dbg !491

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !492, !tbaa !438
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i32 %6), !dbg !494
  call void @_testembed_Py_Initialize(), !dbg !495
  %call1 = call %struct._ts* @PyThreadState_Get(), !dbg !496
  store %struct._ts* %call1, %struct._ts** %mainstate, align 8, !dbg !497, !tbaa !444
  call void @PyEval_InitThreads(), !dbg !498
  %7 = load %struct._ts*, %struct._ts** %mainstate, align 8, !dbg !499, !tbaa !444
  call void @PyEval_ReleaseThread(%struct._ts* %7), !dbg !500
  %call2 = call i32 @PyGILState_Ensure(), !dbg !501
  store i32 %call2, i32* %gilstate, align 4, !dbg !502, !tbaa !503
  call void @print_subinterp(), !dbg !504
  %call3 = call %struct._ts* @PyThreadState_Swap(%struct._ts* null), !dbg !505
  store i32 0, i32* %j, align 4, !dbg !506, !tbaa !438
  br label %for.cond.4, !dbg !508

for.cond.4:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4, !dbg !509, !tbaa !438
  %cmp5 = icmp slt i32 %8, 3, !dbg !513
  br i1 %cmp5, label %for.body.6, label %for.end, !dbg !514

for.body.6:                                       ; preds = %for.cond.4
  %call7 = call %struct._ts* @Py_NewInterpreter(), !dbg !515
  store %struct._ts* %call7, %struct._ts** %substate, align 8, !dbg !517, !tbaa !444
  call void @print_subinterp(), !dbg !518
  %9 = load %struct._ts*, %struct._ts** %substate, align 8, !dbg !519, !tbaa !444
  call void @Py_EndInterpreter(%struct._ts* %9), !dbg !520
  br label %for.inc, !dbg !521

for.inc:                                          ; preds = %for.body.6
  %10 = load i32, i32* %j, align 4, !dbg !522, !tbaa !438
  %inc = add i32 %10, 1, !dbg !522
  store i32 %inc, i32* %j, align 4, !dbg !522, !tbaa !438
  br label %for.cond.4, !dbg !523

for.end:                                          ; preds = %for.cond.4
  %11 = load %struct._ts*, %struct._ts** %mainstate, align 8, !dbg !524, !tbaa !444
  %call8 = call %struct._ts* @PyThreadState_Swap(%struct._ts* %11), !dbg !525
  call void @print_subinterp(), !dbg !526
  %12 = load i32, i32* %gilstate, align 4, !dbg !527, !tbaa !503
  call void @PyGILState_Release(i32 %12), !dbg !528
  %13 = load %struct._ts*, %struct._ts** %mainstate, align 8, !dbg !529, !tbaa !444
  call void @PyEval_RestoreThread(%struct._ts* %13), !dbg !530
  call void @Py_Finalize(), !dbg !531
  br label %for.inc.9, !dbg !532

for.inc.9:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4, !dbg !533, !tbaa !438
  %inc10 = add i32 %14, 1, !dbg !533
  store i32 %inc10, i32* %i, align 4, !dbg !533, !tbaa !438
  br label %for.cond, !dbg !534

for.end.11:                                       ; preds = %for.cond
  %15 = bitcast i32* %j to i8*, !dbg !535
  call void @llvm.lifetime.end(i64 4, i8* %15) #3, !dbg !535
  %16 = bitcast i32* %i to i8*, !dbg !535
  call void @llvm.lifetime.end(i64 4, i8* %16) #3, !dbg !535
  %17 = bitcast i32* %gilstate to i8*, !dbg !535
  call void @llvm.lifetime.end(i64 4, i8* %17) #3, !dbg !535
  %18 = bitcast %struct._ts** %substate to i8*, !dbg !535
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !535
  %19 = bitcast %struct._ts** %mainstate to i8*, !dbg !535
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !535
  ret void, !dbg !535
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @check_stdio_details(i8* %encoding, i8* %errors) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8, !tbaa !444
  call void @llvm.dbg.declare(metadata i8** %encoding.addr, metadata !30, metadata !442), !dbg !536
  store i8* %errors, i8** %errors.addr, align 8, !tbaa !444
  call void @llvm.dbg.declare(metadata i8** %errors.addr, metadata !31, metadata !442), !dbg !537
  %0 = load i8*, i8** %encoding.addr, align 8, !dbg !538, !tbaa !444
  %tobool = icmp ne i8* %0, null, !dbg !538
  br i1 %tobool, label %if.then, label %if.else, !dbg !540

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %encoding.addr, align 8, !dbg !541, !tbaa !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* %1), !dbg !543
  br label %if.end, !dbg !544

if.else:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)), !dbg !545
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i8*, i8** %errors.addr, align 8, !dbg !547, !tbaa !444
  %tobool2 = icmp ne i8* %2, null, !dbg !547
  br i1 %tobool2, label %if.then.3, label %if.else.5, !dbg !549

if.then.3:                                        ; preds = %if.end
  %3 = load i8*, i8** %errors.addr, align 8, !dbg !550, !tbaa !444
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8* %3), !dbg !552
  br label %if.end.7, !dbg !553

if.else.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0)), !dbg !554
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.5, %if.then.3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !556, !tbaa !444
  %call8 = call i32 @fflush(%struct._IO_FILE* %4), !dbg !557
  %5 = load i8*, i8** %encoding.addr, align 8, !dbg !558, !tbaa !444
  %6 = load i8*, i8** %errors.addr, align 8, !dbg !559, !tbaa !444
  %call9 = call i32 @Py_SetStandardStreamEncoding(i8* %5, i8* %6), !dbg !560
  call void @_testembed_Py_Initialize(), !dbg !561
  %call10 = call i32 @PyRun_SimpleStringFlags(i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.11, i32 0, i32 0), %struct.PyCompilerFlags* null), !dbg !562
  call void @Py_Finalize(), !dbg !563
  ret void, !dbg !564
}

declare void @Py_Initialize() #2

declare i32 @Py_SetStandardStreamEncoding(i8*, i8*) #2

declare void @Py_Finalize() #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @_testembed_Py_Initialize() #0 {
entry:
  call void @Py_SetProgramName(i32* getelementptr inbounds ([13 x i32], [13 x i32]* @.str.12, i32 0, i32 0)), !dbg !565
  call void @Py_Initialize(), !dbg !566
  ret void, !dbg !567
}

declare i32 @PyRun_SimpleStringFlags(i8*, %struct.PyCompilerFlags*) #2

declare void @Py_SetProgramName(i32*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare %struct._ts* @PyThreadState_Get() #2

declare void @PyEval_InitThreads() #2

declare void @PyEval_ReleaseThread(%struct._ts*) #2

declare i32 @PyGILState_Ensure() #2

; Function Attrs: nounwind uwtable
define internal void @print_subinterp() #0 {
entry:
  %ts = alloca %struct._ts*, align 8
  %0 = bitcast %struct._ts** %ts to i8*, !dbg !568
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !568
  call void @llvm.dbg.declare(metadata %struct._ts** %ts, metadata !434, metadata !442), !dbg !569
  %call = call %struct._ts* @PyThreadState_Get(), !dbg !570
  store %struct._ts* %call, %struct._ts** %ts, align 8, !dbg !569, !tbaa !444
  %1 = load %struct._ts*, %struct._ts** %ts, align 8, !dbg !571, !tbaa !444
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %1, i32 0, i32 2, !dbg !572
  %2 = load %struct._is*, %struct._is** %interp, align 8, !dbg !572, !tbaa !573
  %3 = load %struct._ts*, %struct._ts** %ts, align 8, !dbg !576, !tbaa !444
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), %struct._is* %2, %struct._ts* %3), !dbg !577
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !578, !tbaa !444
  %call2 = call i32 @fflush(%struct._IO_FILE* %4), !dbg !579
  %call3 = call i32 @PyRun_SimpleStringFlags(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.15, i32 0, i32 0), %struct.PyCompilerFlags* null), !dbg !580
  %5 = bitcast %struct._ts** %ts to i8*, !dbg !581
  call void @llvm.lifetime.end(i64 8, i8* %5) #3, !dbg !581
  ret void, !dbg !581
}

declare %struct._ts* @PyThreadState_Swap(%struct._ts*) #2

declare %struct._ts* @Py_NewInterpreter() #2

declare void @Py_EndInterpreter(%struct._ts*) #2

declare void @PyGILState_Release(i32) #2

declare void @PyEval_RestoreThread(%struct._ts*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!435, !436}
!llvm.ident = !{!437}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !8)
!1 = !DIFile(filename: "_testembed.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 190, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "PyGILState_LOCKED", value: 0)
!7 = !DIEnumerator(name: "PyGILState_UNLOCKED", value: 1)
!8 = !{!9, !20, !24, !32, !33, !432}
!9 = !DISubprogram(name: "main", scope: !10, file: !10, line: 128, type: !11, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**)* @main, variables: !17)
!10 = !DIFile(filename: "./Modules/_testembed.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !14}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!17 = !{!18, !19}
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !9, file: !10, line: 128, type: !13)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !9, file: !10, line: 128, type: !14)
!20 = !DISubprogram(name: "test_forced_io_encoding", scope: !10, file: !10, line: 106, type: !21, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @test_forced_io_encoding, variables: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{null}
!23 = !{}
!24 = !DISubprogram(name: "check_stdio_details", scope: !10, file: !10, line: 79, type: !25, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*)* @check_stdio_details, variables: !29)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27, !27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!29 = !{!30, !31}
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 1, scope: !24, file: !10, line: 79, type: !27)
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errors", arg: 2, scope: !24, file: !10, line: 79, type: !27)
!32 = !DISubprogram(name: "_testembed_Py_Initialize", scope: !10, file: !10, line: 10, type: !21, isLocal: true, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_testembed_Py_Initialize, variables: !23)
!33 = !DISubprogram(name: "test_repeated_init_and_subinterpreters", scope: !10, file: !10, line: 36, type: !21, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @test_repeated_init_and_subinterpreters, variables: !34)
!34 = !{!35, !427, !428, !430, !431}
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mainstate", scope: !33, file: !10, line: 38, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !4, line: 139, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !4, line: 69, size: 1536, align: 64, elements: !39)
!39 = !{!40, !42, !43, !397, !400, !401, !402, !403, !404, !405, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !38, file: !4, line: 72, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !38, file: !4, line: 73, baseType: !41, size: 64, align: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !38, file: !4, line: 74, baseType: !44, size: 64, align: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !4, line: 44, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !4, line: 19, size: 832, align: 64, elements: !47)
!47 = !{!48, !50, !51, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !46, file: !4, line: 21, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !46, file: !4, line: 22, baseType: !41, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !46, file: !4, line: 24, baseType: !52, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !54, line: 109, baseType: !55)
!54 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !54, line: 105, size: 128, align: 64, elements: !56)
!56 = !{!57, !65}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !55, file: !54, line: 107, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !59, line: 177, baseType: !60)
!59 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !61, line: 102, baseType: !62)
!61 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !63, line: 181, baseType: !64)
!63 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!64 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !55, file: !54, line: 108, baseType: !66, size: 64, align: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !54, line: 334, size: 3200, align: 64, elements: !68)
!68 = !{!69, !75, !76, !77, !78, !83, !145, !150, !155, !156, !161, !213, !244, !256, !262, !263, !264, !266, !268, !299, !300, !301, !310, !311, !316, !317, !319, !321, !331, !334, !352, !353, !354, !356, !358, !359, !361, !366, !371, !376, !377, !378, !379, !380, !381, !382, !383, !385}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !67, file: !54, line: 335, baseType: !70, size: 192, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !54, line: 114, baseType: !71)
!71 = !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 111, size: 192, align: 64, elements: !72)
!72 = !{!73, !74}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !71, file: !54, line: 112, baseType: !53, size: 128, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !71, file: !54, line: 113, baseType: !58, size: 64, align: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !67, file: !54, line: 336, baseType: !27, size: 64, align: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !67, file: !54, line: 337, baseType: !58, size: 64, align: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !67, file: !54, line: 337, baseType: !58, size: 64, align: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !67, file: !54, line: 341, baseType: !79, size: 64, align: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !54, line: 308, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !52}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !67, file: !54, line: 342, baseType: !84, size: 64, align: 64, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !54, line: 314, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!13, !52, !88, !13}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !61, line: 48, baseType: !90)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 246, size: 1728, align: 64, elements: !92)
!91 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!92 = !{!93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !113, !114, !115, !116, !118, !120, !122, !126, !129, !131, !133, !134, !135, !136, !140, !141}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !90, file: !91, line: 247, baseType: !13, size: 32, align: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !90, file: !91, line: 252, baseType: !15, size: 64, align: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !90, file: !91, line: 253, baseType: !15, size: 64, align: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !90, file: !91, line: 254, baseType: !15, size: 64, align: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !90, file: !91, line: 255, baseType: !15, size: 64, align: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !90, file: !91, line: 256, baseType: !15, size: 64, align: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !90, file: !91, line: 257, baseType: !15, size: 64, align: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !90, file: !91, line: 258, baseType: !15, size: 64, align: 64, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !90, file: !91, line: 259, baseType: !15, size: 64, align: 64, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !90, file: !91, line: 261, baseType: !15, size: 64, align: 64, offset: 576)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !90, file: !91, line: 262, baseType: !15, size: 64, align: 64, offset: 640)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !90, file: !91, line: 263, baseType: !15, size: 64, align: 64, offset: 704)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !90, file: !91, line: 265, baseType: !106, size: 64, align: 64, offset: 768)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !91, line: 161, size: 192, align: 64, elements: !108)
!108 = !{!109, !110, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !107, file: !91, line: 162, baseType: !106, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !107, file: !91, line: 163, baseType: !111, size: 64, align: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !107, file: !91, line: 167, baseType: !13, size: 32, align: 32, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !90, file: !91, line: 267, baseType: !111, size: 64, align: 64, offset: 832)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !90, file: !91, line: 269, baseType: !13, size: 32, align: 32, offset: 896)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !90, file: !91, line: 273, baseType: !13, size: 32, align: 32, offset: 928)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !90, file: !91, line: 275, baseType: !117, size: 64, align: 64, offset: 960)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !63, line: 140, baseType: !64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !90, file: !91, line: 279, baseType: !119, size: 16, align: 16, offset: 1024)
!119 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !90, file: !91, line: 280, baseType: !121, size: 8, align: 8, offset: 1040)
!121 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !90, file: !91, line: 281, baseType: !123, size: 8, align: 8, offset: 1048)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8, align: 8, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 1)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !90, file: !91, line: 285, baseType: !127, size: 64, align: 64, offset: 1088)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !91, line: 155, baseType: null)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !90, file: !91, line: 294, baseType: !130, size: 64, align: 64, offset: 1152)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !63, line: 141, baseType: !64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !90, file: !91, line: 303, baseType: !132, size: 64, align: 64, offset: 1216)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !90, file: !91, line: 304, baseType: !132, size: 64, align: 64, offset: 1280)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !90, file: !91, line: 305, baseType: !132, size: 64, align: 64, offset: 1344)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !90, file: !91, line: 306, baseType: !132, size: 64, align: 64, offset: 1408)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !90, file: !91, line: 307, baseType: !137, size: 64, align: 64, offset: 1472)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 62, baseType: !139)
!138 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!139 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !90, file: !91, line: 309, baseType: !13, size: 32, align: 32, offset: 1536)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !90, file: !91, line: 311, baseType: !142, size: 160, align: 8, offset: 1568)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 160, align: 8, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 20)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !67, file: !54, line: 343, baseType: !146, size: 64, align: 64, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !54, line: 316, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!52, !52, !15}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !67, file: !54, line: 344, baseType: !151, size: 64, align: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !54, line: 318, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!13, !52, !15, !52}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !67, file: !54, line: 345, baseType: !132, size: 64, align: 64, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !67, file: !54, line: 346, baseType: !157, size: 64, align: 64, offset: 704)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !54, line: 320, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!52, !52}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !67, file: !54, line: 350, baseType: !162, size: 64, align: 64, offset: 768)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !54, line: 278, baseType: !164)
!164 = !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 236, size: 2176, align: 64, elements: !165)
!165 = !{!166, !171, !172, !173, !174, !175, !180, !182, !183, !184, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !164, file: !54, line: 241, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !54, line: 166, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!52, !52, !52}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !164, file: !54, line: 242, baseType: !167, size: 64, align: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !164, file: !54, line: 243, baseType: !167, size: 64, align: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !164, file: !54, line: 244, baseType: !167, size: 64, align: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !164, file: !54, line: 245, baseType: !167, size: 64, align: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !164, file: !54, line: 246, baseType: !176, size: 64, align: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !54, line: 167, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!52, !52, !52, !52}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !164, file: !54, line: 247, baseType: !181, size: 64, align: 64, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !54, line: 165, baseType: !158)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !164, file: !54, line: 248, baseType: !181, size: 64, align: 64, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !164, file: !54, line: 249, baseType: !181, size: 64, align: 64, offset: 512)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !164, file: !54, line: 250, baseType: !185, size: 64, align: 64, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !54, line: 168, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!13, !52}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !164, file: !54, line: 251, baseType: !181, size: 64, align: 64, offset: 640)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !164, file: !54, line: 252, baseType: !167, size: 64, align: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !164, file: !54, line: 253, baseType: !167, size: 64, align: 64, offset: 768)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !164, file: !54, line: 254, baseType: !167, size: 64, align: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !164, file: !54, line: 255, baseType: !167, size: 64, align: 64, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !164, file: !54, line: 256, baseType: !167, size: 64, align: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !164, file: !54, line: 257, baseType: !181, size: 64, align: 64, offset: 1024)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !164, file: !54, line: 258, baseType: !132, size: 64, align: 64, offset: 1088)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !164, file: !54, line: 259, baseType: !181, size: 64, align: 64, offset: 1152)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !164, file: !54, line: 261, baseType: !167, size: 64, align: 64, offset: 1216)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !164, file: !54, line: 262, baseType: !167, size: 64, align: 64, offset: 1280)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !164, file: !54, line: 263, baseType: !167, size: 64, align: 64, offset: 1344)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !164, file: !54, line: 264, baseType: !167, size: 64, align: 64, offset: 1408)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !164, file: !54, line: 265, baseType: !176, size: 64, align: 64, offset: 1472)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !164, file: !54, line: 266, baseType: !167, size: 64, align: 64, offset: 1536)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !164, file: !54, line: 267, baseType: !167, size: 64, align: 64, offset: 1600)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !164, file: !54, line: 268, baseType: !167, size: 64, align: 64, offset: 1664)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !164, file: !54, line: 269, baseType: !167, size: 64, align: 64, offset: 1728)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !164, file: !54, line: 270, baseType: !167, size: 64, align: 64, offset: 1792)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !164, file: !54, line: 272, baseType: !167, size: 64, align: 64, offset: 1856)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !164, file: !54, line: 273, baseType: !167, size: 64, align: 64, offset: 1920)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !164, file: !54, line: 274, baseType: !167, size: 64, align: 64, offset: 1984)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !164, file: !54, line: 275, baseType: !167, size: 64, align: 64, offset: 2048)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !164, file: !54, line: 277, baseType: !181, size: 64, align: 64, offset: 2112)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !67, file: !54, line: 351, baseType: !214, size: 64, align: 64, offset: 832)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !54, line: 292, baseType: !216)
!216 = !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 280, size: 640, align: 64, elements: !217)
!217 = !{!218, !223, !224, !229, !230, !231, !236, !237, !242, !243}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !216, file: !54, line: 281, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !54, line: 169, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!58, !52}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !216, file: !54, line: 282, baseType: !167, size: 64, align: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !216, file: !54, line: 283, baseType: !225, size: 64, align: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !54, line: 170, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!52, !52, !58}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !216, file: !54, line: 284, baseType: !225, size: 64, align: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !216, file: !54, line: 285, baseType: !132, size: 64, align: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !216, file: !54, line: 286, baseType: !232, size: 64, align: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !54, line: 172, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!13, !52, !58, !52}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !216, file: !54, line: 287, baseType: !132, size: 64, align: 64, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !216, file: !54, line: 288, baseType: !238, size: 64, align: 64, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !54, line: 231, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!13, !52, !52}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !216, file: !54, line: 290, baseType: !167, size: 64, align: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !216, file: !54, line: 291, baseType: !225, size: 64, align: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !67, file: !54, line: 352, baseType: !245, size: 64, align: 64, offset: 896)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !54, line: 298, baseType: !247)
!247 = !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 294, size: 192, align: 64, elements: !248)
!248 = !{!249, !250, !251}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !247, file: !54, line: 295, baseType: !219, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !247, file: !54, line: 296, baseType: !167, size: 64, align: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !247, file: !54, line: 297, baseType: !252, size: 64, align: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !54, line: 174, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!13, !52, !52, !52}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !67, file: !54, line: 356, baseType: !257, size: 64, align: 64, offset: 960)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !54, line: 321, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !52}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !59, line: 186, baseType: !58)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !67, file: !54, line: 357, baseType: !176, size: 64, align: 64, offset: 1024)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !67, file: !54, line: 358, baseType: !157, size: 64, align: 64, offset: 1088)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !67, file: !54, line: 359, baseType: !265, size: 64, align: 64, offset: 1152)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !54, line: 317, baseType: !168)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !67, file: !54, line: 360, baseType: !267, size: 64, align: 64, offset: 1216)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !54, line: 319, baseType: !253)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !67, file: !54, line: 363, baseType: !269, size: 64, align: 64, offset: 1280)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !54, line: 304, baseType: !271)
!271 = !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 301, size: 128, align: 64, elements: !272)
!272 = !{!273, !294}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !271, file: !54, line: 302, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !54, line: 193, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!13, !52, !278, !13}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !54, line: 191, baseType: !280)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !54, line: 178, size: 640, align: 64, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !291, !292, !293}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !280, file: !54, line: 179, baseType: !132, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !280, file: !54, line: 180, baseType: !52, size: 64, align: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !280, file: !54, line: 181, baseType: !58, size: 64, align: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !280, file: !54, line: 182, baseType: !58, size: 64, align: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !280, file: !54, line: 184, baseType: !13, size: 32, align: 32, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !280, file: !54, line: 185, baseType: !13, size: 32, align: 32, offset: 288)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !280, file: !54, line: 186, baseType: !15, size: 64, align: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !280, file: !54, line: 187, baseType: !290, size: 64, align: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !280, file: !54, line: 188, baseType: !290, size: 64, align: 64, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !280, file: !54, line: 189, baseType: !290, size: 64, align: 64, offset: 512)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !280, file: !54, line: 190, baseType: !132, size: 64, align: 64, offset: 576)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !271, file: !54, line: 303, baseType: !295, size: 64, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !54, line: 194, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !52, !278}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !67, file: !54, line: 366, baseType: !139, size: 64, align: 64, offset: 1344)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !67, file: !54, line: 368, baseType: !27, size: 64, align: 64, offset: 1408)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !67, file: !54, line: 372, baseType: !302, size: 64, align: 64, offset: 1472)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !54, line: 233, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!13, !52, !306, !132}
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !54, line: 232, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!13, !52, !132}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !67, file: !54, line: 375, baseType: !185, size: 64, align: 64, offset: 1536)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !67, file: !54, line: 379, baseType: !312, size: 64, align: 64, offset: 1600)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !54, line: 322, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!52, !52, !52, !13}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !67, file: !54, line: 382, baseType: !58, size: 64, align: 64, offset: 1664)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !67, file: !54, line: 385, baseType: !318, size: 64, align: 64, offset: 1728)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !54, line: 323, baseType: !158)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !67, file: !54, line: 386, baseType: !320, size: 64, align: 64, offset: 1792)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !54, line: 324, baseType: !158)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !67, file: !54, line: 389, baseType: !322, size: 64, align: 64, offset: 1856)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !324, line: 40, size: 256, align: 64, elements: !325)
!324 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!325 = !{!326, !327, !329, !330}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !323, file: !324, line: 41, baseType: !27, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !323, file: !324, line: 42, baseType: !328, size: 64, align: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !324, line: 18, baseType: !168)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !323, file: !324, line: 43, baseType: !13, size: 32, align: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !323, file: !324, line: 45, baseType: !27, size: 64, align: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !67, file: !54, line: 390, baseType: !332, size: 64, align: 64, offset: 1920)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !54, line: 390, flags: DIFlagFwdDecl)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !67, file: !54, line: 391, baseType: !335, size: 64, align: 64, offset: 1984)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !337, line: 11, size: 320, align: 64, elements: !338)
!337 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!338 = !{!339, !340, !345, !350, !351}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !336, file: !337, line: 12, baseType: !15, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !336, file: !337, line: 13, baseType: !341, size: 64, align: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !337, line: 8, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!52, !52, !132}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !336, file: !337, line: 14, baseType: !346, size: 64, align: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !337, line: 9, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!13, !52, !52, !132}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !336, file: !337, line: 15, baseType: !15, size: 64, align: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !336, file: !337, line: 16, baseType: !132, size: 64, align: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !67, file: !54, line: 392, baseType: !66, size: 64, align: 64, offset: 2048)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !67, file: !54, line: 393, baseType: !52, size: 64, align: 64, offset: 2112)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !67, file: !54, line: 394, baseType: !355, size: 64, align: 64, offset: 2176)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !54, line: 325, baseType: !177)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !67, file: !54, line: 395, baseType: !357, size: 64, align: 64, offset: 2240)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !54, line: 326, baseType: !253)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !67, file: !54, line: 396, baseType: !58, size: 64, align: 64, offset: 2304)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !67, file: !54, line: 397, baseType: !360, size: 64, align: 64, offset: 2368)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !54, line: 327, baseType: !253)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !67, file: !54, line: 398, baseType: !362, size: 64, align: 64, offset: 2432)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !54, line: 329, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!52, !66, !58}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !67, file: !54, line: 399, baseType: !367, size: 64, align: 64, offset: 2496)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !54, line: 328, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!52, !66, !52, !52}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !67, file: !54, line: 400, baseType: !372, size: 64, align: 64, offset: 2560)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !54, line: 307, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !132}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !67, file: !54, line: 401, baseType: !185, size: 64, align: 64, offset: 2624)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !67, file: !54, line: 402, baseType: !52, size: 64, align: 64, offset: 2688)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !67, file: !54, line: 403, baseType: !52, size: 64, align: 64, offset: 2752)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !67, file: !54, line: 404, baseType: !52, size: 64, align: 64, offset: 2816)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !67, file: !54, line: 405, baseType: !52, size: 64, align: 64, offset: 2880)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !67, file: !54, line: 406, baseType: !52, size: 64, align: 64, offset: 2944)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !67, file: !54, line: 407, baseType: !79, size: 64, align: 64, offset: 3008)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !67, file: !54, line: 410, baseType: !384, size: 32, align: 32, offset: 3072)
!384 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !67, file: !54, line: 412, baseType: !79, size: 64, align: 64, offset: 3136)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !46, file: !4, line: 25, baseType: !52, size: 64, align: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !46, file: !4, line: 26, baseType: !52, size: 64, align: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !46, file: !4, line: 27, baseType: !52, size: 64, align: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !46, file: !4, line: 28, baseType: !52, size: 64, align: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !46, file: !4, line: 30, baseType: !52, size: 64, align: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !46, file: !4, line: 31, baseType: !52, size: 64, align: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !46, file: !4, line: 32, baseType: !52, size: 64, align: 64, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !46, file: !4, line: 33, baseType: !13, size: 32, align: 32, offset: 640)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !46, file: !4, line: 34, baseType: !13, size: 32, align: 32, offset: 672)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !46, file: !4, line: 37, baseType: !13, size: 32, align: 32, offset: 704)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !46, file: !4, line: 43, baseType: !52, size: 64, align: 64, offset: 768)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !38, file: !4, line: 76, baseType: !398, size: 64, align: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !4, line: 50, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !38, file: !4, line: 77, baseType: !13, size: 32, align: 32, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !38, file: !4, line: 78, baseType: !16, size: 8, align: 8, offset: 288)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !38, file: !4, line: 80, baseType: !16, size: 8, align: 8, offset: 296)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !38, file: !4, line: 85, baseType: !13, size: 32, align: 32, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !38, file: !4, line: 86, baseType: !13, size: 32, align: 32, offset: 352)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !38, file: !4, line: 88, baseType: !406, size: 64, align: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !4, line: 54, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!13, !52, !398, !13, !52}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !38, file: !4, line: 89, baseType: !406, size: 64, align: 64, offset: 448)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !38, file: !4, line: 90, baseType: !52, size: 64, align: 64, offset: 512)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !38, file: !4, line: 91, baseType: !52, size: 64, align: 64, offset: 576)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !38, file: !4, line: 93, baseType: !52, size: 64, align: 64, offset: 640)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !38, file: !4, line: 94, baseType: !52, size: 64, align: 64, offset: 704)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !38, file: !4, line: 95, baseType: !52, size: 64, align: 64, offset: 768)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !38, file: !4, line: 97, baseType: !52, size: 64, align: 64, offset: 832)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !38, file: !4, line: 98, baseType: !52, size: 64, align: 64, offset: 896)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !38, file: !4, line: 99, baseType: !52, size: 64, align: 64, offset: 960)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !38, file: !4, line: 101, baseType: !52, size: 64, align: 64, offset: 1024)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !38, file: !4, line: 103, baseType: !13, size: 32, align: 32, offset: 1088)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !38, file: !4, line: 105, baseType: !52, size: 64, align: 64, offset: 1152)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !38, file: !4, line: 106, baseType: !64, size: 64, align: 64, offset: 1216)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !38, file: !4, line: 108, baseType: !13, size: 32, align: 32, offset: 1280)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !38, file: !4, line: 109, baseType: !52, size: 64, align: 64, offset: 1344)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !38, file: !4, line: 134, baseType: !373, size: 64, align: 64, offset: 1408)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !38, file: !4, line: 135, baseType: !132, size: 64, align: 64, offset: 1472)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "substate", scope: !33, file: !10, line: 38, type: !36)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gilstate", scope: !33, file: !10, line: 40, type: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGILState_STATE", file: !4, line: 191, baseType: !3)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !33, file: !10, line: 42, type: !13)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !33, file: !10, line: 42, type: !13)
!432 = !DISubprogram(name: "print_subinterp", scope: !10, file: !10, line: 23, type: !21, isLocal: true, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @print_subinterp, variables: !433)
!433 = !{!434}
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ts", scope: !432, file: !10, line: 26, type: !36)
!435 = !{i32 2, !"Dwarf Version", i32 4}
!436 = !{i32 2, !"Debug Info Version", i32 3}
!437 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!438 = !{!439, !439, i64 0}
!439 = !{!"int", !440, i64 0}
!440 = !{!"omnipotent char", !441, i64 0}
!441 = !{!"Simple C/C++ TBAA"}
!442 = !DIExpression()
!443 = !DILocation(line: 128, column: 14, scope: !9)
!444 = !{!445, !445, i64 0}
!445 = !{!"any pointer", !440, i64 0}
!446 = !DILocation(line: 128, column: 26, scope: !9)
!447 = !DILocation(line: 132, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !9, file: !10, line: 132, column: 9)
!449 = !DILocation(line: 132, column: 14, scope: !448)
!450 = !DILocation(line: 132, column: 9, scope: !9)
!451 = !DILocation(line: 134, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !10, line: 132, column: 19)
!453 = !DILocation(line: 135, column: 5, scope: !452)
!454 = !DILocation(line: 137, column: 9, scope: !455)
!455 = distinct !DILexicalBlock(scope: !448, file: !10, line: 135, column: 12)
!456 = !DILocation(line: 139, column: 5, scope: !9)
!457 = !DILocation(line: 109, column: 5, scope: !20)
!458 = !DILocation(line: 110, column: 5, scope: !20)
!459 = !DILocation(line: 111, column: 5, scope: !20)
!460 = !DILocation(line: 112, column: 5, scope: !20)
!461 = !DILocation(line: 113, column: 5, scope: !20)
!462 = !DILocation(line: 114, column: 5, scope: !20)
!463 = !DILocation(line: 115, column: 5, scope: !20)
!464 = !DILocation(line: 116, column: 5, scope: !20)
!465 = !DILocation(line: 119, column: 5, scope: !20)
!466 = !DILocation(line: 121, column: 9, scope: !467)
!467 = distinct !DILexicalBlock(scope: !20, file: !10, line: 121, column: 9)
!468 = !DILocation(line: 121, column: 62, scope: !467)
!469 = !DILocation(line: 121, column: 9, scope: !20)
!470 = !DILocation(line: 122, column: 9, scope: !471)
!471 = distinct !DILexicalBlock(scope: !467, file: !10, line: 121, column: 68)
!472 = !DILocation(line: 123, column: 5, scope: !471)
!473 = !DILocation(line: 124, column: 5, scope: !20)
!474 = !DILocation(line: 125, column: 1, scope: !20)
!475 = !DILocation(line: 38, column: 5, scope: !33)
!476 = !DILocation(line: 38, column: 20, scope: !33)
!477 = !DILocation(line: 38, column: 32, scope: !33)
!478 = !DILocation(line: 40, column: 5, scope: !33)
!479 = !DILocation(line: 40, column: 22, scope: !33)
!480 = !DILocation(line: 42, column: 5, scope: !33)
!481 = !DILocation(line: 42, column: 9, scope: !33)
!482 = !DILocation(line: 42, column: 12, scope: !33)
!483 = !DILocation(line: 44, column: 11, scope: !484)
!484 = distinct !DILexicalBlock(scope: !33, file: !10, line: 44, column: 5)
!485 = !DILocation(line: 44, column: 10, scope: !484)
!486 = !DILocation(line: 44, column: 15, scope: !487)
!487 = !DILexicalBlockFile(scope: !488, file: !10, discriminator: 2)
!488 = !DILexicalBlockFile(scope: !489, file: !10, discriminator: 1)
!489 = distinct !DILexicalBlock(scope: !484, file: !10, line: 44, column: 5)
!490 = !DILocation(line: 44, column: 16, scope: !489)
!491 = !DILocation(line: 44, column: 5, scope: !484)
!492 = !DILocation(line: 45, column: 37, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !10, line: 44, column: 25)
!494 = !DILocation(line: 45, column: 9, scope: !493)
!495 = !DILocation(line: 46, column: 9, scope: !493)
!496 = !DILocation(line: 47, column: 21, scope: !493)
!497 = !DILocation(line: 47, column: 19, scope: !493)
!498 = !DILocation(line: 50, column: 9, scope: !493)
!499 = !DILocation(line: 51, column: 30, scope: !493)
!500 = !DILocation(line: 51, column: 9, scope: !493)
!501 = !DILocation(line: 53, column: 20, scope: !493)
!502 = !DILocation(line: 53, column: 18, scope: !493)
!503 = !{!440, !440, i64 0}
!504 = !DILocation(line: 55, column: 9, scope: !493)
!505 = !DILocation(line: 56, column: 9, scope: !493)
!506 = !DILocation(line: 58, column: 15, scope: !507)
!507 = distinct !DILexicalBlock(scope: !493, file: !10, line: 58, column: 9)
!508 = !DILocation(line: 58, column: 14, scope: !507)
!509 = !DILocation(line: 58, column: 19, scope: !510)
!510 = !DILexicalBlockFile(scope: !511, file: !10, discriminator: 2)
!511 = !DILexicalBlockFile(scope: !512, file: !10, discriminator: 1)
!512 = distinct !DILexicalBlock(scope: !507, file: !10, line: 58, column: 9)
!513 = !DILocation(line: 58, column: 20, scope: !512)
!514 = !DILocation(line: 58, column: 9, scope: !507)
!515 = !DILocation(line: 59, column: 24, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !10, line: 58, column: 29)
!517 = !DILocation(line: 59, column: 22, scope: !516)
!518 = !DILocation(line: 60, column: 13, scope: !516)
!519 = !DILocation(line: 61, column: 31, scope: !516)
!520 = !DILocation(line: 61, column: 13, scope: !516)
!521 = !DILocation(line: 62, column: 9, scope: !516)
!522 = !DILocation(line: 58, column: 25, scope: !512)
!523 = !DILocation(line: 58, column: 9, scope: !512)
!524 = !DILocation(line: 64, column: 28, scope: !493)
!525 = !DILocation(line: 64, column: 9, scope: !493)
!526 = !DILocation(line: 65, column: 9, scope: !493)
!527 = !DILocation(line: 67, column: 28, scope: !493)
!528 = !DILocation(line: 67, column: 9, scope: !493)
!529 = !DILocation(line: 70, column: 30, scope: !493)
!530 = !DILocation(line: 70, column: 9, scope: !493)
!531 = !DILocation(line: 71, column: 9, scope: !493)
!532 = !DILocation(line: 72, column: 5, scope: !493)
!533 = !DILocation(line: 44, column: 21, scope: !489)
!534 = !DILocation(line: 44, column: 5, scope: !489)
!535 = !DILocation(line: 73, column: 1, scope: !33)
!536 = !DILocation(line: 79, column: 45, scope: !24)
!537 = !DILocation(line: 79, column: 68, scope: !24)
!538 = !DILocation(line: 82, column: 9, scope: !539)
!539 = distinct !DILexicalBlock(scope: !24, file: !10, line: 82, column: 9)
!540 = !DILocation(line: 82, column: 9, scope: !24)
!541 = !DILocation(line: 83, column: 43, scope: !542)
!542 = distinct !DILexicalBlock(scope: !539, file: !10, line: 82, column: 19)
!543 = !DILocation(line: 83, column: 9, scope: !542)
!544 = !DILocation(line: 84, column: 5, scope: !542)
!545 = !DILocation(line: 85, column: 9, scope: !546)
!546 = distinct !DILexicalBlock(scope: !539, file: !10, line: 84, column: 12)
!547 = !DILocation(line: 87, column: 9, scope: !548)
!548 = distinct !DILexicalBlock(scope: !24, file: !10, line: 87, column: 9)
!549 = !DILocation(line: 87, column: 9, scope: !24)
!550 = !DILocation(line: 88, column: 41, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !10, line: 87, column: 17)
!552 = !DILocation(line: 88, column: 9, scope: !551)
!553 = !DILocation(line: 89, column: 5, scope: !551)
!554 = !DILocation(line: 90, column: 9, scope: !555)
!555 = distinct !DILexicalBlock(scope: !548, file: !10, line: 89, column: 12)
!556 = !DILocation(line: 92, column: 12, scope: !24)
!557 = !DILocation(line: 92, column: 5, scope: !24)
!558 = !DILocation(line: 94, column: 34, scope: !24)
!559 = !DILocation(line: 94, column: 44, scope: !24)
!560 = !DILocation(line: 94, column: 5, scope: !24)
!561 = !DILocation(line: 95, column: 5, scope: !24)
!562 = !DILocation(line: 96, column: 5, scope: !24)
!563 = !DILocation(line: 103, column: 5, scope: !24)
!564 = !DILocation(line: 104, column: 1, scope: !24)
!565 = !DILocation(line: 14, column: 5, scope: !32)
!566 = !DILocation(line: 15, column: 5, scope: !32)
!567 = !DILocation(line: 16, column: 1, scope: !32)
!568 = !DILocation(line: 26, column: 5, scope: !432)
!569 = !DILocation(line: 26, column: 20, scope: !432)
!570 = !DILocation(line: 26, column: 25, scope: !432)
!571 = !DILocation(line: 27, column: 44, scope: !432)
!572 = !DILocation(line: 27, column: 48, scope: !432)
!573 = !{!574, !445, i64 16}
!574 = !{!"_ts", !445, i64 0, !445, i64 8, !445, i64 16, !445, i64 24, !439, i64 32, !440, i64 36, !440, i64 37, !439, i64 40, !439, i64 44, !445, i64 48, !445, i64 56, !445, i64 64, !445, i64 72, !445, i64 80, !445, i64 88, !445, i64 96, !445, i64 104, !445, i64 112, !445, i64 120, !445, i64 128, !439, i64 136, !445, i64 144, !575, i64 152, !439, i64 160, !445, i64 168, !445, i64 176, !445, i64 184}
!575 = !{!"long", !440, i64 0}
!576 = !DILocation(line: 27, column: 56, scope: !432)
!577 = !DILocation(line: 27, column: 5, scope: !432)
!578 = !DILocation(line: 28, column: 12, scope: !432)
!579 = !DILocation(line: 28, column: 5, scope: !432)
!580 = !DILocation(line: 29, column: 5, scope: !432)
!581 = !DILocation(line: 34, column: 1, scope: !432)
