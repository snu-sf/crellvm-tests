; ModuleID = './MultiSource.Benchmarks.MiBench/182.telecomm-FFT.fourierf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @fft_float(i32 %NumSamples, i32 %InverseTransform, float* %RealIn, float* %ImagIn, float* %RealOut, float* %ImagOut) #0 {
entry:
  %NumSamples.addr = alloca i32, align 4
  %InverseTransform.addr = alloca i32, align 4
  %RealIn.addr = alloca float*, align 8
  %ImagIn.addr = alloca float*, align 8
  %RealOut.addr = alloca float*, align 8
  %ImagOut.addr = alloca float*, align 8
  %NumBits = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %BlockSize = alloca i32, align 4
  %BlockEnd = alloca i32, align 4
  %angle_numerator = alloca double, align 8
  %tr = alloca double, align 8
  %ti = alloca double, align 8
  %delta_angle = alloca double, align 8
  %sm2 = alloca double, align 8
  %sm1 = alloca double, align 8
  %cm2 = alloca double, align 8
  %cm1 = alloca double, align 8
  %w = alloca double, align 8
  %ar = alloca [3 x double], align 16
  %ai = alloca [3 x double], align 16
  %temp = alloca double, align 8
  %denom = alloca double, align 8
  store i32 %NumSamples, i32* %NumSamples.addr, align 4
  store i32 %InverseTransform, i32* %InverseTransform.addr, align 4
  store float* %RealIn, float** %RealIn.addr, align 8
  store float* %ImagIn, float** %ImagIn.addr, align 8
  store float* %RealOut, float** %RealOut.addr, align 8
  store float* %ImagOut, float** %ImagOut.addr, align 8
  store double 0x401921FB54442D18, double* %angle_numerator, align 8
  %0 = load i32, i32* %NumSamples.addr, align 4
  %call = call i32 @IsPowerOfTwo(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i32, i32* %NumSamples.addr, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i32 0, i32 0), i32 %2)
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %InverseTransform.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load double, double* %angle_numerator, align 8
  %sub = fsub double -0.000000e+00, %4
  store double %sub, double* %angle_numerator, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %5 = load float*, float** %RealIn.addr, align 8
  %6 = bitcast float* %5 to i8*
  call void @CheckPointer(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  %7 = load float*, float** %RealOut.addr, align 8
  %8 = bitcast float* %7 to i8*
  call void @CheckPointer(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %9 = load float*, float** %ImagOut.addr, align 8
  %10 = bitcast float* %9 to i8*
  call void @CheckPointer(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %11 = load i32, i32* %NumSamples.addr, align 4
  %call5 = call i32 @NumberOfBitsNeeded(i32 %11)
  store i32 %call5, i32* %NumBits, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %NumSamples.addr, align 4
  %cmp = icmp ult i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %NumBits, align 4
  %call6 = call i32 @ReverseBits(i32 %14, i32 %15)
  store i32 %call6, i32* %j, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom = zext i32 %16 to i64
  %17 = load float*, float** %RealIn.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %17, i64 %idxprom
  %18 = load float, float* %arrayidx, align 4
  %19 = load i32, i32* %j, align 4
  %idxprom7 = zext i32 %19 to i64
  %20 = load float*, float** %RealOut.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %20, i64 %idxprom7
  store float %18, float* %arrayidx8, align 4
  %21 = load float*, float** %ImagIn.addr, align 8
  %cmp9 = icmp eq float* %21, null
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %22 to i64
  %23 = load float*, float** %ImagIn.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %23, i64 %idxprom10
  %24 = load float, float* %arrayidx11, align 4
  %conv = fpext float %24 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %conv, %cond.false ]
  %conv12 = fptrunc double %cond to float
  %25 = load i32, i32* %j, align 4
  %idxprom13 = zext i32 %25 to i64
  %26 = load float*, float** %ImagOut.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %26, i64 %idxprom13
  store float %conv12, float* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %27 = load i32, i32* %i, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %BlockEnd, align 4
  store i32 2, i32* %BlockSize, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.111, %for.end
  %28 = load i32, i32* %BlockSize, align 4
  %29 = load i32, i32* %NumSamples.addr, align 4
  %cmp16 = icmp ule i32 %28, %29
  br i1 %cmp16, label %for.body.18, label %for.end.112

for.body.18:                                      ; preds = %for.cond.15
  %30 = load double, double* %angle_numerator, align 8
  %31 = load i32, i32* %BlockSize, align 4
  %conv19 = uitofp i32 %31 to double
  %div = fdiv double %30, %conv19
  store double %div, double* %delta_angle, align 8
  %32 = load double, double* %delta_angle, align 8
  %mul = fmul double -2.000000e+00, %32
  %call20 = call double @sin(double %mul) #5
  store double %call20, double* %sm2, align 8
  %33 = load double, double* %delta_angle, align 8
  %sub21 = fsub double -0.000000e+00, %33
  %call22 = call double @sin(double %sub21) #5
  store double %call22, double* %sm1, align 8
  %34 = load double, double* %delta_angle, align 8
  %mul23 = fmul double -2.000000e+00, %34
  %call24 = call double @cos(double %mul23) #5
  store double %call24, double* %cm2, align 8
  %35 = load double, double* %delta_angle, align 8
  %sub25 = fsub double -0.000000e+00, %35
  %call26 = call double @cos(double %sub25) #5
  store double %call26, double* %cm1, align 8
  %36 = load double, double* %cm1, align 8
  %mul27 = fmul double 2.000000e+00, %36
  store double %mul27, double* %w, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.108, %for.body.18
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %NumSamples.addr, align 4
  %cmp29 = icmp ult i32 %37, %38
  br i1 %cmp29, label %for.body.31, label %for.end.110

for.body.31:                                      ; preds = %for.cond.28
  %39 = load double, double* %cm2, align 8
  %arrayidx32 = getelementptr inbounds [3 x double], [3 x double]* %ar, i32 0, i64 2
  store double %39, double* %arrayidx32, align 8
  %40 = load double, double* %cm1, align 8
  %arrayidx33 = getelementptr inbounds [3 x double], [3 x double]* %ar, i32 0, i64 1
  store double %40, double* %arrayidx33, align 8
  %41 = load double, double* %sm2, align 8
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %ai, i32 0, i64 2
  store double %41, double* %arrayidx34, align 8
  %42 = load double, double* %sm1, align 8
  %arrayidx35 = getelementptr inbounds [3 x double], [3 x double]* %ai, i32 0, i64 1
  store double %42, double* %arrayidx35, align 8
  %43 = load i32, i32* %i, align 4
  store i32 %43, i32* %j, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.104, %for.body.31
  %44 = load i32, i32* %n, align 4
  %45 = load i32, i32* %BlockEnd, align 4
  %cmp37 = icmp ult i32 %44, %45
  br i1 %cmp37, label %for.body.39, label %for.end.107

for.body.39:                                      ; preds = %for.cond.36
  %46 = load double, double* %w, align 8
  %arrayidx40 = getelementptr inbounds [3 x double], [3 x double]* %ar, i32 0, i64 1
  %47 = load double, double* %arrayidx40, align 8
  %mul41 = fmul double %46, %47
  %arrayidx42 = getelementptr inbounds [3 x double], [3 x double]* %ar, i32 0, i64 2
  %48 = load double, double* %arrayidx42, align 8
  %sub43 = fsub double %mul41, %48
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %ar, i32 0, i64 0
  store double %sub43, double* %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds [3 x double], [3 x double]* %ar, i32 0, i64 1
  %49 = load double, double* %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds [3 x double], [3 x double]* %ar, i32 0, i64 2
  store double %49, double* %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds [3 x double], [3 x double]* %ar, i32 0, i64 0
  %50 = load double, double* %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds [3 x double], [3 x double]* %ar, i32 0, i64 1
  store double %50, double* %arrayidx48, align 8
  %51 = load double, double* %w, align 8
  %arrayidx49 = getelementptr inbounds [3 x double], [3 x double]* %ai, i32 0, i64 1
  %52 = load double, double* %arrayidx49, align 8
  %mul50 = fmul double %51, %52
  %arrayidx51 = getelementptr inbounds [3 x double], [3 x double]* %ai, i32 0, i64 2
  %53 = load double, double* %arrayidx51, align 8
  %sub52 = fsub double %mul50, %53
  %arrayidx53 = getelementptr inbounds [3 x double], [3 x double]* %ai, i32 0, i64 0
  store double %sub52, double* %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds [3 x double], [3 x double]* %ai, i32 0, i64 1
  %54 = load double, double* %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds [3 x double], [3 x double]* %ai, i32 0, i64 2
  store double %54, double* %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds [3 x double], [3 x double]* %ai, i32 0, i64 0
  %55 = load double, double* %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds [3 x double], [3 x double]* %ai, i32 0, i64 1
  store double %55, double* %arrayidx57, align 8
  %56 = load i32, i32* %j, align 4
  %57 = load i32, i32* %BlockEnd, align 4
  %add = add i32 %56, %57
  store i32 %add, i32* %k, align 4
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %ar, i32 0, i64 0
  %58 = load double, double* %arrayidx58, align 8
  %59 = load i32, i32* %k, align 4
  %idxprom59 = zext i32 %59 to i64
  %60 = load float*, float** %RealOut.addr, align 8
  %arrayidx60 = getelementptr inbounds float, float* %60, i64 %idxprom59
  %61 = load float, float* %arrayidx60, align 4
  %conv61 = fpext float %61 to double
  %mul62 = fmul double %58, %conv61
  %arrayidx63 = getelementptr inbounds [3 x double], [3 x double]* %ai, i32 0, i64 0
  %62 = load double, double* %arrayidx63, align 8
  %63 = load i32, i32* %k, align 4
  %idxprom64 = zext i32 %63 to i64
  %64 = load float*, float** %ImagOut.addr, align 8
  %arrayidx65 = getelementptr inbounds float, float* %64, i64 %idxprom64
  %65 = load float, float* %arrayidx65, align 4
  %conv66 = fpext float %65 to double
  %mul67 = fmul double %62, %conv66
  %sub68 = fsub double %mul62, %mul67
  store double %sub68, double* %tr, align 8
  %arrayidx69 = getelementptr inbounds [3 x double], [3 x double]* %ar, i32 0, i64 0
  %66 = load double, double* %arrayidx69, align 8
  %67 = load i32, i32* %k, align 4
  %idxprom70 = zext i32 %67 to i64
  %68 = load float*, float** %ImagOut.addr, align 8
  %arrayidx71 = getelementptr inbounds float, float* %68, i64 %idxprom70
  %69 = load float, float* %arrayidx71, align 4
  %conv72 = fpext float %69 to double
  %mul73 = fmul double %66, %conv72
  %arrayidx74 = getelementptr inbounds [3 x double], [3 x double]* %ai, i32 0, i64 0
  %70 = load double, double* %arrayidx74, align 8
  %71 = load i32, i32* %k, align 4
  %idxprom75 = zext i32 %71 to i64
  %72 = load float*, float** %RealOut.addr, align 8
  %arrayidx76 = getelementptr inbounds float, float* %72, i64 %idxprom75
  %73 = load float, float* %arrayidx76, align 4
  %conv77 = fpext float %73 to double
  %mul78 = fmul double %70, %conv77
  %add79 = fadd double %mul73, %mul78
  store double %add79, double* %ti, align 8
  %74 = load i32, i32* %j, align 4
  %idxprom80 = zext i32 %74 to i64
  %75 = load float*, float** %RealOut.addr, align 8
  %arrayidx81 = getelementptr inbounds float, float* %75, i64 %idxprom80
  %76 = load float, float* %arrayidx81, align 4
  %conv82 = fpext float %76 to double
  %77 = load double, double* %tr, align 8
  %sub83 = fsub double %conv82, %77
  %conv84 = fptrunc double %sub83 to float
  %78 = load i32, i32* %k, align 4
  %idxprom85 = zext i32 %78 to i64
  %79 = load float*, float** %RealOut.addr, align 8
  %arrayidx86 = getelementptr inbounds float, float* %79, i64 %idxprom85
  store float %conv84, float* %arrayidx86, align 4
  %80 = load i32, i32* %j, align 4
  %idxprom87 = zext i32 %80 to i64
  %81 = load float*, float** %ImagOut.addr, align 8
  %arrayidx88 = getelementptr inbounds float, float* %81, i64 %idxprom87
  %82 = load float, float* %arrayidx88, align 4
  %conv89 = fpext float %82 to double
  %83 = load double, double* %ti, align 8
  %sub90 = fsub double %conv89, %83
  %conv91 = fptrunc double %sub90 to float
  %84 = load i32, i32* %k, align 4
  %idxprom92 = zext i32 %84 to i64
  %85 = load float*, float** %ImagOut.addr, align 8
  %arrayidx93 = getelementptr inbounds float, float* %85, i64 %idxprom92
  store float %conv91, float* %arrayidx93, align 4
  %86 = load double, double* %tr, align 8
  %87 = load i32, i32* %j, align 4
  %idxprom94 = zext i32 %87 to i64
  %88 = load float*, float** %RealOut.addr, align 8
  %arrayidx95 = getelementptr inbounds float, float* %88, i64 %idxprom94
  %89 = load float, float* %arrayidx95, align 4
  %conv96 = fpext float %89 to double
  %add97 = fadd double %conv96, %86
  %conv98 = fptrunc double %add97 to float
  store float %conv98, float* %arrayidx95, align 4
  %90 = load double, double* %ti, align 8
  %91 = load i32, i32* %j, align 4
  %idxprom99 = zext i32 %91 to i64
  %92 = load float*, float** %ImagOut.addr, align 8
  %arrayidx100 = getelementptr inbounds float, float* %92, i64 %idxprom99
  %93 = load float, float* %arrayidx100, align 4
  %conv101 = fpext float %93 to double
  %add102 = fadd double %conv101, %90
  %conv103 = fptrunc double %add102 to float
  store float %conv103, float* %arrayidx100, align 4
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.39
  %94 = load i32, i32* %j, align 4
  %inc105 = add i32 %94, 1
  store i32 %inc105, i32* %j, align 4
  %95 = load i32, i32* %n, align 4
  %inc106 = add i32 %95, 1
  store i32 %inc106, i32* %n, align 4
  br label %for.cond.36

for.end.107:                                      ; preds = %for.cond.36
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.end.107
  %96 = load i32, i32* %BlockSize, align 4
  %97 = load i32, i32* %i, align 4
  %add109 = add i32 %97, %96
  store i32 %add109, i32* %i, align 4
  br label %for.cond.28

for.end.110:                                      ; preds = %for.cond.28
  %98 = load i32, i32* %BlockSize, align 4
  store i32 %98, i32* %BlockEnd, align 4
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.end.110
  %99 = load i32, i32* %BlockSize, align 4
  %shl = shl i32 %99, 1
  store i32 %shl, i32* %BlockSize, align 4
  br label %for.cond.15

for.end.112:                                      ; preds = %for.cond.15
  %100 = load i32, i32* %InverseTransform.addr, align 4
  %tobool113 = icmp ne i32 %100, 0
  br i1 %tobool113, label %if.then.114, label %if.end.133

if.then.114:                                      ; preds = %for.end.112
  %101 = load i32, i32* %NumSamples.addr, align 4
  %conv115 = uitofp i32 %101 to double
  store double %conv115, double* %denom, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.130, %if.then.114
  %102 = load i32, i32* %i, align 4
  %103 = load i32, i32* %NumSamples.addr, align 4
  %cmp117 = icmp ult i32 %102, %103
  br i1 %cmp117, label %for.body.119, label %for.end.132

for.body.119:                                     ; preds = %for.cond.116
  %104 = load double, double* %denom, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom120 = zext i32 %105 to i64
  %106 = load float*, float** %RealOut.addr, align 8
  %arrayidx121 = getelementptr inbounds float, float* %106, i64 %idxprom120
  %107 = load float, float* %arrayidx121, align 4
  %conv122 = fpext float %107 to double
  %div123 = fdiv double %conv122, %104
  %conv124 = fptrunc double %div123 to float
  store float %conv124, float* %arrayidx121, align 4
  %108 = load double, double* %denom, align 8
  %109 = load i32, i32* %i, align 4
  %idxprom125 = zext i32 %109 to i64
  %110 = load float*, float** %ImagOut.addr, align 8
  %arrayidx126 = getelementptr inbounds float, float* %110, i64 %idxprom125
  %111 = load float, float* %arrayidx126, align 4
  %conv127 = fpext float %111 to double
  %div128 = fdiv double %conv127, %108
  %conv129 = fptrunc double %div128 to float
  store float %conv129, float* %arrayidx126, align 4
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.body.119
  %112 = load i32, i32* %i, align 4
  %inc131 = add i32 %112, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond.116

for.end.132:                                      ; preds = %for.cond.116
  br label %if.end.133

if.end.133:                                       ; preds = %for.end.132, %for.end.112
  ret void
}

declare i32 @IsPowerOfTwo(i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define internal void @CheckPointer(i8* %p, i8* %name) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* %2)
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare i32 @NumberOfBitsNeeded(i32) #1

declare i32 @ReverseBits(i32, i32) #1

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind
declare double @cos(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
