; ModuleID = './MultiSource.Applications.obsequi/6.obsequi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.itimerval = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i64, i64 }

@option_string = global [97 x i8] c"-Wall -O2\0A-DCOUNTBITS16\0A-DLASTBIT16\0A-DCOUNTMOVES_TABLE\0A-DHASHCODEBITS=23\0A-DTWO_STAGE_GENERATION\0A\00", align 16
@lock_file = internal global i8* null, align 8
@stop_minutes = internal global i64 0, align 8
@main_whos_turn = internal global i8 0, align 1
@.str = private unnamed_addr constant [36 x i8] c"winner %c, move (%d,%d), nodes %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Undecided, Best score: %d, nodes %s.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [85 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/obsequi/obsequi.c\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Undecided.\0A\00", align 1
@main_batch = internal global i32 1, align 4
@stdin = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"solve rows %u cols %u %c%s %c\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Invalid command: '%s'.\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Too many rows: %u > 30.\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Too many cols: %u > 30.\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Search space too large: %u > 256.\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%u,%u\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Invalid block string: '%s'.\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Invalid players turn: %c.\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Starting\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"No valid command given.\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"wehl:t:v\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"No help available in this version.\0A\00", align 1
@optarg = external global i8*, align 8
@.str.17 = private unnamed_addr constant [28 x i8] c"No version info available.\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Invalid option: '-%c'.\0A\00", align 1
@optind = external global i32, align 4
@.str.19 = private unnamed_addr constant [40 x i8] c"Extra unknown options on command line.\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"`sigaction' failed.\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"`setitimer' failed.\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Can't open file.\0A\00", align 1
@lock_file_offset = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"%c %15s\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"(%d,%d)\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Invalid row and columns.\0A%s\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c":%c:%d(%d,%d)\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%c %d %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Invalid player.\0A\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"W\00", align 1

; Function Attrs: nounwind uwtable
define i64 @getline_llvm(i8** %lineptr, i64* %n, %struct._IO_FILE* %stream) #0 {
entry:
  %lineptr.addr = alloca i8**, align 8
  %n.addr = alloca i64*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %buffer = alloca [4096 x i8], align 16
  %result = alloca i64, align 8
  store i8** %lineptr, i8*** %lineptr.addr, align 8
  store i64* %n, i64** %n.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = bitcast [4096 x i8]* %buffer to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 4096, i32 16, i1 false)
  store i64 0, i64* %result, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 4095, %struct._IO_FILE* %1)
  %cmp = icmp eq i8* null, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 -1, i64* %result, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i32 0, i32 0
  %call2 = call i64 @strlen(i8* %arraydecay1) #6
  store i64 %call2, i64* %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %result, align 8
  %cmp3 = icmp sge i64 %2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.end
  %3 = load i8**, i8*** %lineptr.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %cmp5 = icmp eq i8* %4, null
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.then.4
  %5 = load i64, i64* %result, align 8
  %add = add nsw i64 %5, 1
  %call7 = call noalias i8* @malloc(i64 %add) #1
  %6 = load i8**, i8*** %lineptr.addr, align 8
  store i8* %call7, i8** %6, align 8
  br label %if.end.11

if.else.8:                                        ; preds = %if.then.4
  %7 = load i8**, i8*** %lineptr.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i64, i64* %result, align 8
  %add9 = add nsw i64 %9, 1
  %call10 = call i8* @realloc(i8* %8, i64 %add9) #1
  %10 = load i8**, i8*** %lineptr.addr, align 8
  store i8* %call10, i8** %10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.8, %if.then.6
  %11 = load i8**, i8*** %lineptr.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast [4096 x i8]* %buffer to i8*
  %14 = load i64, i64* %result, align 8
  %add12 = add nsw i64 %14, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 %add12, i32 1, i1 false)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.11, %if.end
  %15 = load i64, i64* %result, align 8
  ret i64 %15
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %nodes = alloca i64, align 8
  %score = alloca i32, align 4
  %num_nodes = alloca i8*, align 8
  %winner = alloca i8, align 1
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @decode_switches(i32 %0, i8** %1)
  %2 = load i8*, i8** @lock_file, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @get_solve_command_from_lock_file()
  %3 = load i64, i64* @stop_minutes, align 8
  %tobool1 = icmp ne i64 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load i64, i64* @stop_minutes, align 8
  call void @set_stop_alrm(i64 %4)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.3

