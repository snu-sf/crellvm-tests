; ModuleID = './SingleSource.Benchmarks.Polybench/29.stencils.adi.adi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.anon = type { double }

@polybench_papi_counters_threadid = global i32 0, align 4
@polybench_program_total_flops = global double 0.000000e+00, align 8
@polybench_t_start = common global double 0.000000e+00, align 8
@polybench_t_end = common global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = common global i64 0, align 8
@polybench_c_end = common global i64 0, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

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
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #5
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
  call void @free(i8* %10) #5
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
  %call = call i32 @posix_memalign(i8** %new, i64 32, i64 %0) #5
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
  call void @exit(i32 1) #6
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
  %n = alloca i32, align 4
  %tsteps = alloca i32, align 4
  %X = alloca [1024 x [1024 x double]]*, align 8
  %A = alloca [1024 x [1024 x double]]*, align 8
  %B = alloca [1024 x [1024 x double]]*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1024, i32* %n, align 4
  store i32 50, i32* %tsteps, align 4
  %call = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %0 = bitcast i8* %call to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %0, [1024 x [1024 x double]]** %X, align 8
  %call1 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %1 = bitcast i8* %call1 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %1, [1024 x [1024 x double]]** %A, align 8
  %call2 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %2 = bitcast i8* %call2 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %2, [1024 x [1024 x double]]** %B, align 8
  %3 = load i32, i32* %n, align 4
  %4 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %X, align 8
  %arraydecay = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %4, i32 0, i32 0
  %5 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %arraydecay3 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %5, i32 0, i32 0
  %6 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %arraydecay4 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %6, i32 0, i32 0
  call void @init_array(i32 %3, [1024 x double]* %arraydecay, [1024 x double]* %arraydecay3, [1024 x double]* %arraydecay4)
  %7 = load i32, i32* %tsteps, align 4
  %8 = load i32, i32* %n, align 4
  %9 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %X, align 8
  %arraydecay5 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %9, i32 0, i32 0
  %10 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %arraydecay6 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %10, i32 0, i32 0
  %11 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %arraydecay7 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %11, i32 0, i32 0
  call void @kernel_adi(i32 %7, i32 %8, [1024 x double]* %arraydecay5, [1024 x double]* %arraydecay6, [1024 x double]* %arraydecay7)
  %12 = load i32, i32* %n, align 4
  %13 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %X, align 8
  %arraydecay8 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %13, i32 0, i32 0
  call void @print_array(i32 %12, [1024 x double]* %arraydecay8)
  %14 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %X, align 8
  %15 = bitcast [1024 x [1024 x double]]* %14 to i8*
  call void @free(i8* %15) #5
  %16 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %17 = bitcast [1024 x [1024 x double]]* %16 to i8*
  call void @free(i8* %17) #5
  %18 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %19 = bitcast [1024 x [1024 x double]]* %18 to i8*
  call void @free(i8* %19) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 %n, [1024 x double]* %X, [1024 x double]* %A, [1024 x double]* %B) #0 {
entry:
  %n.addr = alloca i32, align 4
  %X.addr = alloca [1024 x double]*, align 8
  %A.addr = alloca [1024 x double]*, align 8
  %B.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [1024 x double]* %X, [1024 x double]** %X.addr, align 8
  store [1024 x double]* %A, [1024 x double]** %A.addr, align 8
  store [1024 x double]* %B, [1024 x double]** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %conv = sitofp i32 %4 to double
  %5 = load i32, i32* %j, align 4
  %add = add nsw i32 %5, 1
  %conv4 = sitofp i32 %add to double
  %mul = fmul double %conv, %conv4
  %add5 = fadd double %mul, 1.000000e+00
  %6 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %6 to double
  %div = fdiv double %add5, %conv6
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx = getelementptr inbounds [1024 x double], [1024 x double]* %9, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx, i32 0, i64 %idxprom
  store double %div, double* %arrayidx8, align 8
  %10 = load i32, i32* %i, align 4
  %conv9 = sitofp i32 %10 to double
  %11 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %11, 2
  %conv11 = sitofp i32 %add10 to double
  %mul12 = fmul double %conv9, %conv11
  %add13 = fadd double %mul12, 2.000000e+00
  %12 = load i32, i32* %n.addr, align 4
  %conv14 = sitofp i32 %12 to double
  %div15 = fdiv double %add13, %conv14
  %13 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %13 to i64
  %14 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %14 to i64
  %15 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx18 = getelementptr inbounds [1024 x double], [1024 x double]* %15, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx18, i32 0, i64 %idxprom16
  store double %div15, double* %arrayidx19, align 8
  %16 = load i32, i32* %i, align 4
  %conv20 = sitofp i32 %16 to double
  %17 = load i32, i32* %j, align 4
  %add21 = add nsw i32 %17, 3
  %conv22 = sitofp i32 %add21 to double
  %mul23 = fmul double %conv20, %conv22
  %add24 = fadd double %mul23, 3.000000e+00
  %18 = load i32, i32* %n.addr, align 4
  %conv25 = sitofp i32 %18 to double
  %div26 = fdiv double %add24, %conv25
  %19 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %20 to i64
  %21 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx29 = getelementptr inbounds [1024 x double], [1024 x double]* %21, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx29, i32 0, i64 %idxprom27
  store double %div26, double* %arrayidx30, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %23, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_adi(i32 %tsteps, i32 %n, [1024 x double]* %X, [1024 x double]* %A, [1024 x double]* %B) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %X.addr = alloca [1024 x double]*, align 8
  %A.addr = alloca [1024 x double]*, align 8
  %B.addr = alloca [1024 x double]*, align 8
  %t = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [1024 x double]* %X, [1024 x double]** %X.addr, align 8
  store [1024 x double]* %A, [1024 x double]** %A.addr, align 8
  store [1024 x double]* %B, [1024 x double]** %B.addr, align 8
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.252, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.254

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i1, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.51, %for.body
  %2 = load i32, i32* %i1, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.53

