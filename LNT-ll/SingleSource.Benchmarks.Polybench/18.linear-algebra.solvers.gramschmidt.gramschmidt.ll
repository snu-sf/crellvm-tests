; ModuleID = './SingleSource.Benchmarks.Polybench/18.linear-algebra.solvers.gramschmidt.gramschmidt.bc'
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
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %A = alloca [512 x [512 x double]]*, align 8
  %R = alloca [512 x [512 x double]]*, align 8
  %Q = alloca [512 x [512 x double]]*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 512, i32* %ni, align 4
  store i32 512, i32* %nj, align 4
  %call = call i8* @polybench_alloc_data(i64 262144, i32 8)
  %0 = bitcast i8* %call to [512 x [512 x double]]*
  store [512 x [512 x double]]* %0, [512 x [512 x double]]** %A, align 8
  %call1 = call i8* @polybench_alloc_data(i64 262144, i32 8)
  %1 = bitcast i8* %call1 to [512 x [512 x double]]*
  store [512 x [512 x double]]* %1, [512 x [512 x double]]** %R, align 8
  %call2 = call i8* @polybench_alloc_data(i64 262144, i32 8)
  %2 = bitcast i8* %call2 to [512 x [512 x double]]*
  store [512 x [512 x double]]* %2, [512 x [512 x double]]** %Q, align 8
  %3 = load i32, i32* %ni, align 4
  %4 = load i32, i32* %nj, align 4
  %5 = load [512 x [512 x double]]*, [512 x [512 x double]]** %A, align 8
  %arraydecay = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %5, i32 0, i32 0
  %6 = load [512 x [512 x double]]*, [512 x [512 x double]]** %R, align 8
  %arraydecay3 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %6, i32 0, i32 0
  %7 = load [512 x [512 x double]]*, [512 x [512 x double]]** %Q, align 8
  %arraydecay4 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %7, i32 0, i32 0
  call void @init_array(i32 %3, i32 %4, [512 x double]* %arraydecay, [512 x double]* %arraydecay3, [512 x double]* %arraydecay4)
  %8 = load i32, i32* %ni, align 4
  %9 = load i32, i32* %nj, align 4
  %10 = load [512 x [512 x double]]*, [512 x [512 x double]]** %A, align 8
  %arraydecay5 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %10, i32 0, i32 0
  %11 = load [512 x [512 x double]]*, [512 x [512 x double]]** %R, align 8
  %arraydecay6 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %11, i32 0, i32 0
  %12 = load [512 x [512 x double]]*, [512 x [512 x double]]** %Q, align 8
  %arraydecay7 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %12, i32 0, i32 0
  call void @kernel_gramschmidt(i32 %8, i32 %9, [512 x double]* %arraydecay5, [512 x double]* %arraydecay6, [512 x double]* %arraydecay7)
  %13 = load i32, i32* %ni, align 4
  %14 = load i32, i32* %nj, align 4
  %15 = load [512 x [512 x double]]*, [512 x [512 x double]]** %A, align 8
  %arraydecay8 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %15, i32 0, i32 0
  %16 = load [512 x [512 x double]]*, [512 x [512 x double]]** %R, align 8
  %arraydecay9 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %16, i32 0, i32 0
  %17 = load [512 x [512 x double]]*, [512 x [512 x double]]** %Q, align 8
  %arraydecay10 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %17, i32 0, i32 0
  call void @print_array(i32 %13, i32 %14, [512 x double]* %arraydecay8, [512 x double]* %arraydecay9, [512 x double]* %arraydecay10)
  %18 = load [512 x [512 x double]]*, [512 x [512 x double]]** %A, align 8
  %19 = bitcast [512 x [512 x double]]* %18 to i8*
  call void @free(i8* %19) #4
  %20 = load [512 x [512 x double]]*, [512 x [512 x double]]** %R, align 8
  %21 = bitcast [512 x [512 x double]]* %20 to i8*
  call void @free(i8* %21) #4
  %22 = load [512 x [512 x double]]*, [512 x [512 x double]]** %Q, align 8
  %23 = bitcast [512 x [512 x double]]* %22 to i8*
  call void @free(i8* %23) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 %ni, i32 %nj, [512 x double]* %A, [512 x double]* %R, [512 x double]* %Q) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %A.addr = alloca [512 x double]*, align 8
  %R.addr = alloca [512 x double]*, align 8
  %Q.addr = alloca [512 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store [512 x double]* %A, [512 x double]** %A.addr, align 8
  store [512 x double]* %R, [512 x double]** %R.addr, align 8
  store [512 x double]* %Q, [512 x double]** %Q.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %conv = sitofp i32 %4 to double
  %5 = load i32, i32* %j, align 4
  %conv4 = sitofp i32 %5 to double
  %mul = fmul double %conv, %conv4
  %6 = load i32, i32* %ni.addr, align 4
  %conv5 = sitofp i32 %6 to double
  %add = fadd double %mul, %conv5
  %7 = load i32, i32* %ni.addr, align 4
  %conv6 = sitofp i32 %7 to double
  %div = fdiv double %add, %conv6
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %arrayidx = getelementptr inbounds [512 x double], [512 x double]* %10, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx, i32 0, i64 %idxprom
  store double %div, double* %arrayidx8, align 8
  %11 = load i32, i32* %i, align 4
  %conv9 = sitofp i32 %11 to double
  %12 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %12, 1
  %conv11 = sitofp i32 %add10 to double
  %mul12 = fmul double %conv9, %conv11
  %13 = load i32, i32* %nj.addr, align 4
  %conv13 = sitofp i32 %13 to double
  %add14 = fadd double %mul12, %conv13
  %14 = load i32, i32* %nj.addr, align 4
  %conv15 = sitofp i32 %14 to double
  %div16 = fdiv double %add14, %conv15
  %15 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load [512 x double]*, [512 x double]** %Q.addr, align 8
  %arrayidx19 = getelementptr inbounds [512 x double], [512 x double]* %17, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx19, i32 0, i64 %idxprom17
  store double %div16, double* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %19, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.47, %for.end.23
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %nj.addr, align 4
  %cmp25 = icmp slt i32 %20, %21
  br i1 %cmp25, label %for.body.27, label %for.end.49

for.body.27:                                      ; preds = %for.cond.24
  store i32 0, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.44, %for.body.27
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %nj.addr, align 4
  %cmp29 = icmp slt i32 %22, %23
  br i1 %cmp29, label %for.body.31, label %for.end.46

for.body.31:                                      ; preds = %for.cond.28
  %24 = load i32, i32* %i, align 4
  %conv32 = sitofp i32 %24 to double
  %25 = load i32, i32* %j, align 4
  %add33 = add nsw i32 %25, 2
  %conv34 = sitofp i32 %add33 to double
  %mul35 = fmul double %conv32, %conv34
  %26 = load i32, i32* %nj.addr, align 4
  %conv36 = sitofp i32 %26 to double
  %add37 = fadd double %mul35, %conv36
  %27 = load i32, i32* %nj.addr, align 4
  %conv38 = sitofp i32 %27 to double
  %div39 = fdiv double %add37, %conv38
  %28 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %29 to i64
  %30 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %arrayidx42 = getelementptr inbounds [512 x double], [512 x double]* %30, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx42, i32 0, i64 %idxprom40
  store double %div39, double* %arrayidx43, align 8
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.31
  %31 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %31, 1
  store i32 %inc45, i32* %j, align 4
  br label %for.cond.28

for.end.46:                                       ; preds = %for.cond.28
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end.46
  %32 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %32, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.24

for.end.49:                                       ; preds = %for.cond.24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_gramschmidt(i32 %ni, i32 %nj, [512 x double]* %A, [512 x double]* %R, [512 x double]* %Q) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %A.addr = alloca [512 x double]*, align 8
  %R.addr = alloca [512 x double]*, align 8
  %Q.addr = alloca [512 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nrm = alloca double, align 8
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store [512 x double]* %A, [512 x double]** %A.addr, align 8
  store [512 x double]* %R, [512 x double]** %R.addr, align 8
  store [512 x double]* %Q, [512 x double]** %Q.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %nj.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.88

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %nrm, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ni.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %arrayidx = getelementptr inbounds [512 x double], [512 x double]* %6, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx, i32 0, i64 %idxprom
  %7 = load double, double* %arrayidx5, align 8
  %8 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %arrayidx8 = getelementptr inbounds [512 x double], [512 x double]* %10, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx8, i32 0, i64 %idxprom6
  %11 = load double, double* %arrayidx9, align 8
  %mul = fmul double %7, %11
  %12 = load double, double* %nrm, align 8
  %add = fadd double %12, %mul
  store double %add, double* %nrm, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %14 = load double, double* %nrm, align 8
  %call = call double @sqrt(double %14) #4
  %15 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %arrayidx12 = getelementptr inbounds [512 x double], [512 x double]* %17, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx12, i32 0, i64 %idxprom10
  store double %call, double* %arrayidx13, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.29, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %ni.addr, align 4
  %cmp15 = icmp slt i32 %18, %19
  br i1 %cmp15, label %for.body.16, label %for.end.31

for.body.16:                                      ; preds = %for.cond.14
  %20 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %arrayidx19 = getelementptr inbounds [512 x double], [512 x double]* %22, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx19, i32 0, i64 %idxprom17
  %23 = load double, double* %arrayidx20, align 8
  %24 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %25 to i64
  %26 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %arrayidx23 = getelementptr inbounds [512 x double], [512 x double]* %26, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx23, i32 0, i64 %idxprom21
  %27 = load double, double* %arrayidx24, align 8
  %div = fdiv double %23, %27
  %28 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %29 to i64
  %30 = load [512 x double]*, [512 x double]** %Q.addr, align 8
  %arrayidx27 = getelementptr inbounds [512 x double], [512 x double]* %30, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx27, i32 0, i64 %idxprom25
  store double %div, double* %arrayidx28, align 8
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.16
  %31 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %31, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.14

for.end.31:                                       ; preds = %for.cond.14
  %32 = load i32, i32* %k, align 4
  %add32 = add nsw i32 %32, 1
  store i32 %add32, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.83, %for.end.31
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %nj.addr, align 4
  %cmp34 = icmp slt i32 %33, %34
  br i1 %cmp34, label %for.body.35, label %for.end.85

for.body.35:                                      ; preds = %for.cond.33
  %35 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %35 to i64
  %36 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %36 to i64
  %37 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %arrayidx38 = getelementptr inbounds [512 x double], [512 x double]* %37, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx38, i32 0, i64 %idxprom36
  store double 0.000000e+00, double* %arrayidx39, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.57, %for.body.35
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %ni.addr, align 4
  %cmp41 = icmp slt i32 %38, %39
  br i1 %cmp41, label %for.body.42, label %for.end.59

for.body.42:                                      ; preds = %for.cond.40
  %40 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %40 to i64
  %41 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %41 to i64
  %42 = load [512 x double]*, [512 x double]** %Q.addr, align 8
  %arrayidx45 = getelementptr inbounds [512 x double], [512 x double]* %42, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx45, i32 0, i64 %idxprom43
  %43 = load double, double* %arrayidx46, align 8
  %44 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %44 to i64
  %45 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %45 to i64
  %46 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %arrayidx49 = getelementptr inbounds [512 x double], [512 x double]* %46, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx49, i32 0, i64 %idxprom47
  %47 = load double, double* %arrayidx50, align 8
  %mul51 = fmul double %43, %47
  %48 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %48 to i64
  %49 = load i32, i32* %k, align 4
  %idxprom53 = sext i32 %49 to i64
  %50 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %arrayidx54 = getelementptr inbounds [512 x double], [512 x double]* %50, i64 %idxprom53
  %arrayidx55 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx54, i32 0, i64 %idxprom52
  %51 = load double, double* %arrayidx55, align 8
  %add56 = fadd double %51, %mul51
  store double %add56, double* %arrayidx55, align 8
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.42
  %52 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %52, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.40

for.end.59:                                       ; preds = %for.cond.40
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.80, %for.end.59
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %ni.addr, align 4
  %cmp61 = icmp slt i32 %53, %54
  br i1 %cmp61, label %for.body.62, label %for.end.82

for.body.62:                                      ; preds = %for.cond.60
  %55 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %55 to i64
  %56 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %56 to i64
  %57 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %arrayidx65 = getelementptr inbounds [512 x double], [512 x double]* %57, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx65, i32 0, i64 %idxprom63
  %58 = load double, double* %arrayidx66, align 8
  %59 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %59 to i64
  %60 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %60 to i64
  %61 = load [512 x double]*, [512 x double]** %Q.addr, align 8
  %arrayidx69 = getelementptr inbounds [512 x double], [512 x double]* %61, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx69, i32 0, i64 %idxprom67
  %62 = load double, double* %arrayidx70, align 8
  %63 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %63 to i64
  %64 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %64 to i64
  %65 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %arrayidx73 = getelementptr inbounds [512 x double], [512 x double]* %65, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx73, i32 0, i64 %idxprom71
  %66 = load double, double* %arrayidx74, align 8
  %mul75 = fmul double %62, %66
  %sub = fsub double %58, %mul75
  %67 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %67 to i64
  %68 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %68 to i64
  %69 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %arrayidx78 = getelementptr inbounds [512 x double], [512 x double]* %69, i64 %idxprom77
  %arrayidx79 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx78, i32 0, i64 %idxprom76
  store double %sub, double* %arrayidx79, align 8
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.62
  %70 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %70, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.60

for.end.82:                                       ; preds = %for.cond.60
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.end.82
  %71 = load i32, i32* %j, align 4
  %inc84 = add nsw i32 %71, 1
  store i32 %inc84, i32* %j, align 4
  br label %for.cond.33

for.end.85:                                       ; preds = %for.cond.33
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.end.85
  %72 = load i32, i32* %k, align 4
  %inc87 = add nsw i32 %72, 1
  store i32 %inc87, i32* %k, align 4
  br label %for.cond

for.end.88:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %ni, i32 %nj, [512 x double]* %A, [512 x double]* %R, [512 x double]* %Q) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %A.addr = alloca [512 x double]*, align 8
  %R.addr = alloca [512 x double]*, align 8
  %Q.addr = alloca [512 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store [512 x double]* %A, [512 x double]** %A.addr, align 8
  store [512 x double]* %R, [512 x double]** %R.addr, align 8
  store [512 x double]* %Q, [512 x double]** %Q.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %arrayidx = getelementptr inbounds [512 x double], [512 x double]* %7, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx, i32 0, i64 %idxprom
  %8 = load double, double* %arrayidx5, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %8)
  %9 = load i32, i32* %i, align 4
  %rem = srem i32 %9, 20
  %cmp6 = icmp eq i32 %rem, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %12, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.31, %for.end.10
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %nj.addr, align 4
  %cmp13 = icmp slt i32 %14, %15
  br i1 %cmp13, label %for.body.14, label %for.end.33

for.body.14:                                      ; preds = %for.cond.12
  store i32 0, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.28, %for.body.14
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %nj.addr, align 4
  %cmp16 = icmp slt i32 %16, %17
  br i1 %cmp16, label %for.body.17, label %for.end.30

for.body.17:                                      ; preds = %for.cond.15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %arrayidx20 = getelementptr inbounds [512 x double], [512 x double]* %21, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx20, i32 0, i64 %idxprom18
  %22 = load double, double* %arrayidx21, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %22)
  %23 = load i32, i32* %i, align 4
  %rem23 = srem i32 %23, 20
  %cmp24 = icmp eq i32 %rem23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %for.body.17
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %for.body.17
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %25 = load i32, i32* %j, align 4
  %inc29 = add nsw i32 %25, 1
  store i32 %inc29, i32* %j, align 4
  br label %for.cond.15

