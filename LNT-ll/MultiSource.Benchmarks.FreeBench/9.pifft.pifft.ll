; ModuleID = './MultiSource.Benchmarks.FreeBench/9.pifft.pifft.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"PI calculation to estimate the FFT benchmarks\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"ERROR: Could not open indata file.\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"initializing...\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Allocation Failure!\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"nfft= %d\0Aradix= %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"calculating %d digits of PI...\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"0.125\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"0.625\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"AGM iteration\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"precision= %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"floating point operation: %g op.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %nfft = alloca i32, align 4
  %log2_nfft = alloca i32, align 4
  %radix = alloca i32, align 4
  %log10_radix = alloca i32, align 4
  %n = alloca i32, align 4
  %npow = alloca i32, align 4
  %nprc = alloca i32, align 4
  %err = alloca double, align 8
  %n_op = alloca double, align 8
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %c = alloca i32*, align 8
  %e = alloca i32*, align 8
  %i1 = alloca i32*, align 8
  %i2 = alloca i32*, align 8
  %ip = alloca i32*, align 8
  %d1 = alloca double*, align 8
  %d2 = alloca double*, align 8
  %d3 = alloca double*, align 8
  %w = alloca double*, align 8
  %dgt = alloca i8*, align 8
  %f_in = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  %2 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0))
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %f_in, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f_in, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end.7:                                         ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f_in, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32* %nfft)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0))
  store i32 1, i32* %log2_nfft, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %8 = load i32, i32* %log2_nfft, align 4
  %shl = shl i32 1, %8
  %9 = load i32, i32* %nfft, align 4
  %cmp10 = icmp slt i32 %shl, %9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %log2_nfft, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %log2_nfft, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %log2_nfft, align 4
  %shl11 = shl i32 1, %11
  store i32 %shl11, i32* %nfft, align 4
  %12 = load i32, i32* %nfft, align 4
  %add = add nsw i32 %12, 2
  store i32 %add, i32* %n, align 4
  %13 = load i32, i32* %nfft, align 4
  %conv = sitofp i32 %13 to double
  %mul = fmul double 5.000000e-01, %conv
  %call12 = call double @sqrt(double %mul) #5
  %conv13 = fptosi double %call12 to i32
  %add14 = add nsw i32 3, %conv13
  %conv15 = sext i32 %add14 to i64
  %mul16 = mul i64 %conv15, 4
  %call17 = call noalias i8* @malloc(i64 %mul16) #5
  %14 = bitcast i8* %call17 to i32*
  store i32* %14, i32** %ip, align 8
  %15 = load i32, i32* %nfft, align 4
  %div = sdiv i32 %15, 2
  %conv18 = sext i32 %div to i64
  %mul19 = mul i64 %conv18, 8
  %call20 = call noalias i8* @malloc(i64 %mul19) #5
  %16 = bitcast i8* %call20 to double*
  store double* %16, double** %w, align 8
  %17 = load i32, i32* %n, align 4
  %add21 = add nsw i32 %17, 2
  %conv22 = sext i32 %add21 to i64
  %mul23 = mul i64 %conv22, 4
  %call24 = call noalias i8* @malloc(i64 %mul23) #5
  %18 = bitcast i8* %call24 to i32*
  store i32* %18, i32** %a, align 8
  %19 = load i32, i32* %n, align 4
  %add25 = add nsw i32 %19, 2
  %conv26 = sext i32 %add25 to i64
  %mul27 = mul i64 %conv26, 4
  %call28 = call noalias i8* @malloc(i64 %mul27) #5
  %20 = bitcast i8* %call28 to i32*
  store i32* %20, i32** %b, align 8
  %21 = load i32, i32* %n, align 4
  %add29 = add nsw i32 %21, 2
  %conv30 = sext i32 %add29 to i64
  %mul31 = mul i64 %conv30, 4
  %call32 = call noalias i8* @malloc(i64 %mul31) #5
  %22 = bitcast i8* %call32 to i32*
  store i32* %22, i32** %c, align 8
  %23 = load i32, i32* %n, align 4
  %add33 = add nsw i32 %23, 2
  %conv34 = sext i32 %add33 to i64
  %mul35 = mul i64 %conv34, 4
  %call36 = call noalias i8* @malloc(i64 %mul35) #5
  %24 = bitcast i8* %call36 to i32*
  store i32* %24, i32** %e, align 8
  %25 = load i32, i32* %n, align 4
  %add37 = add nsw i32 %25, 2
  %conv38 = sext i32 %add37 to i64
  %mul39 = mul i64 %conv38, 4
  %call40 = call noalias i8* @malloc(i64 %mul39) #5
  %26 = bitcast i8* %call40 to i32*
  store i32* %26, i32** %i1, align 8
  %27 = load i32, i32* %n, align 4
  %add41 = add nsw i32 %27, 2
  %conv42 = sext i32 %add41 to i64
  %mul43 = mul i64 %conv42, 4
  %call44 = call noalias i8* @malloc(i64 %mul43) #5
  %28 = bitcast i8* %call44 to i32*
  store i32* %28, i32** %i2, align 8
  %29 = load i32, i32* %nfft, align 4
  %add45 = add nsw i32 %29, 2
  %conv46 = sext i32 %add45 to i64
  %mul47 = mul i64 %conv46, 8
  %call48 = call noalias i8* @malloc(i64 %mul47) #5
  %30 = bitcast i8* %call48 to double*
  store double* %30, double** %d1, align 8
  %31 = load i32, i32* %nfft, align 4
  %add49 = add nsw i32 %31, 2
  %conv50 = sext i32 %add49 to i64
  %mul51 = mul i64 %conv50, 8
  %call52 = call noalias i8* @malloc(i64 %mul51) #5
  %32 = bitcast i8* %call52 to double*
  store double* %32, double** %d2, align 8
  %33 = load i32, i32* %nfft, align 4
  %add53 = add nsw i32 %33, 2
  %conv54 = sext i32 %add53 to i64
  %mul55 = mul i64 %conv54, 8
  %call56 = call noalias i8* @malloc(i64 %mul55) #5
  %34 = bitcast i8* %call56 to double*
  store double* %34, double** %d3, align 8
  %35 = load double*, double** %d3, align 8
  %cmp57 = icmp eq double* %35, null
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %for.end
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end.61:                                        ; preds = %for.end
  %37 = load i32*, i32** %ip, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 0, i32* %arrayidx62, align 4
  store i32 1, i32* %log10_radix, align 4
  store i32 10, i32* %radix, align 4
  %38 = load i32, i32* %n, align 4
  %39 = load i32, i32* %radix, align 4
  %40 = load i32, i32* %nfft, align 4
  %41 = load double*, double** %d1, align 8
  %42 = load i32*, i32** %ip, align 8
  %43 = load double*, double** %w, align 8
  %call63 = call double @mp_mul_radix_test(i32 %38, i32 %39, i32 %40, double* %41, i32* %42, double* %43)
  store double %call63, double* %err, align 8
  %44 = load i32, i32* %n, align 4
  %45 = load i32, i32* %radix, align 4
  %mul64 = mul nsw i32 %44, %45
  %46 = load i32, i32* %radix, align 4
  %mul65 = mul nsw i32 %mul64, %46
  %div66 = sdiv i32 %mul65, 4
  %conv67 = sitofp i32 %div66 to double
  %mul68 = fmul double 0x3CB0000000000000, %conv67
  %47 = load double, double* %err, align 8
  %add69 = fadd double %47, %mul68
  store double %add69, double* %err, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.61
  %48 = load double, double* %err, align 8
  %mul70 = fmul double 1.000000e+02, %48
  %cmp71 = fcmp olt double %mul70, 3.000000e-01
  br i1 %cmp71, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %49 = load i32, i32* %radix, align 4
  %cmp73 = icmp sle i32 %49, 107374182
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %50 = phi i1 [ false, %while.cond ], [ %cmp73, %land.rhs ]
  br i1 %50, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %51 = load double, double* %err, align 8
  %mul75 = fmul double %51, 1.000000e+02
  store double %mul75, double* %err, align 8
  %52 = load i32, i32* %log10_radix, align 4
  %inc76 = add nsw i32 %52, 1
  store i32 %inc76, i32* %log10_radix, align 4
  %53 = load i32, i32* %radix, align 4
  %mul77 = mul nsw i32 %53, 10
  store i32 %mul77, i32* %radix, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %54 = load i32, i32* %nfft, align 4
  %55 = load i32, i32* %radix, align 4
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 %54, i32 %55)
  %56 = load i32, i32* %log10_radix, align 4
  %57 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %57, 2
  %mul79 = mul nsw i32 %56, %sub
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0), i32 %mul79)
  %58 = load i32, i32* %n, align 4
  %59 = load i32, i32* %log10_radix, align 4
  %60 = load i32*, i32** %a, align 8
  call void @mp_sscanf(i32 %58, i32 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32* %60)
  %61 = load i32, i32* %n, align 4
  %62 = load i32, i32* %radix, align 4
  %63 = load i32*, i32** %a, align 8
  %64 = load i32*, i32** %c, align 8
  %65 = load i32*, i32** %i1, align 8
  %66 = load i32*, i32** %i2, align 8
  %67 = load i32, i32* %nfft, align 4
  %68 = load double*, double** %d1, align 8
  %69 = load double*, double** %d2, align 8
  %70 = load i32*, i32** %ip, align 8
  %71 = load double*, double** %w, align 8
  %call81 = call i32 @mp_sqrt(i32 %61, i32 %62, i32* %63, i32* %64, i32* %65, i32* %66, i32 %67, double* %68, double* %69, i32* %70, double* %71)
  %72 = load i32, i32* %n, align 4
  %73 = load i32, i32* %radix, align 4
  %74 = load i32*, i32** %c, align 8
  %75 = load i32*, i32** %e, align 8
  call void @mp_imul(i32 %72, i32 %73, i32* %74, i32 3, i32* %75)
  %76 = load i32, i32* %n, align 4
  %77 = load i32, i32* %log10_radix, align 4
  %78 = load i32*, i32** %a, align 8
  call void @mp_sscanf(i32 %76, i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i32* %78)
  %79 = load i32, i32* %n, align 4
  %80 = load i32, i32* %radix, align 4
  %81 = load i32*, i32** %a, align 8
  %82 = load i32*, i32** %e, align 8
  %83 = load i32*, i32** %a, align 8
  call void @mp_add(i32 %79, i32 %80, i32* %81, i32* %82, i32* %83)
  %84 = load i32, i32* %n, align 4
  %85 = load i32, i32* %radix, align 4
  %86 = load i32*, i32** %a, align 8
  %87 = load i32*, i32** %b, align 8
  %88 = load i32*, i32** %i1, align 8
  %89 = load i32*, i32** %i2, align 8
  %90 = load i32, i32* %nfft, align 4
  %91 = load double*, double** %d1, align 8
  %92 = load double*, double** %d2, align 8
  %93 = load i32*, i32** %ip, align 8
  %94 = load double*, double** %w, align 8
  %call82 = call i32 @mp_sqrt(i32 %84, i32 %85, i32* %86, i32* %87, i32* %88, i32* %89, i32 %90, double* %91, double* %92, i32* %93, double* %94)
  %95 = load i32, i32* %n, align 4
  %96 = load i32, i32* %log10_radix, align 4
  %97 = load i32*, i32** %e, align 8
  call void @mp_sscanf(i32 %95, i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32* %97)
  %98 = load i32, i32* %n, align 4
  %99 = load i32, i32* %radix, align 4
  %100 = load i32*, i32** %b, align 8
  %101 = load i32*, i32** %e, align 8
  %102 = load i32*, i32** %e, align 8
  call void @mp_sub(i32 %98, i32 %99, i32* %100, i32* %101, i32* %102)
  %103 = load i32, i32* %n, align 4
  %104 = load i32, i32* %radix, align 4
  %105 = load i32*, i32** %b, align 8
  %106 = load i32*, i32** %b, align 8
  %107 = load i32*, i32** %b, align 8
  call void @mp_add(i32 %103, i32 %104, i32* %105, i32* %106, i32* %107)
  %108 = load i32, i32* %n, align 4
  %109 = load i32, i32* %radix, align 4
  %110 = load i32*, i32** %e, align 8
  %111 = load i32*, i32** %c, align 8
  %112 = load i32*, i32** %c, align 8
  call void @mp_sub(i32 %108, i32 %109, i32* %110, i32* %111, i32* %112)
  %113 = load i32, i32* %n, align 4
  %114 = load i32, i32* %radix, align 4
  %115 = load i32*, i32** %a, align 8
  %116 = load i32*, i32** %e, align 8
  %117 = load i32*, i32** %a, align 8
  call void @mp_add(i32 %113, i32 %114, i32* %115, i32* %116, i32* %117)
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  store i32 4, i32* %npow, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %118 = load i32, i32* %npow, align 4
  %mul84 = mul nsw i32 %118, 2
  store i32 %mul84, i32* %npow, align 4
  %119 = load i32, i32* %n, align 4
  %120 = load i32, i32* %radix, align 4
  %121 = load i32*, i32** %a, align 8
  %122 = load i32*, i32** %b, align 8
  %123 = load i32*, i32** %e, align 8
  call void @mp_add(i32 %119, i32 %120, i32* %121, i32* %122, i32* %123)
  %124 = load i32, i32* %n, align 4
  %125 = load i32, i32* %radix, align 4
  %126 = load i32*, i32** %e, align 8
  %127 = load i32*, i32** %e, align 8
  call void @mp_idiv_2(i32 %124, i32 %125, i32* %126, i32* %127)
  %128 = load i32, i32* %n, align 4
  %129 = load i32, i32* %radix, align 4
  %130 = load i32*, i32** %a, align 8
  %131 = load i32*, i32** %b, align 8
  %132 = load i32*, i32** %a, align 8
  %133 = load i32*, i32** %i1, align 8
  %134 = load i32, i32* %nfft, align 4
  %135 = load double*, double** %d1, align 8
  %136 = load double*, double** %d2, align 8
  %137 = load double*, double** %d3, align 8
  %138 = load i32*, i32** %ip, align 8
  %139 = load double*, double** %w, align 8
  call void @mp_mul(i32 %128, i32 %129, i32* %130, i32* %131, i32* %132, i32* %133, i32 %134, double* %135, double* %136, double* %137, i32* %138, double* %139)
  %140 = load i32, i32* %n, align 4
  %141 = load i32, i32* %radix, align 4
  %142 = load i32*, i32** %a, align 8
  %143 = load i32*, i32** %b, align 8
  %144 = load i32*, i32** %i1, align 8
  %145 = load i32*, i32** %i2, align 8
  %146 = load i32, i32* %nfft, align 4
  %147 = load double*, double** %d1, align 8
  %148 = load double*, double** %d2, align 8
  %149 = load i32*, i32** %ip, align 8
  %150 = load double*, double** %w, align 8
  %call85 = call i32 @mp_sqrt(i32 %140, i32 %141, i32* %142, i32* %143, i32* %144, i32* %145, i32 %146, double* %147, double* %148, i32* %149, double* %150)
  %151 = load i32, i32* %n, align 4
  %152 = load i32, i32* %radix, align 4
  %153 = load i32*, i32** %e, align 8
  %154 = load i32*, i32** %b, align 8
  %155 = load i32*, i32** %e, align 8
  call void @mp_sub(i32 %151, i32 %152, i32* %153, i32* %154, i32* %155)
  %156 = load i32, i32* %n, align 4
  %157 = load i32, i32* %radix, align 4
  %158 = load i32*, i32** %b, align 8
  %159 = load i32*, i32** %b, align 8
  %160 = load i32*, i32** %b, align 8
  call void @mp_add(i32 %156, i32 %157, i32* %158, i32* %159, i32* %160)
  %161 = load i32, i32* %n, align 4
  %162 = load i32, i32* %radix, align 4
  %163 = load i32*, i32** %c, align 8
  %164 = load i32*, i32** %e, align 8
  %165 = load i32*, i32** %c, align 8
  call void @mp_sub(i32 %161, i32 %162, i32* %163, i32* %164, i32* %165)
  %166 = load i32, i32* %n, align 4
  %167 = load i32, i32* %radix, align 4
  %168 = load i32*, i32** %e, align 8
  %169 = load i32*, i32** %b, align 8
  %170 = load i32*, i32** %a, align 8
  call void @mp_add(i32 %166, i32 %167, i32* %168, i32* %169, i32* %170)
  %171 = load i32*, i32** %e, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %171, i64 1
  %172 = load i32, i32* %arrayidx86, align 4
  %sub87 = sub nsw i32 0, %172
  store i32 %sub87, i32* %nprc, align 4
  %173 = load i32*, i32** %e, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %173, i64 0
  %174 = load i32, i32* %arrayidx88, align 4
  %cmp89 = icmp eq i32 %174, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %do.body
  %175 = load i32, i32* %n, align 4
  store i32 %175, i32* %nprc, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %do.body
  %176 = load i32, i32* %nprc, align 4
  %mul93 = mul nsw i32 4, %176
  %177 = load i32, i32* %log10_radix, align 4
  %mul94 = mul nsw i32 %mul93, %177
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 %mul94)
  br label %do.cond

do.cond:                                          ; preds = %if.end.92
  %178 = load i32, i32* %nprc, align 4
  %mul96 = mul nsw i32 4, %178
  %179 = load i32, i32* %n, align 4
  %cmp97 = icmp sle i32 %mul96, %179
  br i1 %cmp97, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %180 = load i32, i32* %n, align 4
  %181 = load i32, i32* %radix, align 4
  %182 = load i32*, i32** %e, align 8
  %183 = load i32*, i32** %e, align 8
  call void @mp_idiv_2(i32 %180, i32 %181, i32* %182, i32* %183)
  %184 = load i32, i32* %n, align 4
  %185 = load i32, i32* %radix, align 4
  %186 = load i32*, i32** %e, align 8
  %187 = load i32*, i32** %e, align 8
  %188 = load i32, i32* %nfft, align 4
  %189 = load double*, double** %d1, align 8
  %190 = load i32*, i32** %ip, align 8
  %191 = load double*, double** %w, align 8
  call void @mp_squh(i32 %184, i32 %185, i32* %186, i32* %187, i32 %188, double* %189, i32* %190, double* %191)
  %192 = load i32, i32* %n, align 4
  %193 = load i32, i32* %radix, align 4
  %194 = load i32*, i32** %a, align 8
  %195 = load i32*, i32** %b, align 8
  %196 = load i32*, i32** %a, align 8
  call void @mp_add(i32 %192, i32 %193, i32* %194, i32* %195, i32* %196)
  %197 = load i32, i32* %n, align 4
  %198 = load i32, i32* %radix, align 4
  %199 = load i32*, i32** %a, align 8
  %200 = load i32*, i32** %c, align 8
  %201 = load i32*, i32** %c, align 8
  %202 = load i32*, i32** %i1, align 8
  %203 = load i32, i32* %nfft, align 4
  %204 = load double*, double** %d1, align 8
  %205 = load double*, double** %d2, align 8
  %206 = load double*, double** %d3, align 8
  %207 = load i32*, i32** %ip, align 8
  %208 = load double*, double** %w, align 8
  call void @mp_mul(i32 %197, i32 %198, i32* %199, i32* %200, i32* %201, i32* %202, i32 %203, double* %204, double* %205, double* %206, i32* %207, double* %208)
  %209 = load i32, i32* %n, align 4
  %210 = load i32, i32* %radix, align 4
  %211 = load i32*, i32** %c, align 8
  %212 = load i32*, i32** %e, align 8
  %213 = load i32*, i32** %c, align 8
  call void @mp_sub(i32 %209, i32 %210, i32* %211, i32* %212, i32* %213)
  %214 = load i32, i32* %n, align 4
  %215 = load i32, i32* %radix, align 4
  %216 = load i32*, i32** %c, align 8
  %217 = load i32*, i32** %b, align 8
  %218 = load i32*, i32** %i1, align 8
  %219 = load i32*, i32** %i2, align 8
  %220 = load i32, i32* %nfft, align 4
  %221 = load double*, double** %d1, align 8
  %222 = load double*, double** %d2, align 8
  %223 = load i32*, i32** %ip, align 8
  %224 = load double*, double** %w, align 8
  %call99 = call i32 @mp_inv(i32 %214, i32 %215, i32* %216, i32* %217, i32* %218, i32* %219, i32 %220, double* %221, double* %222, i32* %223, double* %224)
  %225 = load i32, i32* %n, align 4
  %226 = load i32, i32* %radix, align 4
  %227 = load i32*, i32** %a, align 8
  %228 = load i32*, i32** %a, align 8
  %229 = load i32*, i32** %i1, align 8
  %230 = load i32, i32* %nfft, align 4
  %231 = load double*, double** %d1, align 8
  %232 = load double*, double** %d2, align 8
  %233 = load i32*, i32** %ip, align 8
  %234 = load double*, double** %w, align 8
  call void @mp_squ(i32 %225, i32 %226, i32* %227, i32* %228, i32* %229, i32 %230, double* %231, double* %232, i32* %233, double* %234)
  %235 = load i32, i32* %n, align 4
  %236 = load i32, i32* %radix, align 4
  %237 = load i32*, i32** %a, align 8
  %238 = load i32*, i32** %e, align 8
  %239 = load i32*, i32** %a, align 8
  call void @mp_sub(i32 %235, i32 %236, i32* %237, i32* %238, i32* %239)
  %240 = load i32, i32* %n, align 4
  %241 = load i32, i32* %radix, align 4
  %242 = load i32*, i32** %e, align 8
  %243 = load i32*, i32** %e, align 8
  call void @mp_idiv_2(i32 %240, i32 %241, i32* %242, i32* %243)
  %244 = load i32, i32* %n, align 4
  %245 = load i32, i32* %radix, align 4
  %246 = load i32*, i32** %a, align 8
  %247 = load i32*, i32** %e, align 8
  %248 = load i32*, i32** %a, align 8
  call void @mp_sub(i32 %244, i32 %245, i32* %246, i32* %247, i32* %248)
  %249 = load i32, i32* %n, align 4
  %250 = load i32, i32* %radix, align 4
  %251 = load i32*, i32** %a, align 8
  %252 = load i32*, i32** %b, align 8
  %253 = load i32*, i32** %a, align 8
  %254 = load i32*, i32** %i1, align 8
  %255 = load i32, i32* %nfft, align 4
  %256 = load double*, double** %d1, align 8
  %257 = load double*, double** %d2, align 8
  %258 = load double*, double** %d3, align 8
  %259 = load i32*, i32** %ip, align 8
  %260 = load double*, double** %w, align 8
  call void @mp_mul(i32 %249, i32 %250, i32* %251, i32* %252, i32* %253, i32* %254, i32 %255, double* %256, double* %257, double* %258, i32* %259, double* %260)
  %261 = load i32, i32* %n, align 4
  %262 = load i32, i32* %radix, align 4
  %263 = load i32*, i32** %a, align 8
  %264 = load i32, i32* %npow, align 4
  %265 = load i32*, i32** %a, align 8
  %call100 = call i32 @mp_idiv(i32 %261, i32 %262, i32* %263, i32 %264, i32* %265)
  %266 = load double*, double** %d3, align 8
  %267 = bitcast double* %266 to i8*
  call void @free(i8* %267) #5
  %268 = load double*, double** %d2, align 8
  %269 = bitcast double* %268 to i8*
  call void @free(i8* %269) #5
  %270 = load double*, double** %d1, align 8
  %271 = bitcast double* %270 to i8*
  call void @free(i8* %271) #5
  %272 = load i32, i32* %log10_radix, align 4
  %273 = load i32, i32* %n, align 4
  %mul101 = mul nsw i32 %272, %273
  %add102 = add nsw i32 %mul101, 32
  %conv103 = sext i32 %add102 to i64
  %mul104 = mul i64 %conv103, 1
  %call105 = call noalias i8* @malloc(i64 %mul104) #5
  store i8* %call105, i8** %dgt, align 8
  %274 = load i32, i32* %n, align 4
  %sub106 = sub nsw i32 %274, 1
  %275 = load i32, i32* %log10_radix, align 4
  %276 = load i32*, i32** %a, align 8
  %277 = load i8*, i8** %dgt, align 8
  call void @mp_sprintf(i32 %sub106, i32 %275, i32* %276, i8* %277)
  %278 = load i8*, i8** %dgt, align 8
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* %278)
  %279 = load i8*, i8** %dgt, align 8
  call void @free(i8* %279) #5
  %280 = load i32*, i32** %i2, align 8
  %281 = bitcast i32* %280 to i8*
  call void @free(i8* %281) #5
  %282 = load i32*, i32** %i1, align 8
  %283 = bitcast i32* %282 to i8*
  call void @free(i8* %283) #5
  %284 = load i32*, i32** %e, align 8
  %285 = bitcast i32* %284 to i8*
  call void @free(i8* %285) #5
  %286 = load i32*, i32** %c, align 8
  %287 = bitcast i32* %286 to i8*
  call void @free(i8* %287) #5
  %288 = load i32*, i32** %b, align 8
  %289 = bitcast i32* %288 to i8*
  call void @free(i8* %289) #5
  %290 = load i32*, i32** %a, align 8
  %291 = bitcast i32* %290 to i8*
  call void @free(i8* %291) #5
  %292 = load double*, double** %w, align 8
  %293 = bitcast double* %292 to i8*
  call void @free(i8* %293) #5
  %294 = load i32*, i32** %ip, align 8
  %295 = bitcast i32* %294 to i8*
  call void @free(i8* %295) #5
  %296 = load i32, i32* %nfft, align 4
  %conv108 = sitofp i32 %296 to double
  %mul109 = fmul double 5.000000e+01, %conv108
  %297 = load i32, i32* %log2_nfft, align 4
  %conv110 = sitofp i32 %297 to double
  %mul111 = fmul double %mul109, %conv110
  %298 = load i32, i32* %log2_nfft, align 4
  %conv112 = sitofp i32 %298 to double
  %mul113 = fmul double %mul111, %conv112
  store double %mul113, double* %n_op, align 8
  %299 = load double, double* %n_op, align 8
  %call114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0), double %299)
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i32 @printf(i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define double @mp_mul_radix_test(i32 %n, i32 %radix, i32 %nfft, double* %tmpfft, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %nfft.addr = alloca i32, align 4
  %tmpfft.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %ndata = alloca i32, align 4
  %radix_2 = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %tmpfft, double** %tmpfft.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %nfft.addr, align 4
  %shr = ashr i32 %0, 1
  %add = add nsw i32 %shr, 1
  store i32 %add, i32* %ndata, align 4
  %1 = load i32, i32* %ndata, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n.addr, align 4
  store i32 %3, i32* %ndata, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %radix.addr, align 4
  %sub = sub nsw i32 %4, 1
  %conv = sitofp i32 %sub to double
  %5 = load i32, i32* %nfft.addr, align 4
  %add1 = add nsw i32 %5, 1
  %idxprom = sext i32 %add1 to i64
  %6 = load double*, double** %tmpfft.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  %7 = load i32, i32* %nfft.addr, align 4
  store i32 %7, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %ndata, align 4
  %cmp2 = icmp sgt i32 %8, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load double*, double** %tmpfft.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %11, i64 %idxprom4
  store double 0.000000e+00, double* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %j, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %radix.addr, align 4
  %add6 = add nsw i32 %13, 1
  %div = sdiv i32 %add6, 2
  store i32 %div, i32* %radix_2, align 4
  %14 = load i32, i32* %ndata, align 4
  store i32 %14, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.14, %for.end
  %15 = load i32, i32* %j, align 4
  %cmp8 = icmp sgt i32 %15, 2
  br i1 %cmp8, label %for.body.10, label %for.end.16

for.body.10:                                      ; preds = %for.cond.7
  %16 = load i32, i32* %radix_2, align 4
  %conv11 = sitofp i32 %16 to double
  %17 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load double*, double** %tmpfft.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %18, i64 %idxprom12
  store double %conv11, double* %arrayidx13, align 8
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.10
  %19 = load i32, i32* %j, align 4
  %dec15 = add nsw i32 %19, -1
  store i32 %dec15, i32* %j, align 4
  br label %for.cond.7

for.end.16:                                       ; preds = %for.cond.7
  %20 = load i32, i32* %radix.addr, align 4
  %conv17 = sitofp i32 %20 to double
  %21 = load double*, double** %tmpfft.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %21, i64 2
  store double %conv17, double* %arrayidx18, align 8
  %22 = load i32, i32* %radix.addr, align 4
  %sub19 = sub nsw i32 %22, 1
  %conv20 = sitofp i32 %sub19 to double
  %23 = load double*, double** %tmpfft.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %23, i64 1
  store double %conv20, double* %arrayidx21, align 8
  %24 = load double*, double** %tmpfft.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %24, i64 0
  store double 0.000000e+00, double* %arrayidx22, align 8
  %25 = load i32, i32* %nfft.addr, align 4
  %26 = load double*, double** %tmpfft.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %26, i64 1
  %27 = load i32*, i32** %ip.addr, align 8
  %28 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %25, i32 1, double* %arrayidx23, i32* %27, double* %28)
  %29 = load i32, i32* %nfft.addr, align 4
  %30 = load double*, double** %tmpfft.addr, align 8
  call void @mp_mul_csqu(i32 %29, double* %30)
  %31 = load i32, i32* %nfft.addr, align 4
  %32 = load double*, double** %tmpfft.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %32, i64 1
  %33 = load i32*, i32** %ip.addr, align 8
  %34 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %31, i32 -1, double* %arrayidx24, i32* %33, double* %34)
  %35 = load i32, i32* %radix.addr, align 4
  %36 = load i32, i32* %nfft.addr, align 4
  %37 = load double*, double** %tmpfft.addr, align 8
  %call = call double @mp_mul_d2i_test(i32 %35, i32 %36, double* %37)
  %mul = fmul double 2.000000e+00, %call
  ret double %mul
}

