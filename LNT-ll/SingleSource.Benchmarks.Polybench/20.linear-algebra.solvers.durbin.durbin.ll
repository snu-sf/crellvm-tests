; ModuleID = './SingleSource.Benchmarks.Polybench/20.linear-algebra.solvers.durbin.durbin.bc'
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
@.str.2 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
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
  %n = alloca i32, align 4
  %y = alloca [4000 x [4000 x double]]*, align 8
  %sum = alloca [4000 x [4000 x double]]*, align 8
  %alpha = alloca [4000 x double]*, align 8
  %beta = alloca [4000 x double]*, align 8
  %r = alloca [4000 x double]*, align 8
  %out = alloca [4000 x double]*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 4000, i32* %n, align 4
  %call = call i8* @polybench_alloc_data(i64 16000000, i32 8)
  %0 = bitcast i8* %call to [4000 x [4000 x double]]*
  store [4000 x [4000 x double]]* %0, [4000 x [4000 x double]]** %y, align 8
  %call1 = call i8* @polybench_alloc_data(i64 16000000, i32 8)
  %1 = bitcast i8* %call1 to [4000 x [4000 x double]]*
  store [4000 x [4000 x double]]* %1, [4000 x [4000 x double]]** %sum, align 8
  %call2 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %2 = bitcast i8* %call2 to [4000 x double]*
  store [4000 x double]* %2, [4000 x double]** %alpha, align 8
  %call3 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %3 = bitcast i8* %call3 to [4000 x double]*
  store [4000 x double]* %3, [4000 x double]** %beta, align 8
  %call4 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %4 = bitcast i8* %call4 to [4000 x double]*
  store [4000 x double]* %4, [4000 x double]** %r, align 8
  %call5 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %5 = bitcast i8* %call5 to [4000 x double]*
  store [4000 x double]* %5, [4000 x double]** %out, align 8
  %6 = load i32, i32* %n, align 4
  %7 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %y, align 8
  %arraydecay = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %7, i32 0, i32 0
  %8 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %sum, align 8
  %arraydecay6 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %8, i32 0, i32 0
  %9 = load [4000 x double]*, [4000 x double]** %alpha, align 8
  %arraydecay7 = getelementptr inbounds [4000 x double], [4000 x double]* %9, i32 0, i32 0
  %10 = load [4000 x double]*, [4000 x double]** %beta, align 8
  %arraydecay8 = getelementptr inbounds [4000 x double], [4000 x double]* %10, i32 0, i32 0
  %11 = load [4000 x double]*, [4000 x double]** %r, align 8
  %arraydecay9 = getelementptr inbounds [4000 x double], [4000 x double]* %11, i32 0, i32 0
  call void @init_array(i32 %6, [4000 x double]* %arraydecay, [4000 x double]* %arraydecay6, double* %arraydecay7, double* %arraydecay8, double* %arraydecay9)
  %12 = load i32, i32* %n, align 4
  %13 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %y, align 8
  %arraydecay10 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %13, i32 0, i32 0
  %14 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %sum, align 8
  %arraydecay11 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %14, i32 0, i32 0
  %15 = load [4000 x double]*, [4000 x double]** %alpha, align 8
  %arraydecay12 = getelementptr inbounds [4000 x double], [4000 x double]* %15, i32 0, i32 0
  %16 = load [4000 x double]*, [4000 x double]** %beta, align 8
  %arraydecay13 = getelementptr inbounds [4000 x double], [4000 x double]* %16, i32 0, i32 0
  %17 = load [4000 x double]*, [4000 x double]** %r, align 8
  %arraydecay14 = getelementptr inbounds [4000 x double], [4000 x double]* %17, i32 0, i32 0
  %18 = load [4000 x double]*, [4000 x double]** %out, align 8
  %arraydecay15 = getelementptr inbounds [4000 x double], [4000 x double]* %18, i32 0, i32 0
  call void @kernel_durbin(i32 %12, [4000 x double]* %arraydecay10, [4000 x double]* %arraydecay11, double* %arraydecay12, double* %arraydecay13, double* %arraydecay14, double* %arraydecay15)
  %19 = load i32, i32* %n, align 4
  %20 = load [4000 x double]*, [4000 x double]** %out, align 8
  %arraydecay16 = getelementptr inbounds [4000 x double], [4000 x double]* %20, i32 0, i32 0
  call void @print_array(i32 %19, double* %arraydecay16)
  %21 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %y, align 8
  %22 = bitcast [4000 x [4000 x double]]* %21 to i8*
  call void @free(i8* %22) #4
  %23 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %sum, align 8
  %24 = bitcast [4000 x [4000 x double]]* %23 to i8*
  call void @free(i8* %24) #4
  %25 = load [4000 x double]*, [4000 x double]** %alpha, align 8
  %26 = bitcast [4000 x double]* %25 to i8*
  call void @free(i8* %26) #4
  %27 = load [4000 x double]*, [4000 x double]** %beta, align 8
  %28 = bitcast [4000 x double]* %27 to i8*
  call void @free(i8* %28) #4
  %29 = load [4000 x double]*, [4000 x double]** %r, align 8
  %30 = bitcast [4000 x double]* %29 to i8*
  call void @free(i8* %30) #4
  %31 = load [4000 x double]*, [4000 x double]** %out, align 8
  %32 = bitcast [4000 x double]* %31 to i8*
  call void @free(i8* %32) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 %n, [4000 x double]* %y, [4000 x double]* %sum, double* %alpha, double* %beta, double* %r) #0 {
