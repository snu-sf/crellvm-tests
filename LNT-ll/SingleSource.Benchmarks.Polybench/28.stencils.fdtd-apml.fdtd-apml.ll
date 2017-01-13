; ModuleID = './SingleSource.Benchmarks.Polybench/28.stencils.fdtd-apml.fdtd-apml.bc'
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
  %cz = alloca i32, align 4
  %cym = alloca i32, align 4
  %cxm = alloca i32, align 4
  %mui = alloca double, align 8
  %ch = alloca double, align 8
  %Ax = alloca [65 x [65 x double]]*, align 8
  %Ry = alloca [65 x [65 x double]]*, align 8
  %clf = alloca [65 x [65 x double]]*, align 8
  %tmp = alloca [65 x [65 x double]]*, align 8
  %Bza = alloca [65 x [65 x [65 x double]]]*, align 8
  %Ex = alloca [65 x [65 x [65 x double]]]*, align 8
  %Ey = alloca [65 x [65 x [65 x double]]]*, align 8
  %Hz = alloca [65 x [65 x [65 x double]]]*, align 8
  %czm = alloca [65 x double]*, align 8
  %czp = alloca [65 x double]*, align 8
  %cxmh = alloca [65 x double]*, align 8
  %cxph = alloca [65 x double]*, align 8
  %cymh = alloca [65 x double]*, align 8
  %cyph = alloca [65 x double]*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 64, i32* %cz, align 4
  store i32 64, i32* %cym, align 4
  store i32 64, i32* %cxm, align 4
  %call = call i8* @polybench_alloc_data(i64 4225, i32 8)
  %0 = bitcast i8* %call to [65 x [65 x double]]*
  store [65 x [65 x double]]* %0, [65 x [65 x double]]** %Ax, align 8
  %call1 = call i8* @polybench_alloc_data(i64 4225, i32 8)
  %1 = bitcast i8* %call1 to [65 x [65 x double]]*
  store [65 x [65 x double]]* %1, [65 x [65 x double]]** %Ry, align 8
  %call2 = call i8* @polybench_alloc_data(i64 4225, i32 8)
  %2 = bitcast i8* %call2 to [65 x [65 x double]]*
  store [65 x [65 x double]]* %2, [65 x [65 x double]]** %clf, align 8
  %call3 = call i8* @polybench_alloc_data(i64 4225, i32 8)
  %3 = bitcast i8* %call3 to [65 x [65 x double]]*
  store [65 x [65 x double]]* %3, [65 x [65 x double]]** %tmp, align 8
  %call5 = call i8* @polybench_alloc_data(i64 274625, i32 8)
  %4 = bitcast i8* %call5 to [65 x [65 x [65 x double]]]*
  store [65 x [65 x [65 x double]]]* %4, [65 x [65 x [65 x double]]]** %Bza, align 8
  %call7 = call i8* @polybench_alloc_data(i64 274625, i32 8)
  %5 = bitcast i8* %call7 to [65 x [65 x [65 x double]]]*
  store [65 x [65 x [65 x double]]]* %5, [65 x [65 x [65 x double]]]** %Ex, align 8
  %call9 = call i8* @polybench_alloc_data(i64 274625, i32 8)
  %6 = bitcast i8* %call9 to [65 x [65 x [65 x double]]]*
  store [65 x [65 x [65 x double]]]* %6, [65 x [65 x [65 x double]]]** %Ey, align 8
  %call11 = call i8* @polybench_alloc_data(i64 274625, i32 8)
  %7 = bitcast i8* %call11 to [65 x [65 x [65 x double]]]*
  store [65 x [65 x [65 x double]]]* %7, [65 x [65 x [65 x double]]]** %Hz, align 8
  %call13 = call i8* @polybench_alloc_data(i64 65, i32 8)
  %8 = bitcast i8* %call13 to [65 x double]*
  store [65 x double]* %8, [65 x double]** %czm, align 8
  %call15 = call i8* @polybench_alloc_data(i64 65, i32 8)
  %9 = bitcast i8* %call15 to [65 x double]*
  store [65 x double]* %9, [65 x double]** %czp, align 8
  %call17 = call i8* @polybench_alloc_data(i64 65, i32 8)
  %10 = bitcast i8* %call17 to [65 x double]*
  store [65 x double]* %10, [65 x double]** %cxmh, align 8
  %call19 = call i8* @polybench_alloc_data(i64 65, i32 8)
  %11 = bitcast i8* %call19 to [65 x double]*
  store [65 x double]* %11, [65 x double]** %cxph, align 8
  %call21 = call i8* @polybench_alloc_data(i64 65, i32 8)
  %12 = bitcast i8* %call21 to [65 x double]*
  store [65 x double]* %12, [65 x double]** %cymh, align 8
  %call23 = call i8* @polybench_alloc_data(i64 65, i32 8)
  %13 = bitcast i8* %call23 to [65 x double]*
  store [65 x double]* %13, [65 x double]** %cyph, align 8
  %14 = load i32, i32* %cz, align 4
  %15 = load i32, i32* %cxm, align 4
  %16 = load i32, i32* %cym, align 4
  %17 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ax, align 8
  %arraydecay = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %17, i32 0, i32 0
  %18 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ry, align 8
  %arraydecay24 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %18, i32 0, i32 0
  %19 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Ex, align 8
  %arraydecay25 = getelementptr inbounds [65 x [65 x [65 x double]]], [65 x [65 x [65 x double]]]* %19, i32 0, i32 0
  %20 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Ey, align 8
  %arraydecay26 = getelementptr inbounds [65 x [65 x [65 x double]]], [65 x [65 x [65 x double]]]* %20, i32 0, i32 0
  %21 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Hz, align 8
  %arraydecay27 = getelementptr inbounds [65 x [65 x [65 x double]]], [65 x [65 x [65 x double]]]* %21, i32 0, i32 0
  %22 = load [65 x double]*, [65 x double]** %czm, align 8
  %arraydecay28 = getelementptr inbounds [65 x double], [65 x double]* %22, i32 0, i32 0
  %23 = load [65 x double]*, [65 x double]** %czp, align 8
  %arraydecay29 = getelementptr inbounds [65 x double], [65 x double]* %23, i32 0, i32 0
  %24 = load [65 x double]*, [65 x double]** %cxmh, align 8
  %arraydecay30 = getelementptr inbounds [65 x double], [65 x double]* %24, i32 0, i32 0
  %25 = load [65 x double]*, [65 x double]** %cxph, align 8
  %arraydecay31 = getelementptr inbounds [65 x double], [65 x double]* %25, i32 0, i32 0
  %26 = load [65 x double]*, [65 x double]** %cymh, align 8
  %arraydecay32 = getelementptr inbounds [65 x double], [65 x double]* %26, i32 0, i32 0
  %27 = load [65 x double]*, [65 x double]** %cyph, align 8
  %arraydecay33 = getelementptr inbounds [65 x double], [65 x double]* %27, i32 0, i32 0
  call void @init_array(i32 %14, i32 %15, i32 %16, double* %mui, double* %ch, [65 x double]* %arraydecay, [65 x double]* %arraydecay24, [65 x [65 x double]]* %arraydecay25, [65 x [65 x double]]* %arraydecay26, [65 x [65 x double]]* %arraydecay27, double* %arraydecay28, double* %arraydecay29, double* %arraydecay30, double* %arraydecay31, double* %arraydecay32, double* %arraydecay33)
  %28 = load i32, i32* %cz, align 4
  %29 = load i32, i32* %cxm, align 4
  %30 = load i32, i32* %cym, align 4
  %31 = load double, double* %mui, align 8
  %32 = load double, double* %ch, align 8
  %33 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ax, align 8
  %arraydecay34 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %33, i32 0, i32 0
  %34 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ry, align 8
  %arraydecay35 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %34, i32 0, i32 0
  %35 = load [65 x [65 x double]]*, [65 x [65 x double]]** %clf, align 8
  %arraydecay36 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %35, i32 0, i32 0
  %36 = load [65 x [65 x double]]*, [65 x [65 x double]]** %tmp, align 8
  %arraydecay37 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %36, i32 0, i32 0
  %37 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Bza, align 8
  %arraydecay38 = getelementptr inbounds [65 x [65 x [65 x double]]], [65 x [65 x [65 x double]]]* %37, i32 0, i32 0
  %38 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Ex, align 8
  %arraydecay39 = getelementptr inbounds [65 x [65 x [65 x double]]], [65 x [65 x [65 x double]]]* %38, i32 0, i32 0
  %39 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Ey, align 8
  %arraydecay40 = getelementptr inbounds [65 x [65 x [65 x double]]], [65 x [65 x [65 x double]]]* %39, i32 0, i32 0
  %40 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Hz, align 8
  %arraydecay41 = getelementptr inbounds [65 x [65 x [65 x double]]], [65 x [65 x [65 x double]]]* %40, i32 0, i32 0
  %41 = load [65 x double]*, [65 x double]** %czm, align 8
  %arraydecay42 = getelementptr inbounds [65 x double], [65 x double]* %41, i32 0, i32 0
  %42 = load [65 x double]*, [65 x double]** %czp, align 8
  %arraydecay43 = getelementptr inbounds [65 x double], [65 x double]* %42, i32 0, i32 0
  %43 = load [65 x double]*, [65 x double]** %cxmh, align 8
  %arraydecay44 = getelementptr inbounds [65 x double], [65 x double]* %43, i32 0, i32 0
  %44 = load [65 x double]*, [65 x double]** %cxph, align 8
  %arraydecay45 = getelementptr inbounds [65 x double], [65 x double]* %44, i32 0, i32 0
  %45 = load [65 x double]*, [65 x double]** %cymh, align 8
  %arraydecay46 = getelementptr inbounds [65 x double], [65 x double]* %45, i32 0, i32 0
  %46 = load [65 x double]*, [65 x double]** %cyph, align 8
  %arraydecay47 = getelementptr inbounds [65 x double], [65 x double]* %46, i32 0, i32 0
  call void @kernel_fdtd_apml(i32 %28, i32 %29, i32 %30, double %31, double %32, [65 x double]* %arraydecay34, [65 x double]* %arraydecay35, [65 x double]* %arraydecay36, [65 x double]* %arraydecay37, [65 x [65 x double]]* %arraydecay38, [65 x [65 x double]]* %arraydecay39, [65 x [65 x double]]* %arraydecay40, [65 x [65 x double]]* %arraydecay41, double* %arraydecay42, double* %arraydecay43, double* %arraydecay44, double* %arraydecay45, double* %arraydecay46, double* %arraydecay47)
  %47 = load i32, i32* %cz, align 4
  %48 = load i32, i32* %cxm, align 4
  %49 = load i32, i32* %cym, align 4
  %50 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Bza, align 8
  %arraydecay48 = getelementptr inbounds [65 x [65 x [65 x double]]], [65 x [65 x [65 x double]]]* %50, i32 0, i32 0
  %51 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Ex, align 8
  %arraydecay49 = getelementptr inbounds [65 x [65 x [65 x double]]], [65 x [65 x [65 x double]]]* %51, i32 0, i32 0
  %52 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Ey, align 8
  %arraydecay50 = getelementptr inbounds [65 x [65 x [65 x double]]], [65 x [65 x [65 x double]]]* %52, i32 0, i32 0
  %53 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Hz, align 8
  %arraydecay51 = getelementptr inbounds [65 x [65 x [65 x double]]], [65 x [65 x [65 x double]]]* %53, i32 0, i32 0
  call void @print_array(i32 %47, i32 %48, i32 %49, [65 x [65 x double]]* %arraydecay48, [65 x [65 x double]]* %arraydecay49, [65 x [65 x double]]* %arraydecay50, [65 x [65 x double]]* %arraydecay51)
  %54 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ax, align 8
  %55 = bitcast [65 x [65 x double]]* %54 to i8*
  call void @free(i8* %55) #4
  %56 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ry, align 8
  %57 = bitcast [65 x [65 x double]]* %56 to i8*
  call void @free(i8* %57) #4
  %58 = load [65 x [65 x double]]*, [65 x [65 x double]]** %clf, align 8
  %59 = bitcast [65 x [65 x double]]* %58 to i8*
  call void @free(i8* %59) #4
  %60 = load [65 x [65 x double]]*, [65 x [65 x double]]** %tmp, align 8
  %61 = bitcast [65 x [65 x double]]* %60 to i8*
  call void @free(i8* %61) #4
  %62 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Bza, align 8
  %63 = bitcast [65 x [65 x [65 x double]]]* %62 to i8*
  call void @free(i8* %63) #4
  %64 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Ex, align 8
  %65 = bitcast [65 x [65 x [65 x double]]]* %64 to i8*
  call void @free(i8* %65) #4
  %66 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Ey, align 8
  %67 = bitcast [65 x [65 x [65 x double]]]* %66 to i8*
  call void @free(i8* %67) #4
  %68 = load [65 x [65 x [65 x double]]]*, [65 x [65 x [65 x double]]]** %Hz, align 8
  %69 = bitcast [65 x [65 x [65 x double]]]* %68 to i8*
  call void @free(i8* %69) #4
  %70 = load [65 x double]*, [65 x double]** %czm, align 8
  %71 = bitcast [65 x double]* %70 to i8*
  call void @free(i8* %71) #4
  %72 = load [65 x double]*, [65 x double]** %czp, align 8
  %73 = bitcast [65 x double]* %72 to i8*
  call void @free(i8* %73) #4
  %74 = load [65 x double]*, [65 x double]** %cxmh, align 8
  %75 = bitcast [65 x double]* %74 to i8*
  call void @free(i8* %75) #4
  %76 = load [65 x double]*, [65 x double]** %cxph, align 8
  %77 = bitcast [65 x double]* %76 to i8*
  call void @free(i8* %77) #4
  %78 = load [65 x double]*, [65 x double]** %cymh, align 8
  %79 = bitcast [65 x double]* %78 to i8*
  call void @free(i8* %79) #4
  %80 = load [65 x double]*, [65 x double]** %cyph, align 8
  %81 = bitcast [65 x double]* %80 to i8*
  call void @free(i8* %81) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 %cz, i32 %cxm, i32 %cym, double* %mui, double* %ch, [65 x double]* %Ax, [65 x double]* %Ry, [65 x [65 x double]]* %Ex, [65 x [65 x double]]* %Ey, [65 x [65 x double]]* %Hz, double* %czm, double* %czp, double* %cxmh, double* %cxph, double* %cymh, double* %cyph) #0 {