if.else:                                          ; preds = %entry
  call void @get_solve_command()
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.end
  call void @sig_int_setup()
  %5 = load i8, i8* @main_whos_turn, align 1
  %call = call i32 @search_for_move(i8 signext %5, i32* %row, i32* %col, i64* %nodes)
  store i32 %call, i32* %score, align 4
  call void @sig_block()
  %6 = load i64, i64* %nodes, align 8
  %call4 = call i8* @u64bit_to_string(i64 %6)
  store i8* %call4, i8** %num_nodes, align 8
  %7 = load i32, i32* %score, align 4
  %cmp = icmp sge i32 %7, 5000
  br i1 %cmp, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.end.3
  %8 = load i8, i8* @main_whos_turn, align 1
  %conv = sext i8 %8 to i32
  %9 = load i32, i32* %row, align 4
  %10 = load i32, i32* %col, align 4
  %11 = load i8*, i8** %num_nodes, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 %conv, i32 %9, i32 %10, i8* %11)
  br label %if.end.18

if.else.7:                                        ; preds = %if.end.3
  %12 = load i32, i32* %score, align 4
  %cmp8 = icmp sle i32 %12, 5000
  br i1 %cmp8, label %if.then.10, label %if.else.15

if.then.10:                                       ; preds = %if.else.7
  %13 = load i8, i8* @main_whos_turn, align 1
  %conv11 = sext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 86
  %cond = select i1 %cmp12, i32 72, i32 86
  %14 = load i32, i32* %row, align 4
  %15 = load i32, i32* %col, align 4
  %16 = load i8*, i8** %num_nodes, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 %cond, i32 %14, i32 %15, i8* %16)
  br label %if.end.17

if.else.15:                                       ; preds = %if.else.7
  %17 = load i32, i32* %score, align 4
  %18 = load i8*, i8** %num_nodes, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i32 %17, i8* %18)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.10
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.5
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call19 = call i32 @fflush(%struct._IO_FILE* %19)
  %20 = load i8*, i8** @lock_file, align 8
  %tobool20 = icmp ne i8* %20, null
  br i1 %tobool20, label %if.then.21, label %if.end.37

if.then.21:                                       ; preds = %if.end.18
  store i8 0, i8* %winner, align 1
  %21 = load i32, i32* %score, align 4
  %cmp22 = icmp sge i32 %21, 5000
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.then.21
  %22 = load i8, i8* @main_whos_turn, align 1
  store i8 %22, i8* %winner, align 1
  br label %if.end.36

if.else.25:                                       ; preds = %if.then.21
  %23 = load i32, i32* %score, align 4
  %cmp26 = icmp sle i32 %23, -5000
  br i1 %cmp26, label %if.then.28, label %if.else.34

if.then.28:                                       ; preds = %if.else.25
  %24 = load i8, i8* @main_whos_turn, align 1
  %conv29 = sext i8 %24 to i32
  %cmp30 = icmp eq i32 %conv29, 86
  %cond32 = select i1 %cmp30, i32 72, i32 86
  %conv33 = trunc i32 %cond32 to i8
  store i8 %conv33, i8* %winner, align 1
  br label %if.end.35

if.else.34:                                       ; preds = %if.else.25
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 149, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.28
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.24
  %25 = load i8, i8* %winner, align 1
  %26 = load i8*, i8** %num_nodes, align 8
  call void @write_to_lock_file(i8 signext %25, i8* %26)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.18
  %call38 = call i32 (i32, i32, ...) @fcntl(i32 0, i32 4, i32 0)
  %27 = load i32, i32* @main_batch, align 4
  %tobool39 = icmp ne i32 %27, 0
  br i1 %tobool39, label %if.end.44, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.40
  %call41 = call i32 @getchar()
  %cmp42 = icmp ne i32 %call41, -1
  br i1 %cmp42, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.44

