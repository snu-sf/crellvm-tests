; ModuleID = './SingleSource.Benchmarks.Polybench/14.linear-algebra.kernels.3mm.3mm.bc'
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
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %nl = alloca i32, align 4
  %nm = alloca i32, align 4
  %E = alloca [1024 x [1024 x double]]*, align 8
  %A = alloca [1024 x [1024 x double]]*, align 8
  %B = alloca [1024 x [1024 x double]]*, align 8
  %F = alloca [1024 x [1024 x double]]*, align 8
  %C = alloca [1024 x [1024 x double]]*, align 8
  %D = alloca [1024 x [1024 x double]]*, align 8
  %G = alloca [1024 x [1024 x double]]*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1024, i32* %ni, align 4
  store i32 1024, i32* %nj, align 4
  store i32 1024, i32* %nk, align 4
  store i32 1024, i32* %nl, align 4
  store i32 1024, i32* %nm, align 4
  %call = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %0 = bitcast i8* %call to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %0, [1024 x [1024 x double]]** %E, align 8
  %call1 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %1 = bitcast i8* %call1 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %1, [1024 x [1024 x double]]** %A, align 8
  %call2 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %2 = bitcast i8* %call2 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %2, [1024 x [1024 x double]]** %B, align 8
  %call3 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %3 = bitcast i8* %call3 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %3, [1024 x [1024 x double]]** %F, align 8
  %call4 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %4 = bitcast i8* %call4 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %4, [1024 x [1024 x double]]** %C, align 8
  %call5 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %5 = bitcast i8* %call5 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %5, [1024 x [1024 x double]]** %D, align 8
  %call6 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %6 = bitcast i8* %call6 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %6, [1024 x [1024 x double]]** %G, align 8
  %7 = load i32, i32* %ni, align 4
  %8 = load i32, i32* %nj, align 4
  %9 = load i32, i32* %nk, align 4
  %10 = load i32, i32* %nl, align 4
  %11 = load i32, i32* %nm, align 4
  %12 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %arraydecay = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %12, i32 0, i32 0
  %13 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %arraydecay7 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %13, i32 0, i32 0
  %14 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %C, align 8
  %arraydecay8 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %14, i32 0, i32 0
  %15 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %D, align 8
  %arraydecay9 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %15, i32 0, i32 0
  call void @init_array(i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, [1024 x double]* %arraydecay, [1024 x double]* %arraydecay7, [1024 x double]* %arraydecay8, [1024 x double]* %arraydecay9)
  %16 = load i32, i32* %ni, align 4
  %17 = load i32, i32* %nj, align 4
  %18 = load i32, i32* %nk, align 4
  %19 = load i32, i32* %nl, align 4
  %20 = load i32, i32* %nm, align 4
  %21 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %E, align 8
  %arraydecay10 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %21, i32 0, i32 0
  %22 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %arraydecay11 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %22, i32 0, i32 0
  %23 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %arraydecay12 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %23, i32 0, i32 0
  %24 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %F, align 8
  %arraydecay13 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %24, i32 0, i32 0
  %25 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %C, align 8
  %arraydecay14 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %25, i32 0, i32 0
  %26 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %D, align 8
  %arraydecay15 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %26, i32 0, i32 0
  %27 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %G, align 8
  %arraydecay16 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %27, i32 0, i32 0
  call void @kernel_3mm(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, [1024 x double]* %arraydecay10, [1024 x double]* %arraydecay11, [1024 x double]* %arraydecay12, [1024 x double]* %arraydecay13, [1024 x double]* %arraydecay14, [1024 x double]* %arraydecay15, [1024 x double]* %arraydecay16)
  %28 = load i32, i32* %ni, align 4
  %29 = load i32, i32* %nl, align 4
  %30 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %G, align 8
  %arraydecay17 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %30, i32 0, i32 0
  call void @print_array(i32 %28, i32 %29, [1024 x double]* %arraydecay17)
  %31 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %E, align 8
  %32 = bitcast [1024 x [1024 x double]]* %31 to i8*
  call void @free(i8* %32) #5
  %33 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %34 = bitcast [1024 x [1024 x double]]* %33 to i8*
  call void @free(i8* %34) #5
  %35 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %36 = bitcast [1024 x [1024 x double]]* %35 to i8*
  call void @free(i8* %36) #5
  %37 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %F, align 8
  %38 = bitcast [1024 x [1024 x double]]* %37 to i8*
  call void @free(i8* %38) #5
  %39 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %C, align 8
  %40 = bitcast [1024 x [1024 x double]]* %39 to i8*
  call void @free(i8* %40) #5
  %41 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %D, align 8
  %42 = bitcast [1024 x [1024 x double]]* %41 to i8*
  call void @free(i8* %42) #5
  %43 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %G, align 8
  %44 = bitcast [1024 x [1024 x double]]* %43 to i8*
  call void @free(i8* %44) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 %ni, i32 %nj, i32 %nk, i32 %nl, i32 %nm, [1024 x double]* %A, [1024 x double]* %B, [1024 x double]* %C, [1024 x double]* %D) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %A.addr = alloca [1024 x double]*, align 8
  %B.addr = alloca [1024 x double]*, align 8
  %C.addr = alloca [1024 x double]*, align 8
  %D.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store i32 %nm, i32* %nm.addr, align 4
  store [1024 x double]* %A, [1024 x double]** %A.addr, align 8
  store [1024 x double]* %B, [1024 x double]** %B.addr, align 8
  store [1024 x double]* %C, [1024 x double]** %C.addr, align 8
  store [1024 x double]* %D, [1024 x double]** %D.addr, align 8
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
  %3 = load i32, i32* %nk.addr, align 4
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
  %div = fdiv double %mul, %conv5
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx = getelementptr inbounds [1024 x double], [1024 x double]* %9, i64 %idxprom6
  %arrayidx7 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx, i32 0, i64 %idxprom
  store double %div, double* %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.31, %for.end.10
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %nk.addr, align 4
  %cmp12 = icmp slt i32 %12, %13
  br i1 %cmp12, label %for.body.14, label %for.end.33

