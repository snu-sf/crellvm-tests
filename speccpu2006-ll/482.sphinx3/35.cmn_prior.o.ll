; ModuleID = 'cmn_prior.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmn_prior.cur_mean = internal global float* null, align 8
@cmn_prior.sum = internal global float* null, align 8
@cmn_prior.nframe = internal global i32 0, align 4
@cmn_prior.initialize = internal global i32 1, align 4
@.str = private unnamed_addr constant [12 x i8] c"cmn_prior.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Variance normalization not implemented in live mode decode\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"mean[0]= %.2f, mean[1..%d]= 0.0\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @cmn_prior(float** %incep, i32 %varnorm, i32 %nfr, i32 %ceplen, i32 %endutt) #0 {
entry:
  %incep.addr = alloca float**, align 8
  %varnorm.addr = alloca i32, align 4
  %nfr.addr = alloca i32, align 4
  %ceplen.addr = alloca i32, align 4
  %endutt.addr = alloca i32, align 4
  %sf = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store float** %incep, float*** %incep.addr, align 8
  store i32 %varnorm, i32* %varnorm.addr, align 4
  store i32 %nfr, i32* %nfr.addr, align 4
  store i32 %ceplen, i32* %ceplen.addr, align 4
  store i32 %endutt, i32* %endutt.addr, align 4
  %0 = load i32, i32* %varnorm.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @cmn_prior.initialize, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* %ceplen.addr, align 4
  %conv = sext i32 %2 to i64
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 64)
  %3 = bitcast i8* %call to float*
  store float* %3, float** @cmn_prior.cur_mean, align 8
  %4 = load float*, float** @cmn_prior.cur_mean, align 8
  %arrayidx = getelementptr inbounds float, float* %4, i64 0
  store float 1.200000e+01, float* %arrayidx, align 4
  %5 = load i32, i32* %ceplen.addr, align 4
  %conv3 = sext i32 %5 to i64
  %call4 = call i8* @__ckd_calloc__(i64 %conv3, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 69)
  %6 = bitcast i8* %call4 to float*
  store float* %6, float** @cmn_prior.sum, align 8
  store i32 0, i32* @cmn_prior.nframe, align 4
  store i32 0, i32* @cmn_prior.initialize, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %7 = load float*, float** @cmn_prior.cur_mean, align 8
  %arrayidx5 = getelementptr inbounds float, float* %7, i64 0
  %8 = load float, float* %arrayidx5, align 4
  %conv6 = fpext float %8 to double
  %9 = load i32, i32* %ceplen.addr, align 4
  %sub = sub nsw i32 %9, 1
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), double %conv6, i32 %sub)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.2, %if.end
  %10 = load i32, i32* %nfr.addr, align 4
  %cmp = icmp sle i32 %10, 0
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.97

if.end.10:                                        ; preds = %if.end.7
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %if.end.10
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %nfr.addr, align 4
  %cmp11 = icmp slt i32 %11, %12
  br i1 %cmp11, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %ceplen.addr, align 4
  %cmp14 = icmp slt i32 %13, %14
  br i1 %cmp14, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.13
  %15 = load i32, i32* %j, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load float**, float*** %incep.addr, align 8
  %arrayidx18 = getelementptr inbounds float*, float** %17, i64 %idxprom17
  %18 = load float*, float** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds float, float* %18, i64 %idxprom
  %19 = load float, float* %arrayidx19, align 4
  %20 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load float*, float** @cmn_prior.sum, align 8
  %arrayidx21 = getelementptr inbounds float, float* %21, i64 %idxprom20
  %22 = load float, float* %arrayidx21, align 4
  %add = fadd float %22, %19
  store float %add, float* %arrayidx21, align 4
  %23 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %23 to i64
  %24 = load float*, float** @cmn_prior.cur_mean, align 8
  %arrayidx23 = getelementptr inbounds float, float* %24, i64 %idxprom22
  %25 = load float, float* %arrayidx23, align 4
  %26 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load float**, float*** %incep.addr, align 8
  %arrayidx26 = getelementptr inbounds float*, float** %28, i64 %idxprom25
  %29 = load float*, float** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds float, float* %29, i64 %idxprom24
  %30 = load float, float* %arrayidx27, align 4
  %sub28 = fsub float %30, %25
  store float %sub28, float* %arrayidx27, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  %32 = load i32, i32* @cmn_prior.nframe, align 4
  %inc29 = add nsw i32 %32, 1
  store i32 %inc29, i32* @cmn_prior.nframe, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %33 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %33, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  %34 = load i32, i32* @cmn_prior.nframe, align 4
  %cmp33 = icmp sgt i32 %34, 800
  br i1 %cmp33, label %if.then.35, label %if.end.64