entry:
  %cz.addr = alloca i32, align 4
  %cxm.addr = alloca i32, align 4
  %cym.addr = alloca i32, align 4
  %mui.addr = alloca double*, align 8
  %ch.addr = alloca double*, align 8
  %Ax.addr = alloca [65 x double]*, align 8
  %Ry.addr = alloca [65 x double]*, align 8
  %Ex.addr = alloca [65 x [65 x double]]*, align 8
  %Ey.addr = alloca [65 x [65 x double]]*, align 8
  %Hz.addr = alloca [65 x [65 x double]]*, align 8
  %czm.addr = alloca double*, align 8
  %czp.addr = alloca double*, align 8
  %cxmh.addr = alloca double*, align 8
  %cxph.addr = alloca double*, align 8
  %cymh.addr = alloca double*, align 8
  %cyph.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %cz, i32* %cz.addr, align 4
  store i32 %cxm, i32* %cxm.addr, align 4
  store i32 %cym, i32* %cym.addr, align 4
  store double* %mui, double** %mui.addr, align 8
  store double* %ch, double** %ch.addr, align 8
  store [65 x double]* %Ax, [65 x double]** %Ax.addr, align 8
  store [65 x double]* %Ry, [65 x double]** %Ry.addr, align 8
  store [65 x [65 x double]]* %Ex, [65 x [65 x double]]** %Ex.addr, align 8
  store [65 x [65 x double]]* %Ey, [65 x [65 x double]]** %Ey.addr, align 8
  store [65 x [65 x double]]* %Hz, [65 x [65 x double]]** %Hz.addr, align 8
  store double* %czm, double** %czm.addr, align 8
  store double* %czp, double** %czp.addr, align 8
  store double* %cxmh, double** %cxmh.addr, align 8
  store double* %cxph, double** %cxph.addr, align 8
  store double* %cymh, double** %cymh.addr, align 8
  store double* %cyph, double** %cyph.addr, align 8
  %0 = load double*, double** %mui.addr, align 8
  store double 2.341000e+03, double* %0, align 8
  %1 = load double*, double** %ch.addr, align 8
  store double 4.200000e+01, double* %1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %cz.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %conv = sitofp i32 %4 to double
  %add = fadd double %conv, 1.000000e+00
  %5 = load i32, i32* %cxm.addr, align 4
  %conv1 = sitofp i32 %5 to double
  %div = fdiv double %add, %conv1
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load double*, double** %czm.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %7, i64 %idxprom
  store double %div, double* %arrayidx, align 8
  %8 = load i32, i32* %i, align 4
  %conv2 = sitofp i32 %8 to double
  %add3 = fadd double %conv2, 2.000000e+00
  %9 = load i32, i32* %cxm.addr, align 4
  %conv4 = sitofp i32 %9 to double
  %div5 = fdiv double %add3, %conv4
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load double*, double** %czp.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %11, i64 %idxprom6
  store double %div5, double* %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.24, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %cxm.addr, align 4
  %cmp9 = icmp sle i32 %13, %14
  br i1 %cmp9, label %for.body.11, label %for.end.26

for.body.11:                                      ; preds = %for.cond.8
  %15 = load i32, i32* %i, align 4
  %conv12 = sitofp i32 %15 to double
  %add13 = fadd double %conv12, 3.000000e+00
  %16 = load i32, i32* %cxm.addr, align 4
  %conv14 = sitofp i32 %16 to double
  %div15 = fdiv double %add13, %conv14
  %17 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load double*, double** %cxmh.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %18, i64 %idxprom16
  store double %div15, double* %arrayidx17, align 8
  %19 = load i32, i32* %i, align 4
  %conv18 = sitofp i32 %19 to double
  %add19 = fadd double %conv18, 4.000000e+00
  %20 = load i32, i32* %cxm.addr, align 4
  %conv20 = sitofp i32 %20 to double
  %div21 = fdiv double %add19, %conv20
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load double*, double** %cxph.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %22, i64 %idxprom22
  store double %div21, double* %arrayidx23, align 8
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.11
  %23 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %23, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.8

for.end.26:                                       ; preds = %for.cond.8
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.43, %for.end.26
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %cym.addr, align 4
  %cmp28 = icmp sle i32 %24, %25
  br i1 %cmp28, label %for.body.30, label %for.end.45

for.body.30:                                      ; preds = %for.cond.27
  %26 = load i32, i32* %i, align 4
  %conv31 = sitofp i32 %26 to double
  %add32 = fadd double %conv31, 5.000000e+00
  %27 = load i32, i32* %cxm.addr, align 4
  %conv33 = sitofp i32 %27 to double
  %div34 = fdiv double %add32, %conv33
  %28 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %28 to i64
  %29 = load double*, double** %cymh.addr, align 8
  %arrayidx36 = getelementptr inbounds double, double* %29, i64 %idxprom35
  store double %div34, double* %arrayidx36, align 8
  %30 = load i32, i32* %i, align 4
  %conv37 = sitofp i32 %30 to double
  %add38 = fadd double %conv37, 6.000000e+00
  %31 = load i32, i32* %cxm.addr, align 4
  %conv39 = sitofp i32 %31 to double
  %div40 = fdiv double %add38, %conv39
  %32 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %32 to i64
  %33 = load double*, double** %cyph.addr, align 8
  %arrayidx42 = getelementptr inbounds double, double* %33, i64 %idxprom41
  store double %div40, double* %arrayidx42, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.30
  %34 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.27

for.end.45:                                       ; preds = %for.cond.27
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.130, %for.end.45
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %cz.addr, align 4
  %cmp47 = icmp sle i32 %35, %36
  br i1 %cmp47, label %for.body.49, label %for.end.132

