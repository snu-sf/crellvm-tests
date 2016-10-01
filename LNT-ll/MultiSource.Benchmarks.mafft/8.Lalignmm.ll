; ModuleID = './MultiSource.Benchmarks.mafft/8.Lalignmm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@RNApenalty = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [13 x i8] c"i = %d / %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"bug! hairetsu ga kowareta!\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"j = %d / %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"hairetsu ga kowareta (end of MSalignmm) !\0A\00", align 1
@penalty = external global i32, align 4
@offset = external global i32, align 4
@localthr = internal global float 0.000000e+00, align 4
@reccycle = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@n_dis = external global [26 x [26 x i32]], align 16
@RNAthr = external global i32, align 4
@ribosumdis = external global [37 x [37 x i32]], align 16

; Function Attrs: nounwind uwtable
define float @Lalignmm_hmout(i8** %seq1, i8** %seq2, double* %eff1, double* %eff2, i32 %icyc, i32 %jcyc, i32 %alloclen, i8* %sgap1, i8* %sgap2, i8* %egap1, i8* %egap2, float** %map) #0 {
entry:
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %icyc.addr = alloca i32, align 4
  %jcyc.addr = alloca i32, align 4
  %alloclen.addr = alloca i32, align 4
  %sgap1.addr = alloca i8*, align 8
  %sgap2.addr = alloca i8*, align 8
  %egap1.addr = alloca i8*, align 8
  %egap2.addr = alloca i8*, align 8
  %map.addr = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
  %wm = alloca float, align 4
  %mseq1 = alloca i8**, align 8
  %mseq2 = alloca i8**, align 8
  %ogcp1 = alloca float*, align 8
  %ogcp2 = alloca float*, align 8
  %fgcp1 = alloca float*, align 8
  %fgcp2 = alloca float*, align 8
  %cpmx1 = alloca float**, align 8
  %cpmx2 = alloca float**, align 8
  %gapinfo = alloca float**, align 8
  %fpenalty = alloca float, align 4
  %nglen1 = alloca i32, align 4
  %nglen2 = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i32 %icyc, i32* %icyc.addr, align 4
  store i32 %jcyc, i32* %jcyc.addr, align 4
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store i8* %sgap1, i8** %sgap1.addr, align 8
  store i8* %sgap2, i8** %sgap2.addr, align 8
  store i8* %egap1, i8** %egap1.addr, align 8
  store i8* %egap2, i8** %egap2.addr, align 8
  store float** %map, float*** %map.addr, align 8
  store float 0.000000e+00, float* %wm, align 4
  %0 = load i32, i32* @RNApenalty, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fpenalty, align 4
  %1 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @seqlen(i8* %2)
  store i32 %call, i32* %nglen1, align 4
  %3 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i32 @seqlen(i8* %4)
  store i32 %call2, i32* %nglen2, align 4
  %5 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i64 @strlen(i8* %6) #5
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, i32* %lgth1, align 4
  %7 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i64 @strlen(i8* %8) #5
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* %lgth2, align 4
  %9 = load i32, i32* %lgth1, align 4
  %add = add nsw i32 %9, 100
  store i32 %add, i32* %ll1, align 4
  %10 = load i32, i32* %lgth2, align 4
  %add9 = add nsw i32 %10, 100
  store i32 %add9, i32* %ll2, align 4
  %11 = load i32, i32* %icyc.addr, align 4
  %12 = load i32, i32* %ll1, align 4
  %13 = load i32, i32* %ll2, align 4
  %add10 = add nsw i32 %12, %13
  %call11 = call i8** @AllocateCharMtx(i32 %11, i32 %add10)
  store i8** %call11, i8*** %mseq1, align 8
  %14 = load i32, i32* %jcyc.addr, align 4
  %15 = load i32, i32* %ll1, align 4
  %16 = load i32, i32* %ll2, align 4
  %add12 = add nsw i32 %15, %16
  %call13 = call i8** @AllocateCharMtx(i32 %14, i32 %add12)
  store i8** %call13, i8*** %mseq2, align 8
  %call14 = call float** @AllocateFloatMtx(i32 4, i32 0)
  store float** %call14, float*** %gapinfo, align 8
  %17 = load i32, i32* %ll1, align 4
  %add15 = add nsw i32 %17, 2
  %call16 = call float* @AllocateFloatVec(i32 %add15)
  store float* %call16, float** %ogcp1, align 8
  %18 = load i32, i32* %ll2, align 4
  %add17 = add nsw i32 %18, 2
  %call18 = call float* @AllocateFloatVec(i32 %add17)
  store float* %call18, float** %ogcp2, align 8
  %19 = load i32, i32* %ll1, align 4
  %add19 = add nsw i32 %19, 2
  %call20 = call float* @AllocateFloatVec(i32 %add19)
  store float* %call20, float** %fgcp1, align 8
  %20 = load i32, i32* %ll2, align 4
  %add21 = add nsw i32 %20, 2
  %call22 = call float* @AllocateFloatVec(i32 %add21)
  store float* %call22, float** %fgcp2, align 8
  %21 = load i32, i32* %ll1, align 4
  %add23 = add nsw i32 %21, 2
  %call24 = call float** @AllocateFloatMtx(i32 %add23, i32 27)
  store float** %call24, float*** %cpmx1, align 8
  %22 = load i32, i32* %ll2, align 4
  %add25 = add nsw i32 %22, 2
  %call26 = call float** @AllocateFloatMtx(i32 %add25, i32 27)
  store float** %call26, float*** %cpmx2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %icyc.addr, align 4
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %26, i64 %idxprom
  %27 = load i8*, i8** %arrayidx28, align 8
  %call29 = call i64 @strlen(i8* %27) #5
  %28 = load i32, i32* %lgth1, align 4
  %conv30 = sext i32 %28 to i64
  %cmp31 = icmp ne i64 %call29, %conv30
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %icyc.addr, align 4
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %30, i32 %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.49, %for.end
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %jcyc.addr, align 4
  %cmp36 = icmp slt i32 %34, %35
  br i1 %cmp36, label %for.body.38, label %for.end.51

for.body.38:                                      ; preds = %for.cond.35
  %36 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %36 to i64
  %37 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %37, i64 %idxprom39
  %38 = load i8*, i8** %arrayidx40, align 8
  %call41 = call i64 @strlen(i8* %38) #5
  %39 = load i32, i32* %lgth2, align 4
  %conv42 = sext i32 %39 to i64
  %cmp43 = icmp ne i64 %call41, %conv42
  br i1 %cmp43, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %for.body.38
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %jcyc.addr, align 4
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %41, i32 %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.48:                                        ; preds = %for.body.38
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %44 = load i32, i32* %j, align 4
  %inc50 = add nsw i32 %44, 1
  store i32 %inc50, i32* %j, align 4
  br label %for.cond.35

for.end.51:                                       ; preds = %for.cond.35
  %45 = load i8**, i8*** %seq1.addr, align 8
  %46 = load float**, float*** %cpmx1, align 8
  %47 = load double*, double** %eff1.addr, align 8
  %48 = load i32, i32* %lgth1, align 4
  %49 = load i32, i32* %icyc.addr, align 4
  call void @MScpmx_calc_new(i8** %45, float** %46, double* %47, i32 %48, i32 %49)
  %50 = load i8**, i8*** %seq2.addr, align 8
  %51 = load float**, float*** %cpmx2, align 8
  %52 = load double*, double** %eff2.addr, align 8
  %53 = load i32, i32* %lgth2, align 4
  %54 = load i32, i32* %jcyc.addr, align 4
  call void @MScpmx_calc_new(i8** %50, float** %51, double* %52, i32 %53, i32 %54)
  %55 = load i8*, i8** %sgap1.addr, align 8
  %tobool = icmp ne i8* %55, null
  br i1 %tobool, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %for.end.51
  %56 = load float*, float** %ogcp1, align 8
  %57 = load i32, i32* %icyc.addr, align 4
  %58 = load i8**, i8*** %seq1.addr, align 8
  %59 = load double*, double** %eff1.addr, align 8
  %60 = load i32, i32* %lgth1, align 4
  %61 = load i8*, i8** %sgap1.addr, align 8
  call void @new_OpeningGapCount(float* %56, i32 %57, i8** %58, double* %59, i32 %60, i8* %61)
  %62 = load float*, float** %ogcp2, align 8
  %63 = load i32, i32* %jcyc.addr, align 4
  %64 = load i8**, i8*** %seq2.addr, align 8
  %65 = load double*, double** %eff2.addr, align 8
  %66 = load i32, i32* %lgth2, align 4
  %67 = load i8*, i8** %sgap2.addr, align 8
  call void @new_OpeningGapCount(float* %62, i32 %63, i8** %64, double* %65, i32 %66, i8* %67)
  %68 = load float*, float** %fgcp1, align 8
  %69 = load i32, i32* %icyc.addr, align 4
  %70 = load i8**, i8*** %seq1.addr, align 8
  %71 = load double*, double** %eff1.addr, align 8
  %72 = load i32, i32* %lgth1, align 4
  %73 = load i8*, i8** %egap2.addr, align 8
  call void @new_FinalGapCount(float* %68, i32 %69, i8** %70, double* %71, i32 %72, i8* %73)
  %74 = load float*, float** %fgcp2, align 8
  %75 = load i32, i32* %jcyc.addr, align 4
  %76 = load i8**, i8*** %seq2.addr, align 8
  %77 = load double*, double** %eff2.addr, align 8
  %78 = load i32, i32* %lgth2, align 4
  %79 = load i8*, i8** %egap2.addr, align 8
  call void @new_FinalGapCount(float* %74, i32 %75, i8** %76, double* %77, i32 %78, i8* %79)
  br label %if.end.53

if.else:                                          ; preds = %for.end.51
  %80 = load float*, float** %ogcp1, align 8
  %81 = load i32, i32* %icyc.addr, align 4
  %82 = load i8**, i8*** %seq1.addr, align 8
  %83 = load double*, double** %eff1.addr, align 8
  %84 = load i32, i32* %lgth1, align 4
  call void @st_OpeningGapCount(float* %80, i32 %81, i8** %82, double* %83, i32 %84)
  %85 = load float*, float** %ogcp2, align 8
  %86 = load i32, i32* %jcyc.addr, align 4
  %87 = load i8**, i8*** %seq2.addr, align 8
  %88 = load double*, double** %eff2.addr, align 8
  %89 = load i32, i32* %lgth2, align 4
  call void @st_OpeningGapCount(float* %85, i32 %86, i8** %87, double* %88, i32 %89)
  %90 = load float*, float** %fgcp1, align 8
  %91 = load i32, i32* %icyc.addr, align 4
  %92 = load i8**, i8*** %seq1.addr, align 8
  %93 = load double*, double** %eff1.addr, align 8
  %94 = load i32, i32* %lgth1, align 4
  call void @st_FinalGapCount(float* %90, i32 %91, i8** %92, double* %93, i32 %94)
  %95 = load float*, float** %fgcp2, align 8
  %96 = load i32, i32* %jcyc.addr, align 4
  %97 = load i8**, i8*** %seq2.addr, align 8
  %98 = load double*, double** %eff2.addr, align 8
  %99 = load i32, i32* %lgth2, align 4
  call void @st_FinalGapCount(float* %95, i32 %96, i8** %97, double* %98, i32 %99)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.52
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.76, %if.end.53
  %100 = load i32, i32* %i, align 4
  %101 = load i32, i32* %lgth1, align 4
  %cmp55 = icmp slt i32 %100, %101
  br i1 %cmp55, label %for.body.57, label %for.end.78

for.body.57:                                      ; preds = %for.cond.54
  %102 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %102 to i64
  %103 = load float*, float** %ogcp1, align 8
  %arrayidx59 = getelementptr inbounds float, float* %103, i64 %idxprom58
  %104 = load float, float* %arrayidx59, align 4
  %conv60 = fpext float %104 to double
  %sub = fsub double 1.000000e+00, %conv60
  %mul = fmul double 5.000000e-01, %sub
  %105 = load float, float* %fpenalty, align 4
  %conv61 = fpext float %105 to double
  %mul62 = fmul double %mul, %conv61
  %conv63 = fptrunc double %mul62 to float
  %106 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %106 to i64
  %107 = load float*, float** %ogcp1, align 8
  %arrayidx65 = getelementptr inbounds float, float* %107, i64 %idxprom64
  store float %conv63, float* %arrayidx65, align 4
  %108 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %108 to i64
  %109 = load float*, float** %fgcp1, align 8
  %arrayidx67 = getelementptr inbounds float, float* %109, i64 %idxprom66
  %110 = load float, float* %arrayidx67, align 4
  %conv68 = fpext float %110 to double
  %sub69 = fsub double 1.000000e+00, %conv68
  %mul70 = fmul double 5.000000e-01, %sub69
  %111 = load float, float* %fpenalty, align 4
  %conv71 = fpext float %111 to double
  %mul72 = fmul double %mul70, %conv71
  %conv73 = fptrunc double %mul72 to float
  %112 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %112 to i64
  %113 = load float*, float** %fgcp1, align 8
  %arrayidx75 = getelementptr inbounds float, float* %113, i64 %idxprom74
  store float %conv73, float* %arrayidx75, align 4
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.57
  %114 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %114, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond.54

for.end.78:                                       ; preds = %for.cond.54
  store i32 0, i32* %i, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.103, %for.end.78
  %115 = load i32, i32* %i, align 4
  %116 = load i32, i32* %lgth2, align 4
  %cmp80 = icmp slt i32 %115, %116
  br i1 %cmp80, label %for.body.82, label %for.end.105

for.body.82:                                      ; preds = %for.cond.79
  %117 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %117 to i64
  %118 = load float*, float** %ogcp2, align 8
  %arrayidx84 = getelementptr inbounds float, float* %118, i64 %idxprom83
  %119 = load float, float* %arrayidx84, align 4
  %conv85 = fpext float %119 to double
  %sub86 = fsub double 1.000000e+00, %conv85
  %mul87 = fmul double 5.000000e-01, %sub86
  %120 = load float, float* %fpenalty, align 4
  %conv88 = fpext float %120 to double
  %mul89 = fmul double %mul87, %conv88
  %conv90 = fptrunc double %mul89 to float
  %121 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %121 to i64
  %122 = load float*, float** %ogcp2, align 8
  %arrayidx92 = getelementptr inbounds float, float* %122, i64 %idxprom91
  store float %conv90, float* %arrayidx92, align 4
  %123 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %123 to i64
  %124 = load float*, float** %fgcp2, align 8
  %arrayidx94 = getelementptr inbounds float, float* %124, i64 %idxprom93
  %125 = load float, float* %arrayidx94, align 4
  %conv95 = fpext float %125 to double
  %sub96 = fsub double 1.000000e+00, %conv95
  %mul97 = fmul double 5.000000e-01, %sub96
  %126 = load float, float* %fpenalty, align 4
  %conv98 = fpext float %126 to double
  %mul99 = fmul double %mul97, %conv98
  %conv100 = fptrunc double %mul99 to float
  %127 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %127 to i64
  %128 = load float*, float** %fgcp2, align 8
  %arrayidx102 = getelementptr inbounds float, float* %128, i64 %idxprom101
  store float %conv100, float* %arrayidx102, align 4
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.82
  %129 = load i32, i32* %i, align 4
  %inc104 = add nsw i32 %129, 1
  store i32 %inc104, i32* %i, align 4
  br label %for.cond.79

for.end.105:                                      ; preds = %for.cond.79
  %130 = load float*, float** %ogcp1, align 8
  %131 = load float**, float*** %gapinfo, align 8
  %arrayidx106 = getelementptr inbounds float*, float** %131, i64 0
  store float* %130, float** %arrayidx106, align 8
  %132 = load float*, float** %fgcp1, align 8
  %133 = load float**, float*** %gapinfo, align 8
  %arrayidx107 = getelementptr inbounds float*, float** %133, i64 1
  store float* %132, float** %arrayidx107, align 8
  %134 = load float*, float** %ogcp2, align 8
  %135 = load float**, float*** %gapinfo, align 8
  %arrayidx108 = getelementptr inbounds float*, float** %135, i64 2
  store float* %134, float** %arrayidx108, align 8
  %136 = load float*, float** %fgcp2, align 8
  %137 = load float**, float*** %gapinfo, align 8
  %arrayidx109 = getelementptr inbounds float*, float** %137, i64 3
  store float* %136, float** %arrayidx109, align 8
  %138 = load i32, i32* %icyc.addr, align 4
  %139 = load i32, i32* %jcyc.addr, align 4
  %140 = load double*, double** %eff1.addr, align 8
  %141 = load double*, double** %eff2.addr, align 8
  %142 = load i8**, i8*** %seq1.addr, align 8
  %143 = load i8**, i8*** %seq2.addr, align 8
  %144 = load float**, float*** %cpmx1, align 8
  %145 = load float**, float*** %cpmx2, align 8
  %146 = load i32, i32* %lgth1, align 4
  %sub110 = sub nsw i32 %146, 1
  %147 = load i32, i32* %lgth2, align 4
  %sub111 = sub nsw i32 %147, 1
  %148 = load i32, i32* %alloclen.addr, align 4
  %149 = load i8**, i8*** %mseq1, align 8
  %150 = load i8**, i8*** %mseq2, align 8
  %151 = load float**, float*** %gapinfo, align 8
  %152 = load float**, float*** %map.addr, align 8
  %call112 = call float @MSalignmm_rec(i32 %138, i32 %139, double* %140, double* %141, i8** %142, i8** %143, float** %144, float** %145, i32 0, i32 %sub110, i32 0, i32 %sub111, i32 %148, i8** %149, i8** %150, i32 0, float** %151, float** %152)
  store float %call112, float* %wm, align 4
  %153 = load float*, float** %ogcp1, align 8
  call void @FreeFloatVec(float* %153)
  %154 = load float*, float** %ogcp2, align 8
  call void @FreeFloatVec(float* %154)
  %155 = load float*, float** %fgcp1, align 8
  call void @FreeFloatVec(float* %155)
  %156 = load float*, float** %fgcp2, align 8
  call void @FreeFloatVec(float* %156)
  %157 = load float**, float*** %cpmx1, align 8
  call void @FreeFloatMtx(float** %157)
  %158 = load float**, float*** %cpmx2, align 8
  call void @FreeFloatMtx(float** %158)
  %159 = load float**, float*** %gapinfo, align 8
  %160 = bitcast float** %159 to i8*
  call void @free(i8* %160) #7
  %161 = load i8**, i8*** %mseq1, align 8
  call void @FreeCharMtx(i8** %161)
  %162 = load i8**, i8*** %mseq2, align 8
  call void @FreeCharMtx(i8** %162)
  %163 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx113 = getelementptr inbounds i8*, i8** %163, i64 0
  %164 = load i8*, i8** %arrayidx113, align 8
  %call114 = call i64 @strlen(i8* %164) #5
  %conv115 = trunc i64 %call114 to i32
  store i32 %conv115, i32* %lgth1, align 4
  %165 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx116 = getelementptr inbounds i8*, i8** %165, i64 0
  %166 = load i8*, i8** %arrayidx116, align 8
  %call117 = call i64 @strlen(i8* %166) #5
  %conv118 = trunc i64 %call117 to i32
  store i32 %conv118, i32* %lgth2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.133, %for.end.105
  %167 = load i32, i32* %i, align 4
  %168 = load i32, i32* %icyc.addr, align 4
  %cmp120 = icmp slt i32 %167, %168
  br i1 %cmp120, label %for.body.122, label %for.end.135

for.body.122:                                     ; preds = %for.cond.119
  %169 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %169 to i64
  %170 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx124 = getelementptr inbounds i8*, i8** %170, i64 %idxprom123
  %171 = load i8*, i8** %arrayidx124, align 8
  %call125 = call i64 @strlen(i8* %171) #5
  %172 = load i32, i32* %lgth1, align 4
  %conv126 = sext i32 %172 to i64
  %cmp127 = icmp ne i64 %call125, %conv126
  br i1 %cmp127, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %for.body.122
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %174 = load i32, i32* %i, align 4
  %175 = load i32, i32* %icyc.addr, align 4
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %174, i32 %175)
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %176, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.132:                                       ; preds = %for.body.122
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.132
  %177 = load i32, i32* %i, align 4
  %inc134 = add nsw i32 %177, 1
  store i32 %inc134, i32* %i, align 4
  br label %for.cond.119

for.end.135:                                      ; preds = %for.cond.119
  store i32 0, i32* %j, align 4
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.150, %for.end.135
  %178 = load i32, i32* %j, align 4
  %179 = load i32, i32* %jcyc.addr, align 4
  %cmp137 = icmp slt i32 %178, %179
  br i1 %cmp137, label %for.body.139, label %for.end.152

for.body.139:                                     ; preds = %for.cond.136
  %180 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %180 to i64
  %181 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx141 = getelementptr inbounds i8*, i8** %181, i64 %idxprom140
  %182 = load i8*, i8** %arrayidx141, align 8
  %call142 = call i64 @strlen(i8* %182) #5
  %183 = load i32, i32* %lgth2, align 4
  %conv143 = sext i32 %183 to i64
  %cmp144 = icmp ne i64 %call142, %conv143
  br i1 %cmp144, label %if.then.146, label %if.end.149

if.then.146:                                      ; preds = %for.body.139
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %185 = load i32, i32* %j, align 4
  %186 = load i32, i32* %jcyc.addr, align 4
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %185, i32 %186)
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %187, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.149:                                       ; preds = %for.body.139
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149
  %188 = load i32, i32* %j, align 4
  %inc151 = add nsw i32 %188, 1
  store i32 %inc151, i32* %j, align 4
  br label %for.cond.136

for.end.152:                                      ; preds = %for.cond.136
  %189 = load float, float* %wm, align 4
  ret float %189
}