for.body.3:                                       ; preds = %for.cond.1
  store i32 1, i32* %i2, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %4 = load i32, i32* %i2, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %i2, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %i1, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx = getelementptr inbounds [1024 x double], [1024 x double]* %8, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx, i32 0, i64 %idxprom
  %9 = load double, double* %arrayidx8, align 8
  %10 = load i32, i32* %i2, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom9 = sext i32 %sub to i64
  %11 = load i32, i32* %i1, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx11 = getelementptr inbounds [1024 x double], [1024 x double]* %12, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx11, i32 0, i64 %idxprom9
  %13 = load double, double* %arrayidx12, align 8
  %14 = load i32, i32* %i2, align 4
  %idxprom13 = sext i32 %14 to i64
  %15 = load i32, i32* %i1, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx15 = getelementptr inbounds [1024 x double], [1024 x double]* %16, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx15, i32 0, i64 %idxprom13
  %17 = load double, double* %arrayidx16, align 8
  %mul = fmul double %13, %17
  %18 = load i32, i32* %i2, align 4
  %sub17 = sub nsw i32 %18, 1
  %idxprom18 = sext i32 %sub17 to i64
  %19 = load i32, i32* %i1, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx20 = getelementptr inbounds [1024 x double], [1024 x double]* %20, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx20, i32 0, i64 %idxprom18
  %21 = load double, double* %arrayidx21, align 8
  %div = fdiv double %mul, %21
  %sub22 = fsub double %9, %div
  %22 = load i32, i32* %i2, align 4
  %idxprom23 = sext i32 %22 to i64
  %23 = load i32, i32* %i1, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx25 = getelementptr inbounds [1024 x double], [1024 x double]* %24, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx25, i32 0, i64 %idxprom23
  store double %sub22, double* %arrayidx26, align 8
  %25 = load i32, i32* %i2, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load i32, i32* %i1, align 4
  %idxprom28 = sext i32 %26 to i64
  %27 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx29 = getelementptr inbounds [1024 x double], [1024 x double]* %27, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx29, i32 0, i64 %idxprom27
  %28 = load double, double* %arrayidx30, align 8
  %29 = load i32, i32* %i2, align 4
  %idxprom31 = sext i32 %29 to i64
  %30 = load i32, i32* %i1, align 4
  %idxprom32 = sext i32 %30 to i64
  %31 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx33 = getelementptr inbounds [1024 x double], [1024 x double]* %31, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx33, i32 0, i64 %idxprom31
  %32 = load double, double* %arrayidx34, align 8
  %33 = load i32, i32* %i2, align 4
  %idxprom35 = sext i32 %33 to i64
  %34 = load i32, i32* %i1, align 4
  %idxprom36 = sext i32 %34 to i64
  %35 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx37 = getelementptr inbounds [1024 x double], [1024 x double]* %35, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx37, i32 0, i64 %idxprom35
  %36 = load double, double* %arrayidx38, align 8
  %mul39 = fmul double %32, %36
  %37 = load i32, i32* %i2, align 4
  %sub40 = sub nsw i32 %37, 1
  %idxprom41 = sext i32 %sub40 to i64
  %38 = load i32, i32* %i1, align 4
  %idxprom42 = sext i32 %38 to i64
  %39 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx43 = getelementptr inbounds [1024 x double], [1024 x double]* %39, i64 %idxprom42
  %arrayidx44 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx43, i32 0, i64 %idxprom41
  %40 = load double, double* %arrayidx44, align 8
  %div45 = fdiv double %mul39, %40
  %sub46 = fsub double %28, %div45
  %41 = load i32, i32* %i2, align 4
  %idxprom47 = sext i32 %41 to i64
  %42 = load i32, i32* %i1, align 4
  %idxprom48 = sext i32 %42 to i64
  %43 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx49 = getelementptr inbounds [1024 x double], [1024 x double]* %43, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx49, i32 0, i64 %idxprom47
  store double %sub46, double* %arrayidx50, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %44 = load i32, i32* %i2, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i2, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end
  %45 = load i32, i32* %i1, align 4
  %inc52 = add nsw i32 %45, 1
  store i32 %inc52, i32* %i1, align 4
  br label %for.cond.1

