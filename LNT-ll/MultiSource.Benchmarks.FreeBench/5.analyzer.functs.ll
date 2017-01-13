; ModuleID = './MultiSource.Benchmarks.FreeBench/5.analyzer.functs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hard_raw = type { %struct.hard_raw*, %struct.hard_raw*, i64, i32, i32, i64, i32, i32, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.epoch_t = type { %struct.trans_t*, %struct.trans_t*, i32, i64, i64, i64, i64 }
%struct.trans_t = type { i32, i64, i64, i8* }

@.str = private unnamed_addr constant [7 x i8] c"%s %lu\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s %lx %lu\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s %lu %lu\00", align 1
@loop_time = common global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Time for loop: %lu issues\0A\00", align 1
@prog_time = common global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Time for program: %lu issues\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Loop is %0.3g %% of program\0A\00", align 1
@hard_raw_list = external global %struct.hard_raw*, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"OPTIMUM RESTART RESULTS\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Time for speculative loop is %lu issues\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Potential speedup for loop: %0.3g times\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Potential speedup for program: %0.3g times\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"optloop: %0.3g\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"optprog: %0.3g\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"REALISTIC RESTART RESULTS -- Unlimited amount of CPUs\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"REALISTIC RESTART RESULTS -- %d CPUs\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"realloop: %d %0.3g\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"realprog: %d %0.3g\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @speedup_test(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %string = alloca [100 x i8], align 16
  %ostring = alloca [100 x i8], align 16
  %slask = alloca [100 x i8], align 16
  %address = alloca i64, align 8
  %issue_no1 = alloca i64, align 8
  %issue_no2 = alloca i64, align 8
  %issue_no3 = alloca i64, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %arraydecay, i64* %issue_no1)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %ostring, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %call3 = call i8* @strcpy(i8* %arraydecay1, i8* %arraydecay2) #3
  %arraydecay4 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i8* @fgets(i8* %arraydecay4, i32 100, %struct._IO_FILE* %2)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %arrayidx = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 69
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %arraydecay7 = getelementptr inbounds [100 x i8], [100 x i8]* %ostring, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [100 x i8], [100 x i8]* %slask, i32 0, i32 0
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay8, i64* %address, i64* %issue_no2) #3
  %arraydecay10 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [100 x i8], [100 x i8]* %slask, i32 0, i32 0
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay11, i64* %address, i64* %issue_no3) #3
  %4 = load i64, i64* %issue_no2, align 8
  %5 = load i64, i64* %issue_no1, align 8
  %sub = sub i64 %4, %5
  store i64 %sub, i64* @loop_time, align 8
  %6 = load i64, i64* @loop_time, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i64 %6)
  %7 = load i64, i64* %issue_no3, align 8
  store i64 %7, i64* @prog_time, align 8
  %8 = load i64, i64* @prog_time, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i64 %8)
  %9 = load i64, i64* %issue_no2, align 8
  %10 = load i64, i64* %issue_no1, align 8
  %sub15 = sub i64 %9, %10
  %conv16 = uitofp i64 %sub15 to double
  %11 = load i64, i64* %issue_no3, align 8
  %conv17 = uitofp i64 %11 to double
  %div = fdiv double %conv16, %conv17
  %mul = fmul double %div, 1.000000e+02
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), double %mul)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %12)
  ret void
}

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i64 @imix_test(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %string = alloca [100 x i8], align 16
  %ostring = alloca [100 x i8], align 16
  %slask = alloca [100 x i8], align 16
  %address = alloca i64, align 8
  %issue_no1 = alloca i64, align 8
  %issue_no2 = alloca i64, align 8
  %data_access = alloca i64, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i64 0, i64* %data_access, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %0)
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 100, %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1, i64* %issue_no1)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %arrayidx = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i64 2
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 58
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i64, i64* %data_access, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %data_access, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %arraydecay4 = getelementptr inbounds [100 x i8], [100 x i8]* %ostring, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %call6 = call i8* @strcpy(i8* %arraydecay4, i8* %arraydecay5) #3
  %arraydecay7 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i8* @fgets(i8* %arraydecay7, i32 100, %struct._IO_FILE* %5)
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %arrayidx9 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i64 0
  %6 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %6 to i32
  %cmp11 = icmp ne i32 %conv10, 69
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %arraydecay13 = getelementptr inbounds [100 x i8], [100 x i8]* %ostring, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [100 x i8], [100 x i8]* %slask, i32 0, i32 0
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay14, i64* %address, i64* %issue_no2) #3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %7)
  %8 = load i64, i64* %data_access, align 8
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define void @find_hard_raws() #0 {
entry:
  %iter = alloca %struct.hard_raw*, align 8
  store %struct.hard_raw* null, %struct.hard_raw** %iter, align 8
  %0 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %0, %struct.hard_raw** %iter, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %entry
  %1 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %cmp = icmp ne %struct.hard_raw* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %r_issue = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %2, i32 0, i32 8
  %3 = load i64, i64* %r_issue, align 8
  %4 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %w_issue = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %4, i32 0, i32 5
  %5 = load i64, i64* %w_issue, align 8
  %cmp1 = icmp ugt i64 %3, %5
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %prev = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %6, i32 0, i32 1
  %7 = load %struct.hard_raw*, %struct.hard_raw** %prev, align 8
  %cmp2 = icmp ne %struct.hard_raw* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %next = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %8, i32 0, i32 0
  %9 = load %struct.hard_raw*, %struct.hard_raw** %next, align 8
  %10 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %prev4 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %10, i32 0, i32 1
  %11 = load %struct.hard_raw*, %struct.hard_raw** %prev4, align 8
  %next5 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %11, i32 0, i32 0
  store %struct.hard_raw* %9, %struct.hard_raw** %next5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %12 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %next6 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %12, i32 0, i32 0
  %13 = load %struct.hard_raw*, %struct.hard_raw** %next6, align 8
  store %struct.hard_raw* %13, %struct.hard_raw** %iter, align 8
  br label %if.end.8

