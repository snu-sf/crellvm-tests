; ModuleID = './SingleSource.Benchmarks.Polybench/6.linear-algebra.kernels.gemver.gemver.bc'
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
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %A = alloca [4000 x [4000 x double]]*, align 8
  %u1 = alloca [4000 x double]*, align 8
  %v1 = alloca [4000 x double]*, align 8
  %u2 = alloca [4000 x double]*, align 8
  %v2 = alloca [4000 x double]*, align 8
  %w = alloca [4000 x double]*, align 8
  %x = alloca [4000 x double]*, align 8
  %y = alloca [4000 x double]*, align 8
  %z = alloca [4000 x double]*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 4000, i32* %n, align 4
  %call = call i8* @polybench_alloc_data(i64 16000000, i32 8)
  %0 = bitcast i8* %call to [4000 x [4000 x double]]*
  store [4000 x [4000 x double]]* %0, [4000 x [4000 x double]]** %A, align 8
  %call1 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %1 = bitcast i8* %call1 to [4000 x double]*
  store [4000 x double]* %1, [4000 x double]** %u1, align 8
  %call2 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %2 = bitcast i8* %call2 to [4000 x double]*
  store [4000 x double]* %2, [4000 x double]** %v1, align 8
  %call3 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %3 = bitcast i8* %call3 to [4000 x double]*
  store [4000 x double]* %3, [4000 x double]** %u2, align 8
  %call4 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %4 = bitcast i8* %call4 to [4000 x double]*
  store [4000 x double]* %4, [4000 x double]** %v2, align 8
  %call5 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %5 = bitcast i8* %call5 to [4000 x double]*
  store [4000 x double]* %5, [4000 x double]** %w, align 8
  %call6 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %6 = bitcast i8* %call6 to [4000 x double]*
  store [4000 x double]* %6, [4000 x double]** %x, align 8
  %call7 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %7 = bitcast i8* %call7 to [4000 x double]*
  store [4000 x double]* %7, [4000 x double]** %y, align 8
  %call8 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %8 = bitcast i8* %call8 to [4000 x double]*
  store [4000 x double]* %8, [4000 x double]** %z, align 8
  %9 = load i32, i32* %n, align 4
  %10 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8
  %arraydecay = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %10, i32 0, i32 0
  %11 = load [4000 x double]*, [4000 x double]** %u1, align 8
  %arraydecay9 = getelementptr inbounds [4000 x double], [4000 x double]* %11, i32 0, i32 0
  %12 = load [4000 x double]*, [4000 x double]** %v1, align 8
  %arraydecay10 = getelementptr inbounds [4000 x double], [4000 x double]* %12, i32 0, i32 0
  %13 = load [4000 x double]*, [4000 x double]** %u2, align 8
  %arraydecay11 = getelementptr inbounds [4000 x double], [4000 x double]* %13, i32 0, i32 0
  %14 = load [4000 x double]*, [4000 x double]** %v2, align 8
  %arraydecay12 = getelementptr inbounds [4000 x double], [4000 x double]* %14, i32 0, i32 0
  %15 = load [4000 x double]*, [4000 x double]** %w, align 8
  %arraydecay13 = getelementptr inbounds [4000 x double], [4000 x double]* %15, i32 0, i32 0
  %16 = load [4000 x double]*, [4000 x double]** %x, align 8
  %arraydecay14 = getelementptr inbounds [4000 x double], [4000 x double]* %16, i32 0, i32 0
  %17 = load [4000 x double]*, [4000 x double]** %y, align 8
  %arraydecay15 = getelementptr inbounds [4000 x double], [4000 x double]* %17, i32 0, i32 0
  %18 = load [4000 x double]*, [4000 x double]** %z, align 8
  %arraydecay16 = getelementptr inbounds [4000 x double], [4000 x double]* %18, i32 0, i32 0
  call void @init_array(i32 %9, double* %alpha, double* %beta, [4000 x double]* %arraydecay, double* %arraydecay9, double* %arraydecay10, double* %arraydecay11, double* %arraydecay12, double* %arraydecay13, double* %arraydecay14, double* %arraydecay15, double* %arraydecay16)
  %19 = load i32, i32* %n, align 4
  %20 = load double, double* %alpha, align 8
  %21 = load double, double* %beta, align 8
  %22 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8
  %arraydecay17 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %22, i32 0, i32 0
  %23 = load [4000 x double]*, [4000 x double]** %u1, align 8
  %arraydecay18 = getelementptr inbounds [4000 x double], [4000 x double]* %23, i32 0, i32 0
  %24 = load [4000 x double]*, [4000 x double]** %v1, align 8
  %arraydecay19 = getelementptr inbounds [4000 x double], [4000 x double]* %24, i32 0, i32 0
  %25 = load [4000 x double]*, [4000 x double]** %u2, align 8
  %arraydecay20 = getelementptr inbounds [4000 x double], [4000 x double]* %25, i32 0, i32 0
  %26 = load [4000 x double]*, [4000 x double]** %v2, align 8
  %arraydecay21 = getelementptr inbounds [4000 x double], [4000 x double]* %26, i32 0, i32 0
  %27 = load [4000 x double]*, [4000 x double]** %w, align 8
  %arraydecay22 = getelementptr inbounds [4000 x double], [4000 x double]* %27, i32 0, i32 0
  %28 = load [4000 x double]*, [4000 x double]** %x, align 8
  %arraydecay23 = getelementptr inbounds [4000 x double], [4000 x double]* %28, i32 0, i32 0
  %29 = load [4000 x double]*, [4000 x double]** %y, align 8
  %arraydecay24 = getelementptr inbounds [4000 x double], [4000 x double]* %29, i32 0, i32 0
  %30 = load [4000 x double]*, [4000 x double]** %z, align 8
  %arraydecay25 = getelementptr inbounds [4000 x double], [4000 x double]* %30, i32 0, i32 0
  call void @kernel_gemver(i32 %19, double %20, double %21, [4000 x double]* %arraydecay17, double* %arraydecay18, double* %arraydecay19, double* %arraydecay20, double* %arraydecay21, double* %arraydecay22, double* %arraydecay23, double* %arraydecay24, double* %arraydecay25)
  %31 = load i32, i32* %n, align 4
  %32 = load [4000 x double]*, [4000 x double]** %w, align 8
  %arraydecay26 = getelementptr inbounds [4000 x double], [4000 x double]* %32, i32 0, i32 0
  call void @print_array(i32 %31, double* %arraydecay26)
  %33 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8
  %34 = bitcast [4000 x [4000 x double]]* %33 to i8*
  call void @free(i8* %34) #4
  %35 = load [4000 x double]*, [4000 x double]** %u1, align 8
  %36 = bitcast [4000 x double]* %35 to i8*
  call void @free(i8* %36) #4
  %37 = load [4000 x double]*, [4000 x double]** %v1, align 8
  %38 = bitcast [4000 x double]* %37 to i8*
  call void @free(i8* %38) #4
  %39 = load [4000 x double]*, [4000 x double]** %u2, align 8
  %40 = bitcast [4000 x double]* %39 to i8*
  call void @free(i8* %40) #4
  %41 = load [4000 x double]*, [4000 x double]** %v2, align 8
  %42 = bitcast [4000 x double]* %41 to i8*
  call void @free(i8* %42) #4
  %43 = load [4000 x double]*, [4000 x double]** %w, align 8
  %44 = bitcast [4000 x double]* %43 to i8*
  call void @free(i8* %44) #4
  %45 = load [4000 x double]*, [4000 x double]** %x, align 8
  %46 = bitcast [4000 x double]* %45 to i8*
  call void @free(i8* %46) #4
  %47 = load [4000 x double]*, [4000 x double]** %y, align 8
  %48 = bitcast [4000 x double]* %47 to i8*
  call void @free(i8* %48) #4
  %49 = load [4000 x double]*, [4000 x double]** %z, align 8
  %50 = bitcast [4000 x double]* %49 to i8*
  call void @free(i8* %50) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 %n, double* %alpha, double* %beta, [4000 x double]* %A, double* %u1, double* %v1, double* %u2, double* %v2, double* %w, double* %x, double* %y, double* %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double*, align 8
  %beta.addr = alloca double*, align 8
  %A.addr = alloca [4000 x double]*, align 8
  %u1.addr = alloca double*, align 8
  %v1.addr = alloca double*, align 8
  %u2.addr = alloca double*, align 8
  %v2.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %z.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %alpha, double** %alpha.addr, align 8
  store double* %beta, double** %beta.addr, align 8
  store [4000 x double]* %A, [4000 x double]** %A.addr, align 8
  store double* %u1, double** %u1.addr, align 8
  store double* %v1, double** %v1.addr, align 8
  store double* %u2, double** %u2.addr, align 8
  store double* %v2, double** %v2.addr, align 8
  store double* %w, double** %w.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double* %z, double** %z.addr, align 8
  %0 = load double*, double** %alpha.addr, align 8
  store double 4.353200e+04, double* %0, align 8
  %1 = load double*, double** %beta.addr, align 8
  store double 1.231300e+04, double* %1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %conv = sitofp i32 %4 to double
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load double*, double** %u1.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %add, %8
  %conv1 = sitofp i32 %div to double
  %div2 = fdiv double %conv1, 2.000000e+00
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load double*, double** %u2.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %10, i64 %idxprom3
  store double %div2, double* %arrayidx4, align 8
  %11 = load i32, i32* %i, align 4
  %add5 = add nsw i32 %11, 1
  %12 = load i32, i32* %n.addr, align 4
  %div6 = sdiv i32 %add5, %12
  %conv7 = sitofp i32 %div6 to double
  %div8 = fdiv double %conv7, 4.000000e+00
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load double*, double** %v1.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %14, i64 %idxprom9
  store double %div8, double* %arrayidx10, align 8
  %15 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %15, 1
  %16 = load i32, i32* %n.addr, align 4
  %div12 = sdiv i32 %add11, %16
  %conv13 = sitofp i32 %div12 to double
  %div14 = fdiv double %conv13, 6.000000e+00
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load double*, double** %v2.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %18, i64 %idxprom15
  store double %div14, double* %arrayidx16, align 8
  %19 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %19, 1
  %20 = load i32, i32* %n.addr, align 4
  %div18 = sdiv i32 %add17, %20
  %conv19 = sitofp i32 %div18 to double
  %div20 = fdiv double %conv19, 8.000000e+00
  %21 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load double*, double** %y.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %22, i64 %idxprom21
  store double %div20, double* %arrayidx22, align 8
  %23 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %23, 1
  %24 = load i32, i32* %n.addr, align 4
  %div24 = sdiv i32 %add23, %24
  %conv25 = sitofp i32 %div24 to double
  %div26 = fdiv double %conv25, 9.000000e+00
  %25 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load double*, double** %z.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %26, i64 %idxprom27
  store double %div26, double* %arrayidx28, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load double*, double** %x.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %28, i64 %idxprom29
  store double 0.000000e+00, double* %arrayidx30, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %29 to i64
  %30 = load double*, double** %w.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %30, i64 %idxprom31
  store double 0.000000e+00, double* %arrayidx32, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %for.body
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %n.addr, align 4
  %cmp34 = icmp slt i32 %31, %32
  br i1 %cmp34, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.33
  %33 = load i32, i32* %i, align 4
  %conv37 = sitofp i32 %33 to double
  %34 = load i32, i32* %j, align 4
  %conv38 = sitofp i32 %34 to double
  %mul = fmul double %conv37, %conv38
  %35 = load i32, i32* %n.addr, align 4
  %conv39 = sitofp i32 %35 to double
  %div40 = fdiv double %mul, %conv39
  %36 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %36 to i64
  %37 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %37 to i64
  %38 = load [4000 x double]*, [4000 x double]** %A.addr, align 8
  %arrayidx43 = getelementptr inbounds [4000 x double], [4000 x double]* %38, i64 %idxprom42
  %arrayidx44 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx43, i32 0, i64 %idxprom41
  store double %div40, double* %arrayidx44, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.36
  %39 = load i32, i32* %j, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end
  %40 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %40, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_gemver(i32 %n, double %alpha, double %beta, [4000 x double]* %A, double* %u1, double* %v1, double* %u2, double* %v2, double* %w, double* %x, double* %y, double* %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %A.addr = alloca [4000 x double]*, align 8
  %u1.addr = alloca double*, align 8
  %v1.addr = alloca double*, align 8
  %u2.addr = alloca double*, align 8
  %v2.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %z.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double %alpha, double* %alpha.addr, align 8
  store double %beta, double* %beta.addr, align 8
  store [4000 x double]* %A, [4000 x double]** %A.addr, align 8
  store double* %u1, double** %u1.addr, align 8
  store double* %v1, double** %v1.addr, align 8
  store double* %u2, double** %u2.addr, align 8
  store double* %v2, double** %v2.addr, align 8
  store double* %w, double** %w.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double* %z, double** %z.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load [4000 x double]*, [4000 x double]** %A.addr, align 8
  %arrayidx = getelementptr inbounds [4000 x double], [4000 x double]* %6, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx, i32 0, i64 %idxprom
  %7 = load double, double* %arrayidx5, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load double*, double** %u1.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %9, i64 %idxprom6
  %10 = load double, double* %arrayidx7, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load double*, double** %v1.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %12, i64 %idxprom8
  %13 = load double, double* %arrayidx9, align 8
  %mul = fmul double %10, %13
  %add = fadd double %7, %mul
  %14 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load double*, double** %u2.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %15, i64 %idxprom10
  %16 = load double, double* %arrayidx11, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load double*, double** %v2.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %18, i64 %idxprom12
  %19 = load double, double* %arrayidx13, align 8
  %mul14 = fmul double %16, %19
  %add15 = fadd double %add, %mul14
  %20 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load [4000 x double]*, [4000 x double]** %A.addr, align 8
  %arrayidx18 = getelementptr inbounds [4000 x double], [4000 x double]* %22, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx18, i32 0, i64 %idxprom16
  store double %add15, double* %arrayidx19, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %24, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.45, %for.end.22
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n.addr, align 4
  %cmp24 = icmp slt i32 %25, %26
  br i1 %cmp24, label %for.body.25, label %for.end.47

for.body.25:                                      ; preds = %for.cond.23
  store i32 0, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.42, %for.body.25
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %n.addr, align 4
  %cmp27 = icmp slt i32 %27, %28
  br i1 %cmp27, label %for.body.28, label %for.end.44

for.body.28:                                      ; preds = %for.cond.26
  %29 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %29 to i64
  %30 = load double*, double** %x.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %30, i64 %idxprom29
  %31 = load double, double* %arrayidx30, align 8
  %32 = load double, double* %beta.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %33 to i64
  %34 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %34 to i64
  %35 = load [4000 x double]*, [4000 x double]** %A.addr, align 8
  %arrayidx33 = getelementptr inbounds [4000 x double], [4000 x double]* %35, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx33, i32 0, i64 %idxprom31
  %36 = load double, double* %arrayidx34, align 8
  %mul35 = fmul double %32, %36
  %37 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %37 to i64
  %38 = load double*, double** %y.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %38, i64 %idxprom36
  %39 = load double, double* %arrayidx37, align 8
  %mul38 = fmul double %mul35, %39
  %add39 = fadd double %31, %mul38
  %40 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %40 to i64
  %41 = load double*, double** %x.addr, align 8
  %arrayidx41 = getelementptr inbounds double, double* %41, i64 %idxprom40
  store double %add39, double* %arrayidx41, align 8
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.28
  %42 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %42, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond.26

for.end.44:                                       ; preds = %for.cond.26
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end.44
  %43 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %43, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.23

for.end.47:                                       ; preds = %for.cond.23
  store i32 0, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.58, %for.end.47
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %44, %45
  br i1 %cmp49, label %for.body.50, label %for.end.60

for.body.50:                                      ; preds = %for.cond.48
  %46 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %46 to i64
  %47 = load double*, double** %x.addr, align 8
  %arrayidx52 = getelementptr inbounds double, double* %47, i64 %idxprom51
  %48 = load double, double* %arrayidx52, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %49 to i64
  %50 = load double*, double** %z.addr, align 8
  %arrayidx54 = getelementptr inbounds double, double* %50, i64 %idxprom53
  %51 = load double, double* %arrayidx54, align 8
  %add55 = fadd double %48, %51
  %52 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %52 to i64
  %53 = load double*, double** %x.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %53, i64 %idxprom56
  store double %add55, double* %arrayidx57, align 8
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.50
  %54 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %54, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond.48

for.end.60:                                       ; preds = %for.cond.48
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.83, %for.end.60
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %n.addr, align 4
  %cmp62 = icmp slt i32 %55, %56
  br i1 %cmp62, label %for.body.63, label %for.end.85

for.body.63:                                      ; preds = %for.cond.61
  store i32 0, i32* %j, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.80, %for.body.63
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %n.addr, align 4
  %cmp65 = icmp slt i32 %57, %58
  br i1 %cmp65, label %for.body.66, label %for.end.82

for.body.66:                                      ; preds = %for.cond.64
  %59 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %59 to i64
  %60 = load double*, double** %w.addr, align 8
  %arrayidx68 = getelementptr inbounds double, double* %60, i64 %idxprom67
  %61 = load double, double* %arrayidx68, align 8
  %62 = load double, double* %alpha.addr, align 8
  %63 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %63 to i64
  %64 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %64 to i64
  %65 = load [4000 x double]*, [4000 x double]** %A.addr, align 8
  %arrayidx71 = getelementptr inbounds [4000 x double], [4000 x double]* %65, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx71, i32 0, i64 %idxprom69
  %66 = load double, double* %arrayidx72, align 8
  %mul73 = fmul double %62, %66
  %67 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %67 to i64
  %68 = load double*, double** %x.addr, align 8
  %arrayidx75 = getelementptr inbounds double, double* %68, i64 %idxprom74
  %69 = load double, double* %arrayidx75, align 8
  %mul76 = fmul double %mul73, %69
  %add77 = fadd double %61, %mul76
  %70 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %70 to i64
  %71 = load double*, double** %w.addr, align 8
  %arrayidx79 = getelementptr inbounds double, double* %71, i64 %idxprom78
  store double %add77, double* %arrayidx79, align 8
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.66
  %72 = load i32, i32* %j, align 4
  %inc81 = add nsw i32 %72, 1
  store i32 %inc81, i32* %j, align 4
  br label %for.cond.64

for.end.82:                                       ; preds = %for.cond.64
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.end.82
  %73 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %73, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond.61

for.end.85:                                       ; preds = %for.cond.61
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %n, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %w.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %w, double** %w.addr, align 8
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
  %4 = load double*, double** %w.addr, align 8
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
