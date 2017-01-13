; ModuleID = './MultiSource.Benchmarks.MallocBench/87.gs.gs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.stream_s = type { i8*, i8*, i8*, i32, i8, i8, i64, %struct.stream_procs, i32, %struct._IO_FILE*, %struct.stream_s*, i16, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*)*, i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)* }

@memory_chunk_size = global i32 20000, align 4
@.str = private unnamed_addr constant [166 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs:/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/fonts\00", align 1
@gs_lib_default_path = global i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str, i32 0, i32 0), align 8
@gs_lib_env_path = common global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"GS_LIB\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"-I array\00", align 1
@gs_lib_paths = common global i8** null, align 8
@gs_lib_count = common global i32 0, align 4
@quiet = common global i32 0, align 4
@user_errors = common global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"GS.MAP\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"QUIET\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Usage: -dname, -dname=token, -sname=string\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"-dname= must be followed by a valid token\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.9 = private unnamed_addr constant [85 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gs.c\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"-w and -h must be followed by a number\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"DEVICEWIDTH\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"DEVICEHEIGHT\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"-M must be between 1 and 64\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"{(\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c")run}execute\00", align 1
@init1_done = global i32 0, align 4
@init2_done = global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"ghost.ps\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Can't find file %s (from command line)\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Reading %s... \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [10 x i8] c"%s read.\0A\00", align 1
@osp = external global %struct.ref_s*, align 8
@.str.22 = private unnamed_addr constant [20 x i8] c"\0AInterp returns %d\0A\00", align 1
@osbot = external global %struct.ref_s*, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"ostack\00", align 1
@estack = external global [0 x %struct.ref_s], align 8
@esp = external global %struct.ref_s*, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"estack\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %num_files = alloca i32, align 4
  %code = alloca i32, align 4
  %lib = alloca i8*, align 8
  %len = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* null, i8** @gs_lib_env_path, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call, i8** %lib, align 8
  %0 = load i8*, i8** %lib, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %lib, align 8
  %call1 = call i64 @strlen(i8* %1) #4
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  %2 = load i32, i32* %len, align 4
  %add = add nsw i32 %2, 1
  %call2 = call i8* @gs_malloc(i32 %add, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call2, i8** @gs_lib_env_path, align 8
  %3 = load i8*, i8** @gs_lib_env_path, align 8
  %4 = load i8*, i8** %lib, align 8
  %call3 = call i8* @strcpy(i8* %3, i8* %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %argc.addr, align 4
  %add4 = add nsw i32 %5, 2
  %call5 = call i8* @gs_malloc(i32 %add4, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  %6 = bitcast i8* %call5 to i8**
  store i8** %6, i8*** @gs_lib_paths, align 8
  store i32 0, i32* @gs_lib_count, align 4
  call void @set_lib_paths()
  store i32 0, i32* @quiet, align 4
  store i32 1, i32* @user_errors, align 4
  %7 = load i32, i32* %argc.addr, align 4
  %8 = load i8**, i8*** %argv.addr, align 8
  %call6 = call i32 (i32, i8**, i8*, i32 (i8, i8*)*, void (i8*, i32)*, ...) bitcast (i32 (...)* @gs_main to i32 (i32, i8**, i8*, i32 (i8, i8*)*, void (i8*, i32)*, ...)*)(i32 %7, i8** %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 (i8, i8*)* @swproc, void (i8*, i32)* @argproc)
  store i32 %call6, i32* %num_files, align 4
  %9 = load i32, i32* %num_files, align 4
  %cmp7 = icmp eq i32 %9, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  call void @init2()
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  store i32 0, i32* %code, align 4
  %call11 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zflush to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* null)
  %call12 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zflushpage to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* null)
  %10 = load i32, i32* %code, align 4
  %cmp13 = icmp slt i32 %10, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.10
  %11 = load i32, i32* %code, align 4
  call void @debug_dump_stack(i32 %11)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.10
  %12 = load i32, i32* %code, align 4
  %cmp17 = icmp eq i32 %12, 0
  %cond = select i1 %cmp17, i32 0, i32 2
  %call19 = call i32 (i32, ...) bitcast (i32 (...)* @gs_exit to i32 (i32, ...)*)(i32 %cond)
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i8* @getenv(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i8* @gs_malloc(i32, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @gs_main(...) #1

; Function Attrs: nounwind uwtable
define i32 @swproc(i8 signext %sw, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %sw.addr = alloca i8, align 1
  %arg.addr = alloca i8*, align 8
  %vnull = alloca %struct.ref_s, align 8
  %eqp = alloca i8*, align 8
  %value4 = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %astream = alloca %struct.stream_s, align 8
  %len = alloca i32, align 4
  %str = alloca i8*, align 8
  %astream48 = alloca %struct.stream_s, align 8
  %value49 = alloca %struct.ref_s, align 8
  %code50 = alloca i32, align 4
  %msize = alloca i32, align 4
  store i8 %sw, i8* %sw.addr, align 1
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8, i8* %sw.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 73, label %sw.bb
    i32 113, label %sw.bb.1
    i32 68, label %sw.bb.2
    i32 100, label %sw.bb.2
    i32 83, label %sw.bb.2
    i32 115, label %sw.bb.2
    i32 119, label %sw.bb.47
    i32 104, label %sw.bb.47
    i32 69, label %sw.bb.74
    i32 77, label %sw.bb.75
  ]

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load i32, i32* @gs_lib_count, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** @gs_lib_paths, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  store i8* %1, i8** %arrayidx, align 8
  %4 = load i32, i32* @gs_lib_count, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @gs_lib_count, align 4
  call void @set_lib_paths()
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* @quiet, align 4
  call void @init1()
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vnull, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 0, i64* %intval, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %vnull, i32 0, i32 1
  store i16 32, i16* %type_attrs, align 2
  %call = call i32 (i8*, %struct.ref_s*, ...) bitcast (i32 (...)* @initial_enter_name to i32 (i8*, %struct.ref_s*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s* %vnull)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry, %entry, %entry, %entry
  %5 = load i8*, i8** %arg.addr, align 8
  %call3 = call i8* @strchr(i8* %5, i32 61) #4
  store i8* %call3, i8** %eqp, align 8
  call void @init1()
  %6 = load i8*, i8** %eqp, align 8
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.2
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value4, i32 0, i32 0
  %intval7 = bitcast %union.v* %value6 to i64*
  store i64 0, i64* %intval7, align 8
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value4, i32 0, i32 1
  store i16 32, i16* %type_attrs8, align 2
  br label %if.end.45

if.else:                                          ; preds = %sw.bb.2
  %7 = load i8*, i8** %eqp, align 8
  %8 = load i8*, i8** %arg.addr, align 8
  %cmp9 = icmp eq i8* %7, %8
  br i1 %cmp9, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.else
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0))
  %call13 = call i32 (i32, ...) bitcast (i32 (...)* @gs_exit to i32 (i32, ...)*)(i32 1)
  br label %if.end.44

if.else.14:                                       ; preds = %if.else
  %9 = load i8*, i8** %eqp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %eqp, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8, i8* %sw.addr, align 1
  %conv15 = sext i8 %10 to i32
  %cmp16 = icmp eq i32 %conv15, 68
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.14
  %11 = load i8, i8* %sw.addr, align 1
  %conv18 = sext i8 %11 to i32
  %cmp19 = icmp eq i32 %conv18, 100
  br i1 %cmp19, label %if.then.21, label %if.else.28

if.then.21:                                       ; preds = %lor.lhs.false, %if.else.14
  %12 = load i8*, i8** %eqp, align 8
  %13 = load i8*, i8** %eqp, align 8
  %call22 = call i64 @strlen(i8* %13) #4
  %conv23 = trunc i64 %call22 to i32
  call void @sread_string(%struct.stream_s* %astream, i8* %12, i32 %conv23)
  %call24 = call i32 (%struct.stream_s*, i32, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_token to i32 (%struct.stream_s*, i32, %struct.ref_s*, ...)*)(%struct.stream_s* %astream, i32 0, %struct.ref_s* %value4)
  store i32 %call24, i32* %code, align 4
  %14 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.then.21
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0))
  %call27 = call i32 (i32, ...) bitcast (i32 (...)* @gs_exit to i32 (i32, ...)*)(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.then.21
  br label %if.end.43

if.else.28:                                       ; preds = %lor.lhs.false
  %15 = load i8*, i8** %eqp, align 8
  %call29 = call i64 @strlen(i8* %15) #4
  %conv30 = trunc i64 %call29 to i32
  store i32 %conv30, i32* %len, align 4
  %16 = load i32, i32* %len, align 4
  %call31 = call i8* @gs_malloc(i32 %16, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call31, i8** %str, align 8
  %17 = load i8*, i8** %str, align 8
  %cmp32 = icmp eq i8* %17, null
  br i1 %cmp32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.else.28
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.9, i32 0, i32 0), i32 153)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0))
  %call37 = call i32 (i32, ...) bitcast (i32 (...)* @gs_exit to i32 (i32, ...)*)(i32 1)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %if.else.28
  %20 = load i8*, i8** %str, align 8
  %21 = load i8*, i8** %eqp, align 8
  %call39 = call i8* @strcpy(i8* %20, i8* %21) #5
  %22 = load i8*, i8** %str, align 8
  %value40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value4, i32 0, i32 0
  %bytes = bitcast %union.v* %value40 to i8**
  store i8* %22, i8** %bytes, align 8
  %type_attrs41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value4, i32 0, i32 1
  store i16 566, i16* %type_attrs41, align 2
  %23 = load i32, i32* %len, align 4
  %conv42 = trunc i32 %23 to i16
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value4, i32 0, i32 2
  store i16 %conv42, i16* %size, align 2
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.38, %if.end
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.11
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then
  %24 = load i8*, i8** %arg.addr, align 8
  %call46 = call i32 (i8*, %struct.ref_s*, ...) bitcast (i32 (...)* @initial_enter_name to i32 (i8*, %struct.ref_s*, ...)*)(i8* %24, %struct.ref_s* %value4)
  br label %sw.epilog