for.body.14:                                      ; preds = %for.cond.11
  store i32 0, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.28, %for.body.14
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %nj.addr, align 4
  %cmp16 = icmp slt i32 %14, %15
  br i1 %cmp16, label %for.body.18, label %for.end.30

for.body.18:                                      ; preds = %for.cond.15
  %16 = load i32, i32* %i, align 4
  %conv19 = sitofp i32 %16 to double
  %17 = load i32, i32* %j, align 4
  %add = add nsw i32 %17, 1
  %conv20 = sitofp i32 %add to double
  %mul21 = fmul double %conv19, %conv20
  %18 = load i32, i32* %nj.addr, align 4
  %conv22 = sitofp i32 %18 to double
  %div23 = fdiv double %mul21, %conv22
  %19 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx26 = getelementptr inbounds [1024 x double], [1024 x double]* %21, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx26, i32 0, i64 %idxprom24
  store double %div23, double* %arrayidx27, align 8
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.18
  %22 = load i32, i32* %j, align 4
  %inc29 = add nsw i32 %22, 1
  store i32 %inc29, i32* %j, align 4
  br label %for.cond.15

for.end.30:                                       ; preds = %for.cond.15
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end.30
  %23 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %23, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.11

for.end.33:                                       ; preds = %for.cond.11
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.55, %for.end.33
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %nj.addr, align 4
  %cmp35 = icmp slt i32 %24, %25
  br i1 %cmp35, label %for.body.37, label %for.end.57

for.body.37:                                      ; preds = %for.cond.34
  store i32 0, i32* %j, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.52, %for.body.37
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %nm.addr, align 4
  %cmp39 = icmp slt i32 %26, %27
  br i1 %cmp39, label %for.body.41, label %for.end.54

