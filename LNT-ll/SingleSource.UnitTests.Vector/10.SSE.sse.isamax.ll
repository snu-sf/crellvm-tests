; ModuleID = './SingleSource.UnitTests.Vector/10.SSE.sse.isamax.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c" maximum index = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" maximum value = %e\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca [20 x float], align 16
  %i = alloca i32, align 4
  %im = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = sitofp i32 %1 to float
  %conv1 = fpext float %conv to double
  %add = fadd double -2.000000e+00, %conv1
  %conv2 = fptrunc double %add to float
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i64 %idxprom
  store float %conv2, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i64 7
  store float 3.300000e+01, float* %arrayidx3, align 4
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0
  %call = call i32 @isamax0(i32 20, float* %arraydecay)
  store i32 %call, i32* %im, align 4
  %4 = load i32, i32* %im, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 %4)
  %5 = load i32, i32* %im, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i64 %idxprom5
  %6 = load float, float* %arrayidx6, align 4
  %conv7 = fpext float %6 to double
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), double %conv7)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @isamax0(i32 %n, float* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %x.addr = alloca float*, align 8
  %bbig = alloca float, align 4
  %ebig = alloca float, align 4
  %bres = alloca float, align 4
  %xp = alloca float*, align 8
  %eres = alloca i32, align 4
  %i = alloca i32, align 4
  %ibbig = alloca i32, align 4
  %iebig = alloca i32, align 4
  %align = alloca i32, align 4
  %nsegs = alloca i32, align 4
  %mb = alloca i32, align 4
  %nn = alloca i32, align 4
  %offset4 = alloca <4 x float>, align 16
  %V0 = alloca <4 x float>, align 16
  %V1 = alloca <4 x float>, align 16
  %V2 = alloca <4 x float>, align 16
  %V3 = alloca <4 x float>, align 16
  %V6 = alloca <4 x float>, align 16
  %V7 = alloca <4 x float>, align 16
  %xbig = alloca [8 x float], align 16
  %indx = alloca [8 x float], align 16
  store i32 %n, i32* %n.addr, align 4
  store float* %x, float** %x.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  store i32 0, i32* %iebig, align 4
  store float 0.000000e+00, float* %bbig, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load float*, float** %x.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4
  %conv = fpext float %5 to double
  %call = call double @fabs(double %conv) #4
  %6 = load float, float* %bbig, align 4
  %conv2 = fpext float %6 to double
  %cmp3 = fcmp ogt double %call, %conv2
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load float*, float** %x.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %8, i64 %idxprom6
  %9 = load float, float* %arrayidx7, align 4
  %conv8 = fpext float %9 to double
  %call9 = call double @fabs(double %conv8) #4
  %conv10 = fptrunc double %call9 to float
  store float %conv10, float* %bbig, align 4
  %10 = load i32, i32* %i, align 4
  store i32 %10, i32* %iebig, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %iebig, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.11:                                        ; preds = %entry
  %call12 = call <4 x float> @_mm_set_ps(float 3.000000e+00, float 2.000000e+00, float 1.000000e+00, float 0.000000e+00)
  store <4 x float> %call12, <4 x float>* %V7, align 16
  %call13 = call <4 x float> @_mm_set_ps(float 3.000000e+00, float 2.000000e+00, float 1.000000e+00, float 0.000000e+00)
  store <4 x float> %call13, <4 x float>* %V2, align 16
  %call14 = call <4 x float> @_mm_set_ps1(float -0.000000e+00)
  store <4 x float> %call14, <4 x float>* %V6, align 16
  %call15 = call <4 x float> @_mm_set_ps1(float 4.000000e+00)
  store <4 x float> %call15, <4 x float>* %offset4, align 16
  %13 = load float*, float** %x.addr, align 8
  %14 = ptrtoint float* %13 to i32
  %shr = lshr i32 %14, 2
  %and = and i32 %shr, 3
  store i32 %and, i32* %align, align 4
  %15 = load i32, i32* %align, align 4
  %cmp16 = icmp eq i32 %15, 1
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.11
  %16 = load float*, float** %x.addr, align 8
  %arrayidx19 = getelementptr inbounds float, float* %16, i64 0
  %17 = load float, float* %arrayidx19, align 4
  %call20 = call float @fabsf(float %17) #4
  store float %call20, float* %bbig, align 4
  store i32 0, i32* %ibbig, align 4
  store float 3.000000e+00, float* %bres, align 4
  %18 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %18, 3
  store i32 %sub, i32* %nn, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.35, %if.then.18
  %19 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %19, 3
  br i1 %cmp22, label %for.body.24, label %for.end.37

for.body.24:                                      ; preds = %for.cond.21
  %20 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load float*, float** %x.addr, align 8
  %arrayidx26 = getelementptr inbounds float, float* %21, i64 %idxprom25
  %22 = load float, float* %arrayidx26, align 4
  %call27 = call float @fabsf(float %22) #4
  %23 = load float, float* %bbig, align 4
  %cmp28 = fcmp ogt float %call27, %23
  br i1 %cmp28, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %for.body.24
  %24 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %24 to i64
  %25 = load float*, float** %x.addr, align 8
  %arrayidx32 = getelementptr inbounds float, float* %25, i64 %idxprom31
  %26 = load float, float* %arrayidx32, align 4
  %call33 = call float @fabsf(float %26) #4
  store float %call33, float* %bbig, align 4
  %27 = load i32, i32* %i, align 4
  store i32 %27, i32* %ibbig, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %for.body.24
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %28 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %28, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.21

for.end.37:                                       ; preds = %for.cond.21
  br label %if.end.62

if.else:                                          ; preds = %if.end.11
  %29 = load i32, i32* %align, align 4
  %cmp38 = icmp eq i32 %29, 2
  br i1 %cmp38, label %if.then.40, label %if.else.52

if.then.40:                                       ; preds = %if.else
  %30 = load float*, float** %x.addr, align 8
  %arrayidx41 = getelementptr inbounds float, float* %30, i64 0
  %31 = load float, float* %arrayidx41, align 4
  %call42 = call float @fabsf(float %31) #4
  store float %call42, float* %bbig, align 4
  store i32 0, i32* %ibbig, align 4
  store float 2.000000e+00, float* %bres, align 4
  %32 = load i32, i32* %n.addr, align 4
  %sub43 = sub nsw i32 %32, 2
  store i32 %sub43, i32* %nn, align 4
  %33 = load float*, float** %x.addr, align 8
  %arrayidx44 = getelementptr inbounds float, float* %33, i64 1
  %34 = load float, float* %arrayidx44, align 4
  %call45 = call float @fabsf(float %34) #4
  %35 = load float, float* %bbig, align 4
  %cmp46 = fcmp ogt float %call45, %35
  br i1 %cmp46, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.then.40
  %36 = load float*, float** %x.addr, align 8
  %arrayidx49 = getelementptr inbounds float, float* %36, i64 1
  %37 = load float, float* %arrayidx49, align 4
  %call50 = call float @fabsf(float %37) #4
  store float %call50, float* %bbig, align 4
  store i32 1, i32* %ibbig, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.then.40
  br label %if.end.61

if.else.52:                                       ; preds = %if.else
  %38 = load i32, i32* %align, align 4
  %cmp53 = icmp eq i32 %38, 3
  br i1 %cmp53, label %if.then.55, label %if.else.59

if.then.55:                                       ; preds = %if.else.52
  %39 = load float*, float** %x.addr, align 8
  %arrayidx56 = getelementptr inbounds float, float* %39, i64 0
  %40 = load float, float* %arrayidx56, align 4
  %call57 = call float @fabsf(float %40) #4
  store float %call57, float* %bbig, align 4
  store i32 0, i32* %ibbig, align 4
  store float 1.000000e+00, float* %bres, align 4
  %41 = load i32, i32* %n.addr, align 4
  %sub58 = sub nsw i32 %41, 1
  store i32 %sub58, i32* %nn, align 4
  br label %if.end.60

if.else.59:                                       ; preds = %if.else.52
  store float 0.000000e+00, float* %bbig, align 4
  store i32 0, i32* %ibbig, align 4
  %42 = load i32, i32* %n.addr, align 4
  store i32 %42, i32* %nn, align 4
  store float 0.000000e+00, float* %bres, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.59, %if.then.55
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.51
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %for.end.37
  %43 = load float*, float** %x.addr, align 8
  %44 = load float, float* %bres, align 4
  %conv63 = fptosi float %44 to i32
  %idx.ext = sext i32 %conv63 to i64
  %add.ptr = getelementptr inbounds float, float* %43, i64 %idx.ext
  store float* %add.ptr, float** %xp, align 8
  %45 = load i32, i32* %nn, align 4
  %shr64 = ashr i32 %45, 2
  %sub65 = sub nsw i32 %shr64, 2
  store i32 %sub65, i32* %nsegs, align 4
  %46 = load i32, i32* %nn, align 4
  %47 = load i32, i32* %nsegs, align 4
  %add = add nsw i32 %47, 2
  %mul = mul nsw i32 4, %add
  %sub66 = sub nsw i32 %46, %mul
  store i32 %sub66, i32* %eres, align 4
  %48 = load float*, float** %xp, align 8
  %call67 = call <4 x float> @_mm_load_ps(float* %48)
  store <4 x float> %call67, <4 x float>* %V0, align 16
  %49 = load float*, float** %xp, align 8
  %add.ptr68 = getelementptr inbounds float, float* %49, i64 4
  store float* %add.ptr68, float** %xp, align 8
  %50 = load float*, float** %xp, align 8
  %call69 = call <4 x float> @_mm_load_ps(float* %50)
  store <4 x float> %call69, <4 x float>* %V1, align 16
  %51 = load float*, float** %xp, align 8
  %add.ptr70 = getelementptr inbounds float, float* %51, i64 4
  store float* %add.ptr70, float** %xp, align 8
  %52 = load <4 x float>, <4 x float>* %V6, align 16
  %53 = load <4 x float>, <4 x float>* %V0, align 16
  %call71 = call <4 x float> @_mm_andnot_ps(<4 x float> %52, <4 x float> %53)
  store <4 x float> %call71, <4 x float>* %V0, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.89, %if.end.62
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %nsegs, align 4
  %cmp73 = icmp slt i32 %54, %55
  br i1 %cmp73, label %for.body.75, label %for.end.91

for.body.75:                                      ; preds = %for.cond.72
  %56 = load <4 x float>, <4 x float>* %V6, align 16
  %57 = load <4 x float>, <4 x float>* %V1, align 16
  %call76 = call <4 x float> @_mm_andnot_ps(<4 x float> %56, <4 x float> %57)
  store <4 x float> %call76, <4 x float>* %V1, align 16
  %58 = load <4 x float>, <4 x float>* %V1, align 16
  %59 = load <4 x float>, <4 x float>* %V0, align 16
  %call77 = call <4 x float> @_mm_cmpnle_ps(<4 x float> %58, <4 x float> %59)
  store <4 x float> %call77, <4 x float>* %V3, align 16
  %60 = load <4 x float>, <4 x float>* %V3, align 16
  %call78 = call i32 @_mm_movemask_ps(<4 x float> %60)
  store i32 %call78, i32* %mb, align 4
  %61 = load <4 x float>, <4 x float>* %V2, align 16
  %62 = load <4 x float>, <4 x float>* %offset4, align 16
  %call79 = call <4 x float> @_mm_add_ps(<4 x float> %61, <4 x float> %62)
  store <4 x float> %call79, <4 x float>* %V2, align 16
  %63 = load i32, i32* %mb, align 4
  %cmp80 = icmp sgt i32 %63, 0
  br i1 %cmp80, label %if.then.82, label %if.end.86

if.then.82:                                       ; preds = %for.body.75
  %64 = load <4 x float>, <4 x float>* %V0, align 16
  %65 = load <4 x float>, <4 x float>* %V1, align 16
  %call83 = call <4 x float> @_mm_max_ps(<4 x float> %64, <4 x float> %65)
  store <4 x float> %call83, <4 x float>* %V0, align 16
  %66 = load <4 x float>, <4 x float>* %V2, align 16
  %67 = load <4 x float>, <4 x float>* %V3, align 16
  %call84 = call <4 x float> @_mm_and_ps(<4 x float> %66, <4 x float> %67)
  store <4 x float> %call84, <4 x float>* %V3, align 16
  %68 = load <4 x float>, <4 x float>* %V7, align 16
  %69 = load <4 x float>, <4 x float>* %V3, align 16
  %call85 = call <4 x float> @_mm_max_ps(<4 x float> %68, <4 x float> %69)
  store <4 x float> %call85, <4 x float>* %V7, align 16
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.82, %for.body.75
  %70 = load float*, float** %xp, align 8
  %call87 = call <4 x float> @_mm_load_ps(float* %70)
  store <4 x float> %call87, <4 x float>* %V1, align 16
  %71 = load float*, float** %xp, align 8
  %add.ptr88 = getelementptr inbounds float, float* %71, i64 4
  store float* %add.ptr88, float** %xp, align 8
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.86
  %72 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %72, 1
  store i32 %inc90, i32* %i, align 4
  br label %for.cond.72

for.end.91:                                       ; preds = %for.cond.72
  %73 = load <4 x float>, <4 x float>* %V6, align 16
  %74 = load <4 x float>, <4 x float>* %V1, align 16
  %call92 = call <4 x float> @_mm_andnot_ps(<4 x float> %73, <4 x float> %74)
  store <4 x float> %call92, <4 x float>* %V1, align 16
  %75 = load <4 x float>, <4 x float>* %V1, align 16
  %76 = load <4 x float>, <4 x float>* %V0, align 16
  %call93 = call <4 x float> @_mm_cmpnle_ps(<4 x float> %75, <4 x float> %76)
  store <4 x float> %call93, <4 x float>* %V3, align 16
  %77 = load <4 x float>, <4 x float>* %V3, align 16
  %call94 = call i32 @_mm_movemask_ps(<4 x float> %77)
  store i32 %call94, i32* %mb, align 4
  %78 = load <4 x float>, <4 x float>* %V2, align 16
  %79 = load <4 x float>, <4 x float>* %offset4, align 16
  %call95 = call <4 x float> @_mm_add_ps(<4 x float> %78, <4 x float> %79)
  store <4 x float> %call95, <4 x float>* %V2, align 16
  %80 = load i32, i32* %mb, align 4
  %cmp96 = icmp sgt i32 %80, 0
  br i1 %cmp96, label %if.then.98, label %if.end.102

if.then.98:                                       ; preds = %for.end.91
  %81 = load <4 x float>, <4 x float>* %V0, align 16
  %82 = load <4 x float>, <4 x float>* %V1, align 16
  %call99 = call <4 x float> @_mm_max_ps(<4 x float> %81, <4 x float> %82)
  store <4 x float> %call99, <4 x float>* %V0, align 16
  %83 = load <4 x float>, <4 x float>* %V2, align 16
  %84 = load <4 x float>, <4 x float>* %V3, align 16
  %call100 = call <4 x float> @_mm_and_ps(<4 x float> %83, <4 x float> %84)
  store <4 x float> %call100, <4 x float>* %V3, align 16
  %85 = load <4 x float>, <4 x float>* %V7, align 16
  %86 = load <4 x float>, <4 x float>* %V3, align 16
  %call101 = call <4 x float> @_mm_max_ps(<4 x float> %85, <4 x float> %86)
  store <4 x float> %call101, <4 x float>* %V7, align 16
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.98, %for.end.91
  %arraydecay = getelementptr inbounds [8 x float], [8 x float]* %xbig, i32 0, i32 0
  %87 = load <4 x float>, <4 x float>* %V0, align 16
  call void @_mm_store_ps(float* %arraydecay, <4 x float> %87)
  %arraydecay103 = getelementptr inbounds [8 x float], [8 x float]* %indx, i32 0, i32 0
  %88 = load <4 x float>, <4 x float>* %V7, align 16
  call void @_mm_store_ps(float* %arraydecay103, <4 x float> %88)
  %89 = load i32, i32* %eres, align 4
  %cmp104 = icmp sgt i32 %89, 0
  br i1 %cmp104, label %if.then.106, label %if.end.123

if.then.106:                                      ; preds = %if.end.102
  store i32 0, i32* %i, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.120, %if.then.106
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* %eres, align 4
  %cmp108 = icmp slt i32 %90, %91
  br i1 %cmp108, label %for.body.110, label %for.end.122

for.body.110:                                     ; preds = %for.cond.107
  %92 = load float*, float** %xp, align 8
  %incdec.ptr = getelementptr inbounds float, float* %92, i32 1
  store float* %incdec.ptr, float** %xp, align 8
  %93 = load float, float* %92, align 4
  %call111 = call float @fabsf(float %93) #4
  %94 = load i32, i32* %i, align 4
  %add112 = add nsw i32 4, %94
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds [8 x float], [8 x float]* %xbig, i32 0, i64 %idxprom113
  store float %call111, float* %arrayidx114, align 4
  %95 = load i32, i32* %nn, align 4
  %96 = load i32, i32* %i, align 4
  %add115 = add nsw i32 %95, %96
  %conv116 = sitofp i32 %add115 to float
  %97 = load i32, i32* %i, align 4
  %add117 = add nsw i32 4, %97
  %idxprom118 = sext i32 %add117 to i64
  %arrayidx119 = getelementptr inbounds [8 x float], [8 x float]* %indx, i32 0, i64 %idxprom118
  store float %conv116, float* %arrayidx119, align 4
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.110
  %98 = load i32, i32* %i, align 4
  %inc121 = add nsw i32 %98, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond.107

for.end.122:                                      ; preds = %for.cond.107
  br label %if.end.123

if.end.123:                                       ; preds = %for.end.122, %if.end.102
  %99 = load float, float* %bbig, align 4
  store float %99, float* %ebig, align 4
  %100 = load i32, i32* %ibbig, align 4
  store i32 %100, i32* %iebig, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.141, %if.end.123
  %101 = load i32, i32* %i, align 4
  %102 = load i32, i32* %eres, align 4
  %add125 = add nsw i32 4, %102
  %cmp126 = icmp slt i32 %101, %add125
  br i1 %cmp126, label %for.body.128, label %for.end.143

for.body.128:                                     ; preds = %for.cond.124
  %103 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %103 to i64
  %arrayidx130 = getelementptr inbounds [8 x float], [8 x float]* %xbig, i32 0, i64 %idxprom129
  %104 = load float, float* %arrayidx130, align 4
  %105 = load float, float* %ebig, align 4
  %cmp131 = fcmp ogt float %104, %105
  br i1 %cmp131, label %if.then.133, label %if.end.140

if.then.133:                                      ; preds = %for.body.128
  %106 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %106 to i64
  %arrayidx135 = getelementptr inbounds [8 x float], [8 x float]* %xbig, i32 0, i64 %idxprom134
  %107 = load float, float* %arrayidx135, align 4
  store float %107, float* %ebig, align 4
  %108 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %108 to i64
  %arrayidx137 = getelementptr inbounds [8 x float], [8 x float]* %indx, i32 0, i64 %idxprom136
  %109 = load float, float* %arrayidx137, align 4
  %110 = load float, float* %bres, align 4
  %add138 = fadd float %109, %110
  %conv139 = fptosi float %add138 to i32
  store i32 %conv139, i32* %iebig, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.133, %for.body.128
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.140
  %111 = load i32, i32* %i, align 4
  %inc142 = add nsw i32 %111, 1
  store i32 %inc142, i32* %i, align 4
  br label %for.cond.124

for.end.143:                                      ; preds = %for.cond.124
  %112 = load i32, i32* %iebig, align 4
  store i32 %112, i32* %retval
  br label %return

return:                                           ; preds = %for.end.143, %for.end
  %113 = load i32, i32* %retval
  ret i32 %113
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_set_ps(float %__z, float %__y, float %__x, float %__w) #3 {
entry:
  %__z.addr = alloca float, align 4
  %__y.addr = alloca float, align 4
  %__x.addr = alloca float, align 4
  %__w.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %__z, float* %__z.addr, align 4
  store float %__y, float* %__y.addr, align 4
  store float %__x, float* %__x.addr, align 4
  store float %__w, float* %__w.addr, align 4
  %0 = load float, float* %__w.addr, align 4
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %1 = load float, float* %__x.addr, align 4
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 1
  %2 = load float, float* %__y.addr, align 4
  %vecinit2 = insertelement <4 x float> %vecinit1, float %2, i32 2
  %3 = load float, float* %__z.addr, align 4
  %vecinit3 = insertelement <4 x float> %vecinit2, float %3, i32 3
  store <4 x float> %vecinit3, <4 x float>* %.compoundliteral
  %4 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %4
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_set_ps1(float %__w) #3 {
entry:
  %__w.addr = alloca float, align 4
  store float %__w, float* %__w.addr, align 4
  %0 = load float, float* %__w.addr, align 4
  %call = call <4 x float> @_mm_set1_ps(float %0)
  ret <4 x float> %call
}

