; ModuleID = './SingleSource.Benchmarks.Polybench/19.linear-algebra.solvers.dynprog.dynprog.bc'
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
  %length = alloca i32, align 4
  %tsteps = alloca i32, align 4
  %out = alloca i32, align 4
  %sum_c = alloca [50 x [50 x [50 x i32]]]*, align 8
  %c = alloca [50 x [50 x i32]]*, align 8
  %W = alloca [50 x [50 x i32]]*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 50, i32* %length, align 4
  store i32 10000, i32* %tsteps, align 4
  %call = call i8* @polybench_alloc_data(i64 125000, i32 4)
  %0 = bitcast i8* %call to [50 x [50 x [50 x i32]]]*
  store [50 x [50 x [50 x i32]]]* %0, [50 x [50 x [50 x i32]]]** %sum_c, align 8
  %call1 = call i8* @polybench_alloc_data(i64 2500, i32 4)
  %1 = bitcast i8* %call1 to [50 x [50 x i32]]*
  store [50 x [50 x i32]]* %1, [50 x [50 x i32]]** %c, align 8
  %call2 = call i8* @polybench_alloc_data(i64 2500, i32 4)
  %2 = bitcast i8* %call2 to [50 x [50 x i32]]*
  store [50 x [50 x i32]]* %2, [50 x [50 x i32]]** %W, align 8
  %3 = load i32, i32* %length, align 4
  %4 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %c, align 8
  %arraydecay = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %4, i32 0, i32 0
  %5 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %W, align 8
  %arraydecay3 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %5, i32 0, i32 0
  call void @init_array(i32 %3, [50 x i32]* %arraydecay, [50 x i32]* %arraydecay3)
  %6 = load i32, i32* %tsteps, align 4
  %7 = load i32, i32* %length, align 4
  %8 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %c, align 8
  %arraydecay4 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %8, i32 0, i32 0
  %9 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %W, align 8
  %arraydecay5 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %9, i32 0, i32 0
  %10 = load [50 x [50 x [50 x i32]]]*, [50 x [50 x [50 x i32]]]** %sum_c, align 8
  %arraydecay6 = getelementptr inbounds [50 x [50 x [50 x i32]]], [50 x [50 x [50 x i32]]]* %10, i32 0, i32 0
  call void @kernel_dynprog(i32 %6, i32 %7, [50 x i32]* %arraydecay4, [50 x i32]* %arraydecay5, [50 x [50 x i32]]* %arraydecay6, i32* %out)
  %11 = load i32, i32* %out, align 4
  call void @print_array(i32 %11)
  %12 = load [50 x [50 x [50 x i32]]]*, [50 x [50 x [50 x i32]]]** %sum_c, align 8
  %13 = bitcast [50 x [50 x [50 x i32]]]* %12 to i8*
  call void @free(i8* %13) #4
  %14 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %c, align 8
  %15 = bitcast [50 x [50 x i32]]* %14 to i8*
  call void @free(i8* %15) #4
  %16 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %W, align 8
  %17 = bitcast [50 x [50 x i32]]* %16 to i8*
  call void @free(i8* %17) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 %length, [50 x i32]* %c, [50 x i32]* %W) #0 {