for.body.41:                                      ; preds = %for.cond.38
  %28 = load i32, i32* %i, align 4
  %conv42 = sitofp i32 %28 to double
  %29 = load i32, i32* %j, align 4
  %add43 = add nsw i32 %29, 3
  %conv44 = sitofp i32 %add43 to double
  %mul45 = fmul double %conv42, %conv44
  %30 = load i32, i32* %nl.addr, align 4
  %conv46 = sitofp i32 %30 to double
  %div47 = fdiv double %mul45, %conv46
  %31 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %32 to i64
  %33 = load [1024 x double]*, [1024 x double]** %C.addr, align 8
  %arrayidx50 = getelementptr inbounds [1024 x double], [1024 x double]* %33, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx50, i32 0, i64 %idxprom48
  store double %div47, double* %arrayidx51, align 8
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.41
  %34 = load i32, i32* %j, align 4
  %inc53 = add nsw i32 %34, 1
  store i32 %inc53, i32* %j, align 4
  br label %for.cond.38

for.end.54:                                       ; preds = %for.cond.38
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.54
  %35 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %35, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.34

for.end.57:                                       ; preds = %for.cond.34
  store i32 0, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.79, %for.end.57
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %nm.addr, align 4
  %cmp59 = icmp slt i32 %36, %37
  br i1 %cmp59, label %for.body.61, label %for.end.81

for.body.61:                                      ; preds = %for.cond.58
  store i32 0, i32* %j, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.76, %for.body.61
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %nl.addr, align 4
  %cmp63 = icmp slt i32 %38, %39
  br i1 %cmp63, label %for.body.65, label %for.end.78

for.body.65:                                      ; preds = %for.cond.62
  %40 = load i32, i32* %i, align 4
  %conv66 = sitofp i32 %40 to double
  %41 = load i32, i32* %j, align 4
  %add67 = add nsw i32 %41, 2
  %conv68 = sitofp i32 %add67 to double
  %mul69 = fmul double %conv66, %conv68
  %42 = load i32, i32* %nk.addr, align 4
  %conv70 = sitofp i32 %42 to double
  %div71 = fdiv double %mul69, %conv70
  %43 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %43 to i64
  %44 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %44 to i64
  %45 = load [1024 x double]*, [1024 x double]** %D.addr, align 8
  %arrayidx74 = getelementptr inbounds [1024 x double], [1024 x double]* %45, i64 %idxprom73
  %arrayidx75 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx74, i32 0, i64 %idxprom72
  store double %div71, double* %arrayidx75, align 8
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.65
  %46 = load i32, i32* %j, align 4
  %inc77 = add nsw i32 %46, 1
  store i32 %inc77, i32* %j, align 4
  br label %for.cond.62

for.end.78:                                       ; preds = %for.cond.62
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.78
  %47 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %47, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond.58

for.end.81:                                       ; preds = %for.cond.58
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_3mm(i32 %ni, i32 %nj, i32 %nk, i32 %nl, i32 %nm, [1024 x double]* %E, [1024 x double]* %A, [1024 x double]* %B, [1024 x double]* %F, [1024 x double]* %C, [1024 x double]* %D, [1024 x double]* %G) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %E.addr = alloca [1024 x double]*, align 8
  %A.addr = alloca [1024 x double]*, align 8
  %B.addr = alloca [1024 x double]*, align 8
  %F.addr = alloca [1024 x double]*, align 8
  %C.addr = alloca [1024 x double]*, align 8
  %D.addr = alloca [1024 x double]*, align 8
  %G.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store i32 %nk, i32* %nk.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store i32 %nm, i32* %nm.addr, align 4
  store [1024 x double]* %E, [1024 x double]** %E.addr, align 8
  store [1024 x double]* %A, [1024 x double]** %A.addr, align 8
  store [1024 x double]* %B, [1024 x double]** %B.addr, align 8
  store [1024 x double]* %F, [1024 x double]** %F.addr, align 8
  store [1024 x double]* %C, [1024 x double]** %C.addr, align 8
  store [1024 x double]* %D, [1024 x double]** %D.addr, align 8
  store [1024 x double]* %G, [1024 x double]** %G.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.21, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.23

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load [1024 x double]*, [1024 x double]** %E.addr, align 8
  %arrayidx = getelementptr inbounds [1024 x double], [1024 x double]* %6, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx5, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body.3
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %nk.addr, align 4
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %9 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx11 = getelementptr inbounds [1024 x double], [1024 x double]* %11, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx11, i32 0, i64 %idxprom9
  %12 = load double, double* %arrayidx12, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %arrayidx15 = getelementptr inbounds [1024 x double], [1024 x double]* %15, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx15, i32 0, i64 %idxprom13
  %16 = load double, double* %arrayidx16, align 8
  %mul = fmul double %12, %16
  %17 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load [1024 x double]*, [1024 x double]** %E.addr, align 8
  %arrayidx19 = getelementptr inbounds [1024 x double], [1024 x double]* %19, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx19, i32 0, i64 %idxprom17
  %20 = load double, double* %arrayidx20, align 8
  %add = fadd double %20, %mul
  store double %add, double* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %21 = load i32, i32* %k, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %22 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %22, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond.1

