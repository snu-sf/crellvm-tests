; ModuleID = 'cmn.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmn_mean = internal global float* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cmn.c\00", align 1
@cmn_var = internal global float* null, align 8

; Function Attrs: nounwind uwtable
define void @cmn(float** %mfc, i32 %varnorm, i32 %n_frame, i32 %veclen) #0 {
entry:
  %mfc.addr = alloca float**, align 8
  %varnorm.addr = alloca i32, align 4
  %n_frame.addr = alloca i32, align 4
  %veclen.addr = alloca i32, align 4
  %mfcp = alloca float*, align 8
  %t = alloca float, align 4
  %i = alloca i32, align 4
  %f = alloca i32, align 4
  store float** %mfc, float*** %mfc.addr, align 8
  store i32 %varnorm, i32* %varnorm.addr, align 4
  store i32 %n_frame, i32* %n_frame.addr, align 4
  store i32 %veclen, i32* %veclen.addr, align 4
  %0 = load i32, i32* %n_frame.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %veclen.addr, align 4
  %cmp1 = icmp sle i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.139

if.end:                                           ; preds = %lor.lhs.false
  %2 = load float*, float** @cmn_mean, align 8
  %cmp2 = icmp eq float* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load i32, i32* %veclen.addr, align 4
  %conv = sext i32 %3 to i64
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 83)
  %4 = bitcast i8* %call to float*
  store float* %4, float** @cmn_mean, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %veclen.addr, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load float*, float** @cmn_mean, align 8
  %arrayidx = getelementptr inbounds float, float* %8, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %f, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.24, %for.end
  %10 = load i32, i32* %f, align 4
  %11 = load i32, i32* %n_frame.addr, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %for.body.10, label %for.end.26

for.body.10:                                      ; preds = %for.cond.7
  %12 = load i32, i32* %f, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load float**, float*** %mfc.addr, align 8
  %arrayidx12 = getelementptr inbounds float*, float** %13, i64 %idxprom11
  %14 = load float*, float** %arrayidx12, align 8
  store float* %14, float** %mfcp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.21, %for.body.10
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %veclen.addr, align 4
  %cmp14 = icmp slt i32 %15, %16
  br i1 %cmp14, label %for.body.16, label %for.end.23

for.body.16:                                      ; preds = %for.cond.13
  %17 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load float*, float** %mfcp, align 8
  %arrayidx18 = getelementptr inbounds float, float* %18, i64 %idxprom17
  %19 = load float, float* %arrayidx18, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load float*, float** @cmn_mean, align 8
  %arrayidx20 = getelementptr inbounds float, float* %21, i64 %idxprom19
  %22 = load float, float* %arrayidx20, align 4
  %add = fadd float %22, %19
  store float %add, float* %arrayidx20, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.16
  %23 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %23, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.13

for.end.23:                                       ; preds = %for.cond.13
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.23
  %24 = load i32, i32* %f, align 4
  %inc25 = add nsw i32 %24, 1
  store i32 %inc25, i32* %f, align 4
  br label %for.cond.7

for.end.26:                                       ; preds = %for.cond.7
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.34, %for.end.26
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %veclen.addr, align 4
  %cmp28 = icmp slt i32 %25, %26
  br i1 %cmp28, label %for.body.30, label %for.end.36

for.body.30:                                      ; preds = %for.cond.27
  %27 = load i32, i32* %n_frame.addr, align 4
  %conv31 = sitofp i32 %27 to float
  %28 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %28 to i64
  %29 = load float*, float** @cmn_mean, align 8
  %arrayidx33 = getelementptr inbounds float, float* %29, i64 %idxprom32
  %30 = load float, float* %arrayidx33, align 4
  %div = fdiv float %30, %conv31
  store float %div, float* %arrayidx33, align 4
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.30
  %31 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %31, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.27

for.end.36:                                       ; preds = %for.cond.27
  %32 = load i32, i32* %varnorm.addr, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.else, label %if.then.37

if.then.37:                                       ; preds = %for.end.36
  store i32 0, i32* %f, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.55, %if.then.37
  %33 = load i32, i32* %f, align 4
  %34 = load i32, i32* %n_frame.addr, align 4
  %cmp39 = icmp slt i32 %33, %34
  br i1 %cmp39, label %for.body.41, label %for.end.57