declare i32 @seqlen(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i8** @AllocateCharMtx(i32, i32) #1

declare float** @AllocateFloatMtx(i32, i32) #1

declare float* @AllocateFloatVec(i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @MScpmx_calc_new(i8**, float**, double*, i32, i32) #1

declare void @new_OpeningGapCount(float*, i32, i8**, double*, i32, i8*) #1

declare void @new_FinalGapCount(float*, i32, i8**, double*, i32, i8*) #1

declare void @st_OpeningGapCount(float*, i32, i8**, double*, i32) #1

declare void @st_FinalGapCount(float*, i32, i8**, double*, i32) #1

; Function Attrs: nounwind uwtable
define internal float @MSalignmm_rec(i32 %icyc, i32 %jcyc, double* %eff1, double* %eff2, i8** %seq1, i8** %seq2, float** %cpmx1, float** %cpmx2, i32 %ist, i32 %ien, i32 %jst, i32 %jen, i32 %alloclen, i8** %mseq1, i8** %mseq2, i32 %depth, float** %gapinfo, float** %map) #0 {
entry:
  %retval = alloca float, align 4
  %icyc.addr = alloca i32, align 4
  %jcyc.addr = alloca i32, align 4
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %cpmx1.addr = alloca float**, align 8
  %cpmx2.addr = alloca float**, align 8
  %ist.addr = alloca i32, align 4
  %ien.addr = alloca i32, align 4
  %jst.addr = alloca i32, align 4
  %jen.addr = alloca i32, align 4
  %alloclen.addr = alloca i32, align 4
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %depth.addr = alloca i32, align 4
  %gapinfo.addr = alloca float**, align 8
  %map.addr = alloca float**, align 8
  %alnlen = alloca i32, align 4
  %value = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %aseq1 = alloca i8**, align 8
  %aseq2 = alloca i8**, align 8
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %l = alloca i32, align 4
  %len = alloca i32, align 4
  %lasti = alloca i32, align 4
  %lastj = alloca i32, align 4
  %imid = alloca i32, align 4
  %jmid = alloca i32, align 4
  %wm = alloca float, align 4
  %g = alloca float, align 4
  %currentw = alloca float*, align 8
  %previousw = alloca float*, align 8
  %wtmp = alloca float*, align 8
  %mpjpt = alloca i32*, align 8
  %mp = alloca i32*, align 8
  %mpi = alloca i32, align 4
  %mjpt = alloca float*, align 8
  %prept = alloca float*, align 8
  %curpt = alloca float*, align 8
  %mi = alloca float, align 4
  %m = alloca float*, align 8
  %w1 = alloca float*, align 8
  %w2 = alloca float*, align 8
  %initverticalw = alloca float*, align 8
  %lastverticalw = alloca float*, align 8
  %intwork = alloca i32**, align 8
  %floatwork = alloca float**, align 8
  %WMMTX = alloca float**, align 8
  %WMMTX2 = alloca float**, align 8
  %midw = alloca float*, align 8
  %midm = alloca float*, align 8
  %midn = alloca float*, align 8
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
  %maxwm = alloca float, align 4
  %jumpforwi = alloca i32*, align 8
  %jumpforwj = alloca i32*, align 8
  %jumpbacki = alloca i32*, align 8
  %jumpbackj = alloca i32*, align 8
  %jumpdummi = alloca i32*, align 8
  %jumpdummj = alloca i32*, align 8
  %jumpi = alloca i32, align 4
  %jumpj = alloca i32, align 4
  %gaps = alloca i8*, align 8
  %ijpi = alloca i32, align 4
  %ijpj = alloca i32, align 4
  %ogcp1 = alloca float*, align 8
  %fgcp1 = alloca float*, align 8
  %ogcp2 = alloca float*, align 8
  %fgcp2 = alloca float*, align 8
  %firstm = alloca float, align 4
  %firstmp = alloca i32, align 4
  store i32 %icyc, i32* %icyc.addr, align 4
  store i32 %jcyc, i32* %jcyc.addr, align 4
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store float** %cpmx1, float*** %cpmx1.addr, align 8
  store float** %cpmx2, float*** %cpmx2.addr, align 8
  store i32 %ist, i32* %ist.addr, align 4
  store i32 %ien, i32* %ien.addr, align 4
  store i32 %jst, i32* %jst.addr, align 4
  store i32 %jen, i32* %jen.addr, align 4
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store float** %gapinfo, float*** %gapinfo.addr, align 8
  store float** %map, float*** %map.addr, align 8
  store float 0.000000e+00, float* %value, align 4
  store i32 0, i32* %jmid, align 4
  store float 0.000000e+00, float* %wm, align 4
  store float 0.000000e+00, float* %maxwm, align 4
  store i32 0, i32* %jumpj, align 4
  %0 = load i32, i32* @offset, align 4
  %sub = sub nsw i32 0, %0
  %add = add nsw i32 %sub, 500
  %conv = sitofp i32 %add to float
  store float %conv, float* @localthr, align 4
  %1 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %1, i64 0
  %2 = load float*, float** %arrayidx, align 8
  %3 = load i32, i32* %ist.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds float, float* %2, i64 %idx.ext
  store float* %add.ptr, float** %ogcp1, align 8
  %4 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx1 = getelementptr inbounds float*, float** %4, i64 1
  %5 = load float*, float** %arrayidx1, align 8
  %6 = load i32, i32* %ist.addr, align 4
  %idx.ext2 = sext i32 %6 to i64
  %add.ptr3 = getelementptr inbounds float, float* %5, i64 %idx.ext2
  store float* %add.ptr3, float** %fgcp1, align 8
  %7 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx4 = getelementptr inbounds float*, float** %7, i64 2
  %8 = load float*, float** %arrayidx4, align 8
  %9 = load i32, i32* %jst.addr, align 4
  %idx.ext5 = sext i32 %9 to i64
  %add.ptr6 = getelementptr inbounds float, float* %8, i64 %idx.ext5
  store float* %add.ptr6, float** %ogcp2, align 8
  %10 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx7 = getelementptr inbounds float*, float** %10, i64 3
  %11 = load float*, float** %arrayidx7, align 8
  %12 = load i32, i32* %jst.addr, align 4
  %idx.ext8 = sext i32 %12 to i64
  %add.ptr9 = getelementptr inbounds float, float* %11, i64 %idx.ext8
  store float* %add.ptr9, float** %fgcp2, align 8
  %13 = load i32, i32* %depth.addr, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %depth.addr, align 4
  %14 = load i32, i32* @reccycle, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, i32* @reccycle, align 4
  %15 = load i32, i32* %ien.addr, align 4
  %16 = load i32, i32* %ist.addr, align 4
  %sub11 = sub nsw i32 %15, %16
  %add12 = add nsw i32 %sub11, 1
  store i32 %add12, i32* %lgth1, align 4
  %17 = load i32, i32* %jen.addr, align 4
  %18 = load i32, i32* %jst.addr, align 4
  %sub13 = sub nsw i32 %17, %18
  %add14 = add nsw i32 %sub13, 1
  store i32 %add14, i32* %lgth2, align 4
  %19 = load i32, i32* %lgth2, align 4
  %cmp = icmp sle i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %icyc.addr, align 4
  %cmp16 = icmp slt i32 %20, %21
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %23, i64 %idxprom
  %24 = load i8*, i8** %arrayidx18, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %26, i64 %idxprom19
  %27 = load i8*, i8** %arrayidx20, align 8
  %28 = load i32, i32* %ist.addr, align 4
  %idx.ext21 = sext i32 %28 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %27, i64 %idx.ext21
  %29 = load i32, i32* %lgth1, align 4
  %conv23 = sext i32 %29 to i64
  %call = call i8* @strncpy(i8* %24, i8* %add.ptr22, i64 %conv23) #7
  %30 = load i32, i32* %lgth1, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %31 to i64
  %32 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %32, i64 %idxprom25
  %33 = load i8*, i8** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %33, i64 %idxprom24
  store i8 0, i8* %arrayidx27, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %34, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.46, %for.end
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %jcyc.addr, align 4
  %cmp30 = icmp slt i32 %35, %36
  br i1 %cmp30, label %for.body.32, label %for.end.48

for.body.32:                                      ; preds = %for.cond.29
  %37 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %37 to i64
  %38 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %38, i64 %idxprom33
  %39 = load i8*, i8** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %arrayidx35, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.43, %for.body.32
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %lgth1, align 4
  %cmp37 = icmp slt i32 %40, %41
  br i1 %cmp37, label %for.body.39, label %for.end.45

for.body.39:                                      ; preds = %for.cond.36
  %42 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %42 to i64
  %43 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %43, i64 %idxprom40
  %44 = load i8*, i8** %arrayidx41, align 8
  %call42 = call i8* @strcat(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.39
  %45 = load i32, i32* %j, align 4
  %inc44 = add nsw i32 %45, 1
  store i32 %inc44, i32* %j, align 4
  br label %for.cond.36

for.end.45:                                       ; preds = %for.cond.36
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.45
  %46 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %46, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.29

for.end.48:                                       ; preds = %for.cond.29
  store float 0.000000e+00, float* %retval
  br label %return

if.end:                                           ; preds = %entry
  %47 = load i32, i32* %icyc.addr, align 4
  %call49 = call i8** @AllocateCharMtx(i32 %47, i32 0)
  store i8** %call49, i8*** %aseq1, align 8
  %48 = load i32, i32* %jcyc.addr, align 4
  %call50 = call i8** @AllocateCharMtx(i32 %48, i32 0)
  store i8** %call50, i8*** %aseq2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.59, %if.end
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %icyc.addr, align 4
  %cmp52 = icmp slt i32 %49, %50
  br i1 %cmp52, label %for.body.54, label %for.end.61

for.body.54:                                      ; preds = %for.cond.51
  %51 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %51 to i64
  %52 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %52, i64 %idxprom55
  %53 = load i8*, i8** %arrayidx56, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %54 to i64
  %55 = load i8**, i8*** %aseq1, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %55, i64 %idxprom57
  store i8* %53, i8** %arrayidx58, align 8
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.54
  %56 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %56, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.51

for.end.61:                                       ; preds = %for.cond.51
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.70, %for.end.61
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %jcyc.addr, align 4
  %cmp63 = icmp slt i32 %57, %58
  br i1 %cmp63, label %for.body.65, label %for.end.72

for.body.65:                                      ; preds = %for.cond.62
  %59 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %59 to i64
  %60 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %60, i64 %idxprom66
  %61 = load i8*, i8** %arrayidx67, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %62 to i64
  %63 = load i8**, i8*** %aseq2, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %63, i64 %idxprom68
  store i8* %61, i8** %arrayidx69, align 8
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.65
  %64 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %64, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.62

for.end.72:                                       ; preds = %for.cond.62
  %65 = load i32, i32* %lgth1, align 4
  %cmp73 = icmp slt i32 %65, 10
  br i1 %cmp73, label %if.then.77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.72
  %66 = load i32, i32* %lgth2, align 4
  %cmp75 = icmp slt i32 %66, 10
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %lor.lhs.false, %for.end.72
  %67 = load i8**, i8*** %aseq1, align 8
  %68 = bitcast i8** %67 to i8*
  call void @free(i8* %68) #7
  %69 = load i8**, i8*** %aseq2, align 8
  %70 = bitcast i8** %69 to i8*
  call void @free(i8* %70) #7
  %71 = load float, float* %value, align 4
  store float %71, float* %retval
  br label %return

if.end.78:                                        ; preds = %lor.lhs.false
  %72 = load i32, i32* %lgth1, align 4
  %add79 = add nsw i32 %72, 100
  store i32 %add79, i32* %ll1, align 4
  %73 = load i32, i32* %lgth2, align 4
  %add80 = add nsw i32 %73, 100
  store i32 %add80, i32* %ll2, align 4
  %74 = load i32, i32* %ll2, align 4
  %add81 = add nsw i32 %74, 2
  %call82 = call float* @AllocateFloatVec(i32 %add81)
  store float* %call82, float** %w1, align 8
  %75 = load i32, i32* %ll2, align 4
  %add83 = add nsw i32 %75, 2
  %call84 = call float* @AllocateFloatVec(i32 %add83)
  store float* %call84, float** %w2, align 8
  %76 = load i32, i32* %ll2, align 4
  %add85 = add nsw i32 %76, 2
  %call86 = call float* @AllocateFloatVec(i32 %add85)
  store float* %call86, float** %midw, align 8
  %77 = load i32, i32* %ll2, align 4
  %add87 = add nsw i32 %77, 2
  %call88 = call float* @AllocateFloatVec(i32 %add87)
  store float* %call88, float** %midn, align 8
  %78 = load i32, i32* %ll2, align 4
  %add89 = add nsw i32 %78, 2
  %call90 = call float* @AllocateFloatVec(i32 %add89)
  store float* %call90, float** %midm, align 8
  %79 = load i32, i32* %ll2, align 4
  %add91 = add nsw i32 %79, 2
  %call92 = call i32* @AllocateIntVec(i32 %add91)
  store i32* %call92, i32** %jumpbacki, align 8
  %80 = load i32, i32* %ll2, align 4
  %add93 = add nsw i32 %80, 2
  %call94 = call i32* @AllocateIntVec(i32 %add93)
  store i32* %call94, i32** %jumpbackj, align 8
  %81 = load i32, i32* %ll2, align 4
  %add95 = add nsw i32 %81, 2
  %call96 = call i32* @AllocateIntVec(i32 %add95)
  store i32* %call96, i32** %jumpforwi, align 8
  %82 = load i32, i32* %ll2, align 4
  %add97 = add nsw i32 %82, 2
  %call98 = call i32* @AllocateIntVec(i32 %add97)
  store i32* %call98, i32** %jumpforwj, align 8
  %83 = load i32, i32* %ll2, align 4
  %add99 = add nsw i32 %83, 2
  %call100 = call i32* @AllocateIntVec(i32 %add99)
  store i32* %call100, i32** %jumpdummi, align 8
  %84 = load i32, i32* %ll2, align 4
  %add101 = add nsw i32 %84, 2
  %call102 = call i32* @AllocateIntVec(i32 %add101)
  store i32* %call102, i32** %jumpdummj, align 8
  %85 = load i32, i32* %ll1, align 4
  %add103 = add nsw i32 %85, 2
  %call104 = call float* @AllocateFloatVec(i32 %add103)
  store float* %call104, float** %initverticalw, align 8
  %86 = load i32, i32* %ll1, align 4
  %add105 = add nsw i32 %86, 2
  %call106 = call float* @AllocateFloatVec(i32 %add105)
  store float* %call106, float** %lastverticalw, align 8
  %87 = load i32, i32* %ll2, align 4
  %add107 = add nsw i32 %87, 2
  %call108 = call float* @AllocateFloatVec(i32 %add107)
  store float* %call108, float** %m, align 8
  %88 = load i32, i32* %ll2, align 4
  %add109 = add nsw i32 %88, 2
  %call110 = call i32* @AllocateIntVec(i32 %add109)
  store i32* %call110, i32** %mp, align 8
  %89 = load i32, i32* %ll1, align 4
  %90 = load i32, i32* %ll2, align 4
  %cmp111 = icmp sgt i32 %89, %90
  br i1 %cmp111, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.78
  %91 = load i32, i32* %ll1, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.78
  %92 = load i32, i32* %ll2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %91, %cond.true ], [ %92, %cond.false ]
  %add113 = add nsw i32 %cond, 2
  %call114 = call i8* @AllocateCharVec(i32 %add113)
  store i8* %call114, i8** %gaps, align 8
  %93 = load i32, i32* %ll1, align 4
  %94 = load i32, i32* %ll2, align 4
  %cmp115 = icmp sgt i32 %93, %94
  br i1 %cmp115, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %cond.end
  %95 = load i32, i32* %ll1, align 4
  br label %cond.end.119

cond.false.118:                                   ; preds = %cond.end
  %96 = load i32, i32* %ll2, align 4
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.117
  %cond120 = phi i32 [ %95, %cond.true.117 ], [ %96, %cond.false.118 ]
  %add121 = add nsw i32 %cond120, 2
  %call122 = call float** @AllocateFloatMtx(i32 %add121, i32 26)
  store float** %call122, float*** %floatwork, align 8
  %97 = load i32, i32* %ll1, align 4
  %98 = load i32, i32* %ll2, align 4
  %cmp123 = icmp sgt i32 %97, %98
  br i1 %cmp123, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %cond.end.119
  %99 = load i32, i32* %ll1, align 4
  br label %cond.end.127

cond.false.126:                                   ; preds = %cond.end.119
  %100 = load i32, i32* %ll2, align 4
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.126, %cond.true.125
  %cond128 = phi i32 [ %99, %cond.true.125 ], [ %100, %cond.false.126 ]
  %add129 = add nsw i32 %cond128, 2
  %call130 = call i32** @AllocateIntMtx(i32 %add129, i32 26)
  store i32** %call130, i32*** %intwork, align 8
  %101 = load i32, i32* %ll1, align 4
  %102 = load i32, i32* %ll2, align 4
  %call131 = call float** @AllocateFloatMtx(i32 %101, i32 %102)
  store float** %call131, float*** %WMMTX, align 8
  %103 = load i32, i32* %ll1, align 4
  %104 = load i32, i32* %ll2, align 4
  %call132 = call float** @AllocateFloatMtx(i32 %103, i32 %104)
  store float** %call132, float*** %WMMTX2, align 8
  %105 = load float*, float** %w1, align 8
  store float* %105, float** %currentw, align 8
  %106 = load float*, float** %w2, align 8
  store float* %106, float** %previousw, align 8
  %107 = load float*, float** %initverticalw, align 8
  %108 = load float**, float*** %cpmx2.addr, align 8
  %109 = load i32, i32* %jst.addr, align 4
  %idx.ext133 = sext i32 %109 to i64
  %add.ptr134 = getelementptr inbounds float*, float** %108, i64 %idx.ext133
  %110 = load float**, float*** %cpmx1.addr, align 8
  %111 = load i32, i32* %ist.addr, align 4
  %idx.ext135 = sext i32 %111 to i64
  %add.ptr136 = getelementptr inbounds float*, float** %110, i64 %idx.ext135
  %112 = load i32, i32* %lgth1, align 4
  %113 = load float**, float*** %floatwork, align 8
  %114 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %107, float** %add.ptr134, float** %add.ptr136, i32 0, i32 %112, float** %113, i32** %114, i32 1)
  %115 = load float*, float** %currentw, align 8
  %116 = load float**, float*** %cpmx1.addr, align 8
  %117 = load i32, i32* %ist.addr, align 4
  %idx.ext137 = sext i32 %117 to i64
  %add.ptr138 = getelementptr inbounds float*, float** %116, i64 %idx.ext137
  %118 = load float**, float*** %cpmx2.addr, align 8
  %119 = load i32, i32* %jst.addr, align 4
  %idx.ext139 = sext i32 %119 to i64
  %add.ptr140 = getelementptr inbounds float*, float** %118, i64 %idx.ext139
  %120 = load i32, i32* %lgth2, align 4
  %121 = load float**, float*** %floatwork, align 8
  %122 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %115, float** %add.ptr138, float** %add.ptr140, i32 0, i32 %120, float** %121, i32** %122, i32 1)
  store i32 1, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.154, %cond.end.127
  %123 = load i32, i32* %i, align 4
  %124 = load i32, i32* %lgth1, align 4
  %add142 = add nsw i32 %124, 1
  %cmp143 = icmp slt i32 %123, %add142
  br i1 %cmp143, label %for.body.145, label %for.end.156

for.body.145:                                     ; preds = %for.cond.141
  %125 = load float*, float** %ogcp1, align 8
  %arrayidx146 = getelementptr inbounds float, float* %125, i64 0
  %126 = load float, float* %arrayidx146, align 4
  %127 = load i32, i32* %i, align 4
  %sub147 = sub nsw i32 %127, 1
  %idxprom148 = sext i32 %sub147 to i64
  %128 = load float*, float** %fgcp1, align 8
  %arrayidx149 = getelementptr inbounds float, float* %128, i64 %idxprom148
  %129 = load float, float* %arrayidx149, align 4
  %add150 = fadd float %126, %129
  %130 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %130 to i64
  %131 = load float*, float** %initverticalw, align 8
  %arrayidx152 = getelementptr inbounds float, float* %131, i64 %idxprom151
  %132 = load float, float* %arrayidx152, align 4
  %add153 = fadd float %132, %add150
  store float %add153, float* %arrayidx152, align 4
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.body.145
  %133 = load i32, i32* %i, align 4
  %inc155 = add nsw i32 %133, 1
  store i32 %inc155, i32* %i, align 4
  br label %for.cond.141

for.end.156:                                      ; preds = %for.cond.141
  store i32 1, i32* %j, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.170, %for.end.156
  %134 = load i32, i32* %j, align 4
  %135 = load i32, i32* %lgth2, align 4
  %add158 = add nsw i32 %135, 1
  %cmp159 = icmp slt i32 %134, %add158
  br i1 %cmp159, label %for.body.161, label %for.end.172

for.body.161:                                     ; preds = %for.cond.157
  %136 = load float*, float** %ogcp2, align 8
  %arrayidx162 = getelementptr inbounds float, float* %136, i64 0
  %137 = load float, float* %arrayidx162, align 4
  %138 = load i32, i32* %j, align 4
  %sub163 = sub nsw i32 %138, 1
  %idxprom164 = sext i32 %sub163 to i64
  %139 = load float*, float** %fgcp2, align 8
  %arrayidx165 = getelementptr inbounds float, float* %139, i64 %idxprom164
  %140 = load float, float* %arrayidx165, align 4
  %add166 = fadd float %137, %140
  %141 = load i32, i32* %j, align 4
  %idxprom167 = sext i32 %141 to i64
  %142 = load float*, float** %currentw, align 8
  %arrayidx168 = getelementptr inbounds float, float* %142, i64 %idxprom167
  %143 = load float, float* %arrayidx168, align 4
  %add169 = fadd float %143, %add166
  store float %add169, float* %arrayidx168, align 4
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.161
  %144 = load i32, i32* %j, align 4
  %inc171 = add nsw i32 %144, 1
  store i32 %inc171, i32* %j, align 4
  br label %for.cond.157

for.end.172:                                      ; preds = %for.cond.157
  %145 = load float*, float** %initverticalw, align 8
  %arrayidx173 = getelementptr inbounds float, float* %145, i64 0
  %146 = load float, float* %arrayidx173, align 4
  %147 = load float**, float*** %WMMTX, align 8
  %arrayidx174 = getelementptr inbounds float*, float** %147, i64 0
  %148 = load float*, float** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds float, float* %148, i64 0
  store float %146, float* %arrayidx175, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.186, %for.end.172
  %149 = load i32, i32* %i, align 4
  %150 = load i32, i32* %lgth1, align 4
  %add177 = add nsw i32 %150, 1
  %cmp178 = icmp slt i32 %149, %add177
  br i1 %cmp178, label %for.body.180, label %for.end.188

for.body.180:                                     ; preds = %for.cond.176
  %151 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %151 to i64
  %152 = load float*, float** %initverticalw, align 8
  %arrayidx182 = getelementptr inbounds float, float* %152, i64 %idxprom181
  %153 = load float, float* %arrayidx182, align 4
  %154 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %154 to i64
  %155 = load float**, float*** %WMMTX, align 8
  %arrayidx184 = getelementptr inbounds float*, float** %155, i64 %idxprom183
  %156 = load float*, float** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds float, float* %156, i64 0
  store float %153, float* %arrayidx185, align 4
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.body.180
  %157 = load i32, i32* %i, align 4
  %inc187 = add nsw i32 %157, 1
  store i32 %inc187, i32* %i, align 4
  br label %for.cond.176

for.end.188:                                      ; preds = %for.cond.176
  store i32 1, i32* %j, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.199, %for.end.188
  %158 = load i32, i32* %j, align 4
  %159 = load i32, i32* %lgth2, align 4
  %add190 = add nsw i32 %159, 1
  %cmp191 = icmp slt i32 %158, %add190
  br i1 %cmp191, label %for.body.193, label %for.end.201

for.body.193:                                     ; preds = %for.cond.189
  %160 = load i32, i32* %j, align 4
  %idxprom194 = sext i32 %160 to i64
  %161 = load float*, float** %currentw, align 8
  %arrayidx195 = getelementptr inbounds float, float* %161, i64 %idxprom194
  %162 = load float, float* %arrayidx195, align 4
  %163 = load i32, i32* %j, align 4
  %idxprom196 = sext i32 %163 to i64
  %164 = load float**, float*** %WMMTX, align 8
  %arrayidx197 = getelementptr inbounds float*, float** %164, i64 0
  %165 = load float*, float** %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds float, float* %165, i64 %idxprom196
  store float %162, float* %arrayidx198, align 4
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.body.193
  %166 = load i32, i32* %j, align 4
  %inc200 = add nsw i32 %166, 1
  store i32 %inc200, i32* %j, align 4
  br label %for.cond.189

for.end.201:                                      ; preds = %for.cond.189
  store i32 1, i32* %j, align 4
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.216, %for.end.201
  %167 = load i32, i32* %j, align 4
  %168 = load i32, i32* %lgth2, align 4
  %add203 = add nsw i32 %168, 1
  %cmp204 = icmp slt i32 %167, %add203
  br i1 %cmp204, label %for.body.206, label %for.end.218

for.body.206:                                     ; preds = %for.cond.202
  %169 = load i32, i32* %j, align 4
  %sub207 = sub nsw i32 %169, 1
  %idxprom208 = sext i32 %sub207 to i64
  %170 = load float*, float** %currentw, align 8
  %arrayidx209 = getelementptr inbounds float, float* %170, i64 %idxprom208
  %171 = load float, float* %arrayidx209, align 4
  %172 = load float*, float** %ogcp1, align 8
  %arrayidx210 = getelementptr inbounds float, float* %172, i64 1
  %173 = load float, float* %arrayidx210, align 4
  %add211 = fadd float %171, %173
  %174 = load i32, i32* %j, align 4
  %idxprom212 = sext i32 %174 to i64
  %175 = load float*, float** %m, align 8
  %arrayidx213 = getelementptr inbounds float, float* %175, i64 %idxprom212
  store float %add211, float* %arrayidx213, align 4
  %176 = load i32, i32* %j, align 4
  %idxprom214 = sext i32 %176 to i64
  %177 = load i32*, i32** %mp, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %177, i64 %idxprom214
  store i32 0, i32* %arrayidx215, align 4
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.body.206
  %178 = load i32, i32* %j, align 4
  %inc217 = add nsw i32 %178, 1
  store i32 %inc217, i32* %j, align 4
  br label %for.cond.202

for.end.218:                                      ; preds = %for.cond.202
  %179 = load i32, i32* %lgth2, align 4
  %sub219 = sub nsw i32 %179, 1
  %idxprom220 = sext i32 %sub219 to i64
  %180 = load float*, float** %currentw, align 8
  %arrayidx221 = getelementptr inbounds float, float* %180, i64 %idxprom220
  %181 = load float, float* %arrayidx221, align 4
  %182 = load float*, float** %lastverticalw, align 8
  %arrayidx222 = getelementptr inbounds float, float* %182, i64 0
  store float %181, float* %arrayidx222, align 4
  %183 = load i32, i32* %lgth1, align 4
  %conv223 = sitofp i32 %183 to double
  %mul = fmul double %conv223, 5.000000e-01
  %conv224 = fptosi double %mul to i32
  store i32 %conv224, i32* %imid, align 4
  store i32 0, i32* %jumpi, align 4
  %184 = load i32, i32* %lgth1, align 4
  %add225 = add nsw i32 %184, 1
  store i32 %add225, i32* %lasti, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.226

for.cond.226:                                     ; preds = %for.inc.334, %for.end.218
  %185 = load i32, i32* %i, align 4
  %186 = load i32, i32* %lasti, align 4
  %cmp227 = icmp slt i32 %185, %186
  br i1 %cmp227, label %for.body.229, label %for.end.336

for.body.229:                                     ; preds = %for.cond.226
  %187 = load float*, float** %previousw, align 8
  store float* %187, float** %wtmp, align 8
  %188 = load float*, float** %currentw, align 8
  store float* %188, float** %previousw, align 8
  %189 = load float*, float** %wtmp, align 8
  store float* %189, float** %currentw, align 8
  %190 = load i32, i32* %i, align 4
  %sub230 = sub nsw i32 %190, 1
  %idxprom231 = sext i32 %sub230 to i64
  %191 = load float*, float** %initverticalw, align 8
  %arrayidx232 = getelementptr inbounds float, float* %191, i64 %idxprom231
  %192 = load float, float* %arrayidx232, align 4
  %193 = load float*, float** %previousw, align 8
  %arrayidx233 = getelementptr inbounds float, float* %193, i64 0
  store float %192, float* %arrayidx233, align 4
  %194 = load float*, float** %currentw, align 8
  %195 = load float**, float*** %cpmx1.addr, align 8
  %196 = load i32, i32* %ist.addr, align 4
  %idx.ext234 = sext i32 %196 to i64
  %add.ptr235 = getelementptr inbounds float*, float** %195, i64 %idx.ext234
  %197 = load float**, float*** %cpmx2.addr, align 8
  %198 = load i32, i32* %jst.addr, align 4
  %idx.ext236 = sext i32 %198 to i64
  %add.ptr237 = getelementptr inbounds float*, float** %197, i64 %idx.ext236
  %199 = load i32, i32* %i, align 4
  %200 = load i32, i32* %lgth2, align 4
  %201 = load float**, float*** %floatwork, align 8
  %202 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %194, float** %add.ptr235, float** %add.ptr237, i32 %199, i32 %200, float** %201, i32** %202, i32 0)
  %203 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %203 to i64
  %204 = load float*, float** %initverticalw, align 8
  %arrayidx239 = getelementptr inbounds float, float* %204, i64 %idxprom238
  %205 = load float, float* %arrayidx239, align 4
  %206 = load float*, float** %currentw, align 8
  %arrayidx240 = getelementptr inbounds float, float* %206, i64 0
  store float %205, float* %arrayidx240, align 4
  %207 = load i32, i32* %i, align 4
  %idxprom241 = sext i32 %207 to i64
  %208 = load float*, float** %ogcp1, align 8
  %arrayidx242 = getelementptr inbounds float, float* %208, i64 %idxprom241
  %209 = load float, float* %arrayidx242, align 4
  %210 = load float*, float** %m, align 8
  %arrayidx243 = getelementptr inbounds float, float* %210, i64 0
  store float %209, float* %arrayidx243, align 4
  %211 = load i32, i32* %i, align 4
  %212 = load i32, i32* %imid, align 4
  %cmp244 = icmp eq i32 %211, %212
  br i1 %cmp244, label %if.then.246, label %if.end.249

if.then.246:                                      ; preds = %for.body.229
  %213 = load float*, float** %m, align 8
  %arrayidx247 = getelementptr inbounds float, float* %213, i64 0
  %214 = load float, float* %arrayidx247, align 4
  %215 = load float*, float** %midm, align 8
  %arrayidx248 = getelementptr inbounds float, float* %215, i64 0
  store float %214, float* %arrayidx248, align 4
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.246, %for.body.229
  %216 = load float*, float** %previousw, align 8
  %arrayidx250 = getelementptr inbounds float, float* %216, i64 0
  %217 = load float, float* %arrayidx250, align 4
  %218 = load float*, float** %ogcp2, align 8
  %arrayidx251 = getelementptr inbounds float, float* %218, i64 1
  %219 = load float, float* %arrayidx251, align 4
  %add252 = fadd float %217, %219
  store float %add252, float* %mi, align 4
  store i32 0, i32* %mpi, align 4
  %220 = load float*, float** %m, align 8
  %add.ptr253 = getelementptr inbounds float, float* %220, i64 1
  store float* %add.ptr253, float** %mjpt, align 8
  %221 = load float*, float** %previousw, align 8
  store float* %221, float** %prept, align 8
  %222 = load float*, float** %currentw, align 8
  %add.ptr254 = getelementptr inbounds float, float* %222, i64 1
  store float* %add.ptr254, float** %curpt, align 8
  %223 = load i32*, i32** %mp, align 8
  %add.ptr255 = getelementptr inbounds i32, i32* %223, i64 1
  store i32* %add.ptr255, i32** %mpjpt, align 8
  %224 = load i32, i32* %lgth2, align 4
  %add256 = add nsw i32 %224, 1
  store i32 %add256, i32* %lastj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.319, %if.end.249
  %225 = load i32, i32* %j, align 4
  %226 = load i32, i32* %lastj, align 4
  %cmp258 = icmp slt i32 %225, %226
  br i1 %cmp258, label %for.body.260, label %for.end.321

for.body.260:                                     ; preds = %for.cond.257
  %227 = load float*, float** %prept, align 8
  %228 = load float, float* %227, align 4
  store float %228, float* %wm, align 4
  %229 = load float, float* %mi, align 4
  %230 = load i32, i32* %j, align 4
  %sub261 = sub nsw i32 %230, 1
  %idxprom262 = sext i32 %sub261 to i64
  %231 = load float*, float** %fgcp2, align 8
  %arrayidx263 = getelementptr inbounds float, float* %231, i64 %idxprom262
  %232 = load float, float* %arrayidx263, align 4
  %add264 = fadd float %229, %232
  store float %add264, float* %g, align 4
  %233 = load float, float* %g, align 4
  %234 = load float, float* %wm, align 4
  %cmp265 = fcmp ogt float %233, %234
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %for.body.260
  %235 = load float, float* %g, align 4
  store float %235, float* %wm, align 4
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.267, %for.body.260
  %236 = load float*, float** %prept, align 8
  %237 = load float, float* %236, align 4
  %238 = load i32, i32* %j, align 4
  %idxprom269 = sext i32 %238 to i64
  %239 = load float*, float** %ogcp2, align 8
  %arrayidx270 = getelementptr inbounds float, float* %239, i64 %idxprom269
  %240 = load float, float* %arrayidx270, align 4
  %add271 = fadd float %237, %240
  store float %add271, float* %g, align 4
  %241 = load float, float* %g, align 4
  %242 = load float, float* %mi, align 4
  %cmp272 = fcmp oge float %241, %242
  br i1 %cmp272, label %if.then.274, label %if.end.276

if.then.274:                                      ; preds = %if.end.268
  %243 = load float, float* %g, align 4
  store float %243, float* %mi, align 4
  %244 = load i32, i32* %j, align 4
  %sub275 = sub nsw i32 %244, 1
  store i32 %sub275, i32* %mpi, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.274, %if.end.268
  %245 = load float*, float** %mjpt, align 8
  %246 = load float, float* %245, align 4
  %247 = load i32, i32* %i, align 4
  %sub277 = sub nsw i32 %247, 1
  %idxprom278 = sext i32 %sub277 to i64
  %248 = load float*, float** %fgcp1, align 8
  %arrayidx279 = getelementptr inbounds float, float* %248, i64 %idxprom278
  %249 = load float, float* %arrayidx279, align 4
  %add280 = fadd float %246, %249
  store float %add280, float* %g, align 4
  %250 = load float, float* %g, align 4
  %251 = load float, float* %wm, align 4
  %cmp281 = fcmp ogt float %250, %251
  br i1 %cmp281, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %if.end.276
  %252 = load float, float* %g, align 4
  store float %252, float* %wm, align 4
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.283, %if.end.276
  %253 = load float*, float** %prept, align 8
  %254 = load float, float* %253, align 4
  %255 = load i32, i32* %i, align 4
  %idxprom285 = sext i32 %255 to i64
  %256 = load float*, float** %ogcp1, align 8
  %arrayidx286 = getelementptr inbounds float, float* %256, i64 %idxprom285
  %257 = load float, float* %arrayidx286, align 4
  %add287 = fadd float %254, %257
  store float %add287, float* %g, align 4
  %258 = load float, float* %g, align 4
  %259 = load float*, float** %mjpt, align 8
  %260 = load float, float* %259, align 4
  %cmp288 = fcmp oge float %258, %260
  br i1 %cmp288, label %if.then.290, label %if.end.292

if.then.290:                                      ; preds = %if.end.284
  %261 = load float, float* %g, align 4
  %262 = load float*, float** %mjpt, align 8
  store float %261, float* %262, align 4
  %263 = load i32, i32* %i, align 4
  %sub291 = sub nsw i32 %263, 1
  %264 = load i32*, i32** %mpjpt, align 8
  store i32 %sub291, i32* %264, align 4
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.290, %if.end.284
  %265 = load float, float* %wm, align 4
  %266 = load float*, float** %curpt, align 8
  %267 = load float, float* %266, align 4
  %add293 = fadd float %267, %265
  store float %add293, float* %266, align 4
  %268 = load float*, float** %curpt, align 8
  %269 = load float, float* %268, align 4
  %270 = load i32, i32* %j, align 4
  %idxprom294 = sext i32 %270 to i64
  %271 = load i32, i32* %i, align 4
  %idxprom295 = sext i32 %271 to i64
  %272 = load float**, float*** %WMMTX, align 8
  %arrayidx296 = getelementptr inbounds float*, float** %272, i64 %idxprom295
  %273 = load float*, float** %arrayidx296, align 8
  %arrayidx297 = getelementptr inbounds float, float* %273, i64 %idxprom294
  store float %269, float* %arrayidx297, align 4
  %274 = load float*, float** %mjpt, align 8
  %275 = load float, float* %274, align 4
  %276 = load i32, i32* %j, align 4
  %idxprom298 = sext i32 %276 to i64
  %277 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %277 to i64
  %278 = load float**, float*** %WMMTX2, align 8
  %arrayidx300 = getelementptr inbounds float*, float** %278, i64 %idxprom299
  %279 = load float*, float** %arrayidx300, align 8
  %arrayidx301 = getelementptr inbounds float, float* %279, i64 %idxprom298
  store float %275, float* %arrayidx301, align 4
  %280 = load i32, i32* %i, align 4
  %281 = load i32, i32* %imid, align 4
  %cmp302 = icmp eq i32 %280, %281
  br i1 %cmp302, label %if.then.304, label %if.end.315