sw.bb.47:                                         ; preds = %entry, %entry
  call void @init1()
  %25 = load i8*, i8** %arg.addr, align 8
  %26 = load i8*, i8** %arg.addr, align 8
  %call51 = call i64 @strlen(i8* %26) #4
  %conv52 = trunc i64 %call51 to i32
  call void @sread_string(%struct.stream_s* %astream48, i8* %25, i32 %conv52)
  %call53 = call i32 (%struct.stream_s*, i32, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_token to i32 (%struct.stream_s*, i32, %struct.ref_s*, ...)*)(%struct.stream_s* %astream48, i32 0, %struct.ref_s* %value49)
  store i32 %call53, i32* %code50, align 4
  %27 = load i32, i32* %code50, align 4
  %tobool54 = icmp ne i32 %27, 0
  br i1 %tobool54, label %if.then.66, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %sw.bb.47
  %type_attrs56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value49, i32 0, i32 1
  %28 = load i16, i16* %type_attrs56, align 2
  %conv57 = zext i16 %28 to i32
  %and = and i32 %conv57, 255
  %shr = ashr i32 %and, 2
  %cmp58 = icmp ne i32 %shr, 5
  br i1 %cmp58, label %land.lhs.true, label %if.end.69

land.lhs.true:                                    ; preds = %lor.lhs.false.55
  %type_attrs60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value49, i32 0, i32 1
  %29 = load i16, i16* %type_attrs60, align 2
  %conv61 = zext i16 %29 to i32
  %and62 = and i32 %conv61, 255
  %shr63 = ashr i32 %and62, 2
  %cmp64 = icmp ne i32 %shr63, 11
  br i1 %cmp64, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %land.lhs.true, %sw.bb.47
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0))
  %call68 = call i32 (i32, ...) bitcast (i32 (...)* @gs_exit to i32 (i32, ...)*)(i32 1)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %land.lhs.true, %lor.lhs.false.55
  %30 = load i8, i8* %sw.addr, align 1
  %conv70 = sext i8 %30 to i32
  %cmp71 = icmp eq i32 %conv70, 119
  %cond = select i1 %cmp71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)
  %call73 = call i32 (i8*, %struct.ref_s*, ...) bitcast (i32 (...)* @initial_enter_name to i32 (i8*, %struct.ref_s*, ...)*)(i8* %cond, %struct.ref_s* %value49)
  br label %sw.epilog