if.end.44:                                        ; preds = %while.end, %if.end.37
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @decode_switches(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %c = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @getopt(i32 %0, i8** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #1
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %c, align 4
  switch i32 %2, label %sw.default [
    i32 101, label %sw.bb
    i32 104, label %sw.bb.2
    i32 108, label %sw.bb.4
    i32 116, label %sw.bb.6
    i32 118, label %sw.bb.8
    i32 119, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %while.body
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @option_string, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

sw.bb.2:                                          ; preds = %while.body
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

sw.bb.4:                                          ; preds = %while.body
  %3 = load i8*, i8** @optarg, align 8
  %call5 = call noalias i8* @strdup(i8* %3) #1
  store i8* %call5, i8** @lock_file, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  %4 = load i8*, i8** @optarg, align 8
  %call7 = call i32 @atoi(i8* %4) #6
  %conv = sext i32 %call7 to i64
  store i64 %conv, i64* @stop_minutes, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

sw.bb.10:                                         ; preds = %while.body
  store i32 0, i32* @main_batch, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %5 = load i32, i32* %c, align 4
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 378, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i32 %5)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.10, %sw.bb.6, %sw.bb.4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* @optind, align 4
  %7 = load i32, i32* %argc.addr, align 4
  %cmp11 = icmp slt i32 %6, %7
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 383, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_stop_alrm(i64 %minutes) #0 {
entry:
  %minutes.addr = alloca i64, align 8
  %act = alloca %struct.sigaction, align 8
  %itime = alloca %struct.itimerval, align 8
  store i64 %minutes, i64* %minutes.addr, align 8
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 1
  %call = call i32 @sigfillset(%struct.__sigset_t* %sa_mask) #1
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 2
  store i32 0, i32* %sa_flags, align 4
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 0
  %sa_handler = bitcast %union.anon* %__sigaction_handler to void (i32)**
  store void (i32)* @stop_alrm_handler, void (i32)** %sa_handler, align 8
  %call1 = call i32 @sigaction(i32 26, %struct.sigaction* %act, %struct.sigaction* null) #1
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 449, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, i64* %minutes.addr, align 8
  %mul = mul nsw i64 %0, 60
  %it_interval = getelementptr inbounds %struct.itimerval, %struct.itimerval* %itime, i32 0, i32 0
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %it_interval, i32 0, i32 0
  store i64 %mul, i64* %tv_sec, align 8
  %it_interval2 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %itime, i32 0, i32 0
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %it_interval2, i32 0, i32 1
  store i64 0, i64* %tv_usec, align 8
  %1 = load i64, i64* %minutes.addr, align 8
  %mul3 = mul nsw i64 %1, 60
  %it_value = getelementptr inbounds %struct.itimerval, %struct.itimerval* %itime, i32 0, i32 1
  %tv_sec4 = getelementptr inbounds %struct.timeval, %struct.timeval* %it_value, i32 0, i32 0
  store i64 %mul3, i64* %tv_sec4, align 8
  %it_value5 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %itime, i32 0, i32 1
  %tv_usec6 = getelementptr inbounds %struct.timeval, %struct.timeval* %it_value5, i32 0, i32 1
  store i64 0, i64* %tv_usec6, align 8
  %call7 = call i32 @setitimer(i32 1, %struct.itimerval* %itime, %struct.itimerval* null) #1
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 457, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  ret void
}

declare i32 @search_for_move(i8 signext, i32*, i32*, i64*) #2

declare i8* @u64bit_to_string(i64) #2

declare i32 @printf(i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare void @_fatal_error_aux(i8*, i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @write_to_lock_file(i8 signext %winner, i8* %num_nodes) #0 {
entry:
  %winner.addr = alloca i8, align 1
  %num_nodes.addr = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  store i8 %winner, i8* %winner.addr, align 1
  store i8* %num_nodes, i8** %num_nodes.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %file, align 8
  %0 = load i8*, i8** @lock_file, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 530, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** @lock_file, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %3 = load i32, i32* @lock_file_offset, align 4
  %conv = sext i32 %3 to i64
  %call2 = call i32 @fseek(%struct._IO_FILE* %2, i64 %conv, i32 0)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %5 = load i8, i8* %winner.addr, align 1
  %conv3 = sext i8 %5 to i32
  %6 = load i8*, i8** %num_nodes.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 %conv3, i8* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call6 = call i32 @fclose(%struct._IO_FILE* %8)
  ret void
}

declare i32 @fcntl(i32, i32, ...) #2

declare i32 @getchar() #2

; Function Attrs: nounwind uwtable
define internal void @get_solve_command() #0 {
entry:
  %line = alloca i8*, align 8
  %blocks = alloca i8*, align 8
  %line_size = alloca i64, align 8
  %len = alloca i64, align 8
  %num_rows = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %board = alloca [30 x [30 x i32]], align 16
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %t = alloca i32, align 4
  %tok = alloca i8*, align 8
  store i8* null, i8** %line, align 8
  store i8* null, i8** %blocks, align 8
  store i64 0, i64* %line_size, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.then.87, %if.then.73, %if.then.44, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.else.6, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i64 @getline_llvm(i8** %line, i64* %line_size, %struct._IO_FILE* %0)
  store i64 %call, i64* %len, align 8
  %cmp = icmp ne i64 %call, -1
  br i1 %cmp, label %while.body, label %while.end.93

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %len, align 8
  %cmp1 = icmp ugt i64 %1, 0
  br i1 %cmp1, label %if.then, label %if.else.6

if.then:                                          ; preds = %while.body
  %2 = load i8*, i8** %blocks, align 8
  %cmp2 = icmp ne i8* %2, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %3 = load i8*, i8** %blocks, align 8
  %4 = load i64, i64* %line_size, align 8
  %call4 = call i8* @realloc(i8* %3, i64 %4) #1
  store i8* %call4, i8** %blocks, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load i64, i64* %line_size, align 8
  %call5 = call noalias i8* @malloc(i64 %5) #1
  store i8* %call5, i8** %blocks, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.7

if.else.6:                                        ; preds = %while.body
  br label %while.cond

if.end.7:                                         ; preds = %if.end
  %6 = load i64, i64* %len, align 8
  %sub = sub i64 %6, 1
  %7 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  %8 = load i8*, i8** %line, align 8
  %9 = load i8*, i8** %blocks, align 8
  %call8 = call i32 (i8*, i8*, ...) @sscanf(i8* %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i32* %num_rows, i32* %num_cols, i8* %c1, i8* %9, i8* %c2) #1
  store i32 %call8, i32* %t, align 4
  %10 = load i32, i32* %t, align 4
  %cmp9 = icmp ne i32 %10, 3
  br i1 %cmp9, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.7
  %11 = load i32, i32* %t, align 4
  %cmp10 = icmp ne i32 %11, 5
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %land.lhs.true
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i8*, i8** %line, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* %13)
  br label %while.cond

if.end.13:                                        ; preds = %land.lhs.true, %if.end.7
  %14 = load i32, i32* %num_rows, align 4
  %cmp14 = icmp ugt i32 %14, 30
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i32, i32* %num_rows, align 4
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i32 %16)
  br label %while.cond

