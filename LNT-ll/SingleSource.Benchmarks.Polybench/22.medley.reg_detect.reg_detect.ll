; ModuleID = './SingleSource.Benchmarks.Polybench/22.medley.reg_detect.reg_detect.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@polybench_papi_counters_threadid = global i32 0, align 4
@polybench_program_total_flops = global double 0.000000e+00, align 8
@polybench_t_start = common global double 0.000000e+00, align 8
@polybench_t_end = common global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = common global i64 0, align 8
@polybench_c_end = common global i64 0, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @polybench_flush_cache() #0 {
entry:
  %cs = alloca i32, align 4
  %flush = alloca double*, align 8
  %i = alloca i32, align 4
  %tmp = alloca double, align 8
  store i32 4194560, i32* %cs, align 4
  %0 = load i32, i32* %cs, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to double*
  store double* %1, double** %flush, align 8
  store double 0.000000e+00, double* %tmp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %cs, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load double*, double** %flush, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double, double* %tmp, align 8
  %add = fadd double %7, %6
  store double %add, double* %tmp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load double*, double** %flush, align 8
  %10 = bitcast double* %9 to i8*
  call void @free(i8* %10) #4
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @polybench_prepare_instruments() #0 {
entry:
  call void @polybench_flush_cache()
  ret void
}

; Function Attrs: nounwind uwtable
define void @polybench_timer_start() #0 {
entry:
  call void @polybench_prepare_instruments()
  %call = call double @rtclock()
  store double %call, double* @polybench_t_start, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @polybench_timer_stop() #0 {
entry:
  %call = call double @rtclock()
  store double %call, double* @polybench_t_end, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @polybench_timer_print() #0 {