sw.bb.74:                                         ; preds = %entry
  store i32 0, i32* @user_errors, align 4
  br label %sw.epilog

sw.bb.75:                                         ; preds = %entry
  store i32 0, i32* %msize, align 4
  %31 = load i8*, i8** %arg.addr, align 8
  %call76 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32* %msize) #5
  %32 = load i32, i32* %msize, align 4
  %cmp77 = icmp ule i32 %32, 0
  br i1 %cmp77, label %if.then.82, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %sw.bb.75
  %33 = load i32, i32* %msize, align 4
  %cmp80 = icmp uge i32 %33, 64
  br i1 %cmp80, label %if.then.82, label %if.end.85

if.then.82:                                       ; preds = %lor.lhs.false.79, %sw.bb.75
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0))
  %call84 = call i32 (i32, ...) bitcast (i32 (...)* @gs_exit to i32 (i32, ...)*)(i32 1)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.82, %lor.lhs.false.79
  %34 = load i32, i32* %msize, align 4
  %shl = shl i32 %34, 10
  store i32 %shl, i32* @memory_chunk_size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.85, %sw.bb.74, %if.end.69, %if.end.45, %sw.bb.1, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define void @argproc(i8* %arg, i32 %index) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %line = alloca [256 x i8], align 16
  %code = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  call void @init2()
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #5
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %0 = load i8*, i8** %arg.addr, align 8
  %call2 = call i8* @strcat(i8* %arraydecay1, i8* %0) #5
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %call4 = call i8* @strcat(i8* %arraydecay3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)) #5
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i32 0, i32 0
  %call6 = call i32 @interpret_string(i8* %arraydecay5)
  store i32 %call6, i32* %code, align 4
  %call7 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zflushpage to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* null)
  %1 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  call void @debug_dump_stack(i32 %2)
  %call8 = call i32 (i32, ...) bitcast (i32 (...)* @gs_exit to i32 (i32, ...)*)(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @zflush(...) #1

declare i32 @zflushpage(...) #1

; Function Attrs: nounwind uwtable
define void @debug_dump_stack(i32 %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %call = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zflush to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %0)
  %1 = load i32, i32* %code.addr, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i32 %1)
  %2 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 1
  %call2 = call i32 (%struct.ref_s*, %struct.ref_s*, i8*, ...) bitcast (i32 (...)* @debug_dump_refs to i32 (%struct.ref_s*, %struct.ref_s*, i8*, ...)*)(%struct.ref_s* %2, %struct.ref_s* %add.ptr, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0))
  %4 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 1
  %call4 = call i32 (%struct.ref_s*, %struct.ref_s*, i8*, ...) bitcast (i32 (...)* @debug_dump_refs to i32 (%struct.ref_s*, %struct.ref_s*, i8*, ...)*)(%struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i32 0, i32 0), %struct.ref_s* %add.ptr3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0))
  ret void
}