if.else:                                          ; preds = %while.body
  %14 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %next7 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %14, i32 0, i32 0
  %15 = load %struct.hard_raw*, %struct.hard_raw** %next7, align 8
  store %struct.hard_raw* %15, %struct.hard_raw** %iter, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @specul_time_o(%struct.epoch_t* %epoch, i32 %num_epochs, %struct._IO_FILE* %graphfile, i32 %show_speedup, i32 %thread_pen, i32 %commit_pen) #0 {
entry:
  %epoch.addr = alloca %struct.epoch_t*, align 8
  %num_epochs.addr = alloca i32, align 4
  %graphfile.addr = alloca %struct._IO_FILE*, align 8
  %show_speedup.addr = alloca i32, align 4
  %thread_pen.addr = alloca i32, align 4
  %commit_pen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %max = alloca i64, align 8
  %restarts = alloca i64, align 8
  %iter = alloca %struct.hard_raw*, align 8
  store %struct.epoch_t* %epoch, %struct.epoch_t** %epoch.addr, align 8
  store i32 %num_epochs, i32* %num_epochs.addr, align 4
  store %struct._IO_FILE* %graphfile, %struct._IO_FILE** %graphfile.addr, align 8
  store i32 %show_speedup, i32* %show_speedup.addr, align 4
  store i32 %thread_pen, i32* %thread_pen.addr, align 4
  store i32 %commit_pen, i32* %commit_pen.addr, align 4
  store i64 0, i64* %restarts, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num_epochs.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %3, i64 %idxprom
  %end_time = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx, i32 0, i32 4
  %4 = load i64, i64* %end_time, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %6, i64 %idxprom1
  %start_time = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx2, i32 0, i32 3
  %7 = load i64, i64* %start_time, align 8
  %sub = sub i64 %4, %7
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %9, i64 %idxprom3
  %run_time = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx4, i32 0, i32 5
  store i64 %sub, i64* %run_time, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %11, i64 %idxprom5
  %stall_time = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx6, i32 0, i32 6
  store i64 0, i64* %stall_time, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.hard_raw* null, %struct.hard_raw** %iter, align 8
  %13 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %13, %struct.hard_raw** %iter, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end
  %14 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %cmp7 = icmp ne %struct.hard_raw* %14, null
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %w_issue = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %15, i32 0, i32 5
  %16 = load i64, i64* %w_issue, align 8
  %17 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %w_epoch = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %17, i32 0, i32 3
  %18 = load i32, i32* %w_epoch, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %19, i64 %idxprom8
  %stall_time10 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx9, i32 0, i32 6
  %20 = load i64, i64* %stall_time10, align 8
  %add = add i64 %16, %20
  %21 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %r_epoch = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %21, i32 0, i32 6
  %22 = load i32, i32* %r_epoch, align 4
  %idxprom11 = sext i32 %22 to i64
  %23 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %23, i64 %idxprom11
  %stall_time13 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx12, i32 0, i32 6
  %24 = load i64, i64* %stall_time13, align 8
  %cmp14 = icmp ugt i64 %add, %24
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %25 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %w_issue15 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %25, i32 0, i32 5
  %26 = load i64, i64* %w_issue15, align 8
  %27 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %w_epoch16 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %27, i32 0, i32 3
  %28 = load i32, i32* %w_epoch16, align 4
  %idxprom17 = sext i32 %28 to i64
  %29 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %29, i64 %idxprom17
  %stall_time19 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx18, i32 0, i32 6
  %30 = load i64, i64* %stall_time19, align 8
  %add20 = add i64 %26, %30
  %31 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %r_epoch21 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %31, i32 0, i32 6
  %32 = load i32, i32* %r_epoch21, align 4
  %idxprom22 = sext i32 %32 to i64
  %33 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %33, i64 %idxprom22
  %stall_time24 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx23, i32 0, i32 6
  store i64 %add20, i64* %stall_time24, align 8
  %34 = load i64, i64* %restarts, align 8
  %inc25 = add i64 %34, 1
  store i64 %inc25, i64* %restarts, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %35 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %next = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %35, i32 0, i32 0
  %36 = load %struct.hard_raw*, %struct.hard_raw** %next, align 8
  store %struct.hard_raw* %36, %struct.hard_raw** %iter, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.39, %while.end
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %num_epochs.addr, align 4
  %cmp27 = icmp slt i32 %37, %38
  br i1 %cmp27, label %for.body.28, label %for.end.41