for.end.23:                                       ; preds = %for.cond.1
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.23
  %23 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %23, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.60, %for.end.26
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %nj.addr, align 4
  %cmp28 = icmp slt i32 %24, %25
  br i1 %cmp28, label %for.body.29, label %for.end.62

for.body.29:                                      ; preds = %for.cond.27
  store i32 0, i32* %j, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.57, %for.body.29
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %nl.addr, align 4
  %cmp31 = icmp slt i32 %26, %27
  br i1 %cmp31, label %for.body.32, label %for.end.59

for.body.32:                                      ; preds = %for.cond.30
  %28 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %29 to i64
  %30 = load [1024 x double]*, [1024 x double]** %F.addr, align 8
  %arrayidx35 = getelementptr inbounds [1024 x double], [1024 x double]* %30, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx35, i32 0, i64 %idxprom33
  store double 0.000000e+00, double* %arrayidx36, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.54, %for.body.32
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %nm.addr, align 4
  %cmp38 = icmp slt i32 %31, %32
  br i1 %cmp38, label %for.body.39, label %for.end.56

for.body.39:                                      ; preds = %for.cond.37
  %33 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %34 to i64
  %35 = load [1024 x double]*, [1024 x double]** %C.addr, align 8
  %arrayidx42 = getelementptr inbounds [1024 x double], [1024 x double]* %35, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx42, i32 0, i64 %idxprom40
  %36 = load double, double* %arrayidx43, align 8
  %37 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %37 to i64
  %38 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %38 to i64
  %39 = load [1024 x double]*, [1024 x double]** %D.addr, align 8
  %arrayidx46 = getelementptr inbounds [1024 x double], [1024 x double]* %39, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx46, i32 0, i64 %idxprom44
  %40 = load double, double* %arrayidx47, align 8
  %mul48 = fmul double %36, %40
  %41 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %41 to i64
  %42 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %42 to i64
  %43 = load [1024 x double]*, [1024 x double]** %F.addr, align 8
  %arrayidx51 = getelementptr inbounds [1024 x double], [1024 x double]* %43, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx51, i32 0, i64 %idxprom49
  %44 = load double, double* %arrayidx52, align 8
  %add53 = fadd double %44, %mul48
  store double %add53, double* %arrayidx52, align 8
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.39
  %45 = load i32, i32* %k, align 4
  %inc55 = add nsw i32 %45, 1
  store i32 %inc55, i32* %k, align 4
  br label %for.cond.37

for.end.56:                                       ; preds = %for.cond.37
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end.56
  %46 = load i32, i32* %j, align 4
  %inc58 = add nsw i32 %46, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond.30

for.end.59:                                       ; preds = %for.cond.30
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.59
  %47 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %47, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond.27