for.body.41:                                      ; preds = %for.cond.38
  %35 = load i32, i32* %f, align 4
  %idxprom42 = sext i32 %35 to i64
  %36 = load float**, float*** %mfc.addr, align 8
  %arrayidx43 = getelementptr inbounds float*, float** %36, i64 %idxprom42
  %37 = load float*, float** %arrayidx43, align 8
  store float* %37, float** %mfcp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.52, %for.body.41
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %veclen.addr, align 4
  %cmp45 = icmp slt i32 %38, %39
  br i1 %cmp45, label %for.body.47, label %for.end.54

for.body.47:                                      ; preds = %for.cond.44
  %40 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %40 to i64
  %41 = load float*, float** @cmn_mean, align 8
  %arrayidx49 = getelementptr inbounds float, float* %41, i64 %idxprom48
  %42 = load float, float* %arrayidx49, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %43 to i64
  %44 = load float*, float** %mfcp, align 8
  %arrayidx51 = getelementptr inbounds float, float* %44, i64 %idxprom50
  %45 = load float, float* %arrayidx51, align 4
  %sub = fsub float %45, %42
  store float %sub, float* %arrayidx51, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.47
  %46 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %46, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.44

for.end.54:                                       ; preds = %for.cond.44
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.54
  %47 = load i32, i32* %f, align 4
  %inc56 = add nsw i32 %47, 1
  store i32 %inc56, i32* %f, align 4
  br label %for.cond.38

for.end.57:                                       ; preds = %for.cond.38
  br label %if.end.139

if.else:                                          ; preds = %for.end.36
  %48 = load float*, float** @cmn_var, align 8
  %cmp58 = icmp eq float* %48, null
  br i1 %cmp58, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.else
  %49 = load i32, i32* %veclen.addr, align 4
  %conv61 = sext i32 %49 to i64
  %call62 = call i8* @__ckd_calloc__(i64 %conv61, i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 106)
  %50 = bitcast i8* %call62 to float*
  store float* %50, float** @cmn_var, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.70, %if.end.63
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %veclen.addr, align 4
  %cmp65 = icmp slt i32 %51, %52
  br i1 %cmp65, label %for.body.67, label %for.end.72

for.body.67:                                      ; preds = %for.cond.64
  %53 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %53 to i64
  %54 = load float*, float** @cmn_var, align 8
  %arrayidx69 = getelementptr inbounds float, float* %54, i64 %idxprom68
  store float 0.000000e+00, float* %arrayidx69, align 4
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.67
  %55 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %55, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.64

for.end.72:                                       ; preds = %for.cond.64
  store i32 0, i32* %f, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.94, %for.end.72
  %56 = load i32, i32* %f, align 4
  %57 = load i32, i32* %n_frame.addr, align 4
  %cmp74 = icmp slt i32 %56, %57
  br i1 %cmp74, label %for.body.76, label %for.end.96

for.body.76:                                      ; preds = %for.cond.73
  %58 = load i32, i32* %f, align 4
  %idxprom77 = sext i32 %58 to i64
  %59 = load float**, float*** %mfc.addr, align 8
  %arrayidx78 = getelementptr inbounds float*, float** %59, i64 %idxprom77
  %60 = load float*, float** %arrayidx78, align 8
  store float* %60, float** %mfcp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.91, %for.body.76
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %veclen.addr, align 4
  %cmp80 = icmp slt i32 %61, %62
  br i1 %cmp80, label %for.body.82, label %for.end.93

for.body.82:                                      ; preds = %for.cond.79
  %63 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %63 to i64
  %64 = load float*, float** %mfcp, align 8
  %arrayidx84 = getelementptr inbounds float, float* %64, i64 %idxprom83
  %65 = load float, float* %arrayidx84, align 4
  %66 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %66 to i64
  %67 = load float*, float** @cmn_mean, align 8
  %arrayidx86 = getelementptr inbounds float, float* %67, i64 %idxprom85
  %68 = load float, float* %arrayidx86, align 4
  %sub87 = fsub float %65, %68
  store float %sub87, float* %t, align 4
  %69 = load float, float* %t, align 4
  %70 = load float, float* %t, align 4
  %mul = fmul float %69, %70
  %71 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %71 to i64
  %72 = load float*, float** @cmn_var, align 8
  %arrayidx89 = getelementptr inbounds float, float* %72, i64 %idxprom88
  %73 = load float, float* %arrayidx89, align 4
  %add90 = fadd float %73, %mul
  store float %add90, float* %arrayidx89, align 4
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.body.82
  %74 = load i32, i32* %i, align 4
  %inc92 = add nsw i32 %74, 1
  store i32 %inc92, i32* %i, align 4
  br label %for.cond.79