for.body.49:                                      ; preds = %for.cond.46
  store i32 0, i32* %j, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.127, %for.body.49
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %cym.addr, align 4
  %cmp51 = icmp sle i32 %37, %38
  br i1 %cmp51, label %for.body.53, label %for.end.129

for.body.53:                                      ; preds = %for.cond.50
  %39 = load i32, i32* %i, align 4
  %conv54 = sitofp i32 %39 to double
  %40 = load i32, i32* %j, align 4
  %add55 = add nsw i32 %40, 1
  %conv56 = sitofp i32 %add55 to double
  %mul = fmul double %conv54, %conv56
  %add57 = fadd double %mul, 1.000000e+01
  %41 = load i32, i32* %cym.addr, align 4
  %conv58 = sitofp i32 %41 to double
  %div59 = fdiv double %add57, %conv58
  %42 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %42 to i64
  %43 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %43 to i64
  %44 = load [65 x double]*, [65 x double]** %Ry.addr, align 8
  %arrayidx62 = getelementptr inbounds [65 x double], [65 x double]* %44, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx62, i32 0, i64 %idxprom60
  store double %div59, double* %arrayidx63, align 8
  %45 = load i32, i32* %i, align 4
  %conv64 = sitofp i32 %45 to double
  %46 = load i32, i32* %j, align 4
  %add65 = add nsw i32 %46, 2
  %conv66 = sitofp i32 %add65 to double
  %mul67 = fmul double %conv64, %conv66
  %add68 = fadd double %mul67, 1.100000e+01
  %47 = load i32, i32* %cym.addr, align 4
  %conv69 = sitofp i32 %47 to double
  %div70 = fdiv double %add68, %conv69
  %48 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %48 to i64
  %49 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %49 to i64
  %50 = load [65 x double]*, [65 x double]** %Ax.addr, align 8
  %arrayidx73 = getelementptr inbounds [65 x double], [65 x double]* %50, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx73, i32 0, i64 %idxprom71
  store double %div70, double* %arrayidx74, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.124, %for.body.53
  %51 = load i32, i32* %k, align 4
  %52 = load i32, i32* %cxm.addr, align 4
  %cmp76 = icmp sle i32 %51, %52
  br i1 %cmp76, label %for.body.78, label %for.end.126

for.body.78:                                      ; preds = %for.cond.75
  %53 = load i32, i32* %i, align 4
  %conv79 = sitofp i32 %53 to double
  %54 = load i32, i32* %j, align 4
  %add80 = add nsw i32 %54, 3
  %conv81 = sitofp i32 %add80 to double
  %mul82 = fmul double %conv79, %conv81
  %55 = load i32, i32* %k, align 4
  %conv83 = sitofp i32 %55 to double
  %add84 = fadd double %mul82, %conv83
  %add85 = fadd double %add84, 1.000000e+00
  %56 = load i32, i32* %cxm.addr, align 4
  %conv86 = sitofp i32 %56 to double
  %div87 = fdiv double %add85, %conv86
  %57 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %57 to i64
  %58 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %58 to i64
  %59 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %59 to i64
  %60 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ex.addr, align 8
  %arrayidx91 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %60, i64 %idxprom90
  %arrayidx92 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx91, i32 0, i64 %idxprom89
  %arrayidx93 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx92, i32 0, i64 %idxprom88
  store double %div87, double* %arrayidx93, align 8
  %61 = load i32, i32* %i, align 4
  %conv94 = sitofp i32 %61 to double
  %62 = load i32, i32* %j, align 4
  %add95 = add nsw i32 %62, 4
  %conv96 = sitofp i32 %add95 to double
  %mul97 = fmul double %conv94, %conv96
  %63 = load i32, i32* %k, align 4
  %conv98 = sitofp i32 %63 to double
  %add99 = fadd double %mul97, %conv98
  %add100 = fadd double %add99, 2.000000e+00
  %64 = load i32, i32* %cym.addr, align 4
  %conv101 = sitofp i32 %64 to double
  %div102 = fdiv double %add100, %conv101
  %65 = load i32, i32* %k, align 4
  %idxprom103 = sext i32 %65 to i64
  %66 = load i32, i32* %j, align 4
  %idxprom104 = sext i32 %66 to i64
  %67 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %67 to i64
  %68 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ey.addr, align 8
  %arrayidx106 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %68, i64 %idxprom105
  %arrayidx107 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx106, i32 0, i64 %idxprom104
  %arrayidx108 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx107, i32 0, i64 %idxprom103
  store double %div102, double* %arrayidx108, align 8
  %69 = load i32, i32* %i, align 4
  %conv109 = sitofp i32 %69 to double
  %70 = load i32, i32* %j, align 4
  %add110 = add nsw i32 %70, 5
  %conv111 = sitofp i32 %add110 to double
  %mul112 = fmul double %conv109, %conv111
  %71 = load i32, i32* %k, align 4
  %conv113 = sitofp i32 %71 to double
  %add114 = fadd double %mul112, %conv113
  %add115 = fadd double %add114, 3.000000e+00
  %72 = load i32, i32* %cz.addr, align 4
  %conv116 = sitofp i32 %72 to double
  %div117 = fdiv double %add115, %conv116
  %73 = load i32, i32* %k, align 4
  %idxprom118 = sext i32 %73 to i64
  %74 = load i32, i32* %j, align 4
  %idxprom119 = sext i32 %74 to i64
  %75 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %75 to i64
  %76 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Hz.addr, align 8
  %arrayidx121 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %76, i64 %idxprom120
  %arrayidx122 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx121, i32 0, i64 %idxprom119
  %arrayidx123 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx122, i32 0, i64 %idxprom118
  store double %div117, double* %arrayidx123, align 8
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.78
  %77 = load i32, i32* %k, align 4
  %inc125 = add nsw i32 %77, 1
  store i32 %inc125, i32* %k, align 4
  br label %for.cond.75

for.end.126:                                      ; preds = %for.cond.75
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.end.126
  %78 = load i32, i32* %j, align 4
  %inc128 = add nsw i32 %78, 1
  store i32 %inc128, i32* %j, align 4
  br label %for.cond.50

for.end.129:                                      ; preds = %for.cond.50
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.end.129
  %79 = load i32, i32* %i, align 4
  %inc131 = add nsw i32 %79, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond.46

for.end.132:                                      ; preds = %for.cond.46
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kernel_fdtd_apml(i32 %cz, i32 %cxm, i32 %cym, double %mui, double %ch, [65 x double]* %Ax, [65 x double]* %Ry, [65 x double]* %clf, [65 x double]* %tmp, [65 x [65 x double]]* %Bza, [65 x [65 x double]]* %Ex, [65 x [65 x double]]* %Ey, [65 x [65 x double]]* %Hz, double* %czm, double* %czp, double* %cxmh, double* %cxph, double* %cymh, double* %cyph) #0 {
entry:
  %cz.addr = alloca i32, align 4
  %cxm.addr = alloca i32, align 4
  %cym.addr = alloca i32, align 4
  %mui.addr = alloca double, align 8
  %ch.addr = alloca double, align 8
  %Ax.addr = alloca [65 x double]*, align 8
  %Ry.addr = alloca [65 x double]*, align 8
  %clf.addr = alloca [65 x double]*, align 8
  %tmp.addr = alloca [65 x double]*, align 8
  %Bza.addr = alloca [65 x [65 x double]]*, align 8
  %Ex.addr = alloca [65 x [65 x double]]*, align 8
  %Ey.addr = alloca [65 x [65 x double]]*, align 8
  %Hz.addr = alloca [65 x [65 x double]]*, align 8
  %czm.addr = alloca double*, align 8
  %czp.addr = alloca double*, align 8
  %cxmh.addr = alloca double*, align 8
  %cxph.addr = alloca double*, align 8
  %cymh.addr = alloca double*, align 8
  %cyph.addr = alloca double*, align 8
  %iz = alloca i32, align 4
  %iy = alloca i32, align 4
  %ix = alloca i32, align 4
  store i32 %cz, i32* %cz.addr, align 4
  store i32 %cxm, i32* %cxm.addr, align 4
  store i32 %cym, i32* %cym.addr, align 4
  store double %mui, double* %mui.addr, align 8
  store double %ch, double* %ch.addr, align 8
  store [65 x double]* %Ax, [65 x double]** %Ax.addr, align 8
  store [65 x double]* %Ry, [65 x double]** %Ry.addr, align 8
  store [65 x double]* %clf, [65 x double]** %clf.addr, align 8
  store [65 x double]* %tmp, [65 x double]** %tmp.addr, align 8
  store [65 x [65 x double]]* %Bza, [65 x [65 x double]]** %Bza.addr, align 8
  store [65 x [65 x double]]* %Ex, [65 x [65 x double]]** %Ex.addr, align 8
  store [65 x [65 x double]]* %Ey, [65 x [65 x double]]** %Ey.addr, align 8
  store [65 x [65 x double]]* %Hz, [65 x [65 x double]]** %Hz.addr, align 8
  store double* %czm, double** %czm.addr, align 8
  store double* %czp, double** %czp.addr, align 8
  store double* %cxmh, double** %cxmh.addr, align 8
  store double* %cxph, double** %cxph.addr, align 8
  store double* %cymh, double** %cymh.addr, align 8
  store double* %cyph, double** %cyph.addr, align 8
  store i32 0, i32* %iz, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.449, %entry
  %0 = load i32, i32* %iz, align 4
  %1 = load i32, i32* %cz.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.451

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %iy, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.446, %for.body
  %2 = load i32, i32* %iy, align 4
  %3 = load i32, i32* %cym.addr, align 4
  %cmp5 = icmp slt i32 %2, %3
  br i1 %cmp5, label %for.body.6, label %for.end.448