for.end.53:                                       ; preds = %for.cond.1
  store i32 0, i32* %i1, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.73, %for.end.53
  %46 = load i32, i32* %i1, align 4
  %47 = load i32, i32* %n.addr, align 4
  %cmp55 = icmp slt i32 %46, %47
  br i1 %cmp55, label %for.body.56, label %for.end.75

for.body.56:                                      ; preds = %for.cond.54
  %48 = load i32, i32* %n.addr, align 4
  %sub57 = sub nsw i32 %48, 1
  %idxprom58 = sext i32 %sub57 to i64
  %49 = load i32, i32* %i1, align 4
  %idxprom59 = sext i32 %49 to i64
  %50 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx60 = getelementptr inbounds [1024 x double], [1024 x double]* %50, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx60, i32 0, i64 %idxprom58
  %51 = load double, double* %arrayidx61, align 8
  %52 = load i32, i32* %n.addr, align 4
  %sub62 = sub nsw i32 %52, 1
  %idxprom63 = sext i32 %sub62 to i64
  %53 = load i32, i32* %i1, align 4
  %idxprom64 = sext i32 %53 to i64
  %54 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx65 = getelementptr inbounds [1024 x double], [1024 x double]* %54, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx65, i32 0, i64 %idxprom63
  %55 = load double, double* %arrayidx66, align 8
  %div67 = fdiv double %51, %55
  %56 = load i32, i32* %n.addr, align 4
  %sub68 = sub nsw i32 %56, 1
  %idxprom69 = sext i32 %sub68 to i64
  %57 = load i32, i32* %i1, align 4
  %idxprom70 = sext i32 %57 to i64
  %58 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx71 = getelementptr inbounds [1024 x double], [1024 x double]* %58, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx71, i32 0, i64 %idxprom69
  store double %div67, double* %arrayidx72, align 8
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.56
  %59 = load i32, i32* %i1, align 4
  %inc74 = add nsw i32 %59, 1
  store i32 %inc74, i32* %i1, align 4
  br label %for.cond.54

for.end.75:                                       ; preds = %for.cond.54
  store i32 0, i32* %i1, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.120, %for.end.75
  %60 = load i32, i32* %i1, align 4
  %61 = load i32, i32* %n.addr, align 4
  %cmp77 = icmp slt i32 %60, %61
  br i1 %cmp77, label %for.body.78, label %for.end.122

for.body.78:                                      ; preds = %for.cond.76
  store i32 0, i32* %i2, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.117, %for.body.78
  %62 = load i32, i32* %i2, align 4
  %63 = load i32, i32* %n.addr, align 4
  %sub80 = sub nsw i32 %63, 2
  %cmp81 = icmp slt i32 %62, %sub80
  br i1 %cmp81, label %for.body.82, label %for.end.119

for.body.82:                                      ; preds = %for.cond.79
  %64 = load i32, i32* %n.addr, align 4
  %sub83 = sub nsw i32 %64, 2
  %65 = load i32, i32* %i2, align 4
  %sub84 = sub nsw i32 %sub83, %65
  %idxprom85 = sext i32 %sub84 to i64
  %66 = load i32, i32* %i1, align 4
  %idxprom86 = sext i32 %66 to i64
  %67 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx87 = getelementptr inbounds [1024 x double], [1024 x double]* %67, i64 %idxprom86
  %arrayidx88 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx87, i32 0, i64 %idxprom85
  %68 = load double, double* %arrayidx88, align 8
  %69 = load i32, i32* %n.addr, align 4
  %sub89 = sub nsw i32 %69, 2
  %70 = load i32, i32* %i2, align 4
  %sub90 = sub nsw i32 %sub89, %70
  %sub91 = sub nsw i32 %sub90, 1
  %idxprom92 = sext i32 %sub91 to i64
  %71 = load i32, i32* %i1, align 4
  %idxprom93 = sext i32 %71 to i64
  %72 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx94 = getelementptr inbounds [1024 x double], [1024 x double]* %72, i64 %idxprom93
  %arrayidx95 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx94, i32 0, i64 %idxprom92
  %73 = load double, double* %arrayidx95, align 8
  %74 = load i32, i32* %n.addr, align 4
  %75 = load i32, i32* %i2, align 4
  %sub96 = sub nsw i32 %74, %75
  %sub97 = sub nsw i32 %sub96, 3
  %idxprom98 = sext i32 %sub97 to i64
  %76 = load i32, i32* %i1, align 4
  %idxprom99 = sext i32 %76 to i64
  %77 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx100 = getelementptr inbounds [1024 x double], [1024 x double]* %77, i64 %idxprom99
  %arrayidx101 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx100, i32 0, i64 %idxprom98
  %78 = load double, double* %arrayidx101, align 8
  %mul102 = fmul double %73, %78
  %sub103 = fsub double %68, %mul102
  %79 = load i32, i32* %n.addr, align 4
  %sub104 = sub nsw i32 %79, 3
  %80 = load i32, i32* %i2, align 4
  %sub105 = sub nsw i32 %sub104, %80
  %idxprom106 = sext i32 %sub105 to i64
  %81 = load i32, i32* %i1, align 4
  %idxprom107 = sext i32 %81 to i64
  %82 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx108 = getelementptr inbounds [1024 x double], [1024 x double]* %82, i64 %idxprom107
  %arrayidx109 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx108, i32 0, i64 %idxprom106
  %83 = load double, double* %arrayidx109, align 8
  %div110 = fdiv double %sub103, %83
  %84 = load i32, i32* %n.addr, align 4
  %85 = load i32, i32* %i2, align 4
  %sub111 = sub nsw i32 %84, %85
  %sub112 = sub nsw i32 %sub111, 2
  %idxprom113 = sext i32 %sub112 to i64
  %86 = load i32, i32* %i1, align 4
  %idxprom114 = sext i32 %86 to i64
  %87 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx115 = getelementptr inbounds [1024 x double], [1024 x double]* %87, i64 %idxprom114
  %arrayidx116 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx115, i32 0, i64 %idxprom113
  store double %div110, double* %arrayidx116, align 8
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.82
  %88 = load i32, i32* %i2, align 4
  %inc118 = add nsw i32 %88, 1
  store i32 %inc118, i32* %i2, align 4
  br label %for.cond.79