for.body.28:                                      ; preds = %for.cond.26
  %39 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %39 to i64
  %40 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %40, i64 %idxprom29
  %run_time31 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx30, i32 0, i32 5
  %41 = load i64, i64* %run_time31, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %42 to i64
  %43 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %43, i64 %idxprom32
  %stall_time34 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx33, i32 0, i32 6
  %44 = load i64, i64* %stall_time34, align 8
  %add35 = add i64 %41, %44
  %45 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %45 to i64
  %46 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %46, i64 %idxprom36
  %run_time38 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx37, i32 0, i32 5
  store i64 %add35, i64* %run_time38, align 8
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.28
  %47 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %47, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.26

for.end.41:                                       ; preds = %for.cond.26
  %48 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %48, i64 0
  %run_time43 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx42, i32 0, i32 5
  %49 = load i64, i64* %run_time43, align 8
  store i64 %49, i64* %max, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.56, %for.end.41
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %num_epochs.addr, align 4
  %cmp45 = icmp slt i32 %50, %51
  br i1 %cmp45, label %for.body.46, label %for.end.58

for.body.46:                                      ; preds = %for.cond.44
  %52 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %52 to i64
  %53 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %53, i64 %idxprom47
  %run_time49 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx48, i32 0, i32 5
  %54 = load i64, i64* %run_time49, align 8
  %55 = load i64, i64* %max, align 8
  %cmp50 = icmp ugt i64 %54, %55
  br i1 %cmp50, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %for.body.46
  %56 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %56 to i64
  %57 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %57, i64 %idxprom52
  %run_time54 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx53, i32 0, i32 5
  %58 = load i64, i64* %run_time54, align 8
  store i64 %58, i64* %max, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %for.body.46
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %59 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %59, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.44

for.end.58:                                       ; preds = %for.cond.44
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0))
  %60 = load i64, i64* %restarts, align 8
  %61 = load i32, i32* %num_epochs.addr, align 4
  %conv = sext i32 %61 to i64
  %add59 = add i64 %60, %conv
  %62 = load i32, i32* %thread_pen.addr, align 4
  %conv60 = sext i32 %62 to i64
  %mul = mul i64 %add59, %conv60
  %63 = load i32, i32* %num_epochs.addr, align 4
  %64 = load i32, i32* %commit_pen.addr, align 4
  %mul61 = mul nsw i32 %63, %64
  %conv62 = sext i32 %mul61 to i64
  %add63 = add i64 %mul, %conv62
  %65 = load i64, i64* %max, align 8
  %add64 = add i64 %65, %add63
  store i64 %add64, i64* %max, align 8
  %66 = load i64, i64* %max, align 8
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i64 %66)
  %67 = load i32, i32* %show_speedup.addr, align 4
  %cmp66 = icmp eq i32 %67, 1
  br i1 %cmp66, label %if.then.70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.58
  %68 = load i32, i32* %show_speedup.addr, align 4
  %cmp68 = icmp eq i32 %68, 3
  br i1 %cmp68, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %lor.lhs.false, %for.end.58
  %69 = load i64, i64* @loop_time, align 8
  %conv71 = uitofp i64 %69 to double
  %70 = load i64, i64* %max, align 8
  %conv72 = uitofp i64 %70 to double
  %div = fdiv double %conv71, %conv72
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), double %div)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.70, %lor.lhs.false
  %71 = load i32, i32* %show_speedup.addr, align 4
  %cmp75 = icmp eq i32 %71, 2
  br i1 %cmp75, label %if.then.80, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %if.end.74
  %72 = load i32, i32* %show_speedup.addr, align 4
  %cmp78 = icmp eq i32 %72, 3
  br i1 %cmp78, label %if.then.80, label %if.end.87

if.then.80:                                       ; preds = %lor.lhs.false.77, %if.end.74
  %73 = load i64, i64* @prog_time, align 8
  %conv81 = uitofp i64 %73 to double
  %74 = load i64, i64* %max, align 8
  %75 = load i64, i64* @prog_time, align 8
  %add82 = add i64 %74, %75
  %76 = load i64, i64* @loop_time, align 8
  %sub83 = sub i64 %add82, %76
  %conv84 = uitofp i64 %sub83 to double
  %div85 = fdiv double %conv81, %conv84
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0), double %div85)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.80, %lor.lhs.false.77
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %graphfile.addr, align 8
  %cmp88 = icmp ne %struct._IO_FILE* %77, null
  br i1 %cmp88, label %if.then.90, label %if.end.115