for.body.6:                                       ; preds = %for.cond.4
  store i32 0, i32* %ix, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body.6
  %4 = load i32, i32* %ix, align 4
  %5 = load i32, i32* %cxm.addr, align 4
  %cmp8 = icmp slt i32 %4, %5
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %6 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %iy, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load i32, i32* %iz, align 4
  %idxprom11 = sext i32 %8 to i64
  %9 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ex.addr, align 8
  %arrayidx = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %9, i64 %idxprom11
  %arrayidx12 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx, i32 0, i64 %idxprom10
  %arrayidx13 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx12, i32 0, i64 %idxprom
  %10 = load double, double* %arrayidx13, align 8
  %11 = load i32, i32* %ix, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load i32, i32* %iy, align 4
  %add = add nsw i32 %12, 1
  %idxprom15 = sext i32 %add to i64
  %13 = load i32, i32* %iz, align 4
  %idxprom16 = sext i32 %13 to i64
  %14 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ex.addr, align 8
  %arrayidx17 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %14, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx17, i32 0, i64 %idxprom15
  %arrayidx19 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx18, i32 0, i64 %idxprom14
  %15 = load double, double* %arrayidx19, align 8
  %sub = fsub double %10, %15
  %16 = load i32, i32* %ix, align 4
  %add20 = add nsw i32 %16, 1
  %idxprom21 = sext i32 %add20 to i64
  %17 = load i32, i32* %iy, align 4
  %idxprom22 = sext i32 %17 to i64
  %18 = load i32, i32* %iz, align 4
  %idxprom23 = sext i32 %18 to i64
  %19 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ey.addr, align 8
  %arrayidx24 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %19, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx24, i32 0, i64 %idxprom22
  %arrayidx26 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx25, i32 0, i64 %idxprom21
  %20 = load double, double* %arrayidx26, align 8
  %add27 = fadd double %sub, %20
  %21 = load i32, i32* %ix, align 4
  %idxprom28 = sext i32 %21 to i64
  %22 = load i32, i32* %iy, align 4
  %idxprom29 = sext i32 %22 to i64
  %23 = load i32, i32* %iz, align 4
  %idxprom30 = sext i32 %23 to i64
  %24 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ey.addr, align 8
  %arrayidx31 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %24, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx31, i32 0, i64 %idxprom29
  %arrayidx33 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx32, i32 0, i64 %idxprom28
  %25 = load double, double* %arrayidx33, align 8
  %sub34 = fsub double %add27, %25
  %26 = load i32, i32* %iy, align 4
  %idxprom35 = sext i32 %26 to i64
  %27 = load i32, i32* %iz, align 4
  %idxprom36 = sext i32 %27 to i64
  %28 = load [65 x double]*, [65 x double]** %clf.addr, align 8
  %arrayidx37 = getelementptr inbounds [65 x double], [65 x double]* %28, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx37, i32 0, i64 %idxprom35
  store double %sub34, double* %arrayidx38, align 8
  %29 = load i32, i32* %iy, align 4
  %idxprom39 = sext i32 %29 to i64
  %30 = load double*, double** %cymh.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %30, i64 %idxprom39
  %31 = load double, double* %arrayidx40, align 8
  %32 = load i32, i32* %iy, align 4
  %idxprom41 = sext i32 %32 to i64
  %33 = load double*, double** %cyph.addr, align 8
  %arrayidx42 = getelementptr inbounds double, double* %33, i64 %idxprom41
  %34 = load double, double* %arrayidx42, align 8
  %div = fdiv double %31, %34
  %35 = load i32, i32* %ix, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load i32, i32* %iy, align 4
  %idxprom44 = sext i32 %36 to i64
  %37 = load i32, i32* %iz, align 4
  %idxprom45 = sext i32 %37 to i64
  %38 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Bza.addr, align 8
  %arrayidx46 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %38, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx46, i32 0, i64 %idxprom44
  %arrayidx48 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx47, i32 0, i64 %idxprom43
  %39 = load double, double* %arrayidx48, align 8
  %mul = fmul double %div, %39
  %40 = load double, double* %ch.addr, align 8
  %41 = load i32, i32* %iy, align 4
  %idxprom49 = sext i32 %41 to i64
  %42 = load double*, double** %cyph.addr, align 8
  %arrayidx50 = getelementptr inbounds double, double* %42, i64 %idxprom49
  %43 = load double, double* %arrayidx50, align 8
  %div51 = fdiv double %40, %43
  %44 = load i32, i32* %iy, align 4
  %idxprom52 = sext i32 %44 to i64
  %45 = load i32, i32* %iz, align 4
  %idxprom53 = sext i32 %45 to i64
  %46 = load [65 x double]*, [65 x double]** %clf.addr, align 8
  %arrayidx54 = getelementptr inbounds [65 x double], [65 x double]* %46, i64 %idxprom53
  %arrayidx55 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx54, i32 0, i64 %idxprom52
  %47 = load double, double* %arrayidx55, align 8
  %mul56 = fmul double %div51, %47
  %sub57 = fsub double %mul, %mul56
  %48 = load i32, i32* %iy, align 4
  %idxprom58 = sext i32 %48 to i64
  %49 = load i32, i32* %iz, align 4
  %idxprom59 = sext i32 %49 to i64
  %50 = load [65 x double]*, [65 x double]** %tmp.addr, align 8
  %arrayidx60 = getelementptr inbounds [65 x double], [65 x double]* %50, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx60, i32 0, i64 %idxprom58
  store double %sub57, double* %arrayidx61, align 8
  %51 = load i32, i32* %ix, align 4
  %idxprom62 = sext i32 %51 to i64
  %52 = load double*, double** %cxmh.addr, align 8
  %arrayidx63 = getelementptr inbounds double, double* %52, i64 %idxprom62
  %53 = load double, double* %arrayidx63, align 8
  %54 = load i32, i32* %ix, align 4
  %idxprom64 = sext i32 %54 to i64
  %55 = load double*, double** %cxph.addr, align 8
  %arrayidx65 = getelementptr inbounds double, double* %55, i64 %idxprom64
  %56 = load double, double* %arrayidx65, align 8
  %div66 = fdiv double %53, %56
  %57 = load i32, i32* %ix, align 4
  %idxprom67 = sext i32 %57 to i64
  %58 = load i32, i32* %iy, align 4
  %idxprom68 = sext i32 %58 to i64
  %59 = load i32, i32* %iz, align 4
  %idxprom69 = sext i32 %59 to i64
  %60 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Hz.addr, align 8
  %arrayidx70 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %60, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx70, i32 0, i64 %idxprom68
  %arrayidx72 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx71, i32 0, i64 %idxprom67
  %61 = load double, double* %arrayidx72, align 8
  %mul73 = fmul double %div66, %61
  %62 = load double, double* %mui.addr, align 8
  %63 = load i32, i32* %iz, align 4
  %idxprom74 = sext i32 %63 to i64
  %64 = load double*, double** %czp.addr, align 8
  %arrayidx75 = getelementptr inbounds double, double* %64, i64 %idxprom74
  %65 = load double, double* %arrayidx75, align 8
  %mul76 = fmul double %62, %65
  %66 = load i32, i32* %ix, align 4
  %idxprom77 = sext i32 %66 to i64
  %67 = load double*, double** %cxph.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %67, i64 %idxprom77
  %68 = load double, double* %arrayidx78, align 8
  %div79 = fdiv double %mul76, %68
  %69 = load i32, i32* %iy, align 4
  %idxprom80 = sext i32 %69 to i64
  %70 = load i32, i32* %iz, align 4
  %idxprom81 = sext i32 %70 to i64
  %71 = load [65 x double]*, [65 x double]** %tmp.addr, align 8
  %arrayidx82 = getelementptr inbounds [65 x double], [65 x double]* %71, i64 %idxprom81
  %arrayidx83 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx82, i32 0, i64 %idxprom80
  %72 = load double, double* %arrayidx83, align 8
  %mul84 = fmul double %div79, %72
  %add85 = fadd double %mul73, %mul84
  %73 = load double, double* %mui.addr, align 8
  %74 = load i32, i32* %iz, align 4
  %idxprom86 = sext i32 %74 to i64
  %75 = load double*, double** %czm.addr, align 8
  %arrayidx87 = getelementptr inbounds double, double* %75, i64 %idxprom86
  %76 = load double, double* %arrayidx87, align 8
  %mul88 = fmul double %73, %76
  %77 = load i32, i32* %ix, align 4
  %idxprom89 = sext i32 %77 to i64
  %78 = load double*, double** %cxph.addr, align 8
  %arrayidx90 = getelementptr inbounds double, double* %78, i64 %idxprom89
  %79 = load double, double* %arrayidx90, align 8
  %div91 = fdiv double %mul88, %79
  %80 = load i32, i32* %ix, align 4
  %idxprom92 = sext i32 %80 to i64
  %81 = load i32, i32* %iy, align 4
  %idxprom93 = sext i32 %81 to i64
  %82 = load i32, i32* %iz, align 4
  %idxprom94 = sext i32 %82 to i64
  %83 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Bza.addr, align 8
  %arrayidx95 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %83, i64 %idxprom94
  %arrayidx96 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx95, i32 0, i64 %idxprom93
  %arrayidx97 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx96, i32 0, i64 %idxprom92
  %84 = load double, double* %arrayidx97, align 8
  %mul98 = fmul double %div91, %84
  %sub99 = fsub double %add85, %mul98
  %85 = load i32, i32* %ix, align 4
  %idxprom100 = sext i32 %85 to i64
  %86 = load i32, i32* %iy, align 4
  %idxprom101 = sext i32 %86 to i64
  %87 = load i32, i32* %iz, align 4
  %idxprom102 = sext i32 %87 to i64
  %88 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Hz.addr, align 8
  %arrayidx103 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %88, i64 %idxprom102
  %arrayidx104 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx103, i32 0, i64 %idxprom101
  %arrayidx105 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx104, i32 0, i64 %idxprom100
  store double %sub99, double* %arrayidx105, align 8
  %89 = load i32, i32* %iy, align 4
  %idxprom106 = sext i32 %89 to i64
  %90 = load i32, i32* %iz, align 4
  %idxprom107 = sext i32 %90 to i64
  %91 = load [65 x double]*, [65 x double]** %tmp.addr, align 8
  %arrayidx108 = getelementptr inbounds [65 x double], [65 x double]* %91, i64 %idxprom107
  %arrayidx109 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx108, i32 0, i64 %idxprom106
  %92 = load double, double* %arrayidx109, align 8
  %93 = load i32, i32* %ix, align 4
  %idxprom110 = sext i32 %93 to i64
  %94 = load i32, i32* %iy, align 4
  %idxprom111 = sext i32 %94 to i64
  %95 = load i32, i32* %iz, align 4
  %idxprom112 = sext i32 %95 to i64
  %96 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Bza.addr, align 8
  %arrayidx113 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %96, i64 %idxprom112
  %arrayidx114 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx113, i32 0, i64 %idxprom111
  %arrayidx115 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx114, i32 0, i64 %idxprom110
  store double %92, double* %arrayidx115, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %97 = load i32, i32* %ix, align 4
  %inc = add nsw i32 %97, 1
  store i32 %inc, i32* %ix, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %98 = load i32, i32* %cxm.addr, align 4
  %idxprom116 = sext i32 %98 to i64
  %99 = load i32, i32* %iy, align 4
  %idxprom117 = sext i32 %99 to i64
  %100 = load i32, i32* %iz, align 4
  %idxprom118 = sext i32 %100 to i64
  %101 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ex.addr, align 8
  %arrayidx119 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %101, i64 %idxprom118
  %arrayidx120 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx119, i32 0, i64 %idxprom117
  %arrayidx121 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx120, i32 0, i64 %idxprom116
  %102 = load double, double* %arrayidx121, align 8
  %103 = load i32, i32* %cxm.addr, align 4
  %idxprom122 = sext i32 %103 to i64
  %104 = load i32, i32* %iy, align 4
  %add123 = add nsw i32 %104, 1
  %idxprom124 = sext i32 %add123 to i64
  %105 = load i32, i32* %iz, align 4
  %idxprom125 = sext i32 %105 to i64
  %106 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ex.addr, align 8
  %arrayidx126 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %106, i64 %idxprom125
  %arrayidx127 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx126, i32 0, i64 %idxprom124
  %arrayidx128 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx127, i32 0, i64 %idxprom122
  %107 = load double, double* %arrayidx128, align 8
  %sub129 = fsub double %102, %107
  %108 = load i32, i32* %iy, align 4
  %idxprom130 = sext i32 %108 to i64
  %109 = load i32, i32* %iz, align 4
  %idxprom131 = sext i32 %109 to i64
  %110 = load [65 x double]*, [65 x double]** %Ry.addr, align 8
  %arrayidx132 = getelementptr inbounds [65 x double], [65 x double]* %110, i64 %idxprom131
  %arrayidx133 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx132, i32 0, i64 %idxprom130
  %111 = load double, double* %arrayidx133, align 8
  %add134 = fadd double %sub129, %111
  %112 = load i32, i32* %cxm.addr, align 4
  %idxprom135 = sext i32 %112 to i64
  %113 = load i32, i32* %iy, align 4
  %idxprom136 = sext i32 %113 to i64
  %114 = load i32, i32* %iz, align 4
  %idxprom137 = sext i32 %114 to i64
  %115 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ey.addr, align 8
  %arrayidx138 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %115, i64 %idxprom137
  %arrayidx139 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx138, i32 0, i64 %idxprom136
  %arrayidx140 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx139, i32 0, i64 %idxprom135
  %116 = load double, double* %arrayidx140, align 8
  %sub141 = fsub double %add134, %116
  %117 = load i32, i32* %iy, align 4
  %idxprom142 = sext i32 %117 to i64
  %118 = load i32, i32* %iz, align 4
  %idxprom143 = sext i32 %118 to i64
  %119 = load [65 x double]*, [65 x double]** %clf.addr, align 8
  %arrayidx144 = getelementptr inbounds [65 x double], [65 x double]* %119, i64 %idxprom143
  %arrayidx145 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx144, i32 0, i64 %idxprom142
  store double %sub141, double* %arrayidx145, align 8
  %120 = load i32, i32* %iy, align 4
  %idxprom146 = sext i32 %120 to i64
  %121 = load double*, double** %cymh.addr, align 8
  %arrayidx147 = getelementptr inbounds double, double* %121, i64 %idxprom146
  %122 = load double, double* %arrayidx147, align 8
  %123 = load i32, i32* %iy, align 4
  %idxprom148 = sext i32 %123 to i64
  %124 = load double*, double** %cyph.addr, align 8
  %arrayidx149 = getelementptr inbounds double, double* %124, i64 %idxprom148
  %125 = load double, double* %arrayidx149, align 8
  %div150 = fdiv double %122, %125
  %126 = load i32, i32* %cxm.addr, align 4
  %idxprom151 = sext i32 %126 to i64
  %127 = load i32, i32* %iy, align 4
  %idxprom152 = sext i32 %127 to i64
  %128 = load i32, i32* %iz, align 4
  %idxprom153 = sext i32 %128 to i64
  %129 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Bza.addr, align 8
  %arrayidx154 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %129, i64 %idxprom153
  %arrayidx155 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx154, i32 0, i64 %idxprom152
  %arrayidx156 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx155, i32 0, i64 %idxprom151
  %130 = load double, double* %arrayidx156, align 8
  %mul157 = fmul double %div150, %130
  %131 = load double, double* %ch.addr, align 8
  %132 = load i32, i32* %iy, align 4
  %idxprom158 = sext i32 %132 to i64
  %133 = load double*, double** %cyph.addr, align 8
  %arrayidx159 = getelementptr inbounds double, double* %133, i64 %idxprom158
  %134 = load double, double* %arrayidx159, align 8
  %div160 = fdiv double %131, %134
  %135 = load i32, i32* %iy, align 4
  %idxprom161 = sext i32 %135 to i64
  %136 = load i32, i32* %iz, align 4
  %idxprom162 = sext i32 %136 to i64
  %137 = load [65 x double]*, [65 x double]** %clf.addr, align 8
  %arrayidx163 = getelementptr inbounds [65 x double], [65 x double]* %137, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx163, i32 0, i64 %idxprom161
  %138 = load double, double* %arrayidx164, align 8
  %mul165 = fmul double %div160, %138
  %sub166 = fsub double %mul157, %mul165
  %139 = load i32, i32* %iy, align 4
  %idxprom167 = sext i32 %139 to i64
  %140 = load i32, i32* %iz, align 4
  %idxprom168 = sext i32 %140 to i64
  %141 = load [65 x double]*, [65 x double]** %tmp.addr, align 8
  %arrayidx169 = getelementptr inbounds [65 x double], [65 x double]* %141, i64 %idxprom168
  %arrayidx170 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx169, i32 0, i64 %idxprom167
  store double %sub166, double* %arrayidx170, align 8
  %142 = load i32, i32* %cxm.addr, align 4
  %idxprom171 = sext i32 %142 to i64
  %143 = load double*, double** %cxmh.addr, align 8
  %arrayidx172 = getelementptr inbounds double, double* %143, i64 %idxprom171
  %144 = load double, double* %arrayidx172, align 8
  %145 = load i32, i32* %cxm.addr, align 4
  %idxprom173 = sext i32 %145 to i64
  %146 = load double*, double** %cxph.addr, align 8
  %arrayidx174 = getelementptr inbounds double, double* %146, i64 %idxprom173
  %147 = load double, double* %arrayidx174, align 8
  %div175 = fdiv double %144, %147
  %148 = load i32, i32* %cxm.addr, align 4
  %idxprom176 = sext i32 %148 to i64
  %149 = load i32, i32* %iy, align 4
  %idxprom177 = sext i32 %149 to i64
  %150 = load i32, i32* %iz, align 4
  %idxprom178 = sext i32 %150 to i64
  %151 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Hz.addr, align 8
  %arrayidx179 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %151, i64 %idxprom178
  %arrayidx180 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx179, i32 0, i64 %idxprom177
  %arrayidx181 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx180, i32 0, i64 %idxprom176
  %152 = load double, double* %arrayidx181, align 8
  %mul182 = fmul double %div175, %152
  %153 = load double, double* %mui.addr, align 8
  %154 = load i32, i32* %iz, align 4
  %idxprom183 = sext i32 %154 to i64
  %155 = load double*, double** %czp.addr, align 8
  %arrayidx184 = getelementptr inbounds double, double* %155, i64 %idxprom183
  %156 = load double, double* %arrayidx184, align 8
  %mul185 = fmul double %153, %156
  %157 = load i32, i32* %cxm.addr, align 4
  %idxprom186 = sext i32 %157 to i64
  %158 = load double*, double** %cxph.addr, align 8
  %arrayidx187 = getelementptr inbounds double, double* %158, i64 %idxprom186
  %159 = load double, double* %arrayidx187, align 8
  %div188 = fdiv double %mul185, %159
  %160 = load i32, i32* %iy, align 4
  %idxprom189 = sext i32 %160 to i64
  %161 = load i32, i32* %iz, align 4
  %idxprom190 = sext i32 %161 to i64
  %162 = load [65 x double]*, [65 x double]** %tmp.addr, align 8
  %arrayidx191 = getelementptr inbounds [65 x double], [65 x double]* %162, i64 %idxprom190
  %arrayidx192 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx191, i32 0, i64 %idxprom189
  %163 = load double, double* %arrayidx192, align 8
  %mul193 = fmul double %div188, %163
  %add194 = fadd double %mul182, %mul193
  %164 = load double, double* %mui.addr, align 8
  %165 = load i32, i32* %iz, align 4
  %idxprom195 = sext i32 %165 to i64
  %166 = load double*, double** %czm.addr, align 8
  %arrayidx196 = getelementptr inbounds double, double* %166, i64 %idxprom195
  %167 = load double, double* %arrayidx196, align 8
  %mul197 = fmul double %164, %167
  %168 = load i32, i32* %cxm.addr, align 4
  %idxprom198 = sext i32 %168 to i64
  %169 = load double*, double** %cxph.addr, align 8
  %arrayidx199 = getelementptr inbounds double, double* %169, i64 %idxprom198
  %170 = load double, double* %arrayidx199, align 8
  %div200 = fdiv double %mul197, %170
  %171 = load i32, i32* %cxm.addr, align 4
  %idxprom201 = sext i32 %171 to i64
  %172 = load i32, i32* %iy, align 4
  %idxprom202 = sext i32 %172 to i64
  %173 = load i32, i32* %iz, align 4
  %idxprom203 = sext i32 %173 to i64
  %174 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Bza.addr, align 8
  %arrayidx204 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %174, i64 %idxprom203
  %arrayidx205 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx204, i32 0, i64 %idxprom202
  %arrayidx206 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx205, i32 0, i64 %idxprom201
  %175 = load double, double* %arrayidx206, align 8
  %mul207 = fmul double %div200, %175
  %sub208 = fsub double %add194, %mul207
  %176 = load i32, i32* %cxm.addr, align 4
  %idxprom209 = sext i32 %176 to i64
  %177 = load i32, i32* %iy, align 4
  %idxprom210 = sext i32 %177 to i64
  %178 = load i32, i32* %iz, align 4
  %idxprom211 = sext i32 %178 to i64
  %179 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Hz.addr, align 8
  %arrayidx212 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %179, i64 %idxprom211
  %arrayidx213 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx212, i32 0, i64 %idxprom210
  %arrayidx214 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx213, i32 0, i64 %idxprom209
  store double %sub208, double* %arrayidx214, align 8
  %180 = load i32, i32* %iy, align 4
  %idxprom215 = sext i32 %180 to i64
  %181 = load i32, i32* %iz, align 4
  %idxprom216 = sext i32 %181 to i64
  %182 = load [65 x double]*, [65 x double]** %tmp.addr, align 8
  %arrayidx217 = getelementptr inbounds [65 x double], [65 x double]* %182, i64 %idxprom216
  %arrayidx218 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx217, i32 0, i64 %idxprom215
  %183 = load double, double* %arrayidx218, align 8
  %184 = load i32, i32* %cxm.addr, align 4
  %idxprom219 = sext i32 %184 to i64
  %185 = load i32, i32* %iy, align 4
  %idxprom220 = sext i32 %185 to i64
  %186 = load i32, i32* %iz, align 4
  %idxprom221 = sext i32 %186 to i64
  %187 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Bza.addr, align 8
  %arrayidx222 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %187, i64 %idxprom221
  %arrayidx223 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx222, i32 0, i64 %idxprom220
  %arrayidx224 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx223, i32 0, i64 %idxprom219
  store double %183, double* %arrayidx224, align 8
  store i32 0, i32* %ix, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.337, %for.end
  %188 = load i32, i32* %ix, align 4
  %189 = load i32, i32* %cxm.addr, align 4
  %cmp226 = icmp slt i32 %188, %189
  br i1 %cmp226, label %for.body.227, label %for.end.339