entry:
  %n.addr = alloca i32, align 4
  %y.addr = alloca [4000 x double]*, align 8
  %sum.addr = alloca [4000 x double]*, align 8
  %alpha.addr = alloca double*, align 8
  %beta.addr = alloca double*, align 8
  %r.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [4000 x double]* %y, [4000 x double]** %y.addr, align 8
  store [4000 x double]* %sum, [4000 x double]** %sum.addr, align 8
  store double* %alpha, double** %alpha.addr, align 8
  store double* %beta, double** %beta.addr, align 8
  store double* %r, double** %r.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %conv = sitofp i32 %2 to double
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** %alpha.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, 1
  %6 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %add, %6
  %conv1 = sitofp i32 %div to double
  %div2 = fdiv double %conv1, 2.000000e+00
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load double*, double** %beta.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 %idxprom3
  store double %div2, double* %arrayidx4, align 8
  %9 = load i32, i32* %i, align 4
  %add5 = add nsw i32 %9, 1
  %10 = load i32, i32* %n.addr, align 4
  %div6 = sdiv i32 %add5, %10
  %conv7 = sitofp i32 %div6 to double
  %div8 = fdiv double %conv7, 4.000000e+00
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load double*, double** %r.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %12, i64 %idxprom9
  store double %div8, double* %arrayidx10, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %n.addr, align 4
  %cmp12 = icmp slt i32 %13, %14
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %15 = load i32, i32* %i, align 4
  %conv15 = sitofp i32 %15 to double
  %16 = load i32, i32* %j, align 4
  %conv16 = sitofp i32 %16 to double
  %mul = fmul double %conv15, %conv16
  %17 = load i32, i32* %n.addr, align 4
  %conv17 = sitofp i32 %17 to double
  %div18 = fdiv double %mul, %conv17
  %18 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load [4000 x double]*, [4000 x double]** %y.addr, align 8
  %arrayidx21 = getelementptr inbounds [4000 x double], [4000 x double]* %20, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx21, i32 0, i64 %idxprom19
  store double %div18, double* %arrayidx22, align 8
  %21 = load i32, i32* %i, align 4
  %conv23 = sitofp i32 %21 to double
  %22 = load i32, i32* %j, align 4
  %conv24 = sitofp i32 %22 to double
  %mul25 = fmul double %conv23, %conv24
  %23 = load i32, i32* %n.addr, align 4
  %conv26 = sitofp i32 %23 to double
  %div27 = fdiv double %mul25, %conv26
  %24 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %25 to i64
  %26 = load [4000 x double]*, [4000 x double]** %sum.addr, align 8
  %arrayidx30 = getelementptr inbounds [4000 x double], [4000 x double]* %26, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx30, i32 0, i64 %idxprom28
  store double %div27, double* %arrayidx31, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %27 = load i32, i32* %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %28 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %28, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_durbin(i32 %n, [4000 x double]* %y, [4000 x double]* %sum, double* %alpha, double* %beta, double* %r, double* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %y.addr = alloca [4000 x double]*, align 8
  %sum.addr = alloca [4000 x double]*, align 8
  %alpha.addr = alloca double*, align 8
  %beta.addr = alloca double*, align 8
  %r.addr = alloca double*, align 8
  %out.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [4000 x double]* %y, [4000 x double]** %y.addr, align 8
  store [4000 x double]* %sum, [4000 x double]** %sum.addr, align 8
  store double* %alpha, double** %alpha.addr, align 8
  store double* %beta, double** %beta.addr, align 8
  store double* %r, double** %r.addr, align 8
  store double* %out, double** %out.addr, align 8
  %0 = load double*, double** %r.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %2 = load [4000 x double]*, [4000 x double]** %y.addr, align 8
  %arrayidx1 = getelementptr inbounds [4000 x double], [4000 x double]* %2, i64 0
  %arrayidx2 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx1, i32 0, i64 0
  store double %1, double* %arrayidx2, align 8
  %3 = load double*, double** %beta.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %3, i64 0
  store double 1.000000e+00, double* %arrayidx3, align 8
  %4 = load double*, double** %r.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %4, i64 0
  %5 = load double, double* %arrayidx4, align 8
  %6 = load double*, double** %alpha.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %6, i64 0
  store double %5, double* %arrayidx5, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.91, %entry
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.93

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %9, 1
  %idxprom = sext i32 %sub to i64
  %10 = load double*, double** %beta.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx6, align 8
  %12 = load i32, i32* %k, align 4
  %sub7 = sub nsw i32 %12, 1
  %idxprom8 = sext i32 %sub7 to i64
  %13 = load double*, double** %alpha.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %13, i64 %idxprom8
  %14 = load double, double* %arrayidx9, align 8
  %15 = load i32, i32* %k, align 4
  %sub10 = sub nsw i32 %15, 1
  %idxprom11 = sext i32 %sub10 to i64
  %16 = load double*, double** %alpha.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %16, i64 %idxprom11
  %17 = load double, double* %arrayidx12, align 8
  %mul = fmul double %14, %17
  %18 = load i32, i32* %k, align 4
  %sub13 = sub nsw i32 %18, 1
  %idxprom14 = sext i32 %sub13 to i64
  %19 = load double*, double** %beta.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %19, i64 %idxprom14
  %20 = load double, double* %arrayidx15, align 8
  %mul16 = fmul double %mul, %20
  %sub17 = fsub double %11, %mul16
  %21 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load double*, double** %beta.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %22, i64 %idxprom18
  store double %sub17, double* %arrayidx19, align 8
  %23 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %23 to i64
  %24 = load double*, double** %r.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %24, i64 %idxprom20
  %25 = load double, double* %arrayidx21, align 8
  %26 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %26 to i64
  %27 = load [4000 x double]*, [4000 x double]** %sum.addr, align 8
  %arrayidx23 = getelementptr inbounds [4000 x double], [4000 x double]* %27, i64 0
  %arrayidx24 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx23, i32 0, i64 %idxprom22
  store double %25, double* %arrayidx24, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %k, align 4
  %sub26 = sub nsw i32 %29, 1
  %cmp27 = icmp sle i32 %28, %sub26
  br i1 %cmp27, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.25
  %30 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %31 to i64
  %32 = load [4000 x double]*, [4000 x double]** %sum.addr, align 8
  %arrayidx31 = getelementptr inbounds [4000 x double], [4000 x double]* %32, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx31, i32 0, i64 %idxprom29
  %33 = load double, double* %arrayidx32, align 8
  %34 = load i32, i32* %k, align 4
  %35 = load i32, i32* %i, align 4
  %sub33 = sub nsw i32 %34, %35
  %sub34 = sub nsw i32 %sub33, 1
  %idxprom35 = sext i32 %sub34 to i64
  %36 = load double*, double** %r.addr, align 8
  %arrayidx36 = getelementptr inbounds double, double* %36, i64 %idxprom35
  %37 = load double, double* %arrayidx36, align 8
  %38 = load i32, i32* %k, align 4
  %sub37 = sub nsw i32 %38, 1
  %idxprom38 = sext i32 %sub37 to i64
  %39 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %39 to i64
  %40 = load [4000 x double]*, [4000 x double]** %y.addr, align 8
  %arrayidx40 = getelementptr inbounds [4000 x double], [4000 x double]* %40, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx40, i32 0, i64 %idxprom38
  %41 = load double, double* %arrayidx41, align 8
  %mul42 = fmul double %37, %41
  %add = fadd double %33, %mul42
  %42 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %42 to i64
  %43 = load i32, i32* %i, align 4
  %add44 = add nsw i32 %43, 1
  %idxprom45 = sext i32 %add44 to i64
  %44 = load [4000 x double]*, [4000 x double]** %sum.addr, align 8
  %arrayidx46 = getelementptr inbounds [4000 x double], [4000 x double]* %44, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx46, i32 0, i64 %idxprom43
  store double %add, double* %arrayidx47, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.28
  %45 = load i32, i32* %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  %46 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %46 to i64
  %47 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %47 to i64
  %48 = load [4000 x double]*, [4000 x double]** %sum.addr, align 8
  %arrayidx50 = getelementptr inbounds [4000 x double], [4000 x double]* %48, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx50, i32 0, i64 %idxprom48
  %49 = load double, double* %arrayidx51, align 8
  %sub52 = fsub double -0.000000e+00, %49
  %50 = load i32, i32* %k, align 4
  %idxprom53 = sext i32 %50 to i64
  %51 = load double*, double** %beta.addr, align 8
  %arrayidx54 = getelementptr inbounds double, double* %51, i64 %idxprom53
  %52 = load double, double* %arrayidx54, align 8
  %mul55 = fmul double %sub52, %52
  %53 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %53 to i64
  %54 = load double*, double** %alpha.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %54, i64 %idxprom56
  store double %mul55, double* %arrayidx57, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.82, %for.end
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %k, align 4
  %sub59 = sub nsw i32 %56, 1
  %cmp60 = icmp sle i32 %55, %sub59
  br i1 %cmp60, label %for.body.61, label %for.end.84

for.body.61:                                      ; preds = %for.cond.58
  %57 = load i32, i32* %k, align 4
  %sub62 = sub nsw i32 %57, 1
  %idxprom63 = sext i32 %sub62 to i64
  %58 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %58 to i64
  %59 = load [4000 x double]*, [4000 x double]** %y.addr, align 8
  %arrayidx65 = getelementptr inbounds [4000 x double], [4000 x double]* %59, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx65, i32 0, i64 %idxprom63
  %60 = load double, double* %arrayidx66, align 8
  %61 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %61 to i64
  %62 = load double*, double** %alpha.addr, align 8
  %arrayidx68 = getelementptr inbounds double, double* %62, i64 %idxprom67
  %63 = load double, double* %arrayidx68, align 8
  %64 = load i32, i32* %k, align 4
  %sub69 = sub nsw i32 %64, 1
  %idxprom70 = sext i32 %sub69 to i64
  %65 = load i32, i32* %k, align 4
  %66 = load i32, i32* %i, align 4
  %sub71 = sub nsw i32 %65, %66
  %sub72 = sub nsw i32 %sub71, 1
  %idxprom73 = sext i32 %sub72 to i64
  %67 = load [4000 x double]*, [4000 x double]** %y.addr, align 8
  %arrayidx74 = getelementptr inbounds [4000 x double], [4000 x double]* %67, i64 %idxprom73
  %arrayidx75 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx74, i32 0, i64 %idxprom70
  %68 = load double, double* %arrayidx75, align 8
  %mul76 = fmul double %63, %68
  %add77 = fadd double %60, %mul76
  %69 = load i32, i32* %k, align 4
  %idxprom78 = sext i32 %69 to i64
  %70 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %70 to i64
  %71 = load [4000 x double]*, [4000 x double]** %y.addr, align 8
  %arrayidx80 = getelementptr inbounds [4000 x double], [4000 x double]* %71, i64 %idxprom79
  %arrayidx81 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx80, i32 0, i64 %idxprom78
  store double %add77, double* %arrayidx81, align 8
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.61
  %72 = load i32, i32* %i, align 4
  %inc83 = add nsw i32 %72, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond.58

for.end.84:                                       ; preds = %for.cond.58
  %73 = load i32, i32* %k, align 4
  %idxprom85 = sext i32 %73 to i64
  %74 = load double*, double** %alpha.addr, align 8
  %arrayidx86 = getelementptr inbounds double, double* %74, i64 %idxprom85
  %75 = load double, double* %arrayidx86, align 8
  %76 = load i32, i32* %k, align 4
  %idxprom87 = sext i32 %76 to i64
  %77 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %77 to i64
  %78 = load [4000 x double]*, [4000 x double]** %y.addr, align 8
  %arrayidx89 = getelementptr inbounds [4000 x double], [4000 x double]* %78, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx89, i32 0, i64 %idxprom87
  store double %75, double* %arrayidx90, align 8
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.end.84
  %79 = load i32, i32* %k, align 4
  %inc92 = add nsw i32 %79, 1
  store i32 %inc92, i32* %k, align 4
  br label %for.cond

for.end.93:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.104, %for.end.93
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %n.addr, align 4
  %cmp95 = icmp slt i32 %80, %81
  br i1 %cmp95, label %for.body.96, label %for.end.106

for.body.96:                                      ; preds = %for.cond.94
  %82 = load i32, i32* %n.addr, align 4
  %sub97 = sub nsw i32 %82, 1
  %idxprom98 = sext i32 %sub97 to i64
  %83 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %83 to i64
  %84 = load [4000 x double]*, [4000 x double]** %y.addr, align 8
  %arrayidx100 = getelementptr inbounds [4000 x double], [4000 x double]* %84, i64 %idxprom99
  %arrayidx101 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx100, i32 0, i64 %idxprom98
  %85 = load double, double* %arrayidx101, align 8
  %86 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %86 to i64
  %87 = load double*, double** %out.addr, align 8
  %arrayidx103 = getelementptr inbounds double, double* %87, i64 %idxprom102
  store double %85, double* %arrayidx103, align 8
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.96
  %88 = load i32, i32* %i, align 4
  %inc105 = add nsw i32 %88, 1
  store i32 %inc105, i32* %i, align 4
  br label %for.cond.94

for.end.106:                                      ; preds = %for.cond.94
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %n, double* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %out.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %out, double** %out.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** %out.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %5)
  %6 = load i32, i32* %i, align 4
  %rem = srem i32 %6, 20
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
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