if.then.304:                                      ; preds = %if.end.292
  %282 = load i32*, i32** %mpjpt, align 8
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %j, align 4
  %idxprom305 = sext i32 %284 to i64
  %285 = load i32*, i32** %jumpbackj, align 8
  %arrayidx306 = getelementptr inbounds i32, i32* %285, i64 %idxprom305
  store i32 %283, i32* %arrayidx306, align 4
  %286 = load i32, i32* %mpi, align 4
  %287 = load i32, i32* %j, align 4
  %idxprom307 = sext i32 %287 to i64
  %288 = load i32*, i32** %jumpbacki, align 8
  %arrayidx308 = getelementptr inbounds i32, i32* %288, i64 %idxprom307
  store i32 %286, i32* %arrayidx308, align 4
  %289 = load float*, float** %curpt, align 8
  %290 = load float, float* %289, align 4
  %291 = load i32, i32* %j, align 4
  %idxprom309 = sext i32 %291 to i64
  %292 = load float*, float** %midw, align 8
  %arrayidx310 = getelementptr inbounds float, float* %292, i64 %idxprom309
  store float %290, float* %arrayidx310, align 4
  %293 = load float*, float** %mjpt, align 8
  %294 = load float, float* %293, align 4
  %295 = load i32, i32* %j, align 4
  %idxprom311 = sext i32 %295 to i64
  %296 = load float*, float** %midm, align 8
  %arrayidx312 = getelementptr inbounds float, float* %296, i64 %idxprom311
  store float %294, float* %arrayidx312, align 4
  %297 = load float, float* %mi, align 4
  %298 = load i32, i32* %j, align 4
  %idxprom313 = sext i32 %298 to i64
  %299 = load float*, float** %midn, align 8
  %arrayidx314 = getelementptr inbounds float, float* %299, i64 %idxprom313
  store float %297, float* %arrayidx314, align 4
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.304, %if.end.292
  %300 = load float*, float** %mjpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %300, i32 1
  store float* %incdec.ptr, float** %mjpt, align 8
  %301 = load float*, float** %prept, align 8
  %incdec.ptr316 = getelementptr inbounds float, float* %301, i32 1
  store float* %incdec.ptr316, float** %prept, align 8
  %302 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr317 = getelementptr inbounds i32, i32* %302, i32 1
  store i32* %incdec.ptr317, i32** %mpjpt, align 8
  %303 = load float*, float** %curpt, align 8
  %incdec.ptr318 = getelementptr inbounds float, float* %303, i32 1
  store float* %incdec.ptr318, float** %curpt, align 8
  br label %for.inc.319

for.inc.319:                                      ; preds = %if.end.315
  %304 = load i32, i32* %j, align 4
  %inc320 = add nsw i32 %304, 1
  store i32 %inc320, i32* %j, align 4
  br label %for.cond.257

for.end.321:                                      ; preds = %for.cond.257
  %305 = load i32, i32* %lgth2, align 4
  %sub322 = sub nsw i32 %305, 1
  %idxprom323 = sext i32 %sub322 to i64
  %306 = load float*, float** %currentw, align 8
  %arrayidx324 = getelementptr inbounds float, float* %306, i64 %idxprom323
  %307 = load float, float* %arrayidx324, align 4
  %308 = load i32, i32* %i, align 4
  %idxprom325 = sext i32 %308 to i64
  %309 = load float*, float** %lastverticalw, align 8
  %arrayidx326 = getelementptr inbounds float, float* %309, i64 %idxprom325
  store float %307, float* %arrayidx326, align 4
  %310 = load i32, i32* %lgth2, align 4
  %sub327 = sub nsw i32 %310, 1
  %idxprom328 = sext i32 %sub327 to i64
  %311 = load float*, float** %m, align 8
  %arrayidx329 = getelementptr inbounds float, float* %311, i64 %idxprom328
  %312 = load float, float* %arrayidx329, align 4
  %313 = load i32, i32* %lgth2, align 4
  %idxprom330 = sext i32 %313 to i64
  %314 = load i32, i32* %i, align 4
  %idxprom331 = sext i32 %314 to i64
  %315 = load float**, float*** %WMMTX2, align 8
  %arrayidx332 = getelementptr inbounds float*, float** %315, i64 %idxprom331
  %316 = load float*, float** %arrayidx332, align 8
  %arrayidx333 = getelementptr inbounds float, float* %316, i64 %idxprom330
  store float %312, float* %arrayidx333, align 4
  br label %for.inc.334

for.inc.334:                                      ; preds = %for.end.321
  %317 = load i32, i32* %i, align 4
  %inc335 = add nsw i32 %317, 1
  store i32 %inc335, i32* %i, align 4
  br label %for.cond.226

for.end.336:                                      ; preds = %for.cond.226
  %318 = load float*, float** %initverticalw, align 8
  %319 = load float**, float*** %cpmx2.addr, align 8
  %320 = load i32, i32* %jst.addr, align 4
  %idx.ext337 = sext i32 %320 to i64
  %add.ptr338 = getelementptr inbounds float*, float** %319, i64 %idx.ext337
  %321 = load float**, float*** %cpmx1.addr, align 8
  %322 = load i32, i32* %ist.addr, align 4
  %idx.ext339 = sext i32 %322 to i64
  %add.ptr340 = getelementptr inbounds float*, float** %321, i64 %idx.ext339
  %323 = load i32, i32* %lgth2, align 4
  %sub341 = sub nsw i32 %323, 1
  %324 = load i32, i32* %lgth1, align 4
  %325 = load float**, float*** %floatwork, align 8
  %326 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %318, float** %add.ptr338, float** %add.ptr340, i32 %sub341, i32 %324, float** %325, i32** %326, i32 1)
  %327 = load float*, float** %currentw, align 8
  %328 = load float**, float*** %cpmx1.addr, align 8
  %329 = load i32, i32* %ist.addr, align 4
  %idx.ext342 = sext i32 %329 to i64
  %add.ptr343 = getelementptr inbounds float*, float** %328, i64 %idx.ext342
  %330 = load float**, float*** %cpmx2.addr, align 8
  %331 = load i32, i32* %jst.addr, align 4
  %idx.ext344 = sext i32 %331 to i64
  %add.ptr345 = getelementptr inbounds float*, float** %330, i64 %idx.ext344
  %332 = load i32, i32* %lgth1, align 4
  %sub346 = sub nsw i32 %332, 1
  %333 = load i32, i32* %lgth2, align 4
  %334 = load float**, float*** %floatwork, align 8
  %335 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %327, float** %add.ptr343, float** %add.ptr345, i32 %sub346, i32 %333, float** %334, i32** %335, i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond.347

for.cond.347:                                     ; preds = %for.inc.362, %for.end.336
  %336 = load i32, i32* %i, align 4
  %337 = load i32, i32* %lgth1, align 4
  %sub348 = sub nsw i32 %337, 1
  %cmp349 = icmp slt i32 %336, %sub348
  br i1 %cmp349, label %for.body.351, label %for.end.364

for.body.351:                                     ; preds = %for.cond.347
  %338 = load i32, i32* %lgth1, align 4
  %sub352 = sub nsw i32 %338, 1
  %idxprom353 = sext i32 %sub352 to i64
  %339 = load float*, float** %fgcp1, align 8
  %arrayidx354 = getelementptr inbounds float, float* %339, i64 %idxprom353
  %340 = load float, float* %arrayidx354, align 4
  %341 = load i32, i32* %i, align 4
  %add355 = add nsw i32 %341, 1
  %idxprom356 = sext i32 %add355 to i64
  %342 = load float*, float** %ogcp1, align 8
  %arrayidx357 = getelementptr inbounds float, float* %342, i64 %idxprom356
  %343 = load float, float* %arrayidx357, align 4
  %add358 = fadd float %340, %343
  %344 = load i32, i32* %i, align 4
  %idxprom359 = sext i32 %344 to i64
  %345 = load float*, float** %initverticalw, align 8
  %arrayidx360 = getelementptr inbounds float, float* %345, i64 %idxprom359
  %346 = load float, float* %arrayidx360, align 4
  %add361 = fadd float %346, %add358
  store float %add361, float* %arrayidx360, align 4
  br label %for.inc.362

for.inc.362:                                      ; preds = %for.body.351
  %347 = load i32, i32* %i, align 4
  %inc363 = add nsw i32 %347, 1
  store i32 %inc363, i32* %i, align 4
  br label %for.cond.347

for.end.364:                                      ; preds = %for.cond.347
  store i32 0, i32* %j, align 4
  br label %for.cond.365

for.cond.365:                                     ; preds = %for.inc.380, %for.end.364
  %348 = load i32, i32* %j, align 4
  %349 = load i32, i32* %lgth2, align 4
  %sub366 = sub nsw i32 %349, 1
  %cmp367 = icmp slt i32 %348, %sub366
  br i1 %cmp367, label %for.body.369, label %for.end.382

for.body.369:                                     ; preds = %for.cond.365
  %350 = load i32, i32* %lgth2, align 4
  %sub370 = sub nsw i32 %350, 1
  %idxprom371 = sext i32 %sub370 to i64
  %351 = load float*, float** %fgcp2, align 8
  %arrayidx372 = getelementptr inbounds float, float* %351, i64 %idxprom371
  %352 = load float, float* %arrayidx372, align 4
  %353 = load i32, i32* %j, align 4
  %add373 = add nsw i32 %353, 1
  %idxprom374 = sext i32 %add373 to i64
  %354 = load float*, float** %ogcp2, align 8
  %arrayidx375 = getelementptr inbounds float, float* %354, i64 %idxprom374
  %355 = load float, float* %arrayidx375, align 4
  %add376 = fadd float %352, %355
  %356 = load i32, i32* %j, align 4
  %idxprom377 = sext i32 %356 to i64
  %357 = load float*, float** %currentw, align 8
  %arrayidx378 = getelementptr inbounds float, float* %357, i64 %idxprom377
  %358 = load float, float* %arrayidx378, align 4
  %add379 = fadd float %358, %add376
  store float %add379, float* %arrayidx378, align 4
  br label %for.inc.380

for.inc.380:                                      ; preds = %for.body.369
  %359 = load i32, i32* %j, align 4
  %inc381 = add nsw i32 %359, 1
  store i32 %inc381, i32* %j, align 4
  br label %for.cond.365

for.end.382:                                      ; preds = %for.cond.365
  store i32 0, i32* %i, align 4
  br label %for.cond.383

for.cond.383:                                     ; preds = %for.inc.401, %for.end.382
  %360 = load i32, i32* %i, align 4
  %361 = load i32, i32* %lgth1, align 4
  %sub384 = sub nsw i32 %361, 1
  %cmp385 = icmp slt i32 %360, %sub384
  br i1 %cmp385, label %for.body.387, label %for.end.403

for.body.387:                                     ; preds = %for.cond.383
  %362 = load i32, i32* %lgth1, align 4
  %sub388 = sub nsw i32 %362, 1
  %idxprom389 = sext i32 %sub388 to i64
  %363 = load float*, float** %fgcp1, align 8
  %arrayidx390 = getelementptr inbounds float, float* %363, i64 %idxprom389
  %364 = load float, float* %arrayidx390, align 4
  %365 = load i32, i32* %i, align 4
  %add391 = add nsw i32 %365, 1
  %idxprom392 = sext i32 %add391 to i64
  %366 = load float*, float** %ogcp1, align 8
  %arrayidx393 = getelementptr inbounds float, float* %366, i64 %idxprom392
  %367 = load float, float* %arrayidx393, align 4
  %add394 = fadd float %364, %367
  %368 = load i32, i32* %lgth2, align 4
  %sub395 = sub nsw i32 %368, 1
  %idxprom396 = sext i32 %sub395 to i64
  %369 = load i32, i32* %i, align 4
  %idxprom397 = sext i32 %369 to i64
  %370 = load float**, float*** %WMMTX, align 8
  %arrayidx398 = getelementptr inbounds float*, float** %370, i64 %idxprom397
  %371 = load float*, float** %arrayidx398, align 8
  %arrayidx399 = getelementptr inbounds float, float* %371, i64 %idxprom396
  %372 = load float, float* %arrayidx399, align 4
  %add400 = fadd float %372, %add394
  store float %add400, float* %arrayidx399, align 4
  br label %for.inc.401

for.inc.401:                                      ; preds = %for.body.387
  %373 = load i32, i32* %i, align 4
  %inc402 = add nsw i32 %373, 1
  store i32 %inc402, i32* %i, align 4
  br label %for.cond.383

for.end.403:                                      ; preds = %for.cond.383
  store i32 0, i32* %j, align 4
  br label %for.cond.404

for.cond.404:                                     ; preds = %for.inc.422, %for.end.403
  %374 = load i32, i32* %j, align 4
  %375 = load i32, i32* %lgth2, align 4
  %sub405 = sub nsw i32 %375, 1
  %cmp406 = icmp slt i32 %374, %sub405
  br i1 %cmp406, label %for.body.408, label %for.end.424

for.body.408:                                     ; preds = %for.cond.404
  %376 = load i32, i32* %lgth2, align 4
  %sub409 = sub nsw i32 %376, 1
  %idxprom410 = sext i32 %sub409 to i64
  %377 = load float*, float** %fgcp2, align 8
  %arrayidx411 = getelementptr inbounds float, float* %377, i64 %idxprom410
  %378 = load float, float* %arrayidx411, align 4
  %379 = load i32, i32* %j, align 4
  %add412 = add nsw i32 %379, 1
  %idxprom413 = sext i32 %add412 to i64
  %380 = load float*, float** %ogcp2, align 8
  %arrayidx414 = getelementptr inbounds float, float* %380, i64 %idxprom413
  %381 = load float, float* %arrayidx414, align 4
  %add415 = fadd float %378, %381
  %382 = load i32, i32* %j, align 4
  %idxprom416 = sext i32 %382 to i64
  %383 = load i32, i32* %lgth1, align 4
  %sub417 = sub nsw i32 %383, 1
  %idxprom418 = sext i32 %sub417 to i64
  %384 = load float**, float*** %WMMTX, align 8
  %arrayidx419 = getelementptr inbounds float*, float** %384, i64 %idxprom418
  %385 = load float*, float** %arrayidx419, align 8
  %arrayidx420 = getelementptr inbounds float, float* %385, i64 %idxprom416
  %386 = load float, float* %arrayidx420, align 4
  %add421 = fadd float %386, %add415
  store float %add421, float* %arrayidx420, align 4
  br label %for.inc.422

for.inc.422:                                      ; preds = %for.body.408
  %387 = load i32, i32* %j, align 4
  %inc423 = add nsw i32 %387, 1
  store i32 %inc423, i32* %j, align 4
  br label %for.cond.404

for.end.424:                                      ; preds = %for.cond.404
  %388 = load i32, i32* %lgth2, align 4
  %sub425 = sub nsw i32 %388, 1
  store i32 %sub425, i32* %j, align 4
  br label %for.cond.426

for.cond.426:                                     ; preds = %for.inc.442, %for.end.424
  %389 = load i32, i32* %j, align 4
  %cmp427 = icmp sgt i32 %389, 0
  br i1 %cmp427, label %for.body.429, label %for.end.443

for.body.429:                                     ; preds = %for.cond.426
  %390 = load i32, i32* %j, align 4
  %idxprom430 = sext i32 %390 to i64
  %391 = load float*, float** %currentw, align 8
  %arrayidx431 = getelementptr inbounds float, float* %391, i64 %idxprom430
  %392 = load float, float* %arrayidx431, align 4
  %393 = load i32, i32* %lgth2, align 4
  %sub432 = sub nsw i32 %393, 2
  %idxprom433 = sext i32 %sub432 to i64
  %394 = load float*, float** %fgcp2, align 8
  %arrayidx434 = getelementptr inbounds float, float* %394, i64 %idxprom433
  %395 = load float, float* %arrayidx434, align 4
  %add435 = fadd float %392, %395
  %396 = load i32, i32* %j, align 4
  %sub436 = sub nsw i32 %396, 1
  %idxprom437 = sext i32 %sub436 to i64
  %397 = load float*, float** %m, align 8
  %arrayidx438 = getelementptr inbounds float, float* %397, i64 %idxprom437
  store float %add435, float* %arrayidx438, align 4
  %398 = load i32, i32* %lgth1, align 4
  %sub439 = sub nsw i32 %398, 1
  %399 = load i32, i32* %j, align 4
  %idxprom440 = sext i32 %399 to i64
  %400 = load i32*, i32** %mp, align 8
  %arrayidx441 = getelementptr inbounds i32, i32* %400, i64 %idxprom440
  store i32 %sub439, i32* %arrayidx441, align 4
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.body.429
  %401 = load i32, i32* %j, align 4
  %dec = add nsw i32 %401, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.426

for.end.443:                                      ; preds = %for.cond.426
  store float -1.000000e+07, float* %firstm, align 4
  %402 = load i32, i32* %lgth1, align 4
  %sub444 = sub nsw i32 %402, 1
  store i32 %sub444, i32* %firstmp, align 4
  %403 = load i32, i32* %lgth1, align 4
  %sub445 = sub nsw i32 %403, 2
  store i32 %sub445, i32* %i, align 4
  br label %for.cond.446

for.cond.446:                                     ; preds = %for.inc.675, %for.end.443
  %404 = load i32, i32* %i, align 4
  %cmp447 = icmp sgt i32 %404, -1
  br i1 %cmp447, label %for.body.449, label %for.end.677

for.body.449:                                     ; preds = %for.cond.446
  %405 = load float*, float** %previousw, align 8
  store float* %405, float** %wtmp, align 8
  %406 = load float*, float** %currentw, align 8
  store float* %406, float** %previousw, align 8
  %407 = load float*, float** %wtmp, align 8
  store float* %407, float** %currentw, align 8
  %408 = load i32, i32* %i, align 4
  %add450 = add nsw i32 %408, 1
  %idxprom451 = sext i32 %add450 to i64
  %409 = load float*, float** %initverticalw, align 8
  %arrayidx452 = getelementptr inbounds float, float* %409, i64 %idxprom451
  %410 = load float, float* %arrayidx452, align 4
  %411 = load i32, i32* %lgth2, align 4
  %sub453 = sub nsw i32 %411, 1
  %idxprom454 = sext i32 %sub453 to i64
  %412 = load float*, float** %previousw, align 8
  %arrayidx455 = getelementptr inbounds float, float* %412, i64 %idxprom454
  store float %410, float* %arrayidx455, align 4
  %413 = load float*, float** %currentw, align 8
  %414 = load float**, float*** %cpmx1.addr, align 8
  %415 = load i32, i32* %ist.addr, align 4
  %idx.ext456 = sext i32 %415 to i64
  %add.ptr457 = getelementptr inbounds float*, float** %414, i64 %idx.ext456
  %416 = load float**, float*** %cpmx2.addr, align 8
  %417 = load i32, i32* %jst.addr, align 4
  %idx.ext458 = sext i32 %417 to i64
  %add.ptr459 = getelementptr inbounds float*, float** %416, i64 %idx.ext458
  %418 = load i32, i32* %i, align 4
  %419 = load i32, i32* %lgth2, align 4
  %420 = load float**, float*** %floatwork, align 8
  %421 = load i32**, i32*** %intwork, align 8
  call void @match_calc(float* %413, float** %add.ptr457, float** %add.ptr459, i32 %418, i32 %419, float** %420, i32** %421, i32 0)
  %422 = load i32, i32* %i, align 4
  %idxprom460 = sext i32 %422 to i64
  %423 = load float*, float** %initverticalw, align 8
  %arrayidx461 = getelementptr inbounds float, float* %423, i64 %idxprom460
  %424 = load float, float* %arrayidx461, align 4
  %425 = load i32, i32* %lgth2, align 4
  %sub462 = sub nsw i32 %425, 1
  %idxprom463 = sext i32 %sub462 to i64
  %426 = load float*, float** %currentw, align 8
  %arrayidx464 = getelementptr inbounds float, float* %426, i64 %idxprom463
  store float %424, float* %arrayidx464, align 4
  %427 = load i32, i32* %lgth2, align 4
  %sub465 = sub nsw i32 %427, 1
  %idxprom466 = sext i32 %sub465 to i64
  %428 = load float*, float** %previousw, align 8
  %arrayidx467 = getelementptr inbounds float, float* %428, i64 %idxprom466
  %429 = load float, float* %arrayidx467, align 4
  %430 = load i32, i32* %lgth2, align 4
  %sub468 = sub nsw i32 %430, 2
  %idxprom469 = sext i32 %sub468 to i64
  %431 = load float*, float** %fgcp2, align 8
  %arrayidx470 = getelementptr inbounds float, float* %431, i64 %idxprom469
  %432 = load float, float* %arrayidx470, align 4
  %add471 = fadd float %429, %432
  store float %add471, float* %mi, align 4
  %433 = load i32, i32* %lgth2, align 4
  %sub472 = sub nsw i32 %433, 1
  store i32 %sub472, i32* %mpi, align 4
  %434 = load float*, float** %m, align 8
  %435 = load i32, i32* %lgth2, align 4
  %idx.ext473 = sext i32 %435 to i64
  %add.ptr474 = getelementptr inbounds float, float* %434, i64 %idx.ext473
  %add.ptr475 = getelementptr inbounds float, float* %add.ptr474, i64 -2
  store float* %add.ptr475, float** %mjpt, align 8
  %436 = load float*, float** %previousw, align 8
  %437 = load i32, i32* %lgth2, align 4
  %idx.ext476 = sext i32 %437 to i64
  %add.ptr477 = getelementptr inbounds float, float* %436, i64 %idx.ext476
  %add.ptr478 = getelementptr inbounds float, float* %add.ptr477, i64 -1
  store float* %add.ptr478, float** %prept, align 8
  %438 = load float*, float** %currentw, align 8
  %439 = load i32, i32* %lgth2, align 4
  %idx.ext479 = sext i32 %439 to i64
  %add.ptr480 = getelementptr inbounds float, float* %438, i64 %idx.ext479
  %add.ptr481 = getelementptr inbounds float, float* %add.ptr480, i64 -2
  store float* %add.ptr481, float** %curpt, align 8
  %440 = load i32*, i32** %mp, align 8
  %441 = load i32, i32* %lgth2, align 4
  %idx.ext482 = sext i32 %441 to i64
  %add.ptr483 = getelementptr inbounds i32, i32* %440, i64 %idx.ext482
  %add.ptr484 = getelementptr inbounds i32, i32* %add.ptr483, i64 -2
  store i32* %add.ptr484, i32** %mpjpt, align 8
  %442 = load i32, i32* %lgth2, align 4
  %sub485 = sub nsw i32 %442, 2
  store i32 %sub485, i32* %j, align 4
  br label %for.cond.486

for.cond.486:                                     ; preds = %for.inc.572, %for.body.449
  %443 = load i32, i32* %j, align 4
  %cmp487 = icmp sgt i32 %443, -1
  br i1 %cmp487, label %for.body.489, label %for.end.574

for.body.489:                                     ; preds = %for.cond.486
  %444 = load float*, float** %prept, align 8
  %445 = load float, float* %444, align 4
  store float %445, float* %wm, align 4
  %446 = load i32, i32* %i, align 4
  %add490 = add nsw i32 %446, 1
  store i32 %add490, i32* %ijpi, align 4
  %447 = load i32, i32* %j, align 4
  %add491 = add nsw i32 %447, 1
  store i32 %add491, i32* %ijpj, align 4
  %448 = load float, float* %mi, align 4
  %449 = load i32, i32* %j, align 4
  %add492 = add nsw i32 %449, 1
  %idxprom493 = sext i32 %add492 to i64
  %450 = load float*, float** %ogcp2, align 8
  %arrayidx494 = getelementptr inbounds float, float* %450, i64 %idxprom493
  %451 = load float, float* %arrayidx494, align 4
  %add495 = fadd float %448, %451
  store float %add495, float* %g, align 4
  %452 = load float, float* %g, align 4
  %453 = load float, float* %wm, align 4
  %cmp496 = fcmp ogt float %452, %453
  br i1 %cmp496, label %if.then.498, label %if.end.500

if.then.498:                                      ; preds = %for.body.489
  %454 = load float, float* %g, align 4
  store float %454, float* %wm, align 4
  %455 = load i32, i32* %mpi, align 4
  store i32 %455, i32* %ijpj, align 4
  %456 = load i32, i32* %i, align 4
  %add499 = add nsw i32 %456, 1
  store i32 %add499, i32* %ijpi, align 4
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.498, %for.body.489
  %457 = load float*, float** %prept, align 8
  %458 = load float, float* %457, align 4
  %459 = load i32, i32* %j, align 4
  %idxprom501 = sext i32 %459 to i64
  %460 = load float*, float** %fgcp2, align 8
  %arrayidx502 = getelementptr inbounds float, float* %460, i64 %idxprom501
  %461 = load float, float* %arrayidx502, align 4
  %add503 = fadd float %458, %461
  store float %add503, float* %g, align 4
  %462 = load float, float* %g, align 4
  %463 = load float, float* %mi, align 4
  %cmp504 = fcmp oge float %462, %463
  br i1 %cmp504, label %if.then.506, label %if.end.508

if.then.506:                                      ; preds = %if.end.500
  %464 = load float, float* %g, align 4
  store float %464, float* %mi, align 4
  %465 = load i32, i32* %j, align 4
  %add507 = add nsw i32 %465, 1
  store i32 %add507, i32* %mpi, align 4
  br label %if.end.508

if.end.508:                                       ; preds = %if.then.506, %if.end.500
  %466 = load float*, float** %mjpt, align 8
  %467 = load float, float* %466, align 4
  %468 = load i32, i32* %i, align 4
  %add509 = add nsw i32 %468, 1
  %idxprom510 = sext i32 %add509 to i64
  %469 = load float*, float** %ogcp1, align 8
  %arrayidx511 = getelementptr inbounds float, float* %469, i64 %idxprom510
  %470 = load float, float* %arrayidx511, align 4
  %add512 = fadd float %467, %470
  store float %add512, float* %g, align 4
  %471 = load float, float* %g, align 4
  %472 = load float, float* %wm, align 4
  %cmp513 = fcmp ogt float %471, %472
  br i1 %cmp513, label %if.then.515, label %if.end.517

if.then.515:                                      ; preds = %if.end.508
  %473 = load float, float* %g, align 4
  store float %473, float* %wm, align 4
  %474 = load i32*, i32** %mpjpt, align 8
  %475 = load i32, i32* %474, align 4
  store i32 %475, i32* %ijpi, align 4
  %476 = load i32, i32* %j, align 4
  %add516 = add nsw i32 %476, 1
  store i32 %add516, i32* %ijpj, align 4
  br label %if.end.517

if.end.517:                                       ; preds = %if.then.515, %if.end.508
  %477 = load float*, float** %prept, align 8
  %478 = load float, float* %477, align 4
  %479 = load i32, i32* %i, align 4
  %idxprom518 = sext i32 %479 to i64
  %480 = load float*, float** %fgcp1, align 8
  %arrayidx519 = getelementptr inbounds float, float* %480, i64 %idxprom518
  %481 = load float, float* %arrayidx519, align 4
  %add520 = fadd float %478, %481
  store float %add520, float* %g, align 4
  %482 = load float, float* %g, align 4
  %483 = load float*, float** %mjpt, align 8
  %484 = load float, float* %483, align 4
  %cmp521 = fcmp oge float %482, %484
  br i1 %cmp521, label %if.then.523, label %if.end.525

if.then.523:                                      ; preds = %if.end.517
  %485 = load float, float* %g, align 4
  %486 = load float*, float** %mjpt, align 8
  store float %485, float* %486, align 4
  %487 = load i32, i32* %i, align 4
  %add524 = add nsw i32 %487, 1
  %488 = load i32*, i32** %mpjpt, align 8
  store i32 %add524, i32* %488, align 4
  br label %if.end.525

if.end.525:                                       ; preds = %if.then.523, %if.end.517
  %489 = load i32, i32* %i, align 4
  %490 = load i32, i32* %jumpi, align 4
  %cmp526 = icmp eq i32 %489, %490
  br i1 %cmp526, label %if.then.532, label %lor.lhs.false.528

lor.lhs.false.528:                                ; preds = %if.end.525
  %491 = load i32, i32* %i, align 4
  %492 = load i32, i32* %imid, align 4
  %sub529 = sub nsw i32 %492, 1
  %cmp530 = icmp eq i32 %491, %sub529
  br i1 %cmp530, label %if.then.532, label %if.end.537

if.then.532:                                      ; preds = %lor.lhs.false.528, %if.end.525
  %493 = load i32, i32* %ijpi, align 4
  %494 = load i32, i32* %j, align 4
  %idxprom533 = sext i32 %494 to i64
  %495 = load i32*, i32** %jumpforwi, align 8
  %arrayidx534 = getelementptr inbounds i32, i32* %495, i64 %idxprom533
  store i32 %493, i32* %arrayidx534, align 4
  %496 = load i32, i32* %ijpj, align 4
  %497 = load i32, i32* %j, align 4
  %idxprom535 = sext i32 %497 to i64
  %498 = load i32*, i32** %jumpforwj, align 8
  %arrayidx536 = getelementptr inbounds i32, i32* %498, i64 %idxprom535
  store i32 %496, i32* %arrayidx536, align 4
  br label %if.end.537

if.end.537:                                       ; preds = %if.then.532, %lor.lhs.false.528
  %499 = load i32, i32* %i, align 4
  %500 = load i32, i32* %imid, align 4
  %cmp538 = icmp eq i32 %499, %500
  br i1 %cmp538, label %if.then.540, label %if.end.548

if.then.540:                                      ; preds = %if.end.537
  %501 = load float, float* %wm, align 4
  %502 = load i32, i32* %j, align 4
  %idxprom541 = sext i32 %502 to i64
  %503 = load float*, float** %midw, align 8
  %arrayidx542 = getelementptr inbounds float, float* %503, i64 %idxprom541
  %504 = load float, float* %arrayidx542, align 4
  %add543 = fadd float %504, %501
  store float %add543, float* %arrayidx542, align 4
  %505 = load float*, float** %mjpt, align 8
  %506 = load float, float* %505, align 4
  %507 = load i32, i32* %j, align 4
  %add544 = add nsw i32 %507, 1
  %idxprom545 = sext i32 %add544 to i64
  %508 = load float*, float** %midm, align 8
  %arrayidx546 = getelementptr inbounds float, float* %508, i64 %idxprom545
  %509 = load float, float* %arrayidx546, align 4
  %add547 = fadd float %509, %506
  store float %add547, float* %arrayidx546, align 4
  br label %if.end.548

if.end.548:                                       ; preds = %if.then.540, %if.end.537
  %510 = load i32, i32* %i, align 4
  %511 = load i32, i32* %imid, align 4
  %sub549 = sub nsw i32 %511, 1
  %cmp550 = icmp eq i32 %510, %sub549
  br i1 %cmp550, label %if.then.552, label %if.end.556