declare i32 @gs_exit(...) #1

declare i32 @initial_enter_name(...) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare i32 @printf(i8*, ...) #1

declare void @sread_string(%struct.stream_s*, i8*, i32) #1

declare i32 @scan_token(...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @interpret_string(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %stref = alloca %struct.ref_s, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stref, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  store i8* %0, i8** %bytes, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stref, i32 0, i32 1
  store i16 567, i16* %type_attrs, align 2
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %1) #4
  %conv = trunc i64 %call to i16
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %stref, i32 0, i32 2
  store i16 %conv, i16* %size, align 2
  %2 = load i32, i32* @user_errors, align 4
  %call1 = call i32 (%struct.ref_s*, i32, ...) bitcast (i32 (...)* @interpret to i32 (%struct.ref_s*, i32, ...)*)(%struct.ref_s* %stref, i32 %2)
  ret i32 %call1
}

declare i32 @interpret(...) #1

; Function Attrs: nounwind uwtable
define void @init1() #0 {
entry:
  %0 = load i32, i32* @init1_done, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @memory_chunk_size, align 4
  call void @alloc_init(i8* (i32, i32, i8*)* @gs_malloc, void (i8*, i32, i32, i8*)* @gs_free, i32 %1)
  %call = call i32 (...) @name_init()
  %call1 = call i32 (...) @obj_init()
  %call2 = call i32 (...) @scan_init()
  store i32 1, i32* @init1_done, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @alloc_init(i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)*, i32) #1

declare void @gs_free(i8*, i32, i32, i8*) #1

declare i32 @name_init(...) #1

declare i32 @obj_init(...) #1

declare i32 @scan_init(...) #1