for.body.227:                                     ; preds = %for.cond.225
  %190 = load i32, i32* %ix, align 4
  %idxprom228 = sext i32 %190 to i64
  %191 = load i32, i32* %cym.addr, align 4
  %idxprom229 = sext i32 %191 to i64
  %192 = load i32, i32* %iz, align 4
  %idxprom230 = sext i32 %192 to i64
  %193 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ex.addr, align 8
  %arrayidx231 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %193, i64 %idxprom230
  %arrayidx232 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx231, i32 0, i64 %idxprom229
  %arrayidx233 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx232, i32 0, i64 %idxprom228
  %194 = load double, double* %arrayidx233, align 8
  %195 = load i32, i32* %ix, align 4
  %idxprom234 = sext i32 %195 to i64
  %196 = load i32, i32* %iz, align 4
  %idxprom235 = sext i32 %196 to i64
  %197 = load [65 x double]*, [65 x double]** %Ax.addr, align 8
  %arrayidx236 = getelementptr inbounds [65 x double], [65 x double]* %197, i64 %idxprom235
  %arrayidx237 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx236, i32 0, i64 %idxprom234
  %198 = load double, double* %arrayidx237, align 8
  %sub238 = fsub double %194, %198
  %199 = load i32, i32* %ix, align 4
  %add239 = add nsw i32 %199, 1
  %idxprom240 = sext i32 %add239 to i64
  %200 = load i32, i32* %cym.addr, align 4
  %idxprom241 = sext i32 %200 to i64
  %201 = load i32, i32* %iz, align 4
  %idxprom242 = sext i32 %201 to i64
  %202 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ey.addr, align 8
  %arrayidx243 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %202, i64 %idxprom242
  %arrayidx244 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx243, i32 0, i64 %idxprom241
  %arrayidx245 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx244, i32 0, i64 %idxprom240
  %203 = load double, double* %arrayidx245, align 8
  %add246 = fadd double %sub238, %203
  %204 = load i32, i32* %ix, align 4
  %idxprom247 = sext i32 %204 to i64
  %205 = load i32, i32* %cym.addr, align 4
  %idxprom248 = sext i32 %205 to i64
  %206 = load i32, i32* %iz, align 4
  %idxprom249 = sext i32 %206 to i64
  %207 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ey.addr, align 8
  %arrayidx250 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %207, i64 %idxprom249
  %arrayidx251 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx250, i32 0, i64 %idxprom248
  %arrayidx252 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx251, i32 0, i64 %idxprom247
  %208 = load double, double* %arrayidx252, align 8
  %sub253 = fsub double %add246, %208
  %209 = load i32, i32* %iy, align 4
  %idxprom254 = sext i32 %209 to i64
  %210 = load i32, i32* %iz, align 4
  %idxprom255 = sext i32 %210 to i64
  %211 = load [65 x double]*, [65 x double]** %clf.addr, align 8
  %arrayidx256 = getelementptr inbounds [65 x double], [65 x double]* %211, i64 %idxprom255
  %arrayidx257 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx256, i32 0, i64 %idxprom254
  store double %sub253, double* %arrayidx257, align 8
  %212 = load i32, i32* %cym.addr, align 4
  %idxprom258 = sext i32 %212 to i64
  %213 = load double*, double** %cymh.addr, align 8
  %arrayidx259 = getelementptr inbounds double, double* %213, i64 %idxprom258
  %214 = load double, double* %arrayidx259, align 8
  %215 = load i32, i32* %iy, align 4
  %idxprom260 = sext i32 %215 to i64
  %216 = load double*, double** %cyph.addr, align 8
  %arrayidx261 = getelementptr inbounds double, double* %216, i64 %idxprom260
  %217 = load double, double* %arrayidx261, align 8
  %div262 = fdiv double %214, %217
  %218 = load i32, i32* %ix, align 4
  %idxprom263 = sext i32 %218 to i64
  %219 = load i32, i32* %iy, align 4
  %idxprom264 = sext i32 %219 to i64
  %220 = load i32, i32* %iz, align 4
  %idxprom265 = sext i32 %220 to i64
  %221 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Bza.addr, align 8
  %arrayidx266 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %221, i64 %idxprom265
  %arrayidx267 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx266, i32 0, i64 %idxprom264
  %arrayidx268 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx267, i32 0, i64 %idxprom263
  %222 = load double, double* %arrayidx268, align 8
  %mul269 = fmul double %div262, %222
  %223 = load double, double* %ch.addr, align 8
  %224 = load i32, i32* %iy, align 4
  %idxprom270 = sext i32 %224 to i64
  %225 = load double*, double** %cyph.addr, align 8
  %arrayidx271 = getelementptr inbounds double, double* %225, i64 %idxprom270
  %226 = load double, double* %arrayidx271, align 8
  %div272 = fdiv double %223, %226
  %227 = load i32, i32* %iy, align 4
  %idxprom273 = sext i32 %227 to i64
  %228 = load i32, i32* %iz, align 4
  %idxprom274 = sext i32 %228 to i64
  %229 = load [65 x double]*, [65 x double]** %clf.addr, align 8
  %arrayidx275 = getelementptr inbounds [65 x double], [65 x double]* %229, i64 %idxprom274
  %arrayidx276 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx275, i32 0, i64 %idxprom273
  %230 = load double, double* %arrayidx276, align 8
  %mul277 = fmul double %div272, %230
  %sub278 = fsub double %mul269, %mul277
  %231 = load i32, i32* %iy, align 4
  %idxprom279 = sext i32 %231 to i64
  %232 = load i32, i32* %iz, align 4
  %idxprom280 = sext i32 %232 to i64
  %233 = load [65 x double]*, [65 x double]** %tmp.addr, align 8
  %arrayidx281 = getelementptr inbounds [65 x double], [65 x double]* %233, i64 %idxprom280
  %arrayidx282 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx281, i32 0, i64 %idxprom279
  store double %sub278, double* %arrayidx282, align 8
  %234 = load i32, i32* %ix, align 4
  %idxprom283 = sext i32 %234 to i64
  %235 = load double*, double** %cxmh.addr, align 8
  %arrayidx284 = getelementptr inbounds double, double* %235, i64 %idxprom283
  %236 = load double, double* %arrayidx284, align 8
  %237 = load i32, i32* %ix, align 4
  %idxprom285 = sext i32 %237 to i64
  %238 = load double*, double** %cxph.addr, align 8
  %arrayidx286 = getelementptr inbounds double, double* %238, i64 %idxprom285
  %239 = load double, double* %arrayidx286, align 8
  %div287 = fdiv double %236, %239
  %240 = load i32, i32* %ix, align 4
  %idxprom288 = sext i32 %240 to i64
  %241 = load i32, i32* %cym.addr, align 4
  %idxprom289 = sext i32 %241 to i64
  %242 = load i32, i32* %iz, align 4
  %idxprom290 = sext i32 %242 to i64
  %243 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Hz.addr, align 8
  %arrayidx291 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %243, i64 %idxprom290
  %arrayidx292 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx291, i32 0, i64 %idxprom289
  %arrayidx293 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx292, i32 0, i64 %idxprom288
  %244 = load double, double* %arrayidx293, align 8
  %mul294 = fmul double %div287, %244
  %245 = load double, double* %mui.addr, align 8
  %246 = load i32, i32* %iz, align 4
  %idxprom295 = sext i32 %246 to i64
  %247 = load double*, double** %czp.addr, align 8
  %arrayidx296 = getelementptr inbounds double, double* %247, i64 %idxprom295
  %248 = load double, double* %arrayidx296, align 8
  %mul297 = fmul double %245, %248
  %249 = load i32, i32* %ix, align 4
  %idxprom298 = sext i32 %249 to i64
  %250 = load double*, double** %cxph.addr, align 8
  %arrayidx299 = getelementptr inbounds double, double* %250, i64 %idxprom298
  %251 = load double, double* %arrayidx299, align 8
  %div300 = fdiv double %mul297, %251
  %252 = load i32, i32* %iy, align 4
  %idxprom301 = sext i32 %252 to i64
  %253 = load i32, i32* %iz, align 4
  %idxprom302 = sext i32 %253 to i64
  %254 = load [65 x double]*, [65 x double]** %tmp.addr, align 8
  %arrayidx303 = getelementptr inbounds [65 x double], [65 x double]* %254, i64 %idxprom302
  %arrayidx304 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx303, i32 0, i64 %idxprom301
  %255 = load double, double* %arrayidx304, align 8
  %mul305 = fmul double %div300, %255
  %add306 = fadd double %mul294, %mul305
  %256 = load double, double* %mui.addr, align 8
  %257 = load i32, i32* %iz, align 4
  %idxprom307 = sext i32 %257 to i64
  %258 = load double*, double** %czm.addr, align 8
  %arrayidx308 = getelementptr inbounds double, double* %258, i64 %idxprom307
  %259 = load double, double* %arrayidx308, align 8
  %mul309 = fmul double %256, %259
  %260 = load i32, i32* %ix, align 4
  %idxprom310 = sext i32 %260 to i64
  %261 = load double*, double** %cxph.addr, align 8
  %arrayidx311 = getelementptr inbounds double, double* %261, i64 %idxprom310
  %262 = load double, double* %arrayidx311, align 8
  %div312 = fdiv double %mul309, %262
  %263 = load i32, i32* %ix, align 4
  %idxprom313 = sext i32 %263 to i64
  %264 = load i32, i32* %cym.addr, align 4
  %idxprom314 = sext i32 %264 to i64
  %265 = load i32, i32* %iz, align 4
  %idxprom315 = sext i32 %265 to i64
  %266 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Bza.addr, align 8
  %arrayidx316 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %266, i64 %idxprom315
  %arrayidx317 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx316, i32 0, i64 %idxprom314
  %arrayidx318 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx317, i32 0, i64 %idxprom313
  %267 = load double, double* %arrayidx318, align 8
  %mul319 = fmul double %div312, %267
  %sub320 = fsub double %add306, %mul319
  %268 = load i32, i32* %ix, align 4
  %idxprom321 = sext i32 %268 to i64
  %269 = load i32, i32* %cym.addr, align 4
  %idxprom322 = sext i32 %269 to i64
  %270 = load i32, i32* %iz, align 4
  %idxprom323 = sext i32 %270 to i64
  %271 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Hz.addr, align 8
  %arrayidx324 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %271, i64 %idxprom323
  %arrayidx325 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx324, i32 0, i64 %idxprom322
  %arrayidx326 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx325, i32 0, i64 %idxprom321
  store double %sub320, double* %arrayidx326, align 8
  %272 = load i32, i32* %iy, align 4
  %idxprom327 = sext i32 %272 to i64
  %273 = load i32, i32* %iz, align 4
  %idxprom328 = sext i32 %273 to i64
  %274 = load [65 x double]*, [65 x double]** %tmp.addr, align 8
  %arrayidx329 = getelementptr inbounds [65 x double], [65 x double]* %274, i64 %idxprom328
  %arrayidx330 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx329, i32 0, i64 %idxprom327
  %275 = load double, double* %arrayidx330, align 8
  %276 = load i32, i32* %ix, align 4
  %idxprom331 = sext i32 %276 to i64
  %277 = load i32, i32* %cym.addr, align 4
  %idxprom332 = sext i32 %277 to i64
  %278 = load i32, i32* %iz, align 4
  %idxprom333 = sext i32 %278 to i64
  %279 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Bza.addr, align 8
  %arrayidx334 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %279, i64 %idxprom333
  %arrayidx335 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx334, i32 0, i64 %idxprom332
  %arrayidx336 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx335, i32 0, i64 %idxprom331
  store double %275, double* %arrayidx336, align 8
  br label %for.inc.337