; Function Attrs: nounwind uwtable
define void @mp_sscanf(i32 %n, i32 %log10_radix, i8* %in, i32* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %log10_radix.addr = alloca i32, align 4
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i32*, align 8
  %s = alloca i8*, align 8
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %outexp = alloca i32, align 4
  %outexp_mod = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %log10_radix, i32* %log10_radix.addr, align 4
  store i8* %in, i8** %in.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %in.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %in.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %in.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32*, i32** %out.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 0
  store i32 1, i32* %arrayidx, align 4
  %4 = load i8*, i8** %in.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %6 = load i32*, i32** %out.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 -1, i32* %arrayidx5, align 4
  %7 = load i8*, i8** %in.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr6, i8** %in.addr, align 8
  br label %if.end.12

if.else:                                          ; preds = %while.end
  %8 = load i8*, i8** %in.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 43
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %10 = load i8*, i8** %in.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr11, i8** %in.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.20, %if.end.12
  %11 = load i8*, i8** %in.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv14 = sext i8 %12 to i32
  %cmp15 = icmp eq i32 %conv14, 32
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.13
  %13 = load i8*, i8** %in.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv17 = sext i8 %14 to i32
  %cmp18 = icmp eq i32 %conv17, 48
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.13
  %15 = phi i1 [ true, %while.cond.13 ], [ %cmp18, %lor.rhs ]
  br i1 %15, label %while.body.20, label %while.end.22

while.body.20:                                    ; preds = %lor.end
  %16 = load i8*, i8** %in.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr21, i8** %in.addr, align 8
  br label %while.cond.13

while.end.22:                                     ; preds = %lor.end
  store i32 0, i32* %outexp, align 4
  %17 = load i8*, i8** %in.addr, align 8
  store i8* %17, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.22
  %18 = load i8*, i8** %s, align 8
  %19 = load i8, i8* %18, align 1
  %conv23 = sext i8 %19 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i8*, i8** %s, align 8
  %21 = load i8, i8* %20, align 1
  %conv26 = sext i8 %21 to i32
  %cmp27 = icmp eq i32 %conv26, 101
  br i1 %cmp27, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %22 = load i8*, i8** %s, align 8
  %23 = load i8, i8* %22, align 1
  %conv29 = sext i8 %23 to i32
  %cmp30 = icmp eq i32 %conv29, 69
  br i1 %cmp30, label %if.then.40, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false
  %24 = load i8*, i8** %s, align 8
  %25 = load i8, i8* %24, align 1
  %conv33 = sext i8 %25 to i32
  %cmp34 = icmp eq i32 %conv33, 100
  br i1 %cmp34, label %if.then.40, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.32
  %26 = load i8*, i8** %s, align 8
  %27 = load i8, i8* %26, align 1
  %conv37 = sext i8 %27 to i32
  %cmp38 = icmp eq i32 %conv37, 68
  br i1 %cmp38, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %lor.lhs.false.36, %lor.lhs.false.32, %lor.lhs.false, %for.body
  %28 = load i8*, i8** %s, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr41, i8** %s, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %incdec.ptr41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32* %outexp) #5
  %cmp42 = icmp ne i32 %call, 1
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.40
  store i32 0, i32* %outexp, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.40
  br label %for.end

if.end.46:                                        ; preds = %lor.lhs.false.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %29 = load i8*, i8** %s, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr47, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.45, %for.cond
  %30 = load i8*, i8** %in.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv48 = sext i8 %31 to i32
  %cmp49 = icmp eq i32 %conv48, 46
  br i1 %cmp49, label %if.then.51, label %if.else.65

if.then.51:                                       ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then.51
  %32 = load i32, i32* %outexp, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %outexp, align 4
  br label %while.cond.52

while.cond.52:                                    ; preds = %while.body.57, %do.body
  %33 = load i8*, i8** %in.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr53, i8** %in.addr, align 8
  %34 = load i8, i8* %incdec.ptr53, align 1
  %conv54 = sext i8 %34 to i32
  %cmp55 = icmp eq i32 %conv54, 32
  br i1 %cmp55, label %while.body.57, label %while.end.58

while.body.57:                                    ; preds = %while.cond.52
  br label %while.cond.52

while.end.58:                                     ; preds = %while.cond.52
  br label %do.cond

do.cond:                                          ; preds = %while.end.58
  %35 = load i8*, i8** %in.addr, align 8
  %36 = load i8, i8* %35, align 1
  %conv59 = sext i8 %36 to i32
  %cmp60 = icmp eq i32 %conv59, 48
  br i1 %cmp60, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %37 = load i8*, i8** %in.addr, align 8
  %38 = load i8, i8* %37, align 1
  %conv62 = sext i8 %38 to i32
  %cmp63 = icmp ne i32 %conv62, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %39 = phi i1 [ false, %do.cond ], [ %cmp63, %land.rhs ]
  br i1 %39, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end.99

if.else.65:                                       ; preds = %for.end
  %40 = load i8*, i8** %in.addr, align 8
  %41 = load i8, i8* %40, align 1
  %conv66 = sext i8 %41 to i32
  %cmp67 = icmp ne i32 %conv66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.98

if.then.69:                                       ; preds = %if.else.65
  %42 = load i8*, i8** %in.addr, align 8
  store i8* %42, i8** %s, align 8
  br label %while.cond.70

while.cond.70:                                    ; preds = %while.body.75, %if.then.69
  %43 = load i8*, i8** %s, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr71, i8** %s, align 8
  %44 = load i8, i8* %incdec.ptr71, align 1
  %conv72 = sext i8 %44 to i32
  %cmp73 = icmp eq i32 %conv72, 32
  br i1 %cmp73, label %while.body.75, label %while.end.76

while.body.75:                                    ; preds = %while.cond.70
  br label %while.cond.70

while.end.76:                                     ; preds = %while.cond.70
  br label %while.cond.77

while.cond.77:                                    ; preds = %while.end.96, %while.end.76
  %45 = load i8*, i8** %s, align 8
  %46 = load i8, i8* %45, align 1
  %conv78 = sext i8 %46 to i32
  %cmp79 = icmp sge i32 %conv78, 48
  br i1 %cmp79, label %land.lhs.true, label %land.end.88

land.lhs.true:                                    ; preds = %while.cond.77
  %47 = load i8*, i8** %s, align 8
  %48 = load i8, i8* %47, align 1
  %conv81 = sext i8 %48 to i32
  %cmp82 = icmp sle i32 %conv81, 57
  br i1 %cmp82, label %land.rhs.84, label %land.end.88

land.rhs.84:                                      ; preds = %land.lhs.true
  %49 = load i8*, i8** %s, align 8
  %50 = load i8, i8* %49, align 1
  %conv85 = sext i8 %50 to i32
  %cmp86 = icmp ne i32 %conv85, 0
  br label %land.end.88

land.end.88:                                      ; preds = %land.rhs.84, %land.lhs.true, %while.cond.77
  %51 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.77 ], [ %cmp86, %land.rhs.84 ]
  br i1 %51, label %while.body.89, label %while.end.97

while.body.89:                                    ; preds = %land.end.88
  %52 = load i32, i32* %outexp, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %outexp, align 4
  br label %while.cond.90

while.cond.90:                                    ; preds = %while.body.95, %while.body.89
  %53 = load i8*, i8** %s, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr91, i8** %s, align 8
  %54 = load i8, i8* %incdec.ptr91, align 1
  %conv92 = sext i8 %54 to i32
  %cmp93 = icmp eq i32 %conv92, 32
  br i1 %cmp93, label %while.body.95, label %while.end.96

while.body.95:                                    ; preds = %while.cond.90
  br label %while.cond.90

while.end.96:                                     ; preds = %while.cond.90
  br label %while.cond.77

while.end.97:                                     ; preds = %land.end.88
  br label %if.end.98

if.end.98:                                        ; preds = %while.end.97, %if.else.65
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %do.end
  %55 = load i32, i32* %outexp, align 4
  %56 = load i32, i32* %log10_radix.addr, align 4
  %div = sdiv i32 %55, %56
  store i32 %div, i32* %x, align 4
  %57 = load i32, i32* %outexp, align 4
  %58 = load i32, i32* %log10_radix.addr, align 4
  %59 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %58, %59
  %sub = sub nsw i32 %57, %mul
  store i32 %sub, i32* %outexp_mod, align 4
  %60 = load i32, i32* %outexp_mod, align 4
  %cmp100 = icmp slt i32 %60, 0
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.end.99
  %61 = load i32, i32* %x, align 4
  %dec103 = add nsw i32 %61, -1
  store i32 %dec103, i32* %x, align 4
  %62 = load i32, i32* %log10_radix.addr, align 4
  %63 = load i32, i32* %outexp_mod, align 4
  %add = add nsw i32 %63, %62
  store i32 %add, i32* %outexp_mod, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.end.99
  %64 = load i32, i32* %x, align 4
  %65 = load i32*, i32** %out.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %64, i32* %arrayidx105, align 4
  store i32 0, i32* %x, align 4
  store i32 2, i32* %j, align 4
  %66 = load i8*, i8** %in.addr, align 8
  store i8* %66, i8** %s, align 8
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.146, %if.end.104
  %67 = load i8*, i8** %s, align 8
  %68 = load i8, i8* %67, align 1
  %conv107 = sext i8 %68 to i32
  %cmp108 = icmp ne i32 %conv107, 0
  br i1 %cmp108, label %for.body.110, label %for.end.148

for.body.110:                                     ; preds = %for.cond.106
  %69 = load i8*, i8** %s, align 8
  %70 = load i8, i8* %69, align 1
  %conv111 = sext i8 %70 to i32
  %cmp112 = icmp eq i32 %conv111, 46
  br i1 %cmp112, label %if.then.118, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %for.body.110
  %71 = load i8*, i8** %s, align 8
  %72 = load i8, i8* %71, align 1
  %conv115 = sext i8 %72 to i32
  %cmp116 = icmp eq i32 %conv115, 32
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %lor.lhs.false.114, %for.body.110
  br label %for.inc.146

if.end.119:                                       ; preds = %lor.lhs.false.114
  %73 = load i8*, i8** %s, align 8
  %74 = load i8, i8* %73, align 1
  %conv120 = sext i8 %74 to i32
  %cmp121 = icmp slt i32 %conv120, 48
  br i1 %cmp121, label %if.then.127, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %if.end.119
  %75 = load i8*, i8** %s, align 8
  %76 = load i8, i8* %75, align 1
  %conv124 = sext i8 %76 to i32
  %cmp125 = icmp sgt i32 %conv124, 57
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %lor.lhs.false.123, %if.end.119
  br label %for.end.148

if.end.128:                                       ; preds = %lor.lhs.false.123
  %77 = load i32, i32* %x, align 4
  %mul129 = mul nsw i32 10, %77
  %78 = load i8*, i8** %s, align 8
  %79 = load i8, i8* %78, align 1
  %conv130 = sext i8 %79 to i32
  %sub131 = sub nsw i32 %conv130, 48
  %add132 = add nsw i32 %mul129, %sub131
  store i32 %add132, i32* %x, align 4
  %80 = load i32, i32* %outexp_mod, align 4
  %dec133 = add nsw i32 %80, -1
  store i32 %dec133, i32* %outexp_mod, align 4
  %cmp134 = icmp slt i32 %dec133, 0
  br i1 %cmp134, label %if.then.136, label %if.end.145

if.then.136:                                      ; preds = %if.end.128
  %81 = load i32, i32* %j, align 4
  %82 = load i32, i32* %n.addr, align 4
  %add137 = add nsw i32 %82, 1
  %cmp138 = icmp sgt i32 %81, %add137
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.then.136
  br label %for.end.148

if.end.141:                                       ; preds = %if.then.136
  %83 = load i32, i32* %x, align 4
  %84 = load i32, i32* %j, align 4
  %inc142 = add nsw i32 %84, 1
  store i32 %inc142, i32* %j, align 4
  %idxprom = sext i32 %84 to i64
  %85 = load i32*, i32** %out.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %85, i64 %idxprom
  store i32 %83, i32* %arrayidx143, align 4
  store i32 0, i32* %x, align 4
  %86 = load i32, i32* %log10_radix.addr, align 4
  %sub144 = sub nsw i32 %86, 1
  store i32 %sub144, i32* %outexp_mod, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.141, %if.end.128
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145, %if.then.118
  %87 = load i8*, i8** %s, align 8
  %incdec.ptr147 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr147, i8** %s, align 8
  br label %for.cond.106

for.end.148:                                      ; preds = %if.then.140, %if.then.127, %for.cond.106
  br label %while.cond.149

while.cond.149:                                   ; preds = %while.body.153, %for.end.148
  %88 = load i32, i32* %outexp_mod, align 4
  %dec150 = add nsw i32 %88, -1
  store i32 %dec150, i32* %outexp_mod, align 4
  %cmp151 = icmp sge i32 %88, 0
  br i1 %cmp151, label %while.body.153, label %while.end.155

while.body.153:                                   ; preds = %while.cond.149
  %89 = load i32, i32* %x, align 4
  %mul154 = mul nsw i32 %89, 10
  store i32 %mul154, i32* %x, align 4
  br label %while.cond.149

while.end.155:                                    ; preds = %while.cond.149
  br label %while.cond.156

while.cond.156:                                   ; preds = %while.body.160, %while.end.155
  %90 = load i32, i32* %j, align 4
  %91 = load i32, i32* %n.addr, align 4
  %add157 = add nsw i32 %91, 1
  %cmp158 = icmp sle i32 %90, %add157
  br i1 %cmp158, label %while.body.160, label %while.end.164

while.body.160:                                   ; preds = %while.cond.156
  %92 = load i32, i32* %x, align 4
  %93 = load i32, i32* %j, align 4
  %inc161 = add nsw i32 %93, 1
  store i32 %inc161, i32* %j, align 4
  %idxprom162 = sext i32 %93 to i64
  %94 = load i32*, i32** %out.addr, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %94, i64 %idxprom162
  store i32 %92, i32* %arrayidx163, align 4
  store i32 0, i32* %x, align 4
  br label %while.cond.156

while.end.164:                                    ; preds = %while.cond.156
  %95 = load i32*, i32** %out.addr, align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %95, i64 2
  %96 = load i32, i32* %arrayidx165, align 4
  %cmp166 = icmp eq i32 %96, 0
  br i1 %cmp166, label %if.then.168, label %if.end.171

if.then.168:                                      ; preds = %while.end.164
  %97 = load i32*, i32** %out.addr, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 0, i32* %arrayidx169, align 4
  %98 = load i32*, i32** %out.addr, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 0, i32* %arrayidx170, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.168, %while.end.164
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mp_sqrt(i32 %n, i32 %radix, i32* %in, i32* %out, i32* %tmp1, i32* %tmp2, i32 %nfft, double* %tmp1fft, double* %tmp2fft, i32* %ip, double* %w) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %tmp1.addr = alloca i32*, align 8
  %tmp2.addr = alloca i32*, align 8
  %nfft.addr = alloca i32, align 4
  %tmp1fft.addr = alloca double*, align 8
  %tmp2fft.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %n_nwt = alloca i32, align 4
  %nfft_nwt = alloca i32, align 4
  %thr = alloca i32, align 4
  %prc = alloca i32, align 4
  %n_tmp1fft = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in, i32** %in.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32* %tmp1, i32** %tmp1.addr, align 8
  store i32* %tmp2, i32** %tmp2.addr, align 8
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %tmp1fft, double** %tmp1fft.addr, align 8
  store double* %tmp2fft, double** %tmp2fft.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32*, i32** %in.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %4 = load i32, i32* %n.addr, align 4
  %5 = load i32, i32* %radix.addr, align 4
  %6 = load i32*, i32** %out.addr, align 8
  call void @mp_load_0(i32 %4, i32 %5, i32* %6)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  %7 = load i32, i32* %radix.addr, align 4
  %8 = load i32, i32* %nfft.addr, align 4
  %call = call i32 @mp_get_nfft_init(i32 %7, i32 %8)
  store i32 %call, i32* %nfft_nwt, align 4
  %9 = load i32, i32* %nfft_nwt, align 4
  %add = add nsw i32 %9, 2
  store i32 %add, i32* %n_nwt, align 4
  %10 = load i32, i32* %n_nwt, align 4
  %11 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp sgt i32 %10, %11
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %12 = load i32, i32* %n.addr, align 4
  store i32 %12, i32* %n_nwt, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %13 = load i32, i32* %n_nwt, align 4
  %14 = load i32, i32* %radix.addr, align 4
  %15 = load i32*, i32** %in.addr, align 8
  %16 = load i32*, i32** %out.addr, align 8
  %17 = load i32*, i32** %tmp1.addr, align 8
  call void @mp_sqrt_init(i32 %13, i32 %14, i32* %15, i32* %16, i32* %17)
  store i32 0, i32* %n_tmp1fft, align 4
  store i32 8, i32* %thr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.7
  %18 = load i32, i32* %nfft_nwt, align 4
  %add8 = add nsw i32 %18, 2
  store i32 %add8, i32* %n_nwt, align 4
  %19 = load i32, i32* %n_nwt, align 4
  %20 = load i32, i32* %n.addr, align 4
  %cmp9 = icmp sgt i32 %19, %20
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.body
  %21 = load i32, i32* %n.addr, align 4
  store i32 %21, i32* %n_nwt, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %do.body
  %22 = load i32, i32* %n_nwt, align 4
  %23 = load i32, i32* %radix.addr, align 4
  %24 = load i32*, i32** %in.addr, align 8
  %25 = load i32*, i32** %out.addr, align 8
  %26 = load i32*, i32** %tmp1.addr, align 8
  %27 = load i32*, i32** %tmp2.addr, align 8
  %28 = load i32, i32* %nfft_nwt, align 4
  %29 = load double*, double** %tmp1fft.addr, align 8
  %30 = load double*, double** %tmp2fft.addr, align 8
  %31 = load i32*, i32** %ip.addr, align 8
  %32 = load double*, double** %w.addr, align 8
  %call12 = call i32 @mp_sqrt_newton(i32 %22, i32 %23, i32* %24, i32* %25, i32* %26, i32* %27, i32 %28, double* %29, double* %30, i32* %31, double* %32, i32* %n_tmp1fft)
  store i32 %call12, i32* %prc, align 4
  %33 = load i32, i32* %thr, align 4
  %34 = load i32, i32* %nfft_nwt, align 4
  %mul = mul nsw i32 %33, %34
  %35 = load i32, i32* %nfft.addr, align 4
  %cmp13 = icmp sge i32 %mul, %35
  br i1 %cmp13, label %if.then.14, label %if.else.19

if.then.14:                                       ; preds = %if.end.11
  store i32 0, i32* %thr, align 4
  %36 = load i32, i32* %prc, align 4
  %mul15 = mul nsw i32 2, %36
  %37 = load i32, i32* %n_nwt, align 4
  %sub = sub nsw i32 %37, 2
  %cmp16 = icmp sle i32 %mul15, %sub
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  %38 = load i32, i32* %nfft_nwt, align 4
  %shr = ashr i32 %38, 1
  store i32 %shr, i32* %nfft_nwt, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.14
  br label %if.end.26