for.end.93:                                       ; preds = %for.cond.79
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end.93
  %75 = load i32, i32* %f, align 4
  %inc95 = add nsw i32 %75, 1
  store i32 %inc95, i32* %f, align 4
  br label %for.cond.73

for.end.96:                                       ; preds = %for.cond.73
  store i32 0, i32* %i, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.110, %for.end.96
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %veclen.addr, align 4
  %cmp98 = icmp slt i32 %76, %77
  br i1 %cmp98, label %for.body.100, label %for.end.112

for.body.100:                                     ; preds = %for.cond.97
  %78 = load i32, i32* %n_frame.addr, align 4
  %conv101 = sitofp i32 %78 to double
  %79 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %79 to i64
  %80 = load float*, float** @cmn_var, align 8
  %arrayidx103 = getelementptr inbounds float, float* %80, i64 %idxprom102
  %81 = load float, float* %arrayidx103, align 4
  %conv104 = fpext float %81 to double
  %div105 = fdiv double %conv101, %conv104
  %call106 = call double @sqrt(double %div105) #3
  %conv107 = fptrunc double %call106 to float
  %82 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %82 to i64
  %83 = load float*, float** @cmn_var, align 8
  %arrayidx109 = getelementptr inbounds float, float* %83, i64 %idxprom108
  store float %conv107, float* %arrayidx109, align 4
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.100
  %84 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %84, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond.97

for.end.112:                                      ; preds = %for.cond.97
  store i32 0, i32* %f, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.136, %for.end.112
  %85 = load i32, i32* %f, align 4
  %86 = load i32, i32* %n_frame.addr, align 4
  %cmp114 = icmp slt i32 %85, %86
  br i1 %cmp114, label %for.body.116, label %for.end.138

for.body.116:                                     ; preds = %for.cond.113
  %87 = load i32, i32* %f, align 4
  %idxprom117 = sext i32 %87 to i64
  %88 = load float**, float*** %mfc.addr, align 8
  %arrayidx118 = getelementptr inbounds float*, float** %88, i64 %idxprom117
  %89 = load float*, float** %arrayidx118, align 8
  store float* %89, float** %mfcp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.133, %for.body.116
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* %veclen.addr, align 4
  %cmp120 = icmp slt i32 %90, %91
  br i1 %cmp120, label %for.body.122, label %for.end.135

for.body.122:                                     ; preds = %for.cond.119
  %92 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %92 to i64
  %93 = load float*, float** %mfcp, align 8
  %arrayidx124 = getelementptr inbounds float, float* %93, i64 %idxprom123
  %94 = load float, float* %arrayidx124, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %95 to i64
  %96 = load float*, float** @cmn_mean, align 8
  %arrayidx126 = getelementptr inbounds float, float* %96, i64 %idxprom125
  %97 = load float, float* %arrayidx126, align 4
  %sub127 = fsub float %94, %97
  %98 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %98 to i64
  %99 = load float*, float** @cmn_var, align 8
  %arrayidx129 = getelementptr inbounds float, float* %99, i64 %idxprom128
  %100 = load float, float* %arrayidx129, align 4
  %mul130 = fmul float %sub127, %100
  %101 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %101 to i64
  %102 = load float*, float** %mfcp, align 8
  %arrayidx132 = getelementptr inbounds float, float* %102, i64 %idxprom131
  store float %mul130, float* %arrayidx132, align 4
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.body.122
  %103 = load i32, i32* %i, align 4
  %inc134 = add nsw i32 %103, 1
  store i32 %inc134, i32* %i, align 4
  br label %for.cond.119

for.end.135:                                      ; preds = %for.cond.119
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.end.135
  %104 = load i32, i32* %f, align 4
  %inc137 = add nsw i32 %104, 1
  store i32 %inc137, i32* %f, align 4
  br label %for.cond.113

for.end.138:                                      ; preds = %for.cond.113
  br label %if.end.139

if.end.139:                                       ; preds = %if.then, %for.end.138, %for.end.57
  ret void
}

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define void @cmn_free() #0 {
entry:
  %0 = load float*, float** @cmn_var, align 8
  %1 = bitcast float* %0 to i8*
  call void @ckd_free(i8* %1)
  %2 = load float*, float** @cmn_mean, align 8
  %3 = bitcast float* %2 to i8*
  call void @ckd_free(i8* %3)
  ret void
}

declare void @ckd_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