entry:
  %0 = load double, double* @polybench_t_end, align 8
  %1 = load double, double* @polybench_t_start, align 8
  %sub = fsub double %0, %1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), double %sub)
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @polybench_alloc_data(i64 %n, i32 %elt_size) #0 {
entry:
  %n.addr = alloca i64, align 8
  %elt_size.addr = alloca i32, align 4
  %val = alloca i64, align 8
  %ret = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32 %elt_size, i32* %elt_size.addr, align 4
  %0 = load i64, i64* %n.addr, align 8
  store i64 %0, i64* %val, align 8
  %1 = load i32, i32* %elt_size.addr, align 4
  %conv = sext i32 %1 to i64
  %2 = load i64, i64* %val, align 8
  %mul = mul i64 %2, %conv
  store i64 %mul, i64* %val, align 8
  %3 = load i64, i64* %val, align 8
  %call = call i8* @xmalloc(i64 %3)
  store i8* %call, i8** %ret, align 8
  %4 = load i8*, i8** %ret, align 8
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define internal i8* @xmalloc(i64 %num) #0 {
entry:
  %num.addr = alloca i64, align 8
  %new = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i64 %num, i64* %num.addr, align 8
  store i8* null, i8** %new, align 8
  %0 = load i64, i64* %num.addr, align 8
  %call = call i32 @posix_memalign(i8** %new, i64 32, i64 %0) #4
  store i32 %call, i32* %ret, align 4
  %1 = load i8*, i8** %new, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %new, align 8
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %niter = alloca i32, align 4
  %maxgrid = alloca i32, align 4
  %length = alloca i32, align 4
  %sum_tang = alloca [6 x [6 x i32]]*, align 8
  %mean = alloca [6 x [6 x i32]]*, align 8
  %path = alloca [6 x [6 x i32]]*, align 8
  %diff = alloca [6 x [6 x [64 x i32]]]*, align 8
  %sum_diff = alloca [6 x [6 x [64 x i32]]]*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 10000, i32* %niter, align 4
  store i32 6, i32* %maxgrid, align 4
  store i32 64, i32* %length, align 4
  %call = call i8* @polybench_alloc_data(i64 36, i32 4)
  %0 = bitcast i8* %call to [6 x [6 x i32]]*
  store [6 x [6 x i32]]* %0, [6 x [6 x i32]]** %sum_tang, align 8
  %call1 = call i8* @polybench_alloc_data(i64 36, i32 4)
  %1 = bitcast i8* %call1 to [6 x [6 x i32]]*
  store [6 x [6 x i32]]* %1, [6 x [6 x i32]]** %mean, align 8
  %call2 = call i8* @polybench_alloc_data(i64 36, i32 4)
  %2 = bitcast i8* %call2 to [6 x [6 x i32]]*
  store [6 x [6 x i32]]* %2, [6 x [6 x i32]]** %path, align 8
  %call3 = call i8* @polybench_alloc_data(i64 2304, i32 4)
  %3 = bitcast i8* %call3 to [6 x [6 x [64 x i32]]]*
  store [6 x [6 x [64 x i32]]]* %3, [6 x [6 x [64 x i32]]]** %diff, align 8
  %call4 = call i8* @polybench_alloc_data(i64 2304, i32 4)
  %4 = bitcast i8* %call4 to [6 x [6 x [64 x i32]]]*
  store [6 x [6 x [64 x i32]]]* %4, [6 x [6 x [64 x i32]]]** %sum_diff, align 8
  %5 = load i32, i32* %maxgrid, align 4
  %6 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %sum_tang, align 8
  %arraydecay = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %6, i32 0, i32 0
  %7 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %mean, align 8
  %arraydecay5 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %7, i32 0, i32 0
  %8 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %path, align 8
  %arraydecay6 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %8, i32 0, i32 0
  call void @init_array(i32 %5, [6 x i32]* %arraydecay, [6 x i32]* %arraydecay5, [6 x i32]* %arraydecay6)
  %9 = load i32, i32* %niter, align 4
  %10 = load i32, i32* %maxgrid, align 4
  %11 = load i32, i32* %length, align 4
  %12 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %sum_tang, align 8
  %arraydecay7 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %12, i32 0, i32 0
  %13 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %mean, align 8
  %arraydecay8 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %13, i32 0, i32 0
  %14 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %path, align 8
  %arraydecay9 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %14, i32 0, i32 0
  %15 = load [6 x [6 x [64 x i32]]]*, [6 x [6 x [64 x i32]]]** %diff, align 8
  %arraydecay10 = getelementptr inbounds [6 x [6 x [64 x i32]]], [6 x [6 x [64 x i32]]]* %15, i32 0, i32 0
  %16 = load [6 x [6 x [64 x i32]]]*, [6 x [6 x [64 x i32]]]** %sum_diff, align 8
  %arraydecay11 = getelementptr inbounds [6 x [6 x [64 x i32]]], [6 x [6 x [64 x i32]]]* %16, i32 0, i32 0
  call void @kernel_reg_detect(i32 %9, i32 %10, i32 %11, [6 x i32]* %arraydecay7, [6 x i32]* %arraydecay8, [6 x i32]* %arraydecay9, [6 x [64 x i32]]* %arraydecay10, [6 x [64 x i32]]* %arraydecay11)
  %17 = load i32, i32* %maxgrid, align 4
  %18 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %path, align 8
  %arraydecay12 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %18, i32 0, i32 0
  call void @print_array(i32 %17, [6 x i32]* %arraydecay12)
  %19 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %sum_tang, align 8
  %20 = bitcast [6 x [6 x i32]]* %19 to i8*
  call void @free(i8* %20) #4
  %21 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %mean, align 8
  %22 = bitcast [6 x [6 x i32]]* %21 to i8*
  call void @free(i8* %22) #4
  %23 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %path, align 8
  %24 = bitcast [6 x [6 x i32]]* %23 to i8*
  call void @free(i8* %24) #4
  %25 = load [6 x [6 x [64 x i32]]]*, [6 x [6 x [64 x i32]]]** %diff, align 8
  %26 = bitcast [6 x [6 x [64 x i32]]]* %25 to i8*
  call void @free(i8* %26) #4
  %27 = load [6 x [6 x [64 x i32]]]*, [6 x [6 x [64 x i32]]]** %sum_diff, align 8
  %28 = bitcast [6 x [6 x [64 x i32]]]* %27 to i8*
  call void @free(i8* %28) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 %maxgrid, [6 x i32]* %sum_tang, [6 x i32]* %mean, [6 x i32]* %path) #0 {