; Function Attrs: nounwind readnone
declare float @fabsf(float) #2

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_load_ps(float* %__p) #3 {
entry:
  %__p.addr = alloca float*, align 8
  store float* %__p, float** %__p.addr, align 8
  %0 = load float*, float** %__p.addr, align 8
  %1 = bitcast float* %0 to <4 x float>*
  %2 = load <4 x float>, <4 x float>* %1, align 16
  ret <4 x float> %2
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_andnot_ps(<4 x float> %__a, <4 x float> %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16
  store <4 x float> %__b, <4 x float>* %__b.addr, align 16
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %neg = xor <4 x i32> %1, <i32 -1, i32 -1, i32 -1, i32 -1>
  %2 = load <4 x float>, <4 x float>* %__b.addr, align 16
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %and = and <4 x i32> %neg, %3
  %4 = bitcast <4 x i32> %and to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_cmpnle_ps(<4 x float> %__a, <4 x float> %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16
  store <4 x float> %__b, <4 x float>* %__b.addr, align 16
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16
  %1 = load <4 x float>, <4 x float>* %__b.addr, align 16
  %cmpps = call <4 x float> @llvm.x86.sse.cmp.ps(<4 x float> %0, <4 x float> %1, i8 6)
  ret <4 x float> %cmpps
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal i32 @_mm_movemask_ps(<4 x float> %__a) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16
  %1 = call i32 @llvm.x86.sse.movmsk.ps(<4 x float> %0)
  ret i32 %1
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_add_ps(<4 x float> %__a, <4 x float> %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16
  store <4 x float> %__b, <4 x float>* %__b.addr, align 16
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16
  %1 = load <4 x float>, <4 x float>* %__b.addr, align 16
  %add = fadd <4 x float> %0, %1
  ret <4 x float> %add
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_max_ps(<4 x float> %__a, <4 x float> %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16
  store <4 x float> %__b, <4 x float>* %__b.addr, align 16
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16
  %1 = load <4 x float>, <4 x float>* %__b.addr, align 16
  %2 = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %0, <4 x float> %1)
  ret <4 x float> %2
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_and_ps(<4 x float> %__a, <4 x float> %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16
  store <4 x float> %__b, <4 x float>* %__b.addr, align 16
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %2 = load <4 x float>, <4 x float>* %__b.addr, align 16
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %and = and <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %and to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal void @_mm_store_ps(float* %__p, <4 x float> %__a) #3 {
entry:
  %__p.addr = alloca float*, align 8
  %__a.addr = alloca <4 x float>, align 16
  store float* %__p, float** %__p.addr, align 8
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16
  %1 = load float*, float** %__p.addr, align 8
  %2 = bitcast float* %1 to <4 x float>*
  store <4 x float> %0, <4 x float>* %2, align 16
  ret void
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_set1_ps(float %__w) #3 {
entry:
  %__w.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %__w, float* %__w.addr, align 4
  %0 = load float, float* %__w.addr, align 4
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %1 = load float, float* %__w.addr, align 4
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 1
  %2 = load float, float* %__w.addr, align 4
  %vecinit2 = insertelement <4 x float> %vecinit1, float %2, i32 2
  %3 = load float, float* %__w.addr, align 4
  %vecinit3 = insertelement <4 x float> %vecinit2, float %3, i32 3
  store <4 x float> %vecinit3, <4 x float>* %.compoundliteral
  %4 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %4
}

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.x86.sse.cmp.ps(<4 x float>, <4 x float>, i8) #4

; Function Attrs: nounwind readnone
declare i32 @llvm.x86.sse.movmsk.ps(<4 x float>) #4

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