if.end.17:                                        ; preds = %if.end.13
  %17 = load i32, i32* %num_cols, align 4
  %cmp18 = icmp ugt i32 %17, 30
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i32, i32* %num_cols, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i32 %19)
  br label %while.cond

if.end.21:                                        ; preds = %if.end.17
  %20 = load i32, i32* %num_cols, align 4
  %21 = load i32, i32* %num_rows, align 4
  %mul = mul i32 %20, %21
  %cmp22 = icmp ugt i32 %mul, 256
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.21
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load i32, i32* %num_cols, align 4
  %24 = load i32, i32* %num_rows, align 4
  %mul24 = mul i32 %23, %24
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 %mul24)
  br label %while.cond

if.end.26:                                        ; preds = %if.end.21
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %if.end.26
  %25 = load i32, i32* %r, align 4
  %cmp27 = icmp slt i32 %25, 30
  br i1 %cmp27, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %for.body
  %26 = load i32, i32* %c, align 4
  %cmp29 = icmp slt i32 %26, 30
  br i1 %cmp29, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.28
  %27 = load i32, i32* %c, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load i32, i32* %r, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %board, i32 0, i64 %idxprom31
  %arrayidx33 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx32, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx33, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.30
  %29 = load i32, i32* %c, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %30 = load i32, i32* %r, align 4
  %inc35 = add nsw i32 %30, 1
  store i32 %inc35, i32* %r, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %31 = load i32, i32* %t, align 4
  %cmp37 = icmp eq i32 %31, 5
  br i1 %cmp37, label %if.then.38, label %if.else.75

if.then.38:                                       ; preds = %for.end.36
  %32 = load i8, i8* %c1, align 1
  %conv = sext i8 %32 to i32
  %call39 = call i32 @toupper(i32 %conv) #1
  %conv40 = trunc i32 %call39 to i8
  store i8 %conv40, i8* %c1, align 1
  %33 = load i8, i8* %c1, align 1
  %conv41 = sext i8 %33 to i32
  %cmp42 = icmp ne i32 %conv41, 66
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.38
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i8*, i8** %line, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* %35)
  br label %while.cond