entry:
  %length.addr = alloca i32, align 4
  %c.addr = alloca [50 x i32]*, align 8
  %W.addr = alloca [50 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %length, i32* %length.addr, align 4
  store [50 x i32]* %c, [50 x i32]** %c.addr, align 8
  store [50 x i32]* %W, [50 x i32]** %W.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %length.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %4, %5
  %rem = srem i32 %mul, 2
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load [50 x i32]*, [50 x i32]** %c.addr, align 8
  %arrayidx = getelementptr inbounds [50 x i32], [50 x i32]* %8, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 %rem, i32* %arrayidx5, align 4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %9, %10
  %11 = load i32, i32* %length.addr, align 4
  %div = sdiv i32 %sub, %11
  %12 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load [50 x i32]*, [50 x i32]** %W.addr, align 8
  %arrayidx8 = getelementptr inbounds [50 x i32], [50 x i32]* %14, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx8, i32 0, i64 %idxprom6
  store i32 %div, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_dynprog(i32 %tsteps, i32 %length, [50 x i32]* %c, [50 x i32]* %W, [50 x [50 x i32]]* %sum_c, i32* %out) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %c.addr = alloca [50 x i32]*, align 8
  %W.addr = alloca [50 x i32]*, align 8
  %sum_c.addr = alloca [50 x [50 x i32]]*, align 8
  %out.addr = alloca i32*, align 8
  %iter = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %out_l = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %length, i32* %length.addr, align 4
  store [50 x i32]* %c, [50 x i32]** %c.addr, align 8
  store [50 x i32]* %W, [50 x i32]** %W.addr, align 8
  store [50 x [50 x i32]]* %sum_c, [50 x [50 x i32]]** %sum_c.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32 0, i32* %out_l, align 4
  store i32 0, i32* %iter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.85, %entry
  %0 = load i32, i32* %iter, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.87

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.10, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %length.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp sle i32 %2, %sub
  br i1 %cmp2, label %for.body.3, label %for.end.12

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %length.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %cmp6 = icmp sle i32 %4, %sub5
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %7 to i64
  %8 = load [50 x i32]*, [50 x i32]** %c.addr, align 8
  %arrayidx = getelementptr inbounds [50 x i32], [50 x i32]* %8, i64 %idxprom8
  %arrayidx9 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.1

for.end.12:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.77, %for.end.12
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %length.addr, align 4
  %sub14 = sub nsw i32 %12, 2
  %cmp15 = icmp sle i32 %11, %sub14
  br i1 %cmp15, label %for.body.16, label %for.end.79

for.body.16:                                      ; preds = %for.cond.13
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %13, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.74, %for.body.16
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %length.addr, align 4
  %sub18 = sub nsw i32 %15, 1
  %cmp19 = icmp sle i32 %14, %sub18
  br i1 %cmp19, label %for.body.20, label %for.end.76

for.body.20:                                      ; preds = %for.cond.17
  %16 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %16 to i64
  %17 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %18 to i64
  %19 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %sum_c.addr, align 8
  %arrayidx24 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %19, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %arrayidx24, i32 0, i64 %idxprom22
  %arrayidx26 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx25, i32 0, i64 %idxprom21
  store i32 0, i32* %arrayidx26, align 4
  %20 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %20, 1
  store i32 %add27, i32* %k, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.55, %for.body.20
  %21 = load i32, i32* %k, align 4
  %22 = load i32, i32* %j, align 4
  %sub29 = sub nsw i32 %22, 1
  %cmp30 = icmp sle i32 %21, %sub29
  br i1 %cmp30, label %for.body.31, label %for.end.57

for.body.31:                                      ; preds = %for.cond.28
  %23 = load i32, i32* %k, align 4
  %sub32 = sub nsw i32 %23, 1
  %idxprom33 = sext i32 %sub32 to i64
  %24 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %25 to i64
  %26 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %sum_c.addr, align 8
  %arrayidx36 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %26, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %arrayidx36, i32 0, i64 %idxprom34
  %arrayidx38 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx37, i32 0, i64 %idxprom33
  %27 = load i32, i32* %arrayidx38, align 4
  %28 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %29 to i64
  %30 = load [50 x i32]*, [50 x i32]** %c.addr, align 8
  %arrayidx41 = getelementptr inbounds [50 x i32], [50 x i32]* %30, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx41, i32 0, i64 %idxprom39
  %31 = load i32, i32* %arrayidx42, align 4
  %add43 = add nsw i32 %27, %31
  %32 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %32 to i64
  %33 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %33 to i64
  %34 = load [50 x i32]*, [50 x i32]** %c.addr, align 8
  %arrayidx46 = getelementptr inbounds [50 x i32], [50 x i32]* %34, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx46, i32 0, i64 %idxprom44
  %35 = load i32, i32* %arrayidx47, align 4
  %add48 = add nsw i32 %add43, %35
  %36 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %36 to i64
  %37 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %38 to i64
  %39 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %sum_c.addr, align 8
  %arrayidx52 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %39, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %arrayidx52, i32 0, i64 %idxprom50
  %arrayidx54 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx53, i32 0, i64 %idxprom49
  store i32 %add48, i32* %arrayidx54, align 4
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.31
  %40 = load i32, i32* %k, align 4
  %inc56 = add nsw i32 %40, 1
  store i32 %inc56, i32* %k, align 4
  br label %for.cond.28

for.end.57:                                       ; preds = %for.cond.28
  %41 = load i32, i32* %j, align 4
  %sub58 = sub nsw i32 %41, 1
  %idxprom59 = sext i32 %sub58 to i64
  %42 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %42 to i64
  %43 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %43 to i64
  %44 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %sum_c.addr, align 8
  %arrayidx62 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %44, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %arrayidx62, i32 0, i64 %idxprom60
  %arrayidx64 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx63, i32 0, i64 %idxprom59
  %45 = load i32, i32* %arrayidx64, align 4
  %46 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %46 to i64
  %47 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %47 to i64
  %48 = load [50 x i32]*, [50 x i32]** %W.addr, align 8
  %arrayidx67 = getelementptr inbounds [50 x i32], [50 x i32]* %48, i64 %idxprom66
  %arrayidx68 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx67, i32 0, i64 %idxprom65
  %49 = load i32, i32* %arrayidx68, align 4
  %add69 = add nsw i32 %45, %49
  %50 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %50 to i64
  %51 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %51 to i64
  %52 = load [50 x i32]*, [50 x i32]** %c.addr, align 8
  %arrayidx72 = getelementptr inbounds [50 x i32], [50 x i32]* %52, i64 %idxprom71
  %arrayidx73 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx72, i32 0, i64 %idxprom70
  store i32 %add69, i32* %arrayidx73, align 4
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end.57
  %53 = load i32, i32* %j, align 4
  %inc75 = add nsw i32 %53, 1
  store i32 %inc75, i32* %j, align 4
  br label %for.cond.17

for.end.76:                                       ; preds = %for.cond.17
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.76
  %54 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %54, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.13

for.end.79:                                       ; preds = %for.cond.13
  %55 = load i32, i32* %length.addr, align 4
  %sub80 = sub nsw i32 %55, 1
  %idxprom81 = sext i32 %sub80 to i64
  %56 = load [50 x i32]*, [50 x i32]** %c.addr, align 8
  %arrayidx82 = getelementptr inbounds [50 x i32], [50 x i32]* %56, i64 0
  %arrayidx83 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx82, i32 0, i64 %idxprom81
  %57 = load i32, i32* %arrayidx83, align 4
  %58 = load i32, i32* %out_l, align 4
  %add84 = add nsw i32 %58, %57
  store i32 %add84, i32* %out_l, align 4
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.end.79
  %59 = load i32, i32* %iter, align 4
  %inc86 = add nsw i32 %59, 1
  store i32 %inc86, i32* %iter, align 4
  br label %for.cond

for.end.87:                                       ; preds = %for.cond
  %60 = load i32, i32* %out_l, align 4
  %61 = load i32*, i32** %out.addr, align 8
  store i32 %60, i32* %61, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %out) #0 {
entry:
  %out.addr = alloca i32, align 4
  store i32 %out, i32* %out.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i32, i32* %out.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
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