for.end.119:                                      ; preds = %for.cond.79
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end.119
  %89 = load i32, i32* %i1, align 4
  %inc121 = add nsw i32 %89, 1
  store i32 %inc121, i32* %i1, align 4
  br label %for.cond.76

for.end.122:                                      ; preds = %for.cond.76
  store i32 1, i32* %i1, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.181, %for.end.122
  %90 = load i32, i32* %i1, align 4
  %91 = load i32, i32* %n.addr, align 4
  %cmp124 = icmp slt i32 %90, %91
  br i1 %cmp124, label %for.body.125, label %for.end.183

for.body.125:                                     ; preds = %for.cond.123
  store i32 0, i32* %i2, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.178, %for.body.125
  %92 = load i32, i32* %i2, align 4
  %93 = load i32, i32* %n.addr, align 4
  %cmp127 = icmp slt i32 %92, %93
  br i1 %cmp127, label %for.body.128, label %for.end.180

for.body.128:                                     ; preds = %for.cond.126
  %94 = load i32, i32* %i2, align 4
  %idxprom129 = sext i32 %94 to i64
  %95 = load i32, i32* %i1, align 4
  %idxprom130 = sext i32 %95 to i64
  %96 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx131 = getelementptr inbounds [1024 x double], [1024 x double]* %96, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx131, i32 0, i64 %idxprom129
  %97 = load double, double* %arrayidx132, align 8
  %98 = load i32, i32* %i2, align 4
  %idxprom133 = sext i32 %98 to i64
  %99 = load i32, i32* %i1, align 4
  %sub134 = sub nsw i32 %99, 1
  %idxprom135 = sext i32 %sub134 to i64
  %100 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx136 = getelementptr inbounds [1024 x double], [1024 x double]* %100, i64 %idxprom135
  %arrayidx137 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx136, i32 0, i64 %idxprom133
  %101 = load double, double* %arrayidx137, align 8
  %102 = load i32, i32* %i2, align 4
  %idxprom138 = sext i32 %102 to i64
  %103 = load i32, i32* %i1, align 4
  %idxprom139 = sext i32 %103 to i64
  %104 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx140 = getelementptr inbounds [1024 x double], [1024 x double]* %104, i64 %idxprom139
  %arrayidx141 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx140, i32 0, i64 %idxprom138
  %105 = load double, double* %arrayidx141, align 8
  %mul142 = fmul double %101, %105
  %106 = load i32, i32* %i2, align 4
  %idxprom143 = sext i32 %106 to i64
  %107 = load i32, i32* %i1, align 4
  %sub144 = sub nsw i32 %107, 1
  %idxprom145 = sext i32 %sub144 to i64
  %108 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx146 = getelementptr inbounds [1024 x double], [1024 x double]* %108, i64 %idxprom145
  %arrayidx147 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx146, i32 0, i64 %idxprom143
  %109 = load double, double* %arrayidx147, align 8
  %div148 = fdiv double %mul142, %109
  %sub149 = fsub double %97, %div148
  %110 = load i32, i32* %i2, align 4
  %idxprom150 = sext i32 %110 to i64
  %111 = load i32, i32* %i1, align 4
  %idxprom151 = sext i32 %111 to i64
  %112 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx152 = getelementptr inbounds [1024 x double], [1024 x double]* %112, i64 %idxprom151
  %arrayidx153 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx152, i32 0, i64 %idxprom150
  store double %sub149, double* %arrayidx153, align 8
  %113 = load i32, i32* %i2, align 4
  %idxprom154 = sext i32 %113 to i64
  %114 = load i32, i32* %i1, align 4
  %idxprom155 = sext i32 %114 to i64
  %115 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx156 = getelementptr inbounds [1024 x double], [1024 x double]* %115, i64 %idxprom155
  %arrayidx157 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx156, i32 0, i64 %idxprom154
  %116 = load double, double* %arrayidx157, align 8
  %117 = load i32, i32* %i2, align 4
  %idxprom158 = sext i32 %117 to i64
  %118 = load i32, i32* %i1, align 4
  %idxprom159 = sext i32 %118 to i64
  %119 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx160 = getelementptr inbounds [1024 x double], [1024 x double]* %119, i64 %idxprom159
  %arrayidx161 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx160, i32 0, i64 %idxprom158
  %120 = load double, double* %arrayidx161, align 8
  %121 = load i32, i32* %i2, align 4
  %idxprom162 = sext i32 %121 to i64
  %122 = load i32, i32* %i1, align 4
  %idxprom163 = sext i32 %122 to i64
  %123 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx164 = getelementptr inbounds [1024 x double], [1024 x double]* %123, i64 %idxprom163
  %arrayidx165 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx164, i32 0, i64 %idxprom162
  %124 = load double, double* %arrayidx165, align 8
  %mul166 = fmul double %120, %124
  %125 = load i32, i32* %i2, align 4
  %idxprom167 = sext i32 %125 to i64
  %126 = load i32, i32* %i1, align 4
  %sub168 = sub nsw i32 %126, 1
  %idxprom169 = sext i32 %sub168 to i64
  %127 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx170 = getelementptr inbounds [1024 x double], [1024 x double]* %127, i64 %idxprom169
  %arrayidx171 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx170, i32 0, i64 %idxprom167
  %128 = load double, double* %arrayidx171, align 8
  %div172 = fdiv double %mul166, %128
  %sub173 = fsub double %116, %div172
  %129 = load i32, i32* %i2, align 4
  %idxprom174 = sext i32 %129 to i64
  %130 = load i32, i32* %i1, align 4
  %idxprom175 = sext i32 %130 to i64
  %131 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx176 = getelementptr inbounds [1024 x double], [1024 x double]* %131, i64 %idxprom175
  %arrayidx177 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx176, i32 0, i64 %idxprom174
  store double %sub173, double* %arrayidx177, align 8
  br label %for.inc.178

