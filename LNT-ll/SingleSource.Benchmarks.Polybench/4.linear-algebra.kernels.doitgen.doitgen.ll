; ModuleID = './SingleSource.Benchmarks.Polybench/4.linear-algebra.kernels.doitgen.doitgen.bc'
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
  %nr = alloca i32, align 4
  %nq = alloca i32, align 4
  %np = alloca i32, align 4
  %A = alloca [128 x [128 x [128 x double]]]*, align 8
  %sum = alloca [128 x [128 x [128 x double]]]*, align 8
  %C4 = alloca [128 x [128 x double]]*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 128, i32* %nr, align 4
  store i32 128, i32* %nq, align 4
  store i32 128, i32* %np, align 4
  %call = call i8* @polybench_alloc_data(i64 2097152, i32 8)
  %0 = bitcast i8* %call to [128 x [128 x [128 x double]]]*
  store [128 x [128 x [128 x double]]]* %0, [128 x [128 x [128 x double]]]** %A, align 8
  %call1 = call i8* @polybench_alloc_data(i64 2097152, i32 8)
  %1 = bitcast i8* %call1 to [128 x [128 x [128 x double]]]*
  store [128 x [128 x [128 x double]]]* %1, [128 x [128 x [128 x double]]]** %sum, align 8
  %call2 = call i8* @polybench_alloc_data(i64 16384, i32 8)
  %2 = bitcast i8* %call2 to [128 x [128 x double]]*
  store [128 x [128 x double]]* %2, [128 x [128 x double]]** %C4, align 8
  %3 = load i32, i32* %nr, align 4
  %4 = load i32, i32* %nq, align 4
  %5 = load i32, i32* %np, align 4
  %6 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %A, align 8
  %arraydecay = getelementptr inbounds [128 x [128 x [128 x double]]], [128 x [128 x [128 x double]]]* %6, i32 0, i32 0
  %7 = load [128 x [128 x double]]*, [128 x [128 x double]]** %C4, align 8
  %arraydecay3 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %7, i32 0, i32 0
  call void @init_array(i32 %3, i32 %4, i32 %5, [128 x [128 x double]]* %arraydecay, [128 x double]* %arraydecay3)
  %8 = load i32, i32* %nr, align 4
  %9 = load i32, i32* %nq, align 4
  %10 = load i32, i32* %np, align 4
  %11 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %A, align 8
  %arraydecay4 = getelementptr inbounds [128 x [128 x [128 x double]]], [128 x [128 x [128 x double]]]* %11, i32 0, i32 0
  %12 = load [128 x [128 x double]]*, [128 x [128 x double]]** %C4, align 8
  %arraydecay5 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %12, i32 0, i32 0
  %13 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %sum, align 8
  %arraydecay6 = getelementptr inbounds [128 x [128 x [128 x double]]], [128 x [128 x [128 x double]]]* %13, i32 0, i32 0
  call void @kernel_doitgen(i32 %8, i32 %9, i32 %10, [128 x [128 x double]]* %arraydecay4, [128 x double]* %arraydecay5, [128 x [128 x double]]* %arraydecay6)
  %14 = load i32, i32* %nr, align 4
  %15 = load i32, i32* %nq, align 4
  %16 = load i32, i32* %np, align 4
  %17 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %A, align 8
  %arraydecay7 = getelementptr inbounds [128 x [128 x [128 x double]]], [128 x [128 x [128 x double]]]* %17, i32 0, i32 0
  call void @print_array(i32 %14, i32 %15, i32 %16, [128 x [128 x double]]* %arraydecay7)
  %18 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %A, align 8
  %19 = bitcast [128 x [128 x [128 x double]]]* %18 to i8*
  call void @free(i8* %19) #5
  %20 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %sum, align 8
  %21 = bitcast [128 x [128 x [128 x double]]]* %20 to i8*
  call void @free(i8* %21) #5
  %22 = load [128 x [128 x double]]*, [128 x [128 x double]]** %C4, align 8
  %23 = bitcast [128 x [128 x double]]* %22 to i8*
  call void @free(i8* %23) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 %nr, i32 %nq, i32 %np, [128 x [128 x double]]* %A, [128 x double]* %C4) #0 {