if.end.46:                                        ; preds = %if.then.38
  %36 = load i8*, i8** %blocks, align 8
  %call47 = call i8* @strtok(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #1
  store i8* %call47, i8** %tok, align 8
  br label %while.cond.48

while.cond.48:                                    ; preds = %if.end.64, %if.end.46
  %37 = load i8*, i8** %tok, align 8
  %cmp49 = icmp ne i8* %37, null
  br i1 %cmp49, label %while.body.51, label %while.end

while.body.51:                                    ; preds = %while.cond.48
  %38 = load i8*, i8** %tok, align 8
  %call52 = call i32 (i8*, i8*, ...) @sscanf(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32* %r, i32* %c) #1
  %cmp53 = icmp ne i32 %call52, 2
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %while.body.51
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = load i8*, i8** %tok, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* %40)
  store i8 0, i8* %c1, align 1
  br label %while.end

if.end.57:                                        ; preds = %while.body.51
  %41 = load i32, i32* %r, align 4
  %42 = load i32, i32* %num_rows, align 4
  %cmp58 = icmp uge i32 %41, %42
  br i1 %cmp58, label %if.then.62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.57
  %43 = load i32, i32* %c, align 4
  %44 = load i32, i32* %num_cols, align 4
  %cmp60 = icmp uge i32 %43, %44
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %lor.lhs.false, %if.end.57
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load i8*, i8** %tok, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* %46)
  store i8 0, i8* %c1, align 1
  br label %while.end

if.end.64:                                        ; preds = %lor.lhs.false
  %47 = load i32, i32* %c, align 4
  %idxprom65 = sext i32 %47 to i64
  %48 = load i32, i32* %r, align 4
  %idxprom66 = sext i32 %48 to i64
  %arrayidx67 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %board, i32 0, i64 %idxprom66
  %arrayidx68 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx67, i32 0, i64 %idxprom65
  store i32 1, i32* %arrayidx68, align 4
  %call69 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #1
  store i8* %call69, i8** %tok, align 8
  br label %while.cond.48

while.end:                                        ; preds = %if.then.62, %if.then.55, %while.cond.48
  %49 = load i8, i8* %c1, align 1
  %conv70 = sext i8 %49 to i32
  %cmp71 = icmp eq i32 %conv70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %while.end
  br label %while.cond

if.end.74:                                        ; preds = %while.end
  br label %if.end.76

if.else.75:                                       ; preds = %for.end.36
  %50 = load i8, i8* %c1, align 1
  store i8 %50, i8* %c2, align 1
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.end.74
  %51 = load i8, i8* %c2, align 1
  %conv77 = sext i8 %51 to i32
  %call78 = call i32 @toupper(i32 %conv77) #1
  %conv79 = trunc i32 %call78 to i8
  store i8 %conv79, i8* %c2, align 1
  %52 = load i8, i8* %c2, align 1
  %conv80 = sext i8 %52 to i32
  %cmp81 = icmp ne i32 %conv80, 86
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.90

land.lhs.true.83:                                 ; preds = %if.end.76
  %53 = load i8, i8* %c2, align 1
  %conv84 = sext i8 %53 to i32
  %cmp85 = icmp ne i32 %conv84, 72
  br i1 %cmp85, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %land.lhs.true.83
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = load i8, i8* %c2, align 1
  %conv88 = sext i8 %55 to i32
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), i32 %conv88)
  br label %while.cond

if.end.90:                                        ; preds = %land.lhs.true.83, %if.end.76
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0))
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call92 = call i32 @fflush(%struct._IO_FILE* %56)
  br label %while.end.93

while.end.93:                                     ; preds = %if.end.90, %while.cond
  %57 = load i64, i64* %len, align 8
  %cmp94 = icmp eq i64 %57, -1
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %while.end.93
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 275, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %while.end.93
  %58 = load i8, i8* %c2, align 1
  store i8 %58, i8* @main_whos_turn, align 1
  %59 = load i32, i32* %num_rows, align 4
  %60 = load i32, i32* %num_cols, align 4
  %arraydecay = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %board, i32 0, i32 0
  call void @initialize_board(i32 %59, i32 %60, [30 x i32]* %arraydecay)
  %61 = load i8*, i8** %line, align 8
  call void @free(i8* %61) #1
  %62 = load i8*, i8** %blocks, align 8
  call void @free(i8* %62) #1
  ret void
}

; Function Attrs: nounwind
declare i32 @sscanf(i8*, i8*, ...) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @toupper(i32) #4

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #4