for.inc.178:                                      ; preds = %for.body.128
  %132 = load i32, i32* %i2, align 4
  %inc179 = add nsw i32 %132, 1
  store i32 %inc179, i32* %i2, align 4
  br label %for.cond.126

for.end.180:                                      ; preds = %for.cond.126
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.end.180
  %133 = load i32, i32* %i1, align 4
  %inc182 = add nsw i32 %133, 1
  store i32 %inc182, i32* %i1, align 4
  br label %for.cond.123

for.end.183:                                      ; preds = %for.cond.123
  store i32 0, i32* %i2, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.203, %for.end.183
  %134 = load i32, i32* %i2, align 4
  %135 = load i32, i32* %n.addr, align 4
  %cmp185 = icmp slt i32 %134, %135
  br i1 %cmp185, label %for.body.186, label %for.end.205

for.body.186:                                     ; preds = %for.cond.184
  %136 = load i32, i32* %i2, align 4
  %idxprom187 = sext i32 %136 to i64
  %137 = load i32, i32* %n.addr, align 4
  %sub188 = sub nsw i32 %137, 1
  %idxprom189 = sext i32 %sub188 to i64
  %138 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx190 = getelementptr inbounds [1024 x double], [1024 x double]* %138, i64 %idxprom189
  %arrayidx191 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx190, i32 0, i64 %idxprom187
  %139 = load double, double* %arrayidx191, align 8
  %140 = load i32, i32* %i2, align 4
  %idxprom192 = sext i32 %140 to i64
  %141 = load i32, i32* %n.addr, align 4
  %sub193 = sub nsw i32 %141, 1
  %idxprom194 = sext i32 %sub193 to i64
  %142 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx195 = getelementptr inbounds [1024 x double], [1024 x double]* %142, i64 %idxprom194
  %arrayidx196 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx195, i32 0, i64 %idxprom192
  %143 = load double, double* %arrayidx196, align 8
  %div197 = fdiv double %139, %143
  %144 = load i32, i32* %i2, align 4
  %idxprom198 = sext i32 %144 to i64
  %145 = load i32, i32* %n.addr, align 4
  %sub199 = sub nsw i32 %145, 1
  %idxprom200 = sext i32 %sub199 to i64
  %146 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx201 = getelementptr inbounds [1024 x double], [1024 x double]* %146, i64 %idxprom200
  %arrayidx202 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx201, i32 0, i64 %idxprom198
  store double %div197, double* %arrayidx202, align 8
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.body.186
  %147 = load i32, i32* %i2, align 4
  %inc204 = add nsw i32 %147, 1
  store i32 %inc204, i32* %i2, align 4
  br label %for.cond.184

for.end.205:                                      ; preds = %for.cond.184
  store i32 0, i32* %i1, align 4
  br label %for.cond.206

for.cond.206:                                     ; preds = %for.inc.249, %for.end.205
  %148 = load i32, i32* %i1, align 4
  %149 = load i32, i32* %n.addr, align 4
  %sub207 = sub nsw i32 %149, 2
  %cmp208 = icmp slt i32 %148, %sub207
  br i1 %cmp208, label %for.body.209, label %for.end.251