if.then.90:                                       ; preds = %if.end.87
  %78 = load i32, i32* %show_speedup.addr, align 4
  %cmp91 = icmp eq i32 %78, 1
  br i1 %cmp91, label %if.then.96, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %if.then.90
  %79 = load i32, i32* %show_speedup.addr, align 4
  %cmp94 = icmp eq i32 %79, 3
  br i1 %cmp94, label %if.then.96, label %if.end.101

if.then.96:                                       ; preds = %lor.lhs.false.93, %if.then.90
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %graphfile.addr, align 8
  %81 = load i64, i64* @loop_time, align 8
  %conv97 = uitofp i64 %81 to double
  %82 = load i64, i64* %max, align 8
  %conv98 = uitofp i64 %82 to double
  %div99 = fdiv double %conv97, %conv98
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), double %div99)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.96, %lor.lhs.false.93
  %83 = load i32, i32* %show_speedup.addr, align 4
  %cmp102 = icmp eq i32 %83, 2
  br i1 %cmp102, label %if.then.107, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %if.end.101
  %84 = load i32, i32* %show_speedup.addr, align 4
  %cmp105 = icmp eq i32 %84, 3
  br i1 %cmp105, label %if.then.107, label %if.end.114

if.then.107:                                      ; preds = %lor.lhs.false.104, %if.end.101
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %graphfile.addr, align 8
  %86 = load i64, i64* @prog_time, align 8
  %conv108 = uitofp i64 %86 to double
  %87 = load i64, i64* %max, align 8
  %88 = load i64, i64* @prog_time, align 8
  %add109 = add i64 %87, %88
  %89 = load i64, i64* @loop_time, align 8
  %sub110 = sub i64 %add109, %89
  %conv111 = uitofp i64 %sub110 to double
  %div112 = fdiv double %conv108, %conv111
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), double %div112)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.107, %lor.lhs.false.104
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.87
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @specul_time_r(%struct.epoch_t* %epoch, i32 %num_epochs, i32 %cpulimit, %struct._IO_FILE* %graphfile, i32 %show_speedup, i32 %thread_pen, i32 %commit_pen) #0 {
entry:
  %epoch.addr = alloca %struct.epoch_t*, align 8
  %num_epochs.addr = alloca i32, align 4
  %cpulimit.addr = alloca i32, align 4
  %graphfile.addr = alloca %struct._IO_FILE*, align 8
  %show_speedup.addr = alloca i32, align 4
  %thread_pen.addr = alloca i32, align 4
  %commit_pen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %max = alloca i64, align 8
  %restarts = alloca i64, align 8
  %iter = alloca %struct.hard_raw*, align 8
  %j = alloca i32, align 4
  %current_stall = alloca i64, align 8
  %iter124 = alloca %struct.hard_raw*, align 8
  store %struct.epoch_t* %epoch, %struct.epoch_t** %epoch.addr, align 8
  store i32 %num_epochs, i32* %num_epochs.addr, align 4
  store i32 %cpulimit, i32* %cpulimit.addr, align 4
  store %struct._IO_FILE* %graphfile, %struct._IO_FILE** %graphfile.addr, align 8
  store i32 %show_speedup, i32* %show_speedup.addr, align 4
  store i32 %thread_pen, i32* %thread_pen.addr, align 4
  store i32 %commit_pen, i32* %commit_pen.addr, align 4
  store i64 0, i64* %max, align 8
  store i64 0, i64* %restarts, align 8
  %0 = load i32, i32* %cpulimit.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num_epochs.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %4, i64 %idxprom
  %end_time = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx, i32 0, i32 4
  %5 = load i64, i64* %end_time, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %7, i64 %idxprom2
  %start_time = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx3, i32 0, i32 3
  %8 = load i64, i64* %start_time, align 8
  %sub = sub i64 %5, %8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %10, i64 %idxprom4
  %run_time = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx5, i32 0, i32 5
  store i64 %sub, i64* %run_time, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %12, i64 %idxprom6
  %stall_time = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx7, i32 0, i32 6
  store i64 0, i64* %stall_time, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.hard_raw* null, %struct.hard_raw** %iter, align 8
  %14 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %14, %struct.hard_raw** %iter, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end
  %15 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %cmp8 = icmp ne %struct.hard_raw* %15, null
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %w_issue = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %16, i32 0, i32 5
  %17 = load i64, i64* %w_issue, align 8
  %18 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %w_epoch = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %18, i32 0, i32 3
  %19 = load i32, i32* %w_epoch, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %20, i64 %idxprom9
  %stall_time11 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx10, i32 0, i32 6
  %21 = load i64, i64* %stall_time11, align 8
  %add = add i64 %17, %21
  %22 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %r_epoch = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %22, i32 0, i32 6
  %23 = load i32, i32* %r_epoch, align 4
  %idxprom12 = sext i32 %23 to i64
  %24 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %24, i64 %idxprom12
  %stall_time14 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx13, i32 0, i32 6
  %25 = load i64, i64* %stall_time14, align 8
  %cmp15 = icmp ugt i64 %add, %25
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %while.body
  %26 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %w_epoch17 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %26, i32 0, i32 3
  %27 = load i32, i32* %w_epoch17, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %28, i64 %idxprom18
  %run_time20 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx19, i32 0, i32 5
  %29 = load i64, i64* %run_time20, align 8
  %30 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %w_epoch21 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %30, i32 0, i32 3
  %31 = load i32, i32* %w_epoch21, align 4
  %idxprom22 = sext i32 %31 to i64
  %32 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %32, i64 %idxprom22
  %stall_time24 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx23, i32 0, i32 6
  %33 = load i64, i64* %stall_time24, align 8
  %add25 = add i64 %29, %33
  %34 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %r_epoch26 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %34, i32 0, i32 6
  %35 = load i32, i32* %r_epoch26, align 4
  %idxprom27 = sext i32 %35 to i64
  %36 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %36, i64 %idxprom27
  %stall_time29 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx28, i32 0, i32 6
  store i64 %add25, i64* %stall_time29, align 8
  %37 = load i64, i64* %restarts, align 8
  %inc30 = add i64 %37, 1
  store i64 %inc30, i64* %restarts, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.16, %while.body
  %38 = load %struct.hard_raw*, %struct.hard_raw** %iter, align 8
  %next = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %38, i32 0, i32 0
  %39 = load %struct.hard_raw*, %struct.hard_raw** %next, align 8
  store %struct.hard_raw* %39, %struct.hard_raw** %iter, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.44, %while.end
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %num_epochs.addr, align 4
  %cmp32 = icmp slt i32 %40, %41
  br i1 %cmp32, label %for.body.33, label %for.end.46