declare void @initialize_board(i32, i32, [30 x i32]*) #2

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @sig_int_setup() #0 {
entry:
  %act = alloca %struct.sigaction, align 8
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 1
  %call = call i32 @sigfillset(%struct.__sigset_t* %sa_mask) #1
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 2
  store i32 0, i32* %sa_flags, align 4
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 0
  %sa_handler = bitcast %union.anon* %__sigaction_handler to void (i32)**
  store void (i32)* @sig_int_handler, void (i32)** %sa_handler, align 8
  %call1 = call i32 @sigaction(i32 2, %struct.sigaction* %act, %struct.sigaction* null) #1
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 418, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @sigfillset(%struct.__sigset_t*) #4

; Function Attrs: nounwind uwtable
define internal void @sig_int_handler(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  %str = alloca i8*, align 8
  store i32 %sig, i32* %sig.addr, align 4
  %call = call i8* (...) @current_search_state()
  store i8* %call, i8** %str, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %str, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  ret void
}

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #4

declare i8* @current_search_state(...) #2

; Function Attrs: nounwind uwtable
define internal void @stop_alrm_handler(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  call void @exit(i32 0) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) #4

; Function Attrs: nounwind uwtable
define internal void @sig_block() #0 {
entry:
  %set = alloca %struct.__sigset_t, align 8
  %call = call i32 @sigemptyset(%struct.__sigset_t* %set) #1
  %call1 = call i32 @sigaddset(%struct.__sigset_t* %set, i32 14) #1
  %call2 = call i32 @sigaddset(%struct.__sigset_t* %set, i32 2) #1
  %call3 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* %set, %struct.__sigset_t* null) #1
  ret void
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #4

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #4

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @get_solve_command_from_lock_file() #0 {
entry:
  %file = alloca %struct._IO_FILE*, align 8
  %line = alloca i8*, align 8
  %line_size = alloca i64, align 8
  %len = alloca i64, align 8
  %line_pos = alloca i64, align 8
  %num_rows = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %board = alloca [30 x [30 x i32]], align 16
  %player = alloca i8, align 1
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %ignore = alloca i32, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %file, align 8
  store i8* null, i8** %line, align 8
  store i64 0, i64* %line_size, align 8
  store i8 0, i8* %player, align 1
  %0 = load i8*, i8** @lock_file, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 563, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** @lock_file, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.then.9, %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call2 = call i64 @ftell(%struct._IO_FILE* %2)
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* @lock_file_offset, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call3 = call i64 @getline_llvm(i8** %line, i64* %line_size, %struct._IO_FILE* %3)
  store i64 %call3, i64* %len, align 8
  %cmp4 = icmp ne i64 %call3, -1
  br i1 %cmp4, label %while.body, label %while.end.124

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp ne i32 %conv6, 65
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  br label %while.cond

if.end.10:                                        ; preds = %while.body
  %6 = load i8*, i8** %line, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* %6)
  %7 = load i64, i64* %len, align 8
  %cmp12 = icmp ule i64 %7, 18
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %8 = load i8*, i8** %line, align 8
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 577, i32 1, i8* %8)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.10
  %9 = load i8*, i8** %line, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 18
  %call16 = call i32 (i8*, i8*, ...) @sscanf(i8* %add.ptr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i32* %num_rows, i32* %num_cols) #1
  %cmp17 = icmp ne i32 %call16, 2
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  %10 = load i8*, i8** %line, align 8
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 580, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0), i8* %10)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.15
  %11 = load i32, i32* %num_rows, align 4
  %cmp21 = icmp ugt i32 %11, 30
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  %12 = load i32, i32* %num_rows, align 4
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 583, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i32 %12)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.20
  %13 = load i32, i32* %num_cols, align 4
  %cmp25 = icmp ugt i32 %13, 30
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  %14 = load i32, i32* %num_cols, align 4
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 585, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i32 %14)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.24
  %15 = load i32, i32* %num_cols, align 4
  %16 = load i32, i32* %num_rows, align 4
  %mul = mul i32 %15, %16
  %cmp29 = icmp ugt i32 %mul, 128
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.28
  %17 = load i32, i32* %num_cols, align 4
  %18 = load i32, i32* %num_rows, align 4
  %mul32 = mul i32 %17, %18
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 587, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 %mul32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.28
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.43, %if.end.33
  %19 = load i32, i32* %r, align 4
  %cmp34 = icmp slt i32 %19, 30
  br i1 %cmp34, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %for.body
  %20 = load i32, i32* %c, align 4
  %cmp37 = icmp slt i32 %20, 30
  br i1 %cmp37, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %for.cond.36
  %21 = load i32, i32* %c, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i32, i32* %r, align 4
  %idxprom40 = sext i32 %22 to i64
  %arrayidx41 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %board, i32 0, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx41, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx42, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.39
  %23 = load i32, i32* %c, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end
  %24 = load i32, i32* %r, align 4
  %inc44 = add nsw i32 %24, 1
  store i32 %inc44, i32* %r, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  store i64 18, i64* %line_pos, align 8
  br label %while.body.47