if.then.35:                                       ; preds = %for.end.32
  %35 = load i32, i32* @cmn_prior.nframe, align 4
  %conv36 = sitofp i32 %35 to double
  %div = fdiv double 1.000000e+00, %conv36
  %conv37 = fptrunc double %div to float
  store float %conv37, float* %sf, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.46, %if.then.35
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %ceplen.addr, align 4
  %cmp39 = icmp slt i32 %36, %37
  br i1 %cmp39, label %for.body.41, label %for.end.48

for.body.41:                                      ; preds = %for.cond.38
  %38 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %38 to i64
  %39 = load float*, float** @cmn_prior.sum, align 8
  %arrayidx43 = getelementptr inbounds float, float* %39, i64 %idxprom42
  %40 = load float, float* %arrayidx43, align 4
  %41 = load float, float* %sf, align 4
  %mul = fmul float %40, %41
  %42 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %42 to i64
  %43 = load float*, float** @cmn_prior.cur_mean, align 8
  %arrayidx45 = getelementptr inbounds float, float* %43, i64 %idxprom44
  store float %mul, float* %arrayidx45, align 4
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.41
  %44 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %44, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.38

for.end.48:                                       ; preds = %for.cond.38
  %45 = load i32, i32* @cmn_prior.nframe, align 4
  %cmp49 = icmp sge i32 %45, 800
  br i1 %cmp49, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %for.end.48
  %46 = load float, float* %sf, align 4
  %mul52 = fmul float 5.000000e+02, %46
  store float %mul52, float* %sf, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.60, %if.then.51
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %ceplen.addr, align 4
  %cmp54 = icmp slt i32 %47, %48
  br i1 %cmp54, label %for.body.56, label %for.end.62

for.body.56:                                      ; preds = %for.cond.53
  %49 = load float, float* %sf, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %50 to i64
  %51 = load float*, float** @cmn_prior.sum, align 8
  %arrayidx58 = getelementptr inbounds float, float* %51, i64 %idxprom57
  %52 = load float, float* %arrayidx58, align 4
  %mul59 = fmul float %52, %49
  store float %mul59, float* %arrayidx58, align 4
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.56
  %53 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %53, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond.53

for.end.62:                                       ; preds = %for.cond.53
  store i32 500, i32* @cmn_prior.nframe, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %for.end.62, %for.end.48
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %for.end.32
  %54 = load i32, i32* %endutt.addr, align 4
  %tobool65 = icmp ne i32 %54, 0
  br i1 %tobool65, label %if.then.66, label %if.end.97

if.then.66:                                       ; preds = %if.end.64
  %55 = load i32, i32* @cmn_prior.nframe, align 4
  %conv67 = sitofp i32 %55 to double
  %div68 = fdiv double 1.000000e+00, %conv67
  %conv69 = fptrunc double %div68 to float
  store float %conv69, float* %sf, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.79, %if.then.66
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %ceplen.addr, align 4
  %cmp71 = icmp slt i32 %56, %57
  br i1 %cmp71, label %for.body.73, label %for.end.81

for.body.73:                                      ; preds = %for.cond.70
  %58 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %58 to i64
  %59 = load float*, float** @cmn_prior.sum, align 8
  %arrayidx75 = getelementptr inbounds float, float* %59, i64 %idxprom74
  %60 = load float, float* %arrayidx75, align 4
  %61 = load float, float* %sf, align 4
  %mul76 = fmul float %60, %61
  %62 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %62 to i64
  %63 = load float*, float** @cmn_prior.cur_mean, align 8
  %arrayidx78 = getelementptr inbounds float, float* %63, i64 %idxprom77
  store float %mul76, float* %arrayidx78, align 4
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.73
  %64 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %64, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond.70

for.end.81:                                       ; preds = %for.cond.70
  %65 = load i32, i32* @cmn_prior.nframe, align 4
  %cmp82 = icmp sgt i32 %65, 800
  br i1 %cmp82, label %if.then.84, label %if.end.96

if.then.84:                                       ; preds = %for.end.81
  %66 = load float, float* %sf, align 4
  %mul85 = fmul float 5.000000e+02, %66
  store float %mul85, float* %sf, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.93, %if.then.84
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %ceplen.addr, align 4
  %cmp87 = icmp slt i32 %67, %68
  br i1 %cmp87, label %for.body.89, label %for.end.95

for.body.89:                                      ; preds = %for.cond.86
  %69 = load float, float* %sf, align 4
  %70 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %70 to i64
  %71 = load float*, float** @cmn_prior.sum, align 8
  %arrayidx91 = getelementptr inbounds float, float* %71, i64 %idxprom90
  %72 = load float, float* %arrayidx91, align 4
  %mul92 = fmul float %72, %69
  store float %mul92, float* %arrayidx91, align 4
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.89
  %73 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %73, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.86

for.end.95:                                       ; preds = %for.cond.86
  store i32 500, i32* @cmn_prior.nframe, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %for.end.95, %for.end.81
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.9, %if.end.96, %if.end.64
  ret void
}

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