entry:
  %nr.addr = alloca i32, align 4
  %nq.addr = alloca i32, align 4
  %np.addr = alloca i32, align 4
  %A.addr = alloca [128 x [128 x double]]*, align 8
  %C4.addr = alloca [128 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %nr, i32* %nr.addr, align 4
  store i32 %nq, i32* %nq.addr, align 4
  store i32 %np, i32* %np.addr, align 4
  store [128 x [128 x double]]* %A, [128 x [128 x double]]** %A.addr, align 8
  store [128 x double]* %C4, [128 x double]** %C4.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nr.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.14, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nq.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.16

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %np.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %i, align 4
  %conv = sitofp i32 %6 to double
  %7 = load i32, i32* %j, align 4
  %conv7 = sitofp i32 %7 to double
  %mul = fmul double %conv, %conv7
  %8 = load i32, i32* %k, align 4
  %conv8 = sitofp i32 %8 to double
  %add = fadd double %mul, %conv8
  %9 = load i32, i32* %np.addr, align 4
  %conv9 = sitofp i32 %9 to double
  %div = fdiv double %add, %conv9
  %10 = load i32, i32* %k, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load [128 x [128 x double]]*, [128 x [128 x double]]** %A.addr, align 8
  %arrayidx = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %13, i64 %idxprom11
  %arrayidx12 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx, i32 0, i64 %idxprom10
  %arrayidx13 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx12, i32 0, i64 %idxprom
  store double %div, double* %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %14 = load i32, i32* %k, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %15 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %15, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond.1

for.end.16:                                       ; preds = %for.cond.1
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end.16
  %16 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %16, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.40, %for.end.19
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %np.addr, align 4
  %cmp21 = icmp slt i32 %17, %18
  br i1 %cmp21, label %for.body.23, label %for.end.42

for.body.23:                                      ; preds = %for.cond.20
  store i32 0, i32* %j, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.37, %for.body.23
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %np.addr, align 4
  %cmp25 = icmp slt i32 %19, %20
  br i1 %cmp25, label %for.body.27, label %for.end.39

for.body.27:                                      ; preds = %for.cond.24
  %21 = load i32, i32* %i, align 4
  %conv28 = sitofp i32 %21 to double
  %22 = load i32, i32* %j, align 4
  %conv29 = sitofp i32 %22 to double
  %mul30 = fmul double %conv28, %conv29
  %23 = load i32, i32* %np.addr, align 4
  %conv31 = sitofp i32 %23 to double
  %div32 = fdiv double %mul30, %conv31
  %24 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %25 to i64
  %26 = load [128 x double]*, [128 x double]** %C4.addr, align 8
  %arrayidx35 = getelementptr inbounds [128 x double], [128 x double]* %26, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx35, i32 0, i64 %idxprom33
  store double %div32, double* %arrayidx36, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.27
  %27 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %27, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond.24

for.end.39:                                       ; preds = %for.cond.24
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.39
  %28 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %28, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.20

for.end.42:                                       ; preds = %for.cond.20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_doitgen(i32 %nr, i32 %nq, i32 %np, [128 x [128 x double]]* %A, [128 x double]* %C4, [128 x [128 x double]]* %sum) #0 {
entry:
  %nr.addr = alloca i32, align 4
  %nq.addr = alloca i32, align 4
  %np.addr = alloca i32, align 4
  %A.addr = alloca [128 x [128 x double]]*, align 8
  %C4.addr = alloca [128 x double]*, align 8
  %sum.addr = alloca [128 x [128 x double]]*, align 8
  %r = alloca i32, align 4
  %q = alloca i32, align 4
  %p = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %nr, i32* %nr.addr, align 4
  store i32 %nq, i32* %nq.addr, align 4
  store i32 %np, i32* %np.addr, align 4
  store [128 x [128 x double]]* %A, [128 x [128 x double]]** %A.addr, align 8
  store [128 x double]* %C4, [128 x double]** %C4.addr, align 8
  store [128 x [128 x double]]* %sum, [128 x [128 x double]]** %sum.addr, align 8
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %entry
  %0 = load i32, i32* %r, align 4
  %1 = load i32, i32* %nr.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.62

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %q, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.57, %for.body
  %2 = load i32, i32* %q, align 4
  %3 = load i32, i32* %nq.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.59

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %p, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.36, %for.body.3
  %4 = load i32, i32* %p, align 4
  %5 = load i32, i32* %np.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body.6, label %for.end.38

for.body.6:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %p, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %q, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i32, i32* %r, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load [128 x [128 x double]]*, [128 x [128 x double]]** %sum.addr, align 8
  %arrayidx = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %9, i64 %idxprom8
  %arrayidx9 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx, i32 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx9, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx10, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body.6
  %10 = load i32, i32* %s, align 4
  %11 = load i32, i32* %np.addr, align 4
  %cmp12 = icmp slt i32 %10, %11
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %12 = load i32, i32* %p, align 4
  %idxprom14 = sext i32 %12 to i64
  %13 = load i32, i32* %q, align 4
  %idxprom15 = sext i32 %13 to i64
  %14 = load i32, i32* %r, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load [128 x [128 x double]]*, [128 x [128 x double]]** %sum.addr, align 8
  %arrayidx17 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %15, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx17, i32 0, i64 %idxprom15
  %arrayidx19 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx18, i32 0, i64 %idxprom14
  %16 = load double, double* %arrayidx19, align 8
  %17 = load i32, i32* %s, align 4
  %idxprom20 = sext i32 %17 to i64
  %18 = load i32, i32* %q, align 4
  %idxprom21 = sext i32 %18 to i64
  %19 = load i32, i32* %r, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load [128 x [128 x double]]*, [128 x [128 x double]]** %A.addr, align 8
  %arrayidx23 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %20, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx23, i32 0, i64 %idxprom21
  %arrayidx25 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx24, i32 0, i64 %idxprom20
  %21 = load double, double* %arrayidx25, align 8
  %22 = load i32, i32* %p, align 4
  %idxprom26 = sext i32 %22 to i64
  %23 = load i32, i32* %s, align 4
  %idxprom27 = sext i32 %23 to i64
  %24 = load [128 x double]*, [128 x double]** %C4.addr, align 8
  %arrayidx28 = getelementptr inbounds [128 x double], [128 x double]* %24, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx28, i32 0, i64 %idxprom26
  %25 = load double, double* %arrayidx29, align 8
  %mul = fmul double %21, %25
  %add = fadd double %16, %mul
  %26 = load i32, i32* %p, align 4
  %idxprom30 = sext i32 %26 to i64
  %27 = load i32, i32* %q, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load i32, i32* %r, align 4
  %idxprom32 = sext i32 %28 to i64
  %29 = load [128 x [128 x double]]*, [128 x [128 x double]]** %sum.addr, align 8
  %arrayidx33 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %29, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx33, i32 0, i64 %idxprom31
  %arrayidx35 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx34, i32 0, i64 %idxprom30
  store double %add, double* %arrayidx35, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %30 = load i32, i32* %s, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end
  %31 = load i32, i32* %p, align 4
  %inc37 = add nsw i32 %31, 1
  store i32 %inc37, i32* %p, align 4
  br label %for.cond.4

for.end.38:                                       ; preds = %for.cond.4
  store i32 0, i32* %p, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.54, %for.end.38
  %32 = load i32, i32* %p, align 4
  %33 = load i32, i32* %nr.addr, align 4
  %cmp40 = icmp slt i32 %32, %33
  br i1 %cmp40, label %for.body.41, label %for.end.56

for.body.41:                                      ; preds = %for.cond.39
  %34 = load i32, i32* %p, align 4
  %idxprom42 = sext i32 %34 to i64
  %35 = load i32, i32* %q, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load i32, i32* %r, align 4
  %idxprom44 = sext i32 %36 to i64
  %37 = load [128 x [128 x double]]*, [128 x [128 x double]]** %sum.addr, align 8
  %arrayidx45 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %37, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx45, i32 0, i64 %idxprom43
  %arrayidx47 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx46, i32 0, i64 %idxprom42
  %38 = load double, double* %arrayidx47, align 8
  %39 = load i32, i32* %p, align 4
  %idxprom48 = sext i32 %39 to i64
  %40 = load i32, i32* %q, align 4
  %idxprom49 = sext i32 %40 to i64
  %41 = load i32, i32* %r, align 4
  %idxprom50 = sext i32 %41 to i64
  %42 = load [128 x [128 x double]]*, [128 x [128 x double]]** %A.addr, align 8
  %arrayidx51 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %42, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx51, i32 0, i64 %idxprom49
  %arrayidx53 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx52, i32 0, i64 %idxprom48
  store double %38, double* %arrayidx53, align 8
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.41
  %43 = load i32, i32* %p, align 4
  %inc55 = add nsw i32 %43, 1
  store i32 %inc55, i32* %p, align 4
  br label %for.cond.39

for.end.56:                                       ; preds = %for.cond.39
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end.56
  %44 = load i32, i32* %q, align 4
  %inc58 = add nsw i32 %44, 1
  store i32 %inc58, i32* %q, align 4
  br label %for.cond.1

for.end.59:                                       ; preds = %for.cond.1
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.59
  %45 = load i32, i32* %r, align 4
  %inc61 = add nsw i32 %45, 1
  store i32 %inc61, i32* %r, align 4
  br label %for.cond

for.end.62:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %nr, i32 %nq, i32 %np, [128 x [128 x double]]* %A) #0 {
entry:
  %nr.addr = alloca i32, align 4
  %nq.addr = alloca i32, align 4
  %np.addr = alloca i32, align 4
  %A.addr = alloca [128 x [128 x double]]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %printmat = alloca i8*, align 8
  store i32 %nr, i32* %nr.addr, align 4
  store i32 %nq, i32* %nq.addr, align 4
  store i32 %np, i32* %np.addr, align 4
  store [128 x [128 x double]]* %A, [128 x [128 x double]]** %A.addr, align 8
  %0 = load i32, i32* %np.addr, align 4
  %mul = mul nsw i32 %0, 16
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %printmat, align 8
  %1 = load i32, i32* %np.addr, align 4
  %mul1 = mul nsw i32 %1, 16
  %idxprom = sext i32 %mul1 to i64
  %2 = load i8*, i8** %printmat, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %nr.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.18, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %nq.addr, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body.6, label %for.end.20

for.body.6:                                       ; preds = %for.cond.3
  store i32 0, i32* %k, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body.6
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %np.addr, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  %9 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %9 to i64
  %10 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %11 to i64
  %12 = load [128 x [128 x double]]*, [128 x [128 x double]]** %A.addr, align 8
  %arrayidx14 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %12, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx14, i32 0, i64 %idxprom12
  %arrayidx16 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx15, i32 0, i64 %idxprom11
  %13 = load double, double* %arrayidx16, align 8
  %14 = load i32, i32* %k, align 4
  %mul17 = mul nsw i32 %14, 16
  %15 = load i8*, i8** %printmat, align 8
  call void @print_element(double %13, i32 %mul17, i8* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %16 = load i32, i32* %k, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %17 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond.3

for.end.20:                                       ; preds = %for.cond.3
  %18 = load i8*, i8** %printmat, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call21 = call i32 @fputs(i8* %18, %struct._IO_FILE* %19)
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end.20
  %20 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %20, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %21 = load i8*, i8** %printmat, align 8
  call void @free(i8* %21) #5
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
