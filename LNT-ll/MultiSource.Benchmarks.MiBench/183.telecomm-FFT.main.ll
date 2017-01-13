; ModuleID = './MultiSource.Benchmarks.MiBench/183.telecomm-FFT.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next = internal global i64 1, align 8
@.str = private unnamed_addr constant [32 x i8] c"Usage: fft <waves> <length> -i\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"-i performs an inverse fft\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"make <waves> random sinusoids\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"<length> is the number of samples\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"RealOut:\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%f \09\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ImagOut:\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @rand() #0 {
entry:
  %0 = load i64, i64* @next, align 8
  %mul = mul i64 %0, 1103515245
  %add = add i64 %mul, 12345
  store i64 %add, i64* @next, align 8
  %1 = load i64, i64* @next, align 8
  %div = udiv i64 %1, 65536
  %conv = trunc i64 %div to i32
  %rem = urem i32 %conv, 32767
  %add1 = add i32 %rem, 1
  ret i32 %add1
}

; Function Attrs: nounwind uwtable
define void @srand(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  %0 = load i32, i32* %seed.addr, align 4
  %conv = zext i32 %0 to i64
  store i64 %conv, i64* @next, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %MAXSIZE = alloca i32, align 4
  %MAXWAVES = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %RealIn = alloca float*, align 8
  %ImagIn = alloca float*, align 8
  %RealOut = alloca float*, align 8
  %ImagOut = alloca float*, align 8
  %coeff = alloca float*, align 8
  %amp = alloca float*, align 8
  %invfft = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %invfft, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 -1) #5
  unreachable

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %argc.addr, align 4
  %cmp4 = icmp eq i32 %1, 4
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 3
  %3 = load i8*, i8** %arrayidx, align 8
  %call6 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i64 2) #6
  %tobool = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %invfft, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 @atoi(i8* %5) #6
  store i32 %call9, i32* %MAXSIZE, align 4
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 @atoi(i8* %7) #6
  store i32 %call11, i32* %MAXWAVES, align 4
  call void @srand(i32 1) #7
  %8 = load i32, i32* %MAXSIZE, align 4
  %conv = zext i32 %8 to i64
  %mul = mul i64 4, %conv
  %call12 = call noalias i8* @malloc(i64 %mul) #7
  %9 = bitcast i8* %call12 to float*
  store float* %9, float** %RealIn, align 8
  %10 = load i32, i32* %MAXSIZE, align 4
  %conv13 = zext i32 %10 to i64
  %mul14 = mul i64 4, %conv13
  %call15 = call noalias i8* @malloc(i64 %mul14) #7
  %11 = bitcast i8* %call15 to float*
  store float* %11, float** %ImagIn, align 8
  %12 = load i32, i32* %MAXSIZE, align 4
  %conv16 = zext i32 %12 to i64
  %mul17 = mul i64 4, %conv16
  %call18 = call noalias i8* @malloc(i64 %mul17) #7
  %13 = bitcast i8* %call18 to float*
  store float* %13, float** %RealOut, align 8
  %14 = load i32, i32* %MAXSIZE, align 4
  %conv19 = zext i32 %14 to i64
  %mul20 = mul i64 4, %conv19
  %call21 = call noalias i8* @malloc(i64 %mul20) #7
  %15 = bitcast i8* %call21 to float*
  store float* %15, float** %ImagOut, align 8
  %16 = load i32, i32* %MAXWAVES, align 4
  %conv22 = zext i32 %16 to i64
  %mul23 = mul i64 4, %conv22
  %call24 = call noalias i8* @malloc(i64 %mul23) #7
  %17 = bitcast i8* %call24 to float*
  store float* %17, float** %coeff, align 8
  %18 = load i32, i32* %MAXWAVES, align 4
  %conv25 = zext i32 %18 to i64
  %mul26 = mul i64 4, %conv25
  %call27 = call noalias i8* @malloc(i64 %mul26) #7
  %19 = bitcast i8* %call27 to float*
  store float* %19, float** %amp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %MAXWAVES, align 4
  %cmp28 = icmp ult i32 %20, %21
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %rem = urem i32 %22, 1000
  %conv30 = uitofp i32 %rem to float
  %23 = load i32, i32* %i, align 4
  %idxprom = zext i32 %23 to i64
  %24 = load float*, float** %coeff, align 8
  %arrayidx31 = getelementptr inbounds float, float* %24, i64 %idxprom
  store float %conv30, float* %arrayidx31, align 4
  %25 = load i32, i32* %i, align 4
  %rem32 = urem i32 %25, 1000
  %conv33 = uitofp i32 %rem32 to float
  %26 = load i32, i32* %i, align 4
  %idxprom34 = zext i32 %26 to i64
  %27 = load float*, float** %amp, align 8
  %arrayidx35 = getelementptr inbounds float, float* %27, i64 %idxprom34
  store float %conv33, float* %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.86, %for.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %MAXSIZE, align 4
  %cmp37 = icmp ult i32 %29, %30
  br i1 %cmp37, label %for.body.39, label %for.end.88