; Function Attrs: nounwind uwtable
define void @init2() #0 {
entry:
  call void @init1()
  %0 = load i32, i32* @init2_done, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (...) @gs_init()
  %call1 = call i32 (...) @zfile_init()
  %call2 = call i32 (...) @zfont_init()
  %call3 = call i32 (...) @zmath_init()
  %call4 = call i32 (...) @zmatrix_init()
  %call5 = call i32 (i32, ...) bitcast (i32 (...)* @interp_init to i32 (i32, ...)*)(i32 1)
  %call6 = call i32 (...) @op_init()
  %1 = load i32, i32* @user_errors, align 4
  call void @run_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %1)
  store i32 1, i32* @init2_done, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gs_init(...) #1

declare i32 @zfile_init(...) #1

declare i32 @zfont_init(...) #1

declare i32 @zmath_init(...) #1

declare i32 @zmatrix_init(...) #1

declare i32 @interp_init(...) #1

declare i32 @op_init(...) #1

; Function Attrs: nounwind uwtable
define void @run_file(i8* %file_name, i32 %user_errors) #0 {
entry:
  %file_name.addr = alloca i8*, align 8
  %user_errors.addr = alloca i32, align 4
  %initial_file = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  store i8* %file_name, i8** %file_name.addr, align 8
  store i32 %user_errors, i32* %user_errors.addr, align 4
  %0 = load i8*, i8** %file_name.addr, align 8
  %1 = load i8*, i8** %file_name.addr, align 8
  %call = call i64 @strlen(i8* %1) #4
  %call1 = call i32 (i8*, i64, %struct.ref_s*, ...) bitcast (i32 (...)* @lib_file_open to i32 (i8*, i64, %struct.ref_s*, ...)*)(i8* %0, i64 %call, %struct.ref_s* %initial_file)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %file_name.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0), i8* %3)
  %call3 = call i32 (i32, ...) bitcast (i32 (...)* @gs_exit to i32 (i32, ...)*)(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* @quiet, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.7, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %5 = load i8*, i8** %file_name.addr, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %6)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %initial_file, i32 0, i32 1
  %7 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %7 to i32
  %or = or i32 %conv, 3
  %conv8 = trunc i32 %or to i16
  store i16 %conv8, i16* %type_attrs, align 2
  %8 = load i32, i32* %user_errors.addr, align 4
  %call9 = call i32 (%struct.ref_s*, i32, ...) bitcast (i32 (...)* @interpret to i32 (%struct.ref_s*, i32, ...)*)(%struct.ref_s* %initial_file, i32 %8)
  store i32 %call9, i32* %code, align 4
  %9 = load i32, i32* %code, align 4
  %cmp10 = icmp slt i32 %9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.7
  %10 = load i32, i32* %code, align 4
  call void @debug_dump_stack(i32 %10)
  %call13 = call i32 (i32, ...) bitcast (i32 (...)* @gs_exit to i32 (i32, ...)*)(i32 1)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.7
  %11 = load i32, i32* @quiet, align 4
  %tobool15 = icmp ne i32 %11, 0
  br i1 %tobool15, label %if.end.19, label %if.then.16

if.then.16:                                       ; preds = %if.end.14
  %12 = load i8*, i8** %file_name.addr, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call18 = call i32 @fflush(%struct._IO_FILE* %13)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.14
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_lib_paths() #0 {
entry:
  %ppath = alloca i8**, align 8
  %0 = load i32, i32* @gs_lib_count, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8**, i8*** @gs_lib_paths, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom
  store i8** %arrayidx, i8*** %ppath, align 8
  %2 = load i8*, i8** @gs_lib_env_path, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** @gs_lib_env_path, align 8
  %4 = load i8**, i8*** %ppath, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %4, i32 1
  store i8** %incdec.ptr, i8*** %ppath, align 8
  store i8* %3, i8** %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** @gs_lib_default_path, align 8
  %cmp1 = icmp ne i8* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %6 = load i8*, i8** @gs_lib_default_path, align 8
  %7 = load i8**, i8*** %ppath, align 8
  %incdec.ptr3 = getelementptr inbounds i8*, i8** %7, i32 1
  store i8** %incdec.ptr3, i8*** %ppath, align 8
  store i8* %6, i8** %7, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %8 = load i8**, i8*** %ppath, align 8
  store i8* null, i8** %8, align 8
  ret void
}

declare i32 @lib_file_open(...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @debug_dump_refs(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