for.inc.337:                                      ; preds = %for.body.227
  %280 = load i32, i32* %ix, align 4
  %inc338 = add nsw i32 %280, 1
  store i32 %inc338, i32* %ix, align 4
  br label %for.cond.225

for.end.339:                                      ; preds = %for.cond.225
  %281 = load i32, i32* %cxm.addr, align 4
  %idxprom340 = sext i32 %281 to i64
  %282 = load i32, i32* %cym.addr, align 4
  %idxprom341 = sext i32 %282 to i64
  %283 = load i32, i32* %iz, align 4
  %idxprom342 = sext i32 %283 to i64
  %284 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ex.addr, align 8
  %arrayidx343 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %284, i64 %idxprom342
  %arrayidx344 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx343, i32 0, i64 %idxprom341
  %arrayidx345 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx344, i32 0, i64 %idxprom340
  %285 = load double, double* %arrayidx345, align 8
  %286 = load i32, i32* %cxm.addr, align 4
  %idxprom346 = sext i32 %286 to i64
  %287 = load i32, i32* %iz, align 4
  %idxprom347 = sext i32 %287 to i64
  %288 = load [65 x double]*, [65 x double]** %Ax.addr, align 8
  %arrayidx348 = getelementptr inbounds [65 x double], [65 x double]* %288, i64 %idxprom347
  %arrayidx349 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx348, i32 0, i64 %idxprom346
  %289 = load double, double* %arrayidx349, align 8
  %sub350 = fsub double %285, %289
  %290 = load i32, i32* %cym.addr, align 4
  %idxprom351 = sext i32 %290 to i64
  %291 = load i32, i32* %iz, align 4
  %idxprom352 = sext i32 %291 to i64
  %292 = load [65 x double]*, [65 x double]** %Ry.addr, align 8
  %arrayidx353 = getelementptr inbounds [65 x double], [65 x double]* %292, i64 %idxprom352
  %arrayidx354 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx353, i32 0, i64 %idxprom351
  %293 = load double, double* %arrayidx354, align 8
  %add355 = fadd double %sub350, %293
  %294 = load i32, i32* %cxm.addr, align 4
  %idxprom356 = sext i32 %294 to i64
  %295 = load i32, i32* %cym.addr, align 4
  %idxprom357 = sext i32 %295 to i64
  %296 = load i32, i32* %iz, align 4
  %idxprom358 = sext i32 %296 to i64
  %297 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ey.addr, align 8
  %arrayidx359 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %297, i64 %idxprom358
  %arrayidx360 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx359, i32 0, i64 %idxprom357
  %arrayidx361 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx360, i32 0, i64 %idxprom356
  %298 = load double, double* %arrayidx361, align 8
  %sub362 = fsub double %add355, %298
  %299 = load i32, i32* %iy, align 4
  %idxprom363 = sext i32 %299 to i64
  %300 = load i32, i32* %iz, align 4
  %idxprom364 = sext i32 %300 to i64
  %301 = load [65 x double]*, [65 x double]** %clf.addr, align 8
  %arrayidx365 = getelementptr inbounds [65 x double], [65 x double]* %301, i64 %idxprom364
  %arrayidx366 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx365, i32 0, i64 %idxprom363
  store double %sub362, double* %arrayidx366, align 8
  %302 = load i32, i32* %cym.addr, align 4
  %idxprom367 = sext i32 %302 to i64
  %303 = load double*, double** %cymh.addr, align 8
  %arrayidx368 = getelementptr inbounds double, double* %303, i64 %idxprom367
  %304 = load double, double* %arrayidx368, align 8
  %305 = load i32, i32* %cym.addr, align 4
  %idxprom369 = sext i32 %305 to i64
  %306 = load double*, double** %cyph.addr, align 8
  %arrayidx370 = getelementptr inbounds double, double* %306, i64 %idxprom369
  %307 = load double, double* %arrayidx370, align 8
  %div371 = fdiv double %304, %307
  %308 = load i32, i32* %cxm.addr, align 4
  %idxprom372 = sext i32 %308 to i64
  %309 = load i32, i32* %cym.addr, align 4
  %idxprom373 = sext i32 %309 to i64
  %310 = load i32, i32* %iz, align 4
  %idxprom374 = sext i32 %310 to i64
  %311 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Bza.addr, align 8
  %arrayidx375 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %311, i64 %idxprom374
  %arrayidx376 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx375, i32 0, i64 %idxprom373
  %arrayidx377 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx376, i32 0, i64 %idxprom372
  %312 = load double, double* %arrayidx377, align 8
  %mul378 = fmul double %div371, %312
  %313 = load double, double* %ch.addr, align 8
  %314 = load i32, i32* %cym.addr, align 4
  %idxprom379 = sext i32 %314 to i64
  %315 = load double*, double** %cyph.addr, align 8
  %arrayidx380 = getelementptr inbounds double, double* %315, i64 %idxprom379
  %316 = load double, double* %arrayidx380, align 8
  %div381 = fdiv double %313, %316
  %317 = load i32, i32* %iy, align 4
  %idxprom382 = sext i32 %317 to i64
  %318 = load i32, i32* %iz, align 4
  %idxprom383 = sext i32 %318 to i64
  %319 = load [65 x double]*, [65 x double]** %clf.addr, align 8
  %arrayidx384 = getelementptr inbounds [65 x double], [65 x double]* %319, i64 %idxprom383
  %arrayidx385 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx384, i32 0, i64 %idxprom382
  %320 = load double, double* %arrayidx385, align 8
  %mul386 = fmul double %div381, %320
  %sub387 = fsub double %mul378, %mul386
  %321 = load i32, i32* %iy, align 4
  %idxprom388 = sext i32 %321 to i64
  %322 = load i32, i32* %iz, align 4
  %idxprom389 = sext i32 %322 to i64
  %323 = load [65 x double]*, [65 x double]** %tmp.addr, align 8
  %arrayidx390 = getelementptr inbounds [65 x double], [65 x double]* %323, i64 %idxprom389
  %arrayidx391 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx390, i32 0, i64 %idxprom388
  store double %sub387, double* %arrayidx391, align 8
  %324 = load i32, i32* %cxm.addr, align 4
  %idxprom392 = sext i32 %324 to i64
  %325 = load double*, double** %cxmh.addr, align 8
  %arrayidx393 = getelementptr inbounds double, double* %325, i64 %idxprom392
  %326 = load double, double* %arrayidx393, align 8
  %327 = load i32, i32* %cxm.addr, align 4
  %idxprom394 = sext i32 %327 to i64
  %328 = load double*, double** %cxph.addr, align 8
  %arrayidx395 = getelementptr inbounds double, double* %328, i64 %idxprom394
  %329 = load double, double* %arrayidx395, align 8
  %div396 = fdiv double %326, %329
  %330 = load i32, i32* %cxm.addr, align 4
  %idxprom397 = sext i32 %330 to i64
  %331 = load i32, i32* %cym.addr, align 4
  %idxprom398 = sext i32 %331 to i64
  %332 = load i32, i32* %iz, align 4
  %idxprom399 = sext i32 %332 to i64
  %333 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Hz.addr, align 8
  %arrayidx400 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %333, i64 %idxprom399
  %arrayidx401 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx400, i32 0, i64 %idxprom398
  %arrayidx402 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx401, i32 0, i64 %idxprom397
  %334 = load double, double* %arrayidx402, align 8
  %mul403 = fmul double %div396, %334
  %335 = load double, double* %mui.addr, align 8
  %336 = load i32, i32* %iz, align 4
  %idxprom404 = sext i32 %336 to i64
  %337 = load double*, double** %czp.addr, align 8
  %arrayidx405 = getelementptr inbounds double, double* %337, i64 %idxprom404
  %338 = load double, double* %arrayidx405, align 8
  %mul406 = fmul double %335, %338
  %339 = load i32, i32* %cxm.addr, align 4
  %idxprom407 = sext i32 %339 to i64
  %340 = load double*, double** %cxph.addr, align 8
  %arrayidx408 = getelementptr inbounds double, double* %340, i64 %idxprom407
  %341 = load double, double* %arrayidx408, align 8
  %div409 = fdiv double %mul406, %341
  %342 = load i32, i32* %iy, align 4
  %idxprom410 = sext i32 %342 to i64
  %343 = load i32, i32* %iz, align 4
  %idxprom411 = sext i32 %343 to i64
  %344 = load [65 x double]*, [65 x double]** %tmp.addr, align 8
  %arrayidx412 = getelementptr inbounds [65 x double], [65 x double]* %344, i64 %idxprom411
  %arrayidx413 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx412, i32 0, i64 %idxprom410
  %345 = load double, double* %arrayidx413, align 8
  %mul414 = fmul double %div409, %345
  %add415 = fadd double %mul403, %mul414
  %346 = load double, double* %mui.addr, align 8
  %347 = load i32, i32* %iz, align 4
  %idxprom416 = sext i32 %347 to i64
  %348 = load double*, double** %czm.addr, align 8
  %arrayidx417 = getelementptr inbounds double, double* %348, i64 %idxprom416
  %349 = load double, double* %arrayidx417, align 8
  %mul418 = fmul double %346, %349
  %350 = load i32, i32* %cxm.addr, align 4
  %idxprom419 = sext i32 %350 to i64
  %351 = load double*, double** %cxph.addr, align 8
  %arrayidx420 = getelementptr inbounds double, double* %351, i64 %idxprom419
  %352 = load double, double* %arrayidx420, align 8
  %div421 = fdiv double %mul418, %352
  %353 = load i32, i32* %cxm.addr, align 4
  %idxprom422 = sext i32 %353 to i64
  %354 = load i32, i32* %cym.addr, align 4
  %idxprom423 = sext i32 %354 to i64
  %355 = load i32, i32* %iz, align 4
  %idxprom424 = sext i32 %355 to i64
  %356 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Bza.addr, align 8
  %arrayidx425 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %356, i64 %idxprom424
  %arrayidx426 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx425, i32 0, i64 %idxprom423
  %arrayidx427 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx426, i32 0, i64 %idxprom422
  %357 = load double, double* %arrayidx427, align 8
  %mul428 = fmul double %div421, %357
  %sub429 = fsub double %add415, %mul428
  %358 = load i32, i32* %cxm.addr, align 4
  %idxprom430 = sext i32 %358 to i64
  %359 = load i32, i32* %cym.addr, align 4
  %idxprom431 = sext i32 %359 to i64
  %360 = load i32, i32* %iz, align 4
  %idxprom432 = sext i32 %360 to i64
  %361 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Hz.addr, align 8
  %arrayidx433 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %361, i64 %idxprom432
  %arrayidx434 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx433, i32 0, i64 %idxprom431
  %arrayidx435 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx434, i32 0, i64 %idxprom430
  store double %sub429, double* %arrayidx435, align 8
  %362 = load i32, i32* %iy, align 4
  %idxprom436 = sext i32 %362 to i64
  %363 = load i32, i32* %iz, align 4
  %idxprom437 = sext i32 %363 to i64
  %364 = load [65 x double]*, [65 x double]** %tmp.addr, align 8
  %arrayidx438 = getelementptr inbounds [65 x double], [65 x double]* %364, i64 %idxprom437
  %arrayidx439 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx438, i32 0, i64 %idxprom436
  %365 = load double, double* %arrayidx439, align 8
  %366 = load i32, i32* %cxm.addr, align 4
  %idxprom440 = sext i32 %366 to i64
  %367 = load i32, i32* %cym.addr, align 4
  %idxprom441 = sext i32 %367 to i64
  %368 = load i32, i32* %iz, align 4
  %idxprom442 = sext i32 %368 to i64
  %369 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Bza.addr, align 8
  %arrayidx443 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %369, i64 %idxprom442
  %arrayidx444 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx443, i32 0, i64 %idxprom441
  %arrayidx445 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx444, i32 0, i64 %idxprom440
  store double %365, double* %arrayidx445, align 8
  br label %for.inc.446