for.body.33:                                      ; preds = %for.cond.31
  %42 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %42 to i64
  %43 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %43, i64 %idxprom34
  %run_time36 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx35, i32 0, i32 5
  %44 = load i64, i64* %run_time36, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %45 to i64
  %46 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %46, i64 %idxprom37
  %stall_time39 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx38, i32 0, i32 6
  %47 = load i64, i64* %stall_time39, align 8
  %add40 = add i64 %44, %47
  %48 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %48 to i64
  %49 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %49, i64 %idxprom41
  %run_time43 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx42, i32 0, i32 5
  store i64 %add40, i64* %run_time43, align 8
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.33
  %50 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %50, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.31

for.end.46:                                       ; preds = %for.cond.31
  %51 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %51, i64 0
  %run_time48 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx47, i32 0, i32 5
  %52 = load i64, i64* %run_time48, align 8
  store i64 %52, i64* %max, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.61, %for.end.46
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %num_epochs.addr, align 4
  %cmp50 = icmp slt i32 %53, %54
  br i1 %cmp50, label %for.body.51, label %for.end.63

for.body.51:                                      ; preds = %for.cond.49
  %55 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %55 to i64
  %56 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %56, i64 %idxprom52
  %run_time54 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx53, i32 0, i32 5
  %57 = load i64, i64* %run_time54, align 8
  %58 = load i64, i64* %max, align 8
  %cmp55 = icmp ugt i64 %57, %58
  br i1 %cmp55, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %for.body.51
  %59 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %59 to i64
  %60 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %60, i64 %idxprom57
  %run_time59 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx58, i32 0, i32 5
  %61 = load i64, i64* %run_time59, align 8
  store i64 %61, i64* %max, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %for.body.51
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %62 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %62, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.49

for.end.63:                                       ; preds = %for.cond.49
  br label %if.end.191

if.else:                                          ; preds = %entry
  store i64 0, i64* %current_stall, align 8
  %63 = load i32, i32* %cpulimit.addr, align 4
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0), i32 %63)
  store i32 0, i32* %i, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.81, %if.else
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* %num_epochs.addr, align 4
  %cmp66 = icmp slt i32 %64, %65
  br i1 %cmp66, label %for.body.67, label %for.end.83

for.body.67:                                      ; preds = %for.cond.65
  %66 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %66 to i64
  %67 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %67, i64 %idxprom68
  %end_time70 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx69, i32 0, i32 4
  %68 = load i64, i64* %end_time70, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %69 to i64
  %70 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %70, i64 %idxprom71
  %start_time73 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx72, i32 0, i32 3
  %71 = load i64, i64* %start_time73, align 8
  %sub74 = sub i64 %68, %71
  %72 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %72 to i64
  %73 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %73, i64 %idxprom75
  %run_time77 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx76, i32 0, i32 5
  store i64 %sub74, i64* %run_time77, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %74 to i64
  %75 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %75, i64 %idxprom78
  %stall_time80 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx79, i32 0, i32 6
  store i64 0, i64* %stall_time80, align 8
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.67
  %76 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %76, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.65

for.end.83:                                       ; preds = %for.cond.65
  %77 = load i32, i32* %cpulimit.addr, align 4
  store i32 %77, i32* %i, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.121, %for.end.83
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %num_epochs.addr, align 4
  %cmp85 = icmp slt i32 %78, %79
  br i1 %cmp85, label %for.body.86, label %for.end.123