for.body.209:                                     ; preds = %for.cond.206
  store i32 0, i32* %i2, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.246, %for.body.209
  %150 = load i32, i32* %i2, align 4
  %151 = load i32, i32* %n.addr, align 4
  %cmp211 = icmp slt i32 %150, %151
  br i1 %cmp211, label %for.body.212, label %for.end.248

for.body.212:                                     ; preds = %for.cond.210
  %152 = load i32, i32* %i2, align 4
  %idxprom213 = sext i32 %152 to i64
  %153 = load i32, i32* %n.addr, align 4
  %sub214 = sub nsw i32 %153, 2
  %154 = load i32, i32* %i1, align 4
  %sub215 = sub nsw i32 %sub214, %154
  %idxprom216 = sext i32 %sub215 to i64
  %155 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx217 = getelementptr inbounds [1024 x double], [1024 x double]* %155, i64 %idxprom216
  %arrayidx218 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx217, i32 0, i64 %idxprom213
  %156 = load double, double* %arrayidx218, align 8
  %157 = load i32, i32* %i2, align 4
  %idxprom219 = sext i32 %157 to i64
  %158 = load i32, i32* %n.addr, align 4
  %159 = load i32, i32* %i1, align 4
  %sub220 = sub nsw i32 %158, %159
  %sub221 = sub nsw i32 %sub220, 3
  %idxprom222 = sext i32 %sub221 to i64
  %160 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx223 = getelementptr inbounds [1024 x double], [1024 x double]* %160, i64 %idxprom222
  %arrayidx224 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx223, i32 0, i64 %idxprom219
  %161 = load double, double* %arrayidx224, align 8
  %162 = load i32, i32* %i2, align 4
  %idxprom225 = sext i32 %162 to i64
  %163 = load i32, i32* %n.addr, align 4
  %sub226 = sub nsw i32 %163, 3
  %164 = load i32, i32* %i1, align 4
  %sub227 = sub nsw i32 %sub226, %164
  %idxprom228 = sext i32 %sub227 to i64
  %165 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx229 = getelementptr inbounds [1024 x double], [1024 x double]* %165, i64 %idxprom228
  %arrayidx230 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx229, i32 0, i64 %idxprom225
  %166 = load double, double* %arrayidx230, align 8
  %mul231 = fmul double %161, %166
  %sub232 = fsub double %156, %mul231
  %167 = load i32, i32* %i2, align 4
  %idxprom233 = sext i32 %167 to i64
  %168 = load i32, i32* %n.addr, align 4
  %sub234 = sub nsw i32 %168, 2
  %169 = load i32, i32* %i1, align 4
  %sub235 = sub nsw i32 %sub234, %169
  %idxprom236 = sext i32 %sub235 to i64
  %170 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx237 = getelementptr inbounds [1024 x double], [1024 x double]* %170, i64 %idxprom236
  %arrayidx238 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx237, i32 0, i64 %idxprom233
  %171 = load double, double* %arrayidx238, align 8
  %div239 = fdiv double %sub232, %171
  %172 = load i32, i32* %i2, align 4
  %idxprom240 = sext i32 %172 to i64
  %173 = load i32, i32* %n.addr, align 4
  %sub241 = sub nsw i32 %173, 2
  %174 = load i32, i32* %i1, align 4
  %sub242 = sub nsw i32 %sub241, %174
  %idxprom243 = sext i32 %sub242 to i64
  %175 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx244 = getelementptr inbounds [1024 x double], [1024 x double]* %175, i64 %idxprom243
  %arrayidx245 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx244, i32 0, i64 %idxprom240
  store double %div239, double* %arrayidx245, align 8
  br label %for.inc.246

for.inc.246:                                      ; preds = %for.body.212
  %176 = load i32, i32* %i2, align 4
  %inc247 = add nsw i32 %176, 1
  store i32 %inc247, i32* %i2, align 4
  br label %for.cond.210

for.end.248:                                      ; preds = %for.cond.210
  br label %for.inc.249

for.inc.249:                                      ; preds = %for.end.248
  %177 = load i32, i32* %i1, align 4
  %inc250 = add nsw i32 %177, 1
  store i32 %inc250, i32* %i1, align 4
  br label %for.cond.206

for.end.251:                                      ; preds = %for.cond.206
  br label %for.inc.252

for.inc.252:                                      ; preds = %for.end.251
  %178 = load i32, i32* %t, align 4
  %inc253 = add nsw i32 %178, 1
  store i32 %inc253, i32* %t, align 4
  br label %for.cond