if.then.552:                                      ; preds = %if.end.548
  %512 = load float, float* %mi, align 4
  %513 = load i32, i32* %j, align 4
  %idxprom553 = sext i32 %513 to i64
  %514 = load float*, float** %midn, align 8
  %arrayidx554 = getelementptr inbounds float, float* %514, i64 %idxprom553
  %515 = load float, float* %arrayidx554, align 4
  %add555 = fadd float %515, %512
  store float %add555, float* %arrayidx554, align 4
  br label %if.end.556

if.end.556:                                       ; preds = %if.then.552, %if.end.548
  %516 = load float, float* %wm, align 4
  %517 = load i32, i32* %j, align 4
  %idxprom557 = sext i32 %517 to i64
  %518 = load i32, i32* %i, align 4
  %idxprom558 = sext i32 %518 to i64
  %519 = load float**, float*** %WMMTX, align 8
  %arrayidx559 = getelementptr inbounds float*, float** %519, i64 %idxprom558
  %520 = load float*, float** %arrayidx559, align 8
  %arrayidx560 = getelementptr inbounds float, float* %520, i64 %idxprom557
  %521 = load float, float* %arrayidx560, align 4
  %add561 = fadd float %521, %516
  store float %add561, float* %arrayidx560, align 4
  %522 = load float*, float** %curpt, align 8
  %523 = load float, float* %522, align 4
  %524 = load i32, i32* %j, align 4
  %idxprom562 = sext i32 %524 to i64
  %525 = load i32, i32* %i, align 4
  %idxprom563 = sext i32 %525 to i64
  %526 = load float**, float*** %WMMTX2, align 8
  %arrayidx564 = getelementptr inbounds float*, float** %526, i64 %idxprom563
  %527 = load float*, float** %arrayidx564, align 8
  %arrayidx565 = getelementptr inbounds float, float* %527, i64 %idxprom562
  %528 = load float, float* %arrayidx565, align 4
  %add566 = fadd float %528, %523
  store float %add566, float* %arrayidx565, align 4
  %529 = load float, float* %wm, align 4
  %530 = load float*, float** %curpt, align 8
  %531 = load float, float* %530, align 4
  %add567 = fadd float %531, %529
  store float %add567, float* %530, align 4
  %532 = load float*, float** %mjpt, align 8
  %incdec.ptr568 = getelementptr inbounds float, float* %532, i32 -1
  store float* %incdec.ptr568, float** %mjpt, align 8
  %533 = load float*, float** %prept, align 8
  %incdec.ptr569 = getelementptr inbounds float, float* %533, i32 -1
  store float* %incdec.ptr569, float** %prept, align 8
  %534 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr570 = getelementptr inbounds i32, i32* %534, i32 -1
  store i32* %incdec.ptr570, i32** %mpjpt, align 8
  %535 = load float*, float** %curpt, align 8
  %incdec.ptr571 = getelementptr inbounds float, float* %535, i32 -1
  store float* %incdec.ptr571, float** %curpt, align 8
  br label %for.inc.572

for.inc.572:                                      ; preds = %if.end.556
  %536 = load i32, i32* %j, align 4
  %dec573 = add nsw i32 %536, -1
  store i32 %dec573, i32* %j, align 4
  br label %for.cond.486

for.end.574:                                      ; preds = %for.cond.486
  %537 = load float*, float** %prept, align 8
  %538 = load float, float* %537, align 4
  %539 = load i32, i32* %i, align 4
  %idxprom575 = sext i32 %539 to i64
  %540 = load float*, float** %fgcp1, align 8
  %arrayidx576 = getelementptr inbounds float, float* %540, i64 %idxprom575
  %541 = load float, float* %arrayidx576, align 4
  %add577 = fadd float %538, %541
  store float %add577, float* %g, align 4
  %542 = load float, float* %firstm, align 4
  %543 = load float, float* %g, align 4
  %cmp578 = fcmp olt float %542, %543
  br i1 %cmp578, label %if.then.580, label %if.end.582

if.then.580:                                      ; preds = %for.end.574
  %544 = load float, float* %g, align 4
  store float %544, float* %firstm, align 4
  %545 = load i32, i32* %i, align 4
  %add581 = add nsw i32 %545, 1
  store i32 %add581, i32* %firstmp, align 4
  br label %if.end.582

if.end.582:                                       ; preds = %if.then.580, %for.end.574
  %546 = load i32, i32* %i, align 4
  %547 = load i32, i32* %imid, align 4
  %cmp583 = icmp eq i32 %546, %547
  br i1 %cmp583, label %if.then.585, label %if.end.590

if.then.585:                                      ; preds = %if.end.582
  %548 = load float, float* %firstm, align 4
  %549 = load i32, i32* %j, align 4
  %add586 = add nsw i32 %549, 1
  %idxprom587 = sext i32 %add586 to i64
  %550 = load float*, float** %midm, align 8
  %arrayidx588 = getelementptr inbounds float, float* %550, i64 %idxprom587
  %551 = load float, float* %arrayidx588, align 4
  %add589 = fadd float %551, %548
  store float %add589, float* %arrayidx588, align 4
  br label %if.end.590

if.end.590:                                       ; preds = %if.then.585, %if.end.582
  %552 = load i32, i32* %i, align 4
  %553 = load i32, i32* %imid, align 4
  %sub591 = sub nsw i32 %553, 1
  %cmp592 = icmp eq i32 %552, %sub591
  br i1 %cmp592, label %if.then.594, label %if.end.654

if.then.594:                                      ; preds = %if.end.590
  %554 = load float*, float** %midw, align 8
  %arrayidx595 = getelementptr inbounds float, float* %554, i64 1
  %555 = load float, float* %arrayidx595, align 4
  store float %555, float* %maxwm, align 4
  store i32 0, i32* %jmid, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond.596

for.cond.596:                                     ; preds = %for.inc.607, %if.then.594
  %556 = load i32, i32* %j, align 4
  %557 = load i32, i32* %lgth2, align 4
  %sub597 = sub nsw i32 %557, 1
  %cmp598 = icmp slt i32 %556, %sub597
  br i1 %cmp598, label %for.body.600, label %for.end.609

for.body.600:                                     ; preds = %for.cond.596
  %558 = load i32, i32* %j, align 4
  %idxprom601 = sext i32 %558 to i64
  %559 = load float*, float** %midw, align 8
  %arrayidx602 = getelementptr inbounds float, float* %559, i64 %idxprom601
  %560 = load float, float* %arrayidx602, align 4
  store float %560, float* %wm, align 4
  %561 = load float, float* %wm, align 4
  %562 = load float, float* %maxwm, align 4
  %cmp603 = fcmp ogt float %561, %562
  br i1 %cmp603, label %if.then.605, label %if.end.606

if.then.605:                                      ; preds = %for.body.600
  %563 = load i32, i32* %j, align 4
  store i32 %563, i32* %jmid, align 4
  %564 = load float, float* %wm, align 4
  store float %564, float* %maxwm, align 4
  br label %if.end.606

if.end.606:                                       ; preds = %if.then.605, %for.body.600
  br label %for.inc.607

for.inc.607:                                      ; preds = %if.end.606
  %565 = load i32, i32* %j, align 4
  %inc608 = add nsw i32 %565, 1
  store i32 %inc608, i32* %j, align 4
  br label %for.cond.596

for.end.609:                                      ; preds = %for.cond.596
  store i32 0, i32* %j, align 4
  br label %for.cond.610

for.cond.610:                                     ; preds = %for.inc.621, %for.end.609
  %566 = load i32, i32* %j, align 4
  %567 = load i32, i32* %lgth2, align 4
  %add611 = add nsw i32 %567, 1
  %cmp612 = icmp slt i32 %566, %add611
  br i1 %cmp612, label %for.body.614, label %for.end.623

for.body.614:                                     ; preds = %for.cond.610
  %568 = load i32, i32* %j, align 4
  %idxprom615 = sext i32 %568 to i64
  %569 = load float*, float** %midm, align 8
  %arrayidx616 = getelementptr inbounds float, float* %569, i64 %idxprom615
  %570 = load float, float* %arrayidx616, align 4
  store float %570, float* %wm, align 4
  %571 = load float, float* %wm, align 4
  %572 = load float, float* %maxwm, align 4
  %cmp617 = fcmp ogt float %571, %572
  br i1 %cmp617, label %if.then.619, label %if.end.620

if.then.619:                                      ; preds = %for.body.614
  %573 = load i32, i32* %j, align 4
  store i32 %573, i32* %jmid, align 4
  %574 = load float, float* %wm, align 4
  store float %574, float* %maxwm, align 4
  br label %if.end.620

if.end.620:                                       ; preds = %if.then.619, %for.body.614
  br label %for.inc.621

for.inc.621:                                      ; preds = %if.end.620
  %575 = load i32, i32* %j, align 4
  %inc622 = add nsw i32 %575, 1
  store i32 %inc622, i32* %j, align 4
  br label %for.cond.610

for.end.623:                                      ; preds = %for.cond.610
  %576 = load i32, i32* %jmid, align 4
  %idxprom624 = sext i32 %576 to i64
  %577 = load float*, float** %midw, align 8
  %arrayidx625 = getelementptr inbounds float, float* %577, i64 %idxprom624
  %578 = load float, float* %arrayidx625, align 4
  store float %578, float* %wm, align 4
  %579 = load i32, i32* %imid, align 4
  %sub626 = sub nsw i32 %579, 1
  store i32 %sub626, i32* %jumpi, align 4
  %580 = load i32, i32* %jmid, align 4
  %sub627 = sub nsw i32 %580, 1
  store i32 %sub627, i32* %jumpj, align 4
  %581 = load i32, i32* %jmid, align 4
  %cmp628 = icmp sgt i32 %581, 0
  br i1 %cmp628, label %land.lhs.true, label %if.end.642

land.lhs.true:                                    ; preds = %for.end.623
  %582 = load i32, i32* %jmid, align 4
  %sub630 = sub nsw i32 %582, 1
  %idxprom631 = sext i32 %sub630 to i64
  %583 = load float*, float** %midn, align 8
  %arrayidx632 = getelementptr inbounds float, float* %583, i64 %idxprom631
  %584 = load float, float* %arrayidx632, align 4
  %585 = load float, float* %wm, align 4
  %cmp633 = fcmp ogt float %584, %585
  br i1 %cmp633, label %if.then.635, label %if.end.642

if.then.635:                                      ; preds = %land.lhs.true
  %586 = load i32, i32* %imid, align 4
  %sub636 = sub nsw i32 %586, 1
  store i32 %sub636, i32* %jumpi, align 4
  %587 = load i32, i32* %jmid, align 4
  %idxprom637 = sext i32 %587 to i64
  %588 = load i32*, i32** %jumpbacki, align 8
  %arrayidx638 = getelementptr inbounds i32, i32* %588, i64 %idxprom637
  %589 = load i32, i32* %arrayidx638, align 4
  store i32 %589, i32* %jumpj, align 4
  %590 = load i32, i32* %jmid, align 4
  %sub639 = sub nsw i32 %590, 1
  %idxprom640 = sext i32 %sub639 to i64
  %591 = load float*, float** %midn, align 8
  %arrayidx641 = getelementptr inbounds float, float* %591, i64 %idxprom640
  %592 = load float, float* %arrayidx641, align 4
  store float %592, float* %wm, align 4
  br label %if.end.642

if.end.642:                                       ; preds = %if.then.635, %land.lhs.true, %for.end.623
  %593 = load i32, i32* %jmid, align 4
  %idxprom643 = sext i32 %593 to i64
  %594 = load float*, float** %midm, align 8
  %arrayidx644 = getelementptr inbounds float, float* %594, i64 %idxprom643
  %595 = load float, float* %arrayidx644, align 4
  %596 = load float, float* %wm, align 4
  %cmp645 = fcmp ogt float %595, %596
  br i1 %cmp645, label %if.then.647, label %if.end.653

if.then.647:                                      ; preds = %if.end.642
  %597 = load i32, i32* %jmid, align 4
  %idxprom648 = sext i32 %597 to i64
  %598 = load i32*, i32** %jumpbackj, align 8
  %arrayidx649 = getelementptr inbounds i32, i32* %598, i64 %idxprom648
  %599 = load i32, i32* %arrayidx649, align 4
  store i32 %599, i32* %jumpi, align 4
  %600 = load i32, i32* %jmid, align 4
  %sub650 = sub nsw i32 %600, 1
  store i32 %sub650, i32* %jumpj, align 4
  %601 = load i32, i32* %jmid, align 4
  %idxprom651 = sext i32 %601 to i64
  %602 = load float*, float** %midm, align 8
  %arrayidx652 = getelementptr inbounds float, float* %602, i64 %idxprom651
  %603 = load float, float* %arrayidx652, align 4
  store float %603, float* %wm, align 4
  br label %if.end.653

if.end.653:                                       ; preds = %if.then.647, %if.end.642
  br label %if.end.654

if.end.654:                                       ; preds = %if.end.653, %if.end.590
  %604 = load i32, i32* %i, align 4
  %605 = load i32, i32* %jumpi, align 4
  %cmp655 = icmp eq i32 %604, %605
  br i1 %cmp655, label %if.then.657, label %if.end.674

if.then.657:                                      ; preds = %if.end.654
  %606 = load i32, i32* %jmid, align 4
  %cmp658 = icmp eq i32 %606, 0
  br i1 %cmp658, label %if.then.660, label %if.else

if.then.660:                                      ; preds = %if.then.657
  store i32 0, i32* %jumpj, align 4
  store i32 1, i32* %jmid, align 4
  %607 = load i32, i32* %firstmp, align 4
  %sub661 = sub nsw i32 %607, 1
  store i32 %sub661, i32* %jumpi, align 4
  %608 = load i32, i32* %firstmp, align 4
  store i32 %608, i32* %imid, align 4
  br label %if.end.673

if.else:                                          ; preds = %if.then.657
  %609 = load i32, i32* %jmid, align 4
  %610 = load i32, i32* %lgth2, align 4
  %cmp662 = icmp sge i32 %609, %610
  br i1 %cmp662, label %if.then.664, label %if.else.667

if.then.664:                                      ; preds = %if.else
  %611 = load i32, i32* %imid, align 4
  %sub665 = sub nsw i32 %611, 1
  store i32 %sub665, i32* %jumpi, align 4
  %612 = load i32, i32* %lgth2, align 4
  store i32 %612, i32* %jmid, align 4
  %613 = load i32, i32* %lgth2, align 4
  %sub666 = sub nsw i32 %613, 1
  store i32 %sub666, i32* %jumpj, align 4
  br label %if.end.672

if.else.667:                                      ; preds = %if.else
  %614 = load i32, i32* %jumpj, align 4
  %idxprom668 = sext i32 %614 to i64
  %615 = load i32*, i32** %jumpforwi, align 8
  %arrayidx669 = getelementptr inbounds i32, i32* %615, i64 %idxprom668
  %616 = load i32, i32* %arrayidx669, align 4
  store i32 %616, i32* %imid, align 4
  %617 = load i32, i32* %jumpj, align 4
  %idxprom670 = sext i32 %617 to i64
  %618 = load i32*, i32** %jumpforwj, align 8
  %arrayidx671 = getelementptr inbounds i32, i32* %618, i64 %idxprom670
  %619 = load i32, i32* %arrayidx671, align 4
  store i32 %619, i32* %jmid, align 4
  br label %if.end.672

if.end.672:                                       ; preds = %if.else.667, %if.then.664
  br label %if.end.673

if.end.673:                                       ; preds = %if.end.672, %if.then.660
  br label %if.end.674

if.end.674:                                       ; preds = %if.end.673, %if.end.654
  br label %for.inc.675

for.inc.675:                                      ; preds = %if.end.674
  %620 = load i32, i32* %i, align 4
  %dec676 = add nsw i32 %620, -1
  store i32 %dec676, i32* %i, align 4
  br label %for.cond.446

for.end.677:                                      ; preds = %for.cond.446
  store i32 0, i32* %i, align 4
  br label %for.cond.678

for.cond.678:                                     ; preds = %for.inc.697, %for.end.677
  %621 = load i32, i32* %i, align 4
  %622 = load i32, i32* %lgth1, align 4
  %cmp679 = icmp slt i32 %621, %622
  br i1 %cmp679, label %for.body.681, label %for.end.699

for.body.681:                                     ; preds = %for.cond.678
  store i32 0, i32* %j, align 4
  br label %for.cond.682

for.cond.682:                                     ; preds = %for.inc.694, %for.body.681
  %623 = load i32, i32* %j, align 4
  %624 = load i32, i32* %lgth2, align 4
  %cmp683 = icmp slt i32 %623, %624
  br i1 %cmp683, label %for.body.685, label %for.end.696

for.body.685:                                     ; preds = %for.cond.682
  %625 = load i32, i32* %j, align 4
  %idxprom686 = sext i32 %625 to i64
  %626 = load i32, i32* %i, align 4
  %idxprom687 = sext i32 %626 to i64
  %627 = load float**, float*** %WMMTX, align 8
  %arrayidx688 = getelementptr inbounds float*, float** %627, i64 %idxprom687
  %628 = load float*, float** %arrayidx688, align 8
  %arrayidx689 = getelementptr inbounds float, float* %628, i64 %idxprom686
  %629 = load float, float* %arrayidx689, align 4
  %630 = load float, float* %maxwm, align 4
  %div = fdiv float %629, %630
  %631 = load i32, i32* %j, align 4
  %idxprom690 = sext i32 %631 to i64
  %632 = load i32, i32* %i, align 4
  %idxprom691 = sext i32 %632 to i64
  %633 = load float**, float*** %map.addr, align 8
  %arrayidx692 = getelementptr inbounds float*, float** %633, i64 %idxprom691
  %634 = load float*, float** %arrayidx692, align 8
  %arrayidx693 = getelementptr inbounds float, float* %634, i64 %idxprom690
  store float %div, float* %arrayidx693, align 4
  br label %for.inc.694

for.inc.694:                                      ; preds = %for.body.685
  %635 = load i32, i32* %j, align 4
  %inc695 = add nsw i32 %635, 1
  store i32 %inc695, i32* %j, align 4
  br label %for.cond.682

for.end.696:                                      ; preds = %for.cond.682
  br label %for.inc.697

for.inc.697:                                      ; preds = %for.end.696
  %636 = load i32, i32* %i, align 4
  %inc698 = add nsw i32 %636, 1
  store i32 %inc698, i32* %i, align 4
  br label %for.cond.678

for.end.699:                                      ; preds = %for.cond.678
  %637 = load float*, float** %w1, align 8
  call void @FreeFloatVec(float* %637)
  %638 = load float*, float** %w2, align 8
  call void @FreeFloatVec(float* %638)
  %639 = load float*, float** %initverticalw, align 8
  call void @FreeFloatVec(float* %639)
  %640 = load float*, float** %lastverticalw, align 8
  call void @FreeFloatVec(float* %640)
  %641 = load float*, float** %midw, align 8
  call void @FreeFloatVec(float* %641)
  %642 = load float*, float** %midm, align 8
  call void @FreeFloatVec(float* %642)
  %643 = load float*, float** %midn, align 8
  call void @FreeFloatVec(float* %643)
  %644 = load i32*, i32** %jumpbacki, align 8
  call void @FreeIntVec(i32* %644)
  %645 = load i32*, i32** %jumpbackj, align 8
  call void @FreeIntVec(i32* %645)
  %646 = load i32*, i32** %jumpforwi, align 8
  call void @FreeIntVec(i32* %646)
  %647 = load i32*, i32** %jumpforwj, align 8
  call void @FreeIntVec(i32* %647)
  %648 = load i32*, i32** %jumpdummi, align 8
  call void @FreeIntVec(i32* %648)
  %649 = load i32*, i32** %jumpdummj, align 8
  call void @FreeIntVec(i32* %649)
  %650 = load float*, float** %m, align 8
  call void @FreeFloatVec(float* %650)
  %651 = load i32*, i32** %mp, align 8
  call void @FreeIntVec(i32* %651)
  %652 = load float**, float*** %floatwork, align 8
  call void @FreeFloatMtx(float** %652)
  %653 = load i32**, i32*** %intwork, align 8
  call void @FreeIntMtx(i32** %653)
  %654 = load float**, float*** %WMMTX, align 8
  call void @FreeFloatMtx(float** %654)
  %655 = load float**, float*** %WMMTX2, align 8
  call void @FreeFloatMtx(float** %655)
  %656 = load float, float* %value, align 4
  store float %656, float* %retval
  br label %return

return:                                           ; preds = %for.end.699, %if.then.77, %for.end.48
  %657 = load float, float* %retval
  ret float %657
}

declare void @FreeFloatVec(float*) #1

declare void @FreeFloatMtx(float**) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare void @FreeCharMtx(i8**) #1

; Function Attrs: nounwind uwtable
define float @Lalign2m2m_hmout(i8** %seq1, i8** %seq2, i8** %seq1r, i8** %seq2r, i8* %dir1, i8* %dir2, double* %eff1, double* %eff2, i32 %icyc, i32 %jcyc, i32 %alloclen, i8* %sgap1, i8* %sgap2, i8* %egap1, i8* %egap2, float** %map) #0 {
entry:
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %seq1r.addr = alloca i8**, align 8
  %seq2r.addr = alloca i8**, align 8
  %dir1.addr = alloca i8*, align 8
  %dir2.addr = alloca i8*, align 8
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %icyc.addr = alloca i32, align 4
  %jcyc.addr = alloca i32, align 4
  %alloclen.addr = alloca i32, align 4
  %sgap1.addr = alloca i8*, align 8
  %sgap2.addr = alloca i8*, align 8
  %egap1.addr = alloca i8*, align 8
  %egap2.addr = alloca i8*, align 8
  %map.addr = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
  %wm = alloca float, align 4
  %mseq1 = alloca i8**, align 8
  %mseq2 = alloca i8**, align 8
  %ogcp1 = alloca float*, align 8
  %ogcp2 = alloca float*, align 8
  %fgcp1 = alloca float*, align 8
  %fgcp2 = alloca float*, align 8
  %cpmx1 = alloca float**, align 8
  %cpmx2 = alloca float**, align 8
  %gapinfo = alloca float**, align 8
  %fpenalty = alloca float, align 4
  %nglen1 = alloca i32, align 4
  %nglen2 = alloca i32, align 4
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store i8** %seq1r, i8*** %seq1r.addr, align 8
  store i8** %seq2r, i8*** %seq2r.addr, align 8
  store i8* %dir1, i8** %dir1.addr, align 8
  store i8* %dir2, i8** %dir2.addr, align 8
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i32 %icyc, i32* %icyc.addr, align 4
  store i32 %jcyc, i32* %jcyc.addr, align 4
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store i8* %sgap1, i8** %sgap1.addr, align 8
  store i8* %sgap2, i8** %sgap2.addr, align 8
  store i8* %egap1, i8** %egap1.addr, align 8
  store i8* %egap2, i8** %egap2.addr, align 8
  store float** %map, float*** %map.addr, align 8
  store float 0.000000e+00, float* %wm, align 4
  %0 = load i32, i32* @penalty, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fpenalty, align 4
  %1 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @seqlen(i8* %2)
  store i32 %call, i32* %nglen1, align 4
  %3 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i32 @seqlen(i8* %4)
  store i32 %call2, i32* %nglen2, align 4
  %5 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i64 @strlen(i8* %6) #5
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, i32* %lgth1, align 4
  %7 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i64 @strlen(i8* %8) #5
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* %lgth2, align 4
  %9 = load i32, i32* %lgth1, align 4
  %add = add nsw i32 %9, 100
  store i32 %add, i32* %ll1, align 4
  %10 = load i32, i32* %lgth2, align 4
  %add9 = add nsw i32 %10, 100
  store i32 %add9, i32* %ll2, align 4
  %11 = load i32, i32* %icyc.addr, align 4
  %12 = load i32, i32* %ll1, align 4
  %13 = load i32, i32* %ll2, align 4
  %add10 = add nsw i32 %12, %13
  %call11 = call i8** @AllocateCharMtx(i32 %11, i32 %add10)
  store i8** %call11, i8*** %mseq1, align 8
  %14 = load i32, i32* %jcyc.addr, align 4
  %15 = load i32, i32* %ll1, align 4
  %16 = load i32, i32* %ll2, align 4
  %add12 = add nsw i32 %15, %16
  %call13 = call i8** @AllocateCharMtx(i32 %14, i32 %add12)
  store i8** %call13, i8*** %mseq2, align 8
  %call14 = call float** @AllocateFloatMtx(i32 4, i32 0)
  store float** %call14, float*** %gapinfo, align 8
  %17 = load i32, i32* %ll1, align 4
  %add15 = add nsw i32 %17, 2
  %call16 = call float* @AllocateFloatVec(i32 %add15)
  store float* %call16, float** %ogcp1, align 8
  %18 = load i32, i32* %ll2, align 4
  %add17 = add nsw i32 %18, 2
  %call18 = call float* @AllocateFloatVec(i32 %add17)
  store float* %call18, float** %ogcp2, align 8
  %19 = load i32, i32* %ll1, align 4
  %add19 = add nsw i32 %19, 2
  %call20 = call float* @AllocateFloatVec(i32 %add19)
  store float* %call20, float** %fgcp1, align 8
  %20 = load i32, i32* %ll2, align 4
  %add21 = add nsw i32 %20, 2
  %call22 = call float* @AllocateFloatVec(i32 %add21)
  store float* %call22, float** %fgcp2, align 8
  %21 = load i32, i32* %ll1, align 4
  %add23 = add nsw i32 %21, 2
  %call24 = call float** @AllocateFloatMtx(i32 %add23, i32 39)
  store float** %call24, float*** %cpmx1, align 8
  %22 = load i32, i32* %ll2, align 4
  %add25 = add nsw i32 %22, 2
  %call26 = call float** @AllocateFloatMtx(i32 %add25, i32 39)
  store float** %call26, float*** %cpmx2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %icyc.addr, align 4
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %26, i64 %idxprom
  %27 = load i8*, i8** %arrayidx28, align 8
  %call29 = call i64 @strlen(i8* %27) #5
  %28 = load i32, i32* %lgth1, align 4
  %conv30 = sext i32 %28 to i64
  %cmp31 = icmp ne i64 %call29, %conv30
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %icyc.addr, align 4
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %30, i32 %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.49, %for.end
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %jcyc.addr, align 4
  %cmp36 = icmp slt i32 %34, %35
  br i1 %cmp36, label %for.body.38, label %for.end.51

for.body.38:                                      ; preds = %for.cond.35
  %36 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %36 to i64
  %37 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %37, i64 %idxprom39
  %38 = load i8*, i8** %arrayidx40, align 8
  %call41 = call i64 @strlen(i8* %38) #5
  %39 = load i32, i32* %lgth2, align 4
  %conv42 = sext i32 %39 to i64
  %cmp43 = icmp ne i64 %call41, %conv42
  br i1 %cmp43, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %for.body.38
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %jcyc.addr, align 4
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %41, i32 %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.48:                                        ; preds = %for.body.38
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %44 = load i32, i32* %j, align 4
  %inc50 = add nsw i32 %44, 1
  store i32 %inc50, i32* %j, align 4
  br label %for.cond.35

for.end.51:                                       ; preds = %for.cond.35
  %45 = load i8**, i8*** %seq1.addr, align 8
  %46 = load i8**, i8*** %seq1r.addr, align 8
  %47 = load i8*, i8** %dir1.addr, align 8
  %48 = load float**, float*** %cpmx1, align 8
  %49 = load double*, double** %eff1.addr, align 8
  %50 = load i32, i32* %lgth1, align 4
  %51 = load i32, i32* %icyc.addr, align 4
  call void @cpmx_ribosum(i8** %45, i8** %46, i8* %47, float** %48, double* %49, i32 %50, i32 %51)
  %52 = load i8**, i8*** %seq2.addr, align 8
  %53 = load i8**, i8*** %seq2r.addr, align 8
  %54 = load i8*, i8** %dir2.addr, align 8
  %55 = load float**, float*** %cpmx2, align 8
  %56 = load double*, double** %eff2.addr, align 8
  %57 = load i32, i32* %lgth2, align 4
  %58 = load i32, i32* %jcyc.addr, align 4
  call void @cpmx_ribosum(i8** %52, i8** %53, i8* %54, float** %55, double* %56, i32 %57, i32 %58)
  %59 = load i8*, i8** %sgap1.addr, align 8
  %tobool = icmp ne i8* %59, null
  br i1 %tobool, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %for.end.51
  %60 = load float*, float** %ogcp1, align 8
  %61 = load i32, i32* %icyc.addr, align 4
  %62 = load i8**, i8*** %seq1.addr, align 8
  %63 = load double*, double** %eff1.addr, align 8
  %64 = load i32, i32* %lgth1, align 4
  %65 = load i8*, i8** %sgap1.addr, align 8
  call void @new_OpeningGapCount(float* %60, i32 %61, i8** %62, double* %63, i32 %64, i8* %65)
  %66 = load float*, float** %ogcp2, align 8
  %67 = load i32, i32* %jcyc.addr, align 4
  %68 = load i8**, i8*** %seq2.addr, align 8
  %69 = load double*, double** %eff2.addr, align 8
  %70 = load i32, i32* %lgth2, align 4
  %71 = load i8*, i8** %sgap2.addr, align 8
  call void @new_OpeningGapCount(float* %66, i32 %67, i8** %68, double* %69, i32 %70, i8* %71)
  %72 = load float*, float** %fgcp1, align 8
  %73 = load i32, i32* %icyc.addr, align 4
  %74 = load i8**, i8*** %seq1.addr, align 8
  %75 = load double*, double** %eff1.addr, align 8
  %76 = load i32, i32* %lgth1, align 4
  %77 = load i8*, i8** %egap2.addr, align 8
  call void @new_FinalGapCount(float* %72, i32 %73, i8** %74, double* %75, i32 %76, i8* %77)
  %78 = load float*, float** %fgcp2, align 8
  %79 = load i32, i32* %jcyc.addr, align 4
  %80 = load i8**, i8*** %seq2.addr, align 8
  %81 = load double*, double** %eff2.addr, align 8
  %82 = load i32, i32* %lgth2, align 4
  %83 = load i8*, i8** %egap2.addr, align 8
  call void @new_FinalGapCount(float* %78, i32 %79, i8** %80, double* %81, i32 %82, i8* %83)
  br label %if.end.53