for.body.86:                                      ; preds = %for.cond.84
  store i64 0, i64* %current_stall, align 8
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %cpulimit.addr, align 4
  %sub87 = sub nsw i32 %80, %81
  store i32 %sub87, i32* %j, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.108, %for.body.86
  %82 = load i32, i32* %j, align 4
  %83 = load i32, i32* %i, align 4
  %cmp89 = icmp slt i32 %82, %83
  br i1 %cmp89, label %for.body.90, label %for.end.110

for.body.90:                                      ; preds = %for.cond.88
  %84 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %84 to i64
  %85 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx92 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %85, i64 %idxprom91
  %run_time93 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx92, i32 0, i32 5
  %86 = load i64, i64* %run_time93, align 8
  %87 = load i32, i32* %j, align 4
  %idxprom94 = sext i32 %87 to i64
  %88 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx95 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %88, i64 %idxprom94
  %stall_time96 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx95, i32 0, i32 6
  %89 = load i64, i64* %stall_time96, align 8
  %add97 = add i64 %86, %89
  %90 = load i64, i64* %current_stall, align 8
  %cmp98 = icmp ugt i64 %add97, %90
  br i1 %cmp98, label %if.then.99, label %if.end.107

if.then.99:                                       ; preds = %for.body.90
  %91 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %91 to i64
  %92 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx101 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %92, i64 %idxprom100
  %run_time102 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx101, i32 0, i32 5
  %93 = load i64, i64* %run_time102, align 8
  %94 = load i32, i32* %j, align 4
  %idxprom103 = sext i32 %94 to i64
  %95 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx104 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %95, i64 %idxprom103
  %stall_time105 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx104, i32 0, i32 6
  %96 = load i64, i64* %stall_time105, align 8
  %add106 = add i64 %93, %96
  store i64 %add106, i64* %current_stall, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.99, %for.body.90
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %97 = load i32, i32* %j, align 4
  %inc109 = add nsw i32 %97, 1
  store i32 %inc109, i32* %j, align 4
  br label %for.cond.88

for.end.110:                                      ; preds = %for.cond.88
  %98 = load i32, i32* %i, align 4
  store i32 %98, i32* %j, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.118, %for.end.110
  %99 = load i32, i32* %j, align 4
  %100 = load i32, i32* %cpulimit.addr, align 4
  %101 = load i32, i32* %i, align 4
  %add112 = add nsw i32 %100, %101
  %cmp113 = icmp slt i32 %99, %add112
  br i1 %cmp113, label %for.body.114, label %for.end.120

for.body.114:                                     ; preds = %for.cond.111
  %102 = load i64, i64* %current_stall, align 8
  %103 = load i32, i32* %j, align 4
  %idxprom115 = sext i32 %103 to i64
  %104 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx116 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %104, i64 %idxprom115
  %stall_time117 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx116, i32 0, i32 6
  store i64 %102, i64* %stall_time117, align 8
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.114
  %105 = load i32, i32* %j, align 4
  %inc119 = add nsw i32 %105, 1
  store i32 %inc119, i32* %j, align 4
  br label %for.cond.111

for.end.120:                                      ; preds = %for.cond.111
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.end.120
  %106 = load i32, i32* %cpulimit.addr, align 4
  %107 = load i32, i32* %i, align 4
  %add122 = add nsw i32 %107, %106
  store i32 %add122, i32* %i, align 4
  br label %for.cond.84

for.end.123:                                      ; preds = %for.cond.84
  store %struct.hard_raw* null, %struct.hard_raw** %iter124, align 8
  %108 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %108, %struct.hard_raw** %iter124, align 8
  br label %while.cond.125

while.cond.125:                                   ; preds = %if.end.155, %for.end.123
  %109 = load %struct.hard_raw*, %struct.hard_raw** %iter124, align 8
  %cmp126 = icmp ne %struct.hard_raw* %109, null
  br i1 %cmp126, label %while.body.127, label %while.end.157

while.body.127:                                   ; preds = %while.cond.125
  %110 = load %struct.hard_raw*, %struct.hard_raw** %iter124, align 8
  %w_issue128 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %110, i32 0, i32 5
  %111 = load i64, i64* %w_issue128, align 8
  %112 = load %struct.hard_raw*, %struct.hard_raw** %iter124, align 8
  %w_epoch129 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %112, i32 0, i32 3
  %113 = load i32, i32* %w_epoch129, align 4
  %idxprom130 = sext i32 %113 to i64
  %114 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx131 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %114, i64 %idxprom130
  %stall_time132 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx131, i32 0, i32 6
  %115 = load i64, i64* %stall_time132, align 8
  %add133 = add i64 %111, %115
  %116 = load %struct.hard_raw*, %struct.hard_raw** %iter124, align 8
  %r_epoch134 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %116, i32 0, i32 6
  %117 = load i32, i32* %r_epoch134, align 4
  %idxprom135 = sext i32 %117 to i64
  %118 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx136 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %118, i64 %idxprom135
  %stall_time137 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx136, i32 0, i32 6
  %119 = load i64, i64* %stall_time137, align 8
  %cmp138 = icmp ugt i64 %add133, %119
  br i1 %cmp138, label %if.then.139, label %if.end.155

