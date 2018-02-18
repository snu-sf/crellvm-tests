; ModuleID = './SingleSource.Benchmarks.Polybench/11.linear-algebra.kernels.cholesky.cholesky.bc'
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
  %A = alloca [1024 x [1024 x double]]*, align 8
  %p = alloca [1024 x double]*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1024, i32* %n, align 4
  %call = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %0 = bitcast i8* %call to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %0, [1024 x [1024 x double]]** %A, align 8
  %call1 = call i8* @polybench_alloc_data(i64 1024, i32 8)
  %1 = bitcast i8* %call1 to [1024 x double]*
  store [1024 x double]* %1, [1024 x double]** %p, align 8
  %2 = load i32, i32* %n, align 4
  %3 = load [1024 x double]*, [1024 x double]** %p, align 8
  %arraydecay = getelementptr inbounds [1024 x double], [1024 x double]* %3, i32 0, i32 0
  %4 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %arraydecay2 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %4, i32 0, i32 0
  call void @init_array(i32 %2, double* %arraydecay, [1024 x double]* %arraydecay2)
  %5 = load i32, i32* %n, align 4
  %6 = load [1024 x double]*, [1024 x double]** %p, align 8
  %arraydecay3 = getelementptr inbounds [1024 x double], [1024 x double]* %6, i32 0, i32 0
  %7 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %arraydecay4 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %7, i32 0, i32 0
  call void @kernel_cholesky(i32 %5, double* %arraydecay3, [1024 x double]* %arraydecay4)
  %8 = load i32, i32* %n, align 4
  %9 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %arraydecay5 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %9, i32 0, i32 0
  call void @print_array(i32 %8, [1024 x double]* %arraydecay5)
  %10 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %11 = bitcast [1024 x [1024 x double]]* %10 to i8*
  call void @free(i8* %11) #5
  %12 = load [1024 x double]*, [1024 x double]** %p, align 8
  %13 = bitcast [1024 x double]* %12 to i8*
  call void @free(i8* %13) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 %n, double* %p, [1024 x double]* %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %p.addr = alloca double*, align 8
  %A.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %p, double** %p.addr, align 8
  store [1024 x double]* %A, [1024 x double]** %A.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %2, %3
  %conv = sitofp i32 %add to double
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load double*, double** %p.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %n.addr, align 4
  %add5 = add nsw i32 %8, %9
  %conv6 = sitofp i32 %add5 to double
  %10 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx9 = getelementptr inbounds [1024 x double], [1024 x double]* %12, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx9, i32 0, i64 %idxprom7
  store double %conv6, double* %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_cholesky(i32 %n, double* %p, [1024 x double]* %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %p.addr = alloca double*, align 8
  %A.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %p, double** %p.addr, align 8
  store [1024 x double]* %A, [1024 x double]** %A.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx = getelementptr inbounds [1024 x double], [1024 x double]* %4, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx, i32 0, i64 %idxprom
  %5 = load double, double* %arrayidx2, align 8
  %6 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %6 to double
  %mul = fmul double %5, %conv
  store double %mul, double* %x, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %8, 1
  %cmp4 = icmp sle i32 %7, %sub
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %9 = load double, double* %x, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx9 = getelementptr inbounds [1024 x double], [1024 x double]* %12, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx9, i32 0, i64 %idxprom7
  %13 = load double, double* %arrayidx10, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx13 = getelementptr inbounds [1024 x double], [1024 x double]* %16, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx13, i32 0, i64 %idxprom11
  %17 = load double, double* %arrayidx14, align 8
  %mul15 = fmul double %13, %17
  %sub16 = fsub double %9, %mul15
  store double %sub16, double* %x, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %19 = load double, double* %x, align 8
  %call = call double @sqrt(double %19) #5
  %div = fdiv double 1.000000e+00, %call
  %20 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load double*, double** %p.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %21, i64 %idxprom17
  store double %div, double* %arrayidx18, align 8
  %22 = load i32, i32* %i, align 4
  %add = add nsw i32 %22, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.52, %for.end
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp slt i32 %23, %24
  br i1 %cmp20, label %for.body.22, label %for.end.54

for.body.22:                                      ; preds = %for.cond.19
  %25 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %26 to i64
  %27 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx25 = getelementptr inbounds [1024 x double], [1024 x double]* %27, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx25, i32 0, i64 %idxprom23
  %28 = load double, double* %arrayidx26, align 8
  store double %28, double* %x, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.42, %for.body.22
  %29 = load i32, i32* %k, align 4
  %30 = load i32, i32* %i, align 4
  %sub28 = sub nsw i32 %30, 1
  %cmp29 = icmp sle i32 %29, %sub28
  br i1 %cmp29, label %for.body.31, label %for.end.44

for.body.31:                                      ; preds = %for.cond.27
  %31 = load double, double* %x, align 8
  %32 = load i32, i32* %k, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %33 to i64
  %34 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx34 = getelementptr inbounds [1024 x double], [1024 x double]* %34, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx34, i32 0, i64 %idxprom32
  %35 = load double, double* %arrayidx35, align 8
  %36 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %36 to i64
  %37 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %37 to i64
  %38 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx38 = getelementptr inbounds [1024 x double], [1024 x double]* %38, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx38, i32 0, i64 %idxprom36
  %39 = load double, double* %arrayidx39, align 8
  %mul40 = fmul double %35, %39
  %sub41 = fsub double %31, %mul40
  store double %sub41, double* %x, align 8
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.31
  %40 = load i32, i32* %k, align 4
  %inc43 = add nsw i32 %40, 1
  store i32 %inc43, i32* %k, align 4
  br label %for.cond.27

for.end.44:                                       ; preds = %for.cond.27
  %41 = load double, double* %x, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %42 to i64
  %43 = load double*, double** %p.addr, align 8
  %arrayidx46 = getelementptr inbounds double, double* %43, i64 %idxprom45
  %44 = load double, double* %arrayidx46, align 8
  %mul47 = fmul double %41, %44
  %45 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %45 to i64
  %46 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %46 to i64
  %47 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %arrayidx50 = getelementptr inbounds [1024 x double], [1024 x double]* %47, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx50, i32 0, i64 %idxprom48
  store double %mul47, double* %arrayidx51, align 8
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.44
  %48 = load i32, i32* %j, align 4
  %inc53 = add nsw i32 %48, 1
  store i32 %inc53, i32* %j, align 4
  br label %for.cond.19

for.end.54:                                       ; preds = %for.cond.19
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.54
  %49 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %49, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %n, [1024 x double]* %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %printmat = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  store [1024 x double]* %A, [1024 x double]** %A.addr, align 8
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
  %9 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
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
declare double @sqrt(double) #1

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