if.else:                                          ; preds = %for.end.51
  %84 = load float*, float** %ogcp1, align 8
  %85 = load i32, i32* %icyc.addr, align 4
  %86 = load i8**, i8*** %seq1.addr, align 8
  %87 = load double*, double** %eff1.addr, align 8
  %88 = load i32, i32* %lgth1, align 4
  call void @st_OpeningGapCount(float* %84, i32 %85, i8** %86, double* %87, i32 %88)
  %89 = load float*, float** %ogcp2, align 8
  %90 = load i32, i32* %jcyc.addr, align 4
  %91 = load i8**, i8*** %seq2.addr, align 8
  %92 = load double*, double** %eff2.addr, align 8
  %93 = load i32, i32* %lgth2, align 4
  call void @st_OpeningGapCount(float* %89, i32 %90, i8** %91, double* %92, i32 %93)
  %94 = load float*, float** %fgcp1, align 8
  %95 = load i32, i32* %icyc.addr, align 4
  %96 = load i8**, i8*** %seq1.addr, align 8
  %97 = load double*, double** %eff1.addr, align 8
  %98 = load i32, i32* %lgth1, align 4
  call void @st_FinalGapCount(float* %94, i32 %95, i8** %96, double* %97, i32 %98)
  %99 = load float*, float** %fgcp2, align 8
  %100 = load i32, i32* %jcyc.addr, align 4
  %101 = load i8**, i8*** %seq2.addr, align 8
  %102 = load double*, double** %eff2.addr, align 8
  %103 = load i32, i32* %lgth2, align 4
  call void @st_FinalGapCount(float* %99, i32 %100, i8** %101, double* %102, i32 %103)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.52
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.76, %if.end.53
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %lgth1, align 4
  %cmp55 = icmp slt i32 %104, %105
  br i1 %cmp55, label %for.body.57, label %for.end.78

for.body.57:                                      ; preds = %for.cond.54
  %106 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %106 to i64
  %107 = load float*, float** %ogcp1, align 8
  %arrayidx59 = getelementptr inbounds float, float* %107, i64 %idxprom58
  %108 = load float, float* %arrayidx59, align 4
  %conv60 = fpext float %108 to double
  %sub = fsub double 1.000000e+00, %conv60
  %mul = fmul double 5.000000e-01, %sub
  %109 = load float, float* %fpenalty, align 4
  %conv61 = fpext float %109 to double
  %mul62 = fmul double %mul, %conv61
  %conv63 = fptrunc double %mul62 to float
  %110 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %110 to i64
  %111 = load float*, float** %ogcp1, align 8
  %arrayidx65 = getelementptr inbounds float, float* %111, i64 %idxprom64
  store float %conv63, float* %arrayidx65, align 4
  %112 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %112 to i64
  %113 = load float*, float** %fgcp1, align 8
  %arrayidx67 = getelementptr inbounds float, float* %113, i64 %idxprom66
  %114 = load float, float* %arrayidx67, align 4
  %conv68 = fpext float %114 to double
  %sub69 = fsub double 1.000000e+00, %conv68
  %mul70 = fmul double 5.000000e-01, %sub69
  %115 = load float, float* %fpenalty, align 4
  %conv71 = fpext float %115 to double
  %mul72 = fmul double %mul70, %conv71
  %conv73 = fptrunc double %mul72 to float
  %116 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %116 to i64
  %117 = load float*, float** %fgcp1, align 8
  %arrayidx75 = getelementptr inbounds float, float* %117, i64 %idxprom74
  store float %conv73, float* %arrayidx75, align 4
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.57
  %118 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %118, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond.54

for.end.78:                                       ; preds = %for.cond.54
  store i32 0, i32* %i, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.103, %for.end.78
  %119 = load i32, i32* %i, align 4
  %120 = load i32, i32* %lgth2, align 4
  %cmp80 = icmp slt i32 %119, %120
  br i1 %cmp80, label %for.body.82, label %for.end.105

for.body.82:                                      ; preds = %for.cond.79
  %121 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %121 to i64
  %122 = load float*, float** %ogcp2, align 8
  %arrayidx84 = getelementptr inbounds float, float* %122, i64 %idxprom83
  %123 = load float, float* %arrayidx84, align 4
  %conv85 = fpext float %123 to double
  %sub86 = fsub double 1.000000e+00, %conv85
  %mul87 = fmul double 5.000000e-01, %sub86
  %124 = load float, float* %fpenalty, align 4
  %conv88 = fpext float %124 to double
  %mul89 = fmul double %mul87, %conv88
  %conv90 = fptrunc double %mul89 to float
  %125 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %125 to i64
  %126 = load float*, float** %ogcp2, align 8
  %arrayidx92 = getelementptr inbounds float, float* %126, i64 %idxprom91
  store float %conv90, float* %arrayidx92, align 4
  %127 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %127 to i64
  %128 = load float*, float** %fgcp2, align 8
  %arrayidx94 = getelementptr inbounds float, float* %128, i64 %idxprom93
  %129 = load float, float* %arrayidx94, align 4
  %conv95 = fpext float %129 to double
  %sub96 = fsub double 1.000000e+00, %conv95
  %mul97 = fmul double 5.000000e-01, %sub96
  %130 = load float, float* %fpenalty, align 4
  %conv98 = fpext float %130 to double
  %mul99 = fmul double %mul97, %conv98
  %conv100 = fptrunc double %mul99 to float
  %131 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %131 to i64
  %132 = load float*, float** %fgcp2, align 8
  %arrayidx102 = getelementptr inbounds float, float* %132, i64 %idxprom101
  store float %conv100, float* %arrayidx102, align 4
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.82
  %133 = load i32, i32* %i, align 4
  %inc104 = add nsw i32 %133, 1
  store i32 %inc104, i32* %i, align 4
  br label %for.cond.79

for.end.105:                                      ; preds = %for.cond.79
  %134 = load float*, float** %ogcp1, align 8
  %135 = load float**, float*** %gapinfo, align 8
  %arrayidx106 = getelementptr inbounds float*, float** %135, i64 0
  store float* %134, float** %arrayidx106, align 8
  %136 = load float*, float** %fgcp1, align 8
  %137 = load float**, float*** %gapinfo, align 8
  %arrayidx107 = getelementptr inbounds float*, float** %137, i64 1
  store float* %136, float** %arrayidx107, align 8
  %138 = load float*, float** %ogcp2, align 8
  %139 = load float**, float*** %gapinfo, align 8
  %arrayidx108 = getelementptr inbounds float*, float** %139, i64 2
  store float* %138, float** %arrayidx108, align 8
  %140 = load float*, float** %fgcp2, align 8
  %141 = load float**, float*** %gapinfo, align 8
  %arrayidx109 = getelementptr inbounds float*, float** %141, i64 3
  store float* %140, float** %arrayidx109, align 8
  %142 = load i32, i32* %icyc.addr, align 4
  %143 = load i32, i32* %jcyc.addr, align 4
  %144 = load double*, double** %eff1.addr, align 8
  %145 = load double*, double** %eff2.addr, align 8
  %146 = load i8**, i8*** %seq1.addr, align 8
  %147 = load i8**, i8*** %seq2.addr, align 8
  %148 = load float**, float*** %cpmx1, align 8
  %149 = load float**, float*** %cpmx2, align 8
  %150 = load i32, i32* %lgth1, align 4
  %sub110 = sub nsw i32 %150, 1
  %151 = load i32, i32* %lgth2, align 4
  %sub111 = sub nsw i32 %151, 1
  %152 = load i32, i32* %alloclen.addr, align 4
  %153 = load i8**, i8*** %mseq1, align 8
  %154 = load i8**, i8*** %mseq2, align 8
  %155 = load float**, float*** %gapinfo, align 8
  %156 = load float**, float*** %map.addr, align 8
  %call112 = call float @MSalign2m2m_rec(i32 %142, i32 %143, double* %144, double* %145, i8** %146, i8** %147, float** %148, float** %149, i32 0, i32 %sub110, i32 0, i32 %sub111, i32 %152, i8** %153, i8** %154, i32 0, float** %155, float** %156)
  store float %call112, float* %wm, align 4
  %157 = load float*, float** %ogcp1, align 8
  call void @FreeFloatVec(float* %157)
  %158 = load float*, float** %ogcp2, align 8
  call void @FreeFloatVec(float* %158)
  %159 = load float*, float** %fgcp1, align 8
  call void @FreeFloatVec(float* %159)
  %160 = load float*, float** %fgcp2, align 8
  call void @FreeFloatVec(float* %160)
  %161 = load float**, float*** %cpmx1, align 8
  call void @FreeFloatMtx(float** %161)
  %162 = load float**, float*** %cpmx2, align 8
  call void @FreeFloatMtx(float** %162)
  %163 = load float**, float*** %gapinfo, align 8
  %164 = bitcast float** %163 to i8*
  call void @free(i8* %164) #7
  %165 = load i8**, i8*** %mseq1, align 8
  call void @FreeCharMtx(i8** %165)
  %166 = load i8**, i8*** %mseq2, align 8
  call void @FreeCharMtx(i8** %166)
  %167 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx113 = getelementptr inbounds i8*, i8** %167, i64 0
  %168 = load i8*, i8** %arrayidx113, align 8
  %call114 = call i64 @strlen(i8* %168) #5
  %conv115 = trunc i64 %call114 to i32
  store i32 %conv115, i32* %lgth1, align 4
  %169 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx116 = getelementptr inbounds i8*, i8** %169, i64 0
  %170 = load i8*, i8** %arrayidx116, align 8
  %call117 = call i64 @strlen(i8* %170) #5
  %conv118 = trunc i64 %call117 to i32
  store i32 %conv118, i32* %lgth2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.133, %for.end.105
  %171 = load i32, i32* %i, align 4
  %172 = load i32, i32* %icyc.addr, align 4
  %cmp120 = icmp slt i32 %171, %172
  br i1 %cmp120, label %for.body.122, label %for.end.135

for.body.122:                                     ; preds = %for.cond.119
  %173 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %173 to i64
  %174 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx124 = getelementptr inbounds i8*, i8** %174, i64 %idxprom123
  %175 = load i8*, i8** %arrayidx124, align 8
  %call125 = call i64 @strlen(i8* %175) #5
  %176 = load i32, i32* %lgth1, align 4
  %conv126 = sext i32 %176 to i64
  %cmp127 = icmp ne i64 %call125, %conv126
  br i1 %cmp127, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %for.body.122
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %178 = load i32, i32* %i, align 4
  %179 = load i32, i32* %icyc.addr, align 4
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %178, i32 %179)
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.132:                                       ; preds = %for.body.122
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.132
  %181 = load i32, i32* %i, align 4
  %inc134 = add nsw i32 %181, 1
  store i32 %inc134, i32* %i, align 4
  br label %for.cond.119

for.end.135:                                      ; preds = %for.cond.119
  store i32 0, i32* %j, align 4
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.150, %for.end.135
  %182 = load i32, i32* %j, align 4
  %183 = load i32, i32* %jcyc.addr, align 4
  %cmp137 = icmp slt i32 %182, %183
  br i1 %cmp137, label %for.body.139, label %for.end.152

for.body.139:                                     ; preds = %for.cond.136
  %184 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %184 to i64
  %185 = load i8**, i8*** %seq2.addr, align 8
  %arrayidx141 = getelementptr inbounds i8*, i8** %185, i64 %idxprom140
  %186 = load i8*, i8** %arrayidx141, align 8
  %call142 = call i64 @strlen(i8* %186) #5
  %187 = load i32, i32* %lgth2, align 4
  %conv143 = sext i32 %187 to i64
  %cmp144 = icmp ne i64 %call142, %conv143
  br i1 %cmp144, label %if.then.146, label %if.end.149

if.then.146:                                      ; preds = %for.body.139
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %189 = load i32, i32* %j, align 4
  %190 = load i32, i32* %jcyc.addr, align 4
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %189, i32 %190)
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %191, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.149:                                       ; preds = %for.body.139
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149
  %192 = load i32, i32* %j, align 4
  %inc151 = add nsw i32 %192, 1
  store i32 %inc151, i32* %j, align 4
  br label %for.cond.136

for.end.152:                                      ; preds = %for.cond.136
  %193 = load float, float* %wm, align 4
  ret float %193
}