for.end.254:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %n, [1024 x double]* %X) #0 {
entry:
  %n.addr = alloca i32, align 4
  %X.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %printmat = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  store [1024 x double]* %X, [1024 x double]** %X.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 %0, 16
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %printmat, align 8
  %1 = load i32, i32* %n.addr, align 4
  %mul1 = mul nsw i32 %1, 16
  %idxprom = sext i32 %mul1 to i64
  %2 = load i8*, i8** %printmat, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %7 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %arrayidx9 = getelementptr inbounds [1024 x double], [1024 x double]* %9, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx9, i32 0, i64 %idxprom7
  %10 = load double, double* %arrayidx10, align 8
  %11 = load i32, i32* %j, align 4
  %mul11 = mul nsw i32 %11, 16
  %12 = load i8*, i8** %printmat, align 8
  call void @print_element(double %10, i32 %mul11, i8* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %14 = load i8*, i8** %printmat, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call i32 @fputs(i8* %14, %struct._IO_FILE* %15)
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %17 = load i8*, i8** %printmat, align 8
  call void @free(i8* %17) #5
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

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_element(double %el, i32 %pos, i8* %out) #4 {
entry:
  %el.addr = alloca double, align 8
  %pos.addr = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %block = alloca %union.anon, align 8
  store double %el, double* %el.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i8* %out, i8** %out.addr, align 8
  %0 = load double, double* %el.addr, align 8
  %datum = bitcast %union.anon* %block to double*
  store double %0, double* %datum, align 8
  %bytes = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %bytes, i32 0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %and = and i32 %conv, 15
  %add = add nsw i32 %and, 48
  %conv1 = trunc i32 %add to i8
  %2 = load i8*, i8** %out.addr, align 8
  %3 = load i32, i32* %pos.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8 %conv1, i8* %add.ptr, align 1
  %bytes2 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx3 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes2, i32 0, i64 0
  %4 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %4 to i32
  %and5 = and i32 %conv4, 15
  %add6 = add nsw i32 %and5, 48
  %conv7 = trunc i32 %add6 to i8
  %5 = load i8*, i8** %out.addr, align 8
  %6 = load i32, i32* %pos.addr, align 4
  %idx.ext8 = sext i32 %6 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %5, i64 %idx.ext8
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr9, i64 1
  store i8 %conv7, i8* %add.ptr10, align 1
  %bytes11 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx12 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes11, i32 0, i64 1
  %7 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %7 to i32
  %and14 = and i32 %conv13, 15
  %add15 = add nsw i32 %and14, 48
  %conv16 = trunc i32 %add15 to i8
  %8 = load i8*, i8** %out.addr, align 8
  %9 = load i32, i32* %pos.addr, align 4
  %idx.ext17 = sext i32 %9 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %8, i64 %idx.ext17
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr18, i64 2
  store i8 %conv16, i8* %add.ptr19, align 1
  %bytes20 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx21 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes20, i32 0, i64 1
  %10 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %10 to i32
  %and23 = and i32 %conv22, 15
  %add24 = add nsw i32 %and23, 48
  %conv25 = trunc i32 %add24 to i8
  %11 = load i8*, i8** %out.addr, align 8
  %12 = load i32, i32* %pos.addr, align 4
  %idx.ext26 = sext i32 %12 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %11, i64 %idx.ext26
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr27, i64 3
  store i8 %conv25, i8* %add.ptr28, align 1
  %bytes29 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx30 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes29, i32 0, i64 2
  %13 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %13 to i32
  %and32 = and i32 %conv31, 15
  %add33 = add nsw i32 %and32, 48
  %conv34 = trunc i32 %add33 to i8
  %14 = load i8*, i8** %out.addr, align 8
  %15 = load i32, i32* %pos.addr, align 4
  %idx.ext35 = sext i32 %15 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %14, i64 %idx.ext35
  %add.ptr37 = getelementptr inbounds i8, i8* %add.ptr36, i64 4
  store i8 %conv34, i8* %add.ptr37, align 1
  %bytes38 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx39 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes38, i32 0, i64 2
  %16 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %16 to i32
  %and41 = and i32 %conv40, 15
  %add42 = add nsw i32 %and41, 48
  %conv43 = trunc i32 %add42 to i8
  %17 = load i8*, i8** %out.addr, align 8
  %18 = load i32, i32* %pos.addr, align 4
  %idx.ext44 = sext i32 %18 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %17, i64 %idx.ext44
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr45, i64 5
  store i8 %conv43, i8* %add.ptr46, align 1
  %bytes47 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx48 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes47, i32 0, i64 3
  %19 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %19 to i32
  %and50 = and i32 %conv49, 15
  %add51 = add nsw i32 %and50, 48
  %conv52 = trunc i32 %add51 to i8
  %20 = load i8*, i8** %out.addr, align 8
  %21 = load i32, i32* %pos.addr, align 4
  %idx.ext53 = sext i32 %21 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %20, i64 %idx.ext53
  %add.ptr55 = getelementptr inbounds i8, i8* %add.ptr54, i64 6
  store i8 %conv52, i8* %add.ptr55, align 1
  %bytes56 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx57 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes56, i32 0, i64 3
  %22 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %22 to i32
  %and59 = and i32 %conv58, 15
  %add60 = add nsw i32 %and59, 48
  %conv61 = trunc i32 %add60 to i8
  %23 = load i8*, i8** %out.addr, align 8
  %24 = load i32, i32* %pos.addr, align 4
  %idx.ext62 = sext i32 %24 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %23, i64 %idx.ext62
  %add.ptr64 = getelementptr inbounds i8, i8* %add.ptr63, i64 7
  store i8 %conv61, i8* %add.ptr64, align 1
  %bytes65 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx66 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes65, i32 0, i64 4
  %25 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %25 to i32
  %and68 = and i32 %conv67, 15
  %add69 = add nsw i32 %and68, 48
  %conv70 = trunc i32 %add69 to i8
  %26 = load i8*, i8** %out.addr, align 8
  %27 = load i32, i32* %pos.addr, align 4
  %idx.ext71 = sext i32 %27 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %26, i64 %idx.ext71
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr72, i64 8
  store i8 %conv70, i8* %add.ptr73, align 1
  %bytes74 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx75 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes74, i32 0, i64 4
  %28 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %28 to i32
  %and77 = and i32 %conv76, 15
  %add78 = add nsw i32 %and77, 48
  %conv79 = trunc i32 %add78 to i8
  %29 = load i8*, i8** %out.addr, align 8
  %30 = load i32, i32* %pos.addr, align 4
  %idx.ext80 = sext i32 %30 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %29, i64 %idx.ext80
  %add.ptr82 = getelementptr inbounds i8, i8* %add.ptr81, i64 9
  store i8 %conv79, i8* %add.ptr82, align 1
  %bytes83 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx84 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes83, i32 0, i64 5
  %31 = load i8, i8* %arrayidx84, align 1
  %conv85 = sext i8 %31 to i32
  %and86 = and i32 %conv85, 15
  %add87 = add nsw i32 %and86, 48
  %conv88 = trunc i32 %add87 to i8
  %32 = load i8*, i8** %out.addr, align 8
  %33 = load i32, i32* %pos.addr, align 4
  %idx.ext89 = sext i32 %33 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %32, i64 %idx.ext89
  %add.ptr91 = getelementptr inbounds i8, i8* %add.ptr90, i64 10
  store i8 %conv88, i8* %add.ptr91, align 1
  %bytes92 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx93 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes92, i32 0, i64 5
  %34 = load i8, i8* %arrayidx93, align 1
  %conv94 = sext i8 %34 to i32
  %and95 = and i32 %conv94, 15
  %add96 = add nsw i32 %and95, 48
  %conv97 = trunc i32 %add96 to i8
  %35 = load i8*, i8** %out.addr, align 8
  %36 = load i32, i32* %pos.addr, align 4
  %idx.ext98 = sext i32 %36 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %35, i64 %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr99, i64 11
  store i8 %conv97, i8* %add.ptr100, align 1
  %bytes101 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx102 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes101, i32 0, i64 6
  %37 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %37 to i32
  %and104 = and i32 %conv103, 15
  %add105 = add nsw i32 %and104, 48
  %conv106 = trunc i32 %add105 to i8
  %38 = load i8*, i8** %out.addr, align 8
  %39 = load i32, i32* %pos.addr, align 4
  %idx.ext107 = sext i32 %39 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %38, i64 %idx.ext107
  %add.ptr109 = getelementptr inbounds i8, i8* %add.ptr108, i64 12
  store i8 %conv106, i8* %add.ptr109, align 1
  %bytes110 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx111 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes110, i32 0, i64 6
  %40 = load i8, i8* %arrayidx111, align 1
  %conv112 = sext i8 %40 to i32
  %and113 = and i32 %conv112, 15
  %add114 = add nsw i32 %and113, 48
  %conv115 = trunc i32 %add114 to i8
  %41 = load i8*, i8** %out.addr, align 8
  %42 = load i32, i32* %pos.addr, align 4
  %idx.ext116 = sext i32 %42 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %41, i64 %idx.ext116
  %add.ptr118 = getelementptr inbounds i8, i8* %add.ptr117, i64 13
  store i8 %conv115, i8* %add.ptr118, align 1
  %bytes119 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx120 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes119, i32 0, i64 7
  %43 = load i8, i8* %arrayidx120, align 1
  %conv121 = sext i8 %43 to i32
  %and122 = and i32 %conv121, 15
  %add123 = add nsw i32 %and122, 48
  %conv124 = trunc i32 %add123 to i8
  %44 = load i8*, i8** %out.addr, align 8
  %45 = load i32, i32* %pos.addr, align 4
  %idx.ext125 = sext i32 %45 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %44, i64 %idx.ext125
  %add.ptr127 = getelementptr inbounds i8, i8* %add.ptr126, i64 14
  store i8 %conv124, i8* %add.ptr127, align 1
  %bytes128 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx129 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes128, i32 0, i64 7
  %46 = load i8, i8* %arrayidx129, align 1
  %conv130 = sext i8 %46 to i32
  %and131 = and i32 %conv130, 15
  %add132 = add nsw i32 %and131, 48
  %conv133 = trunc i32 %add132 to i8
  %47 = load i8*, i8** %out.addr, align 8
  %48 = load i32, i32* %pos.addr, align 4
  %idx.ext134 = sext i32 %48 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %47, i64 %idx.ext134
  %add.ptr136 = getelementptr inbounds i8, i8* %add.ptr135, i64 15
  store i8 %conv133, i8* %add.ptr136, align 1
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