if.then.139:                                      ; preds = %while.body.127
  %120 = load %struct.hard_raw*, %struct.hard_raw** %iter124, align 8
  %w_epoch140 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %120, i32 0, i32 3
  %121 = load i32, i32* %w_epoch140, align 4
  %idxprom141 = sext i32 %121 to i64
  %122 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx142 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %122, i64 %idxprom141
  %run_time143 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx142, i32 0, i32 5
  %123 = load i64, i64* %run_time143, align 8
  %124 = load %struct.hard_raw*, %struct.hard_raw** %iter124, align 8
  %w_epoch144 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %124, i32 0, i32 3
  %125 = load i32, i32* %w_epoch144, align 4
  %idxprom145 = sext i32 %125 to i64
  %126 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx146 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %126, i64 %idxprom145
  %stall_time147 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx146, i32 0, i32 6
  %127 = load i64, i64* %stall_time147, align 8
  %add148 = add i64 %123, %127
  %128 = load %struct.hard_raw*, %struct.hard_raw** %iter124, align 8
  %r_epoch149 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %128, i32 0, i32 6
  %129 = load i32, i32* %r_epoch149, align 4
  %idxprom150 = sext i32 %129 to i64
  %130 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx151 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %130, i64 %idxprom150
  %stall_time152 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx151, i32 0, i32 6
  %131 = load i64, i64* %stall_time152, align 8
  %add153 = add i64 %131, %add148
  store i64 %add153, i64* %stall_time152, align 8
  %132 = load i64, i64* %restarts, align 8
  %inc154 = add i64 %132, 1
  store i64 %inc154, i64* %restarts, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.139, %while.body.127
  %133 = load %struct.hard_raw*, %struct.hard_raw** %iter124, align 8
  %next156 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %133, i32 0, i32 0
  %134 = load %struct.hard_raw*, %struct.hard_raw** %next156, align 8
  store %struct.hard_raw* %134, %struct.hard_raw** %iter124, align 8
  br label %while.cond.125

while.end.157:                                    ; preds = %while.cond.125
  store i32 0, i32* %i, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.171, %while.end.157
  %135 = load i32, i32* %i, align 4
  %136 = load i32, i32* %num_epochs.addr, align 4
  %cmp159 = icmp slt i32 %135, %136
  br i1 %cmp159, label %for.body.160, label %for.end.173

for.body.160:                                     ; preds = %for.cond.158
  %137 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %137 to i64
  %138 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx162 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %138, i64 %idxprom161
  %run_time163 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx162, i32 0, i32 5
  %139 = load i64, i64* %run_time163, align 8
  %140 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %140 to i64
  %141 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx165 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %141, i64 %idxprom164
  %stall_time166 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx165, i32 0, i32 6
  %142 = load i64, i64* %stall_time166, align 8
  %add167 = add i64 %139, %142
  %143 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %143 to i64
  %144 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx169 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %144, i64 %idxprom168
  %run_time170 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx169, i32 0, i32 5
  store i64 %add167, i64* %run_time170, align 8
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.body.160
  %145 = load i32, i32* %i, align 4
  %inc172 = add nsw i32 %145, 1
  store i32 %inc172, i32* %i, align 4
  br label %for.cond.158

for.end.173:                                      ; preds = %for.cond.158
  %146 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx174 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %146, i64 0
  %run_time175 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx174, i32 0, i32 5
  %147 = load i64, i64* %run_time175, align 8
  store i64 %147, i64* %max, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.188, %for.end.173
  %148 = load i32, i32* %i, align 4
  %149 = load i32, i32* %num_epochs.addr, align 4
  %cmp177 = icmp slt i32 %148, %149
  br i1 %cmp177, label %for.body.178, label %for.end.190

for.body.178:                                     ; preds = %for.cond.176
  %150 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %150 to i64
  %151 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx180 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %151, i64 %idxprom179
  %run_time181 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx180, i32 0, i32 5
  %152 = load i64, i64* %run_time181, align 8
  %153 = load i64, i64* %max, align 8
  %cmp182 = icmp ugt i64 %152, %153
  br i1 %cmp182, label %if.then.183, label %if.end.187

if.then.183:                                      ; preds = %for.body.178
  %154 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %154 to i64
  %155 = load %struct.epoch_t*, %struct.epoch_t** %epoch.addr, align 8
  %arrayidx185 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %155, i64 %idxprom184
  %run_time186 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %arrayidx185, i32 0, i32 5
  %156 = load i64, i64* %run_time186, align 8
  store i64 %156, i64* %max, align 8
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.183, %for.body.178
  br label %for.inc.188

for.inc.188:                                      ; preds = %if.end.187
  %157 = load i32, i32* %i, align 4
  %inc189 = add nsw i32 %157, 1
  store i32 %inc189, i32* %i, align 4
  br label %for.cond.176

for.end.190:                                      ; preds = %for.cond.176
  br label %if.end.191