for.body.39:                                      ; preds = %for.cond.36
  %31 = load i32, i32* %i, align 4
  %idxprom40 = zext i32 %31 to i64
  %32 = load float*, float** %RealIn, align 8
  %arrayidx41 = getelementptr inbounds float, float* %32, i64 %idxprom40
  store float 0.000000e+00, float* %arrayidx41, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.83, %for.body.39
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %MAXWAVES, align 4
  %cmp43 = icmp ult i32 %33, %34
  br i1 %cmp43, label %for.body.45, label %for.end.85

for.body.45:                                      ; preds = %for.cond.42
  %call46 = call i32 @rand() #7
  %rem47 = srem i32 %call46, 2
  %tobool48 = icmp ne i32 %rem47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.64

if.then.49:                                       ; preds = %for.body.45
  %35 = load i32, i32* %j, align 4
  %idxprom50 = zext i32 %35 to i64
  %36 = load float*, float** %coeff, align 8
  %arrayidx51 = getelementptr inbounds float, float* %36, i64 %idxprom50
  %37 = load float, float* %arrayidx51, align 4
  %conv52 = fpext float %37 to double
  %38 = load i32, i32* %j, align 4
  %idxprom53 = zext i32 %38 to i64
  %39 = load float*, float** %amp, align 8
  %arrayidx54 = getelementptr inbounds float, float* %39, i64 %idxprom53
  %40 = load float, float* %arrayidx54, align 4
  %41 = load i32, i32* %i, align 4
  %conv55 = uitofp i32 %41 to float
  %mul56 = fmul float %40, %conv55
  %conv57 = fpext float %mul56 to double
  %call58 = call double @cos(double %conv57) #7
  %mul59 = fmul double %conv52, %call58
  %42 = load i32, i32* %i, align 4
  %idxprom60 = zext i32 %42 to i64
  %43 = load float*, float** %RealIn, align 8
  %arrayidx61 = getelementptr inbounds float, float* %43, i64 %idxprom60
  %44 = load float, float* %arrayidx61, align 4
  %conv62 = fpext float %44 to double
  %add = fadd double %conv62, %mul59
  %conv63 = fptrunc double %add to float
  store float %conv63, float* %arrayidx61, align 4
  br label %if.end.80

if.else.64:                                       ; preds = %for.body.45
  %45 = load i32, i32* %j, align 4
  %idxprom65 = zext i32 %45 to i64
  %46 = load float*, float** %coeff, align 8
  %arrayidx66 = getelementptr inbounds float, float* %46, i64 %idxprom65
  %47 = load float, float* %arrayidx66, align 4
  %conv67 = fpext float %47 to double
  %48 = load i32, i32* %j, align 4
  %idxprom68 = zext i32 %48 to i64
  %49 = load float*, float** %amp, align 8
  %arrayidx69 = getelementptr inbounds float, float* %49, i64 %idxprom68
  %50 = load float, float* %arrayidx69, align 4
  %51 = load i32, i32* %i, align 4
  %conv70 = uitofp i32 %51 to float
  %mul71 = fmul float %50, %conv70
  %conv72 = fpext float %mul71 to double
  %call73 = call double @sin(double %conv72) #7
  %mul74 = fmul double %conv67, %call73
  %52 = load i32, i32* %i, align 4
  %idxprom75 = zext i32 %52 to i64
  %53 = load float*, float** %RealIn, align 8
  %arrayidx76 = getelementptr inbounds float, float* %53, i64 %idxprom75
  %54 = load float, float* %arrayidx76, align 4
  %conv77 = fpext float %54 to double
  %add78 = fadd double %conv77, %mul74
  %conv79 = fptrunc double %add78 to float
  store float %conv79, float* %arrayidx76, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.64, %if.then.49
  %55 = load i32, i32* %i, align 4
  %idxprom81 = zext i32 %55 to i64
  %56 = load float*, float** %ImagIn, align 8
  %arrayidx82 = getelementptr inbounds float, float* %56, i64 %idxprom81
  store float 0.000000e+00, float* %arrayidx82, align 4
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.80
  %57 = load i32, i32* %j, align 4
  %inc84 = add i32 %57, 1
  store i32 %inc84, i32* %j, align 4
  br label %for.cond.42