if.else.19:                                       ; preds = %if.end.11
  %39 = load i32, i32* %prc, align 4
  %mul20 = mul nsw i32 3, %39
  %40 = load i32, i32* %n_nwt, align 4
  %sub21 = sub nsw i32 %40, 2
  %cmp22 = icmp slt i32 %mul20, %sub21
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.else.19
  %41 = load i32, i32* %nfft_nwt, align 4
  %shr24 = ashr i32 %41, 1
  store i32 %shr24, i32* %nfft_nwt, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.else.19
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.18
  %42 = load i32, i32* %nfft_nwt, align 4
  %shl = shl i32 %42, 1
  store i32 %shl, i32* %nfft_nwt, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.26
  %43 = load i32, i32* %nfft_nwt, align 4
  %44 = load i32, i32* %nfft.addr, align 4
  %cmp27 = icmp sle i32 %43, %44
  br i1 %cmp27, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define void @mp_imul(i32 %n, i32 %radix, i32* %in1, i32 %in2, i32* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in1.addr = alloca i32*, align 8
  %in2.addr = alloca i32, align 4
  %out.addr = alloca i32*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in1, i32** %in1.addr, align 8
  store i32 %in2, i32* %in2.addr, align 4
  store i32* %out, i32** %out.addr, align 8
  %0 = load i32, i32* %in2.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %in1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32*, i32** %out.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 0
  store i32 %2, i32* %arrayidx1, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %in2.addr, align 4
  %cmp2 = icmp slt i32 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.else.7

if.then.3:                                        ; preds = %if.else
  %5 = load i32*, i32** %in1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx4, align 4
  %sub = sub nsw i32 0, %6
  %7 = load i32*, i32** %out.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %sub, i32* %arrayidx5, align 4
  %8 = load i32, i32* %in2.addr, align 4
  %sub6 = sub nsw i32 0, %8
  store i32 %sub6, i32* %in2.addr, align 4
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %9 = load i32*, i32** %out.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 0, i32* %arrayidx8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %10 = load i32, i32* %n.addr, align 4
  %11 = load i32, i32* %radix.addr, align 4
  %conv = sitofp i32 %11 to double
  %12 = load i32*, i32** %in1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %12, i64 1
  %13 = load i32, i32* %in2.addr, align 4
  %conv11 = sitofp i32 %13 to double
  %14 = load i32*, i32** %out.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %14, i64 1
  call void @mp_unsgn_imul(i32 %10, double %conv, i32* %arrayidx10, double %conv11, i32* %arrayidx12)
  %15 = load i32*, i32** %out.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %16, 0
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.9
  %17 = load i32*, i32** %out.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 0, i32* %arrayidx17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_add(i32 %n, i32 %radix, i32* %in1, i32* %in2, i32* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in1.addr = alloca i32*, align 8
  %in2.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %outsgn = alloca i32, align 4
  %outexp = alloca i32, align 4
  %expdif = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in1, i32** %in1.addr, align 8
  store i32* %in2, i32** %in2.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  %0 = load i32*, i32** %in1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 1
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %in2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 1
  %3 = load i32, i32* %arrayidx1, align 4
  %sub = sub nsw i32 %1, %3
  store i32 %sub, i32* %expdif, align 4
  %4 = load i32*, i32** %in1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 1
  %5 = load i32, i32* %arrayidx2, align 4
  store i32 %5, i32* %outexp, align 4
  %6 = load i32, i32* %expdif, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %in2.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 1
  %8 = load i32, i32* %arrayidx3, align 4
  store i32 %8, i32* %outexp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32*, i32** %in1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx4, align 4
  %11 = load i32*, i32** %in2.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx5, align 4
  %mul = mul nsw i32 %10, %12
  store i32 %mul, i32* %outsgn, align 4
  %13 = load i32, i32* %outsgn, align 4
  %cmp6 = icmp sge i32 %13, 0
  br i1 %cmp6, label %if.then.7, label %if.else.31

if.then.7:                                        ; preds = %if.end
  %14 = load i32, i32* %outsgn, align 4
  %cmp8 = icmp sgt i32 %14, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  %15 = load i32*, i32** %in1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx10, align 4
  store i32 %16, i32* %outsgn, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.then.7
  %17 = load i32*, i32** %in1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx11, align 4
  %19 = load i32*, i32** %in2.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 0
  %20 = load i32, i32* %arrayidx12, align 4
  %add = add nsw i32 %18, %20
  store i32 %add, i32* %outsgn, align 4
  %21 = load i32*, i32** %in1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 1
  %22 = load i32, i32* %arrayidx13, align 4
  %23 = load i32*, i32** %in2.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %23, i64 1
  %24 = load i32, i32* %arrayidx14, align 4
  %add15 = add nsw i32 %22, %24
  store i32 %add15, i32* %outexp, align 4
  store i32 0, i32* %expdif, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.9
  %25 = load i32, i32* %expdif, align 4
  %cmp17 = icmp sge i32 %25, 0
  br i1 %cmp17, label %if.then.18, label %if.else.23

if.then.18:                                       ; preds = %if.end.16
  %26 = load i32, i32* %n.addr, align 4
  %27 = load i32, i32* %radix.addr, align 4
  %28 = load i32, i32* %expdif, align 4
  %29 = load i32*, i32** %in1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %29, i64 2
  %30 = load i32*, i32** %in2.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %30, i64 2
  %31 = load i32*, i32** %out.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %31, i64 2
  %call = call i32 @mp_unexp_add(i32 %26, i32 %27, i32 %28, i32* %arrayidx19, i32* %arrayidx20, i32* %arrayidx21)
  %32 = load i32, i32* %outexp, align 4
  %add22 = add nsw i32 %32, %call
  store i32 %add22, i32* %outexp, align 4
  br label %if.end.30

if.else.23:                                       ; preds = %if.end.16
  %33 = load i32, i32* %n.addr, align 4
  %34 = load i32, i32* %radix.addr, align 4
  %35 = load i32, i32* %expdif, align 4
  %sub24 = sub nsw i32 0, %35
  %36 = load i32*, i32** %in2.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %36, i64 2
  %37 = load i32*, i32** %in1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %37, i64 2
  %38 = load i32*, i32** %out.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %38, i64 2
  %call28 = call i32 @mp_unexp_add(i32 %33, i32 %34, i32 %sub24, i32* %arrayidx25, i32* %arrayidx26, i32* %arrayidx27)
  %39 = load i32, i32* %outexp, align 4
  %add29 = add nsw i32 %39, %call28
  store i32 %add29, i32* %outexp, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.23, %if.then.18
  br label %if.end.54

if.else.31:                                       ; preds = %if.end
  %40 = load i32, i32* %n.addr, align 4
  %41 = load i32*, i32** %in1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %41, i64 1
  %42 = load i32*, i32** %in2.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %42, i64 1
  %call34 = call i32 @mp_unsgn_cmp(i32 %40, i32* %arrayidx32, i32* %arrayidx33)
  store i32 %call34, i32* %outsgn, align 4
  %43 = load i32, i32* %outsgn, align 4
  %cmp35 = icmp sge i32 %43, 0
  br i1 %cmp35, label %if.then.36, label %if.else.41

if.then.36:                                       ; preds = %if.else.31
  %44 = load i32, i32* %n.addr, align 4
  %45 = load i32, i32* %radix.addr, align 4
  %46 = load i32, i32* %expdif, align 4
  %47 = load i32*, i32** %in1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %47, i64 2
  %48 = load i32*, i32** %in2.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %48, i64 2
  %49 = load i32*, i32** %out.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %49, i64 2
  %call40 = call i32 @mp_unexp_sub(i32 %44, i32 %45, i32 %46, i32* %arrayidx37, i32* %arrayidx38, i32* %arrayidx39)
  store i32 %call40, i32* %expdif, align 4
  br label %if.end.47

if.else.41:                                       ; preds = %if.else.31
  %50 = load i32, i32* %n.addr, align 4
  %51 = load i32, i32* %radix.addr, align 4
  %52 = load i32, i32* %expdif, align 4
  %sub42 = sub nsw i32 0, %52
  %53 = load i32*, i32** %in2.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %53, i64 2
  %54 = load i32*, i32** %in1.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %54, i64 2
  %55 = load i32*, i32** %out.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %55, i64 2
  %call46 = call i32 @mp_unexp_sub(i32 %50, i32 %51, i32 %sub42, i32* %arrayidx43, i32* %arrayidx44, i32* %arrayidx45)
  store i32 %call46, i32* %expdif, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.41, %if.then.36
  %56 = load i32, i32* %expdif, align 4
  %57 = load i32, i32* %outexp, align 4
  %sub48 = sub nsw i32 %57, %56
  store i32 %sub48, i32* %outexp, align 4
  %58 = load i32*, i32** %in1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %58, i64 0
  %59 = load i32, i32* %arrayidx49, align 4
  %60 = load i32, i32* %outsgn, align 4
  %mul50 = mul nsw i32 %60, %59
  store i32 %mul50, i32* %outsgn, align 4
  %61 = load i32, i32* %expdif, align 4
  %62 = load i32, i32* %n.addr, align 4
  %cmp51 = icmp eq i32 %61, %62
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.47
  store i32 0, i32* %outsgn, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.47
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.30
  %63 = load i32, i32* %outsgn, align 4
  %cmp55 = icmp eq i32 %63, 0
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.54
  store i32 0, i32* %outexp, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.54
  %64 = load i32, i32* %outsgn, align 4
  %65 = load i32*, i32** %out.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %64, i32* %arrayidx58, align 4
  %66 = load i32, i32* %outexp, align 4
  %67 = load i32*, i32** %out.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %66, i32* %arrayidx59, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_sub(i32 %n, i32 %radix, i32* %in1, i32* %in2, i32* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in1.addr = alloca i32*, align 8
  %in2.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %outsgn = alloca i32, align 4
  %outexp = alloca i32, align 4
  %expdif = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in1, i32** %in1.addr, align 8
  store i32* %in2, i32** %in2.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  %0 = load i32*, i32** %in1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 1
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %in2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 1
  %3 = load i32, i32* %arrayidx1, align 4
  %sub = sub nsw i32 %1, %3
  store i32 %sub, i32* %expdif, align 4
  %4 = load i32*, i32** %in1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 1
  %5 = load i32, i32* %arrayidx2, align 4
  store i32 %5, i32* %outexp, align 4
  %6 = load i32, i32* %expdif, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %in2.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 1
  %8 = load i32, i32* %arrayidx3, align 4
  store i32 %8, i32* %outexp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32*, i32** %in1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx4, align 4
  %11 = load i32*, i32** %in2.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx5, align 4
  %mul = mul nsw i32 %10, %12
  store i32 %mul, i32* %outsgn, align 4
  %13 = load i32, i32* %outsgn, align 4
  %cmp6 = icmp sle i32 %13, 0
  br i1 %cmp6, label %if.then.7, label %if.else.31

if.then.7:                                        ; preds = %if.end
  %14 = load i32, i32* %outsgn, align 4
  %cmp8 = icmp slt i32 %14, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  %15 = load i32*, i32** %in1.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx10, align 4
  store i32 %16, i32* %outsgn, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.then.7
  %17 = load i32*, i32** %in1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx11, align 4
  %19 = load i32*, i32** %in2.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 0
  %20 = load i32, i32* %arrayidx12, align 4
  %sub13 = sub nsw i32 %18, %20
  store i32 %sub13, i32* %outsgn, align 4
  %21 = load i32*, i32** %in1.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %21, i64 1
  %22 = load i32, i32* %arrayidx14, align 4
  %23 = load i32*, i32** %in2.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %23, i64 1
  %24 = load i32, i32* %arrayidx15, align 4
  %add = add nsw i32 %22, %24
  store i32 %add, i32* %outexp, align 4
  store i32 0, i32* %expdif, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.9
  %25 = load i32, i32* %expdif, align 4
  %cmp17 = icmp sge i32 %25, 0
  br i1 %cmp17, label %if.then.18, label %if.else.23

if.then.18:                                       ; preds = %if.end.16
  %26 = load i32, i32* %n.addr, align 4
  %27 = load i32, i32* %radix.addr, align 4
  %28 = load i32, i32* %expdif, align 4
  %29 = load i32*, i32** %in1.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %29, i64 2
  %30 = load i32*, i32** %in2.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %30, i64 2
  %31 = load i32*, i32** %out.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %31, i64 2
  %call = call i32 @mp_unexp_add(i32 %26, i32 %27, i32 %28, i32* %arrayidx19, i32* %arrayidx20, i32* %arrayidx21)
  %32 = load i32, i32* %outexp, align 4
  %add22 = add nsw i32 %32, %call
  store i32 %add22, i32* %outexp, align 4
  br label %if.end.30

if.else.23:                                       ; preds = %if.end.16
  %33 = load i32, i32* %n.addr, align 4
  %34 = load i32, i32* %radix.addr, align 4
  %35 = load i32, i32* %expdif, align 4
  %sub24 = sub nsw i32 0, %35
  %36 = load i32*, i32** %in2.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %36, i64 2
  %37 = load i32*, i32** %in1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %37, i64 2
  %38 = load i32*, i32** %out.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %38, i64 2
  %call28 = call i32 @mp_unexp_add(i32 %33, i32 %34, i32 %sub24, i32* %arrayidx25, i32* %arrayidx26, i32* %arrayidx27)
  %39 = load i32, i32* %outexp, align 4
  %add29 = add nsw i32 %39, %call28
  store i32 %add29, i32* %outexp, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.23, %if.then.18
  br label %if.end.54

if.else.31:                                       ; preds = %if.end
  %40 = load i32, i32* %n.addr, align 4
  %41 = load i32*, i32** %in1.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %41, i64 1
  %42 = load i32*, i32** %in2.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %42, i64 1
  %call34 = call i32 @mp_unsgn_cmp(i32 %40, i32* %arrayidx32, i32* %arrayidx33)
  store i32 %call34, i32* %outsgn, align 4
  %43 = load i32, i32* %outsgn, align 4
  %cmp35 = icmp sge i32 %43, 0
  br i1 %cmp35, label %if.then.36, label %if.else.41

if.then.36:                                       ; preds = %if.else.31
  %44 = load i32, i32* %n.addr, align 4
  %45 = load i32, i32* %radix.addr, align 4
  %46 = load i32, i32* %expdif, align 4
  %47 = load i32*, i32** %in1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %47, i64 2
  %48 = load i32*, i32** %in2.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %48, i64 2
  %49 = load i32*, i32** %out.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %49, i64 2
  %call40 = call i32 @mp_unexp_sub(i32 %44, i32 %45, i32 %46, i32* %arrayidx37, i32* %arrayidx38, i32* %arrayidx39)
  store i32 %call40, i32* %expdif, align 4
  br label %if.end.47

if.else.41:                                       ; preds = %if.else.31
  %50 = load i32, i32* %n.addr, align 4
  %51 = load i32, i32* %radix.addr, align 4
  %52 = load i32, i32* %expdif, align 4
  %sub42 = sub nsw i32 0, %52
  %53 = load i32*, i32** %in2.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %53, i64 2
  %54 = load i32*, i32** %in1.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %54, i64 2
  %55 = load i32*, i32** %out.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %55, i64 2
  %call46 = call i32 @mp_unexp_sub(i32 %50, i32 %51, i32 %sub42, i32* %arrayidx43, i32* %arrayidx44, i32* %arrayidx45)
  store i32 %call46, i32* %expdif, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.41, %if.then.36
  %56 = load i32, i32* %expdif, align 4
  %57 = load i32, i32* %outexp, align 4
  %sub48 = sub nsw i32 %57, %56
  store i32 %sub48, i32* %outexp, align 4
  %58 = load i32*, i32** %in1.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %58, i64 0
  %59 = load i32, i32* %arrayidx49, align 4
  %60 = load i32, i32* %outsgn, align 4
  %mul50 = mul nsw i32 %60, %59
  store i32 %mul50, i32* %outsgn, align 4
  %61 = load i32, i32* %expdif, align 4
  %62 = load i32, i32* %n.addr, align 4
  %cmp51 = icmp eq i32 %61, %62
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.47
  store i32 0, i32* %outsgn, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.47
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.30
  %63 = load i32, i32* %outsgn, align 4
  %cmp55 = icmp eq i32 %63, 0
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.54
  store i32 0, i32* %outexp, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.54
  %64 = load i32, i32* %outsgn, align 4
  %65 = load i32*, i32** %out.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %64, i32* %arrayidx58, align 4
  %66 = load i32, i32* %outexp, align 4
  %67 = load i32*, i32** %out.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %66, i32* %arrayidx59, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_idiv_2(i32 %n, i32 %radix, i32* %in, i32* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %ix = alloca i32, align 4
  %carry = alloca i32, align 4
  %shift = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in, i32** %in.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  %0 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %out.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  store i32 %1, i32* %arrayidx1, align 4
  store i32 0, i32* %shift, align 4
  %3 = load i32*, i32** %in.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 2
  %4 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %shift, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32*, i32** %in.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 1
  %6 = load i32, i32* %arrayidx3, align 4
  %7 = load i32, i32* %shift, align 4
  %sub = sub nsw i32 %6, %7
  %8 = load i32*, i32** %out.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 %sub, i32* %arrayidx4, align 4
  %9 = load i32, i32* %shift, align 4
  %sub5 = sub nsw i32 0, %9
  store i32 %sub5, i32* %carry, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %11, 1
  %12 = load i32, i32* %shift, align 4
  %sub6 = sub nsw i32 %add, %12
  %cmp7 = icmp sle i32 %10, %sub6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %shift, align 4
  %add8 = add nsw i32 %13, %14
  %idxprom = sext i32 %add8 to i64
  %15 = load i32*, i32** %in.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %15, i64 %idxprom
  %16 = load i32, i32* %arrayidx9, align 4
  %17 = load i32, i32* %radix.addr, align 4
  %18 = load i32, i32* %carry, align 4
  %and = and i32 %17, %18
  %add10 = add nsw i32 %16, %and
  store i32 %add10, i32* %ix, align 4
  %19 = load i32, i32* %ix, align 4
  %and11 = and i32 %19, 1
  %sub12 = sub nsw i32 0, %and11
  store i32 %sub12, i32* %carry, align 4
  %20 = load i32, i32* %ix, align 4
  %shr = ashr i32 %20, 1
  %21 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load i32*, i32** %out.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %22, i64 %idxprom13
  store i32 %shr, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %shift, align 4
  %cmp15 = icmp sgt i32 %24, 0
  br i1 %cmp15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %for.end
  %25 = load i32, i32* %radix.addr, align 4
  %26 = load i32, i32* %carry, align 4
  %and17 = and i32 %25, %26
  %shr18 = ashr i32 %and17, 1
  %27 = load i32, i32* %n.addr, align 4
  %add19 = add nsw i32 %27, 1
  %idxprom20 = sext i32 %add19 to i64
  %28 = load i32*, i32** %out.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %28, i64 %idxprom20
  store i32 %shr18, i32* %arrayidx21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.16, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_mul(i32 %n, i32 %radix, i32* %in1, i32* %in2, i32* %out, i32* %tmp, i32 %nfft, double* %tmp1fft, double* %tmp2fft, double* %tmp3fft, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in1.addr = alloca i32*, align 8
  %in2.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %nfft.addr = alloca i32, align 4
  %tmp1fft.addr = alloca double*, align 8
  %tmp2fft.addr = alloca double*, align 8
  %tmp3fft.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %n_h = alloca i32, align 4
  %shift = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in1, i32** %in1.addr, align 8
  store i32* %in2, i32** %in2.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32* %tmp, i32** %tmp.addr, align 8
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %tmp1fft, double** %tmp1fft.addr, align 8
  store double* %tmp2fft, double** %tmp2fft.addr, align 8
  store double* %tmp3fft, double** %tmp3fft.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %nfft.addr, align 4
  %shr = ashr i32 %0, 1
  %add = add nsw i32 %shr, 1
  store i32 %add, i32* %shift, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i32, i32* %shift, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %shift, align 4
  %add3 = add nsw i32 %3, 2
  %idxprom = sext i32 %add3 to i64
  %4 = load i32*, i32** %in1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %shift, align 4
  %add4 = add nsw i32 %6, 2
  %idxprom5 = sext i32 %add4 to i64
  %7 = load i32*, i32** %in2.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %7, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %5, %8
  %cmp8 = icmp ne i32 %add7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = load i32, i32* %shift, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %shift, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %10 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %10, 2
  %add9 = add nsw i32 %div, 1
  store i32 %add9, i32* %n_h, align 4
  %11 = load i32, i32* %n_h, align 4
  %12 = load i32, i32* %n.addr, align 4
  %13 = load i32, i32* %shift, align 4
  %sub = sub nsw i32 %12, %13
  %cmp10 = icmp slt i32 %11, %sub
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %while.end
  %14 = load i32, i32* %n.addr, align 4
  %15 = load i32, i32* %shift, align 4
  %sub12 = sub nsw i32 %14, %15
  store i32 %sub12, i32* %n_h, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %while.end
  %16 = load i32, i32* %n.addr, align 4
  %17 = load i32, i32* %radix.addr, align 4
  %18 = load i32, i32* %nfft.addr, align 4
  %19 = load i32*, i32** %in1.addr, align 8
  %20 = load double*, double** %tmp1fft.addr, align 8
  call void @mp_mul_i2d(i32 %16, i32 %17, i32 %18, i32 0, i32* %19, double* %20)
  %21 = load i32, i32* %nfft.addr, align 4
  %22 = load double*, double** %tmp1fft.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %22, i64 1
  %23 = load i32*, i32** %ip.addr, align 8
  %24 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %21, i32 1, double* %arrayidx14, i32* %23, double* %24)
  %25 = load i32, i32* %n.addr, align 4
  %26 = load i32, i32* %radix.addr, align 4
  %27 = load i32, i32* %nfft.addr, align 4
  %28 = load i32, i32* %shift, align 4
  %29 = load i32*, i32** %in2.addr, align 8
  %30 = load double*, double** %tmp3fft.addr, align 8
  call void @mp_mul_i2d(i32 %25, i32 %26, i32 %27, i32 %28, i32* %29, double* %30)
  %31 = load i32, i32* %nfft.addr, align 4
  %32 = load double*, double** %tmp3fft.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %32, i64 1
  %33 = load i32*, i32** %ip.addr, align 8
  %34 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %31, i32 1, double* %arrayidx15, i32* %33, double* %34)
  %35 = load i32, i32* %nfft.addr, align 4
  %36 = load double*, double** %tmp1fft.addr, align 8
  %37 = load double*, double** %tmp3fft.addr, align 8
  call void @mp_mul_cmul(i32 %35, double* %36, double* %37)
  %38 = load i32, i32* %n.addr, align 4
  %39 = load i32, i32* %radix.addr, align 4
  %40 = load i32, i32* %nfft.addr, align 4
  %41 = load i32*, i32** %in2.addr, align 8
  %42 = load double*, double** %tmp2fft.addr, align 8
  call void @mp_mul_i2d(i32 %38, i32 %39, i32 %40, i32 0, i32* %41, double* %42)
  %43 = load i32, i32* %nfft.addr, align 4
  %44 = load double*, double** %tmp2fft.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %44, i64 1
  %45 = load i32*, i32** %ip.addr, align 8
  %46 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %43, i32 1, double* %arrayidx16, i32* %45, double* %46)
  %47 = load i32, i32* %nfft.addr, align 4
  %48 = load double*, double** %tmp2fft.addr, align 8
  %49 = load double*, double** %tmp1fft.addr, align 8
  call void @mp_mul_cmul(i32 %47, double* %48, double* %49)
  %50 = load i32, i32* %nfft.addr, align 4
  %51 = load double*, double** %tmp1fft.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %51, i64 1
  %52 = load i32*, i32** %ip.addr, align 8
  %53 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %50, i32 -1, double* %arrayidx17, i32* %52, double* %53)
  %54 = load i32, i32* %n.addr, align 4
  %55 = load i32, i32* %radix.addr, align 4
  %56 = load i32, i32* %nfft.addr, align 4
  %57 = load double*, double** %tmp1fft.addr, align 8
  %58 = load i32*, i32** %tmp.addr, align 8
  call void @mp_mul_d2i(i32 %54, i32 %55, i32 %56, double* %57, i32* %58)
  %59 = load i32, i32* %n.addr, align 4
  %60 = load i32, i32* %radix.addr, align 4
  %61 = load i32, i32* %nfft.addr, align 4
  %62 = load i32, i32* %shift, align 4
  %63 = load i32*, i32** %in1.addr, align 8
  %64 = load double*, double** %tmp1fft.addr, align 8
  call void @mp_mul_i2d(i32 %59, i32 %60, i32 %61, i32 %62, i32* %63, double* %64)
  %65 = load i32, i32* %nfft.addr, align 4
  %66 = load double*, double** %tmp1fft.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %66, i64 1
  %67 = load i32*, i32** %ip.addr, align 8
  %68 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %65, i32 1, double* %arrayidx18, i32* %67, double* %68)
  %69 = load i32, i32* %nfft.addr, align 4
  %70 = load double*, double** %tmp1fft.addr, align 8
  %71 = load double*, double** %tmp2fft.addr, align 8
  %72 = load double*, double** %tmp3fft.addr, align 8
  call void @mp_mul_cmuladd(i32 %69, double* %70, double* %71, double* %72)
  %73 = load i32, i32* %nfft.addr, align 4
  %74 = load double*, double** %tmp3fft.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %74, i64 1
  %75 = load i32*, i32** %ip.addr, align 8
  %76 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %73, i32 -1, double* %arrayidx19, i32* %75, double* %76)
  %77 = load i32, i32* %n_h, align 4
  %78 = load i32, i32* %radix.addr, align 4
  %79 = load i32, i32* %nfft.addr, align 4
  %80 = load double*, double** %tmp3fft.addr, align 8
  %81 = load i32*, i32** %out.addr, align 8
  call void @mp_mul_d2i(i32 %77, i32 %78, i32 %79, double* %80, i32* %81)
  %82 = load i32, i32* %n.addr, align 4
  %83 = load i32, i32* %radix.addr, align 4
  %84 = load i32*, i32** %out.addr, align 8
  %85 = load i32*, i32** %tmp.addr, align 8
  %86 = load i32*, i32** %out.addr, align 8
  call void @mp_add(i32 %82, i32 %83, i32* %84, i32* %85, i32* %86)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_squh(i32 %n, i32 %radix, i32* %in, i32* %out, i32 %nfft, double* %inoutfft, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %nfft.addr = alloca i32, align 4
  %inoutfft.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in, i32** %in.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %inoutfft, double** %inoutfft.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %radix.addr, align 4
  %2 = load i32, i32* %nfft.addr, align 4
  %3 = load i32*, i32** %in.addr, align 8
  %4 = load double*, double** %inoutfft.addr, align 8
  call void @mp_mul_i2d(i32 %0, i32 %1, i32 %2, i32 0, i32* %3, double* %4)
  %5 = load i32, i32* %nfft.addr, align 4
  %6 = load double*, double** %inoutfft.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %6, i64 1
  %7 = load i32*, i32** %ip.addr, align 8
  %8 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %5, i32 1, double* %arrayidx, i32* %7, double* %8)
  %9 = load i32, i32* %nfft.addr, align 4
  %10 = load double*, double** %inoutfft.addr, align 8
  call void @mp_mul_csqu(i32 %9, double* %10)
  %11 = load i32, i32* %nfft.addr, align 4
  %12 = load double*, double** %inoutfft.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %12, i64 1
  %13 = load i32*, i32** %ip.addr, align 8
  %14 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %11, i32 -1, double* %arrayidx1, i32* %13, double* %14)
  %15 = load i32, i32* %n.addr, align 4
  %16 = load i32, i32* %radix.addr, align 4
  %17 = load i32, i32* %nfft.addr, align 4
  %18 = load double*, double** %inoutfft.addr, align 8
  %19 = load i32*, i32** %out.addr, align 8
  call void @mp_mul_d2i(i32 %15, i32 %16, i32 %17, double* %18, i32* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mp_inv(i32 %n, i32 %radix, i32* %in, i32* %out, i32* %tmp1, i32* %tmp2, i32 %nfft, double* %tmp1fft, double* %tmp2fft, i32* %ip, double* %w) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %tmp1.addr = alloca i32*, align 8
  %tmp2.addr = alloca i32*, align 8
  %nfft.addr = alloca i32, align 4
  %tmp1fft.addr = alloca double*, align 8
  %tmp2fft.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %n_nwt = alloca i32, align 4
  %nfft_nwt = alloca i32, align 4
  %thr = alloca i32, align 4
  %prc = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in, i32** %in.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32* %tmp1, i32** %tmp1.addr, align 8
  store i32* %tmp2, i32** %tmp2.addr, align 8
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %tmp1fft, double** %tmp1fft.addr, align 8
  store double* %tmp2fft, double** %tmp2fft.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %radix.addr, align 4
  %3 = load i32, i32* %nfft.addr, align 4
  %call = call i32 @mp_get_nfft_init(i32 %2, i32 %3)
  store i32 %call, i32* %nfft_nwt, align 4
  %4 = load i32, i32* %nfft_nwt, align 4
  %add = add nsw i32 %4, 2
  store i32 %add, i32* %n_nwt, align 4
  %5 = load i32, i32* %n_nwt, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sgt i32 %5, %6
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %7 = load i32, i32* %n.addr, align 4
  store i32 %7, i32* %n_nwt, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %8 = load i32, i32* %n_nwt, align 4
  %9 = load i32, i32* %radix.addr, align 4
  %10 = load i32*, i32** %in.addr, align 8
  %11 = load i32*, i32** %out.addr, align 8
  call void @mp_inv_init(i32 %8, i32 %9, i32* %10, i32* %11)
  store i32 8, i32* %thr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.3
  %12 = load i32, i32* %nfft_nwt, align 4
  %add4 = add nsw i32 %12, 2
  store i32 %add4, i32* %n_nwt, align 4
  %13 = load i32, i32* %n_nwt, align 4
  %14 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp sgt i32 %13, %14
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.body
  %15 = load i32, i32* %n.addr, align 4
  store i32 %15, i32* %n_nwt, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %do.body
  %16 = load i32, i32* %n_nwt, align 4
  %17 = load i32, i32* %radix.addr, align 4
  %18 = load i32*, i32** %in.addr, align 8
  %19 = load i32*, i32** %out.addr, align 8
  %20 = load i32*, i32** %tmp1.addr, align 8
  %21 = load i32*, i32** %tmp2.addr, align 8
  %22 = load i32, i32* %nfft_nwt, align 4
  %23 = load double*, double** %tmp1fft.addr, align 8
  %24 = load double*, double** %tmp2fft.addr, align 8
  %25 = load i32*, i32** %ip.addr, align 8
  %26 = load double*, double** %w.addr, align 8
  %call8 = call i32 @mp_inv_newton(i32 %16, i32 %17, i32* %18, i32* %19, i32* %20, i32* %21, i32 %22, double* %23, double* %24, i32* %25, double* %26)
  store i32 %call8, i32* %prc, align 4
  %27 = load i32, i32* %thr, align 4
  %28 = load i32, i32* %nfft_nwt, align 4
  %mul = mul nsw i32 %27, %28
  %29 = load i32, i32* %nfft.addr, align 4
  %cmp9 = icmp sge i32 %mul, %29
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  store i32 0, i32* %thr, align 4
  %30 = load i32, i32* %prc, align 4
  %mul11 = mul nsw i32 2, %30
  %31 = load i32, i32* %n_nwt, align 4
  %sub = sub nsw i32 %31, 2
  %cmp12 = icmp sle i32 %mul11, %sub
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  %32 = load i32, i32* %nfft_nwt, align 4
  %shr = ashr i32 %32, 1
  store i32 %shr, i32* %nfft_nwt, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.10
  br label %if.end.21

if.else:                                          ; preds = %if.end.7
  %33 = load i32, i32* %prc, align 4
  %mul15 = mul nsw i32 3, %33
  %34 = load i32, i32* %n_nwt, align 4
  %sub16 = sub nsw i32 %34, 2
  %cmp17 = icmp slt i32 %mul15, %sub16
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.else
  %35 = load i32, i32* %nfft_nwt, align 4
  %shr19 = ashr i32 %35, 1
  store i32 %shr19, i32* %nfft_nwt, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.14
  %36 = load i32, i32* %nfft_nwt, align 4
  %shl = shl i32 %36, 1
  store i32 %shl, i32* %nfft_nwt, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.21
  %37 = load i32, i32* %nfft_nwt, align 4
  %38 = load i32, i32* %nfft.addr, align 4
  %cmp22 = icmp sle i32 %37, %38
  br i1 %cmp22, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define void @mp_squ(i32 %n, i32 %radix, i32* %in, i32* %out, i32* %tmp, i32 %nfft, double* %tmp1fft, double* %tmp2fft, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %nfft.addr = alloca i32, align 4
  %tmp1fft.addr = alloca double*, align 8
  %tmp2fft.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %n_h = alloca i32, align 4
  %shift = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in, i32** %in.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32* %tmp, i32** %tmp.addr, align 8
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %tmp1fft, double** %tmp1fft.addr, align 8
  store double* %tmp2fft, double** %tmp2fft.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %nfft.addr, align 4
  %shr = ashr i32 %0, 1
  %add = add nsw i32 %shr, 1
  store i32 %add, i32* %shift, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i32, i32* %shift, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %shift, align 4
  %add3 = add nsw i32 %3, 2
  %idxprom = sext i32 %add3 to i64
  %4 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load i32, i32* %shift, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %shift, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %7 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %7, 2
  %add5 = add nsw i32 %div, 1
  store i32 %add5, i32* %n_h, align 4
  %8 = load i32, i32* %n_h, align 4
  %9 = load i32, i32* %n.addr, align 4
  %10 = load i32, i32* %shift, align 4
  %sub = sub nsw i32 %9, %10
  %cmp6 = icmp slt i32 %8, %sub
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %while.end
  %11 = load i32, i32* %n.addr, align 4
  %12 = load i32, i32* %shift, align 4
  %sub8 = sub nsw i32 %11, %12
  store i32 %sub8, i32* %n_h, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %while.end
  %13 = load i32, i32* %n.addr, align 4
  %14 = load i32, i32* %radix.addr, align 4
  %15 = load i32, i32* %nfft.addr, align 4
  %16 = load i32*, i32** %in.addr, align 8
  %17 = load double*, double** %tmp1fft.addr, align 8
  call void @mp_mul_i2d(i32 %13, i32 %14, i32 %15, i32 0, i32* %16, double* %17)
  %18 = load i32, i32* %nfft.addr, align 4
  %19 = load double*, double** %tmp1fft.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %19, i64 1
  %20 = load i32*, i32** %ip.addr, align 8
  %21 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %18, i32 1, double* %arrayidx10, i32* %20, double* %21)
  %22 = load i32, i32* %n.addr, align 4
  %23 = load i32, i32* %radix.addr, align 4
  %24 = load i32, i32* %nfft.addr, align 4
  %25 = load i32, i32* %shift, align 4
  %26 = load i32*, i32** %in.addr, align 8
  %27 = load double*, double** %tmp2fft.addr, align 8
  call void @mp_mul_i2d(i32 %22, i32 %23, i32 %24, i32 %25, i32* %26, double* %27)
  %28 = load i32, i32* %nfft.addr, align 4
  %29 = load double*, double** %tmp2fft.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %29, i64 1
  %30 = load i32*, i32** %ip.addr, align 8
  %31 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %28, i32 1, double* %arrayidx11, i32* %30, double* %31)
  %32 = load i32, i32* %nfft.addr, align 4
  %33 = load double*, double** %tmp1fft.addr, align 8
  %34 = load double*, double** %tmp2fft.addr, align 8
  call void @mp_mul_cmul(i32 %32, double* %33, double* %34)
  %35 = load i32, i32* %nfft.addr, align 4
  %36 = load double*, double** %tmp2fft.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %36, i64 1
  %37 = load i32*, i32** %ip.addr, align 8
  %38 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %35, i32 -1, double* %arrayidx12, i32* %37, double* %38)
  %39 = load i32, i32* %n_h, align 4
  %40 = load i32, i32* %radix.addr, align 4
  %41 = load i32, i32* %nfft.addr, align 4
  %42 = load double*, double** %tmp2fft.addr, align 8
  %43 = load i32*, i32** %tmp.addr, align 8
  call void @mp_mul_d2i(i32 %39, i32 %40, i32 %41, double* %42, i32* %43)
  %44 = load i32, i32* %n_h, align 4
  %45 = load i32, i32* %radix.addr, align 4
  %46 = load i32*, i32** %tmp.addr, align 8
  %47 = load i32*, i32** %tmp.addr, align 8
  %48 = load i32*, i32** %tmp.addr, align 8
  call void @mp_add(i32 %44, i32 %45, i32* %46, i32* %47, i32* %48)
  %49 = load i32, i32* %nfft.addr, align 4
  %50 = load double*, double** %tmp1fft.addr, align 8
  call void @mp_mul_csqu(i32 %49, double* %50)
  %51 = load i32, i32* %nfft.addr, align 4
  %52 = load double*, double** %tmp1fft.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %52, i64 1
  %53 = load i32*, i32** %ip.addr, align 8
  %54 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %51, i32 -1, double* %arrayidx13, i32* %53, double* %54)
  %55 = load i32, i32* %n.addr, align 4
  %56 = load i32, i32* %radix.addr, align 4
  %57 = load i32, i32* %nfft.addr, align 4
  %58 = load double*, double** %tmp1fft.addr, align 8
  %59 = load i32*, i32** %out.addr, align 8
  call void @mp_mul_d2i(i32 %55, i32 %56, i32 %57, double* %58, i32* %59)
  %60 = load i32, i32* %n.addr, align 4
  %61 = load i32, i32* %radix.addr, align 4
  %62 = load i32*, i32** %out.addr, align 8
  %63 = load i32*, i32** %tmp.addr, align 8
  %64 = load i32*, i32** %out.addr, align 8
  call void @mp_add(i32 %60, i32 %61, i32* %62, i32* %63, i32* %64)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mp_idiv(i32 %n, i32 %radix, i32* %in1, i32 %in2, i32* %out) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in1.addr = alloca i32*, align 8
  %in2.addr = alloca i32, align 4
  %out.addr = alloca i32*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in1, i32** %in1.addr, align 8
  store i32 %in2, i32* %in2.addr, align 4
  store i32* %out, i32** %out.addr, align 8
  %0 = load i32, i32* %in2.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %in2.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %2 = load i32*, i32** %in1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32*, i32** %out.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 %3, i32* %arrayidx3, align 4
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %5 = load i32*, i32** %in1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx4, align 4
  %sub = sub nsw i32 0, %6
  %7 = load i32*, i32** %out.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %sub, i32* %arrayidx5, align 4
  %8 = load i32, i32* %in2.addr, align 4
  %sub6 = sub nsw i32 0, %8
  store i32 %sub6, i32* %in2.addr, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.2
  %9 = load i32*, i32** %in1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %11 = load i32, i32* %n.addr, align 4
  %12 = load i32, i32* %radix.addr, align 4
  %13 = load i32*, i32** %out.addr, align 8
  call void @mp_load_0(i32 %11, i32 %12, i32* %13)
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %14 = load i32, i32* %n.addr, align 4
  %15 = load i32, i32* %radix.addr, align 4
  %conv = sitofp i32 %15 to double
  %16 = load i32*, i32** %in1.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %16, i64 1
  %17 = load i32, i32* %in2.addr, align 4
  %conv13 = sitofp i32 %17 to double
  %18 = load i32*, i32** %out.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %18, i64 1
  call void @mp_unsgn_idiv(i32 %14, double %conv, i32* %arrayidx12, double %conv13, i32* %arrayidx14)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @mp_sprintf(i32 %n, i32 %log10_radix, i32* %in, i8* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %log10_radix.addr = alloca i32, align 4
  %in.addr = alloca i32*, align 8
  %out.addr = alloca i8*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %outexp = alloca i32, align 4
  %shift = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %log10_radix, i32* %log10_radix.addr, align 4
  store i32* %in, i32** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  %0 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %out.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %out.addr, align 8
  store i8 45, i8* %2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** %in.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 2
  %4 = load i32, i32* %arrayidx1, align 4
  store i32 %4, i32* %x, align 4
  %5 = load i32, i32* %log10_radix.addr, align 4
  store i32 %5, i32* %shift, align 4
  %6 = load i32, i32* %log10_radix.addr, align 4
  store i32 %6, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %k, align 4
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %x, align 4
  %rem = srem i32 %8, 10
  store i32 %rem, i32* %y, align 4
  %9 = load i32, i32* %x, align 4
  %div = sdiv i32 %9, 10
  store i32 %div, i32* %x, align 4
  %10 = load i32, i32* %y, align 4
  %add = add nsw i32 48, %10
  %conv = trunc i32 %add to i8
  %11 = load i32, i32* %k, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8*, i8** %out.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %12, i64 %idxprom
  store i8 %conv, i8* %arrayidx3, align 1
  %13 = load i32, i32* %y, align 4
  %cmp4 = icmp ne i32 %13, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  %14 = load i32, i32* %k, align 4
  store i32 %14, i32* %shift, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %15 = load i32, i32* %k, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %shift, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load i8*, i8** %out.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %17, i64 %idxprom8
  %18 = load i8, i8* %arrayidx9, align 1
  %19 = load i8*, i8** %out.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %18, i8* %arrayidx10, align 1
  %20 = load i8*, i8** %out.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 46, i8* %arrayidx11, align 1
  store i32 1, i32* %k, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.22, %for.end
  %21 = load i32, i32* %k, align 4
  %22 = load i32, i32* %log10_radix.addr, align 4
  %23 = load i32, i32* %shift, align 4
  %sub = sub nsw i32 %22, %23
  %cmp13 = icmp sle i32 %21, %sub
  br i1 %cmp13, label %for.body.15, label %for.end.23

for.body.15:                                      ; preds = %for.cond.12
  %24 = load i32, i32* %k, align 4
  %25 = load i32, i32* %shift, align 4
  %add16 = add nsw i32 %24, %25
  %idxprom17 = sext i32 %add16 to i64
  %26 = load i8*, i8** %out.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %26, i64 %idxprom17
  %27 = load i8, i8* %arrayidx18, align 1
  %28 = load i32, i32* %k, align 4
  %add19 = add nsw i32 %28, 1
  %idxprom20 = sext i32 %add19 to i64
  %29 = load i8*, i8** %out.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %29, i64 %idxprom20
  store i8 %27, i8* %arrayidx21, align 1
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.15
  %30 = load i32, i32* %k, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.12

for.end.23:                                       ; preds = %for.cond.12
  %31 = load i32, i32* %log10_radix.addr, align 4
  %32 = load i32, i32* %shift, align 4
  %sub24 = sub nsw i32 %31, %32
  store i32 %sub24, i32* %outexp, align 4
  %33 = load i32, i32* %outexp, align 4
  %add25 = add nsw i32 %33, 2
  %34 = load i8*, i8** %out.addr, align 8
  %idx.ext = sext i32 %add25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr, i8** %out.addr, align 8
  store i32 3, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.49, %for.end.23
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %n.addr, align 4
  %add27 = add nsw i32 %36, 1
  %cmp28 = icmp sle i32 %35, %add27
  br i1 %cmp28, label %for.body.30, label %for.end.51

for.body.30:                                      ; preds = %for.cond.26
  %37 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %37 to i64
  %38 = load i32*, i32** %in.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %38, i64 %idxprom31
  %39 = load i32, i32* %arrayidx32, align 4
  store i32 %39, i32* %x, align 4
  %40 = load i32, i32* %log10_radix.addr, align 4
  %sub33 = sub nsw i32 %40, 1
  store i32 %sub33, i32* %k, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.44, %for.body.30
  %41 = load i32, i32* %k, align 4
  %cmp35 = icmp sge i32 %41, 0
  br i1 %cmp35, label %for.body.37, label %for.end.46

for.body.37:                                      ; preds = %for.cond.34
  %42 = load i32, i32* %x, align 4
  %rem38 = srem i32 %42, 10
  store i32 %rem38, i32* %y, align 4
  %43 = load i32, i32* %x, align 4
  %div39 = sdiv i32 %43, 10
  store i32 %div39, i32* %x, align 4
  %44 = load i32, i32* %y, align 4
  %add40 = add nsw i32 48, %44
  %conv41 = trunc i32 %add40 to i8
  %45 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %45 to i64
  %46 = load i8*, i8** %out.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %46, i64 %idxprom42
  store i8 %conv41, i8* %arrayidx43, align 1
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.37
  %47 = load i32, i32* %k, align 4
  %dec45 = add nsw i32 %47, -1
  store i32 %dec45, i32* %k, align 4
  br label %for.cond.34

for.end.46:                                       ; preds = %for.cond.34
  %48 = load i32, i32* %log10_radix.addr, align 4
  %49 = load i8*, i8** %out.addr, align 8
  %idx.ext47 = sext i32 %48 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %49, i64 %idx.ext47
  store i8* %add.ptr48, i8** %out.addr, align 8
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.46
  %50 = load i32, i32* %j, align 4
  %inc50 = add nsw i32 %50, 1
  store i32 %inc50, i32* %j, align 4
  br label %for.cond.26

for.end.51:                                       ; preds = %for.cond.26
  %51 = load i8*, i8** %out.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr52, i8** %out.addr, align 8
  store i8 101, i8* %51, align 1
  %52 = load i32, i32* %log10_radix.addr, align 4
  %53 = load i32*, i32** %in.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %53, i64 1
  %54 = load i32, i32* %arrayidx53, align 4
  %mul = mul nsw i32 %52, %54
  %55 = load i32, i32* %outexp, align 4
  %add54 = add nsw i32 %55, %mul
  store i32 %add54, i32* %outexp, align 4
  %56 = load i8*, i8** %out.addr, align 8
  %57 = load i32, i32* %outexp, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 %57) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_load_0(i32 %n, i32 %radix, i32* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %out.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %out, i32** %out.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %out.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_load_1(i32 %n, i32 %radix, i32* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %out.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %out, i32** %out.addr, align 8
  %0 = load i32*, i32** %out.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %1 = load i32*, i32** %out.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %1, i64 1
  store i32 0, i32* %arrayidx1, align 4
  %2 = load i32*, i32** %out.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %2, i64 2
  store i32 1, i32* %arrayidx2, align 4
  store i32 3, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %4, 1
  %cmp = icmp sle i32 %3, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %out.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom
  store i32 0, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_round(i32 %n, i32 %radix, i32 %m, i32* %inout) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %inout.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32* %inout, i32** %inout.addr, align 8
  %0 = load i32, i32* %m.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %m.addr, align 4
  %add1 = add nsw i32 %4, 2
  %cmp2 = icmp sgt i32 %3, %add1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %inout.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %m.addr, align 4
  %add3 = add nsw i32 %8, 2
  %idxprom4 = sext i32 %add3 to i64
  %9 = load i32*, i32** %inout.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %mul = mul nsw i32 2, %10
  store i32 %mul, i32* %x, align 4
  %11 = load i32, i32* %m.addr, align 4
  %add6 = add nsw i32 %11, 2
  %idxprom7 = sext i32 %add6 to i64
  %12 = load i32*, i32** %inout.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 %idxprom7
  store i32 0, i32* %arrayidx8, align 4
  %13 = load i32, i32* %x, align 4
  %14 = load i32, i32* %radix.addr, align 4
  %cmp9 = icmp sge i32 %13, %14
  br i1 %cmp9, label %if.then.10, label %if.end.32

if.then.10:                                       ; preds = %for.end
  %15 = load i32, i32* %m.addr, align 4
  %add11 = add nsw i32 %15, 1
  store i32 %add11, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.24, %if.then.10
  %16 = load i32, i32* %j, align 4
  %cmp13 = icmp sge i32 %16, 2
  br i1 %cmp13, label %for.body.14, label %for.end.26

for.body.14:                                      ; preds = %for.cond.12
  %17 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load i32*, i32** %inout.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %18, i64 %idxprom15
  %19 = load i32, i32* %arrayidx16, align 4
  %add17 = add nsw i32 %19, 1
  store i32 %add17, i32* %x, align 4
  %20 = load i32, i32* %x, align 4
  %21 = load i32, i32* %radix.addr, align 4
  %cmp18 = icmp slt i32 %20, %21
  br i1 %cmp18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %for.body.14
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %23 to i64
  %24 = load i32*, i32** %inout.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %24, i64 %idxprom20
  store i32 %22, i32* %arrayidx21, align 4
  br label %for.end.26

if.end:                                           ; preds = %for.body.14
  %25 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %25 to i64
  %26 = load i32*, i32** %inout.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %26, i64 %idxprom22
  store i32 0, i32* %arrayidx23, align 4
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end
  %27 = load i32, i32* %j, align 4
  %dec25 = add nsw i32 %27, -1
  store i32 %dec25, i32* %j, align 4
  br label %for.cond.12

for.end.26:                                       ; preds = %if.then.19, %for.cond.12
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %radix.addr, align 4
  %cmp27 = icmp sge i32 %28, %29
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %for.end.26
  %30 = load i32*, i32** %inout.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 1, i32* %arrayidx29, align 4
  %31 = load i32*, i32** %inout.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %31, i64 1
  %32 = load i32, i32* %arrayidx30, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %arrayidx30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %for.end.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %for.end
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mp_cmp(i32 %n, i32 %radix, i32* %in1, i32* %in2) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in1.addr = alloca i32*, align 8
  %in2.addr = alloca i32*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in1, i32** %in1.addr, align 8
  store i32* %in2, i32** %in2.addr, align 8
  %0 = load i32*, i32** %in1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %in2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %cmp = icmp sgt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i32*, i32** %in1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32*, i32** %in2.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp slt i32 %5, %7
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  %8 = load i32*, i32** %in1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %8, i64 0
  %9 = load i32, i32* %arrayidx7, align 4
  %10 = load i32, i32* %n.addr, align 4
  %11 = load i32*, i32** %in1.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i64 1
  %12 = load i32*, i32** %in2.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 1
  %call = call i32 @mp_unsgn_cmp(i32 %10, i32* %arrayidx8, i32* %arrayidx9)
  %mul = mul nsw i32 %9, %call
  store i32 %mul, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @mp_unsgn_cmp(i32 %n, i32* %in1, i32* %in2) #0 {
entry:
  %n.addr = alloca i32, align 4
  %in1.addr = alloca i32*, align 8
  %in2.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %cmp = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %in1, i32** %in1.addr, align 8
  store i32* %in2, i32** %in2.addr, align 8
  store i32 0, i32* %cmp, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sle i32 %0, %1
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %cmp, align 4
  %cmp2 = icmp eq i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %in1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i32*, i32** %in2.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  %9 = load i32, i32* %arrayidx4, align 4
  %sub = sub nsw i32 %6, %9
  store i32 %sub, i32* %cmp, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i32, i32* %cmp, align 4
  %cmp5 = icmp sgt i32 %11, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 1, i32* %cmp, align 4
  br label %if.end.8

if.else:                                          ; preds = %for.end
  %12 = load i32, i32* %cmp, align 4
  %cmp6 = icmp slt i32 %12, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  store i32 -1, i32* %cmp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %cmp, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @mp_unexp_add(i32 %n, i32 %radix, i32 %expdif, i32* %in1, i32* %in2, i32* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %expdif.addr = alloca i32, align 4
  %in1.addr = alloca i32*, align 8
  %in2.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %carry = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32 %expdif, i32* %expdif.addr, align 4
  store i32* %in1, i32** %in1.addr, align 8
  store i32* %in2, i32** %in2.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32 0, i32* %carry, align 4
  %0 = load i32, i32* %expdif.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32*, i32** %in1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32*, i32** %in2.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 0
  %4 = load i32, i32* %arrayidx1, align 4
  %add = add nsw i32 %2, %4
  %5 = load i32, i32* %radix.addr, align 4
  %cmp2 = icmp sge i32 %add, %5
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %7 = load i32*, i32** %in1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx3, align 4
  %9 = load i32, i32* %n.addr, align 4
  %sub4 = sub nsw i32 %9, 1
  %idxprom5 = sext i32 %sub4 to i64
  %10 = load i32*, i32** %in2.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 %idxprom5
  %11 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %8, %11
  store i32 %add7, i32* %x, align 4
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %radix.addr, align 4
  %cmp8 = icmp sge i32 %12, %13
  %cond = select i1 %cmp8, i32 -1, i32 0
  store i32 %cond, i32* %carry, align 4
  %14 = load i32, i32* %n.addr, align 4
  %sub9 = sub nsw i32 %14, 1
  store i32 %sub9, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %j, align 4
  %cmp10 = icmp sgt i32 %15, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %j, align 4
  %sub11 = sub nsw i32 %16, 1
  %idxprom12 = sext i32 %sub11 to i64
  %17 = load i32*, i32** %in1.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %17, i64 %idxprom12
  %18 = load i32, i32* %arrayidx13, align 4
  %19 = load i32, i32* %j, align 4
  %sub14 = sub nsw i32 %19, 1
  %idxprom15 = sext i32 %sub14 to i64
  %20 = load i32*, i32** %in2.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %20, i64 %idxprom15
  %21 = load i32, i32* %arrayidx16, align 4
  %add17 = add nsw i32 %18, %21
  %22 = load i32, i32* %carry, align 4
  %sub18 = sub nsw i32 %add17, %22
  store i32 %sub18, i32* %x, align 4
  %23 = load i32, i32* %x, align 4
  %24 = load i32, i32* %radix.addr, align 4
  %cmp19 = icmp sge i32 %23, %24
  %cond20 = select i1 %cmp19, i32 -1, i32 0
  store i32 %cond20, i32* %carry, align 4
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %radix.addr, align 4
  %27 = load i32, i32* %carry, align 4
  %and = and i32 %26, %27
  %sub21 = sub nsw i32 %25, %and
  %28 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load i32*, i32** %out.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %29, i64 %idxprom22
  store i32 %sub21, i32* %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %j, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %carry, align 4
  %sub24 = sub nsw i32 0, %31
  %32 = load i32*, i32** %out.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %sub24, i32* %arrayidx25, align 4
  br label %if.end.81

if.else:                                          ; preds = %land.lhs.true, %entry
  %33 = load i32, i32* %expdif.addr, align 4
  %34 = load i32, i32* %n.addr, align 4
  %cmp26 = icmp sgt i32 %33, %34
  br i1 %cmp26, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.else
  %35 = load i32, i32* %n.addr, align 4
  store i32 %35, i32* %expdif.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.else
  %36 = load i32, i32* %n.addr, align 4
  %sub28 = sub nsw i32 %36, 1
  store i32 %sub28, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.45, %if.end
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %expdif.addr, align 4
  %cmp30 = icmp sge i32 %37, %38
  br i1 %cmp30, label %for.body.31, label %for.end.47

for.body.31:                                      ; preds = %for.cond.29
  %39 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %39 to i64
  %40 = load i32*, i32** %in1.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %40, i64 %idxprom32
  %41 = load i32, i32* %arrayidx33, align 4
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %expdif.addr, align 4
  %sub34 = sub nsw i32 %42, %43
  %idxprom35 = sext i32 %sub34 to i64
  %44 = load i32*, i32** %in2.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %44, i64 %idxprom35
  %45 = load i32, i32* %arrayidx36, align 4
  %add37 = add nsw i32 %41, %45
  %46 = load i32, i32* %carry, align 4
  %sub38 = sub nsw i32 %add37, %46
  store i32 %sub38, i32* %x, align 4
  %47 = load i32, i32* %x, align 4
  %48 = load i32, i32* %radix.addr, align 4
  %cmp39 = icmp sge i32 %47, %48
  %cond40 = select i1 %cmp39, i32 -1, i32 0
  store i32 %cond40, i32* %carry, align 4
  %49 = load i32, i32* %x, align 4
  %50 = load i32, i32* %radix.addr, align 4
  %51 = load i32, i32* %carry, align 4
  %and41 = and i32 %50, %51
  %sub42 = sub nsw i32 %49, %and41
  %52 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %52 to i64
  %53 = load i32*, i32** %out.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %53, i64 %idxprom43
  store i32 %sub42, i32* %arrayidx44, align 4
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.31
  %54 = load i32, i32* %j, align 4
  %dec46 = add nsw i32 %54, -1
  store i32 %dec46, i32* %j, align 4
  br label %for.cond.29

for.end.47:                                       ; preds = %for.cond.29
  %55 = load i32, i32* %expdif.addr, align 4
  %sub48 = sub nsw i32 %55, 1
  store i32 %sub48, i32* %j, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.61, %for.end.47
  %56 = load i32, i32* %j, align 4
  %cmp50 = icmp sge i32 %56, 0
  br i1 %cmp50, label %for.body.51, label %for.end.63

for.body.51:                                      ; preds = %for.cond.49
  %57 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %57 to i64
  %58 = load i32*, i32** %in1.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %58, i64 %idxprom52
  %59 = load i32, i32* %arrayidx53, align 4
  %60 = load i32, i32* %carry, align 4
  %sub54 = sub nsw i32 %59, %60
  store i32 %sub54, i32* %x, align 4
  %61 = load i32, i32* %x, align 4
  %62 = load i32, i32* %radix.addr, align 4
  %cmp55 = icmp sge i32 %61, %62
  %cond56 = select i1 %cmp55, i32 -1, i32 0
  store i32 %cond56, i32* %carry, align 4
  %63 = load i32, i32* %x, align 4
  %64 = load i32, i32* %radix.addr, align 4
  %65 = load i32, i32* %carry, align 4
  %and57 = and i32 %64, %65
  %sub58 = sub nsw i32 %63, %and57
  %66 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %66 to i64
  %67 = load i32*, i32** %out.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %67, i64 %idxprom59
  store i32 %sub58, i32* %arrayidx60, align 4
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.51
  %68 = load i32, i32* %j, align 4
  %dec62 = add nsw i32 %68, -1
  store i32 %dec62, i32* %j, align 4
  br label %for.cond.49

for.end.63:                                       ; preds = %for.cond.49
  %69 = load i32, i32* %carry, align 4
  %cmp64 = icmp ne i32 %69, 0
  br i1 %cmp64, label %if.then.65, label %if.end.80

if.then.65:                                       ; preds = %for.end.63
  %70 = load i32, i32* %n.addr, align 4
  %sub66 = sub nsw i32 %70, 1
  store i32 %sub66, i32* %j, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.75, %if.then.65
  %71 = load i32, i32* %j, align 4
  %cmp68 = icmp sgt i32 %71, 0
  br i1 %cmp68, label %for.body.69, label %for.end.77

for.body.69:                                      ; preds = %for.cond.67
  %72 = load i32, i32* %j, align 4
  %sub70 = sub nsw i32 %72, 1
  %idxprom71 = sext i32 %sub70 to i64
  %73 = load i32*, i32** %out.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %73, i64 %idxprom71
  %74 = load i32, i32* %arrayidx72, align 4
  %75 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %75 to i64
  %76 = load i32*, i32** %out.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %76, i64 %idxprom73
  store i32 %74, i32* %arrayidx74, align 4
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.69
  %77 = load i32, i32* %j, align 4
  %dec76 = add nsw i32 %77, -1
  store i32 %dec76, i32* %j, align 4
  br label %for.cond.67

for.end.77:                                       ; preds = %for.cond.67
  %78 = load i32, i32* %carry, align 4
  %sub78 = sub nsw i32 0, %78
  %79 = load i32*, i32** %out.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %sub78, i32* %arrayidx79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.77, %for.end.63
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %for.end
  %80 = load i32, i32* %carry, align 4
  %sub82 = sub nsw i32 0, %80
  ret i32 %sub82
}

; Function Attrs: nounwind uwtable
define i32 @mp_unexp_sub(i32 %n, i32 %radix, i32 %expdif, i32* %in1, i32* %in2, i32* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %expdif.addr = alloca i32, align 4
  %in1.addr = alloca i32*, align 8
  %in2.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %borrow = alloca i32, align 4
  %ncancel = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32 %expdif, i32* %expdif.addr, align 4
  store i32* %in1, i32** %in1.addr, align 8
  store i32* %in2, i32** %in2.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  %0 = load i32, i32* %expdif.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  store i32 %2, i32* %expdif.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %borrow, align 4
  %3 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %expdif.addr, align 4
  %cmp1 = icmp sge i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %in1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %expdif.addr, align 4
  %sub2 = sub nsw i32 %9, %10
  %idxprom3 = sext i32 %sub2 to i64
  %11 = load i32*, i32** %in2.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %11, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4
  %sub5 = sub nsw i32 %8, %12
  %13 = load i32, i32* %borrow, align 4
  %add = add nsw i32 %sub5, %13
  store i32 %add, i32* %x, align 4
  %14 = load i32, i32* %x, align 4
  %cmp6 = icmp slt i32 %14, 0
  %cond = select i1 %cmp6, i32 -1, i32 0
  store i32 %cond, i32* %borrow, align 4
  %15 = load i32, i32* %x, align 4
  %16 = load i32, i32* %radix.addr, align 4
  %17 = load i32, i32* %borrow, align 4
  %and = and i32 %16, %17
  %add7 = add nsw i32 %15, %and
  %18 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load i32*, i32** %out.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %19, i64 %idxprom8
  store i32 %add7, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %j, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %expdif.addr, align 4
  %sub10 = sub nsw i32 %21, 1
  store i32 %sub10, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.23, %for.end
  %22 = load i32, i32* %j, align 4
  %cmp12 = icmp sge i32 %22, 0
  br i1 %cmp12, label %for.body.13, label %for.end.25

for.body.13:                                      ; preds = %for.cond.11
  %23 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load i32*, i32** %in1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %24, i64 %idxprom14
  %25 = load i32, i32* %arrayidx15, align 4
  %26 = load i32, i32* %borrow, align 4
  %add16 = add nsw i32 %25, %26
  store i32 %add16, i32* %x, align 4
  %27 = load i32, i32* %x, align 4
  %cmp17 = icmp slt i32 %27, 0
  %cond18 = select i1 %cmp17, i32 -1, i32 0
  store i32 %cond18, i32* %borrow, align 4
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %radix.addr, align 4
  %30 = load i32, i32* %borrow, align 4
  %and19 = and i32 %29, %30
  %add20 = add nsw i32 %28, %and19
  %31 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %31 to i64
  %32 = load i32*, i32** %out.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %32, i64 %idxprom21
  store i32 %add20, i32* %arrayidx22, align 4
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.13
  %33 = load i32, i32* %j, align 4
  %dec24 = add nsw i32 %33, -1
  store i32 %dec24, i32* %j, align 4
  br label %for.cond.11

for.end.25:                                       ; preds = %for.cond.11
  store i32 0, i32* %ncancel, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.33, %for.end.25
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %n.addr, align 4
  %cmp27 = icmp slt i32 %34, %35
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.26
  %36 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %36 to i64
  %37 = load i32*, i32** %out.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %37, i64 %idxprom28
  %38 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp eq i32 %38, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.26
  %39 = phi i1 [ false, %for.cond.26 ], [ %cmp30, %land.rhs ]
  br i1 %39, label %for.body.31, label %for.end.34

for.body.31:                                      ; preds = %land.end
  %40 = load i32, i32* %j, align 4
  %add32 = add nsw i32 %40, 1
  store i32 %add32, i32* %ncancel, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.31
  %41 = load i32, i32* %j, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.26

for.end.34:                                       ; preds = %land.end
  %42 = load i32, i32* %ncancel, align 4
  %cmp35 = icmp sgt i32 %42, 0
  br i1 %cmp35, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %for.end.34
  %43 = load i32, i32* %ncancel, align 4
  %44 = load i32, i32* %n.addr, align 4
  %cmp36 = icmp slt i32 %43, %44
  br i1 %cmp36, label %if.then.37, label %if.end.59

if.then.37:                                       ; preds = %land.lhs.true
  store i32 0, i32* %j, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.47, %if.then.37
  %45 = load i32, i32* %j, align 4
  %46 = load i32, i32* %n.addr, align 4
  %47 = load i32, i32* %ncancel, align 4
  %sub39 = sub nsw i32 %46, %47
  %cmp40 = icmp slt i32 %45, %sub39
  br i1 %cmp40, label %for.body.41, label %for.end.49

for.body.41:                                      ; preds = %for.cond.38
  %48 = load i32, i32* %j, align 4
  %49 = load i32, i32* %ncancel, align 4
  %add42 = add nsw i32 %48, %49
  %idxprom43 = sext i32 %add42 to i64
  %50 = load i32*, i32** %out.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %50, i64 %idxprom43
  %51 = load i32, i32* %arrayidx44, align 4
  %52 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %52 to i64
  %53 = load i32*, i32** %out.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %53, i64 %idxprom45
  store i32 %51, i32* %arrayidx46, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.41
  %54 = load i32, i32* %j, align 4
  %inc48 = add nsw i32 %54, 1
  store i32 %inc48, i32* %j, align 4
  br label %for.cond.38

for.end.49:                                       ; preds = %for.cond.38
  %55 = load i32, i32* %n.addr, align 4
  %56 = load i32, i32* %ncancel, align 4
  %sub50 = sub nsw i32 %55, %56
  store i32 %sub50, i32* %j, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.56, %for.end.49
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %n.addr, align 4
  %cmp52 = icmp slt i32 %57, %58
  br i1 %cmp52, label %for.body.53, label %for.end.58

for.body.53:                                      ; preds = %for.cond.51
  %59 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %59 to i64
  %60 = load i32*, i32** %out.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %60, i64 %idxprom54
  store i32 0, i32* %arrayidx55, align 4
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.53
  %61 = load i32, i32* %j, align 4
  %inc57 = add nsw i32 %61, 1
  store i32 %inc57, i32* %j, align 4
  br label %for.cond.51

for.end.58:                                       ; preds = %for.cond.51
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.58, %land.lhs.true, %for.end.34
  %62 = load i32, i32* %ncancel, align 4
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define void @mp_unsgn_imul(i32 %n, double %dradix, i32* %in1, double %din2, i32* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %dradix.addr = alloca double, align 8
  %in1.addr = alloca i32*, align 8
  %din2.addr = alloca double, align 8
  %out.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %carry = alloca i32, align 4
  %shift = alloca i32, align 4
  %x = alloca double, align 8
  %d1_radix = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double %dradix, double* %dradix.addr, align 8
  store i32* %in1, i32** %in1.addr, align 8
  store double %din2, double* %din2.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  %0 = load double, double* %dradix.addr, align 8
  %div = fdiv double 1.000000e+00, %0
  store double %div, double* %d1_radix, align 8
  store i32 0, i32* %carry, align 4
  %1 = load i32, i32* %n.addr, align 4
  store i32 %1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %cmp = icmp sge i32 %2, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, double* %din2.addr, align 8
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %in1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %conv = sitofp i32 %6 to double
  %mul = fmul double %3, %conv
  %7 = load i32, i32* %carry, align 4
  %conv1 = sitofp i32 %7 to double
  %add = fadd double %mul, %conv1
  %add2 = fadd double %add, 5.000000e-01
  store double %add2, double* %x, align 8
  %8 = load double, double* %d1_radix, align 8
  %9 = load double, double* %x, align 8
  %mul3 = fmul double %8, %9
  %conv4 = fptosi double %mul3 to i32
  store i32 %conv4, i32* %carry, align 4
  %10 = load double, double* %x, align 8
  %11 = load double, double* %dradix.addr, align 8
  %12 = load i32, i32* %carry, align 4
  %conv5 = sitofp i32 %12 to double
  %mul6 = fmul double %11, %conv5
  %sub = fsub double %10, %mul6
  %conv7 = fptosi double %sub to i32
  %13 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i32*, i32** %out.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  store i32 %conv7, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %shift, align 4
  %16 = load i32, i32* %carry, align 4
  %conv10 = sitofp i32 %16 to double
  %add11 = fadd double %conv10, 5.000000e-01
  store double %add11, double* %x, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %17 = load double, double* %x, align 8
  %cmp12 = fcmp ogt double %17, 1.000000e+00
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load double, double* %d1_radix, align 8
  %19 = load double, double* %x, align 8
  %mul14 = fmul double %19, %18
  store double %mul14, double* %x, align 8
  %20 = load i32, i32* %shift, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %shift, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i32*, i32** %in1.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx15, align 4
  %23 = load i32, i32* %shift, align 4
  %add16 = add nsw i32 %22, %23
  %24 = load i32*, i32** %out.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %add16, i32* %arrayidx17, align 4
  %25 = load i32, i32* %shift, align 4
  %cmp18 = icmp sgt i32 %25, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %while.cond.20

while.cond.20:                                    ; preds = %while.body.23, %if.then
  %26 = load i32, i32* %shift, align 4
  %27 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp sgt i32 %26, %27
  br i1 %cmp21, label %while.body.23, label %while.end.29

while.body.23:                                    ; preds = %while.cond.20
  %28 = load double, double* %d1_radix, align 8
  %29 = load i32, i32* %carry, align 4
  %conv24 = sitofp i32 %29 to double
  %mul25 = fmul double %28, %conv24
  %add26 = fadd double %mul25, 5.000000e-01
  %conv27 = fptosi double %add26 to i32
  store i32 %conv27, i32* %carry, align 4
  %30 = load i32, i32* %shift, align 4
  %dec28 = add nsw i32 %30, -1
  store i32 %dec28, i32* %shift, align 4
  br label %while.cond.20

while.end.29:                                     ; preds = %while.cond.20
  %31 = load i32, i32* %n.addr, align 4
  store i32 %31, i32* %j, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.40, %while.end.29
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %shift, align 4
  %add31 = add nsw i32 %33, 1
  %cmp32 = icmp sge i32 %32, %add31
  br i1 %cmp32, label %for.body.34, label %for.end.42

for.body.34:                                      ; preds = %for.cond.30
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %shift, align 4
  %sub35 = sub nsw i32 %34, %35
  %idxprom36 = sext i32 %sub35 to i64
  %36 = load i32*, i32** %out.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %36, i64 %idxprom36
  %37 = load i32, i32* %arrayidx37, align 4
  %38 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %38 to i64
  %39 = load i32*, i32** %out.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %39, i64 %idxprom38
  store i32 %37, i32* %arrayidx39, align 4
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.34
  %40 = load i32, i32* %j, align 4
  %dec41 = add nsw i32 %40, -1
  store i32 %dec41, i32* %j, align 4
  br label %for.cond.30

for.end.42:                                       ; preds = %for.cond.30
  %41 = load i32, i32* %shift, align 4
  store i32 %41, i32* %j, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.57, %for.end.42
  %42 = load i32, i32* %j, align 4
  %cmp44 = icmp sge i32 %42, 1
  br i1 %cmp44, label %for.body.46, label %for.end.59

for.body.46:                                      ; preds = %for.cond.43
  %43 = load i32, i32* %carry, align 4
  %conv47 = sitofp i32 %43 to double
  %add48 = fadd double %conv47, 5.000000e-01
  store double %add48, double* %x, align 8
  %44 = load double, double* %d1_radix, align 8
  %45 = load double, double* %x, align 8
  %mul49 = fmul double %44, %45
  %conv50 = fptosi double %mul49 to i32
  store i32 %conv50, i32* %carry, align 4
  %46 = load double, double* %x, align 8
  %47 = load double, double* %dradix.addr, align 8
  %48 = load i32, i32* %carry, align 4
  %conv51 = sitofp i32 %48 to double
  %mul52 = fmul double %47, %conv51
  %sub53 = fsub double %46, %mul52
  %conv54 = fptosi double %sub53 to i32
  %49 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %49 to i64
  %50 = load i32*, i32** %out.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %50, i64 %idxprom55
  store i32 %conv54, i32* %arrayidx56, align 4
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.46
  %51 = load i32, i32* %j, align 4
  %dec58 = add nsw i32 %51, -1
  store i32 %dec58, i32* %j, align 4
  br label %for.cond.43

for.end.59:                                       ; preds = %for.cond.43
  br label %if.end

if.end:                                           ; preds = %for.end.59, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_unsgn_idiv(i32 %n, double %dradix, i32* %in1, double %din2, i32* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %dradix.addr = alloca double, align 8
  %in1.addr = alloca i32*, align 8
  %din2.addr = alloca double, align 8
  %out.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %ix = alloca i32, align 4
  %carry = alloca i32, align 4
  %shift = alloca i32, align 4
  %x = alloca double, align 8
  %d1_in2 = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double %dradix, double* %dradix.addr, align 8
  store i32* %in1, i32** %in1.addr, align 8
  store double %din2, double* %din2.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  %0 = load double, double* %din2.addr, align 8
  %div = fdiv double 1.000000e+00, %0
  store double %div, double* %d1_in2, align 8
  store i32 0, i32* %shift, align 4
  store double 0.000000e+00, double* %x, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, i32* %shift, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %shift, align 4
  %2 = load double, double* %dradix.addr, align 8
  %3 = load double, double* %x, align 8
  %mul = fmul double %3, %2
  store double %mul, double* %x, align 8
  %4 = load i32, i32* %shift, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %6 = load i32, i32* %shift, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %in1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %conv = sitofp i32 %8 to double
  %9 = load double, double* %x, align 8
  %add = fadd double %9, %conv
  store double %add, double* %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %10 = load double, double* %x, align 8
  %11 = load double, double* %din2.addr, align 8
  %sub = fsub double %11, 5.000000e-01
  %cmp1 = fcmp olt double %10, %sub
  br i1 %cmp1, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load double, double* %x, align 8
  %add3 = fadd double %12, 5.000000e-01
  store double %add3, double* %x, align 8
  %13 = load double, double* %d1_in2, align 8
  %14 = load double, double* %x, align 8
  %mul4 = fmul double %13, %14
  %conv5 = fptosi double %mul4 to i32
  store i32 %conv5, i32* %ix, align 4
  %15 = load double, double* %x, align 8
  %16 = load double, double* %din2.addr, align 8
  %17 = load i32, i32* %ix, align 4
  %conv6 = sitofp i32 %17 to double
  %mul7 = fmul double %16, %conv6
  %sub8 = fsub double %15, %mul7
  %conv9 = fptosi double %sub8 to i32
  store i32 %conv9, i32* %carry, align 4
  %18 = load i32, i32* %ix, align 4
  %19 = load i32*, i32** %out.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %18, i32* %arrayidx10, align 4
  %20 = load i32, i32* %shift, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %shift, align 4
  %21 = load i32*, i32** %in1.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx11, align 4
  %23 = load i32, i32* %shift, align 4
  %sub12 = sub nsw i32 %22, %23
  %24 = load i32*, i32** %out.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %sub12, i32* %arrayidx13, align 4
  %25 = load i32, i32* %shift, align 4
  %26 = load i32, i32* %n.addr, align 4
  %cmp14 = icmp sge i32 %25, %26
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %do.end
  %27 = load i32, i32* %n.addr, align 4
  %sub17 = sub nsw i32 %27, 1
  store i32 %sub17, i32* %shift, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %do.end
  store i32 2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %n.addr, align 4
  %30 = load i32, i32* %shift, align 4
  %sub19 = sub nsw i32 %29, %30
  %cmp20 = icmp sle i32 %28, %sub19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %shift, align 4
  %add22 = add nsw i32 %31, %32
  %idxprom23 = sext i32 %add22 to i64
  %33 = load i32*, i32** %in1.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %33, i64 %idxprom23
  %34 = load i32, i32* %arrayidx24, align 4
  %conv25 = sitofp i32 %34 to double
  %35 = load double, double* %dradix.addr, align 8
  %36 = load i32, i32* %carry, align 4
  %conv26 = sitofp i32 %36 to double
  %mul27 = fmul double %35, %conv26
  %add28 = fadd double %conv25, %mul27
  %add29 = fadd double %add28, 5.000000e-01
  store double %add29, double* %x, align 8
  %37 = load double, double* %d1_in2, align 8
  %38 = load double, double* %x, align 8
  %mul30 = fmul double %37, %38
  %conv31 = fptosi double %mul30 to i32
  store i32 %conv31, i32* %ix, align 4
  %39 = load double, double* %x, align 8
  %40 = load double, double* %din2.addr, align 8
  %41 = load i32, i32* %ix, align 4
  %conv32 = sitofp i32 %41 to double
  %mul33 = fmul double %40, %conv32
  %sub34 = fsub double %39, %mul33
  %conv35 = fptosi double %sub34 to i32
  store i32 %conv35, i32* %carry, align 4
  %42 = load i32, i32* %ix, align 4
  %43 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %43 to i64
  %44 = load i32*, i32** %out.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %44, i64 %idxprom36
  store i32 %42, i32* %arrayidx37, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %45, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load i32, i32* %n.addr, align 4
  %47 = load i32, i32* %shift, align 4
  %sub39 = sub nsw i32 %46, %47
  %add40 = add nsw i32 %sub39, 1
  store i32 %add40, i32* %j, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.56, %for.end
  %48 = load i32, i32* %j, align 4
  %49 = load i32, i32* %n.addr, align 4
  %cmp42 = icmp sle i32 %48, %49
  br i1 %cmp42, label %for.body.44, label %for.end.58

for.body.44:                                      ; preds = %for.cond.41
  %50 = load double, double* %dradix.addr, align 8
  %51 = load i32, i32* %carry, align 4
  %conv45 = sitofp i32 %51 to double
  %mul46 = fmul double %50, %conv45
  %add47 = fadd double %mul46, 5.000000e-01
  store double %add47, double* %x, align 8
  %52 = load double, double* %d1_in2, align 8
  %53 = load double, double* %x, align 8
  %mul48 = fmul double %52, %53
  %conv49 = fptosi double %mul48 to i32
  store i32 %conv49, i32* %ix, align 4
  %54 = load double, double* %x, align 8
  %55 = load double, double* %din2.addr, align 8
  %56 = load i32, i32* %ix, align 4
  %conv50 = sitofp i32 %56 to double
  %mul51 = fmul double %55, %conv50
  %sub52 = fsub double %54, %mul51
  %conv53 = fptosi double %sub52 to i32
  store i32 %conv53, i32* %carry, align 4
  %57 = load i32, i32* %ix, align 4
  %58 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %58 to i64
  %59 = load i32*, i32** %out.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %59, i64 %idxprom54
  store i32 %57, i32* %arrayidx55, align 4
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.44
  %60 = load i32, i32* %j, align 4
  %inc57 = add nsw i32 %60, 1
  store i32 %inc57, i32* %j, align 4
  br label %for.cond.41

for.end.58:                                       ; preds = %for.cond.41
  ret void
}

declare void @rdft(i32, i32, double*, i32*, double*) #1

; Function Attrs: nounwind uwtable
define void @mp_mul_csqu(i32 %nfft, double* %dinout) #0 {
entry:
  %nfft.addr = alloca i32, align 4
  %dinout.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %xr = alloca double, align 8
  %xi = alloca double, align 8
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %dinout, double** %dinout.addr, align 8
  %0 = load double*, double** %dinout.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %mul = fmul double %1, 2.000000e+00
  store double %mul, double* %arrayidx, align 8
  %2 = load double*, double** %dinout.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 1
  %3 = load double, double* %arrayidx1, align 8
  %4 = load double*, double** %dinout.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 1
  %5 = load double, double* %arrayidx2, align 8
  %mul3 = fmul double %5, %3
  store double %mul3, double* %arrayidx2, align 8
  %6 = load double*, double** %dinout.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %6, i64 2
  %7 = load double, double* %arrayidx4, align 8
  %8 = load double*, double** %dinout.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 2
  %9 = load double, double* %arrayidx5, align 8
  %mul6 = fmul double %9, %7
  store double %mul6, double* %arrayidx5, align 8
  store i32 3, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %nfft.addr, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %j, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load double*, double** %dinout.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %13, i64 %idxprom
  %14 = load double, double* %arrayidx7, align 8
  store double %14, double* %xr, align 8
  %15 = load i32, i32* %j, align 4
  %add = add nsw i32 %15, 1
  %idxprom8 = sext i32 %add to i64
  %16 = load double*, double** %dinout.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %16, i64 %idxprom8
  %17 = load double, double* %arrayidx9, align 8
  store double %17, double* %xi, align 8
  %18 = load double, double* %xr, align 8
  %19 = load double, double* %xr, align 8
  %mul10 = fmul double %18, %19
  %20 = load double, double* %xi, align 8
  %21 = load double, double* %xi, align 8
  %mul11 = fmul double %20, %21
  %sub = fsub double %mul10, %mul11
  %22 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %22 to i64
  %23 = load double*, double** %dinout.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %23, i64 %idxprom12
  store double %sub, double* %arrayidx13, align 8
  %24 = load double, double* %xr, align 8
  %mul14 = fmul double 2.000000e+00, %24
  %25 = load double, double* %xi, align 8
  %mul15 = fmul double %mul14, %25
  %26 = load i32, i32* %j, align 4
  %add16 = add nsw i32 %26, 1
  %idxprom17 = sext i32 %add16 to i64
  %27 = load double*, double** %dinout.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %27, i64 %idxprom17
  store double %mul15, double* %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %j, align 4
  %add19 = add nsw i32 %28, 2
  store i32 %add19, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %nfft.addr, align 4
  %add20 = add nsw i32 %29, 1
  %idxprom21 = sext i32 %add20 to i64
  %30 = load double*, double** %dinout.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %30, i64 %idxprom21
  %31 = load double, double* %arrayidx22, align 8
  %32 = load i32, i32* %nfft.addr, align 4
  %add23 = add nsw i32 %32, 1
  %idxprom24 = sext i32 %add23 to i64
  %33 = load double*, double** %dinout.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %33, i64 %idxprom24
  %34 = load double, double* %arrayidx25, align 8
  %mul26 = fmul double %34, %31
  store double %mul26, double* %arrayidx25, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define double @mp_mul_d2i_test(i32 %radix, i32 %nfft, double* %din) #0 {
entry:
  %radix.addr = alloca i32, align 4
  %nfft.addr = alloca i32, align 4
  %din.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %carry = alloca i32, align 4
  %carry1 = alloca i32, align 4
  %carry2 = alloca i32, align 4
  %x = alloca double, align 8
  %scale = alloca double, align 8
  %d1_radix = alloca double, align 8
  %d1_radix2 = alloca double, align 8
  %err = alloca double, align 8
  store i32 %radix, i32* %radix.addr, align 4
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %din, double** %din.addr, align 8
  %0 = load i32, i32* %nfft.addr, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double 2.000000e+00, %conv
  store double %div, double* %scale, align 8
  %1 = load i32, i32* %radix.addr, align 4
  %conv1 = sitofp i32 %1 to double
  %div2 = fdiv double 1.000000e+00, %conv1
  store double %div2, double* %d1_radix, align 8
  %2 = load double, double* %d1_radix, align 8
  %3 = load double, double* %d1_radix, align 8
  %mul = fmul double %2, %3
  store double %mul, double* %d1_radix2, align 8
  %4 = load i32, i32* %nfft.addr, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %5 = load double*, double** %din.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load i32, i32* %nfft.addr, align 4
  %conv3 = sitofp i32 %7 to double
  %mul4 = fmul double %6, %conv3
  %mul5 = fmul double %mul4, 5.000000e-01
  store double %mul5, double* %x, align 8
  %8 = load double, double* %x, align 8
  %cmp = fcmp olt double %8, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load double, double* %x, align 8
  %sub = fsub double -0.000000e+00, %9
  store double %sub, double* %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load double*, double** %din.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %10, i64 1
  %11 = load double, double* %arrayidx7, align 8
  %12 = load double, double* %x, align 8
  %sub8 = fsub double %11, %12
  %13 = load i32, i32* %nfft.addr, align 4
  %add9 = add nsw i32 %13, 1
  %idxprom10 = sext i32 %add9 to i64
  %14 = load double*, double** %din.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %14, i64 %idxprom10
  store double %sub8, double* %arrayidx11, align 8
  store double 0.000000e+00, double* %err, align 8
  store i32 0, i32* %carry, align 4
  store i32 0, i32* %carry2, align 4
  %15 = load i32, i32* %nfft.addr, align 4
  %add12 = add nsw i32 %15, 1
  store i32 %add12, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %j, align 4
  %cmp13 = icmp sgt i32 %16, 1
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load double, double* %d1_radix2, align 8
  %18 = load double, double* %scale, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load double*, double** %din.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %20, i64 %idxprom15
  %21 = load double, double* %arrayidx16, align 8
  %mul17 = fmul double %18, %21
  %22 = load i32, i32* %carry, align 4
  %conv18 = sitofp i32 %22 to double
  %add19 = fadd double %mul17, %conv18
  %add20 = fadd double %add19, 5.000000e-01
  %mul21 = fmul double %17, %add20
  store double %mul21, double* %x, align 8
  %23 = load i32, i32* %carry2, align 4
  store i32 %23, i32* %carry, align 4
  %24 = load double, double* %x, align 8
  %conv22 = fptosi double %24 to i32
  %sub23 = sub nsw i32 %conv22, 1
  store i32 %sub23, i32* %carry2, align 4
  %25 = load i32, i32* %radix.addr, align 4
  %conv24 = sitofp i32 %25 to double
  %26 = load double, double* %x, align 8
  %27 = load i32, i32* %carry2, align 4
  %conv25 = sitofp i32 %27 to double
  %sub26 = fsub double %26, %conv25
  %mul27 = fmul double %conv24, %sub26
  store double %mul27, double* %x, align 8
  %28 = load double, double* %x, align 8
  %conv28 = fptosi double %28 to i32
  store i32 %conv28, i32* %carry1, align 4
  %29 = load i32, i32* %radix.addr, align 4
  %conv29 = sitofp i32 %29 to double
  %30 = load double, double* %x, align 8
  %31 = load i32, i32* %carry1, align 4
  %conv30 = sitofp i32 %31 to double
  %sub31 = fsub double %30, %conv30
  %mul32 = fmul double %conv29, %sub31
  store double %mul32, double* %x, align 8
  %32 = load i32, i32* %carry1, align 4
  %33 = load i32, i32* %carry, align 4
  %add33 = add nsw i32 %33, %32
  store i32 %add33, i32* %carry, align 4
  %34 = load double, double* %x, align 8
  %sub34 = fsub double %34, 5.000000e-01
  %35 = load double, double* %x, align 8
  %conv35 = fptosi double %35 to i32
  %conv36 = sitofp i32 %conv35 to double
  %sub37 = fsub double %sub34, %conv36
  store double %sub37, double* %x, align 8
  %36 = load double, double* %x, align 8
  %37 = load double, double* %err, align 8
  %cmp38 = fcmp ogt double %36, %37
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %for.body
  %38 = load double, double* %x, align 8
  store double %38, double* %err, align 8
  br label %if.end.47

if.else:                                          ; preds = %for.body
  %39 = load double, double* %x, align 8
  %sub41 = fsub double -0.000000e+00, %39
  %40 = load double, double* %err, align 8
  %cmp42 = fcmp ogt double %sub41, %40
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.else
  %41 = load double, double* %x, align 8
  %sub45 = fsub double -0.000000e+00, %41
  store double %sub45, double* %err, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.40
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %42 = load i32, i32* %j, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load double, double* %err, align 8
  ret double %43
}

; Function Attrs: nounwind uwtable
define void @mp_mul_i2d(i32 %n, i32 %radix, i32 %nfft, i32 %shift, i32* %in, double* %dout) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %nfft.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  %in.addr = alloca i32*, align 8
  %dout.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %carry = alloca i32, align 4
  %ndata = alloca i32, align 4
  %radix_2 = alloca i32, align 4
  %topdgt = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32 %nfft, i32* %nfft.addr, align 4
  store i32 %shift, i32* %shift.addr, align 4
  store i32* %in, i32** %in.addr, align 8
  store double* %dout, double** %dout.addr, align 8
  store i32 0, i32* %ndata, align 4
  store i32 0, i32* %topdgt, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %shift.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %shift.addr, align 4
  %add = add nsw i32 %2, 2
  %idxprom = sext i32 %add to i64
  %3 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %topdgt, align 4
  %5 = load i32, i32* %nfft.addr, align 4
  %shr = ashr i32 %5, 1
  %add1 = add nsw i32 %shr, 1
  store i32 %add1, i32* %ndata, align 4
  %6 = load i32, i32* %ndata, align 4
  %7 = load i32, i32* %n.addr, align 4
  %8 = load i32, i32* %shift.addr, align 4
  %sub = sub nsw i32 %7, %8
  %cmp2 = icmp sgt i32 %6, %sub
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %n.addr, align 4
  %10 = load i32, i32* %shift.addr, align 4
  %sub4 = sub nsw i32 %9, %10
  store i32 %sub4, i32* %ndata, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %11 = load i32*, i32** %in.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx6, align 4
  %13 = load i32, i32* %topdgt, align 4
  %mul = mul nsw i32 %12, %13
  %conv = sitofp i32 %mul to double
  %14 = load i32, i32* %nfft.addr, align 4
  %add7 = add nsw i32 %14, 1
  %idxprom8 = sext i32 %add7 to i64
  %15 = load double*, double** %dout.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %15, i64 %idxprom8
  store double %conv, double* %arrayidx9, align 8
  %16 = load i32, i32* %nfft.addr, align 4
  store i32 %16, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %ndata, align 4
  %cmp10 = icmp sgt i32 %17, %18
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load double*, double** %dout.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %20, i64 %idxprom12
  store double 0.000000e+00, double* %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %j, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %ndata, align 4
  %cmp14 = icmp sgt i32 %22, 1
  br i1 %cmp14, label %if.then.16, label %if.end.42

if.then.16:                                       ; preds = %for.end
  %23 = load i32, i32* %radix.addr, align 4
  %div = sdiv i32 %23, 2
  store i32 %div, i32* %radix_2, align 4
  store i32 0, i32* %carry, align 4
  %24 = load i32, i32* %ndata, align 4
  %add17 = add nsw i32 %24, 1
  store i32 %add17, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.33, %if.then.16
  %25 = load i32, i32* %j, align 4
  %cmp19 = icmp sgt i32 %25, 3
  br i1 %cmp19, label %for.body.21, label %for.end.35

for.body.21:                                      ; preds = %for.cond.18
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %shift.addr, align 4
  %add22 = add nsw i32 %26, %27
  %idxprom23 = sext i32 %add22 to i64
  %28 = load i32*, i32** %in.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %28, i64 %idxprom23
  %29 = load i32, i32* %arrayidx24, align 4
  %30 = load i32, i32* %carry, align 4
  %sub25 = sub nsw i32 %29, %30
  store i32 %sub25, i32* %x, align 4
  %31 = load i32, i32* %x, align 4
  %32 = load i32, i32* %radix_2, align 4
  %cmp26 = icmp sge i32 %31, %32
  %cond = select i1 %cmp26, i32 -1, i32 0
  store i32 %cond, i32* %carry, align 4
  %33 = load i32, i32* %x, align 4
  %34 = load i32, i32* %radix.addr, align 4
  %35 = load i32, i32* %carry, align 4
  %and = and i32 %34, %35
  %sub28 = sub nsw i32 %33, %and
  %conv29 = sitofp i32 %sub28 to double
  %36 = load i32, i32* %j, align 4
  %sub30 = sub nsw i32 %36, 1
  %idxprom31 = sext i32 %sub30 to i64
  %37 = load double*, double** %dout.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %37, i64 %idxprom31
  store double %conv29, double* %arrayidx32, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.21
  %38 = load i32, i32* %j, align 4
  %dec34 = add nsw i32 %38, -1
  store i32 %dec34, i32* %j, align 4
  br label %for.cond.18

for.end.35:                                       ; preds = %for.cond.18
  %39 = load i32, i32* %shift.addr, align 4
  %add36 = add nsw i32 %39, 3
  %idxprom37 = sext i32 %add36 to i64
  %40 = load i32*, i32** %in.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %40, i64 %idxprom37
  %41 = load i32, i32* %arrayidx38, align 4
  %42 = load i32, i32* %carry, align 4
  %sub39 = sub nsw i32 %41, %42
  %conv40 = sitofp i32 %sub39 to double
  %43 = load double*, double** %dout.addr, align 8
  %arrayidx41 = getelementptr inbounds double, double* %43, i64 2
  store double %conv40, double* %arrayidx41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %for.end.35, %for.end
  %44 = load i32, i32* %topdgt, align 4
  %conv43 = sitofp i32 %44 to double
  %45 = load double*, double** %dout.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %45, i64 1
  store double %conv43, double* %arrayidx44, align 8
  %46 = load i32*, i32** %in.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %46, i64 1
  %47 = load i32, i32* %arrayidx45, align 4
  %48 = load i32, i32* %shift.addr, align 4
  %sub46 = sub nsw i32 %47, %48
  %conv47 = sitofp i32 %sub46 to double
  %49 = load double*, double** %dout.addr, align 8
  %arrayidx48 = getelementptr inbounds double, double* %49, i64 0
  store double %conv47, double* %arrayidx48, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_mul_cmul(i32 %nfft, double* %din, double* %dinout) #0 {
entry:
  %nfft.addr = alloca i32, align 4
  %din.addr = alloca double*, align 8
  %dinout.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %xr = alloca double, align 8
  %xi = alloca double, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %din, double** %din.addr, align 8
  store double* %dinout, double** %dinout.addr, align 8
  %0 = load double*, double** %din.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %2 = load double*, double** %dinout.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 0
  %3 = load double, double* %arrayidx1, align 8
  %add = fadd double %3, %1
  store double %add, double* %arrayidx1, align 8
  %4 = load double*, double** %din.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 1
  %5 = load double, double* %arrayidx2, align 8
  %6 = load double*, double** %dinout.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 1
  %7 = load double, double* %arrayidx3, align 8
  %mul = fmul double %7, %5
  store double %mul, double* %arrayidx3, align 8
  %8 = load double*, double** %din.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 2
  %9 = load double, double* %arrayidx4, align 8
  %10 = load double*, double** %dinout.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 2
  %11 = load double, double* %arrayidx5, align 8
  %mul6 = fmul double %11, %9
  store double %mul6, double* %arrayidx5, align 8
  store i32 3, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %nfft.addr, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %j, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load double*, double** %din.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %15, i64 %idxprom
  %16 = load double, double* %arrayidx7, align 8
  store double %16, double* %xr, align 8
  %17 = load i32, i32* %j, align 4
  %add8 = add nsw i32 %17, 1
  %idxprom9 = sext i32 %add8 to i64
  %18 = load double*, double** %din.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %18, i64 %idxprom9
  %19 = load double, double* %arrayidx10, align 8
  store double %19, double* %xi, align 8
  %20 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load double*, double** %dinout.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %21, i64 %idxprom11
  %22 = load double, double* %arrayidx12, align 8
  store double %22, double* %yr, align 8
  %23 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %23, 1
  %idxprom14 = sext i32 %add13 to i64
  %24 = load double*, double** %dinout.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %24, i64 %idxprom14
  %25 = load double, double* %arrayidx15, align 8
  store double %25, double* %yi, align 8
  %26 = load double, double* %xr, align 8
  %27 = load double, double* %yr, align 8
  %mul16 = fmul double %26, %27
  %28 = load double, double* %xi, align 8
  %29 = load double, double* %yi, align 8
  %mul17 = fmul double %28, %29
  %sub = fsub double %mul16, %mul17
  %30 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %30 to i64
  %31 = load double*, double** %dinout.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %31, i64 %idxprom18
  store double %sub, double* %arrayidx19, align 8
  %32 = load double, double* %xr, align 8
  %33 = load double, double* %yi, align 8
  %mul20 = fmul double %32, %33
  %34 = load double, double* %xi, align 8
  %35 = load double, double* %yr, align 8
  %mul21 = fmul double %34, %35
  %add22 = fadd double %mul20, %mul21
  %36 = load i32, i32* %j, align 4
  %add23 = add nsw i32 %36, 1
  %idxprom24 = sext i32 %add23 to i64
  %37 = load double*, double** %dinout.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %37, i64 %idxprom24
  store double %add22, double* %arrayidx25, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %j, align 4
  %add26 = add nsw i32 %38, 2
  store i32 %add26, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %nfft.addr, align 4
  %add27 = add nsw i32 %39, 1
  %idxprom28 = sext i32 %add27 to i64
  %40 = load double*, double** %din.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %40, i64 %idxprom28
  %41 = load double, double* %arrayidx29, align 8
  %42 = load i32, i32* %nfft.addr, align 4
  %add30 = add nsw i32 %42, 1
  %idxprom31 = sext i32 %add30 to i64
  %43 = load double*, double** %dinout.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %43, i64 %idxprom31
  %44 = load double, double* %arrayidx32, align 8
  %mul33 = fmul double %44, %41
  store double %mul33, double* %arrayidx32, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_mul_d2i(i32 %n, i32 %radix, i32 %nfft, double* %din, i32* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %nfft.addr = alloca i32, align 4
  %din.addr = alloca double*, align 8
  %out.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %carry = alloca i32, align 4
  %carry1 = alloca i32, align 4
  %carry2 = alloca i32, align 4
  %shift = alloca i32, align 4
  %ndata = alloca i32, align 4
  %x = alloca double, align 8
  %scale = alloca double, align 8
  %d1_radix = alloca double, align 8
  %d1_radix2 = alloca double, align 8
  %pow_radix = alloca double, align 8
  %topdgt = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %din, double** %din.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  %0 = load i32, i32* %nfft.addr, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double 2.000000e+00, %conv
  store double %div, double* %scale, align 8
  %1 = load i32, i32* %radix.addr, align 4
  %conv1 = sitofp i32 %1 to double
  %div2 = fdiv double 1.000000e+00, %conv1
  store double %div2, double* %d1_radix, align 8
  %2 = load double, double* %d1_radix, align 8
  %3 = load double, double* %d1_radix, align 8
  %mul = fmul double %2, %3
  store double %mul, double* %d1_radix2, align 8
  %4 = load i32, i32* %nfft.addr, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %5 = load double*, double** %din.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  store double %6, double* %topdgt, align 8
  %7 = load double, double* %topdgt, align 8
  %cmp = fcmp olt double %7, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load double, double* %topdgt, align 8
  %sub = fsub double -0.000000e+00, %8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load double, double* %topdgt, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %9, %cond.false ]
  store double %cond, double* %x, align 8
  %10 = load double, double* %x, align 8
  %add4 = fadd double %10, 5.000000e-01
  %11 = load i32, i32* %radix.addr, align 4
  %conv5 = sitofp i32 %11 to double
  %cmp6 = fcmp oge double %add4, %conv5
  %cond8 = select i1 %cmp6, i32 1, i32 0
  store i32 %cond8, i32* %shift, align 4
  %12 = load i32, i32* %nfft.addr, align 4
  %conv9 = sitofp i32 %12 to double
  %mul10 = fmul double %conv9, 5.000000e-01
  %13 = load double, double* %x, align 8
  %mul11 = fmul double %13, %mul10
  store double %mul11, double* %x, align 8
  %14 = load double*, double** %din.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %14, i64 1
  %15 = load double, double* %arrayidx12, align 8
  %16 = load double, double* %x, align 8
  %sub13 = fsub double %15, %16
  %17 = load i32, i32* %nfft.addr, align 4
  %add14 = add nsw i32 %17, 1
  %idxprom15 = sext i32 %add14 to i64
  %18 = load double*, double** %din.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %18, i64 %idxprom15
  store double %sub13, double* %arrayidx16, align 8
  %19 = load double, double* %x, align 8
  %20 = load double*, double** %din.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %20, i64 1
  store double %19, double* %arrayidx17, align 8
  %21 = load i32, i32* %n.addr, align 4
  store i32 %21, i32* %ndata, align 4
  %22 = load i32, i32* %n.addr, align 4
  %23 = load i32, i32* %nfft.addr, align 4
  %add18 = add nsw i32 %23, 1
  %24 = load i32, i32* %shift, align 4
  %add19 = add nsw i32 %add18, %24
  %cmp20 = icmp sgt i32 %22, %add19
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %25 = load i32, i32* %nfft.addr, align 4
  %add22 = add nsw i32 %25, 1
  %26 = load i32, i32* %shift, align 4
  %add23 = add nsw i32 %add22, %26
  store i32 %add23, i32* %ndata, align 4
  %27 = load i32, i32* %n.addr, align 4
  %add24 = add nsw i32 %27, 1
  store i32 %add24, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %ndata, align 4
  %add25 = add nsw i32 %29, 1
  %cmp26 = icmp sgt i32 %28, %add25
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %30 to i64
  %31 = load i32*, i32** %out.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %31, i64 %idxprom28
  store i32 0, i32* %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %j, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %cond.end
  store double 0.000000e+00, double* %x, align 8
  store double 1.000000e+00, double* %pow_radix, align 8
  %33 = load i32, i32* %ndata, align 4
  %add30 = add nsw i32 %33, 1
  %34 = load i32, i32* %shift, align 4
  %sub31 = sub nsw i32 %add30, %34
  store i32 %sub31, i32* %j, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.46, %if.end
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %nfft.addr, align 4
  %add33 = add nsw i32 %36, 1
  %cmp34 = icmp sle i32 %35, %add33
  br i1 %cmp34, label %for.body.36, label %for.end.47

for.body.36:                                      ; preds = %for.cond.32
  %37 = load double, double* %pow_radix, align 8
  %38 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %38 to i64
  %39 = load double*, double** %din.addr, align 8
  %arrayidx38 = getelementptr inbounds double, double* %39, i64 %idxprom37
  %40 = load double, double* %arrayidx38, align 8
  %mul39 = fmul double %37, %40
  %41 = load double, double* %x, align 8
  %add40 = fadd double %41, %mul39
  store double %add40, double* %x, align 8
  %42 = load double, double* %d1_radix, align 8
  %43 = load double, double* %pow_radix, align 8
  %mul41 = fmul double %43, %42
  store double %mul41, double* %pow_radix, align 8
  %44 = load double, double* %pow_radix, align 8
  %cmp42 = fcmp olt double %44, 0x3CB0000000000000
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.body.36
  br label %for.end.47

if.end.45:                                        ; preds = %for.body.36
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %45 = load i32, i32* %j, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.32

for.end.47:                                       ; preds = %if.then.44, %for.cond.32
  %46 = load double, double* %d1_radix2, align 8
  %47 = load double, double* %scale, align 8
  %48 = load double, double* %x, align 8
  %mul48 = fmul double %47, %48
  %add49 = fadd double %mul48, 5.000000e-01
  %mul50 = fmul double %46, %add49
  store double %mul50, double* %x, align 8
  %49 = load double, double* %x, align 8
  %conv51 = fptosi double %49 to i32
  %sub52 = sub nsw i32 %conv51, 1
  store i32 %sub52, i32* %carry2, align 4
  %50 = load i32, i32* %radix.addr, align 4
  %conv53 = sitofp i32 %50 to double
  %51 = load double, double* %x, align 8
  %52 = load i32, i32* %carry2, align 4
  %conv54 = sitofp i32 %52 to double
  %sub55 = fsub double %51, %conv54
  %mul56 = fmul double %conv53, %sub55
  %add57 = fadd double %mul56, 5.000000e-01
  %conv58 = fptosi double %add57 to i32
  store i32 %conv58, i32* %carry, align 4
  %53 = load i32, i32* %ndata, align 4
  store i32 %53, i32* %j, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.87, %for.end.47
  %54 = load i32, i32* %j, align 4
  %cmp60 = icmp sgt i32 %54, 1
  br i1 %cmp60, label %for.body.62, label %for.end.89

for.body.62:                                      ; preds = %for.cond.59
  %55 = load double, double* %d1_radix2, align 8
  %56 = load double, double* %scale, align 8
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %shift, align 4
  %sub63 = sub nsw i32 %57, %58
  %idxprom64 = sext i32 %sub63 to i64
  %59 = load double*, double** %din.addr, align 8
  %arrayidx65 = getelementptr inbounds double, double* %59, i64 %idxprom64
  %60 = load double, double* %arrayidx65, align 8
  %mul66 = fmul double %56, %60
  %61 = load i32, i32* %carry, align 4
  %conv67 = sitofp i32 %61 to double
  %add68 = fadd double %mul66, %conv67
  %add69 = fadd double %add68, 5.000000e-01
  %mul70 = fmul double %55, %add69
  store double %mul70, double* %x, align 8
  %62 = load i32, i32* %carry2, align 4
  store i32 %62, i32* %carry, align 4
  %63 = load double, double* %x, align 8
  %conv71 = fptosi double %63 to i32
  %sub72 = sub nsw i32 %conv71, 1
  store i32 %sub72, i32* %carry2, align 4
  %64 = load i32, i32* %radix.addr, align 4
  %conv73 = sitofp i32 %64 to double
  %65 = load double, double* %x, align 8
  %66 = load i32, i32* %carry2, align 4
  %conv74 = sitofp i32 %66 to double
  %sub75 = fsub double %65, %conv74
  %mul76 = fmul double %conv73, %sub75
  store double %mul76, double* %x, align 8
  %67 = load double, double* %x, align 8
  %conv77 = fptosi double %67 to i32
  store i32 %conv77, i32* %carry1, align 4
  %68 = load i32, i32* %radix.addr, align 4
  %conv78 = sitofp i32 %68 to double
  %69 = load double, double* %x, align 8
  %70 = load i32, i32* %carry1, align 4
  %conv79 = sitofp i32 %70 to double
  %sub80 = fsub double %69, %conv79
  %mul81 = fmul double %conv78, %sub80
  %conv82 = fptosi double %mul81 to i32
  %71 = load i32, i32* %j, align 4
  %add83 = add nsw i32 %71, 1
  %idxprom84 = sext i32 %add83 to i64
  %72 = load i32*, i32** %out.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %72, i64 %idxprom84
  store i32 %conv82, i32* %arrayidx85, align 4
  %73 = load i32, i32* %carry1, align 4
  %74 = load i32, i32* %carry, align 4
  %add86 = add nsw i32 %74, %73
  store i32 %add86, i32* %carry, align 4
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.62
  %75 = load i32, i32* %j, align 4
  %dec88 = add nsw i32 %75, -1
  store i32 %dec88, i32* %j, align 4
  br label %for.cond.59

for.end.89:                                       ; preds = %for.cond.59
  %76 = load i32, i32* %carry, align 4
  %conv90 = sitofp i32 %76 to double
  %77 = load i32, i32* %radix.addr, align 4
  %conv91 = sitofp i32 %77 to double
  %78 = load i32, i32* %carry2, align 4
  %conv92 = sitofp i32 %78 to double
  %mul93 = fmul double %conv91, %conv92
  %add94 = fadd double %conv90, %mul93
  %add95 = fadd double %add94, 5.000000e-01
  store double %add95, double* %x, align 8
  %79 = load i32, i32* %shift, align 4
  %cmp96 = icmp eq i32 %79, 0
  br i1 %cmp96, label %if.then.98, label %if.end.102

if.then.98:                                       ; preds = %for.end.89
  %80 = load double, double* %scale, align 8
  %81 = load double*, double** %din.addr, align 8
  %arrayidx99 = getelementptr inbounds double, double* %81, i64 1
  %82 = load double, double* %arrayidx99, align 8
  %mul100 = fmul double %80, %82
  %83 = load double, double* %x, align 8
  %add101 = fadd double %83, %mul100
  store double %add101, double* %x, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.98, %for.end.89
  %84 = load double, double* %d1_radix, align 8
  %85 = load double, double* %x, align 8
  %mul103 = fmul double %84, %85
  %conv104 = fptosi double %mul103 to i32
  store i32 %conv104, i32* %carry, align 4
  %86 = load double, double* %x, align 8
  %87 = load i32, i32* %radix.addr, align 4
  %conv105 = sitofp i32 %87 to double
  %88 = load i32, i32* %carry, align 4
  %conv106 = sitofp i32 %88 to double
  %mul107 = fmul double %conv105, %conv106
  %sub108 = fsub double %86, %mul107
  %conv109 = fptosi double %sub108 to i32
  %89 = load i32*, i32** %out.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %conv109, i32* %arrayidx110, align 4
  %90 = load i32, i32* %carry, align 4
  %cmp111 = icmp sgt i32 %90, 0
  br i1 %cmp111, label %if.then.113, label %if.end.129

if.then.113:                                      ; preds = %if.end.102
  %91 = load i32, i32* %n.addr, align 4
  %add114 = add nsw i32 %91, 1
  store i32 %add114, i32* %j, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.124, %if.then.113
  %92 = load i32, i32* %j, align 4
  %cmp116 = icmp sgt i32 %92, 2
  br i1 %cmp116, label %for.body.118, label %for.end.126

for.body.118:                                     ; preds = %for.cond.115
  %93 = load i32, i32* %j, align 4
  %sub119 = sub nsw i32 %93, 1
  %idxprom120 = sext i32 %sub119 to i64
  %94 = load i32*, i32** %out.addr, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %94, i64 %idxprom120
  %95 = load i32, i32* %arrayidx121, align 4
  %96 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %96 to i64
  %97 = load i32*, i32** %out.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %97, i64 %idxprom122
  store i32 %95, i32* %arrayidx123, align 4
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.118
  %98 = load i32, i32* %j, align 4
  %dec125 = add nsw i32 %98, -1
  store i32 %dec125, i32* %j, align 4
  br label %for.cond.115

for.end.126:                                      ; preds = %for.cond.115
  %99 = load i32, i32* %carry, align 4
  %100 = load i32*, i32** %out.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %99, i32* %arrayidx127, align 4
  %101 = load i32, i32* %shift, align 4
  %inc128 = add nsw i32 %101, 1
  store i32 %inc128, i32* %shift, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %for.end.126, %if.end.102
  %102 = load double*, double** %din.addr, align 8
  %arrayidx130 = getelementptr inbounds double, double* %102, i64 0
  %103 = load double, double* %arrayidx130, align 8
  %104 = load i32, i32* %shift, align 4
  %conv131 = sitofp i32 %104 to double
  %add132 = fadd double %103, %conv131
  %add133 = fadd double %add132, 5.000000e-01
  store double %add133, double* %x, align 8
  %105 = load double, double* %x, align 8
  %conv134 = fptosi double %105 to i32
  %sub135 = sub nsw i32 %conv134, 1
  store i32 %sub135, i32* %shift, align 4
  %106 = load i32, i32* %shift, align 4
  %107 = load double, double* %x, align 8
  %108 = load i32, i32* %shift, align 4
  %conv136 = sitofp i32 %108 to double
  %sub137 = fsub double %107, %conv136
  %conv138 = fptosi double %sub137 to i32
  %add139 = add nsw i32 %106, %conv138
  %109 = load i32*, i32** %out.addr, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 %add139, i32* %arrayidx140, align 4
  %110 = load double, double* %topdgt, align 8
  %cmp141 = fcmp ogt double %110, 5.000000e-01
  %cond143 = select i1 %cmp141, i32 1, i32 -1
  %111 = load i32*, i32** %out.addr, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %cond143, i32* %arrayidx144, align 4
  %112 = load i32*, i32** %out.addr, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %112, i64 2
  %113 = load i32, i32* %arrayidx145, align 4
  %cmp146 = icmp eq i32 %113, 0
  br i1 %cmp146, label %if.then.148, label %if.end.151

if.then.148:                                      ; preds = %if.end.129
  %114 = load i32*, i32** %out.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 0, i32* %arrayidx149, align 4
  %115 = load i32*, i32** %out.addr, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 0, i32* %arrayidx150, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.148, %if.end.129
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_mul_cmuladd(i32 %nfft, double* %din1, double* %din2, double* %dinout) #0 {
entry:
  %nfft.addr = alloca i32, align 4
  %din1.addr = alloca double*, align 8
  %din2.addr = alloca double*, align 8
  %dinout.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %xr = alloca double, align 8
  %xi = alloca double, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %din1, double** %din1.addr, align 8
  store double* %din2, double** %din2.addr, align 8
  store double* %dinout, double** %dinout.addr, align 8
  %0 = load double*, double** %din1.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 1
  %1 = load double, double* %arrayidx, align 8
  %2 = load double*, double** %din2.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 1
  %3 = load double, double* %arrayidx1, align 8
  %mul = fmul double %1, %3
  %4 = load double*, double** %dinout.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 1
  %5 = load double, double* %arrayidx2, align 8
  %add = fadd double %5, %mul
  store double %add, double* %arrayidx2, align 8
  %6 = load double*, double** %din1.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 2
  %7 = load double, double* %arrayidx3, align 8
  %8 = load double*, double** %din2.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 2
  %9 = load double, double* %arrayidx4, align 8
  %mul5 = fmul double %7, %9
  %10 = load double*, double** %dinout.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 2
  %11 = load double, double* %arrayidx6, align 8
  %add7 = fadd double %11, %mul5
  store double %add7, double* %arrayidx6, align 8
  store i32 3, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %nfft.addr, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %j, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load double*, double** %din1.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %15, i64 %idxprom
  %16 = load double, double* %arrayidx8, align 8
  store double %16, double* %xr, align 8
  %17 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %17, 1
  %idxprom10 = sext i32 %add9 to i64
  %18 = load double*, double** %din1.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %18, i64 %idxprom10
  %19 = load double, double* %arrayidx11, align 8
  store double %19, double* %xi, align 8
  %20 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %20 to i64
  %21 = load double*, double** %din2.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %21, i64 %idxprom12
  %22 = load double, double* %arrayidx13, align 8
  store double %22, double* %yr, align 8
  %23 = load i32, i32* %j, align 4
  %add14 = add nsw i32 %23, 1
  %idxprom15 = sext i32 %add14 to i64
  %24 = load double*, double** %din2.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %24, i64 %idxprom15
  %25 = load double, double* %arrayidx16, align 8
  store double %25, double* %yi, align 8
  %26 = load double, double* %xr, align 8
  %27 = load double, double* %yr, align 8
  %mul17 = fmul double %26, %27
  %28 = load double, double* %xi, align 8
  %29 = load double, double* %yi, align 8
  %mul18 = fmul double %28, %29
  %sub = fsub double %mul17, %mul18
  %30 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %30 to i64
  %31 = load double*, double** %dinout.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %31, i64 %idxprom19
  %32 = load double, double* %arrayidx20, align 8
  %add21 = fadd double %32, %sub
  store double %add21, double* %arrayidx20, align 8
  %33 = load double, double* %xr, align 8
  %34 = load double, double* %yi, align 8
  %mul22 = fmul double %33, %34
  %35 = load double, double* %xi, align 8
  %36 = load double, double* %yr, align 8
  %mul23 = fmul double %35, %36
  %add24 = fadd double %mul22, %mul23
  %37 = load i32, i32* %j, align 4
  %add25 = add nsw i32 %37, 1
  %idxprom26 = sext i32 %add25 to i64
  %38 = load double*, double** %dinout.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %38, i64 %idxprom26
  %39 = load double, double* %arrayidx27, align 8
  %add28 = fadd double %39, %add24
  store double %add28, double* %arrayidx27, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %j, align 4
  %add29 = add nsw i32 %40, 2
  store i32 %add29, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %nfft.addr, align 4
  %add30 = add nsw i32 %41, 1
  %idxprom31 = sext i32 %add30 to i64
  %42 = load double*, double** %din1.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %42, i64 %idxprom31
  %43 = load double, double* %arrayidx32, align 8
  %44 = load i32, i32* %nfft.addr, align 4
  %add33 = add nsw i32 %44, 1
  %idxprom34 = sext i32 %add33 to i64
  %45 = load double*, double** %din2.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %45, i64 %idxprom34
  %46 = load double, double* %arrayidx35, align 8
  %mul36 = fmul double %43, %46
  %47 = load i32, i32* %nfft.addr, align 4
  %add37 = add nsw i32 %47, 1
  %idxprom38 = sext i32 %add37 to i64
  %48 = load double*, double** %dinout.addr, align 8
  %arrayidx39 = getelementptr inbounds double, double* %48, i64 %idxprom38
  %49 = load double, double* %arrayidx39, align 8
  %add40 = fadd double %49, %mul36
  store double %add40, double* %arrayidx39, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_mulh(i32 %n, i32 %radix, i32* %in1, i32* %in2, i32* %out, i32 %nfft, double* %in1fft, double* %outfft, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in1.addr = alloca i32*, align 8
  %in2.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %nfft.addr = alloca i32, align 4
  %in1fft.addr = alloca double*, align 8
  %outfft.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in1, i32** %in1.addr, align 8
  store i32* %in2, i32** %in2.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %in1fft, double** %in1fft.addr, align 8
  store double* %outfft, double** %outfft.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %radix.addr, align 4
  %2 = load i32, i32* %nfft.addr, align 4
  %3 = load i32*, i32** %in1.addr, align 8
  %4 = load double*, double** %in1fft.addr, align 8
  call void @mp_mul_i2d(i32 %0, i32 %1, i32 %2, i32 0, i32* %3, double* %4)
  %5 = load i32, i32* %nfft.addr, align 4
  %6 = load double*, double** %in1fft.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %6, i64 1
  %7 = load i32*, i32** %ip.addr, align 8
  %8 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %5, i32 1, double* %arrayidx, i32* %7, double* %8)
  %9 = load i32, i32* %n.addr, align 4
  %10 = load i32, i32* %radix.addr, align 4
  %11 = load i32, i32* %nfft.addr, align 4
  %12 = load i32*, i32** %in2.addr, align 8
  %13 = load double*, double** %outfft.addr, align 8
  call void @mp_mul_i2d(i32 %9, i32 %10, i32 %11, i32 0, i32* %12, double* %13)
  %14 = load i32, i32* %nfft.addr, align 4
  %15 = load double*, double** %outfft.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %15, i64 1
  %16 = load i32*, i32** %ip.addr, align 8
  %17 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %14, i32 1, double* %arrayidx1, i32* %16, double* %17)
  %18 = load i32, i32* %nfft.addr, align 4
  %19 = load double*, double** %in1fft.addr, align 8
  %20 = load double*, double** %outfft.addr, align 8
  call void @mp_mul_cmul(i32 %18, double* %19, double* %20)
  %21 = load i32, i32* %nfft.addr, align 4
  %22 = load double*, double** %outfft.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %22, i64 1
  %23 = load i32*, i32** %ip.addr, align 8
  %24 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %21, i32 -1, double* %arrayidx2, i32* %23, double* %24)
  %25 = load i32, i32* %n.addr, align 4
  %26 = load i32, i32* %radix.addr, align 4
  %27 = load i32, i32* %nfft.addr, align 4
  %28 = load double*, double** %outfft.addr, align 8
  %29 = load i32*, i32** %out.addr, align 8
  call void @mp_mul_d2i(i32 %25, i32 %26, i32 %27, double* %28, i32* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_mulh_use_in1fft(i32 %n, i32 %radix, double* %in1fft, i32 %shift, i32* %in2, i32* %out, i32 %nfft, double* %outfft, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in1fft.addr = alloca double*, align 8
  %shift.addr = alloca i32, align 4
  %in2.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %nfft.addr = alloca i32, align 4
  %outfft.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store double* %in1fft, double** %in1fft.addr, align 8
  store i32 %shift, i32* %shift.addr, align 4
  store i32* %in2, i32** %in2.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %outfft, double** %outfft.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %shift.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %shift.addr, align 4
  %add = add nsw i32 %2, 2
  %idxprom = sext i32 %add to i64
  %3 = load i32*, i32** %in2.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = load i32, i32* %shift.addr, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %shift.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %6 = load i32, i32* %n.addr, align 4
  %7 = load i32, i32* %radix.addr, align 4
  %8 = load i32, i32* %nfft.addr, align 4
  %9 = load i32, i32* %shift.addr, align 4
  %10 = load i32*, i32** %in2.addr, align 8
  %11 = load double*, double** %outfft.addr, align 8
  call void @mp_mul_i2d(i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, double* %11)
  %12 = load i32, i32* %nfft.addr, align 4
  %13 = load double*, double** %outfft.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %13, i64 1
  %14 = load i32*, i32** %ip.addr, align 8
  %15 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %12, i32 1, double* %arrayidx2, i32* %14, double* %15)
  %16 = load i32, i32* %nfft.addr, align 4
  %17 = load double*, double** %in1fft.addr, align 8
  %18 = load double*, double** %outfft.addr, align 8
  call void @mp_mul_cmul(i32 %16, double* %17, double* %18)
  %19 = load i32, i32* %nfft.addr, align 4
  %20 = load double*, double** %outfft.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %20, i64 1
  %21 = load i32*, i32** %ip.addr, align 8
  %22 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %19, i32 -1, double* %arrayidx3, i32* %21, double* %22)
  %23 = load i32, i32* %n.addr, align 4
  %24 = load i32, i32* %radix.addr, align 4
  %25 = load i32, i32* %nfft.addr, align 4
  %26 = load double*, double** %outfft.addr, align 8
  %27 = load i32*, i32** %out.addr, align 8
  call void @mp_mul_d2i(i32 %23, i32 %24, i32 %25, double* %26, i32* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mp_squh_use_in1fft(i32 %n, i32 %radix, double* %inoutfft, i32* %out, i32 %nfft, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %inoutfft.addr = alloca double*, align 8
  %out.addr = alloca i32*, align 8
  %nfft.addr = alloca i32, align 4
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store double* %inoutfft, double** %inoutfft.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32 %nfft, i32* %nfft.addr, align 4
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %nfft.addr, align 4
  %1 = load double*, double** %inoutfft.addr, align 8
  call void @mp_mul_csqu(i32 %0, double* %1)
  %2 = load i32, i32* %nfft.addr, align 4
  %3 = load double*, double** %inoutfft.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 1
  %4 = load i32*, i32** %ip.addr, align 8
  %5 = load double*, double** %w.addr, align 8
  call void @rdft(i32 %2, i32 -1, double* %arrayidx, i32* %4, double* %5)
  %6 = load i32, i32* %n.addr, align 4
  %7 = load i32, i32* %radix.addr, align 4
  %8 = load i32, i32* %nfft.addr, align 4
  %9 = load double*, double** %inoutfft.addr, align 8
  %10 = load i32*, i32** %out.addr, align 8
  call void @mp_mul_d2i(i32 %6, i32 %7, i32 %8, double* %9, i32* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mp_get_nfft_init(i32 %radix, i32 %nfft_max) #0 {
entry:
  %radix.addr = alloca i32, align 4
  %nfft_max.addr = alloca i32, align 4
  %nfft_init = alloca i32, align 4
  %r = alloca double, align 8
  store i32 %radix, i32* %radix.addr, align 4
  store i32 %nfft_max, i32* %nfft_max.addr, align 4
  %0 = load i32, i32* %radix.addr, align 4
  %conv = sitofp i32 %0 to double
  store double %conv, double* %r, align 8
  store i32 1, i32* %nfft_init, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %1 = load double, double* %r, align 8
  %2 = load double, double* %r, align 8
  %mul = fmul double %2, %1
  store double %mul, double* %r, align 8
  %3 = load i32, i32* %nfft_init, align 4
  %shl = shl i32 %3, 1
  store i32 %shl, i32* %nfft_init, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load double, double* %r, align 8
  %mul1 = fmul double 0x3CB0000000000000, %4
  %cmp = fcmp olt double %mul1, 1.000000e+00
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %5 = load i32, i32* %nfft_init, align 4
  %6 = load i32, i32* %nfft_max.addr, align 4
  %cmp3 = icmp slt i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %7 = phi i1 [ false, %do.cond ], [ %cmp3, %land.rhs ]
  br i1 %7, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %8 = load i32, i32* %nfft_init, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @mp_inv_init(i32 %n, i32 %radix, i32* %in, i32* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %outexp = alloca i32, align 4
  %din = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in, i32** %in.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  %0 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %out.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  store i32 %1, i32* %arrayidx1, align 4
  %3 = load i32*, i32** %in.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 1
  %4 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 0, %4
  store i32 %sub, i32* %outexp, align 4
  %5 = load i32, i32* %n.addr, align 4
  %6 = load i32, i32* %radix.addr, align 4
  %7 = load i32*, i32** %in.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 2
  %call = call double @mp_unexp_mp2d(i32 %5, i32 %6, i32* %arrayidx3)
  %div = fdiv double 1.000000e+00, %call
  store double %div, double* %din, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load double, double* %din, align 8
  %cmp = fcmp olt double %8, 1.000000e+00
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %radix.addr, align 4
  %conv = sitofp i32 %9 to double
  %10 = load double, double* %din, align 8
  %mul = fmul double %10, %conv
  store double %mul, double* %din, align 8
  %11 = load i32, i32* %outexp, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %outexp, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %outexp, align 4
  %13 = load i32*, i32** %out.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 %12, i32* %arrayidx4, align 4
  %14 = load i32, i32* %n.addr, align 4
  %15 = load i32, i32* %radix.addr, align 4
  %16 = load double, double* %din, align 8
  %17 = load i32*, i32** %out.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %17, i64 2
  call void @mp_unexp_d2mp(i32 %14, i32 %15, double %16, i32* %arrayidx5)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mp_inv_newton(i32 %n, i32 %radix, i32* %in, i32* %inout, i32* %tmp1, i32* %tmp2, i32 %nfft, double* %tmp1fft, double* %tmp2fft, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in.addr = alloca i32*, align 8
  %inout.addr = alloca i32*, align 8
  %tmp1.addr = alloca i32*, align 8
  %tmp2.addr = alloca i32*, align 8
  %nfft.addr = alloca i32, align 4
  %tmp1fft.addr = alloca double*, align 8
  %tmp2fft.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %n_h = alloca i32, align 4
  %shift = alloca i32, align 4
  %prc = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in, i32** %in.addr, align 8
  store i32* %inout, i32** %inout.addr, align 8
  store i32* %tmp1, i32** %tmp1.addr, align 8
  store i32* %tmp2, i32** %tmp2.addr, align 8
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %tmp1fft, double** %tmp1fft.addr, align 8
  store double* %tmp2fft, double** %tmp2fft.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %nfft.addr, align 4
  %shr = ashr i32 %0, 1
  %add = add nsw i32 %shr, 1
  store i32 %add, i32* %shift, align 4
  %1 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %1, 2
  %add1 = add nsw i32 %div, 1
  store i32 %add1, i32* %n_h, align 4
  %2 = load i32, i32* %n_h, align 4
  %3 = load i32, i32* %n.addr, align 4
  %4 = load i32, i32* %shift, align 4
  %sub = sub nsw i32 %3, %4
  %cmp = icmp slt i32 %2, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %n.addr, align 4
  %6 = load i32, i32* %shift, align 4
  %sub2 = sub nsw i32 %5, %6
  store i32 %sub2, i32* %n_h, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %n.addr, align 4
  %8 = load i32, i32* %radix.addr, align 4
  %9 = load i32, i32* %shift, align 4
  %10 = load i32*, i32** %inout.addr, align 8
  call void @mp_round(i32 %7, i32 %8, i32 %9, i32* %10)
  %11 = load i32, i32* %n.addr, align 4
  %12 = load i32, i32* %radix.addr, align 4
  %13 = load i32*, i32** %inout.addr, align 8
  %14 = load i32*, i32** %in.addr, align 8
  %15 = load i32*, i32** %tmp1.addr, align 8
  %16 = load i32, i32* %nfft.addr, align 4
  %17 = load double*, double** %tmp1fft.addr, align 8
  %18 = load double*, double** %tmp2fft.addr, align 8
  %19 = load i32*, i32** %ip.addr, align 8
  %20 = load double*, double** %w.addr, align 8
  call void @mp_mulh(i32 %11, i32 %12, i32* %13, i32* %14, i32* %15, i32 %16, double* %17, double* %18, i32* %19, double* %20)
  %21 = load i32, i32* %n.addr, align 4
  %22 = load i32, i32* %radix.addr, align 4
  %23 = load i32*, i32** %tmp2.addr, align 8
  call void @mp_load_1(i32 %21, i32 %22, i32* %23)
  %24 = load i32, i32* %n.addr, align 4
  %25 = load i32, i32* %radix.addr, align 4
  %26 = load i32*, i32** %tmp2.addr, align 8
  %27 = load i32*, i32** %tmp1.addr, align 8
  %28 = load i32*, i32** %tmp2.addr, align 8
  call void @mp_sub(i32 %24, i32 %25, i32* %26, i32* %27, i32* %28)
  %29 = load i32, i32* %n.addr, align 4
  %30 = load i32, i32* %radix.addr, align 4
  %31 = load double*, double** %tmp1fft.addr, align 8
  %32 = load i32, i32* %shift, align 4
  %33 = load i32*, i32** %in.addr, align 8
  %34 = load i32*, i32** %tmp1.addr, align 8
  %35 = load i32, i32* %nfft.addr, align 4
  %36 = load double*, double** %tmp2fft.addr, align 8
  %37 = load i32*, i32** %ip.addr, align 8
  %38 = load double*, double** %w.addr, align 8
  call void @mp_mulh_use_in1fft(i32 %29, i32 %30, double* %31, i32 %32, i32* %33, i32* %34, i32 %35, double* %36, i32* %37, double* %38)
  %39 = load i32, i32* %n_h, align 4
  %40 = load i32, i32* %radix.addr, align 4
  %41 = load i32*, i32** %tmp2.addr, align 8
  %42 = load i32*, i32** %tmp1.addr, align 8
  %43 = load i32*, i32** %tmp2.addr, align 8
  call void @mp_sub(i32 %39, i32 %40, i32* %41, i32* %42, i32* %43)
  %44 = load i32*, i32** %tmp2.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %44, i64 1
  %45 = load i32, i32* %arrayidx, align 4
  %sub3 = sub nsw i32 0, %45
  store i32 %sub3, i32* %prc, align 4
  %46 = load i32*, i32** %tmp2.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %46, i64 0
  %47 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp eq i32 %47, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %48 = load i32, i32* %nfft.addr, align 4
  %add7 = add nsw i32 %48, 1
  store i32 %add7, i32* %prc, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %49 = load i32, i32* %n_h, align 4
  %50 = load i32, i32* %radix.addr, align 4
  %51 = load double*, double** %tmp1fft.addr, align 8
  %52 = load i32*, i32** %tmp2.addr, align 8
  %53 = load i32*, i32** %tmp2.addr, align 8
  %54 = load i32, i32* %nfft.addr, align 4
  %55 = load double*, double** %tmp2fft.addr, align 8
  %56 = load i32*, i32** %ip.addr, align 8
  %57 = load double*, double** %w.addr, align 8
  call void @mp_mulh_use_in1fft(i32 %49, i32 %50, double* %51, i32 0, i32* %52, i32* %53, i32 %54, double* %55, i32* %56, double* %57)
  %58 = load i32, i32* %n.addr, align 4
  %59 = load i32, i32* %radix.addr, align 4
  %60 = load i32*, i32** %inout.addr, align 8
  %61 = load i32*, i32** %tmp2.addr, align 8
  %62 = load i32*, i32** %inout.addr, align 8
  call void @mp_add(i32 %58, i32 %59, i32* %60, i32* %61, i32* %62)
  %63 = load i32, i32* %prc, align 4
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define void @mp_sqrt_init(i32 %n, i32 %radix, i32* %in, i32* %out, i32* %out_rev) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %out_rev.addr = alloca i32*, align 8
  %outexp = alloca i32, align 4
  %din = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in, i32** %in.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32* %out_rev, i32** %out_rev.addr, align 8
  %0 = load i32*, i32** %out.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %1 = load i32*, i32** %out_rev.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %1, i64 0
  store i32 1, i32* %arrayidx1, align 4
  %2 = load i32*, i32** %in.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %2, i64 1
  %3 = load i32, i32* %arrayidx2, align 4
  store i32 %3, i32* %outexp, align 4
  %4 = load i32, i32* %n.addr, align 4
  %5 = load i32, i32* %radix.addr, align 4
  %6 = load i32*, i32** %in.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 2
  %call = call double @mp_unexp_mp2d(i32 %4, i32 %5, i32* %arrayidx3)
  store double %call, double* %din, align 8
  %7 = load i32, i32* %outexp, align 4
  %rem = srem i32 %7, 2
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %radix.addr, align 4
  %conv = sitofp i32 %8 to double
  %9 = load double, double* %din, align 8
  %mul = fmul double %9, %conv
  store double %mul, double* %din, align 8
  %10 = load i32, i32* %outexp, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %outexp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %outexp, align 4
  %div = sdiv i32 %11, 2
  store i32 %div, i32* %outexp, align 4
  %12 = load double, double* %din, align 8
  %call4 = call double @sqrt(double %12) #5
  store double %call4, double* %din, align 8
  %13 = load double, double* %din, align 8
  %cmp5 = fcmp olt double %13, 1.000000e+00
  br i1 %cmp5, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %14 = load i32, i32* %radix.addr, align 4
  %conv8 = sitofp i32 %14 to double
  %15 = load double, double* %din, align 8
  %mul9 = fmul double %15, %conv8
  store double %mul9, double* %din, align 8
  %16 = load i32, i32* %outexp, align 4
  %dec10 = add nsw i32 %16, -1
  store i32 %dec10, i32* %outexp, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end
  %17 = load i32, i32* %outexp, align 4
  %18 = load i32*, i32** %out.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %17, i32* %arrayidx12, align 4
  %19 = load i32, i32* %n.addr, align 4
  %20 = load i32, i32* %radix.addr, align 4
  %21 = load double, double* %din, align 8
  %22 = load i32*, i32** %out.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %22, i64 2
  call void @mp_unexp_d2mp(i32 %19, i32 %20, double %21, i32* %arrayidx13)
  %23 = load i32, i32* %outexp, align 4
  %sub = sub nsw i32 0, %23
  store i32 %sub, i32* %outexp, align 4
  %24 = load double, double* %din, align 8
  %div14 = fdiv double 1.000000e+00, %24
  store double %div14, double* %din, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.11
  %25 = load double, double* %din, align 8
  %cmp15 = fcmp olt double %25, 1.000000e+00
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i32, i32* %radix.addr, align 4
  %conv17 = sitofp i32 %26 to double
  %27 = load double, double* %din, align 8
  %mul18 = fmul double %27, %conv17
  store double %mul18, double* %din, align 8
  %28 = load i32, i32* %outexp, align 4
  %dec19 = add nsw i32 %28, -1
  store i32 %dec19, i32* %outexp, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i32, i32* %outexp, align 4
  %30 = load i32*, i32** %out_rev.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %29, i32* %arrayidx20, align 4
  %31 = load i32, i32* %n.addr, align 4
  %32 = load i32, i32* %radix.addr, align 4
  %33 = load double, double* %din, align 8
  %34 = load i32*, i32** %out_rev.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %34, i64 2
  call void @mp_unexp_d2mp(i32 %31, i32 %32, double %33, i32* %arrayidx21)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mp_sqrt_newton(i32 %n, i32 %radix, i32* %in, i32* %inout, i32* %inout_rev, i32* %tmp, i32 %nfft, double* %tmp1fft, double* %tmp2fft, i32* %ip, double* %w, i32* %n_tmp1fft) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in.addr = alloca i32*, align 8
  %inout.addr = alloca i32*, align 8
  %inout_rev.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %nfft.addr = alloca i32, align 4
  %tmp1fft.addr = alloca double*, align 8
  %tmp2fft.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %n_tmp1fft.addr = alloca i32*, align 8
  %n_h = alloca i32, align 4
  %nfft_h = alloca i32, align 4
  %shift = alloca i32, align 4
  %prc = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in, i32** %in.addr, align 8
  store i32* %inout, i32** %inout.addr, align 8
  store i32* %inout_rev, i32** %inout_rev.addr, align 8
  store i32* %tmp, i32** %tmp.addr, align 8
  store i32 %nfft, i32* %nfft.addr, align 4
  store double* %tmp1fft, double** %tmp1fft.addr, align 8
  store double* %tmp2fft, double** %tmp2fft.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  store i32* %n_tmp1fft, i32** %n_tmp1fft.addr, align 8
  %0 = load i32, i32* %nfft.addr, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, i32* %nfft_h, align 4
  %1 = load i32, i32* %nfft_h, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %shift, align 4
  %2 = load i32, i32* %nfft_h, align 4
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %nfft_h, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %3, 2
  %add5 = add nsw i32 %div, 1
  store i32 %add5, i32* %n_h, align 4
  %4 = load i32, i32* %n_h, align 4
  %5 = load i32, i32* %n.addr, align 4
  %6 = load i32, i32* %shift, align 4
  %sub = sub nsw i32 %5, %6
  %cmp6 = icmp slt i32 %4, %sub
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %7 = load i32, i32* %n.addr, align 4
  %8 = load i32, i32* %shift, align 4
  %sub8 = sub nsw i32 %7, %8
  store i32 %sub8, i32* %n_h, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %9 = load i32, i32* %n_h, align 4
  %10 = load i32, i32* %radix.addr, align 4
  %11 = load i32, i32* %nfft_h, align 4
  %shr10 = ashr i32 %11, 1
  %add11 = add nsw i32 %shr10, 1
  %12 = load i32*, i32** %inout_rev.addr, align 8
  call void @mp_round(i32 %9, i32 %10, i32 %add11, i32* %12)
  %13 = load i32*, i32** %n_tmp1fft.addr, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %nfft_h, align 4
  %cmp12 = icmp ne i32 %14, %15
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.9
  %16 = load i32, i32* %n_h, align 4
  %17 = load i32, i32* %radix.addr, align 4
  %18 = load i32*, i32** %inout_rev.addr, align 8
  %19 = load i32*, i32** %tmp.addr, align 8
  %20 = load i32, i32* %nfft_h, align 4
  %21 = load double*, double** %tmp1fft.addr, align 8
  %22 = load i32*, i32** %ip.addr, align 8
  %23 = load double*, double** %w.addr, align 8
  call void @mp_squh(i32 %16, i32 %17, i32* %18, i32* %19, i32 %20, double* %21, i32* %22, double* %23)
  br label %if.end.14

if.else:                                          ; preds = %if.end.9
  %24 = load i32, i32* %n_h, align 4
  %25 = load i32, i32* %radix.addr, align 4
  %26 = load double*, double** %tmp1fft.addr, align 8
  %27 = load i32*, i32** %tmp.addr, align 8
  %28 = load i32, i32* %nfft_h, align 4
  %29 = load i32*, i32** %ip.addr, align 8
  %30 = load double*, double** %w.addr, align 8
  call void @mp_squh_use_in1fft(i32 %24, i32 %25, double* %26, i32* %27, i32 %28, i32* %29, double* %30)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  %31 = load i32, i32* %n.addr, align 4
  %32 = load i32, i32* %radix.addr, align 4
  %33 = load i32, i32* %shift, align 4
  %34 = load i32*, i32** %inout.addr, align 8
  call void @mp_round(i32 %31, i32 %32, i32 %33, i32* %34)
  %35 = load i32, i32* %n_h, align 4
  %36 = load i32, i32* %radix.addr, align 4
  %37 = load i32*, i32** %inout.addr, align 8
  %38 = load i32*, i32** %tmp.addr, align 8
  %39 = load i32*, i32** %tmp.addr, align 8
  %40 = load i32, i32* %nfft.addr, align 4
  %41 = load double*, double** %tmp1fft.addr, align 8
  %42 = load double*, double** %tmp2fft.addr, align 8
  %43 = load i32*, i32** %ip.addr, align 8
  %44 = load double*, double** %w.addr, align 8
  call void @mp_mulh(i32 %35, i32 %36, i32* %37, i32* %38, i32* %39, i32 %40, double* %41, double* %42, i32* %43, double* %44)
  %45 = load i32, i32* %n_h, align 4
  %46 = load i32, i32* %radix.addr, align 4
  %47 = load i32*, i32** %inout_rev.addr, align 8
  %48 = load i32*, i32** %tmp.addr, align 8
  %49 = load i32*, i32** %tmp.addr, align 8
  call void @mp_sub(i32 %45, i32 %46, i32* %47, i32* %48, i32* %49)
  %50 = load i32, i32* %n_h, align 4
  %51 = load i32, i32* %radix.addr, align 4
  %52 = load i32*, i32** %inout_rev.addr, align 8
  %53 = load i32*, i32** %tmp.addr, align 8
  %54 = load i32*, i32** %inout_rev.addr, align 8
  call void @mp_add(i32 %50, i32 %51, i32* %52, i32* %53, i32* %54)
  %55 = load i32, i32* %n.addr, align 4
  %56 = load i32, i32* %radix.addr, align 4
  %57 = load double*, double** %tmp1fft.addr, align 8
  %58 = load i32*, i32** %tmp.addr, align 8
  %59 = load i32, i32* %nfft.addr, align 4
  %60 = load i32*, i32** %ip.addr, align 8
  %61 = load double*, double** %w.addr, align 8
  call void @mp_squh_use_in1fft(i32 %55, i32 %56, double* %57, i32* %58, i32 %59, i32* %60, double* %61)
  %62 = load i32, i32* %n.addr, align 4
  %63 = load i32, i32* %radix.addr, align 4
  %64 = load i32*, i32** %in.addr, align 8
  %65 = load i32*, i32** %tmp.addr, align 8
  %66 = load i32*, i32** %tmp.addr, align 8
  call void @mp_sub(i32 %62, i32 %63, i32* %64, i32* %65, i32* %66)
  %67 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %67, i64 1
  %68 = load i32, i32* %arrayidx, align 4
  %69 = load i32*, i32** %tmp.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %69, i64 1
  %70 = load i32, i32* %arrayidx15, align 4
  %sub16 = sub nsw i32 %68, %70
  store i32 %sub16, i32* %prc, align 4
  %71 = load i32*, i32** %in.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %71, i64 2
  %72 = load i32, i32* %arrayidx17, align 4
  %73 = load i32*, i32** %tmp.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %73, i64 2
  %74 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp sgt i32 %72, %74
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.14
  %75 = load i32, i32* %prc, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %prc, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.14
  %76 = load i32*, i32** %tmp.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %76, i64 0
  %77 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp eq i32 %77, 0
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.21
  %78 = load i32, i32* %nfft.addr, align 4
  %add25 = add nsw i32 %78, 1
  store i32 %add25, i32* %prc, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.21
  %79 = load i32, i32* %n_h, align 4
  %80 = load i32, i32* %radix.addr, align 4
  %81 = load i32, i32* %shift, align 4
  %82 = load i32*, i32** %inout_rev.addr, align 8
  call void @mp_round(i32 %79, i32 %80, i32 %81, i32* %82)
  %83 = load i32, i32* %n_h, align 4
  %84 = load i32, i32* %radix.addr, align 4
  %85 = load i32*, i32** %inout_rev.addr, align 8
  %86 = load i32*, i32** %tmp.addr, align 8
  %87 = load i32*, i32** %tmp.addr, align 8
  %88 = load i32, i32* %nfft.addr, align 4
  %89 = load double*, double** %tmp1fft.addr, align 8
  %90 = load double*, double** %tmp2fft.addr, align 8
  %91 = load i32*, i32** %ip.addr, align 8
  %92 = load double*, double** %w.addr, align 8
  call void @mp_mulh(i32 %83, i32 %84, i32* %85, i32* %86, i32* %87, i32 %88, double* %89, double* %90, i32* %91, double* %92)
  %93 = load i32, i32* %nfft.addr, align 4
  %94 = load i32*, i32** %n_tmp1fft.addr, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %n_h, align 4
  %96 = load i32, i32* %radix.addr, align 4
  %97 = load i32*, i32** %tmp.addr, align 8
  %98 = load i32*, i32** %tmp.addr, align 8
  call void @mp_idiv_2(i32 %95, i32 %96, i32* %97, i32* %98)
  %99 = load i32, i32* %n.addr, align 4
  %100 = load i32, i32* %radix.addr, align 4
  %101 = load i32*, i32** %inout.addr, align 8
  %102 = load i32*, i32** %tmp.addr, align 8
  %103 = load i32*, i32** %inout.addr, align 8
  call void @mp_add(i32 %99, i32 %100, i32* %101, i32* %102, i32* %103)
  %104 = load i32, i32* %prc, align 4
  ret i32 %104
}

; Function Attrs: nounwind uwtable
define double @mp_unexp_mp2d(i32 %n, i32 %radix, i32* %in) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %in.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %d1_radix = alloca double, align 8
  %dout = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store i32* %in, i32** %in.addr, align 8
  %0 = load i32, i32* %radix.addr, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %d1_radix, align 8
  store double 0.000000e+00, double* %dout, align 8
  %1 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, double* %d1_radix, align 8
  %4 = load double, double* %dout, align 8
  %mul = fmul double %3, %4
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %conv2 = sitofp i32 %7 to double
  %add = fadd double %mul, %conv2
  store double %add, double* %dout, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %j, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load double, double* %dout, align 8
  ret double %9
}

; Function Attrs: nounwind uwtable
define void @mp_unexp_d2mp(i32 %n, i32 %radix, double %din, i32* %out) #0 {
entry:
  %n.addr = alloca i32, align 4
  %radix.addr = alloca i32, align 4
  %din.addr = alloca double, align 8
  %out.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %radix, i32* %radix.addr, align 4
  store double %din, double* %din.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* %din.addr, align 8
  %conv = fptosi double %2 to i32
  store i32 %conv, i32* %x, align 4
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %radix.addr, align 4
  %cmp1 = icmp sge i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %radix.addr, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %x, align 4
  %6 = load i32, i32* %radix.addr, align 4
  %conv3 = sitofp i32 %6 to double
  store double %conv3, double* %din.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32, i32* %radix.addr, align 4
  %conv4 = sitofp i32 %7 to double
  %8 = load double, double* %din.addr, align 8
  %9 = load i32, i32* %x, align 4
  %conv5 = sitofp i32 %9 to double
  %sub6 = fsub double %8, %conv5
  %mul = fmul double %conv4, %sub6
  store double %mul, double* %din.addr, align 8
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %j, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i32*, i32** %out.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  store i32 %10, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