if.end.191:                                       ; preds = %for.end.190, %for.end.63
  %158 = load i64, i64* %restarts, align 8
  %159 = load i32, i32* %num_epochs.addr, align 4
  %conv = sext i32 %159 to i64
  %add192 = add i64 %158, %conv
  %160 = load i32, i32* %thread_pen.addr, align 4
  %conv193 = sext i32 %160 to i64
  %mul = mul i64 %add192, %conv193
  %161 = load i32, i32* %num_epochs.addr, align 4
  %162 = load i32, i32* %commit_pen.addr, align 4
  %mul194 = mul nsw i32 %161, %162
  %conv195 = sext i32 %mul194 to i64
  %add196 = add i64 %mul, %conv195
  %163 = load i64, i64* %max, align 8
  %add197 = add i64 %163, %add196
  store i64 %add197, i64* %max, align 8
  %164 = load i64, i64* %max, align 8
  %call198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i64 %164)
  %165 = load i32, i32* %show_speedup.addr, align 4
  %cmp199 = icmp eq i32 %165, 1
  br i1 %cmp199, label %if.then.203, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.191
  %166 = load i32, i32* %show_speedup.addr, align 4
  %cmp201 = icmp eq i32 %166, 3
  br i1 %cmp201, label %if.then.203, label %if.end.207

if.then.203:                                      ; preds = %lor.lhs.false, %if.end.191
  %167 = load i64, i64* @loop_time, align 8
  %conv204 = uitofp i64 %167 to double
  %168 = load i64, i64* %max, align 8
  %conv205 = uitofp i64 %168 to double
  %div = fdiv double %conv204, %conv205
  %call206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), double %div)
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.203, %lor.lhs.false
  %169 = load i32, i32* %show_speedup.addr, align 4
  %cmp208 = icmp eq i32 %169, 2
  br i1 %cmp208, label %if.then.213, label %lor.lhs.false.210

lor.lhs.false.210:                                ; preds = %if.end.207
  %170 = load i32, i32* %show_speedup.addr, align 4
  %cmp211 = icmp eq i32 %170, 3
  br i1 %cmp211, label %if.then.213, label %if.end.220

if.then.213:                                      ; preds = %lor.lhs.false.210, %if.end.207
  %171 = load i64, i64* @prog_time, align 8
  %conv214 = uitofp i64 %171 to double
  %172 = load i64, i64* %max, align 8
  %173 = load i64, i64* @prog_time, align 8
  %add215 = add i64 %172, %173
  %174 = load i64, i64* @loop_time, align 8
  %sub216 = sub i64 %add215, %174
  %conv217 = uitofp i64 %sub216 to double
  %div218 = fdiv double %conv214, %conv217
  %call219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0), double %div218)
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.213, %lor.lhs.false.210
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %graphfile.addr, align 8
  %cmp221 = icmp ne %struct._IO_FILE* %175, null
  br i1 %cmp221, label %if.then.223, label %if.end.248

if.then.223:                                      ; preds = %if.end.220
  %176 = load i32, i32* %show_speedup.addr, align 4
  %cmp224 = icmp eq i32 %176, 1
  br i1 %cmp224, label %if.then.229, label %lor.lhs.false.226

lor.lhs.false.226:                                ; preds = %if.then.223
  %177 = load i32, i32* %show_speedup.addr, align 4
  %cmp227 = icmp eq i32 %177, 3
  br i1 %cmp227, label %if.then.229, label %if.end.234

if.then.229:                                      ; preds = %lor.lhs.false.226, %if.then.223
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %graphfile.addr, align 8
  %179 = load i32, i32* %cpulimit.addr, align 4
  %180 = load i64, i64* @loop_time, align 8
  %conv230 = uitofp i64 %180 to double
  %181 = load i64, i64* %max, align 8
  %conv231 = uitofp i64 %181 to double
  %div232 = fdiv double %conv230, %conv231
  %call233 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i32 %179, double %div232)
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.229, %lor.lhs.false.226
  %182 = load i32, i32* %show_speedup.addr, align 4
  %cmp235 = icmp eq i32 %182, 2
  br i1 %cmp235, label %if.then.240, label %lor.lhs.false.237

lor.lhs.false.237:                                ; preds = %if.end.234
  %183 = load i32, i32* %show_speedup.addr, align 4
  %cmp238 = icmp eq i32 %183, 3
  br i1 %cmp238, label %if.then.240, label %if.end.247

if.then.240:                                      ; preds = %lor.lhs.false.237, %if.end.234
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %graphfile.addr, align 8
  %185 = load i32, i32* %cpulimit.addr, align 4
  %186 = load i64, i64* @prog_time, align 8
  %conv241 = uitofp i64 %186 to double
  %187 = load i64, i64* %max, align 8
  %188 = load i64, i64* @prog_time, align 8
  %add242 = add i64 %187, %188
  %189 = load i64, i64* @loop_time, align 8
  %sub243 = sub i64 %add242, %189
  %conv244 = uitofp i64 %sub243 to double
  %div245 = fdiv double %conv241, %conv244
  %call246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i32 %185, double %div245)
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.240, %lor.lhs.false.237
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.end.220
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