for.end.62:                                       ; preds = %for.cond.27
  store i32 0, i32* %i, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.96, %for.end.62
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %ni.addr, align 4
  %cmp64 = icmp slt i32 %48, %49
  br i1 %cmp64, label %for.body.65, label %for.end.98

for.body.65:                                      ; preds = %for.cond.63
  store i32 0, i32* %j, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.93, %for.body.65
  %50 = load i32, i32* %j, align 4
  %51 = load i32, i32* %nl.addr, align 4
  %cmp67 = icmp slt i32 %50, %51
  br i1 %cmp67, label %for.body.68, label %for.end.95

for.body.68:                                      ; preds = %for.cond.66
  %52 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %52 to i64
  %53 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %53 to i64
  %54 = load [1024 x double]*, [1024 x double]** %G.addr, align 8
  %arrayidx71 = getelementptr inbounds [1024 x double], [1024 x double]* %54, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx71, i32 0, i64 %idxprom69
  store double 0.000000e+00, double* %arrayidx72, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.90, %for.body.68
  %55 = load i32, i32* %k, align 4
  %56 = load i32, i32* %nj.addr, align 4
  %cmp74 = icmp slt i32 %55, %56
  br i1 %cmp74, label %for.body.75, label %for.end.92

for.body.75:                                      ; preds = %for.cond.73
  %57 = load i32, i32* %k, align 4
  %idxprom76 = sext i32 %57 to i64
  %58 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %58 to i64
  %59 = load [1024 x double]*, [1024 x double]** %E.addr, align 8
  %arrayidx78 = getelementptr inbounds [1024 x double], [1024 x double]* %59, i64 %idxprom77
  %arrayidx79 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx78, i32 0, i64 %idxprom76
  %60 = load double, double* %arrayidx79, align 8
  %61 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %61 to i64
  %62 = load i32, i32* %k, align 4
  %idxprom81 = sext i32 %62 to i64
  %63 = load [1024 x double]*, [1024 x double]** %F.addr, align 8
  %arrayidx82 = getelementptr inbounds [1024 x double], [1024 x double]* %63, i64 %idxprom81
  %arrayidx83 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx82, i32 0, i64 %idxprom80
  %64 = load double, double* %arrayidx83, align 8
  %mul84 = fmul double %60, %64
  %65 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %65 to i64
  %66 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %66 to i64
  %67 = load [1024 x double]*, [1024 x double]** %G.addr, align 8
  %arrayidx87 = getelementptr inbounds [1024 x double], [1024 x double]* %67, i64 %idxprom86
  %arrayidx88 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx87, i32 0, i64 %idxprom85
  %68 = load double, double* %arrayidx88, align 8
  %add89 = fadd double %68, %mul84
  store double %add89, double* %arrayidx88, align 8
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.75
  %69 = load i32, i32* %k, align 4
  %inc91 = add nsw i32 %69, 1
  store i32 %inc91, i32* %k, align 4
  br label %for.cond.73

for.end.92:                                       ; preds = %for.cond.73
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end.92
  %70 = load i32, i32* %j, align 4
  %inc94 = add nsw i32 %70, 1
  store i32 %inc94, i32* %j, align 4
  br label %for.cond.66

for.end.95:                                       ; preds = %for.cond.66
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.end.95
  %71 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %71, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond.63

for.end.98:                                       ; preds = %for.cond.63
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %ni, i32 %nl, [1024 x double]* %G) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %G.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %printmat = alloca i8*, align 8
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nl, i32* %nl.addr, align 4
  store [1024 x double]* %G, [1024 x double]** %G.addr, align 8
  %0 = load i32, i32* %nl.addr, align 4
  %mul = mul nsw i32 %0, 16
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %printmat, align 8
  %1 = load i32, i32* %nl.addr, align 4
  %mul1 = mul nsw i32 %1, 16
  %idxprom = sext i32 %mul1 to i64
  %2 = load i8*, i8** %printmat, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %nl.addr, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %7 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load [1024 x double]*, [1024 x double]** %G.addr, align 8
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