for.inc.446:                                      ; preds = %for.end.339
  %370 = load i32, i32* %iy, align 4
  %inc447 = add nsw i32 %370, 1
  store i32 %inc447, i32* %iy, align 4
  br label %for.cond.4

for.end.448:                                      ; preds = %for.cond.4
  br label %for.inc.449

for.inc.449:                                      ; preds = %for.end.448
  %371 = load i32, i32* %iz, align 4
  %inc450 = add nsw i32 %371, 1
  store i32 %inc450, i32* %iz, align 4
  br label %for.cond

for.end.451:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %cz, i32 %cxm, i32 %cym, [65 x [65 x double]]* %Bza, [65 x [65 x double]]* %Ex, [65 x [65 x double]]* %Ey, [65 x [65 x double]]* %Hz) #0 {
entry:
  %cz.addr = alloca i32, align 4
  %cxm.addr = alloca i32, align 4
  %cym.addr = alloca i32, align 4
  %Bza.addr = alloca [65 x [65 x double]]*, align 8
  %Ex.addr = alloca [65 x [65 x double]]*, align 8
  %Ey.addr = alloca [65 x [65 x double]]*, align 8
  %Hz.addr = alloca [65 x [65 x double]]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %cz, i32* %cz.addr, align 4
  store i32 %cxm, i32* %cxm.addr, align 4
  store i32 %cym, i32* %cym.addr, align 4
  store [65 x [65 x double]]* %Bza, [65 x [65 x double]]** %Bza.addr, align 8
  store [65 x [65 x double]]* %Ex, [65 x [65 x double]]** %Ex.addr, align 8
  store [65 x [65 x double]]* %Ey, [65 x [65 x double]]** %Ey.addr, align 8
  store [65 x [65 x double]]* %Hz, [65 x [65 x double]]** %Hz.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %cz.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.34, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %cym.addr, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.36

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %cxm.addr, align 4
  %cmp5 = icmp sle i32 %4, %5
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i32, i32* %k, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Bza.addr, align 8
  %arrayidx = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %10, i64 %idxprom8
  %arrayidx9 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx, i32 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx9, i32 0, i64 %idxprom
  %11 = load double, double* %arrayidx10, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ex.addr, align 8
  %arrayidx14 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %16, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx14, i32 0, i64 %idxprom12
  %arrayidx16 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx15, i32 0, i64 %idxprom11
  %17 = load double, double* %arrayidx16, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Ey.addr, align 8
  %arrayidx21 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %22, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx21, i32 0, i64 %idxprom19
  %arrayidx23 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx22, i32 0, i64 %idxprom18
  %23 = load double, double* %arrayidx23, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %25 to i64
  %26 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load [65 x [65 x double]]*, [65 x [65 x double]]** %Hz.addr, align 8
  %arrayidx28 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %28, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [65 x [65 x double]], [65 x [65 x double]]* %arrayidx28, i32 0, i64 %idxprom26
  %arrayidx30 = getelementptr inbounds [65 x double], [65 x double]* %arrayidx29, i32 0, i64 %idxprom25
  %29 = load double, double* %arrayidx30, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %29)
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %cxm.addr, align 4
  %mul = mul nsw i32 %30, %31
  %32 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %32
  %rem = srem i32 %add, 20
  %cmp32 = icmp eq i32 %rem, 0
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, i32* %k, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %35 = load i32, i32* %j, align 4
  %inc35 = add nsw i32 %35, 1
  store i32 %inc35, i32* %j, align 4
  br label %for.cond.1

for.end.36:                                       ; preds = %for.cond.1
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %36 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %36, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
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