while.body.47:                                    ; preds = %for.end.45, %if.end.121
  %25 = load i8*, i8** %line, align 8
  %26 = load i64, i64* %line_pos, align 8
  %conv48 = trunc i64 %26 to i32
  %call49 = call i32 @next_valid_pos(i8* %25, i32 %conv48)
  %conv50 = sext i32 %call49 to i64
  store i64 %conv50, i64* %line_pos, align 8
  %27 = load i64, i64* %line_pos, align 8
  %28 = load i64, i64* %len, align 8
  %cmp51 = icmp uge i64 %27, %28
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %while.body.47
  br label %while.end

if.end.54:                                        ; preds = %while.body.47
  %29 = load i8*, i8** %line, align 8
  %30 = load i64, i64* %line_pos, align 8
  %add.ptr55 = getelementptr inbounds i8, i8* %29, i64 %30
  %call56 = call i32 (i8*, i8*, ...) @sscanf(i8* %add.ptr55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* %player, i32* %ignore, i32* %r, i32* %c) #1
  %cmp57 = icmp ne i32 %call56, 4
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.54
  br label %while.end

if.end.60:                                        ; preds = %if.end.54
  %31 = load i8, i8* %player, align 1
  %conv61 = sext i8 %31 to i32
  %32 = load i32, i32* %r, align 4
  %33 = load i32, i32* %c, align 4
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i32 %conv61, i32 %32, i32 %33)
  %34 = load i8, i8* %player, align 1
  %conv63 = sext i8 %34 to i32
  %cmp64 = icmp eq i32 %conv63, 86
  br i1 %cmp64, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %if.end.60
  %35 = load i32, i32* %r, align 4
  %idxprom67 = sext i32 %35 to i64
  %36 = load i32, i32* %c, align 4
  %idxprom68 = sext i32 %36 to i64
  %arrayidx69 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %board, i32 0, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx69, i32 0, i64 %idxprom67
  %37 = load i32, i32* %arrayidx70, align 4
  %cmp71 = icmp eq i32 %37, 1
  br i1 %cmp71, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.66
  %38 = load i32, i32* %r, align 4
  %idxprom73 = sext i32 %38 to i64
  %39 = load i32, i32* %c, align 4
  %add = add nsw i32 %39, 1
  %idxprom74 = sext i32 %add to i64
  %arrayidx75 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %board, i32 0, i64 %idxprom74
  %arrayidx76 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx75, i32 0, i64 %idxprom73
  %40 = load i32, i32* %arrayidx76, align 4
  %cmp77 = icmp eq i32 %40, 1
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %lor.lhs.false, %if.then.66
  %41 = load i8*, i8** %line, align 8
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 609, i32 1, i8* %41)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %lor.lhs.false
  %42 = load i32, i32* %r, align 4
  %idxprom81 = sext i32 %42 to i64
  %43 = load i32, i32* %c, align 4
  %add82 = add nsw i32 %43, 1
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %board, i32 0, i64 %idxprom83
  %arrayidx85 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx84, i32 0, i64 %idxprom81
  store i32 1, i32* %arrayidx85, align 4
  %44 = load i32, i32* %r, align 4
  %idxprom86 = sext i32 %44 to i64
  %45 = load i32, i32* %c, align 4
  %idxprom87 = sext i32 %45 to i64
  %arrayidx88 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %board, i32 0, i64 %idxprom87
  %arrayidx89 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx88, i32 0, i64 %idxprom86
  store i32 1, i32* %arrayidx89, align 4
  br label %if.end.121

if.else:                                          ; preds = %if.end.60
  %46 = load i8, i8* %player, align 1
  %conv90 = sext i8 %46 to i32
  %cmp91 = icmp eq i32 %conv90, 72
  br i1 %cmp91, label %if.then.93, label %if.else.119