for.end.30:                                       ; preds = %for.cond.15
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end.30
  %26 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.12

for.end.33:                                       ; preds = %for.cond.12
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.54, %for.end.33
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %ni.addr, align 4
  %cmp36 = icmp slt i32 %28, %29
  br i1 %cmp36, label %for.body.37, label %for.end.56

for.body.37:                                      ; preds = %for.cond.35
  store i32 0, i32* %j, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.51, %for.body.37
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %nj.addr, align 4
  %cmp39 = icmp slt i32 %30, %31
  br i1 %cmp39, label %for.body.40, label %for.end.53

for.body.40:                                      ; preds = %for.cond.38
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %34 to i64
  %35 = load [512 x double]*, [512 x double]** %Q.addr, align 8
  %arrayidx43 = getelementptr inbounds [512 x double], [512 x double]* %35, i64 %idxprom42
  %arrayidx44 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx43, i32 0, i64 %idxprom41
  %36 = load double, double* %arrayidx44, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %36)
  %37 = load i32, i32* %i, align 4
  %rem46 = srem i32 %37, 20
  %cmp47 = icmp eq i32 %rem46, 0
  br i1 %cmp47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %for.body.40
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %for.body.40
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %39 = load i32, i32* %j, align 4
  %inc52 = add nsw i32 %39, 1
  store i32 %inc52, i32* %j, align 4
  br label %for.cond.38

for.end.53:                                       ; preds = %for.cond.38
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %40 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %40, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond.35

for.end.56:                                       ; preds = %for.cond.35
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
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
declare double @sqrt(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