declare void @cpmx_ribosum(i8**, i8**, i8*, float**, double*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal float @MSalign2m2m_rec(i32 %icyc, i32 %jcyc, double* %eff1, double* %eff2, i8** %seq1, i8** %seq2, float** %cpmx1, float** %cpmx2, i32 %ist, i32 %ien, i32 %jst, i32 %jen, i32 %alloclen, i8** %mseq1, i8** %mseq2, i32 %depth, float** %gapinfo, float** %map) #0 {
entry:
  %retval = alloca float, align 4
  %icyc.addr = alloca i32, align 4
  %jcyc.addr = alloca i32, align 4
  %eff1.addr = alloca double*, align 8
  %eff2.addr = alloca double*, align 8
  %seq1.addr = alloca i8**, align 8
  %seq2.addr = alloca i8**, align 8
  %cpmx1.addr = alloca float**, align 8
  %cpmx2.addr = alloca float**, align 8
  %ist.addr = alloca i32, align 4
  %ien.addr = alloca i32, align 4
  %jst.addr = alloca i32, align 4
  %jen.addr = alloca i32, align 4
  %alloclen.addr = alloca i32, align 4
  %mseq1.addr = alloca i8**, align 8
  %mseq2.addr = alloca i8**, align 8
  %depth.addr = alloca i32, align 4
  %gapinfo.addr = alloca float**, align 8
  %map.addr = alloca float**, align 8
  %value = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %aseq1 = alloca i8**, align 8
  %aseq2 = alloca i8**, align 8
  %ll1 = alloca i32, align 4
  %ll2 = alloca i32, align 4
  %lasti = alloca i32, align 4
  %lastj = alloca i32, align 4
  %imid = alloca i32, align 4
  %jmid = alloca i32, align 4
  %wm = alloca float, align 4
  %g = alloca float, align 4
  %currentw = alloca float*, align 8
  %previousw = alloca float*, align 8
  %wtmp = alloca float*, align 8
  %mpjpt = alloca i32*, align 8
  %mp = alloca i32*, align 8
  %mpi = alloca i32, align 4
  %mjpt = alloca float*, align 8
  %prept = alloca float*, align 8
  %curpt = alloca float*, align 8
  %mi = alloca float, align 4
  %m = alloca float*, align 8
  %w1 = alloca float*, align 8
  %w2 = alloca float*, align 8
  %initverticalw = alloca float*, align 8
  %lastverticalw = alloca float*, align 8
  %intwork = alloca i32**, align 8
  %floatwork = alloca float**, align 8
  %WMMTX = alloca float**, align 8
  %WMMTX2 = alloca float**, align 8
  %midw = alloca float*, align 8
  %midm = alloca float*, align 8
  %midn = alloca float*, align 8
  %lgth1 = alloca i32, align 4
  %lgth2 = alloca i32, align 4
  %maxwm = alloca float, align 4
  %jumpforwi = alloca i32*, align 8
  %jumpforwj = alloca i32*, align 8
  %jumpbacki = alloca i32*, align 8
  %jumpbackj = alloca i32*, align 8
  %jumpdummi = alloca i32*, align 8
  %jumpdummj = alloca i32*, align 8
  %jumpi = alloca i32, align 4
  %jumpj = alloca i32, align 4
  %gaps = alloca i8*, align 8
  %ijpi = alloca i32, align 4
  %ijpj = alloca i32, align 4
  %ogcp1 = alloca float*, align 8
  %fgcp1 = alloca float*, align 8
  %ogcp2 = alloca float*, align 8
  %fgcp2 = alloca float*, align 8
  %firstm = alloca float, align 4
  %firstmp = alloca i32, align 4
  store i32 %icyc, i32* %icyc.addr, align 4
  store i32 %jcyc, i32* %jcyc.addr, align 4
  store double* %eff1, double** %eff1.addr, align 8
  store double* %eff2, double** %eff2.addr, align 8
  store i8** %seq1, i8*** %seq1.addr, align 8
  store i8** %seq2, i8*** %seq2.addr, align 8
  store float** %cpmx1, float*** %cpmx1.addr, align 8
  store float** %cpmx2, float*** %cpmx2.addr, align 8
  store i32 %ist, i32* %ist.addr, align 4
  store i32 %ien, i32* %ien.addr, align 4
  store i32 %jst, i32* %jst.addr, align 4
  store i32 %jen, i32* %jen.addr, align 4
  store i32 %alloclen, i32* %alloclen.addr, align 4
  store i8** %mseq1, i8*** %mseq1.addr, align 8
  store i8** %mseq2, i8*** %mseq2.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store float** %gapinfo, float*** %gapinfo.addr, align 8
  store float** %map, float*** %map.addr, align 8
  store float 0.000000e+00, float* %value, align 4
  store i32 0, i32* %jmid, align 4
  store float 0.000000e+00, float* %wm, align 4
  store float 0.000000e+00, float* %maxwm, align 4
  store i32 0, i32* %jumpj, align 4
  %0 = load i32, i32* @offset, align 4
  %sub = sub nsw i32 0, %0
  %add = add nsw i32 %sub, 500
  %conv = sitofp i32 %add to float
  store float %conv, float* @localthr, align 4
  %1 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %1, i64 0
  %2 = load float*, float** %arrayidx, align 8
  %3 = load i32, i32* %ist.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds float, float* %2, i64 %idx.ext
  store float* %add.ptr, float** %ogcp1, align 8
  %4 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx1 = getelementptr inbounds float*, float** %4, i64 1
  %5 = load float*, float** %arrayidx1, align 8
  %6 = load i32, i32* %ist.addr, align 4
  %idx.ext2 = sext i32 %6 to i64
  %add.ptr3 = getelementptr inbounds float, float* %5, i64 %idx.ext2
  store float* %add.ptr3, float** %fgcp1, align 8
  %7 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx4 = getelementptr inbounds float*, float** %7, i64 2
  %8 = load float*, float** %arrayidx4, align 8
  %9 = load i32, i32* %jst.addr, align 4
  %idx.ext5 = sext i32 %9 to i64
  %add.ptr6 = getelementptr inbounds float, float* %8, i64 %idx.ext5
  store float* %add.ptr6, float** %ogcp2, align 8
  %10 = load float**, float*** %gapinfo.addr, align 8
  %arrayidx7 = getelementptr inbounds float*, float** %10, i64 3
  %11 = load float*, float** %arrayidx7, align 8
  %12 = load i32, i32* %jst.addr, align 4
  %idx.ext8 = sext i32 %12 to i64
  %add.ptr9 = getelementptr inbounds float, float* %11, i64 %idx.ext8
  store float* %add.ptr9, float** %fgcp2, align 8
  %13 = load i32, i32* %depth.addr, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %depth.addr, align 4
  %14 = load i32, i32* @reccycle, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, i32* @reccycle, align 4
  %15 = load i32, i32* %ien.addr, align 4
  %16 = load i32, i32* %ist.addr, align 4
  %sub11 = sub nsw i32 %15, %16
  %add12 = add nsw i32 %sub11, 1
  store i32 %add12, i32* %lgth1, align 4
  %17 = load i32, i32* %jen.addr, align 4
  %18 = load i32, i32* %jst.addr, align 4
  %sub13 = sub nsw i32 %17, %18
  %add14 = add nsw i32 %sub13, 1
  store i32 %add14, i32* %lgth2, align 4
  %19 = load i32, i32* %lgth2, align 4
  %cmp = icmp sle i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %icyc.addr, align 4
  %cmp16 = icmp slt i32 %20, %21
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %23, i64 %idxprom
  %24 = load i8*, i8** %arrayidx18, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load i8**, i8*** %seq1.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %26, i64 %idxprom19
  %27 = load i8*, i8** %arrayidx20, align 8
  %28 = load i32, i32* %ist.addr, align 4
  %idx.ext21 = sext i32 %28 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %27, i64 %idx.ext21
  %29 = load i32, i32* %lgth1, align 4
  %conv23 = sext i32 %29 to i64
  %call = call i8* @strncpy(i8* %24, i8* %add.ptr22, i64 %conv23) #7
  %30 = load i32, i32* %lgth1, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %31 to i64
  %32 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %32, i64 %idxprom25
  %33 = load i8*, i8** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %33, i64 %idxprom24
  store i8 0, i8* %arrayidx27, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %34, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.46, %for.end
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %jcyc.addr, align 4
  %cmp30 = icmp slt i32 %35, %36
  br i1 %cmp30, label %for.body.32, label %for.end.48

for.body.32:                                      ; preds = %for.cond.29
  %37 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %37 to i64
  %38 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %38, i64 %idxprom33
  %39 = load i8*, i8** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %arrayidx35, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.43, %for.body.32
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %lgth1, align 4
  %cmp37 = icmp slt i32 %40, %41
  br i1 %cmp37, label %for.body.39, label %for.end.45

for.body.39:                                      ; preds = %for.cond.36
  %42 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %42 to i64
  %43 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %43, i64 %idxprom40
  %44 = load i8*, i8** %arrayidx41, align 8
  %call42 = call i8* @strcat(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.39
  %45 = load i32, i32* %j, align 4
  %inc44 = add nsw i32 %45, 1
  store i32 %inc44, i32* %j, align 4
  br label %for.cond.36

for.end.45:                                       ; preds = %for.cond.36
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.45
  %46 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %46, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.29

for.end.48:                                       ; preds = %for.cond.29
  store float 0.000000e+00, float* %retval
  br label %return

if.end:                                           ; preds = %entry
  %47 = load i32, i32* %icyc.addr, align 4
  %call49 = call i8** @AllocateCharMtx(i32 %47, i32 0)
  store i8** %call49, i8*** %aseq1, align 8
  %48 = load i32, i32* %jcyc.addr, align 4
  %call50 = call i8** @AllocateCharMtx(i32 %48, i32 0)
  store i8** %call50, i8*** %aseq2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.59, %if.end
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %icyc.addr, align 4
  %cmp52 = icmp slt i32 %49, %50
  br i1 %cmp52, label %for.body.54, label %for.end.61

for.body.54:                                      ; preds = %for.cond.51
  %51 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %51 to i64
  %52 = load i8**, i8*** %mseq1.addr, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %52, i64 %idxprom55
  %53 = load i8*, i8** %arrayidx56, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %54 to i64
  %55 = load i8**, i8*** %aseq1, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %55, i64 %idxprom57
  store i8* %53, i8** %arrayidx58, align 8
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.54
  %56 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %56, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.51

for.end.61:                                       ; preds = %for.cond.51
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.70, %for.end.61
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %jcyc.addr, align 4
  %cmp63 = icmp slt i32 %57, %58
  br i1 %cmp63, label %for.body.65, label %for.end.72

for.body.65:                                      ; preds = %for.cond.62
  %59 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %59 to i64
  %60 = load i8**, i8*** %mseq2.addr, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %60, i64 %idxprom66
  %61 = load i8*, i8** %arrayidx67, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %62 to i64
  %63 = load i8**, i8*** %aseq2, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %63, i64 %idxprom68
  store i8* %61, i8** %arrayidx69, align 8
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.65
  %64 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %64, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.62

for.end.72:                                       ; preds = %for.cond.62
  %65 = load i32, i32* %lgth1, align 4
  %cmp73 = icmp slt i32 %65, 10
  br i1 %cmp73, label %if.then.77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.72
  %66 = load i32, i32* %lgth2, align 4
  %cmp75 = icmp slt i32 %66, 10
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %lor.lhs.false, %for.end.72
  %67 = load i8**, i8*** %aseq1, align 8
  %68 = bitcast i8** %67 to i8*
  call void @free(i8* %68) #7
  %69 = load i8**, i8*** %aseq2, align 8
  %70 = bitcast i8** %69 to i8*
  call void @free(i8* %70) #7
  %71 = load float, float* %value, align 4
  store float %71, float* %retval
  br label %return

if.end.78:                                        ; preds = %lor.lhs.false
  %72 = load i32, i32* %lgth1, align 4
  %add79 = add nsw i32 %72, 100
  store i32 %add79, i32* %ll1, align 4
  %73 = load i32, i32* %lgth2, align 4
  %add80 = add nsw i32 %73, 100
  store i32 %add80, i32* %ll2, align 4
  %74 = load i32, i32* %ll2, align 4
  %add81 = add nsw i32 %74, 2
  %call82 = call float* @AllocateFloatVec(i32 %add81)
  store float* %call82, float** %w1, align 8
  %75 = load i32, i32* %ll2, align 4
  %add83 = add nsw i32 %75, 2
  %call84 = call float* @AllocateFloatVec(i32 %add83)
  store float* %call84, float** %w2, align 8
  %76 = load i32, i32* %ll2, align 4
  %add85 = add nsw i32 %76, 2
  %call86 = call float* @AllocateFloatVec(i32 %add85)
  store float* %call86, float** %midw, align 8
  %77 = load i32, i32* %ll2, align 4
  %add87 = add nsw i32 %77, 2
  %call88 = call float* @AllocateFloatVec(i32 %add87)
  store float* %call88, float** %midn, align 8
  %78 = load i32, i32* %ll2, align 4
  %add89 = add nsw i32 %78, 2
  %call90 = call float* @AllocateFloatVec(i32 %add89)
  store float* %call90, float** %midm, align 8
  %79 = load i32, i32* %ll2, align 4
  %add91 = add nsw i32 %79, 2
  %call92 = call i32* @AllocateIntVec(i32 %add91)
  store i32* %call92, i32** %jumpbacki, align 8
  %80 = load i32, i32* %ll2, align 4
  %add93 = add nsw i32 %80, 2
  %call94 = call i32* @AllocateIntVec(i32 %add93)
  store i32* %call94, i32** %jumpbackj, align 8
  %81 = load i32, i32* %ll2, align 4
  %add95 = add nsw i32 %81, 2
  %call96 = call i32* @AllocateIntVec(i32 %add95)
  store i32* %call96, i32** %jumpforwi, align 8
  %82 = load i32, i32* %ll2, align 4
  %add97 = add nsw i32 %82, 2
  %call98 = call i32* @AllocateIntVec(i32 %add97)
  store i32* %call98, i32** %jumpforwj, align 8
  %83 = load i32, i32* %ll2, align 4
  %add99 = add nsw i32 %83, 2
  %call100 = call i32* @AllocateIntVec(i32 %add99)
  store i32* %call100, i32** %jumpdummi, align 8
  %84 = load i32, i32* %ll2, align 4
  %add101 = add nsw i32 %84, 2
  %call102 = call i32* @AllocateIntVec(i32 %add101)
  store i32* %call102, i32** %jumpdummj, align 8
  %85 = load i32, i32* %ll1, align 4
  %add103 = add nsw i32 %85, 2
  %call104 = call float* @AllocateFloatVec(i32 %add103)
  store float* %call104, float** %initverticalw, align 8
  %86 = load i32, i32* %ll1, align 4
  %add105 = add nsw i32 %86, 2
  %call106 = call float* @AllocateFloatVec(i32 %add105)
  store float* %call106, float** %lastverticalw, align 8
  %87 = load i32, i32* %ll2, align 4
  %add107 = add nsw i32 %87, 2
  %call108 = call float* @AllocateFloatVec(i32 %add107)
  store float* %call108, float** %m, align 8
  %88 = load i32, i32* %ll2, align 4
  %add109 = add nsw i32 %88, 2
  %call110 = call i32* @AllocateIntVec(i32 %add109)
  store i32* %call110, i32** %mp, align 8
  %89 = load i32, i32* %ll1, align 4
  %90 = load i32, i32* %ll2, align 4
  %cmp111 = icmp sgt i32 %89, %90
  br i1 %cmp111, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.78
  %91 = load i32, i32* %ll1, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.78
  %92 = load i32, i32* %ll2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %91, %cond.true ], [ %92, %cond.false ]
  %add113 = add nsw i32 %cond, 2
  %call114 = call i8* @AllocateCharVec(i32 %add113)
  store i8* %call114, i8** %gaps, align 8
  %93 = load i32, i32* %ll1, align 4
  %94 = load i32, i32* %ll2, align 4
  %cmp115 = icmp sgt i32 %93, %94
  br i1 %cmp115, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %cond.end
  %95 = load i32, i32* %ll1, align 4
  br label %cond.end.119

cond.false.118:                                   ; preds = %cond.end
  %96 = load i32, i32* %ll2, align 4
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.117
  %cond120 = phi i32 [ %95, %cond.true.117 ], [ %96, %cond.false.118 ]
  %add121 = add nsw i32 %cond120, 2
  %call122 = call float** @AllocateFloatMtx(i32 %add121, i32 26)
  store float** %call122, float*** %floatwork, align 8
  %97 = load i32, i32* %ll1, align 4
  %98 = load i32, i32* %ll2, align 4
  %cmp123 = icmp sgt i32 %97, %98
  br i1 %cmp123, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %cond.end.119
  %99 = load i32, i32* %ll1, align 4
  br label %cond.end.127

cond.false.126:                                   ; preds = %cond.end.119
  %100 = load i32, i32* %ll2, align 4
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.126, %cond.true.125
  %cond128 = phi i32 [ %99, %cond.true.125 ], [ %100, %cond.false.126 ]
  %add129 = add nsw i32 %cond128, 2
  %call130 = call i32** @AllocateIntMtx(i32 %add129, i32 26)
  store i32** %call130, i32*** %intwork, align 8
  %101 = load i32, i32* %ll1, align 4
  %102 = load i32, i32* %ll2, align 4
  %call131 = call float** @AllocateFloatMtx(i32 %101, i32 %102)
  store float** %call131, float*** %WMMTX, align 8
  %103 = load i32, i32* %ll1, align 4
  %104 = load i32, i32* %ll2, align 4
  %call132 = call float** @AllocateFloatMtx(i32 %103, i32 %104)
  store float** %call132, float*** %WMMTX2, align 8
  %105 = load float*, float** %w1, align 8
  store float* %105, float** %currentw, align 8
  %106 = load float*, float** %w2, align 8
  store float* %106, float** %previousw, align 8
  %107 = load float*, float** %initverticalw, align 8
  %108 = load float**, float*** %cpmx2.addr, align 8
  %109 = load i32, i32* %jst.addr, align 4
  %idx.ext133 = sext i32 %109 to i64
  %add.ptr134 = getelementptr inbounds float*, float** %108, i64 %idx.ext133
  %110 = load float**, float*** %cpmx1.addr, align 8
  %111 = load i32, i32* %ist.addr, align 4
  %idx.ext135 = sext i32 %111 to i64
  %add.ptr136 = getelementptr inbounds float*, float** %110, i64 %idx.ext135
  %112 = load i32, i32* %lgth1, align 4
  %113 = load float**, float*** %floatwork, align 8
  %114 = load i32**, i32*** %intwork, align 8
  call void @match_ribosum(float* %107, float** %add.ptr134, float** %add.ptr136, i32 0, i32 %112, float** %113, i32** %114, i32 1)
  %115 = load float*, float** %currentw, align 8
  %116 = load float**, float*** %cpmx1.addr, align 8
  %117 = load i32, i32* %ist.addr, align 4
  %idx.ext137 = sext i32 %117 to i64
  %add.ptr138 = getelementptr inbounds float*, float** %116, i64 %idx.ext137
  %118 = load float**, float*** %cpmx2.addr, align 8
  %119 = load i32, i32* %jst.addr, align 4
  %idx.ext139 = sext i32 %119 to i64
  %add.ptr140 = getelementptr inbounds float*, float** %118, i64 %idx.ext139
  %120 = load i32, i32* %lgth2, align 4
  %121 = load float**, float*** %floatwork, align 8
  %122 = load i32**, i32*** %intwork, align 8
  call void @match_ribosum(float* %115, float** %add.ptr138, float** %add.ptr140, i32 0, i32 %120, float** %121, i32** %122, i32 1)
  store i32 1, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.154, %cond.end.127
  %123 = load i32, i32* %i, align 4
  %124 = load i32, i32* %lgth1, align 4
  %add142 = add nsw i32 %124, 1
  %cmp143 = icmp slt i32 %123, %add142
  br i1 %cmp143, label %for.body.145, label %for.end.156

for.body.145:                                     ; preds = %for.cond.141
  %125 = load float*, float** %ogcp1, align 8
  %arrayidx146 = getelementptr inbounds float, float* %125, i64 0
  %126 = load float, float* %arrayidx146, align 4
  %127 = load i32, i32* %i, align 4
  %sub147 = sub nsw i32 %127, 1
  %idxprom148 = sext i32 %sub147 to i64
  %128 = load float*, float** %fgcp1, align 8
  %arrayidx149 = getelementptr inbounds float, float* %128, i64 %idxprom148
  %129 = load float, float* %arrayidx149, align 4
  %add150 = fadd float %126, %129
  %130 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %130 to i64
  %131 = load float*, float** %initverticalw, align 8
  %arrayidx152 = getelementptr inbounds float, float* %131, i64 %idxprom151
  %132 = load float, float* %arrayidx152, align 4
  %add153 = fadd float %132, %add150
  store float %add153, float* %arrayidx152, align 4
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.body.145
  %133 = load i32, i32* %i, align 4
  %inc155 = add nsw i32 %133, 1
  store i32 %inc155, i32* %i, align 4
  br label %for.cond.141

for.end.156:                                      ; preds = %for.cond.141
  store i32 1, i32* %j, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.170, %for.end.156
  %134 = load i32, i32* %j, align 4
  %135 = load i32, i32* %lgth2, align 4
  %add158 = add nsw i32 %135, 1
  %cmp159 = icmp slt i32 %134, %add158
  br i1 %cmp159, label %for.body.161, label %for.end.172

for.body.161:                                     ; preds = %for.cond.157
  %136 = load float*, float** %ogcp2, align 8
  %arrayidx162 = getelementptr inbounds float, float* %136, i64 0
  %137 = load float, float* %arrayidx162, align 4
  %138 = load i32, i32* %j, align 4
  %sub163 = sub nsw i32 %138, 1
  %idxprom164 = sext i32 %sub163 to i64
  %139 = load float*, float** %fgcp2, align 8
  %arrayidx165 = getelementptr inbounds float, float* %139, i64 %idxprom164
  %140 = load float, float* %arrayidx165, align 4
  %add166 = fadd float %137, %140
  %141 = load i32, i32* %j, align 4
  %idxprom167 = sext i32 %141 to i64
  %142 = load float*, float** %currentw, align 8
  %arrayidx168 = getelementptr inbounds float, float* %142, i64 %idxprom167
  %143 = load float, float* %arrayidx168, align 4
  %add169 = fadd float %143, %add166
  store float %add169, float* %arrayidx168, align 4
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.161
  %144 = load i32, i32* %j, align 4
  %inc171 = add nsw i32 %144, 1
  store i32 %inc171, i32* %j, align 4
  br label %for.cond.157

for.end.172:                                      ; preds = %for.cond.157
  %145 = load float*, float** %initverticalw, align 8
  %arrayidx173 = getelementptr inbounds float, float* %145, i64 0
  %146 = load float, float* %arrayidx173, align 4
  %147 = load float**, float*** %WMMTX, align 8
  %arrayidx174 = getelementptr inbounds float*, float** %147, i64 0
  %148 = load float*, float** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds float, float* %148, i64 0
  store float %146, float* %arrayidx175, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.186, %for.end.172
  %149 = load i32, i32* %i, align 4
  %150 = load i32, i32* %lgth1, align 4
  %add177 = add nsw i32 %150, 1
  %cmp178 = icmp slt i32 %149, %add177
  br i1 %cmp178, label %for.body.180, label %for.end.188

for.body.180:                                     ; preds = %for.cond.176
  %151 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %151 to i64
  %152 = load float*, float** %initverticalw, align 8
  %arrayidx182 = getelementptr inbounds float, float* %152, i64 %idxprom181
  %153 = load float, float* %arrayidx182, align 4
  %154 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %154 to i64
  %155 = load float**, float*** %WMMTX, align 8
  %arrayidx184 = getelementptr inbounds float*, float** %155, i64 %idxprom183
  %156 = load float*, float** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds float, float* %156, i64 0
  store float %153, float* %arrayidx185, align 4
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.body.180
  %157 = load i32, i32* %i, align 4
  %inc187 = add nsw i32 %157, 1
  store i32 %inc187, i32* %i, align 4
  br label %for.cond.176

for.end.188:                                      ; preds = %for.cond.176
  store i32 1, i32* %j, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.199, %for.end.188
  %158 = load i32, i32* %j, align 4
  %159 = load i32, i32* %lgth2, align 4
  %add190 = add nsw i32 %159, 1
  %cmp191 = icmp slt i32 %158, %add190
  br i1 %cmp191, label %for.body.193, label %for.end.201

for.body.193:                                     ; preds = %for.cond.189
  %160 = load i32, i32* %j, align 4
  %idxprom194 = sext i32 %160 to i64
  %161 = load float*, float** %currentw, align 8
  %arrayidx195 = getelementptr inbounds float, float* %161, i64 %idxprom194
  %162 = load float, float* %arrayidx195, align 4
  %163 = load i32, i32* %j, align 4
  %idxprom196 = sext i32 %163 to i64
  %164 = load float**, float*** %WMMTX, align 8
  %arrayidx197 = getelementptr inbounds float*, float** %164, i64 0
  %165 = load float*, float** %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds float, float* %165, i64 %idxprom196
  store float %162, float* %arrayidx198, align 4
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.body.193
  %166 = load i32, i32* %j, align 4
  %inc200 = add nsw i32 %166, 1
  store i32 %inc200, i32* %j, align 4
  br label %for.cond.189

for.end.201:                                      ; preds = %for.cond.189
  store i32 1, i32* %j, align 4
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.216, %for.end.201
  %167 = load i32, i32* %j, align 4
  %168 = load i32, i32* %lgth2, align 4
  %add203 = add nsw i32 %168, 1
  %cmp204 = icmp slt i32 %167, %add203
  br i1 %cmp204, label %for.body.206, label %for.end.218

for.body.206:                                     ; preds = %for.cond.202
  %169 = load i32, i32* %j, align 4
  %sub207 = sub nsw i32 %169, 1
  %idxprom208 = sext i32 %sub207 to i64
  %170 = load float*, float** %currentw, align 8
  %arrayidx209 = getelementptr inbounds float, float* %170, i64 %idxprom208
  %171 = load float, float* %arrayidx209, align 4
  %172 = load float*, float** %ogcp1, align 8
  %arrayidx210 = getelementptr inbounds float, float* %172, i64 1
  %173 = load float, float* %arrayidx210, align 4
  %add211 = fadd float %171, %173
  %174 = load i32, i32* %j, align 4
  %idxprom212 = sext i32 %174 to i64
  %175 = load float*, float** %m, align 8
  %arrayidx213 = getelementptr inbounds float, float* %175, i64 %idxprom212
  store float %add211, float* %arrayidx213, align 4
  %176 = load i32, i32* %j, align 4
  %idxprom214 = sext i32 %176 to i64
  %177 = load i32*, i32** %mp, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %177, i64 %idxprom214
  store i32 0, i32* %arrayidx215, align 4
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.body.206
  %178 = load i32, i32* %j, align 4
  %inc217 = add nsw i32 %178, 1
  store i32 %inc217, i32* %j, align 4
  br label %for.cond.202

for.end.218:                                      ; preds = %for.cond.202
  %179 = load i32, i32* %lgth2, align 4
  %sub219 = sub nsw i32 %179, 1
  %idxprom220 = sext i32 %sub219 to i64
  %180 = load float*, float** %currentw, align 8
  %arrayidx221 = getelementptr inbounds float, float* %180, i64 %idxprom220
  %181 = load float, float* %arrayidx221, align 4
  %182 = load float*, float** %lastverticalw, align 8
  %arrayidx222 = getelementptr inbounds float, float* %182, i64 0
  store float %181, float* %arrayidx222, align 4
  %183 = load i32, i32* %lgth1, align 4
  %conv223 = sitofp i32 %183 to double
  %mul = fmul double %conv223, 5.000000e-01
  %conv224 = fptosi double %mul to i32
  store i32 %conv224, i32* %imid, align 4
  store i32 0, i32* %jumpi, align 4
  %184 = load i32, i32* %lgth1, align 4
  %add225 = add nsw i32 %184, 1
  store i32 %add225, i32* %lasti, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.226

for.cond.226:                                     ; preds = %for.inc.334, %for.end.218
  %185 = load i32, i32* %i, align 4
  %186 = load i32, i32* %lasti, align 4
  %cmp227 = icmp slt i32 %185, %186
  br i1 %cmp227, label %for.body.229, label %for.end.336

for.body.229:                                     ; preds = %for.cond.226
  %187 = load float*, float** %previousw, align 8
  store float* %187, float** %wtmp, align 8
  %188 = load float*, float** %currentw, align 8
  store float* %188, float** %previousw, align 8
  %189 = load float*, float** %wtmp, align 8
  store float* %189, float** %currentw, align 8
  %190 = load i32, i32* %i, align 4
  %sub230 = sub nsw i32 %190, 1
  %idxprom231 = sext i32 %sub230 to i64
  %191 = load float*, float** %initverticalw, align 8
  %arrayidx232 = getelementptr inbounds float, float* %191, i64 %idxprom231
  %192 = load float, float* %arrayidx232, align 4
  %193 = load float*, float** %previousw, align 8
  %arrayidx233 = getelementptr inbounds float, float* %193, i64 0
  store float %192, float* %arrayidx233, align 4
  %194 = load float*, float** %currentw, align 8
  %195 = load float**, float*** %cpmx1.addr, align 8
  %196 = load i32, i32* %ist.addr, align 4
  %idx.ext234 = sext i32 %196 to i64
  %add.ptr235 = getelementptr inbounds float*, float** %195, i64 %idx.ext234
  %197 = load float**, float*** %cpmx2.addr, align 8
  %198 = load i32, i32* %jst.addr, align 4
  %idx.ext236 = sext i32 %198 to i64
  %add.ptr237 = getelementptr inbounds float*, float** %197, i64 %idx.ext236
  %199 = load i32, i32* %i, align 4
  %200 = load i32, i32* %lgth2, align 4
  %201 = load float**, float*** %floatwork, align 8
  %202 = load i32**, i32*** %intwork, align 8
  call void @match_ribosum(float* %194, float** %add.ptr235, float** %add.ptr237, i32 %199, i32 %200, float** %201, i32** %202, i32 0)
  %203 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %203 to i64
  %204 = load float*, float** %initverticalw, align 8
  %arrayidx239 = getelementptr inbounds float, float* %204, i64 %idxprom238
  %205 = load float, float* %arrayidx239, align 4
  %206 = load float*, float** %currentw, align 8
  %arrayidx240 = getelementptr inbounds float, float* %206, i64 0
  store float %205, float* %arrayidx240, align 4
  %207 = load i32, i32* %i, align 4
  %idxprom241 = sext i32 %207 to i64
  %208 = load float*, float** %ogcp1, align 8
  %arrayidx242 = getelementptr inbounds float, float* %208, i64 %idxprom241
  %209 = load float, float* %arrayidx242, align 4
  %210 = load float*, float** %m, align 8
  %arrayidx243 = getelementptr inbounds float, float* %210, i64 0
  store float %209, float* %arrayidx243, align 4
  %211 = load i32, i32* %i, align 4
  %212 = load i32, i32* %imid, align 4
  %cmp244 = icmp eq i32 %211, %212
  br i1 %cmp244, label %if.then.246, label %if.end.249

if.then.246:                                      ; preds = %for.body.229
  %213 = load float*, float** %m, align 8
  %arrayidx247 = getelementptr inbounds float, float* %213, i64 0
  %214 = load float, float* %arrayidx247, align 4
  %215 = load float*, float** %midm, align 8
  %arrayidx248 = getelementptr inbounds float, float* %215, i64 0
  store float %214, float* %arrayidx248, align 4
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.246, %for.body.229
  %216 = load float*, float** %previousw, align 8
  %arrayidx250 = getelementptr inbounds float, float* %216, i64 0
  %217 = load float, float* %arrayidx250, align 4
  %218 = load float*, float** %ogcp2, align 8
  %arrayidx251 = getelementptr inbounds float, float* %218, i64 1
  %219 = load float, float* %arrayidx251, align 4
  %add252 = fadd float %217, %219
  store float %add252, float* %mi, align 4
  store i32 0, i32* %mpi, align 4
  %220 = load float*, float** %m, align 8
  %add.ptr253 = getelementptr inbounds float, float* %220, i64 1
  store float* %add.ptr253, float** %mjpt, align 8
  %221 = load float*, float** %previousw, align 8
  store float* %221, float** %prept, align 8
  %222 = load float*, float** %currentw, align 8
  %add.ptr254 = getelementptr inbounds float, float* %222, i64 1
  store float* %add.ptr254, float** %curpt, align 8
  %223 = load i32*, i32** %mp, align 8
  %add.ptr255 = getelementptr inbounds i32, i32* %223, i64 1
  store i32* %add.ptr255, i32** %mpjpt, align 8
  %224 = load i32, i32* %lgth2, align 4
  %add256 = add nsw i32 %224, 1
  store i32 %add256, i32* %lastj, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.319, %if.end.249
  %225 = load i32, i32* %j, align 4
  %226 = load i32, i32* %lastj, align 4
  %cmp258 = icmp slt i32 %225, %226
  br i1 %cmp258, label %for.body.260, label %for.end.321

for.body.260:                                     ; preds = %for.cond.257
  %227 = load float*, float** %prept, align 8
  %228 = load float, float* %227, align 4
  store float %228, float* %wm, align 4
  %229 = load float, float* %mi, align 4
  %230 = load i32, i32* %j, align 4
  %sub261 = sub nsw i32 %230, 1
  %idxprom262 = sext i32 %sub261 to i64
  %231 = load float*, float** %fgcp2, align 8
  %arrayidx263 = getelementptr inbounds float, float* %231, i64 %idxprom262
  %232 = load float, float* %arrayidx263, align 4
  %add264 = fadd float %229, %232
  store float %add264, float* %g, align 4
  %233 = load float, float* %g, align 4
  %234 = load float, float* %wm, align 4
  %cmp265 = fcmp ogt float %233, %234
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %for.body.260
  %235 = load float, float* %g, align 4
  store float %235, float* %wm, align 4
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.267, %for.body.260
  %236 = load float*, float** %prept, align 8
  %237 = load float, float* %236, align 4
  %238 = load i32, i32* %j, align 4
  %idxprom269 = sext i32 %238 to i64
  %239 = load float*, float** %ogcp2, align 8
  %arrayidx270 = getelementptr inbounds float, float* %239, i64 %idxprom269
  %240 = load float, float* %arrayidx270, align 4
  %add271 = fadd float %237, %240
  store float %add271, float* %g, align 4
  %241 = load float, float* %g, align 4
  %242 = load float, float* %mi, align 4
  %cmp272 = fcmp oge float %241, %242
  br i1 %cmp272, label %if.then.274, label %if.end.276

if.then.274:                                      ; preds = %if.end.268
  %243 = load float, float* %g, align 4
  store float %243, float* %mi, align 4
  %244 = load i32, i32* %j, align 4
  %sub275 = sub nsw i32 %244, 1
  store i32 %sub275, i32* %mpi, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.274, %if.end.268
  %245 = load float*, float** %mjpt, align 8
  %246 = load float, float* %245, align 4
  %247 = load i32, i32* %i, align 4
  %sub277 = sub nsw i32 %247, 1
  %idxprom278 = sext i32 %sub277 to i64
  %248 = load float*, float** %fgcp1, align 8
  %arrayidx279 = getelementptr inbounds float, float* %248, i64 %idxprom278
  %249 = load float, float* %arrayidx279, align 4
  %add280 = fadd float %246, %249
  store float %add280, float* %g, align 4
  %250 = load float, float* %g, align 4
  %251 = load float, float* %wm, align 4
  %cmp281 = fcmp ogt float %250, %251
  br i1 %cmp281, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %if.end.276
  %252 = load float, float* %g, align 4
  store float %252, float* %wm, align 4
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.283, %if.end.276
  %253 = load float*, float** %prept, align 8
  %254 = load float, float* %253, align 4
  %255 = load i32, i32* %i, align 4
  %idxprom285 = sext i32 %255 to i64
  %256 = load float*, float** %ogcp1, align 8
  %arrayidx286 = getelementptr inbounds float, float* %256, i64 %idxprom285
  %257 = load float, float* %arrayidx286, align 4
  %add287 = fadd float %254, %257
  store float %add287, float* %g, align 4
  %258 = load float, float* %g, align 4
  %259 = load float*, float** %mjpt, align 8
  %260 = load float, float* %259, align 4
  %cmp288 = fcmp oge float %258, %260
  br i1 %cmp288, label %if.then.290, label %if.end.292

if.then.290:                                      ; preds = %if.end.284
  %261 = load float, float* %g, align 4
  %262 = load float*, float** %mjpt, align 8
  store float %261, float* %262, align 4
  %263 = load i32, i32* %i, align 4
  %sub291 = sub nsw i32 %263, 1
  %264 = load i32*, i32** %mpjpt, align 8
  store i32 %sub291, i32* %264, align 4
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.290, %if.end.284
  %265 = load float, float* %wm, align 4
  %266 = load float*, float** %curpt, align 8
  %267 = load float, float* %266, align 4
  %add293 = fadd float %267, %265
  store float %add293, float* %266, align 4
  %268 = load float*, float** %curpt, align 8
  %269 = load float, float* %268, align 4
  %270 = load i32, i32* %j, align 4
  %idxprom294 = sext i32 %270 to i64
  %271 = load i32, i32* %i, align 4
  %idxprom295 = sext i32 %271 to i64
  %272 = load float**, float*** %WMMTX, align 8
  %arrayidx296 = getelementptr inbounds float*, float** %272, i64 %idxprom295
  %273 = load float*, float** %arrayidx296, align 8
  %arrayidx297 = getelementptr inbounds float, float* %273, i64 %idxprom294
  store float %269, float* %arrayidx297, align 4
  %274 = load float*, float** %mjpt, align 8
  %275 = load float, float* %274, align 4
  %276 = load i32, i32* %j, align 4
  %idxprom298 = sext i32 %276 to i64
  %277 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %277 to i64
  %278 = load float**, float*** %WMMTX2, align 8
  %arrayidx300 = getelementptr inbounds float*, float** %278, i64 %idxprom299
  %279 = load float*, float** %arrayidx300, align 8
  %arrayidx301 = getelementptr inbounds float, float* %279, i64 %idxprom298
  store float %275, float* %arrayidx301, align 4
  %280 = load i32, i32* %i, align 4
  %281 = load i32, i32* %imid, align 4
  %cmp302 = icmp eq i32 %280, %281
  br i1 %cmp302, label %if.then.304, label %if.end.315

if.then.304:                                      ; preds = %if.end.292
  %282 = load i32*, i32** %mpjpt, align 8
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %j, align 4
  %idxprom305 = sext i32 %284 to i64
  %285 = load i32*, i32** %jumpbackj, align 8
  %arrayidx306 = getelementptr inbounds i32, i32* %285, i64 %idxprom305
  store i32 %283, i32* %arrayidx306, align 4
  %286 = load i32, i32* %mpi, align 4
  %287 = load i32, i32* %j, align 4
  %idxprom307 = sext i32 %287 to i64
  %288 = load i32*, i32** %jumpbacki, align 8
  %arrayidx308 = getelementptr inbounds i32, i32* %288, i64 %idxprom307
  store i32 %286, i32* %arrayidx308, align 4
  %289 = load float*, float** %curpt, align 8
  %290 = load float, float* %289, align 4
  %291 = load i32, i32* %j, align 4
  %idxprom309 = sext i32 %291 to i64
  %292 = load float*, float** %midw, align 8
  %arrayidx310 = getelementptr inbounds float, float* %292, i64 %idxprom309
  store float %290, float* %arrayidx310, align 4
  %293 = load float*, float** %mjpt, align 8
  %294 = load float, float* %293, align 4
  %295 = load i32, i32* %j, align 4
  %idxprom311 = sext i32 %295 to i64
  %296 = load float*, float** %midm, align 8
  %arrayidx312 = getelementptr inbounds float, float* %296, i64 %idxprom311
  store float %294, float* %arrayidx312, align 4
  %297 = load float, float* %mi, align 4
  %298 = load i32, i32* %j, align 4
  %idxprom313 = sext i32 %298 to i64
  %299 = load float*, float** %midn, align 8
  %arrayidx314 = getelementptr inbounds float, float* %299, i64 %idxprom313
  store float %297, float* %arrayidx314, align 4
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.304, %if.end.292
  %300 = load float*, float** %mjpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %300, i32 1
  store float* %incdec.ptr, float** %mjpt, align 8
  %301 = load float*, float** %prept, align 8
  %incdec.ptr316 = getelementptr inbounds float, float* %301, i32 1
  store float* %incdec.ptr316, float** %prept, align 8
  %302 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr317 = getelementptr inbounds i32, i32* %302, i32 1
  store i32* %incdec.ptr317, i32** %mpjpt, align 8
  %303 = load float*, float** %curpt, align 8
  %incdec.ptr318 = getelementptr inbounds float, float* %303, i32 1
  store float* %incdec.ptr318, float** %curpt, align 8
  br label %for.inc.319

for.inc.319:                                      ; preds = %if.end.315
  %304 = load i32, i32* %j, align 4
  %inc320 = add nsw i32 %304, 1
  store i32 %inc320, i32* %j, align 4
  br label %for.cond.257

for.end.321:                                      ; preds = %for.cond.257
  %305 = load i32, i32* %lgth2, align 4
  %sub322 = sub nsw i32 %305, 1
  %idxprom323 = sext i32 %sub322 to i64
  %306 = load float*, float** %currentw, align 8
  %arrayidx324 = getelementptr inbounds float, float* %306, i64 %idxprom323
  %307 = load float, float* %arrayidx324, align 4
  %308 = load i32, i32* %i, align 4
  %idxprom325 = sext i32 %308 to i64
  %309 = load float*, float** %lastverticalw, align 8
  %arrayidx326 = getelementptr inbounds float, float* %309, i64 %idxprom325
  store float %307, float* %arrayidx326, align 4
  %310 = load i32, i32* %lgth2, align 4
  %sub327 = sub nsw i32 %310, 1
  %idxprom328 = sext i32 %sub327 to i64
  %311 = load float*, float** %m, align 8
  %arrayidx329 = getelementptr inbounds float, float* %311, i64 %idxprom328
  %312 = load float, float* %arrayidx329, align 4
  %313 = load i32, i32* %lgth2, align 4
  %idxprom330 = sext i32 %313 to i64
  %314 = load i32, i32* %i, align 4
  %idxprom331 = sext i32 %314 to i64
  %315 = load float**, float*** %WMMTX2, align 8
  %arrayidx332 = getelementptr inbounds float*, float** %315, i64 %idxprom331
  %316 = load float*, float** %arrayidx332, align 8
  %arrayidx333 = getelementptr inbounds float, float* %316, i64 %idxprom330
  store float %312, float* %arrayidx333, align 4
  br label %for.inc.334

for.inc.334:                                      ; preds = %for.end.321
  %317 = load i32, i32* %i, align 4
  %inc335 = add nsw i32 %317, 1
  store i32 %inc335, i32* %i, align 4
  br label %for.cond.226

for.end.336:                                      ; preds = %for.cond.226
  %318 = load float*, float** %initverticalw, align 8
  %319 = load float**, float*** %cpmx2.addr, align 8
  %320 = load i32, i32* %jst.addr, align 4
  %idx.ext337 = sext i32 %320 to i64
  %add.ptr338 = getelementptr inbounds float*, float** %319, i64 %idx.ext337
  %321 = load float**, float*** %cpmx1.addr, align 8
  %322 = load i32, i32* %ist.addr, align 4
  %idx.ext339 = sext i32 %322 to i64
  %add.ptr340 = getelementptr inbounds float*, float** %321, i64 %idx.ext339
  %323 = load i32, i32* %lgth2, align 4
  %sub341 = sub nsw i32 %323, 1
  %324 = load i32, i32* %lgth1, align 4
  %325 = load float**, float*** %floatwork, align 8
  %326 = load i32**, i32*** %intwork, align 8
  call void @match_ribosum(float* %318, float** %add.ptr338, float** %add.ptr340, i32 %sub341, i32 %324, float** %325, i32** %326, i32 1)
  %327 = load float*, float** %currentw, align 8
  %328 = load float**, float*** %cpmx1.addr, align 8
  %329 = load i32, i32* %ist.addr, align 4
  %idx.ext342 = sext i32 %329 to i64
  %add.ptr343 = getelementptr inbounds float*, float** %328, i64 %idx.ext342
  %330 = load float**, float*** %cpmx2.addr, align 8
  %331 = load i32, i32* %jst.addr, align 4
  %idx.ext344 = sext i32 %331 to i64
  %add.ptr345 = getelementptr inbounds float*, float** %330, i64 %idx.ext344
  %332 = load i32, i32* %lgth1, align 4
  %sub346 = sub nsw i32 %332, 1
  %333 = load i32, i32* %lgth2, align 4
  %334 = load float**, float*** %floatwork, align 8
  %335 = load i32**, i32*** %intwork, align 8
  call void @match_ribosum(float* %327, float** %add.ptr343, float** %add.ptr345, i32 %sub346, i32 %333, float** %334, i32** %335, i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond.347

for.cond.347:                                     ; preds = %for.inc.362, %for.end.336
  %336 = load i32, i32* %i, align 4
  %337 = load i32, i32* %lgth1, align 4
  %sub348 = sub nsw i32 %337, 1
  %cmp349 = icmp slt i32 %336, %sub348
  br i1 %cmp349, label %for.body.351, label %for.end.364

for.body.351:                                     ; preds = %for.cond.347
  %338 = load i32, i32* %lgth1, align 4
  %sub352 = sub nsw i32 %338, 1
  %idxprom353 = sext i32 %sub352 to i64
  %339 = load float*, float** %fgcp1, align 8
  %arrayidx354 = getelementptr inbounds float, float* %339, i64 %idxprom353
  %340 = load float, float* %arrayidx354, align 4
  %341 = load i32, i32* %i, align 4
  %add355 = add nsw i32 %341, 1
  %idxprom356 = sext i32 %add355 to i64
  %342 = load float*, float** %ogcp1, align 8
  %arrayidx357 = getelementptr inbounds float, float* %342, i64 %idxprom356
  %343 = load float, float* %arrayidx357, align 4
  %add358 = fadd float %340, %343
  %344 = load i32, i32* %i, align 4
  %idxprom359 = sext i32 %344 to i64
  %345 = load float*, float** %initverticalw, align 8
  %arrayidx360 = getelementptr inbounds float, float* %345, i64 %idxprom359
  %346 = load float, float* %arrayidx360, align 4
  %add361 = fadd float %346, %add358
  store float %add361, float* %arrayidx360, align 4
  br label %for.inc.362

for.inc.362:                                      ; preds = %for.body.351
  %347 = load i32, i32* %i, align 4
  %inc363 = add nsw i32 %347, 1
  store i32 %inc363, i32* %i, align 4
  br label %for.cond.347

for.end.364:                                      ; preds = %for.cond.347
  store i32 0, i32* %j, align 4
  br label %for.cond.365

for.cond.365:                                     ; preds = %for.inc.380, %for.end.364
  %348 = load i32, i32* %j, align 4
  %349 = load i32, i32* %lgth2, align 4
  %sub366 = sub nsw i32 %349, 1
  %cmp367 = icmp slt i32 %348, %sub366
  br i1 %cmp367, label %for.body.369, label %for.end.382

for.body.369:                                     ; preds = %for.cond.365
  %350 = load i32, i32* %lgth2, align 4
  %sub370 = sub nsw i32 %350, 1
  %idxprom371 = sext i32 %sub370 to i64
  %351 = load float*, float** %fgcp2, align 8
  %arrayidx372 = getelementptr inbounds float, float* %351, i64 %idxprom371
  %352 = load float, float* %arrayidx372, align 4
  %353 = load i32, i32* %j, align 4
  %add373 = add nsw i32 %353, 1
  %idxprom374 = sext i32 %add373 to i64
  %354 = load float*, float** %ogcp2, align 8
  %arrayidx375 = getelementptr inbounds float, float* %354, i64 %idxprom374
  %355 = load float, float* %arrayidx375, align 4
  %add376 = fadd float %352, %355
  %356 = load i32, i32* %j, align 4
  %idxprom377 = sext i32 %356 to i64
  %357 = load float*, float** %currentw, align 8
  %arrayidx378 = getelementptr inbounds float, float* %357, i64 %idxprom377
  %358 = load float, float* %arrayidx378, align 4
  %add379 = fadd float %358, %add376
  store float %add379, float* %arrayidx378, align 4
  br label %for.inc.380

for.inc.380:                                      ; preds = %for.body.369
  %359 = load i32, i32* %j, align 4
  %inc381 = add nsw i32 %359, 1
  store i32 %inc381, i32* %j, align 4
  br label %for.cond.365

for.end.382:                                      ; preds = %for.cond.365
  store i32 0, i32* %i, align 4
  br label %for.cond.383

for.cond.383:                                     ; preds = %for.inc.401, %for.end.382
  %360 = load i32, i32* %i, align 4
  %361 = load i32, i32* %lgth1, align 4
  %sub384 = sub nsw i32 %361, 1
  %cmp385 = icmp slt i32 %360, %sub384
  br i1 %cmp385, label %for.body.387, label %for.end.403

for.body.387:                                     ; preds = %for.cond.383
  %362 = load i32, i32* %lgth1, align 4
  %sub388 = sub nsw i32 %362, 1
  %idxprom389 = sext i32 %sub388 to i64
  %363 = load float*, float** %fgcp1, align 8
  %arrayidx390 = getelementptr inbounds float, float* %363, i64 %idxprom389
  %364 = load float, float* %arrayidx390, align 4
  %365 = load i32, i32* %i, align 4
  %add391 = add nsw i32 %365, 1
  %idxprom392 = sext i32 %add391 to i64
  %366 = load float*, float** %ogcp1, align 8
  %arrayidx393 = getelementptr inbounds float, float* %366, i64 %idxprom392
  %367 = load float, float* %arrayidx393, align 4
  %add394 = fadd float %364, %367
  %368 = load i32, i32* %lgth2, align 4
  %sub395 = sub nsw i32 %368, 1
  %idxprom396 = sext i32 %sub395 to i64
  %369 = load i32, i32* %i, align 4
  %idxprom397 = sext i32 %369 to i64
  %370 = load float**, float*** %WMMTX, align 8
  %arrayidx398 = getelementptr inbounds float*, float** %370, i64 %idxprom397
  %371 = load float*, float** %arrayidx398, align 8
  %arrayidx399 = getelementptr inbounds float, float* %371, i64 %idxprom396
  %372 = load float, float* %arrayidx399, align 4
  %add400 = fadd float %372, %add394
  store float %add400, float* %arrayidx399, align 4
  br label %for.inc.401

for.inc.401:                                      ; preds = %for.body.387
  %373 = load i32, i32* %i, align 4
  %inc402 = add nsw i32 %373, 1
  store i32 %inc402, i32* %i, align 4
  br label %for.cond.383

for.end.403:                                      ; preds = %for.cond.383
  store i32 0, i32* %j, align 4
  br label %for.cond.404

for.cond.404:                                     ; preds = %for.inc.422, %for.end.403
  %374 = load i32, i32* %j, align 4
  %375 = load i32, i32* %lgth2, align 4
  %sub405 = sub nsw i32 %375, 1
  %cmp406 = icmp slt i32 %374, %sub405
  br i1 %cmp406, label %for.body.408, label %for.end.424

for.body.408:                                     ; preds = %for.cond.404
  %376 = load i32, i32* %lgth2, align 4
  %sub409 = sub nsw i32 %376, 1
  %idxprom410 = sext i32 %sub409 to i64
  %377 = load float*, float** %fgcp2, align 8
  %arrayidx411 = getelementptr inbounds float, float* %377, i64 %idxprom410
  %378 = load float, float* %arrayidx411, align 4
  %379 = load i32, i32* %j, align 4
  %add412 = add nsw i32 %379, 1
  %idxprom413 = sext i32 %add412 to i64
  %380 = load float*, float** %ogcp2, align 8
  %arrayidx414 = getelementptr inbounds float, float* %380, i64 %idxprom413
  %381 = load float, float* %arrayidx414, align 4
  %add415 = fadd float %378, %381
  %382 = load i32, i32* %j, align 4
  %idxprom416 = sext i32 %382 to i64
  %383 = load i32, i32* %lgth1, align 4
  %sub417 = sub nsw i32 %383, 1
  %idxprom418 = sext i32 %sub417 to i64
  %384 = load float**, float*** %WMMTX, align 8
  %arrayidx419 = getelementptr inbounds float*, float** %384, i64 %idxprom418
  %385 = load float*, float** %arrayidx419, align 8
  %arrayidx420 = getelementptr inbounds float, float* %385, i64 %idxprom416
  %386 = load float, float* %arrayidx420, align 4
  %add421 = fadd float %386, %add415
  store float %add421, float* %arrayidx420, align 4
  br label %for.inc.422

for.inc.422:                                      ; preds = %for.body.408
  %387 = load i32, i32* %j, align 4
  %inc423 = add nsw i32 %387, 1
  store i32 %inc423, i32* %j, align 4
  br label %for.cond.404

for.end.424:                                      ; preds = %for.cond.404
  %388 = load i32, i32* %lgth2, align 4
  %sub425 = sub nsw i32 %388, 1
  store i32 %sub425, i32* %j, align 4
  br label %for.cond.426

for.cond.426:                                     ; preds = %for.inc.442, %for.end.424
  %389 = load i32, i32* %j, align 4
  %cmp427 = icmp sgt i32 %389, 0
  br i1 %cmp427, label %for.body.429, label %for.end.443

for.body.429:                                     ; preds = %for.cond.426
  %390 = load i32, i32* %j, align 4
  %idxprom430 = sext i32 %390 to i64
  %391 = load float*, float** %currentw, align 8
  %arrayidx431 = getelementptr inbounds float, float* %391, i64 %idxprom430
  %392 = load float, float* %arrayidx431, align 4
  %393 = load i32, i32* %lgth2, align 4
  %sub432 = sub nsw i32 %393, 2
  %idxprom433 = sext i32 %sub432 to i64
  %394 = load float*, float** %fgcp2, align 8
  %arrayidx434 = getelementptr inbounds float, float* %394, i64 %idxprom433
  %395 = load float, float* %arrayidx434, align 4
  %add435 = fadd float %392, %395
  %396 = load i32, i32* %j, align 4
  %sub436 = sub nsw i32 %396, 1
  %idxprom437 = sext i32 %sub436 to i64
  %397 = load float*, float** %m, align 8
  %arrayidx438 = getelementptr inbounds float, float* %397, i64 %idxprom437
  store float %add435, float* %arrayidx438, align 4
  %398 = load i32, i32* %lgth1, align 4
  %sub439 = sub nsw i32 %398, 1
  %399 = load i32, i32* %j, align 4
  %idxprom440 = sext i32 %399 to i64
  %400 = load i32*, i32** %mp, align 8
  %arrayidx441 = getelementptr inbounds i32, i32* %400, i64 %idxprom440
  store i32 %sub439, i32* %arrayidx441, align 4
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.body.429
  %401 = load i32, i32* %j, align 4
  %dec = add nsw i32 %401, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.426

for.end.443:                                      ; preds = %for.cond.426
  store float -1.000000e+07, float* %firstm, align 4
  %402 = load i32, i32* %lgth1, align 4
  %sub444 = sub nsw i32 %402, 1
  store i32 %sub444, i32* %firstmp, align 4
  %403 = load i32, i32* %lgth1, align 4
  %sub445 = sub nsw i32 %403, 2
  store i32 %sub445, i32* %i, align 4
  br label %for.cond.446

for.cond.446:                                     ; preds = %for.inc.675, %for.end.443
  %404 = load i32, i32* %i, align 4
  %cmp447 = icmp sgt i32 %404, -1
  br i1 %cmp447, label %for.body.449, label %for.end.677

for.body.449:                                     ; preds = %for.cond.446
  %405 = load float*, float** %previousw, align 8
  store float* %405, float** %wtmp, align 8
  %406 = load float*, float** %currentw, align 8
  store float* %406, float** %previousw, align 8
  %407 = load float*, float** %wtmp, align 8
  store float* %407, float** %currentw, align 8
  %408 = load i32, i32* %i, align 4
  %add450 = add nsw i32 %408, 1
  %idxprom451 = sext i32 %add450 to i64
  %409 = load float*, float** %initverticalw, align 8
  %arrayidx452 = getelementptr inbounds float, float* %409, i64 %idxprom451
  %410 = load float, float* %arrayidx452, align 4
  %411 = load i32, i32* %lgth2, align 4
  %sub453 = sub nsw i32 %411, 1
  %idxprom454 = sext i32 %sub453 to i64
  %412 = load float*, float** %previousw, align 8
  %arrayidx455 = getelementptr inbounds float, float* %412, i64 %idxprom454
  store float %410, float* %arrayidx455, align 4
  %413 = load float*, float** %currentw, align 8
  %414 = load float**, float*** %cpmx1.addr, align 8
  %415 = load i32, i32* %ist.addr, align 4
  %idx.ext456 = sext i32 %415 to i64
  %add.ptr457 = getelementptr inbounds float*, float** %414, i64 %idx.ext456
  %416 = load float**, float*** %cpmx2.addr, align 8
  %417 = load i32, i32* %jst.addr, align 4
  %idx.ext458 = sext i32 %417 to i64
  %add.ptr459 = getelementptr inbounds float*, float** %416, i64 %idx.ext458
  %418 = load i32, i32* %i, align 4
  %419 = load i32, i32* %lgth2, align 4
  %420 = load float**, float*** %floatwork, align 8
  %421 = load i32**, i32*** %intwork, align 8
  call void @match_ribosum(float* %413, float** %add.ptr457, float** %add.ptr459, i32 %418, i32 %419, float** %420, i32** %421, i32 0)
  %422 = load i32, i32* %i, align 4
  %idxprom460 = sext i32 %422 to i64
  %423 = load float*, float** %initverticalw, align 8
  %arrayidx461 = getelementptr inbounds float, float* %423, i64 %idxprom460
  %424 = load float, float* %arrayidx461, align 4
  %425 = load i32, i32* %lgth2, align 4
  %sub462 = sub nsw i32 %425, 1
  %idxprom463 = sext i32 %sub462 to i64
  %426 = load float*, float** %currentw, align 8
  %arrayidx464 = getelementptr inbounds float, float* %426, i64 %idxprom463
  store float %424, float* %arrayidx464, align 4
  %427 = load i32, i32* %lgth2, align 4
  %sub465 = sub nsw i32 %427, 1
  %idxprom466 = sext i32 %sub465 to i64
  %428 = load float*, float** %previousw, align 8
  %arrayidx467 = getelementptr inbounds float, float* %428, i64 %idxprom466
  %429 = load float, float* %arrayidx467, align 4
  %430 = load i32, i32* %lgth2, align 4
  %sub468 = sub nsw i32 %430, 2
  %idxprom469 = sext i32 %sub468 to i64
  %431 = load float*, float** %fgcp2, align 8
  %arrayidx470 = getelementptr inbounds float, float* %431, i64 %idxprom469
  %432 = load float, float* %arrayidx470, align 4
  %add471 = fadd float %429, %432
  store float %add471, float* %mi, align 4
  %433 = load i32, i32* %lgth2, align 4
  %sub472 = sub nsw i32 %433, 1
  store i32 %sub472, i32* %mpi, align 4
  %434 = load float*, float** %m, align 8
  %435 = load i32, i32* %lgth2, align 4
  %idx.ext473 = sext i32 %435 to i64
  %add.ptr474 = getelementptr inbounds float, float* %434, i64 %idx.ext473
  %add.ptr475 = getelementptr inbounds float, float* %add.ptr474, i64 -2
  store float* %add.ptr475, float** %mjpt, align 8
  %436 = load float*, float** %previousw, align 8
  %437 = load i32, i32* %lgth2, align 4
  %idx.ext476 = sext i32 %437 to i64
  %add.ptr477 = getelementptr inbounds float, float* %436, i64 %idx.ext476
  %add.ptr478 = getelementptr inbounds float, float* %add.ptr477, i64 -1
  store float* %add.ptr478, float** %prept, align 8
  %438 = load float*, float** %currentw, align 8
  %439 = load i32, i32* %lgth2, align 4
  %idx.ext479 = sext i32 %439 to i64
  %add.ptr480 = getelementptr inbounds float, float* %438, i64 %idx.ext479
  %add.ptr481 = getelementptr inbounds float, float* %add.ptr480, i64 -2
  store float* %add.ptr481, float** %curpt, align 8
  %440 = load i32*, i32** %mp, align 8
  %441 = load i32, i32* %lgth2, align 4
  %idx.ext482 = sext i32 %441 to i64
  %add.ptr483 = getelementptr inbounds i32, i32* %440, i64 %idx.ext482
  %add.ptr484 = getelementptr inbounds i32, i32* %add.ptr483, i64 -2
  store i32* %add.ptr484, i32** %mpjpt, align 8
  %442 = load i32, i32* %lgth2, align 4
  %sub485 = sub nsw i32 %442, 2
  store i32 %sub485, i32* %j, align 4
  br label %for.cond.486

for.cond.486:                                     ; preds = %for.inc.572, %for.body.449
  %443 = load i32, i32* %j, align 4
  %cmp487 = icmp sgt i32 %443, -1
  br i1 %cmp487, label %for.body.489, label %for.end.574

for.body.489:                                     ; preds = %for.cond.486
  %444 = load float*, float** %prept, align 8
  %445 = load float, float* %444, align 4
  store float %445, float* %wm, align 4
  %446 = load i32, i32* %i, align 4
  %add490 = add nsw i32 %446, 1
  store i32 %add490, i32* %ijpi, align 4
  %447 = load i32, i32* %j, align 4
  %add491 = add nsw i32 %447, 1
  store i32 %add491, i32* %ijpj, align 4
  %448 = load float, float* %mi, align 4
  %449 = load i32, i32* %j, align 4
  %add492 = add nsw i32 %449, 1
  %idxprom493 = sext i32 %add492 to i64
  %450 = load float*, float** %ogcp2, align 8
  %arrayidx494 = getelementptr inbounds float, float* %450, i64 %idxprom493
  %451 = load float, float* %arrayidx494, align 4
  %add495 = fadd float %448, %451
  store float %add495, float* %g, align 4
  %452 = load float, float* %g, align 4
  %453 = load float, float* %wm, align 4
  %cmp496 = fcmp ogt float %452, %453
  br i1 %cmp496, label %if.then.498, label %if.end.500

if.then.498:                                      ; preds = %for.body.489
  %454 = load float, float* %g, align 4
  store float %454, float* %wm, align 4
  %455 = load i32, i32* %mpi, align 4
  store i32 %455, i32* %ijpj, align 4
  %456 = load i32, i32* %i, align 4
  %add499 = add nsw i32 %456, 1
  store i32 %add499, i32* %ijpi, align 4
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.498, %for.body.489
  %457 = load float*, float** %prept, align 8
  %458 = load float, float* %457, align 4
  %459 = load i32, i32* %j, align 4
  %idxprom501 = sext i32 %459 to i64
  %460 = load float*, float** %fgcp2, align 8
  %arrayidx502 = getelementptr inbounds float, float* %460, i64 %idxprom501
  %461 = load float, float* %arrayidx502, align 4
  %add503 = fadd float %458, %461
  store float %add503, float* %g, align 4
  %462 = load float, float* %g, align 4
  %463 = load float, float* %mi, align 4
  %cmp504 = fcmp oge float %462, %463
  br i1 %cmp504, label %if.then.506, label %if.end.508

if.then.506:                                      ; preds = %if.end.500
  %464 = load float, float* %g, align 4
  store float %464, float* %mi, align 4
  %465 = load i32, i32* %j, align 4
  %add507 = add nsw i32 %465, 1
  store i32 %add507, i32* %mpi, align 4
  br label %if.end.508

if.end.508:                                       ; preds = %if.then.506, %if.end.500
  %466 = load float*, float** %mjpt, align 8
  %467 = load float, float* %466, align 4
  %468 = load i32, i32* %i, align 4
  %add509 = add nsw i32 %468, 1
  %idxprom510 = sext i32 %add509 to i64
  %469 = load float*, float** %ogcp1, align 8
  %arrayidx511 = getelementptr inbounds float, float* %469, i64 %idxprom510
  %470 = load float, float* %arrayidx511, align 4
  %add512 = fadd float %467, %470
  store float %add512, float* %g, align 4
  %471 = load float, float* %g, align 4
  %472 = load float, float* %wm, align 4
  %cmp513 = fcmp ogt float %471, %472
  br i1 %cmp513, label %if.then.515, label %if.end.517

if.then.515:                                      ; preds = %if.end.508
  %473 = load float, float* %g, align 4
  store float %473, float* %wm, align 4
  %474 = load i32*, i32** %mpjpt, align 8
  %475 = load i32, i32* %474, align 4
  store i32 %475, i32* %ijpi, align 4
  %476 = load i32, i32* %j, align 4
  %add516 = add nsw i32 %476, 1
  store i32 %add516, i32* %ijpj, align 4
  br label %if.end.517

if.end.517:                                       ; preds = %if.then.515, %if.end.508
  %477 = load float*, float** %prept, align 8
  %478 = load float, float* %477, align 4
  %479 = load i32, i32* %i, align 4
  %idxprom518 = sext i32 %479 to i64
  %480 = load float*, float** %fgcp1, align 8
  %arrayidx519 = getelementptr inbounds float, float* %480, i64 %idxprom518
  %481 = load float, float* %arrayidx519, align 4
  %add520 = fadd float %478, %481
  store float %add520, float* %g, align 4
  %482 = load float, float* %g, align 4
  %483 = load float*, float** %mjpt, align 8
  %484 = load float, float* %483, align 4
  %cmp521 = fcmp oge float %482, %484
  br i1 %cmp521, label %if.then.523, label %if.end.525

if.then.523:                                      ; preds = %if.end.517
  %485 = load float, float* %g, align 4
  %486 = load float*, float** %mjpt, align 8
  store float %485, float* %486, align 4
  %487 = load i32, i32* %i, align 4
  %add524 = add nsw i32 %487, 1
  %488 = load i32*, i32** %mpjpt, align 8
  store i32 %add524, i32* %488, align 4
  br label %if.end.525

if.end.525:                                       ; preds = %if.then.523, %if.end.517
  %489 = load i32, i32* %i, align 4
  %490 = load i32, i32* %jumpi, align 4
  %cmp526 = icmp eq i32 %489, %490
  br i1 %cmp526, label %if.then.532, label %lor.lhs.false.528

lor.lhs.false.528:                                ; preds = %if.end.525
  %491 = load i32, i32* %i, align 4
  %492 = load i32, i32* %imid, align 4
  %sub529 = sub nsw i32 %492, 1
  %cmp530 = icmp eq i32 %491, %sub529
  br i1 %cmp530, label %if.then.532, label %if.end.537

if.then.532:                                      ; preds = %lor.lhs.false.528, %if.end.525
  %493 = load i32, i32* %ijpi, align 4
  %494 = load i32, i32* %j, align 4
  %idxprom533 = sext i32 %494 to i64
  %495 = load i32*, i32** %jumpforwi, align 8
  %arrayidx534 = getelementptr inbounds i32, i32* %495, i64 %idxprom533
  store i32 %493, i32* %arrayidx534, align 4
  %496 = load i32, i32* %ijpj, align 4
  %497 = load i32, i32* %j, align 4
  %idxprom535 = sext i32 %497 to i64
  %498 = load i32*, i32** %jumpforwj, align 8
  %arrayidx536 = getelementptr inbounds i32, i32* %498, i64 %idxprom535
  store i32 %496, i32* %arrayidx536, align 4
  br label %if.end.537

if.end.537:                                       ; preds = %if.then.532, %lor.lhs.false.528
  %499 = load i32, i32* %i, align 4
  %500 = load i32, i32* %imid, align 4
  %cmp538 = icmp eq i32 %499, %500
  br i1 %cmp538, label %if.then.540, label %if.end.548

if.then.540:                                      ; preds = %if.end.537
  %501 = load float, float* %wm, align 4
  %502 = load i32, i32* %j, align 4
  %idxprom541 = sext i32 %502 to i64
  %503 = load float*, float** %midw, align 8
  %arrayidx542 = getelementptr inbounds float, float* %503, i64 %idxprom541
  %504 = load float, float* %arrayidx542, align 4
  %add543 = fadd float %504, %501
  store float %add543, float* %arrayidx542, align 4
  %505 = load float*, float** %mjpt, align 8
  %506 = load float, float* %505, align 4
  %507 = load i32, i32* %j, align 4
  %add544 = add nsw i32 %507, 1
  %idxprom545 = sext i32 %add544 to i64
  %508 = load float*, float** %midm, align 8
  %arrayidx546 = getelementptr inbounds float, float* %508, i64 %idxprom545
  %509 = load float, float* %arrayidx546, align 4
  %add547 = fadd float %509, %506
  store float %add547, float* %arrayidx546, align 4
  br label %if.end.548

if.end.548:                                       ; preds = %if.then.540, %if.end.537
  %510 = load i32, i32* %i, align 4
  %511 = load i32, i32* %imid, align 4
  %sub549 = sub nsw i32 %511, 1
  %cmp550 = icmp eq i32 %510, %sub549
  br i1 %cmp550, label %if.then.552, label %if.end.556

if.then.552:                                      ; preds = %if.end.548
  %512 = load float, float* %mi, align 4
  %513 = load i32, i32* %j, align 4
  %idxprom553 = sext i32 %513 to i64
  %514 = load float*, float** %midn, align 8
  %arrayidx554 = getelementptr inbounds float, float* %514, i64 %idxprom553
  %515 = load float, float* %arrayidx554, align 4
  %add555 = fadd float %515, %512
  store float %add555, float* %arrayidx554, align 4
  br label %if.end.556

if.end.556:                                       ; preds = %if.then.552, %if.end.548
  %516 = load float, float* %wm, align 4
  %517 = load i32, i32* %j, align 4
  %idxprom557 = sext i32 %517 to i64
  %518 = load i32, i32* %i, align 4
  %idxprom558 = sext i32 %518 to i64
  %519 = load float**, float*** %WMMTX, align 8
  %arrayidx559 = getelementptr inbounds float*, float** %519, i64 %idxprom558
  %520 = load float*, float** %arrayidx559, align 8
  %arrayidx560 = getelementptr inbounds float, float* %520, i64 %idxprom557
  %521 = load float, float* %arrayidx560, align 4
  %add561 = fadd float %521, %516
  store float %add561, float* %arrayidx560, align 4
  %522 = load float*, float** %curpt, align 8
  %523 = load float, float* %522, align 4
  %524 = load i32, i32* %j, align 4
  %idxprom562 = sext i32 %524 to i64
  %525 = load i32, i32* %i, align 4
  %idxprom563 = sext i32 %525 to i64
  %526 = load float**, float*** %WMMTX2, align 8
  %arrayidx564 = getelementptr inbounds float*, float** %526, i64 %idxprom563
  %527 = load float*, float** %arrayidx564, align 8
  %arrayidx565 = getelementptr inbounds float, float* %527, i64 %idxprom562
  %528 = load float, float* %arrayidx565, align 4
  %add566 = fadd float %528, %523
  store float %add566, float* %arrayidx565, align 4
  %529 = load float, float* %wm, align 4
  %530 = load float*, float** %curpt, align 8
  %531 = load float, float* %530, align 4
  %add567 = fadd float %531, %529
  store float %add567, float* %530, align 4
  %532 = load float*, float** %mjpt, align 8
  %incdec.ptr568 = getelementptr inbounds float, float* %532, i32 -1
  store float* %incdec.ptr568, float** %mjpt, align 8
  %533 = load float*, float** %prept, align 8
  %incdec.ptr569 = getelementptr inbounds float, float* %533, i32 -1
  store float* %incdec.ptr569, float** %prept, align 8
  %534 = load i32*, i32** %mpjpt, align 8
  %incdec.ptr570 = getelementptr inbounds i32, i32* %534, i32 -1
  store i32* %incdec.ptr570, i32** %mpjpt, align 8
  %535 = load float*, float** %curpt, align 8
  %incdec.ptr571 = getelementptr inbounds float, float* %535, i32 -1
  store float* %incdec.ptr571, float** %curpt, align 8
  br label %for.inc.572

for.inc.572:                                      ; preds = %if.end.556
  %536 = load i32, i32* %j, align 4
  %dec573 = add nsw i32 %536, -1
  store i32 %dec573, i32* %j, align 4
  br label %for.cond.486

for.end.574:                                      ; preds = %for.cond.486
  %537 = load float*, float** %prept, align 8
  %538 = load float, float* %537, align 4
  %539 = load i32, i32* %i, align 4
  %idxprom575 = sext i32 %539 to i64
  %540 = load float*, float** %fgcp1, align 8
  %arrayidx576 = getelementptr inbounds float, float* %540, i64 %idxprom575
  %541 = load float, float* %arrayidx576, align 4
  %add577 = fadd float %538, %541
  store float %add577, float* %g, align 4
  %542 = load float, float* %firstm, align 4
  %543 = load float, float* %g, align 4
  %cmp578 = fcmp olt float %542, %543
  br i1 %cmp578, label %if.then.580, label %if.end.582

if.then.580:                                      ; preds = %for.end.574
  %544 = load float, float* %g, align 4
  store float %544, float* %firstm, align 4
  %545 = load i32, i32* %i, align 4
  %add581 = add nsw i32 %545, 1
  store i32 %add581, i32* %firstmp, align 4
  br label %if.end.582

if.end.582:                                       ; preds = %if.then.580, %for.end.574
  %546 = load i32, i32* %i, align 4
  %547 = load i32, i32* %imid, align 4
  %cmp583 = icmp eq i32 %546, %547
  br i1 %cmp583, label %if.then.585, label %if.end.590

if.then.585:                                      ; preds = %if.end.582
  %548 = load float, float* %firstm, align 4
  %549 = load i32, i32* %j, align 4
  %add586 = add nsw i32 %549, 1
  %idxprom587 = sext i32 %add586 to i64
  %550 = load float*, float** %midm, align 8
  %arrayidx588 = getelementptr inbounds float, float* %550, i64 %idxprom587
  %551 = load float, float* %arrayidx588, align 4
  %add589 = fadd float %551, %548
  store float %add589, float* %arrayidx588, align 4
  br label %if.end.590

if.end.590:                                       ; preds = %if.then.585, %if.end.582
  %552 = load i32, i32* %i, align 4
  %553 = load i32, i32* %imid, align 4
  %sub591 = sub nsw i32 %553, 1
  %cmp592 = icmp eq i32 %552, %sub591
  br i1 %cmp592, label %if.then.594, label %if.end.654

if.then.594:                                      ; preds = %if.end.590
  %554 = load float*, float** %midw, align 8
  %arrayidx595 = getelementptr inbounds float, float* %554, i64 1
  %555 = load float, float* %arrayidx595, align 4
  store float %555, float* %maxwm, align 4
  store i32 0, i32* %jmid, align 4
  store i32 2, i32* %j, align 4
  br label %for.cond.596

for.cond.596:                                     ; preds = %for.inc.607, %if.then.594
  %556 = load i32, i32* %j, align 4
  %557 = load i32, i32* %lgth2, align 4
  %sub597 = sub nsw i32 %557, 1
  %cmp598 = icmp slt i32 %556, %sub597
  br i1 %cmp598, label %for.body.600, label %for.end.609

for.body.600:                                     ; preds = %for.cond.596
  %558 = load i32, i32* %j, align 4
  %idxprom601 = sext i32 %558 to i64
  %559 = load float*, float** %midw, align 8
  %arrayidx602 = getelementptr inbounds float, float* %559, i64 %idxprom601
  %560 = load float, float* %arrayidx602, align 4
  store float %560, float* %wm, align 4
  %561 = load float, float* %wm, align 4
  %562 = load float, float* %maxwm, align 4
  %cmp603 = fcmp ogt float %561, %562
  br i1 %cmp603, label %if.then.605, label %if.end.606

if.then.605:                                      ; preds = %for.body.600
  %563 = load i32, i32* %j, align 4
  store i32 %563, i32* %jmid, align 4
  %564 = load float, float* %wm, align 4
  store float %564, float* %maxwm, align 4
  br label %if.end.606

if.end.606:                                       ; preds = %if.then.605, %for.body.600
  br label %for.inc.607

for.inc.607:                                      ; preds = %if.end.606
  %565 = load i32, i32* %j, align 4
  %inc608 = add nsw i32 %565, 1
  store i32 %inc608, i32* %j, align 4
  br label %for.cond.596

for.end.609:                                      ; preds = %for.cond.596
  store i32 0, i32* %j, align 4
  br label %for.cond.610

for.cond.610:                                     ; preds = %for.inc.621, %for.end.609
  %566 = load i32, i32* %j, align 4
  %567 = load i32, i32* %lgth2, align 4
  %add611 = add nsw i32 %567, 1
  %cmp612 = icmp slt i32 %566, %add611
  br i1 %cmp612, label %for.body.614, label %for.end.623

for.body.614:                                     ; preds = %for.cond.610
  %568 = load i32, i32* %j, align 4
  %idxprom615 = sext i32 %568 to i64
  %569 = load float*, float** %midm, align 8
  %arrayidx616 = getelementptr inbounds float, float* %569, i64 %idxprom615
  %570 = load float, float* %arrayidx616, align 4
  store float %570, float* %wm, align 4
  %571 = load float, float* %wm, align 4
  %572 = load float, float* %maxwm, align 4
  %cmp617 = fcmp ogt float %571, %572
  br i1 %cmp617, label %if.then.619, label %if.end.620

if.then.619:                                      ; preds = %for.body.614
  %573 = load i32, i32* %j, align 4
  store i32 %573, i32* %jmid, align 4
  %574 = load float, float* %wm, align 4
  store float %574, float* %maxwm, align 4
  br label %if.end.620

if.end.620:                                       ; preds = %if.then.619, %for.body.614
  br label %for.inc.621

for.inc.621:                                      ; preds = %if.end.620
  %575 = load i32, i32* %j, align 4
  %inc622 = add nsw i32 %575, 1
  store i32 %inc622, i32* %j, align 4
  br label %for.cond.610

for.end.623:                                      ; preds = %for.cond.610
  %576 = load i32, i32* %jmid, align 4
  %idxprom624 = sext i32 %576 to i64
  %577 = load float*, float** %midw, align 8
  %arrayidx625 = getelementptr inbounds float, float* %577, i64 %idxprom624
  %578 = load float, float* %arrayidx625, align 4
  store float %578, float* %wm, align 4
  %579 = load i32, i32* %imid, align 4
  %sub626 = sub nsw i32 %579, 1
  store i32 %sub626, i32* %jumpi, align 4
  %580 = load i32, i32* %jmid, align 4
  %sub627 = sub nsw i32 %580, 1
  store i32 %sub627, i32* %jumpj, align 4
  %581 = load i32, i32* %jmid, align 4
  %cmp628 = icmp sgt i32 %581, 0
  br i1 %cmp628, label %land.lhs.true, label %if.end.642

land.lhs.true:                                    ; preds = %for.end.623
  %582 = load i32, i32* %jmid, align 4
  %sub630 = sub nsw i32 %582, 1
  %idxprom631 = sext i32 %sub630 to i64
  %583 = load float*, float** %midn, align 8
  %arrayidx632 = getelementptr inbounds float, float* %583, i64 %idxprom631
  %584 = load float, float* %arrayidx632, align 4
  %585 = load float, float* %wm, align 4
  %cmp633 = fcmp ogt float %584, %585
  br i1 %cmp633, label %if.then.635, label %if.end.642

if.then.635:                                      ; preds = %land.lhs.true
  %586 = load i32, i32* %imid, align 4
  %sub636 = sub nsw i32 %586, 1
  store i32 %sub636, i32* %jumpi, align 4
  %587 = load i32, i32* %jmid, align 4
  %idxprom637 = sext i32 %587 to i64
  %588 = load i32*, i32** %jumpbacki, align 8
  %arrayidx638 = getelementptr inbounds i32, i32* %588, i64 %idxprom637
  %589 = load i32, i32* %arrayidx638, align 4
  store i32 %589, i32* %jumpj, align 4
  %590 = load i32, i32* %jmid, align 4
  %sub639 = sub nsw i32 %590, 1
  %idxprom640 = sext i32 %sub639 to i64
  %591 = load float*, float** %midn, align 8
  %arrayidx641 = getelementptr inbounds float, float* %591, i64 %idxprom640
  %592 = load float, float* %arrayidx641, align 4
  store float %592, float* %wm, align 4
  br label %if.end.642

if.end.642:                                       ; preds = %if.then.635, %land.lhs.true, %for.end.623
  %593 = load i32, i32* %jmid, align 4
  %idxprom643 = sext i32 %593 to i64
  %594 = load float*, float** %midm, align 8
  %arrayidx644 = getelementptr inbounds float, float* %594, i64 %idxprom643
  %595 = load float, float* %arrayidx644, align 4
  %596 = load float, float* %wm, align 4
  %cmp645 = fcmp ogt float %595, %596
  br i1 %cmp645, label %if.then.647, label %if.end.653

if.then.647:                                      ; preds = %if.end.642
  %597 = load i32, i32* %jmid, align 4
  %idxprom648 = sext i32 %597 to i64
  %598 = load i32*, i32** %jumpbackj, align 8
  %arrayidx649 = getelementptr inbounds i32, i32* %598, i64 %idxprom648
  %599 = load i32, i32* %arrayidx649, align 4
  store i32 %599, i32* %jumpi, align 4
  %600 = load i32, i32* %jmid, align 4
  %sub650 = sub nsw i32 %600, 1
  store i32 %sub650, i32* %jumpj, align 4
  %601 = load i32, i32* %jmid, align 4
  %idxprom651 = sext i32 %601 to i64
  %602 = load float*, float** %midm, align 8
  %arrayidx652 = getelementptr inbounds float, float* %602, i64 %idxprom651
  %603 = load float, float* %arrayidx652, align 4
  store float %603, float* %wm, align 4
  br label %if.end.653

if.end.653:                                       ; preds = %if.then.647, %if.end.642
  br label %if.end.654

if.end.654:                                       ; preds = %if.end.653, %if.end.590
  %604 = load i32, i32* %i, align 4
  %605 = load i32, i32* %jumpi, align 4
  %cmp655 = icmp eq i32 %604, %605
  br i1 %cmp655, label %if.then.657, label %if.end.674

if.then.657:                                      ; preds = %if.end.654
  %606 = load i32, i32* %jmid, align 4
  %cmp658 = icmp eq i32 %606, 0
  br i1 %cmp658, label %if.then.660, label %if.else

if.then.660:                                      ; preds = %if.then.657
  store i32 0, i32* %jumpj, align 4
  store i32 1, i32* %jmid, align 4
  %607 = load i32, i32* %firstmp, align 4
  %sub661 = sub nsw i32 %607, 1
  store i32 %sub661, i32* %jumpi, align 4
  %608 = load i32, i32* %firstmp, align 4
  store i32 %608, i32* %imid, align 4
  br label %if.end.673

if.else:                                          ; preds = %if.then.657
  %609 = load i32, i32* %jmid, align 4
  %610 = load i32, i32* %lgth2, align 4
  %cmp662 = icmp sge i32 %609, %610
  br i1 %cmp662, label %if.then.664, label %if.else.667

if.then.664:                                      ; preds = %if.else
  %611 = load i32, i32* %imid, align 4
  %sub665 = sub nsw i32 %611, 1
  store i32 %sub665, i32* %jumpi, align 4
  %612 = load i32, i32* %lgth2, align 4
  store i32 %612, i32* %jmid, align 4
  %613 = load i32, i32* %lgth2, align 4
  %sub666 = sub nsw i32 %613, 1
  store i32 %sub666, i32* %jumpj, align 4
  br label %if.end.672

if.else.667:                                      ; preds = %if.else
  %614 = load i32, i32* %jumpj, align 4
  %idxprom668 = sext i32 %614 to i64
  %615 = load i32*, i32** %jumpforwi, align 8
  %arrayidx669 = getelementptr inbounds i32, i32* %615, i64 %idxprom668
  %616 = load i32, i32* %arrayidx669, align 4
  store i32 %616, i32* %imid, align 4
  %617 = load i32, i32* %jumpj, align 4
  %idxprom670 = sext i32 %617 to i64
  %618 = load i32*, i32** %jumpforwj, align 8
  %arrayidx671 = getelementptr inbounds i32, i32* %618, i64 %idxprom670
  %619 = load i32, i32* %arrayidx671, align 4
  store i32 %619, i32* %jmid, align 4
  br label %if.end.672

if.end.672:                                       ; preds = %if.else.667, %if.then.664
  br label %if.end.673

if.end.673:                                       ; preds = %if.end.672, %if.then.660
  br label %if.end.674

if.end.674:                                       ; preds = %if.end.673, %if.end.654
  br label %for.inc.675

for.inc.675:                                      ; preds = %if.end.674
  %620 = load i32, i32* %i, align 4
  %dec676 = add nsw i32 %620, -1
  store i32 %dec676, i32* %i, align 4
  br label %for.cond.446

for.end.677:                                      ; preds = %for.cond.446
  store i32 0, i32* %i, align 4
  br label %for.cond.678

for.cond.678:                                     ; preds = %for.inc.697, %for.end.677
  %621 = load i32, i32* %i, align 4
  %622 = load i32, i32* %lgth1, align 4
  %cmp679 = icmp slt i32 %621, %622
  br i1 %cmp679, label %for.body.681, label %for.end.699

for.body.681:                                     ; preds = %for.cond.678
  store i32 0, i32* %j, align 4
  br label %for.cond.682

for.cond.682:                                     ; preds = %for.inc.694, %for.body.681
  %623 = load i32, i32* %j, align 4
  %624 = load i32, i32* %lgth2, align 4
  %cmp683 = icmp slt i32 %623, %624
  br i1 %cmp683, label %for.body.685, label %for.end.696

for.body.685:                                     ; preds = %for.cond.682
  %625 = load i32, i32* %j, align 4
  %idxprom686 = sext i32 %625 to i64
  %626 = load i32, i32* %i, align 4
  %idxprom687 = sext i32 %626 to i64
  %627 = load float**, float*** %WMMTX, align 8
  %arrayidx688 = getelementptr inbounds float*, float** %627, i64 %idxprom687
  %628 = load float*, float** %arrayidx688, align 8
  %arrayidx689 = getelementptr inbounds float, float* %628, i64 %idxprom686
  %629 = load float, float* %arrayidx689, align 4
  %630 = load float, float* %maxwm, align 4
  %div = fdiv float %629, %630
  %631 = load i32, i32* %j, align 4
  %idxprom690 = sext i32 %631 to i64
  %632 = load i32, i32* %i, align 4
  %idxprom691 = sext i32 %632 to i64
  %633 = load float**, float*** %map.addr, align 8
  %arrayidx692 = getelementptr inbounds float*, float** %633, i64 %idxprom691
  %634 = load float*, float** %arrayidx692, align 8
  %arrayidx693 = getelementptr inbounds float, float* %634, i64 %idxprom690
  store float %div, float* %arrayidx693, align 4
  br label %for.inc.694

for.inc.694:                                      ; preds = %for.body.685
  %635 = load i32, i32* %j, align 4
  %inc695 = add nsw i32 %635, 1
  store i32 %inc695, i32* %j, align 4
  br label %for.cond.682

for.end.696:                                      ; preds = %for.cond.682
  br label %for.inc.697

for.inc.697:                                      ; preds = %for.end.696
  %636 = load i32, i32* %i, align 4
  %inc698 = add nsw i32 %636, 1
  store i32 %inc698, i32* %i, align 4
  br label %for.cond.678

for.end.699:                                      ; preds = %for.cond.678
  %637 = load float*, float** %w1, align 8
  call void @FreeFloatVec(float* %637)
  %638 = load float*, float** %w2, align 8
  call void @FreeFloatVec(float* %638)
  %639 = load float*, float** %initverticalw, align 8
  call void @FreeFloatVec(float* %639)
  %640 = load float*, float** %lastverticalw, align 8
  call void @FreeFloatVec(float* %640)
  %641 = load float*, float** %midw, align 8
  call void @FreeFloatVec(float* %641)
  %642 = load float*, float** %midm, align 8
  call void @FreeFloatVec(float* %642)
  %643 = load float*, float** %midn, align 8
  call void @FreeFloatVec(float* %643)
  %644 = load i32*, i32** %jumpbacki, align 8
  call void @FreeIntVec(i32* %644)
  %645 = load i32*, i32** %jumpbackj, align 8
  call void @FreeIntVec(i32* %645)
  %646 = load i32*, i32** %jumpforwi, align 8
  call void @FreeIntVec(i32* %646)
  %647 = load i32*, i32** %jumpforwj, align 8
  call void @FreeIntVec(i32* %647)
  %648 = load i32*, i32** %jumpdummi, align 8
  call void @FreeIntVec(i32* %648)
  %649 = load i32*, i32** %jumpdummj, align 8
  call void @FreeIntVec(i32* %649)
  %650 = load float*, float** %m, align 8
  call void @FreeFloatVec(float* %650)
  %651 = load i32*, i32** %mp, align 8
  call void @FreeIntVec(i32* %651)
  %652 = load float**, float*** %floatwork, align 8
  call void @FreeFloatMtx(float** %652)
  %653 = load i32**, i32*** %intwork, align 8
  call void @FreeIntMtx(i32** %653)
  %654 = load float**, float*** %WMMTX, align 8
  call void @FreeFloatMtx(float** %654)
  %655 = load float**, float*** %WMMTX2, align 8
  call void @FreeFloatMtx(float** %655)
  %656 = load float, float* %value, align 4
  store float %656, float* %retval
  br label %return

return:                                           ; preds = %for.end.699, %if.then.77, %for.end.48
  %657 = load float, float* %retval
  ret float %657
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

declare i32* @AllocateIntVec(i32) #1

declare i8* @AllocateCharVec(i32) #1

declare i32** @AllocateIntMtx(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @match_calc(float* %match, float** %cpmx1, float** %cpmx2, i32 %i1, i32 %lgth2, float** %floatwork, i32** %intwork, i32 %initialize) #0 {
entry:
  %match.addr = alloca float*, align 8
  %cpmx1.addr = alloca float**, align 8
  %cpmx2.addr = alloca float**, align 8
  %i1.addr = alloca i32, align 4
  %lgth2.addr = alloca i32, align 4
  %floatwork.addr = alloca float**, align 8
  %intwork.addr = alloca i32**, align 8
  %initialize.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %scarr = alloca [26 x float], align 16
  %cpmxpd = alloca float**, align 8
  %cpmxpdn = alloca i32**, align 8
  %count = alloca i32, align 4
  %matchpt = alloca float*, align 8
  %cpmxpdpt = alloca float**, align 8
  %cpmxpdnpt = alloca i32**, align 8
  %cpkd = alloca i32, align 4
  store float* %match, float** %match.addr, align 8
  store float** %cpmx1, float*** %cpmx1.addr, align 8
  store float** %cpmx2, float*** %cpmx2.addr, align 8
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %lgth2, i32* %lgth2.addr, align 4
  store float** %floatwork, float*** %floatwork.addr, align 8
  store i32** %intwork, i32*** %intwork.addr, align 8
  store i32 %initialize, i32* %initialize.addr, align 4
  %0 = load float**, float*** %floatwork.addr, align 8
  store float** %0, float*** %cpmxpd, align 8
  %1 = load i32**, i32*** %intwork.addr, align 8
  store i32** %1, i32*** %cpmxpdn, align 8
  store i32 0, i32* %count, align 4
  %2 = load i32, i32* %initialize.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.then
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %lgth2.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %count, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %l, align 4
  %cmp2 = icmp slt i32 %5, 26
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %l, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load float**, float*** %cpmx2.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %8, i64 %idxprom4
  %9 = load float*, float** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds float, float* %9, i64 %idxprom
  %10 = load float, float* %arrayidx5, align 4
  %tobool6 = fcmp une float %10, 0.000000e+00
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body.3
  %11 = load i32, i32* %l, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load float**, float*** %cpmx2.addr, align 8
  %arrayidx10 = getelementptr inbounds float*, float** %13, i64 %idxprom9
  %14 = load float*, float** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds float, float* %14, i64 %idxprom8
  %15 = load float, float* %arrayidx11, align 4
  %16 = load i32, i32* %count, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load float**, float*** %cpmxpd, align 8
  %arrayidx14 = getelementptr inbounds float*, float** %18, i64 %idxprom13
  %19 = load float*, float** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds float, float* %19, i64 %idxprom12
  store float %15, float* %arrayidx15, align 4
  %20 = load i32, i32* %l, align 4
  %21 = load i32, i32* %count, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load i32**, i32*** %cpmxpdn, align 8
  %arrayidx18 = getelementptr inbounds i32*, i32** %23, i64 %idxprom17
  %24 = load i32*, i32** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %24, i64 %idxprom16
  store i32 %20, i32* %arrayidx19, align 4
  %25 = load i32, i32* %count, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %l, align 4
  %inc20 = add nsw i32 %26, 1
  store i32 %inc20, i32* %l, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %27 = load i32, i32* %count, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load i32**, i32*** %cpmxpdn, align 8
  %arrayidx23 = getelementptr inbounds i32*, i32** %29, i64 %idxprom22
  %30 = load i32*, i32** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %30, i64 %idxprom21
  store i32 -1, i32* %arrayidx24, align 4
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %31 = load i32, i32* %j, align 4
  %inc26 = add nsw i32 %31, 1
  store i32 %inc26, i32* %j, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  br label %if.end.28

if.end.28:                                        ; preds = %for.end.27, %entry
  store i32 0, i32* %l, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.50, %if.end.28
  %32 = load i32, i32* %l, align 4
  %cmp30 = icmp slt i32 %32, 26
  br i1 %cmp30, label %for.body.31, label %for.end.52

for.body.31:                                      ; preds = %for.cond.29
  %33 = load i32, i32* %l, align 4
  %idxprom32 = sext i32 %33 to i64
  %arrayidx33 = getelementptr inbounds [26 x float], [26 x float]* %scarr, i32 0, i64 %idxprom32
  store float 0.000000e+00, float* %arrayidx33, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.47, %for.body.31
  %34 = load i32, i32* %k, align 4
  %cmp35 = icmp slt i32 %34, 26
  br i1 %cmp35, label %for.body.36, label %for.end.49

for.body.36:                                      ; preds = %for.cond.34
  %35 = load i32, i32* %l, align 4
  %idxprom37 = sext i32 %35 to i64
  %36 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %36 to i64
  %arrayidx39 = getelementptr inbounds [26 x [26 x i32]], [26 x [26 x i32]]* @n_dis, i32 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [26 x i32], [26 x i32]* %arrayidx39, i32 0, i64 %idxprom37
  %37 = load i32, i32* %arrayidx40, align 4
  %38 = load i32, i32* @RNAthr, align 4
  %sub = sub nsw i32 %37, %38
  %conv = sitofp i32 %sub to float
  %39 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %39 to i64
  %40 = load i32, i32* %i1.addr, align 4
  %idxprom42 = sext i32 %40 to i64
  %41 = load float**, float*** %cpmx1.addr, align 8
  %arrayidx43 = getelementptr inbounds float*, float** %41, i64 %idxprom42
  %42 = load float*, float** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds float, float* %42, i64 %idxprom41
  %43 = load float, float* %arrayidx44, align 4
  %mul = fmul float %conv, %43
  %44 = load i32, i32* %l, align 4
  %idxprom45 = sext i32 %44 to i64
  %arrayidx46 = getelementptr inbounds [26 x float], [26 x float]* %scarr, i32 0, i64 %idxprom45
  %45 = load float, float* %arrayidx46, align 4
  %add = fadd float %45, %mul
  store float %add, float* %arrayidx46, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.36
  %46 = load i32, i32* %k, align 4
  %inc48 = add nsw i32 %46, 1
  store i32 %inc48, i32* %k, align 4
  br label %for.cond.34

for.end.49:                                       ; preds = %for.cond.34
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.49
  %47 = load i32, i32* %l, align 4
  %inc51 = add nsw i32 %47, 1
  store i32 %inc51, i32* %l, align 4
  br label %for.cond.29

for.end.52:                                       ; preds = %for.cond.29
  %48 = load float*, float** %match.addr, align 8
  store float* %48, float** %matchpt, align 8
  %49 = load i32**, i32*** %cpmxpdn, align 8
  store i32** %49, i32*** %cpmxpdnpt, align 8
  %50 = load float**, float*** %cpmxpd, align 8
  store float** %50, float*** %cpmxpdpt, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.68, %for.end.52
  %51 = load i32, i32* %lgth2.addr, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %lgth2.addr, align 4
  %tobool53 = icmp ne i32 %51, 0
  br i1 %tobool53, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load float*, float** %matchpt, align 8
  store float 0.000000e+00, float* %52, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.66, %while.body
  %53 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %53 to i64
  %54 = load i32**, i32*** %cpmxpdnpt, align 8
  %55 = load i32*, i32** %54, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %55, i64 %idxprom55
  %56 = load i32, i32* %arrayidx56, align 4
  store i32 %56, i32* %cpkd, align 4
  %cmp57 = icmp sgt i32 %56, -1
  br i1 %cmp57, label %for.body.59, label %for.end.68

for.body.59:                                      ; preds = %for.cond.54
  %57 = load i32, i32* %cpkd, align 4
  %idxprom60 = sext i32 %57 to i64
  %arrayidx61 = getelementptr inbounds [26 x float], [26 x float]* %scarr, i32 0, i64 %idxprom60
  %58 = load float, float* %arrayidx61, align 4
  %59 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %59 to i64
  %60 = load float**, float*** %cpmxpdpt, align 8
  %61 = load float*, float** %60, align 8
  %arrayidx63 = getelementptr inbounds float, float* %61, i64 %idxprom62
  %62 = load float, float* %arrayidx63, align 4
  %mul64 = fmul float %58, %62
  %63 = load float*, float** %matchpt, align 8
  %64 = load float, float* %63, align 4
  %add65 = fadd float %64, %mul64
  store float %add65, float* %63, align 4
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.59
  %65 = load i32, i32* %k, align 4
  %inc67 = add nsw i32 %65, 1
  store i32 %inc67, i32* %k, align 4
  br label %for.cond.54

for.end.68:                                       ; preds = %for.cond.54
  %66 = load float*, float** %matchpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %66, i32 1
  store float* %incdec.ptr, float** %matchpt, align 8
  %67 = load i32**, i32*** %cpmxpdnpt, align 8
  %incdec.ptr69 = getelementptr inbounds i32*, i32** %67, i32 1
  store i32** %incdec.ptr69, i32*** %cpmxpdnpt, align 8
  %68 = load float**, float*** %cpmxpdpt, align 8
  %incdec.ptr70 = getelementptr inbounds float*, float** %68, i32 1
  store float** %incdec.ptr70, float*** %cpmxpdpt, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @FreeIntVec(i32*) #1

declare void @FreeIntMtx(i32**) #1

; Function Attrs: nounwind uwtable
define internal void @match_ribosum(float* %match, float** %cpmx1, float** %cpmx2, i32 %i1, i32 %lgth2, float** %floatwork, i32** %intwork, i32 %initialize) #0 {
entry:
  %match.addr = alloca float*, align 8
  %cpmx1.addr = alloca float**, align 8
  %cpmx2.addr = alloca float**, align 8
  %i1.addr = alloca i32, align 4
  %lgth2.addr = alloca i32, align 4
  %floatwork.addr = alloca float**, align 8
  %intwork.addr = alloca i32**, align 8
  %initialize.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %scarr = alloca [38 x float], align 16
  %cpmxpd = alloca float**, align 8
  %cpmxpdn = alloca i32**, align 8
  %count = alloca i32, align 4
  %matchpt = alloca float*, align 8
  %cpmxpdpt = alloca float**, align 8
  %cpmxpdnpt = alloca i32**, align 8
  %cpkd = alloca i32, align 4
  store float* %match, float** %match.addr, align 8
  store float** %cpmx1, float*** %cpmx1.addr, align 8
  store float** %cpmx2, float*** %cpmx2.addr, align 8
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %lgth2, i32* %lgth2.addr, align 4
  store float** %floatwork, float*** %floatwork.addr, align 8
  store i32** %intwork, i32*** %intwork.addr, align 8
  store i32 %initialize, i32* %initialize.addr, align 4
  %0 = load float**, float*** %floatwork.addr, align 8
  store float** %0, float*** %cpmxpd, align 8
  %1 = load i32**, i32*** %intwork.addr, align 8
  store i32** %1, i32*** %cpmxpdn, align 8
  store i32 0, i32* %count, align 4
  %2 = load i32, i32* %initialize.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.then
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %lgth2.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %count, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %l, align 4
  %cmp2 = icmp slt i32 %5, 37
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %l, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load float**, float*** %cpmx2.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %8, i64 %idxprom4
  %9 = load float*, float** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds float, float* %9, i64 %idxprom
  %10 = load float, float* %arrayidx5, align 4
  %tobool6 = fcmp une float %10, 0.000000e+00
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body.3
  %11 = load i32, i32* %l, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load float**, float*** %cpmx2.addr, align 8
  %arrayidx10 = getelementptr inbounds float*, float** %13, i64 %idxprom9
  %14 = load float*, float** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds float, float* %14, i64 %idxprom8
  %15 = load float, float* %arrayidx11, align 4
  %16 = load i32, i32* %count, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load float**, float*** %cpmxpd, align 8
  %arrayidx14 = getelementptr inbounds float*, float** %18, i64 %idxprom13
  %19 = load float*, float** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds float, float* %19, i64 %idxprom12
  store float %15, float* %arrayidx15, align 4
  %20 = load i32, i32* %l, align 4
  %21 = load i32, i32* %count, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load i32**, i32*** %cpmxpdn, align 8
  %arrayidx18 = getelementptr inbounds i32*, i32** %23, i64 %idxprom17
  %24 = load i32*, i32** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %24, i64 %idxprom16
  store i32 %20, i32* %arrayidx19, align 4
  %25 = load i32, i32* %count, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %l, align 4
  %inc20 = add nsw i32 %26, 1
  store i32 %inc20, i32* %l, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %27 = load i32, i32* %count, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load i32**, i32*** %cpmxpdn, align 8
  %arrayidx23 = getelementptr inbounds i32*, i32** %29, i64 %idxprom22
  %30 = load i32*, i32** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %30, i64 %idxprom21
  store i32 -1, i32* %arrayidx24, align 4
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %31 = load i32, i32* %j, align 4
  %inc26 = add nsw i32 %31, 1
  store i32 %inc26, i32* %j, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  br label %if.end.28

if.end.28:                                        ; preds = %for.end.27, %entry
  store i32 0, i32* %l, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.50, %if.end.28
  %32 = load i32, i32* %l, align 4
  %cmp30 = icmp slt i32 %32, 37
  br i1 %cmp30, label %for.body.31, label %for.end.52

for.body.31:                                      ; preds = %for.cond.29
  %33 = load i32, i32* %l, align 4
  %idxprom32 = sext i32 %33 to i64
  %arrayidx33 = getelementptr inbounds [38 x float], [38 x float]* %scarr, i32 0, i64 %idxprom32
  store float 0.000000e+00, float* %arrayidx33, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.47, %for.body.31
  %34 = load i32, i32* %k, align 4
  %cmp35 = icmp slt i32 %34, 37
  br i1 %cmp35, label %for.body.36, label %for.end.49

for.body.36:                                      ; preds = %for.cond.34
  %35 = load i32, i32* %l, align 4
  %idxprom37 = sext i32 %35 to i64
  %36 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %36 to i64
  %arrayidx39 = getelementptr inbounds [37 x [37 x i32]], [37 x [37 x i32]]* @ribosumdis, i32 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [37 x i32], [37 x i32]* %arrayidx39, i32 0, i64 %idxprom37
  %37 = load i32, i32* %arrayidx40, align 4
  %conv = sitofp i32 %37 to float
  %38 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %38 to i64
  %39 = load i32, i32* %i1.addr, align 4
  %idxprom42 = sext i32 %39 to i64
  %40 = load float**, float*** %cpmx1.addr, align 8
  %arrayidx43 = getelementptr inbounds float*, float** %40, i64 %idxprom42
  %41 = load float*, float** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds float, float* %41, i64 %idxprom41
  %42 = load float, float* %arrayidx44, align 4
  %mul = fmul float %conv, %42
  %43 = load i32, i32* %l, align 4
  %idxprom45 = sext i32 %43 to i64
  %arrayidx46 = getelementptr inbounds [38 x float], [38 x float]* %scarr, i32 0, i64 %idxprom45
  %44 = load float, float* %arrayidx46, align 4
  %add = fadd float %44, %mul
  store float %add, float* %arrayidx46, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.36
  %45 = load i32, i32* %k, align 4
  %inc48 = add nsw i32 %45, 1
  store i32 %inc48, i32* %k, align 4
  br label %for.cond.34

for.end.49:                                       ; preds = %for.cond.34
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.49
  %46 = load i32, i32* %l, align 4
  %inc51 = add nsw i32 %46, 1
  store i32 %inc51, i32* %l, align 4
  br label %for.cond.29

for.end.52:                                       ; preds = %for.cond.29
  %47 = load float*, float** %match.addr, align 8
  store float* %47, float** %matchpt, align 8
  %48 = load i32**, i32*** %cpmxpdn, align 8
  store i32** %48, i32*** %cpmxpdnpt, align 8
  %49 = load float**, float*** %cpmxpd, align 8
  store float** %49, float*** %cpmxpdpt, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.68, %for.end.52
  %50 = load i32, i32* %lgth2.addr, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %lgth2.addr, align 4
  %tobool53 = icmp ne i32 %50, 0
  br i1 %tobool53, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load float*, float** %matchpt, align 8
  store float 0.000000e+00, float* %51, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.66, %while.body
  %52 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %52 to i64
  %53 = load i32**, i32*** %cpmxpdnpt, align 8
  %54 = load i32*, i32** %53, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %54, i64 %idxprom55
  %55 = load i32, i32* %arrayidx56, align 4
  store i32 %55, i32* %cpkd, align 4
  %cmp57 = icmp sgt i32 %55, -1
  br i1 %cmp57, label %for.body.59, label %for.end.68

for.body.59:                                      ; preds = %for.cond.54
  %56 = load i32, i32* %cpkd, align 4
  %idxprom60 = sext i32 %56 to i64
  %arrayidx61 = getelementptr inbounds [38 x float], [38 x float]* %scarr, i32 0, i64 %idxprom60
  %57 = load float, float* %arrayidx61, align 4
  %58 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %58 to i64
  %59 = load float**, float*** %cpmxpdpt, align 8
  %60 = load float*, float** %59, align 8
  %arrayidx63 = getelementptr inbounds float, float* %60, i64 %idxprom62
  %61 = load float, float* %arrayidx63, align 4
  %mul64 = fmul float %57, %61
  %62 = load float*, float** %matchpt, align 8
  %63 = load float, float* %62, align 4
  %add65 = fadd float %63, %mul64
  store float %add65, float* %62, align 4
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.59
  %64 = load i32, i32* %k, align 4
  %inc67 = add nsw i32 %64, 1
  store i32 %inc67, i32* %k, align 4
  br label %for.cond.54

for.end.68:                                       ; preds = %for.cond.54
  %65 = load float*, float** %matchpt, align 8
  %incdec.ptr = getelementptr inbounds float, float* %65, i32 1
  store float* %incdec.ptr, float** %matchpt, align 8
  %66 = load i32**, i32*** %cpmxpdnpt, align 8
  %incdec.ptr69 = getelementptr inbounds i32*, i32** %66, i32 1
  store i32** %incdec.ptr69, i32*** %cpmxpdnpt, align 8
  %67 = load float**, float*** %cpmxpdpt, align 8
  %incdec.ptr70 = getelementptr inbounds float*, float** %67, i32 1
  store float** %incdec.ptr70, float*** %cpmxpdpt, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