if.then.93:                                       ; preds = %if.else
  %47 = load i32, i32* %c, align 4
  %idxprom94 = sext i32 %47 to i64
  %48 = load i32, i32* %r, align 4
  %idxprom95 = sext i32 %48 to i64
  %arrayidx96 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %board, i32 0, i64 %idxprom95
  %arrayidx97 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx96, i32 0, i64 %idxprom94
  %49 = load i32, i32* %arrayidx97, align 4
  %cmp98 = icmp eq i32 %49, 1
  br i1 %cmp98, label %if.then.108, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %if.then.93
  %50 = load i32, i32* %c, align 4
  %add101 = add nsw i32 %50, 1
  %idxprom102 = sext i32 %add101 to i64
  %51 = load i32, i32* %r, align 4
  %idxprom103 = sext i32 %51 to i64
  %arrayidx104 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %board, i32 0, i64 %idxprom103
  %arrayidx105 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx104, i32 0, i64 %idxprom102
  %52 = load i32, i32* %arrayidx105, align 4
  %cmp106 = icmp eq i32 %52, 1
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %lor.lhs.false.100, %if.then.93
  %53 = load i8*, i8** %line, align 8
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 613, i32 1, i8* %53)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %lor.lhs.false.100
  %54 = load i32, i32* %c, align 4
  %add110 = add nsw i32 %54, 1
  %idxprom111 = sext i32 %add110 to i64
  %55 = load i32, i32* %r, align 4
  %idxprom112 = sext i32 %55 to i64
  %arrayidx113 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %board, i32 0, i64 %idxprom112
  %arrayidx114 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx113, i32 0, i64 %idxprom111
  store i32 1, i32* %arrayidx114, align 4
  %56 = load i32, i32* %c, align 4
  %idxprom115 = sext i32 %56 to i64
  %57 = load i32, i32* %r, align 4
  %idxprom116 = sext i32 %57 to i64
  %arrayidx117 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %board, i32 0, i64 %idxprom116
  %arrayidx118 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx117, i32 0, i64 %idxprom115
  store i32 1, i32* %arrayidx118, align 4
  br label %if.end.120

if.else.119:                                      ; preds = %if.else
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 615, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.119, %if.end.109
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.80
  br label %while.body.47

while.end:                                        ; preds = %if.then.59, %if.then.53
  %call122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0))
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call123 = call i32 @fflush(%struct._IO_FILE* %58)
  br label %while.end.124

while.end.124:                                    ; preds = %while.end, %while.cond
  %59 = load i64, i64* %len, align 8
  %cmp125 = icmp eq i64 %59, -1
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %while.end.124
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 624, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %while.end.124
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %61 = load i32, i32* @lock_file_offset, align 4
  %conv129 = sext i32 %61 to i64
  %call130 = call i32 @fseek(%struct._IO_FILE* %60, i64 %conv129, i32 0)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call132 = call i32 @fflush(%struct._IO_FILE* %63)
  %64 = load i8, i8* %player, align 1
  %conv133 = sext i8 %64 to i32
  %cmp134 = icmp eq i32 %conv133, 86
  br i1 %cmp134, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %if.end.128
  store i8 72, i8* @main_whos_turn, align 1
  br label %if.end.144

if.else.137:                                      ; preds = %if.end.128
  %65 = load i8, i8* %player, align 1
  %conv138 = sext i8 %65 to i32
  %cmp139 = icmp eq i32 %conv138, 72
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %if.else.137
  store i8 86, i8* @main_whos_turn, align 1
  br label %if.end.143

if.else.142:                                      ; preds = %if.else.137
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i32 0, i32 0), i32 632, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.142, %if.then.141
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.136
  %66 = load i32, i32* %num_rows, align 4
  %67 = load i32, i32* %num_cols, align 4
  %arraydecay = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %board, i32 0, i32 0
  call void @initialize_board(i32 %66, i32 %67, [30 x i32]* %arraydecay)
  %68 = load i8*, i8** %line, align 8
  call void @free(i8* %68) #1
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call145 = call i32 @fclose(%struct._IO_FILE* %69)
  ret void
}

declare i64 @ftell(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i32 @next_valid_pos(i8* %line, i32 %line_pos) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %line_pos.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %state = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8
  store i32 %line_pos, i32* %line_pos.addr, align 4
  store i32 0, i32* %state, align 4
  %0 = load i32, i32* %line_pos.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load i8*, i8** %line.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 %idxprom2
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv4, 32
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %state, align 4
  %cmp7 = icmp ne i32 %7, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store i32 2, i32* %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  br label %if.end.14

if.else:                                          ; preds = %for.body
  %8 = load i32, i32* %state, align 4
  %cmp10 = icmp eq i32 %8, 2
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else
  br label %for.end

if.end.13:                                        ; preds = %if.else
  store i32 1, i32* %state, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %for.cond
  %10 = load i32, i32* %i, align 4
  ret i32 %10
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