for.end.85:                                       ; preds = %for.cond.42
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.end.85
  %58 = load i32, i32* %i, align 4
  %inc87 = add i32 %58, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond.36

for.end.88:                                       ; preds = %for.cond.36
  %59 = load i32, i32* %MAXSIZE, align 4
  %60 = load i32, i32* %invfft, align 4
  %61 = load float*, float** %RealIn, align 8
  %62 = load float*, float** %ImagIn, align 8
  %63 = load float*, float** %RealOut, align 8
  %64 = load float*, float** %ImagOut, align 8
  call void @fft_float(i32 %59, i32 %60, float* %61, float* %62, float* %63, float* %64)
  %call89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.98, %for.end.88
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %MAXSIZE, align 4
  %cmp91 = icmp ult i32 %65, %66
  br i1 %cmp91, label %for.body.93, label %for.end.100

for.body.93:                                      ; preds = %for.cond.90
  %67 = load i32, i32* %i, align 4
  %idxprom94 = zext i32 %67 to i64
  %68 = load float*, float** %RealOut, align 8
  %arrayidx95 = getelementptr inbounds float, float* %68, i64 %idxprom94
  %69 = load float, float* %arrayidx95, align 4
  %conv96 = fpext float %69 to double
  %call97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double %conv96)
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.93
  %70 = load i32, i32* %i, align 4
  %inc99 = add i32 %70, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond.90

for.end.100:                                      ; preds = %for.cond.90
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.111, %for.end.100
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %MAXSIZE, align 4
  %cmp104 = icmp ult i32 %71, %72
  br i1 %cmp104, label %for.body.106, label %for.end.113

for.body.106:                                     ; preds = %for.cond.103
  %73 = load i32, i32* %i, align 4
  %idxprom107 = zext i32 %73 to i64
  %74 = load float*, float** %ImagOut, align 8
  %arrayidx108 = getelementptr inbounds float, float* %74, i64 %idxprom107
  %75 = load float, float* %arrayidx108, align 4
  %conv109 = fpext float %75 to double
  %call110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), double %conv109)
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.106
  %76 = load i32, i32* %i, align 4
  %inc112 = add i32 %76, 1
  store i32 %inc112, i32* %i, align 4
  br label %for.cond.103

for.end.113:                                      ; preds = %for.cond.103
  %call114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %77 = load float*, float** %RealIn, align 8
  %78 = bitcast float* %77 to i8*
  call void @free(i8* %78) #7
  %79 = load float*, float** %ImagIn, align 8
  %80 = bitcast float* %79 to i8*
  call void @free(i8* %80) #7
  %81 = load float*, float** %RealOut, align 8
  %82 = bitcast float* %81 to i8*
  call void @free(i8* %82) #7
  %83 = load float*, float** %ImagOut, align 8
  %84 = bitcast float* %83 to i8*
  call void @free(i8* %84) #7
  %85 = load float*, float** %coeff, align 8
  %86 = bitcast float* %85 to i8*
  call void @free(i8* %86) #7
  %87 = load float*, float** %amp, align 8
  %88 = bitcast float* %87 to i8*
  call void @free(i8* %88) #7
  call void @exit(i32 0) #5
  unreachable

return:                                           ; No predecessors!
  %89 = load i32, i32* %retval
  ret i32 %89
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

declare void @fft_float(i32, i32, float*, float*, float*, float*) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