entry:
  %maxgrid.addr = alloca i32, align 4
  %sum_tang.addr = alloca [6 x i32]*, align 8
  %mean.addr = alloca [6 x i32]*, align 8
  %path.addr = alloca [6 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %maxgrid, i32* %maxgrid.addr, align 4
  store [6 x i32]* %sum_tang, [6 x i32]** %sum_tang.addr, align 8
  store [6 x i32]* %mean, [6 x i32]** %mean.addr, align 8
  store [6 x i32]* %path, [6 x i32]** %path.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %maxgrid.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %maxgrid.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  %5 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %5, 1
  %mul = mul nsw i32 %add, %add4
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load [6 x i32]*, [6 x i32]** %sum_tang.addr, align 8
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 %mul, i32* %arrayidx6, align 4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %9, %10
  %11 = load i32, i32* %maxgrid.addr, align 4
  %div = sdiv i32 %sub, %11
  %12 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load [6 x i32]*, [6 x i32]** %mean.addr, align 8
  %arrayidx9 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx9, i32 0, i64 %idxprom7
  store i32 %div, i32* %arrayidx10, align 4
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %sub11 = sub nsw i32 %16, 1
  %mul12 = mul nsw i32 %15, %sub11
  %17 = load i32, i32* %maxgrid.addr, align 4
  %div13 = sdiv i32 %mul12, %17
  %18 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load [6 x i32]*, [6 x i32]** %path.addr, align 8
  %arrayidx16 = getelementptr inbounds [6 x i32], [6 x i32]* %20, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx16, i32 0, i64 %idxprom14
  store i32 %div13, i32* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %22, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_reg_detect(i32 %niter, i32 %maxgrid, i32 %length, [6 x i32]* %sum_tang, [6 x i32]* %mean, [6 x i32]* %path, [6 x [64 x i32]]* %diff, [6 x [64 x i32]]* %sum_diff) #0 {
entry:
  %niter.addr = alloca i32, align 4
  %maxgrid.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %sum_tang.addr = alloca [6 x i32]*, align 8
  %mean.addr = alloca [6 x i32]*, align 8
  %path.addr = alloca [6 x i32]*, align 8
  %diff.addr = alloca [6 x [64 x i32]]*, align 8
  %sum_diff.addr = alloca [6 x [64 x i32]]*, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cnt = alloca i32, align 4
  store i32 %niter, i32* %niter.addr, align 4
  store i32 %maxgrid, i32* %maxgrid.addr, align 4
  store i32 %length, i32* %length.addr, align 4
  store [6 x i32]* %sum_tang, [6 x i32]** %sum_tang.addr, align 8
  store [6 x i32]* %mean, [6 x i32]** %mean.addr, align 8
  store [6 x i32]* %path, [6 x i32]** %path.addr, align 8
  store [6 x [64 x i32]]* %diff, [6 x [64 x i32]]** %diff.addr, align 8
  store [6 x [64 x i32]]* %sum_diff, [6 x [64 x i32]]** %sum_diff.addr, align 8
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.129, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %niter.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.131

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.23, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %maxgrid.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp sle i32 %2, %sub
  br i1 %cmp2, label %for.body.3, label %for.end.25

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %j, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.20, %for.body.3
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %maxgrid.addr, align 4
  %sub5 = sub nsw i32 %6, 1
  %cmp6 = icmp sle i32 %5, %sub5
  br i1 %cmp6, label %for.body.7, label %for.end.22

for.body.7:                                       ; preds = %for.cond.4
  store i32 0, i32* %cnt, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body.7
  %7 = load i32, i32* %cnt, align 4
  %8 = load i32, i32* %length.addr, align 4
  %sub9 = sub nsw i32 %8, 1
  %cmp10 = icmp sle i32 %7, %sub9
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load [6 x i32]*, [6 x i32]** %sum_tang.addr, align 8
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 %idxprom12
  %arrayidx13 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx13, align 4
  %13 = load i32, i32* %cnt, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %diff.addr, align 8
  %arrayidx17 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %16, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx17, i32 0, i64 %idxprom15
  %arrayidx19 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx18, i32 0, i64 %idxprom14
  store i32 %12, i32* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %17 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.4

for.end.22:                                       ; preds = %for.cond.4
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end.22
  %19 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %19, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond.1

for.end.25:                                       ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.84, %for.end.25
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %maxgrid.addr, align 4
  %sub27 = sub nsw i32 %21, 1
  %cmp28 = icmp sle i32 %20, %sub27
  br i1 %cmp28, label %for.body.29, label %for.end.86

for.body.29:                                      ; preds = %for.cond.26
  %22 = load i32, i32* %j, align 4
  store i32 %22, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.81, %for.body.29
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %maxgrid.addr, align 4
  %sub31 = sub nsw i32 %24, 1
  %cmp32 = icmp sle i32 %23, %sub31
  br i1 %cmp32, label %for.body.33, label %for.end.83

for.body.33:                                      ; preds = %for.cond.30
  %25 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %25 to i64
  %26 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %26 to i64
  %27 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %diff.addr, align 8
  %arrayidx36 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %27, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx36, i32 0, i64 %idxprom34
  %arrayidx38 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx37, i32 0, i64 0
  %28 = load i32, i32* %arrayidx38, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %29 to i64
  %30 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %30 to i64
  %31 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %sum_diff.addr, align 8
  %arrayidx41 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %31, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx41, i32 0, i64 %idxprom39
  %arrayidx43 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx42, i32 0, i64 0
  store i32 %28, i32* %arrayidx43, align 4
  store i32 1, i32* %cnt, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.67, %for.body.33
  %32 = load i32, i32* %cnt, align 4
  %33 = load i32, i32* %length.addr, align 4
  %sub45 = sub nsw i32 %33, 1
  %cmp46 = icmp sle i32 %32, %sub45
  br i1 %cmp46, label %for.body.47, label %for.end.69

for.body.47:                                      ; preds = %for.cond.44
  %34 = load i32, i32* %cnt, align 4
  %sub48 = sub nsw i32 %34, 1
  %idxprom49 = sext i32 %sub48 to i64
  %35 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %35 to i64
  %36 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %36 to i64
  %37 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %sum_diff.addr, align 8
  %arrayidx52 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %37, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx52, i32 0, i64 %idxprom50
  %arrayidx54 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx53, i32 0, i64 %idxprom49
  %38 = load i32, i32* %arrayidx54, align 4
  %39 = load i32, i32* %cnt, align 4
  %idxprom55 = sext i32 %39 to i64
  %40 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %40 to i64
  %41 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %41 to i64
  %42 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %diff.addr, align 8
  %arrayidx58 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %42, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx58, i32 0, i64 %idxprom56
  %arrayidx60 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx59, i32 0, i64 %idxprom55
  %43 = load i32, i32* %arrayidx60, align 4
  %add = add nsw i32 %38, %43
  %44 = load i32, i32* %cnt, align 4
  %idxprom61 = sext i32 %44 to i64
  %45 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %45 to i64
  %46 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %46 to i64
  %47 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %sum_diff.addr, align 8
  %arrayidx64 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %47, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx64, i32 0, i64 %idxprom62
  %arrayidx66 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx65, i32 0, i64 %idxprom61
  store i32 %add, i32* %arrayidx66, align 4
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.47
  %48 = load i32, i32* %cnt, align 4
  %inc68 = add nsw i32 %48, 1
  store i32 %inc68, i32* %cnt, align 4
  br label %for.cond.44

for.end.69:                                       ; preds = %for.cond.44
  %49 = load i32, i32* %length.addr, align 4
  %sub70 = sub nsw i32 %49, 1
  %idxprom71 = sext i32 %sub70 to i64
  %50 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %50 to i64
  %51 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %51 to i64
  %52 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %sum_diff.addr, align 8
  %arrayidx74 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %52, i64 %idxprom73
  %arrayidx75 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx74, i32 0, i64 %idxprom72
  %arrayidx76 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx75, i32 0, i64 %idxprom71
  %53 = load i32, i32* %arrayidx76, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %54 to i64
  %55 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %55 to i64
  %56 = load [6 x i32]*, [6 x i32]** %mean.addr, align 8
  %arrayidx79 = getelementptr inbounds [6 x i32], [6 x i32]* %56, i64 %idxprom78
  %arrayidx80 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx79, i32 0, i64 %idxprom77
  store i32 %53, i32* %arrayidx80, align 4
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end.69
  %57 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %57, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.30

for.end.83:                                       ; preds = %for.cond.30
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end.83
  %58 = load i32, i32* %j, align 4
  %inc85 = add nsw i32 %58, 1
  store i32 %inc85, i32* %j, align 4
  br label %for.cond.26

for.end.86:                                       ; preds = %for.cond.26
  store i32 0, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.97, %for.end.86
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %maxgrid.addr, align 4
  %sub88 = sub nsw i32 %60, 1
  %cmp89 = icmp sle i32 %59, %sub88
  br i1 %cmp89, label %for.body.90, label %for.end.99

for.body.90:                                      ; preds = %for.cond.87
  %61 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %61 to i64
  %62 = load [6 x i32]*, [6 x i32]** %mean.addr, align 8
  %arrayidx92 = getelementptr inbounds [6 x i32], [6 x i32]* %62, i64 0
  %arrayidx93 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx92, i32 0, i64 %idxprom91
  %63 = load i32, i32* %arrayidx93, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %64 to i64
  %65 = load [6 x i32]*, [6 x i32]** %path.addr, align 8
  %arrayidx95 = getelementptr inbounds [6 x i32], [6 x i32]* %65, i64 0
  %arrayidx96 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx95, i32 0, i64 %idxprom94
  store i32 %63, i32* %arrayidx96, align 4
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.90
  %66 = load i32, i32* %i, align 4
  %inc98 = add nsw i32 %66, 1
  store i32 %inc98, i32* %i, align 4
  br label %for.cond.87

for.end.99:                                       ; preds = %for.cond.87
  store i32 1, i32* %j, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.126, %for.end.99
  %67 = load i32, i32* %j, align 4
  %68 = load i32, i32* %maxgrid.addr, align 4
  %sub101 = sub nsw i32 %68, 1
  %cmp102 = icmp sle i32 %67, %sub101
  br i1 %cmp102, label %for.body.103, label %for.end.128

for.body.103:                                     ; preds = %for.cond.100
  %69 = load i32, i32* %j, align 4
  store i32 %69, i32* %i, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.123, %for.body.103
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %maxgrid.addr, align 4
  %sub105 = sub nsw i32 %71, 1
  %cmp106 = icmp sle i32 %70, %sub105
  br i1 %cmp106, label %for.body.107, label %for.end.125

for.body.107:                                     ; preds = %for.cond.104
  %72 = load i32, i32* %i, align 4
  %sub108 = sub nsw i32 %72, 1
  %idxprom109 = sext i32 %sub108 to i64
  %73 = load i32, i32* %j, align 4
  %sub110 = sub nsw i32 %73, 1
  %idxprom111 = sext i32 %sub110 to i64
  %74 = load [6 x i32]*, [6 x i32]** %path.addr, align 8
  %arrayidx112 = getelementptr inbounds [6 x i32], [6 x i32]* %74, i64 %idxprom111
  %arrayidx113 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx112, i32 0, i64 %idxprom109
  %75 = load i32, i32* %arrayidx113, align 4
  %76 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %76 to i64
  %77 = load i32, i32* %j, align 4
  %idxprom115 = sext i32 %77 to i64
  %78 = load [6 x i32]*, [6 x i32]** %mean.addr, align 8
  %arrayidx116 = getelementptr inbounds [6 x i32], [6 x i32]* %78, i64 %idxprom115
  %arrayidx117 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx116, i32 0, i64 %idxprom114
  %79 = load i32, i32* %arrayidx117, align 4
  %add118 = add nsw i32 %75, %79
  %80 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %80 to i64
  %81 = load i32, i32* %j, align 4
  %idxprom120 = sext i32 %81 to i64
  %82 = load [6 x i32]*, [6 x i32]** %path.addr, align 8
  %arrayidx121 = getelementptr inbounds [6 x i32], [6 x i32]* %82, i64 %idxprom120
  %arrayidx122 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx121, i32 0, i64 %idxprom119
  store i32 %add118, i32* %arrayidx122, align 4
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.107
  %83 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %83, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond.104

for.end.125:                                      ; preds = %for.cond.104
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.end.125
  %84 = load i32, i32* %j, align 4
  %inc127 = add nsw i32 %84, 1
  store i32 %inc127, i32* %j, align 4
  br label %for.cond.100

for.end.128:                                      ; preds = %for.cond.100
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.end.128
  %85 = load i32, i32* %t, align 4
  %inc130 = add nsw i32 %85, 1
  store i32 %inc130, i32* %t, align 4
  br label %for.cond

for.end.131:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %maxgrid, [6 x i32]* %path) #0 {
entry:
  %maxgrid.addr = alloca i32, align 4
  %path.addr = alloca [6 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %maxgrid, i32* %maxgrid.addr, align 4
  store [6 x i32]* %path, [6 x i32]** %path.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %maxgrid.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %maxgrid.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load [6 x i32]*, [6 x i32]** %path.addr, align 8
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx5, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %8)
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %maxgrid.addr, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %11
  %rem = srem i32 %add, 20
  %cmp6 = icmp eq i32 %rem, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %14, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @rtclock() #0 {
entry:
  ret double 0.000000e+00
}

; Function Attrs: nounwind
declare i32 @posix_memalign(i8**, i64, i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
